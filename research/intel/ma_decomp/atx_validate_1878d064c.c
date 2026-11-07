
undefined8 FUN_1878d064c(IIOScanner *param_1,IIOScanner *param_2)

{
  IIOScanner *pIVar1;
  uint uVar2;
  uint uVar3;
  ushort uVar4;
  undefined1 auVar5 [16];
  short sVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  IIOScanner *pIVar9;
  int iVar10;
  IIOScanner *pIVar11;
  char *pcVar12;
  byte bVar13;
  byte bVar14;
  char cVar15;
  byte bVar16;
  byte bVar17;
  byte bVar18;
  byte bVar19;
  byte bVar20;
  byte bVar21;
  byte bVar22;
  byte bVar23;
  byte bVar24;
  byte bVar25;
  byte bVar26;
  byte bVar27;
  byte bVar28;
  byte bVar29;
  undefined1 auVar30 [16];
  
  pIVar1 = param_1 + 0x200;
  pIVar9 = param_2;
  pIVar11 = pIVar1;
  IIOScanner::copyBytes(param_1,param_2,(ulonglong)pIVar1);
  if (pIVar9 == (IIOScanner *)0x54) {
    if (*(int *)pIVar1 == 1) {
      uVar3 = *(uint *)(param_1 + 0x220);
      if (uVar3 - 0x21 < 0xffffffe0) {
        pcVar12 = "*** ERROR: unsupported ATX pixelDepth [%d]\n";
        iVar10 = 0x58;
      }
      else if (*(uint *)(param_1 + 0x238) < 9) {
        uVar8 = *(undefined8 *)(param_1 + 0x244);
        uVar7 = *(undefined8 *)(param_1 + 0x23c);
        bVar13 = -((char)uVar7 == 'U') & DAT_187dbfb20;
        bVar14 = -((char)((ulong)uVar7 >> 8) == 'U') & UNK_187dbfb21;
        bVar16 = -((char)((ulong)uVar7 >> 0x10) == 'U') & UNK_187dbfb22;
        bVar17 = -((char)((ulong)uVar7 >> 0x18) == 'U') & UNK_187dbfb23;
        bVar18 = -((char)((ulong)uVar7 >> 0x20) == 'U') & UNK_187dbfb24;
        bVar19 = -((char)((ulong)uVar7 >> 0x28) == 'U') & UNK_187dbfb25;
        bVar20 = -((char)((ulong)uVar7 >> 0x30) == 'U') & UNK_187dbfb26;
        bVar21 = -((char)((ulong)uVar7 >> 0x38) == 'U') & UNK_187dbfb27;
        bVar22 = -((char)uVar8 == 'U') & UNK_187dbfb28;
        bVar23 = -((char)((ulong)uVar8 >> 8) == 'U') & UNK_187dbfb29;
        bVar24 = -((char)((ulong)uVar8 >> 0x10) == 'U') & UNK_187dbfb2a;
        bVar25 = -((char)((ulong)uVar8 >> 0x18) == 'U') & UNK_187dbfb2b;
        bVar26 = -((char)((ulong)uVar8 >> 0x20) == 'U') & UNK_187dbfb2c;
        bVar27 = -((char)((ulong)uVar8 >> 0x28) == 'U') & UNK_187dbfb2d;
        bVar28 = -((char)((ulong)uVar8 >> 0x30) == 'U') & UNK_187dbfb2e;
        bVar29 = -((char)((ulong)uVar8 >> 0x38) == 'U') & UNK_187dbfb2f;
        auVar30[1] = bVar14;
        auVar30[0] = bVar13;
        auVar30[2] = bVar16;
        auVar30[3] = bVar17;
        auVar30[4] = bVar18;
        auVar30[5] = bVar19;
        auVar30[6] = bVar20;
        auVar30[7] = bVar21;
        auVar30[8] = bVar22;
        auVar30[9] = bVar23;
        auVar30[10] = bVar24;
        auVar30[0xb] = bVar25;
        auVar30[0xc] = bVar26;
        auVar30[0xd] = bVar27;
        auVar30[0xe] = bVar28;
        auVar30[0xf] = bVar29;
        auVar5[1] = bVar14;
        auVar5[0] = bVar13;
        auVar5[2] = bVar16;
        auVar5[3] = bVar17;
        auVar5[4] = bVar18;
        auVar5[5] = bVar19;
        auVar5[6] = bVar20;
        auVar5[7] = bVar21;
        auVar5[8] = bVar22;
        auVar5[9] = bVar23;
        auVar5[10] = bVar24;
        auVar5[0xb] = bVar25;
        auVar5[0xc] = bVar26;
        auVar5[0xd] = bVar27;
        auVar5[0xe] = bVar28;
        auVar5[0xf] = bVar29;
        auVar30 = NEON_ext(auVar30,auVar5,8,1);
        sVar6 = CONCAT11(auVar30[0],bVar13) + CONCAT11(auVar30[1],bVar14) +
                CONCAT11(auVar30[2],bVar16) + CONCAT11(auVar30[3],bVar17) +
                CONCAT11(auVar30[4],bVar18) + CONCAT11(auVar30[5],bVar19) +
                CONCAT11(auVar30[6],bVar20) + CONCAT11(auVar30[7],bVar21);
        cVar15 = POPCOUNT((char)((ushort)sVar6 >> 8));
        uVar4 = CONCAT11(cVar15,POPCOUNT((char)sVar6) + cVar15);
        if (uVar4 < 4 || uVar4 == 0x10) {
          if (*(uint *)(param_1 + 0x250) < 7) {
            uVar2 = *(uint *)(param_1 + 0x21c);
            if (*(uint *)(param_1 + 0x21c) <= uVar3) {
              uVar2 = uVar3;
            }
            uVar3 = *(uint *)(param_1 + 0x218);
            if (*(uint *)(param_1 + 0x218) <= uVar2) {
              uVar3 = uVar2;
            }
            if (*(int *)(param_1 + 0x22c) - 1U < 0x20U - (int)LZCOUNT(uVar3)) {
              if ((ulong)*(uint *)(param_1 + 0x228) < *(ulong *)(param_2 + 0x10)) {
                return 0;
              }
              pcVar12 = "*** ERROR: bad faceCount: %d\n";
              iVar10 = 0x69;
            }
            else {
              pcVar12 = "*** ERROR: bad mipmapLevel:  1 <= %d <= %d\n";
              iVar10 = 0x67;
            }
          }
          else {
            pcVar12 = "*** ERROR: unsupported alpha [%d]\n";
            iVar10 = 99;
          }
        }
        else {
          pcVar12 = "*** ERROR: invalid watermark [%d]\n";
          iVar10 = 0x61;
        }
      }
      else {
        pcVar12 = "*** ERROR: unsupported ATX orientation [%d]\n";
        iVar10 = 0x59;
      }
    }
    else {
      pcVar12 = "*** ERROR: unsupported ATX version [%d]\n";
      iVar10 = 0x57;
    }
    LogDebug("readHeader",iVar10,pcVar12);
  }
  else {
    ATXReadPlugin::readHeader(pIVar9,(uint)pIVar11);
  }
  return 0xffffffce;
}

