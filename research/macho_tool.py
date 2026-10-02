#!/usr/bin/env python3
import struct, sys
from collections import defaultdict
def load(path):
    data=open(path,'rb').read()
    cputype,cpusub,filetype,ncmds=struct.unpack('<IiiI',data[4:20])
    print('#',path,'cputype=%#x cpusub=%#x filetype=%d ncmds=%d'%(cputype,cpusub,filetype,ncmds))
    off=32; segs=[]
    for _ in range(ncmds):
        cmd,size=struct.unpack('<II',data[off:off+8])
        if cmd==0x19 and size>=72:
            sn,va,vs,fo,fs=struct.unpack('<16sQQQQ',data[off+8:off+56])
            segs.append((sn.rstrip(b'\0').decode(),va,vs,fo,fs))
            print('#   SEG %s VA=%#x size=%#x foff=%#x fsize=%#x'%(segs[-1][0],va,vs,fo,fs))
        off+=size
    return data,segs
def v2o(segs,va):
    for sn,vm,vs,fo,fs in segs:
        if vm<=va<vm+vs and fo: return sn,fo+(va-vm)
    return None,None
if __name__=='__main__':
    path,mode=sys.argv[1],sys.argv[2]
    data,segs=load(path)
    if mode=='va':
        for a in sys.argv[3:]:
            va=int(a,0); sn,fo=v2o(segs,va)
            if fo is None: print(a,'-> NOT FOUND'); continue
            print(a,'->',sn,'foff=%#x'%fo,'bytes=',data[fo:fo+64].hex())
    elif mode=='findadd':
        hits=defaultdict(list)
        for sn,vm,vs,fo,fs in segs:
            if not fo: continue
            chunk=data[fo:fo+fs]
            for rd in range(31):
                pat=struct.pack('<I',0x91000000|(0x658<<10)|(8<<5)|rd)
                st=0
                while True:
                    i=chunk.find(pat,st)
                    if i<0: break
                    hits[rd].append(vm+i); st=i+4
        for rd in sorted(hits):
            for va in hits[rd]: print('add x%d,x8,#0x658 -> VA=%#x'%(rd,va))
