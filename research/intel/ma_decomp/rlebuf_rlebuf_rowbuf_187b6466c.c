
/* WARNING: Type propagation algorithm not settling */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PSDWritePlugin::writeOne(IIOImagePixelDataProvider*, IIODictionary*, IIODictionary*, unsigned
   int) */

IIOImagePixelDataProvider *
PSDWritePlugin::writeOne
          (IIOImagePixelDataProvider *param_1,IIODictionary *param_2,IIODictionary *param_3,
          uint param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  long lVar4;
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  ushort uVar7;
  char cVar8;
  bool bVar9;
  bool bVar10;
  bool bVar11;
  bool bVar12;
  uint uVar13;
  uint uVar14;
  IIODictionary *pIVar15;
  IIODictionary *pIVar16;
  IIODictionary *pIVar17;
  IIODictionary *pIVar18;
  IIOImageWriteSession *pIVar19;
  IIODictionary *pIVar20;
  IIODictionary *pIVar21;
  IIOImageWriteSession *pIVar22;
  uchar *puVar23;
  IIODictionary *pIVar24;
  __CFString *p_Var25;
  void *pvVar26;
  undefined1 *puVar27;
  IIOImageWriteSession *pIVar28;
  uchar *puVar29;
  IIODictionary *pIVar30;
  IIOImageWriteSession *pIVar31;
  IIODictionary *pIVar32;
  IIODictionary *this;
  IIODictionary *pIVar33;
  __CFString *p_Var34;
  short sVar35;
  uint uVar36;
  long lVar37;
  int iVar38;
  uint uVar39;
  IIOImageWriteSession *pIVar40;
  uint uVar41;
  uint uVar42;
  IIOImagePixelDataProvider *pIVar43;
  IIOImagePixelDataProvider *pIVar44;
  ulong uVar45;
  ulong uVar46;
  PSDWritePlugin *this_00;
  IIODictionary *pIVar47;
  IIOImageWriteSession *pIVar48;
  uint uVar49;
  __CFString *p_Var50;
  ulong uVar51;
  IIOImageWriteSession *pIVar52;
  int iVar53;
  uint uVar54;
  __CFString *p_Var55;
  ulong uVar56;
  float fVar57;
  float fVar58;
  IIOImageWriteSession *local_4b8;
  __CFString *local_4b0;
  IIOImageWriteSession *local_4a8;
  IIOImageWriteSession *local_490;
  IIOImageWriteSession *local_468;
  short local_444;
  undefined8 local_420;
  undefined4 uStack_418;
  ushort local_414;
  undefined2 local_412;
  undefined2 uStack_410;
  uint uStack_40e;
  ushort uStack_40a;
  short local_408;
  uint local_400 [2];
  undefined8 local_3f8;
  undefined8 local_3f0;
  undefined8 local_3e8;
  undefined4 local_3dc;
  ulong local_3d8 [2];
  undefined8 local_3c8;
  ulong local_3c0;
  undefined8 local_3b8;
  IIOImageWriteSession aIStack_2c4 [256];
  IIOImageWriteSession aIStack_1c4 [260];
  ulong local_c0 [10];
  
  this = (IIODictionary *)(ulong)param_4;
  local_c0[8] = *_DAT_1e016af28;
  local_3d8[1] = 0;
  fVar57 = 0.0;
  local_c0[5] = 0;
  local_c0[4] = 0;
  local_c0[7] = 0;
  local_c0[6] = 0;
  local_c0[1] = 0;
  local_c0[0] = 0;
  local_c0[3] = 0;
  local_c0[2] = 0;
  local_3f0 = 0;
  local_3e8 = 0;
  local_3f8 = 0;
  local_420 = 0;
  uStack_418 = 0;
  local_414 = 0;
  local_412 = 0;
  local_408 = 0;
  uStack_410 = 0;
  uStack_40e = 0;
  uStack_40a = 0;
  local_400[0] = 0;
  local_400[1] = 0x4d494238;
  pIVar32 = param_2;
  IIOImagePixelDataProvider::getAlphaInfo((IIOImagePixelDataProvider *)this);
  pIVar15 = param_2;
  IIOImagePixelDataProvider::getBytesPerRow((IIOImagePixelDataProvider *)this);
  pIVar16 = param_2;
  IIOImagePlus::getSession((IIOImagePlus *)this);
  pIVar17 = param_2;
  IIO_Reader::testHeaderSize((IIO_Reader *)this);
  pIVar47 = param_2;
  IIOImagePixelDataProvider::getBitsPerComponent((IIOImagePixelDataProvider *)this);
  uVar13 = (uint)pIVar47;
  pIVar30 = param_2;
  IIOImagePixelDataProvider::getBitsPerPixel((IIOImagePixelDataProvider *)this);
  pIVar18 = param_2;
  IIOImagePlus::getSourceGeomColorSpace((IIOImagePlus *)this);
  pIVar28 = (IIOImageWriteSession *)pIVar18;
  func_0x00018814e320();
  pIVar19 = (IIOImageWriteSession *)pIVar18;
  func_0x00018814e2d0();
  uVar42 = (uint)pIVar19;
  pIVar19 = (IIOImageWriteSession *)pIVar18;
  func_0x00018814e2f0();
  pIVar20 = param_2;
  IIOImagePixelDataProvider::hasAlpha((IIOImagePixelDataProvider *)this);
  pIVar21 = param_2;
  IIOImageSource::imageReadRef((IIOImageSource *)this);
  func_0x00018815a2c0();
  pIVar22 = (IIOImageWriteSession *)pIVar18;
  _CGColorSpaceCopyData(pIVar18,pIVar21);
  if (pIVar22 == (IIOImageWriteSession *)0x0) {
    local_4a8 = (IIOImageWriteSession *)0x0;
    local_468 = (IIOImageWriteSession *)0x0;
  }
  else {
    local_4a8 = pIVar22;
    func_0x000188140cb0();
    local_468 = pIVar22;
    func_0x000188140cc0();
  }
  local_3d8[0] = 0;
  local_3dc = 0;
  pIVar21 = this;
  IIODictionary::getObjectForKey((__CFString *)this);
  iVar53 = (int)pIVar32;
  if (pIVar21 == (IIODictionary *)0x0) {
    pIVar32 = (IIODictionary *)0x0;
    puVar23 = (uchar *)0x0;
  }
  else {
    local_3c8 = 0;
    local_3c0 = 0;
    local_3b8 = 0;
    IIODictionary::IIODictionary(this,(__CFDictionary *)&local_3c8);
    pIVar32 = (IIODictionary *)&local_3c8;
    SizeOfIPTCData(pIVar32);
    if ((int)pIVar32 == 0) {
      puVar23 = (uchar *)0x0;
    }
    else {
      puVar23 = (uchar *)((ulong)pIVar32 & 0xffffffff);
      func_0x000188138470(puVar23,0x100004077774924);
      if (puVar23 == (uchar *)0x0) {
        LogDebug("writeOne",0x585,"*** ERRROR: could not allocate iptcData - size=%d\n");
        IIODictionary::~IIODictionary(this);
        pIVar40 = (IIOImageWriteSession *)0x0;
        pIVar44 = (IIOImagePixelDataProvider *)0x0;
        pIVar52 = (IIOImageWriteSession *)0x0;
        local_490 = (IIOImageWriteSession *)0x0;
        pIVar43 = (IIOImagePixelDataProvider *)0xffffffce;
        goto LAB_187b65650;
      }
      WriteIPTCData((IIODictionary *)&local_3c8,puVar23);
    }
    IIODictionary::~IIODictionary(this);
  }
  pIVar21 = param_2;
  if (param_2 == (IIODictionary *)0x0) {
    uVar14 = 0;
    pIVar33 = (IIODictionary *)0x0;
  }
  else {
    pIVar33 = param_2;
    IIOImagePlus::getSession((IIOImagePlus *)this);
    uVar14 = (uint)pIVar33;
    IIO_Reader::testHeaderSize((IIO_Reader *)this);
    pIVar33 = param_2;
    IIOImagePlus::getSourceGeomColorSpace((IIOImagePlus *)this);
  }
  pIVar24 = param_3;
  p_Var34 = _kCGImageTypeIdentifierPSD;
  CreateExifBufferFromPropertiesJPEG
            (param_3,uVar14,(uint)pIVar21,(CGColorSpace *)pIVar33,(__CFData *)0x0,
             _kCGImageTypeIdentifierPSD,local_3d8);
  uVar14 = (int)local_3d8[0] - 6;
  if (local_3d8[0] < 7) {
    uVar14 = 0;
  }
  pIVar21 = this;
  IIODictionary::getBoolForKey(this,(__CFString *)this);
  if (((ulong)this & 1) == 0) {
    p_Var50 = (__CFString *)pIVar21;
    IIODictionary::getObjectForKey((__CFString *)pIVar21);
    if (p_Var50 == (__CFString *)0x0) {
LAB_187b64918:
      _CGImageMetadataCreateFromLegacyProps();
      if (pIVar21 == (IIODictionary *)0x0) goto LAB_187b64960;
      p_Var50 = (__CFString *)pIVar21;
      _CGImageMetadataCreateXMPData(pIVar21,0);
      func_0x000188141450(pIVar21);
    }
    else {
      p_Var55 = p_Var50;
      func_0x000188140f70();
      p_Var25 = p_Var55;
      _CGImageMetadataGetTypeID();
      if (p_Var55 != p_Var25) goto LAB_187b64918;
      _CGImageMetadataCreateXMPData(p_Var50,0);
    }
    if (p_Var50 == (__CFString *)0x0) goto LAB_187b64964;
    local_4b0 = p_Var50;
    func_0x000188140cb0();
    p_Var55 = p_Var50;
    func_0x000188140cc0();
  }
  else {
LAB_187b64960:
    p_Var50 = (__CFString *)0x0;
LAB_187b64964:
    local_4b0 = (__CFString *)0x0;
    p_Var55 = (__CFString *)0x0;
  }
  if ((int)pIVar28 == 7) {
    pIVar40 = (IIOImageWriteSession *)pIVar18;
    func_0x00018814e2c0();
    uVar42 = (uint)pIVar40;
    func_0x00018814e2d0();
    if (uVar42 != 1) goto LAB_187b64998;
    local_444 = 0;
    sVar35 = 2;
LAB_187b649d8:
    if ((uVar13 == 0x10) || (uVar13 == 8)) {
      local_490 = (IIOImageWriteSession *)0x0;
      pIVar40 = (IIOImageWriteSession *)0x0;
      pIVar43 = (IIOImagePixelDataProvider *)0xffffffce;
      pIVar52 = (IIOImageWriteSession *)0x0;
      pIVar44 = (IIOImagePixelDataProvider *)0x0;
      if ((pIVar15 != (IIODictionary *)0x0) && (pIVar18 != (IIODictionary *)0x0)) {
        pIVar19 = pIVar19 + ((ulong)pIVar20 & 0xffffffff);
        bVar9 = pIVar19 == (IIOImageWriteSession *)0x4;
        bVar10 = iVar53 != 0;
        local_420 = CONCAT26(local_420._6_2_,0x10053504238);
        local_414 = (ushort)((ulong)pIVar19 >> 8) & 0xff | (ushort)(((uint)pIVar19 & 0xff00ff) << 8)
        ;
        uVar49 = (uint)pIVar17;
        uVar42 = (uVar49 & 0xff00ff00) >> 8 | (uVar49 & 0xff00ff) << 8;
        local_412 = (undefined2)(uVar42 >> 0x10);
        uStack_410 = (undefined2)uVar42;
        uVar42 = ((uint)pIVar16 & 0xff00ff00) >> 8 | ((uint)pIVar16 & 0xff00ff) << 8;
        uStack_40e = uVar42 >> 0x10 | uVar42 << 0x10;
        uStack_40a = (ushort)((ulong)pIVar47 >> 8) & 0xff | (ushort)((uVar13 & 0xff00ff) << 8);
        local_408 = sVar35 << 8;
        pvVar26 = *(void **)(param_1 + 0x10);
        IIOImageWriteSession::putBytes((IIOImageWriteSession *)pIVar21,pvVar26,(ulong)&local_420);
        if (pvVar26 == (void *)0x1a) {
          if ((int)pIVar28 == 7) {
            func_0x0001881382e0(&local_3c8,0x304);
            local_3c8._0_3_ = CONCAT12(3,(undefined2)local_3c8);
            pIVar40 = (IIOImageWriteSession *)pIVar18;
            func_0x00018814e2c0();
            func_0x00018814e2f0();
            pIVar28 = (IIOImageWriteSession *)pIVar18;
            func_0x000188164fc0();
            local_490 = (IIOImageWriteSession *)((long)pIVar28 * (long)pIVar40);
            func_0x000188138470(local_490,0x100004077774924);
            func_0x000188164fb0(pIVar18,local_490);
            if (pIVar28 != (IIOImageWriteSession *)0x0) {
              lVar37 = 0;
              do {
                lVar4 = lVar37 * 3;
                *(IIOImageWriteSession *)((long)&local_3c8 + lVar37 + 4) = local_490[lVar4];
                aIStack_2c4[lVar37] = local_490[lVar4 + 1];
                aIStack_1c4[lVar37] = local_490[lVar4 + 2];
                lVar37 = lVar37 + 1;
                pIVar28 = pIVar28 + -1;
              } while (pIVar28 != (IIOImageWriteSession *)0x0);
            }
            pvVar26 = *(void **)(param_1 + 0x10);
            IIOImageWriteSession::putBytes(pIVar40,pvVar26,(ulong)&local_3c8);
            if (pvVar26 == (void *)0x304) {
LAB_187b64bc4:
              iVar38 = 0x1c;
              if (bVar9 && bVar10) {
                iVar38 = 0x36;
              }
              uVar41 = (uint)local_468;
              uVar42 = (uint)(local_4a8 != (IIOImageWriteSession *)0x0 && uVar41 != 0);
              this_00 = (PSDWritePlugin *)(ulong)uVar42;
              iVar1 = uVar41 + (uVar41 & 1) + 0xc;
              if (uVar42 == 0) {
                iVar1 = 0;
              }
              bVar11 = puVar23 == (uchar *)0x0;
              uVar42 = (uint)pIVar32;
              bVar12 = uVar42 == 0;
              iVar2 = uVar42 + (uVar42 & 1) + 0xc;
              if (bVar12 || bVar11) {
                iVar2 = 0;
              }
              iVar3 = uVar14 + (uVar14 & 1) + 0xc;
              if (pIVar24 == (IIODictionary *)0x0 || uVar14 == 0) {
                iVar3 = 0;
              }
              uVar36 = local_400[0] + iVar38 + iVar1 + iVar2 + iVar3;
              uVar54 = (uint)p_Var55;
              if (local_4b0 != (__CFString *)0x0 && uVar54 != 0) {
                iVar38 = 0x28;
                if (bVar12 || bVar11) {
                  iVar38 = 0xc;
                }
                uVar36 = uVar54 + (uVar54 & 1) + iVar38 + uVar36;
              }
              uVar36 = (uVar36 & 0xff00ff00) >> 8 | (uVar36 & 0xff00ff) << 8;
              local_400[0] = uVar36 >> 0x10 | uVar36 << 0x10;
              pvVar26 = *(void **)(param_1 + 0x10);
              IIOImageWriteSession::putBytes
                        ((IIOImageWriteSession *)this_00,pvVar26,(ulong)local_400);
              if (pvVar26 == (void *)0x4) {
                if (bVar9 && bVar10) {
                  pvVar26 = *(void **)(param_1 + 0x10);
                  IIOImageWriteSession::putBytes
                            ((IIOImageWriteSession *)this_00,pvVar26,0x187ddccc8);
                  if (pvVar26 != (void *)0x1a) goto LAB_187b650dc;
                }
                local_3f8 = CONCAT62(local_3f8._2_6_,0xed03);
                local_3f8 = CONCAT44(0x10000000,(undefined4)local_3f8);
                pvVar26 = *(void **)(param_1 + 0x10);
                IIOImageWriteSession::putBytes
                          ((IIOImageWriteSession *)this_00,pvVar26,(ulong)(local_400 + 1));
                if (pvVar26 == (void *)0xc) {
                  pIVar18 = param_3;
                  IIODictionary::containsKey((__CFString *)param_3);
                  if (((int)pIVar18 == 0) ||
                     (pIVar18 = param_3, IIODictionary::containsKey((__CFString *)param_3),
                     (int)pIVar18 == 0)) {
                    uVar36 = 0x480000;
                    uVar39 = 0x480000;
                  }
                  else {
                    IIODictionary::getFloatForKey((IIODictionary *)this_00,(__CFString *)param_3);
                    fVar58 = fVar57;
                    IIODictionary::getFloatForKey((IIODictionary *)this_00,(__CFString *)param_3);
                    uVar36 = (uint)(fVar57 * 65536.0 + 0.5);
                    uVar39 = (uint)(fVar58 * 65536.0 + 0.5);
                  }
                  uVar36 = (uVar36 & 0xff00ff00) >> 8 | (uVar36 & 0xff00ff) << 8;
                  local_3f0 = CONCAT44(0x1000100,uVar36 >> 0x10 | uVar36 << 0x10);
                  uVar36 = (uVar39 & 0xff00ff00) >> 8 | (uVar39 & 0xff00ff) << 8;
                  local_3e8 = CONCAT44(0x1000100,uVar36 >> 0x10 | uVar36 << 0x10);
                  puVar27 = *(undefined1 **)(param_1 + 0x10);
                  IIOImageWriteSession::putBytes
                            ((IIOImageWriteSession *)this_00,puVar27,(ulong)&local_3f0);
                  if (puVar27 == &DAT_00000010) {
                    if (((ulong)this_00 & 1) == 0) goto LAB_187b64e48;
                    local_3f8 = CONCAT62(local_3f8._2_6_,0xf04);
                    uVar41 = (uVar41 & 0xff00ff00) >> 8 | (uVar41 & 0xff00ff) << 8;
                    local_3f8 = CONCAT44(uVar41 >> 0x10 | uVar41 << 0x10,(undefined4)local_3f8);
                    pvVar26 = *(void **)(param_1 + 0x10);
                    IIOImageWriteSession::putBytes
                              ((IIOImageWriteSession *)this_00,pvVar26,(ulong)(local_400 + 1));
                    if (pvVar26 == (void *)0xc) {
                      pIVar28 = *(IIOImageWriteSession **)(param_1 + 0x10);
                      this_00 = (PSDWritePlugin *)((ulong)local_468 & 0xffffffff);
                      IIOImageWriteSession::putBytes
                                ((IIOImageWriteSession *)this_00,pIVar28,(ulong)local_4a8);
                      if (pIVar28 == (IIOImageWriteSession *)this_00) {
                        if (((ulong)local_468 & 1) != 0) {
                          pvVar26 = *(void **)(param_1 + 0x10);
                          IIOImageWriteSession::putBytes
                                    ((IIOImageWriteSession *)this_00,pvVar26,(ulong)(local_3d8 + 1))
                          ;
                          if (pvVar26 != (void *)0x1) goto LAB_187b650dc;
                        }
LAB_187b64e48:
                        if (bVar12 || bVar11) goto LAB_187b64ec0;
                        local_3f8 = CONCAT62(local_3f8._2_6_,0x404);
                        uVar42 = (uVar42 & 0xff00ff00) >> 8 | (uVar42 & 0xff00ff) << 8;
                        local_3f8 = CONCAT44(uVar42 >> 0x10 | uVar42 << 0x10,(undefined4)local_3f8);
                        pvVar26 = *(void **)(param_1 + 0x10);
                        IIOImageWriteSession::putBytes
                                  ((IIOImageWriteSession *)this_00,pvVar26,(ulong)(local_400 + 1));
                        if (pvVar26 == (void *)0xc) {
                          pIVar28 = *(IIOImageWriteSession **)(param_1 + 0x10);
                          this_00 = (PSDWritePlugin *)((ulong)pIVar32 & 0xffffffff);
                          IIOImageWriteSession::putBytes
                                    ((IIOImageWriteSession *)this_00,pIVar28,(ulong)puVar23);
                          if (pIVar28 == (IIOImageWriteSession *)this_00) {
                            if (((ulong)pIVar32 & 1) != 0) {
                              pvVar26 = *(void **)(param_1 + 0x10);
                              IIOImageWriteSession::putBytes
                                        ((IIOImageWriteSession *)this_00,pvVar26,
                                         (ulong)(local_3d8 + 1));
                              if (pvVar26 != (void *)0x1) goto LAB_187b650dc;
                            }
LAB_187b64ec0:
                            if (pIVar24 == (IIODictionary *)0x0 || uVar14 == 0) goto LAB_187b64f3c;
                            local_3f8 = CONCAT62(local_3f8._2_6_,0x2204);
                            uVar42 = (uVar14 & 0xff00ff00) >> 8 | (uVar14 & 0xff00ff) << 8;
                            local_3f8 = CONCAT44(uVar42 >> 0x10 | uVar42 << 0x10,
                                                 (undefined4)local_3f8);
                            pvVar26 = *(void **)(param_1 + 0x10);
                            IIOImageWriteSession::putBytes
                                      ((IIOImageWriteSession *)this_00,pvVar26,
                                       (ulong)(local_400 + 1));
                            if (pvVar26 == (void *)0xc) {
                              pvVar26 = *(void **)(param_1 + 0x10);
                              IIOImageWriteSession::putBytes
                                        ((IIOImageWriteSession *)this_00,pvVar26,
                                         (ulong)(pIVar24 + 6));
                              if (pvVar26 == (void *)(ulong)uVar14) {
                                if ((uVar14 & 1) != 0) {
                                  pvVar26 = *(void **)(param_1 + 0x10);
                                  IIOImageWriteSession::putBytes
                                            ((IIOImageWriteSession *)this_00,pvVar26,
                                             (ulong)(local_3d8 + 1));
                                  if (pvVar26 != (void *)0x1) goto LAB_187b650dc;
                                }
LAB_187b64f3c:
                                uVar42 = (uint)pIVar33;
                                if (local_4b0 == (__CFString *)0x0 || uVar54 == 0)
                                goto LAB_187b6504c;
                                local_3f8 = CONCAT62(local_3f8._2_6_,0x2404);
                                uVar42 = (uVar54 & 0xff00ff00) >> 8 | (uVar54 & 0xff00ff) << 8;
                                local_3f8 = CONCAT44(uVar42 >> 0x10 | uVar42 << 0x10,
                                                     (undefined4)local_3f8);
                                pvVar26 = *(void **)(param_1 + 0x10);
                                IIOImageWriteSession::putBytes
                                          ((IIOImageWriteSession *)this_00,pvVar26,
                                           (ulong)(local_400 + 1));
                                if (pvVar26 == (void *)0xc) {
                                  pIVar28 = *(IIOImageWriteSession **)(param_1 + 0x10);
                                  this_00 = (PSDWritePlugin *)((ulong)p_Var55 & 0xffffffff);
                                  IIOImageWriteSession::putBytes
                                            ((IIOImageWriteSession *)this_00,pIVar28,
                                             (ulong)local_4b0);
                                  if (pIVar28 == (IIOImageWriteSession *)this_00) {
                                    if (((ulong)p_Var55 & 1) != 0) {
                                      pvVar26 = *(void **)(param_1 + 0x10);
                                      IIOImageWriteSession::putBytes
                                                ((IIOImageWriteSession *)this_00,pvVar26,
                                                 (ulong)(local_3d8 + 1));
                                      if (pvVar26 != (void *)0x1) goto LAB_187b650dc;
                                    }
                                    uVar42 = (uint)pIVar33;
                                    if (!bVar12 && !bVar11) {
                                      puVar29 = puVar23;
                                      CreateIIMHashArrayForIIMBlock
                                                (puVar23,(ulong)pIVar32 & 0xffffffff);
                                      local_3f8 = CONCAT62(local_3f8._2_6_,0x2504);
                                      local_3f8 = CONCAT44(0x10000000,(undefined4)local_3f8);
                                      pvVar26 = *(void **)(param_1 + 0x10);
                                      IIOImageWriteSession::putBytes
                                                ((IIOImageWriteSession *)this_00,pvVar26,
                                                 (ulong)(local_400 + 1));
                                      if (pvVar26 != (void *)0xc) goto LAB_187b650dc;
                                      lVar37 = 0;
                                      do {
                                        local_3c8 = local_3c8 & 0xffffffffffffff00;
                                        if (puVar29 != (uchar *)0x0) {
                                          func_0x000188140720(puVar29,lVar37);
                                          func_0x000188141240();
                                        }
                                        pvVar26 = *(void **)(param_1 + 0x10);
                                        IIOImageWriteSession::putBytes
                                                  ((IIOImageWriteSession *)this_00,pvVar26,
                                                   (ulong)&local_3c8);
                                        uVar42 = (uint)pIVar33;
                                        if (pvVar26 != (void *)0x1) goto LAB_187b650dc;
                                        lVar37 = lVar37 + 1;
                                      } while (lVar37 != 0x10);
                                      if (puVar29 != (uchar *)0x0) {
                                        func_0x000188141450(puVar29);
                                      }
                                    }
LAB_187b6504c:
                                    pIVar40 = (IIOImageWriteSession *)pIVar15;
                                    func_0x000188138470(pIVar15,0xd64ab5ac);
                                    if (pIVar40 != (IIOImageWriteSession *)0x0) {
                                      uVar14 = 0;
                                      if (uVar13 != 0) {
                                        uVar14 = (uint)pIVar30 / uVar13;
                                      }
                                      uVar45 = (ulong)uVar14;
                                      if (bVar9 && bVar10) {
                                        pIVar43 = param_1;
                                        pIVar32 = pIVar16;
                                        if (uVar13 == 8) {
                                          pIVar30 = pIVar17;
                                          writeLayerMaskBlock8bit
                                                    (this_00,param_1,(ulong)param_2,(ulong)pIVar16,
                                                     (ulong)pIVar17,(ulong)pIVar15,uVar45,true);
                                          uVar42 = (uint)pIVar30;
                                        }
                                        else {
                                          if (uVar13 != 0x10) {
                                            pIVar52 = (IIOImageWriteSession *)0x0;
                                            pIVar44 = (IIOImagePixelDataProvider *)0x0;
                                            pIVar43 = (IIOImagePixelDataProvider *)0xffffffce;
                                            goto LAB_187b65624;
                                          }
                                          pIVar30 = pIVar17;
                                          writeLayerMaskBlock16bit
                                                    (this_00,param_1,(ulong)param_2,(ulong)pIVar16,
                                                     (ulong)pIVar17,(ulong)pIVar15,(ulong)p_Var34,
                                                     true);
                                          uVar42 = (uint)pIVar30;
                                        }
                                        if ((int)pIVar43 == 0) goto LAB_187b6514c;
                                      }
                                      else {
                                        local_3c0 = local_3c0 & 0xffffffff00000000;
                                        local_3c8 = 0x8000000;
                                        pvVar26 = *(void **)(param_1 + 0x10);
                                        pIVar32 = (IIODictionary *)0xc;
                                        IIOImageWriteSession::putBytes
                                                  ((IIOImageWriteSession *)this_00,pvVar26,
                                                   (ulong)&local_3c8);
                                        pIVar43 = (IIOImagePixelDataProvider *)0xffffffce;
                                        if (pvVar26 == (void *)0xc) {
LAB_187b6514c:
                                          local_3dc = 0;
                                          if (uVar13 == 8) {
                                            uVar14 = (uint)pIVar19 * uVar49 * 2;
                                            local_4b8 = (IIOImageWriteSession *)(ulong)uVar14;
                                            local_3dc = 0x100;
                                            uVar56 = (long)(pIVar16 + (ulong)(pIVar16 + 0x7f) / 0x7f
                                                           ) * (long)pIVar17;
                                            if (uVar14 == 0) {
                                              local_4b8 = (IIOImageWriteSession *)0x0;
                                              pIVar52 = (IIOImageWriteSession *)0x0;
                                              goto LAB_187b65224;
                                            }
                                            pIVar52 = local_4b8;
                                            func_0x000188138470(local_4b8,0x1000040bdfb0063);
                                            if (pIVar52 != (IIOImageWriteSession *)0x0)
                                            goto LAB_187b65224;
                                            LogDebug("writeOne",0x6c9,
                                                                                                          
                                                  "*** ERRROR: could not allocate rlebuf - size=%d\n"
                                                  );
                                            pIVar52 = (IIOImageWriteSession *)0x0;
LAB_187b65758:
                                            pIVar44 = (IIOImagePixelDataProvider *)0x0;
                                          }
                                          else {
                                            local_4b8 = (IIOImageWriteSession *)0x0;
                                            pIVar52 = (IIOImageWriteSession *)0x0;
                                            uVar56 = (long)pIVar17 * (long)pIVar16 *
                                                     ((ulong)pIVar47 & 0xffffffff) >> 3;
LAB_187b65224:
                                            auVar5._8_8_ = 0;
                                            auVar5._0_8_ = pIVar19;
                                            auVar6._8_8_ = 0;
                                            auVar6._0_8_ = uVar56;
                                            if (SUB168(auVar5 * auVar6,8) != 0) goto LAB_187b65758;
                                            pIVar47 = (IIODictionary *)((long)pIVar19 * uVar56);
                                            pIVar30 = (IIODictionary *)0x100004077774924;
                                            pIVar44 = (IIOImagePixelDataProvider *)pIVar47;
                                            func_0x000188138470();
                                            if (pIVar44 == (IIOImagePixelDataProvider *)0x0) {
                                              writeOne((IIOImagePixelDataProvider *)0x0,pIVar30,
                                                       pIVar32,uVar42);
                                              goto LAB_187b65758;
                                            }
                                            cVar8 = (char)pIVar47;
                                            if ((uVar13 == 0x10) &&
                                               (pIVar19 != (IIOImageWriteSession *)0x0)) {
                                              lVar37 = 0;
                                              pIVar28 = pIVar19;
                                              do {
                                                local_c0[lVar37] = uVar56;
                                                lVar37 = lVar37 + 1;
                                                pIVar28 = pIVar28 + -1;
                                              } while (pIVar28 != (IIOImageWriteSession *)0x0);
                                            }
                                            IIOImagePixelDataProvider::rewind
                                                      ((IIOImagePixelDataProvider *)pIVar47);
                                            if (pIVar17 != (IIODictionary *)0x0) {
                                              pIVar47 = (IIODictionary *)0x0;
                                              uVar7 = -local_444;
                                              pIVar28 = pIVar19 + -1;
                                              do {
                                                pIVar32 = param_2;
                                                IIOImagePixelDataProvider::getBytes
                                                          (param_2,(ulong)pIVar40);
                                                if (pIVar32 != pIVar15) break;
                                                if (uVar13 == 0x10) {
                                                  if (iVar53 < 3) {
                                                    if (iVar53 == 0) {
LAB_187b654c0:
                                                      if (pIVar16 != (IIODictionary *)0x0) {
                                                        pIVar32 = (IIODictionary *)0x0;
                                                        pIVar48 = pIVar40;
                                                        do {
                                                          if (pIVar19 != (IIOImageWriteSession *)0x0
                                                             ) {
                                                            lVar37 = 0;
                                                            pIVar31 = pIVar19;
                                                            do {
                                                              *(ushort *)
                                                               (pIVar44 +
                                                               (long)(pIVar32 +
                                                                     (long)(pIVar47 +
                                                                           lVar37 * (long)pIVar17) *
                                                                     (long)pIVar16) * 2) =
                                                                   *(ushort *)(pIVar48 + lVar37 * 2)
                                                                   ^ uVar7;
                                                              lVar37 = lVar37 + 1;
                                                              pIVar31 = pIVar31 + -1;
                                                            } while (pIVar31 !=
                                                                     (IIOImageWriteSession *)0x0);
                                                          }
                                                          pIVar32 = pIVar32 + 1;
                                                          pIVar48 = pIVar48 + uVar45 * 2;
                                                        } while (pIVar32 != pIVar16);
                                                      }
                                                    }
                                                    else {
                                                      if (iVar53 == 1) goto LAB_187b65514;
                                                      if (iVar53 == 2) goto LAB_187b653f4;
                                                    }
                                                  }
                                                  else if (iVar53 < 5) {
                                                    if (iVar53 == 3) {
LAB_187b65514:
                                                      if (pIVar16 != (IIODictionary *)0x0) {
                                                        pIVar32 = (IIODictionary *)0x0;
                                                        pIVar48 = pIVar40;
                                                        do {
                                                          if (pIVar28 != (IIOImageWriteSession *)0x0
                                                             ) {
                                                            lVar37 = 0;
                                                            pIVar31 = pIVar28;
                                                            do {
                                                              *(ushort *)
                                                               (pIVar44 +
                                                               (long)(pIVar32 +
                                                                     (long)(pIVar47 +
                                                                           lVar37 * (long)pIVar17) *
                                                                     (long)pIVar16) * 2) =
                                                                   *(ushort *)(pIVar48 + lVar37 * 2)
                                                                   ^ uVar7;
                                                              lVar37 = lVar37 + 1;
                                                              pIVar31 = pIVar31 + -1;
                                                            } while (pIVar31 !=
                                                                     (IIOImageWriteSession *)0x0);
                                                          }
                                                          *(undefined2 *)
                                                           (pIVar44 +
                                                           (long)(pIVar32 +
                                                                 (long)(pIVar47 +
                                                                       (long)pIVar28 * (long)pIVar17
                                                                       ) * (long)pIVar16) * 2) =
                                                               *(undefined2 *)
                                                                (pIVar48 + (long)pIVar28 * 2);
                                                          pIVar32 = pIVar32 + 1;
                                                          pIVar48 = pIVar48 + uVar45 * 2;
                                                        } while (pIVar32 != pIVar16);
                                                      }
                                                    }
                                                    else if (iVar53 == 4) {
LAB_187b653f4:
                                                      if (pIVar16 != (IIODictionary *)0x0) {
                                                        pIVar32 = (IIODictionary *)0x0;
                                                        pIVar48 = pIVar40;
                                                        do {
                                                          if (pIVar28 != (IIOImageWriteSession *)0x0
                                                             ) {
                                                            lVar37 = 0;
                                                            pIVar31 = pIVar28;
                                                            do {
                                                              lVar4 = lVar37 * (long)pIVar17;
                                                              lVar37 = lVar37 + 1;
                                                              *(ushort *)
                                                               (pIVar44 +
                                                               (long)(pIVar32 +
                                                                     (long)(pIVar47 + lVar4) *
                                                                     (long)pIVar16) * 2) =
                                                                   *(ushort *)(pIVar48 + lVar37 * 2)
                                                                   ^ uVar7;
                                                              pIVar31 = pIVar31 + -1;
                                                            } while (pIVar31 !=
                                                                     (IIOImageWriteSession *)0x0);
                                                          }
                                                          *(undefined2 *)
                                                           (pIVar44 +
                                                           (long)(pIVar32 +
                                                                 (long)(pIVar47 +
                                                                       (long)pIVar28 * (long)pIVar17
                                                                       ) * (long)pIVar16) * 2) =
                                                               *(undefined2 *)pIVar48;
                                                          pIVar32 = pIVar32 + 1;
                                                          pIVar48 = pIVar48 + uVar45 * 2;
                                                        } while (pIVar32 != pIVar16);
                                                      }
                                                    }
                                                  }
                                                  else {
                                                    if (iVar53 == 5) goto LAB_187b654c0;
                                                    if ((iVar53 == 6) &&
                                                       (pIVar16 != (IIODictionary *)0x0)) {
                                                      pIVar32 = (IIODictionary *)0x0;
                                                      pIVar48 = pIVar40;
                                                      do {
                                                        if (pIVar19 != (IIOImageWriteSession *)0x0)
                                                        {
                                                          lVar37 = 0;
                                                          pIVar31 = pIVar19;
                                                          do {
                                                            lVar4 = lVar37 * (long)pIVar17;
                                                            lVar37 = lVar37 + 1;
                                                            *(ushort *)
                                                             (pIVar44 +
                                                             (long)(pIVar32 +
                                                                   (long)(pIVar47 + lVar4) *
                                                                   (long)pIVar16) * 2) =
                                                                 *(ushort *)(pIVar48 + lVar37 * 2) ^
                                                                 uVar7;
                                                            pIVar31 = pIVar31 + -1;
                                                          } while (pIVar31 !=
                                                                   (IIOImageWriteSession *)0x0);
                                                        }
                                                        pIVar32 = pIVar32 + 1;
                                                        pIVar48 = pIVar48 + uVar45 * 2;
                                                      } while (pIVar32 != pIVar16);
                                                    }
                                                  }
                                                }
                                                else if ((pIVar52 != (IIOImageWriteSession *)0x0 &&
                                                         pIVar19 != (IIOImageWriteSession *)0x0) &&
                                                         uVar13 == 8) {
                                                  lVar37 = 0;
                                                  uVar51 = 1;
                                                  pIVar48 = pIVar19;
                                                  do {
                                                    pIVar31 = pIVar40 + lVar37;
                                                    if ((iVar53 == 2) || (iVar53 == 4)) {
                                                      uVar46 = 0;
                                                      if (uVar45 != 0) {
                                                        uVar46 = uVar51 / uVar45;
                                                      }
                                                      pIVar31 = pIVar40 + (uVar51 - uVar46 * uVar45)
                                                      ;
                                                    }
                                                    else if (iVar53 == 6) {
                                                      pIVar31 = pIVar31 + 1;
                                                    }
                                                    uVar46 = local_c0[lVar37];
                                                    PackBits((PSDWritePlugin *)pIVar47,
                                                             (uchar *)pIVar32,(ulong)pIVar31,uVar45,
                                                             (uchar *)pIVar16,
                                                             (uchar *)(pIVar44 +
                                                                      uVar46 + lVar37 * uVar56),
                                                             (bool)((char)pIVar44 + cVar8));
                                                    *(ushort *)
                                                     (pIVar52 +
                                                     (long)(pIVar47 + lVar37 * (long)pIVar17) * 2) =
                                                         (ushort)((ulong)pIVar32 >> 8) & 0xff |
                                                         (ushort)(((uint)pIVar32 & 0xff00ff) << 8);
                                                    local_c0[lVar37] =
                                                         uVar46 + ((ulong)pIVar32 & 0xffffffff);
                                                    lVar37 = lVar37 + 1;
                                                    uVar51 = uVar51 + 1;
                                                    pIVar48 = pIVar48 + -1;
                                                  } while (pIVar48 != (IIOImageWriteSession *)0x0);
                                                }
                                                pIVar47 = pIVar47 + 1;
                                              } while (pIVar47 != pIVar17);
                                            }
                                            pvVar26 = *(void **)(param_1 + 0x10);
                                            IIOImageWriteSession::putBytes
                                                      ((IIOImageWriteSession *)pIVar47,pvVar26,
                                                       (ulong)&local_3dc);
                                            if (pvVar26 == (void *)0x2) {
                                              if (pIVar52 != (IIOImageWriteSession *)0x0) {
                                                pIVar28 = *(IIOImageWriteSession **)(param_1 + 0x10)
                                                ;
                                                IIOImageWriteSession::putBytes
                                                          (local_4b8,pIVar28,(ulong)pIVar52);
                                                if (pIVar28 != local_4b8) goto LAB_187b656d4;
                                              }
                                              if (pIVar19 != (IIOImageWriteSession *)0x0) {
                                                lVar37 = 0;
                                                do {
                                                  pIVar28 = *(IIOImageWriteSession **)
                                                             (param_1 + 0x10);
                                                  pIVar48 = (IIOImageWriteSession *)local_c0[lVar37]
                                                  ;
                                                  IIOImageWriteSession::putBytes
                                                            (pIVar48,pIVar28,
                                                             (ulong)(pIVar44 + lVar37 * uVar56));
                                                  if (pIVar28 != pIVar48) goto LAB_187b656d4;
                                                  lVar37 = lVar37 + 1;
                                                  pIVar19 = pIVar19 + -1;
                                                } while (pIVar19 != (IIOImageWriteSession *)0x0);
                                              }
                                              pIVar43 = (IIOImagePixelDataProvider *)0x0;
                                              goto LAB_187b65624;
                                            }
                                          }
LAB_187b656d4:
                                          pIVar43 = (IIOImagePixelDataProvider *)
                                                    ((ulong)pIVar43 & 0xffffffff);
                                          goto LAB_187b65624;
                                        }
                                      }
                                      pIVar52 = (IIOImageWriteSession *)0x0;
                                      pIVar44 = (IIOImagePixelDataProvider *)0x0;
                                      goto LAB_187b65624;
                                    }
                                    LogDebug("writeOne",0x69e,
                                             "*** ERRROR: could not allocate rowbuf - size=%d\n");
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          else {
            local_3c8 = local_3c8 & 0xffffffff00000000;
            pvVar26 = *(void **)(param_1 + 0x10);
            IIOImageWriteSession::putBytes
                      ((IIOImageWriteSession *)pIVar21,pvVar26,(ulong)&local_3c8);
            local_490 = (IIOImageWriteSession *)0x0;
            if (pvVar26 == (void *)0x4) goto LAB_187b64bc4;
          }
        }
        else {
          local_490 = (IIOImageWriteSession *)0x0;
        }
LAB_187b650dc:
        pIVar52 = (IIOImageWriteSession *)0x0;
        pIVar44 = (IIOImagePixelDataProvider *)0x0;
        pIVar43 = (IIOImagePixelDataProvider *)0xffffffce;
        pIVar40 = (IIOImageWriteSession *)0x0;
      }
    }
    else {
      local_490 = (IIOImageWriteSession *)0x0;
      pIVar52 = (IIOImageWriteSession *)0x0;
      pIVar44 = (IIOImagePixelDataProvider *)0x0;
      pIVar40 = (IIOImageWriteSession *)0x0;
      pIVar43 = (IIOImagePixelDataProvider *)0xffffffce;
    }
  }
  else {
LAB_187b64998:
    sVar35 = 3;
    if (uVar42 == 0) {
      sVar35 = 1;
    }
    if (uVar42 < 2) {
      local_444 = 0;
      goto LAB_187b649d8;
    }
    if (uVar42 == 2) {
      local_444 = 1;
      sVar35 = 4;
      goto LAB_187b649d8;
    }
    if (uVar42 == 3) {
      local_444 = 0;
      sVar35 = 9;
      goto LAB_187b649d8;
    }
    local_490 = (IIOImageWriteSession *)0x0;
    pIVar52 = (IIOImageWriteSession *)0x0;
    pIVar44 = (IIOImagePixelDataProvider *)0x0;
    pIVar40 = (IIOImageWriteSession *)0x0;
    pIVar43 = (IIOImagePixelDataProvider *)0xffffffce;
  }
LAB_187b65624:
  if (p_Var50 != (__CFString *)0x0) {
    func_0x000188141450(p_Var50);
  }
  if (pIVar24 != (IIODictionary *)0x0) {
    func_0x000188138390();
  }
  if (puVar23 != (uchar *)0x0) {
    func_0x000188138390();
  }
LAB_187b65650:
  if (pIVar22 != (IIOImageWriteSession *)0x0) {
    func_0x000188141450();
  }
  if (pIVar44 != (IIOImagePixelDataProvider *)0x0) {
    func_0x000188138390(pIVar44);
    pIVar22 = (IIOImageWriteSession *)pIVar44;
  }
  if (pIVar40 != (IIOImageWriteSession *)0x0) {
    func_0x000188138390(pIVar40);
    pIVar22 = pIVar40;
  }
  if (pIVar52 != (IIOImageWriteSession *)0x0) {
    func_0x000188138390(pIVar52);
    pIVar22 = pIVar52;
  }
  if (local_490 != (IIOImageWriteSession *)0x0) {
    func_0x000188138390(local_490);
    pIVar22 = local_490;
  }
  if (*_DAT_1e016af28 == local_c0[8]) {
    return pIVar43;
  }
  func_0x000188138130();
  return (IIOImagePixelDataProvider *)pIVar22;
}

