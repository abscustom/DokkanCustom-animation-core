--4024900:超サイヤ人孫悟空&超サイヤ人ベジータ_フルパワークラッシュ(衣装チェンジ後)_sp2412
--sp_effect_b4_00255
--sp2412

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 160468;  --開幕〜飛び出す孫悟空とベジータ ef_001
SP_02 = 160469;  --孫悟空とベジータが敵にぶつかって、最後二人が波で攻撃  ef_002
SP_03 = 160470;  --孫悟空とベジータが敵にぶつかって、最後二人が波で攻撃  ef_003
SP_04 = 160471;  --敵が飛ばされて、ベジータの連波攻撃と孫悟空のかめはめは攻撃   ef_004
SP_05 = 160473;  --敵が飛ばされて、ベジータの連波攻撃と孫悟空のかめはめは攻撃   ef_005
SP_06 = 160475;  --フィニッシュ  ef_006

--敵側
SP_01r = 160585;  --開幕〜飛び出す孫悟空とベジータ_敵側  ef_001r
SP_04r = 160472;  --同上　敵側   ef_004r
SP_05r = 160474;  --同上　敵側   ef_005r
SP_06r = 160587;  --フィニッシュ  ef_006


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開幕〜飛び出す孫悟空とベジータ(286F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 286, 0x100, -1, 0, 0, 0 );  --開幕〜飛び出す孫悟空とベジータ ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 286, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 286, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 286, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 286 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 286, first_f, 0 );

-- ** 音 ** --
--顔カットイン
SE001 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--入り
SE002 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 98, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 46 );

--気ダメ
SE003 = playSeVer2( spep_0 + 32, 1035, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 126, 1035, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 46, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE004, 79 );
SE005 = playSeVer2( spep_0 + 70, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE005, 79 );
SE006 = playSeVer2( spep_0 + 94, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE006, 40 );
SE007 = playSeVer2( spep_0 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE007, 40 );
SE009 = playSeVer2( spep_0 + 138, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE009, 40 );
SE010 = playSeVer2( spep_0 + 162, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE010, 79 );

--ベジータ向かってくる
SE011 = playSeVer2( spep_0 + 182, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE011, 75 );
SE012 = playSeVer2( spep_0 + 182, 1182, "",spep_0 + 246, 0, 18, -1);
SE013 = playSeVer2( spep_0 + 186, 9, "",spep_0 + 246, 0, 18, -1);
SE014 = playSeVer2( spep_0 + 186, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE014, 41 );

--悟空向かってくる
SE015 = playSeVer2( spep_0 + 240, 1223, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE015, 87 );
setStartTimeMs( SE015,  417 );
setPitch( spep_0 + 240, SE015, 100 );
setTimeStretch( SE015, 1.07, 30, 4 );
SE016 = playSeVer2( spep_0 + 232, 1182, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 236, 9, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 236, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE018, 41 );
setPitch( spep_0 + 236, SE018, 200 );
setTimeStretch( SE018, 1.13, 30, 4 );

--飛行中
SE019 = playSeVer2( spep_0 + 280, 1019, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 280, 1278, "",spep_0 + 444, 0, 86, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 286 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 286;


------------------------------------------------------
-- 孫悟空とベジータが敵にぶつかって、最後二人が波で攻撃(462F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
dash_f = entryEffectLife( spep_1 + 0, SP_02, 461, 0x100, -1, 0, 0, 0 );  --孫悟空とベジータが敵にぶつかって、最後二人が波で攻撃  ef_002
setEffMoveKey( spep_1 + 0, dash_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 461, dash_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, dash_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 461, dash_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash_f, 0 );
setEffRotateKey( spep_1 + 461, dash_f, 0 );
setEffAlphaKey( spep_1 + 0, dash_f, 255 );
setEffAlphaKey( spep_1 + 461 -1, dash_f, 255 );
setEffAlphaKey( spep_1 + 461, dash_f, 0 );

dash_b = entryEffectLife( spep_1 + 0, SP_03, 461, 0x80, -1, 0, 0, 0 );  --孫悟空とベジータが敵にぶつかって、最後二人が波で攻撃  ef_003
setEffMoveKey( spep_1 + 0, dash_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 461, dash_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, dash_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 461, dash_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash_b, 0 );
setEffRotateKey( spep_1 + 461, dash_b, 0 );
setEffAlphaKey( spep_1 + 0, dash_b, 255 );
setEffAlphaKey( spep_1 + 461 -1, dash_b, 255 );
setEffAlphaKey( spep_1 + 461, dash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 100, 1, 1 );
setDisp( spep_1 -3 + 128, 1, 0 );
changeAnime( spep_1 -3 + 100, 1, 16 );

setMoveKey( spep_1 -3 + 100, 1, -2.2, -133.1 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -2.2, -133 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -2.3, -133 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -2.4, -133.2 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -2.5, -133.4 , 0 );
setMoveKey( spep_1 -3 + 110, 1, -2.6, -133.9 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -2.6, -134.5 , 0 );
setMoveKey( spep_1 -3 + 114, 1, -2.7, -135.2 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -2.8, -136 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -2.9, -137 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -3, -138.2 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -3.1, -139.4 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -3.2, -140.8 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -3.3, -142.4 , 0 );
setMoveKey( spep_1 -3 + 128, 1, -3.3, -142.4 , 0 );

setScaleKey( spep_1 -3 + 100, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 102, 1, 0.55, 0.55 );
setScaleKey( spep_1 -3 + 104, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 106, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 108, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 110, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 112, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 114, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 116, 1, 0.97, 0.97 );
setScaleKey( spep_1 -3 + 118, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 120, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 122, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 124, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 126, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 128, 1, 1.32, 1.32 );

setRotateKey( spep_1 -3 + 100, 1, 0 );
setRotateKey( spep_1 -3 + 128, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 148, 1, 1 );
setDisp( spep_1 -3 + 190, 1, 0 );
changeAnime( spep_1 -3 + 148, 1, 3 );

setMoveKey( spep_1 -3 + 148, 1, -151.8, -73 , 0 );
setMoveKey( spep_1 -3 + 154, 1, -151.8, -73 , 0 );
setMoveKey( spep_1 -3 + 156, 1, -144.3, -73 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -144.3, -73 , 0 );
setMoveKey( spep_1 -3 + 162, 1, -136.7, -73 , 0 );
setMoveKey( spep_1 -3 + 166, 1, -136.7, -73 , 0 );
setMoveKey( spep_1 -3 + 168, 1, -129.3, -73 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -129.3, -73 , 0 );

setScaleKey( spep_1 -3 + 148, 1, 1.75, 1.75 );

setRotateKey( spep_1 -3 + 148, 1, 0 );

-- ** 音 ** --
--飛行中
SE021 = playSeVer2( spep_1 + 50, 1019, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 114, 1019, "", 0, 0, 0, -1);   

--加速１
SE022 = playSeVer2( spep_1 + 68, 1116, "",spep_1 + 116, 0, 22, -1);
SE023 = playSeVer2( spep_1 + 68, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 68, SE023, 74 );
SE024 = playSeVer2( spep_1 + 68, 1343, "",spep_1 + 152, 0, 20, -1);

--加速２
SE026 = playSeVer2( spep_1 + 126, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 126, SE026, 126 );
SE027 = playSeVer2( spep_1 + 126, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 126, SE027, 79 );

--敵ヒット
SE028 = playSeVer2( spep_1 + 182, 1159, "",spep_1 + 342, 0, 30, -1);
SE029 = playSeVer2( spep_1 + 182, 1114, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 192, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 462 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 170 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 12, SE024, 0);
    stopSe( SP_dodge - 12, SE025, 0);
    stopSe( SP_dodge - 12, SE026, 0);
    stopSe( SP_dodge - 12, SE027, 0);
    stopSe( SP_dodge - 12, SE028, 0);
    stopSe( SP_dodge - 12, SE029, 0);
    stopSe( SP_dodge - 12, SE030, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -129.3, -73 , 0 );
    setMoveKey( SP_dodge + 2, 1, -121.8, -73 , 0 );
    setMoveKey( SP_dodge + 4, 1, -121.8, -73 , 0 );
    setMoveKey( SP_dodge + 6, 1, -114.3, -73 , 0 );
    setMoveKey( SP_dodge + 8, 1, -114.3, -73 , 0 );
    setMoveKey( SP_dodge + 10, 1, -116.6, -75.3 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.75, 1.75 );
    setScaleKey( SP_dodge + 10, 1, 1.75, 1.75 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

setMoveKey( spep_1 -3 + 174, 1, -121.8, -73 , 0 );
setMoveKey( spep_1 -3 + 178, 1, -121.8, -73 , 0 );
setMoveKey( spep_1 -3 + 180, 1, -114.3, -73 , 0 );
setMoveKey( spep_1 -3 + 182, 1, -114.3, -73 , 0 );
setMoveKey( spep_1 -3 + 184, 1, -116.6, -75.3 , 0 );
setMoveKey( spep_1 -3 + 186, 1, -106, -72.3 , 0 );
setMoveKey( spep_1 -3 + 188, 1, -111.9, -78.2 , 0 );
setMoveKey( spep_1 -3 + 190, 1, -111.9, -78.2 , 0 );

setScaleKey( spep_1 -3 + 190, 1, 1.75, 1.75 );

setRotateKey( spep_1 -3 + 190, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 252, 1, 1 );
setDisp( spep_1 -3 + 312, 1, 0 );
changeAnime( spep_1 -3 + 252, 1, 105 );

setMoveKey( spep_1 -3 + 252, 1, 8.1, 117.6 , 0 );
setMoveKey( spep_1 -3 + 254, 1, 8.1, 117.6 , 0 );
setMoveKey( spep_1 -3 + 256, 1, 7.9, 117.7 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 7.8, 117.8 , 0 );
setMoveKey( spep_1 -3 + 260, 1, 7.8, 117.8 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 7.6, 117.9 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 7.5, 118 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 7.4, 118 , 0 );
setMoveKey( spep_1 -3 + 268, 1, 7.4, 118.1 , 0 );
setMoveKey( spep_1 -3 + 270, 1, 7.2, 118.2 , 0 );
setMoveKey( spep_1 -3 + 272, 1, 7.1, 118.2 , 0 );
setMoveKey( spep_1 -3 + 274, 1, 7.1, 118.3 , 0 );
setMoveKey( spep_1 -3 + 276, 1, 6.9, 118.4 , 0 );
setMoveKey( spep_1 -3 + 278, 1, 6.8, 118.4 , 0 );
setMoveKey( spep_1 -3 + 280, 1, 6.7, 118.5 , 0 );
setMoveKey( spep_1 -3 + 282, 1, 6.7, 118.6 , 0 );
setMoveKey( spep_1 -3 + 284, 1, 6.5, 118.6 , 0 );
setMoveKey( spep_1 -3 + 286, 1, 6.4, 118.7 , 0 );
setMoveKey( spep_1 -3 + 288, 1, 6.3, 118.8 , 0 );
setMoveKey( spep_1 -3 + 290, 1, 6.3, 118.9 , 0 );
setMoveKey( spep_1 -3 + 292, 1, 6.1, 118.9 , 0 );
setMoveKey( spep_1 -3 + 294, 1, 6, 119 , 0 );
setMoveKey( spep_1 -3 + 296, 1, 6, 119.1 , 0 );
setMoveKey( spep_1 -3 + 298, 1, 5.8, 119.1 , 0 );
setMoveKey( spep_1 -3 + 300, 1, 5.7, 119.2 , 0 );
setMoveKey( spep_1 -3 + 302, 1, 5.6, 119.3 , 0 );
setMoveKey( spep_1 -3 + 304, 1, 5.6, 119.4 , 0 );
setMoveKey( spep_1 -3 + 306, 1, 5.4, 119.4 , 0 );
setMoveKey( spep_1 -3 + 308, 1, 5.3, 119.5 , 0 );
setMoveKey( spep_1 -3 + 310, 1, 5.3, 119.6 , 0 );
setMoveKey( spep_1 -3 + 312, 1, 5.3, 119.6 , 0 );

setScaleKey( spep_1 -3 + 252, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 312, 1, 1.56, 1.56 );

setRotateKey( spep_1 -3 + 252, 1, -27.1 );
setRotateKey( spep_1 -3 + 254, 1, -27.1 );
setRotateKey( spep_1 -3 + 256, 1, -27.4 );
setRotateKey( spep_1 -3 + 258, 1, -27.7 );
setRotateKey( spep_1 -3 + 260, 1, -27.9 );
setRotateKey( spep_1 -3 + 262, 1, -28.2 );
setRotateKey( spep_1 -3 + 264, 1, -28.5 );
setRotateKey( spep_1 -3 + 266, 1, -28.8 );
setRotateKey( spep_1 -3 + 268, 1, -29 );
setRotateKey( spep_1 -3 + 270, 1, -29.3 );
setRotateKey( spep_1 -3 + 272, 1, -29.6 );
setRotateKey( spep_1 -3 + 274, 1, -29.9 );
setRotateKey( spep_1 -3 + 276, 1, -30.2 );
setRotateKey( spep_1 -3 + 278, 1, -30.4 );
setRotateKey( spep_1 -3 + 280, 1, -30.7 );
setRotateKey( spep_1 -3 + 282, 1, -31 );
setRotateKey( spep_1 -3 + 284, 1, -31.3 );
setRotateKey( spep_1 -3 + 286, 1, -31.5 );
setRotateKey( spep_1 -3 + 288, 1, -31.8 );
setRotateKey( spep_1 -3 + 290, 1, -32.1 );
setRotateKey( spep_1 -3 + 292, 1, -32.4 );
setRotateKey( spep_1 -3 + 294, 1, -32.7 );
setRotateKey( spep_1 -3 + 296, 1, -32.9 );
setRotateKey( spep_1 -3 + 298, 1, -33.2 );
setRotateKey( spep_1 -3 + 300, 1, -33.5 );
setRotateKey( spep_1 -3 + 302, 1, -33.8 );
setRotateKey( spep_1 -3 + 304, 1, -34 );
setRotateKey( spep_1 -3 + 306, 1, -34.3 );
setRotateKey( spep_1 -3 + 308, 1, -34.6 );
setRotateKey( spep_1 -3 + 310, 1, -34.9 );
setRotateKey( spep_1 -3 + 312, 1, -34.9 );

-- ** 音 ** --
--敵ヒット
SE031 = playSeVer2( spep_1 + 216, 1067, "", 0, 0, 0, -1);

--転びながら着地
SE032 = playSeVer2( spep_1 + 312, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 312, SE032, 204 );
SE033 = playSeVer2( spep_1 + 318, 1007, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_1 + 318, 1332, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_1 + 322, 1333, "",spep_1 + 378, 0, 10, -1);
SE037 = playSeVer2( spep_1 + 326, 1012, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_1 + 338, 1331, "",spep_1 + 394, 0, 6, -1);
SE039 = playSeVer2( spep_1 + 344, 1013, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_1 + 356, 1007, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 384, 1192, "",spep_1 + 412, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 384, SE041, 188 );
SE042 = playSeVer2( spep_1 + 384, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 384, SE042, 158 );

--環境音
SE035 = playSeVer2( spep_1 + 318, 1269, "",spep_1 + 472 -1, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 318, SE035, 26 );

--気弾発射
SE043 = playSeVer2( spep_1 + 436, 1027, "",spep_1 + 472 -1, 0, 10, -1);
SE044 = playSeVer2( spep_1 + 436, 1145, "",spep_1 + 472 -1, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 436, SE044, 74 );
SE045 = playSeVer2( spep_1 + 436, 1109, "",spep_1 + 472 -1, 0, 10, -1);

-- ** 次の準備 ** --
spep_c = spep_1 + 461;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_c, SE_05);
	speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_c, SE_05);
	speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_c + 0, SE_05 );

--気弾飲み込まれ中
SE047 = playSeVer2( spep_c + 88, 1258, "",spep_c + 164, 0, 22, -1);
setSeVolumeByWorkId( spep_c + 88, SE047, 81 );
SE048 = playSeVer2( spep_c + 88, 1304, "",spep_c + 178, 0, 36, -1);
setSeVolumeByWorkId( spep_c + 88, SE048, 77 );
setPitch( spep_c + 88, SE048, 400 );
setTimeStretch( SE048, 1.27, 30, 4 );
SE049 = playSeVer2( spep_c + 92, 1213, "",spep_c + 178, 0, 36, -1);
setSeVolumeByWorkId( spep_c + 92, SE049, 48 );


-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_c + 94;

------------------------------------------------------
-- 敵が飛ばされて、ベジータの連波攻撃と孫悟空のかめはめは攻撃 (254F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_3 + 0, SP_04, 254, 0x100, -1, 0, 0, 0 );  --敵が飛ばされて、ベジータの連波攻撃と孫悟空のかめはめは攻撃   ef_004
setEffMoveKey( spep_3 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 254, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 254, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_f, 0 );
setEffRotateKey( spep_3 + 254, attack_f, 0 );
setEffAlphaKey( spep_3 + 0, attack_f, 255 );
setEffAlphaKey( spep_3 + 254 -1, attack_f, 255 );
setEffAlphaKey( spep_3 + 254, attack_f, 0 );

attack_b = entryEffectLife( spep_3 + 0, SP_05, 254, 0x80, -1, 0, 0, 0 );  --敵が飛ばされて、ベジータの連波攻撃と孫悟空のかめはめは攻撃   ef_005
setEffMoveKey( spep_3 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 254, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 254, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_b, 0 );
setEffRotateKey( spep_3 + 254, attack_b, 0 );
setEffAlphaKey( spep_3 + 0, attack_b, 255 );
setEffAlphaKey( spep_3 + 254 -1, attack_b, 255 );
setEffAlphaKey( spep_3 + 254, attack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 54, 1, 0 );
changeAnime( spep_3 + 0, 1, 108 );

setMoveKey( spep_3 + 0, 1, -1, 7.3 , 0 );
setMoveKey( spep_3 + 1, 1, 11.2, 27.3 , 0 );
setMoveKey( spep_3 + 2, 1, -12.5, -0.7 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 3.7, 27.3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 35.9, -0.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 36.2, 15.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 20.4, 1.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 8.7, 15.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 38.9, 1.3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 41.1, 23.3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 49.4, 27.3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 25.6, -0.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 41.9, 27.3 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 74.1, -0.7 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 74.3, 15.3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 58.6, 1.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 46.8, 15.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 79.1, 27.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 55.3, -0.7 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 71.5, 27.3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 103.8, -0.7 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 104, 15.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 88.3, 1.3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 76.5, 15.3 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 106.7, 1.3 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 109, 23.3 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 109.2, 7.3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 109.2, 7.3 , 0 );

setScaleKey( spep_3 + 0, 1, 4.39, 4.39 );
setScaleKey( spep_3 -3 + 54, 1, 4.39, 4.39 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 54, 1, 0 );

-- ** 音 ** --
--ベジータ連続気弾
SE050 = playSeVer2( spep_3 + 44, 1357, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_3 + 50, 1016, "",spep_3 + 66, 0, 8, -1);
SE052 = playSeVer2( spep_3 + 56, 1016, "",spep_3 + 72, 0, 8, -1);
SE053 = playSeVer2( spep_3 + 64, 1016, "",spep_3 + 80, 0, 8, -1);
SE054 = playSeVer2( spep_3 + 70, 1016, "",spep_3 + 86, 0, 10, -1);
SE055 = playSeVer2( spep_3 + 76, 1016, "",spep_3 + 92, 0, 8, -1);
SE056 = playSeVer2( spep_3 + 82, 1016, "",spep_3 + 98, 0, 8, -1);
SE057 = playSeVer2( spep_3 + 90, 1016, "",spep_3 + 104, 0, 8, -1);
SE058 = playSeVer2( spep_3 + 98, 1016, "",spep_3 + 114, 0, 8, -1);
SE059 = playSeVer2( spep_3 + 106, 1016, "",spep_3 + 120, 0, 8, -1);
SE061 = playSeVer2( spep_3 + 112, 1016, "",spep_3 + 128, 0, 8, -1);
SE062 = playSeVer2( spep_3 + 118, 1016, "",spep_3 + 136, 0, 10, -1);
SE063 = playSeVer2( spep_3 + 126, 1016, "",spep_3 + 144, 0, 8, -1);
SE064 = playSeVer2( spep_3 + 140, 1357, "",spep_3 + 222, 14, 20, -1);
setSeVolumeByWorkId( spep_3 + 140, SE064, 55 );
setStartTimeMs( SE064,  217 );
SE065 = playSeVer2( spep_3 + 136, 1016, "",spep_3 + 152, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 136, SE065, 50 );
SE067 = playSeVer2( spep_3 + 144, 1016, "",spep_3 + 158, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 144, SE067, 50 );
SE068 = playSeVer2( spep_3 + 150, 1016, "",spep_3 + 166, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 150, SE068, 50 );
SE069 = playSeVer2( spep_3 + 156, 1016, "",spep_3 + 172, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 156, SE069, 50 );
SE070 = playSeVer2( spep_3 + 166, 1016, "",spep_3 + 180, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 166, SE070, 50 );
SE071 = playSeVer2( spep_3 + 174, 1016, "",spep_3 + 190, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 174, SE071, 50 );
SE072 = playSeVer2( spep_3 + 182, 1016, "",spep_3 + 196, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 182, SE072, 50 );
SE073 = playSeVer2( spep_3 + 188, 1016, "",spep_3 + 204, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 188, SE073, 50 );
SE074 = playSeVer2( spep_3 + 194, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 194, SE074, 50 );

--画面遷移
SE060 = playSeVer2( spep_3 + 106, 1072, "", 0, 0, 0, -1);

--悟空力む
SE066 = playSeVer2( spep_3 + 142, 1330, "",spep_3 + 206, 0, 36, -1);
setSeVolumeByWorkId( spep_3 + 142, SE066, 46 );

--かめはめ波発射
SE075 = playSeVer2( spep_3 + 206, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 206, SE075, 72 );
SE076 = playSeVer2( spep_3 + 206, 1146, "", 0, 0, 0, -1);
SE077 = playSeVer2( spep_3 + 206, 1133, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 206, SE077, 76 );

--連続気弾飛んでいく
SE078 = playSeVer2( spep_3 + 240, 1284, "", 0, 0, 0, -1);
SE079 = playSeVer2( spep_3 + 246, 1357, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 254 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 254;


------------------------------------------------------
-- フィニッシュ(356F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --フィニッシュ  ef_006
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 356, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 356, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 356, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 356, finish_f, 255 );

-- ** 音 ** --
--連続気弾飛んでいく
SE080 = playSeVer2( spep_4 + 0, 1016, "",spep_4 + 16, 0, 8, -1);
SE081 = playSeVer2( spep_4 + 8, 1016, "",spep_4 + 22, 0, 6, -1);
SE082 = playSeVer2( spep_4 + 12, 1016, "",spep_4 + 28, 0, 8, -1);
SE083 = playSeVer2( spep_4 + 18, 1016, "",spep_4 + 34, 0, 8, -1);
SE084 = playSeVer2( spep_4 + 26, 1016, "",spep_4 + 42, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 26, SE084, 79 );
SE085 = playSeVer2( spep_4 + 32, 1016, "",spep_4 + 50, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 32, SE085, 83 );
SE086 = playSeVer2( spep_4 + 38, 1016, "",spep_4 + 56, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 38, SE086, 85 );
SE087 = playSeVer2( spep_4 + 44, 1016, "",spep_4 + 60, 0, 8, -1);
SE088 = playSeVer2( spep_4 + 52, 1016, "",spep_4 + 68, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 52, SE088, 87 );
SE089 = playSeVer2( spep_4 + 58, 1016, "",spep_4 + 74, 0, 6, -1);
SE090 = playSeVer2( spep_4 + 64, 1016, "",spep_4 + 80, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 64, SE090, 72 );
SE091 = playSeVer2( spep_4 + 70, 1016, "",spep_4 + 86, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 70, SE091, 97 );
SE092 = playSeVer2( spep_4 + 78, 1016, "",spep_4 + 94, 0, 8, -1);
SE093 = playSeVer2( spep_4 + 84, 1016, "",spep_4 + 102, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 84, SE093, 76 );
SE094 = playSeVer2( spep_4 + 92, 1016, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 356 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_4 + 0 );
endPhase( spep_4 + 98 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕〜飛び出す孫悟空とベジータ(286F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 286, 0x100, -1, 0, 0, 0 );  --開幕〜飛び出す孫悟空とベジータ ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 286, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 286, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 286, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 286 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 286, first_f, 0 );

-- ** 音 ** --
--顔カットイン
-- SE001 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);
-- setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--入り
SE002 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 98, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 46 );

--気ダメ
SE003 = playSeVer2( spep_0 + 32, 1035, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 126, 1035, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 46, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE004, 79 );
SE005 = playSeVer2( spep_0 + 70, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE005, 79 );
SE006 = playSeVer2( spep_0 + 94, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE006, 40 );
SE007 = playSeVer2( spep_0 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE007, 40 );
SE009 = playSeVer2( spep_0 + 138, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE009, 40 );
SE010 = playSeVer2( spep_0 + 162, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE010, 79 );

--ベジータ向かってくる
SE011 = playSeVer2( spep_0 + 182, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE011, 75 );
SE012 = playSeVer2( spep_0 + 182, 1182, "",spep_0 + 246, 0, 18, -1);
SE013 = playSeVer2( spep_0 + 186, 9, "",spep_0 + 246, 0, 18, -1);
SE014 = playSeVer2( spep_0 + 186, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE014, 41 );

--悟空向かってくる
SE015 = playSeVer2( spep_0 + 240, 1223, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE015, 87 );
setStartTimeMs( SE015,  417 );
setPitch( spep_0 + 240, SE015, 100 );
setTimeStretch( SE015, 1.07, 30, 4 );
SE016 = playSeVer2( spep_0 + 232, 1182, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 236, 9, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 236, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE018, 41 );
setPitch( spep_0 + 236, SE018, 200 );
setTimeStretch( SE018, 1.13, 30, 4 );

--飛行中
SE019 = playSeVer2( spep_0 + 280, 1019, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 280, 1278, "",spep_0 + 444, 0, 86, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 286 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 286;


------------------------------------------------------
-- 孫悟空とベジータが敵にぶつかって、最後二人が波で攻撃(462F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
dash_f = entryEffectLife( spep_1 + 0, SP_02, 461, 0x100, -1, 0, 0, 0 );  --孫悟空とベジータが敵にぶつかって、最後二人が波で攻撃  ef_002
setEffMoveKey( spep_1 + 0, dash_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 461, dash_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, dash_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 461, dash_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash_f, 0 );
setEffRotateKey( spep_1 + 461, dash_f, 0 );
setEffAlphaKey( spep_1 + 0, dash_f, 255 );
setEffAlphaKey( spep_1 + 461 -1, dash_f, 255 );
setEffAlphaKey( spep_1 + 461, dash_f, 0 );

dash_b = entryEffectLife( spep_1 + 0, SP_03, 461, 0x80, -1, 0, 0, 0 );  --孫悟空とベジータが敵にぶつかって、最後二人が波で攻撃  ef_003
setEffMoveKey( spep_1 + 0, dash_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 461, dash_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, dash_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 461, dash_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash_b, 0 );
setEffRotateKey( spep_1 + 461, dash_b, 0 );
setEffAlphaKey( spep_1 + 0, dash_b, 255 );
setEffAlphaKey( spep_1 + 461 -1, dash_b, 255 );
setEffAlphaKey( spep_1 + 461, dash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 100, 1, 1 );
setDisp( spep_1 -3 + 128, 1, 0 );
changeAnime( spep_1 -3 + 100, 1, 116 );

setMoveKey( spep_1 -3 + 100, 1, -2.2, -133.1 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -2.2, -133 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -2.3, -133 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -2.4, -133.2 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -2.5, -133.4 , 0 );
setMoveKey( spep_1 -3 + 110, 1, -2.6, -133.9 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -2.6, -134.5 , 0 );
setMoveKey( spep_1 -3 + 114, 1, -2.7, -135.2 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -2.8, -136 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -2.9, -137 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -3, -138.2 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -3.1, -139.4 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -3.2, -140.8 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -3.3, -142.4 , 0 );
setMoveKey( spep_1 -3 + 128, 1, -3.3, -142.4 , 0 );

setScaleKey( spep_1 -3 + 100, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 102, 1, 0.55, 0.55 );
setScaleKey( spep_1 -3 + 104, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 106, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 108, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 110, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 112, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 114, 1, 0.9, 0.9 );
setScaleKey( spep_1 -3 + 116, 1, 0.97, 0.97 );
setScaleKey( spep_1 -3 + 118, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 120, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 122, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 124, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 126, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 128, 1, 1.32, 1.32 );

setRotateKey( spep_1 -3 + 100, 1, 0 );
setRotateKey( spep_1 -3 + 128, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 148, 1, 1 );
setDisp( spep_1 -3 + 190, 1, 0 );
changeAnime( spep_1 -3 + 148, 1, 103 );

setMoveKey( spep_1 -3 + 148, 1, 151.8, -73 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 151.8, -73 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 144.3, -73 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 144.3, -73 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 136.7, -73 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 136.7, -73 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 129.3, -73 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 129.3, -73 , 0 );

setScaleKey( spep_1 -3 + 148, 1, 1.75, 1.75 );

setRotateKey( spep_1 -3 + 148, 1, -0 );

-- ** 音 ** --
--飛行中
SE021 = playSeVer2( spep_1 + 50, 1019, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 114, 1019, "", 0, 0, 0, -1);   

--加速１
SE022 = playSeVer2( spep_1 + 68, 1116, "",spep_1 + 116, 0, 22, -1);
SE023 = playSeVer2( spep_1 + 68, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 68, SE023, 74 );
SE024 = playSeVer2( spep_1 + 68, 1343, "",spep_1 + 152, 0, 20, -1);

--加速２
SE026 = playSeVer2( spep_1 + 126, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 126, SE026, 126 );
SE027 = playSeVer2( spep_1 + 126, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 126, SE027, 79 );

--敵ヒット
SE028 = playSeVer2( spep_1 + 182, 1159, "",spep_1 + 342, 0, 30, -1);
SE029 = playSeVer2( spep_1 + 182, 1114, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 192, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 462 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 170 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 12, SE024, 0);
    stopSe( SP_dodge - 12, SE025, 0);
    stopSe( SP_dodge - 12, SE026, 0);
    stopSe( SP_dodge - 12, SE027, 0);
    stopSe( SP_dodge - 12, SE028, 0);
    stopSe( SP_dodge - 12, SE029, 0);
    stopSe( SP_dodge - 12, SE030, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -129.3, -73 , 0 );
    setMoveKey( SP_dodge + 2, 1, -121.8, -73 , 0 );
    setMoveKey( SP_dodge + 4, 1, -121.8, -73 , 0 );
    setMoveKey( SP_dodge + 6, 1, -114.3, -73 , 0 );
    setMoveKey( SP_dodge + 8, 1, -114.3, -73 , 0 );
    setMoveKey( SP_dodge + 10, 1, -116.6, -75.3 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.75, 1.75 );
    setScaleKey( SP_dodge + 10, 1, 1.75, 1.75 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

setMoveKey( spep_1 -3 + 174, 1, 121.8, -73 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 121.8, -73 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 114.3, -73 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 114.3, -73 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 116.6, -75.3 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 106, -72.3 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 111.9, -78.2 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 111.9, -78.2 , 0 );

setScaleKey( spep_1 -3 + 190, 1, 1.75, 1.75 );

setRotateKey( spep_1 -3 + 190, 1, -0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 252, 1, 1 );
setDisp( spep_1 -3 + 312, 1, 0 );
changeAnime( spep_1 -3 + 252, 1, 5 );

setMoveKey( spep_1 -3 + 252, 1, -8.1, 117.6 , 0 );
setMoveKey( spep_1 -3 + 254, 1, -8.1, 117.6 , 0 );
setMoveKey( spep_1 -3 + 256, 1, -7.9, 117.7 , 0 );
setMoveKey( spep_1 -3 + 258, 1, -7.8, 117.8 , 0 );
setMoveKey( spep_1 -3 + 260, 1, -7.8, 117.8 , 0 );
setMoveKey( spep_1 -3 + 262, 1, -7.6, 117.9 , 0 );
setMoveKey( spep_1 -3 + 264, 1, -7.5, 118 , 0 );
setMoveKey( spep_1 -3 + 266, 1, -7.4, 118 , 0 );
setMoveKey( spep_1 -3 + 268, 1, -7.4, 118.1 , 0 );
setMoveKey( spep_1 -3 + 270, 1, -7.2, 118.2 , 0 );
setMoveKey( spep_1 -3 + 272, 1, -7.1, 118.2 , 0 );
setMoveKey( spep_1 -3 + 274, 1, -7.1, 118.3 , 0 );
setMoveKey( spep_1 -3 + 276, 1, -6.9, 118.4 , 0 );
setMoveKey( spep_1 -3 + 278, 1, -6.8, 118.4 , 0 );
setMoveKey( spep_1 -3 + 280, 1, -6.7, 118.5 , 0 );
setMoveKey( spep_1 -3 + 282, 1, -6.7, 118.6 , 0 );
setMoveKey( spep_1 -3 + 284, 1, -6.5, 118.6 , 0 );
setMoveKey( spep_1 -3 + 286, 1, -6.4, 118.7 , 0 );
setMoveKey( spep_1 -3 + 288, 1, -6.3, 118.8 , 0 );
setMoveKey( spep_1 -3 + 290, 1, -6.3, 118.9 , 0 );
setMoveKey( spep_1 -3 + 292, 1, -6.1, 118.9 , 0 );
setMoveKey( spep_1 -3 + 294, 1, -6, 119 , 0 );
setMoveKey( spep_1 -3 + 296, 1, -6, 119.1 , 0 );
setMoveKey( spep_1 -3 + 298, 1, -5.8, 119.1 , 0 );
setMoveKey( spep_1 -3 + 300, 1, -5.7, 119.2 , 0 );
setMoveKey( spep_1 -3 + 302, 1, -5.6, 119.3 , 0 );
setMoveKey( spep_1 -3 + 304, 1, -5.6, 119.4 , 0 );
setMoveKey( spep_1 -3 + 306, 1, -5.4, 119.4 , 0 );
setMoveKey( spep_1 -3 + 308, 1, -5.3, 119.5 , 0 );
setMoveKey( spep_1 -3 + 310, 1, -5.3, 119.6 , 0 );
setMoveKey( spep_1 -3 + 312, 1, -5.3, 119.6 , 0 );

setScaleKey( spep_1 -3 + 252, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 312, 1, 1.56, 1.56 );

setRotateKey( spep_1 -3 + 252, 1, 27.1 );
setRotateKey( spep_1 -3 + 254, 1, 27.1 );
setRotateKey( spep_1 -3 + 256, 1, 27.4 );
setRotateKey( spep_1 -3 + 258, 1, 27.7 );
setRotateKey( spep_1 -3 + 260, 1, 27.9 );
setRotateKey( spep_1 -3 + 262, 1, 28.2 );
setRotateKey( spep_1 -3 + 264, 1, 28.5 );
setRotateKey( spep_1 -3 + 266, 1, 28.8 );
setRotateKey( spep_1 -3 + 268, 1, 29 );
setRotateKey( spep_1 -3 + 270, 1, 29.3 );
setRotateKey( spep_1 -3 + 272, 1, 29.6 );
setRotateKey( spep_1 -3 + 274, 1, 29.9 );
setRotateKey( spep_1 -3 + 276, 1, 30.2 );
setRotateKey( spep_1 -3 + 278, 1, 30.4 );
setRotateKey( spep_1 -3 + 280, 1, 30.7 );
setRotateKey( spep_1 -3 + 282, 1, 31 );
setRotateKey( spep_1 -3 + 284, 1, 31.3 );
setRotateKey( spep_1 -3 + 286, 1, 31.5 );
setRotateKey( spep_1 -3 + 288, 1, 31.8 );
setRotateKey( spep_1 -3 + 290, 1, 32.1 );
setRotateKey( spep_1 -3 + 292, 1, 32.4 );
setRotateKey( spep_1 -3 + 294, 1, 32.7 );
setRotateKey( spep_1 -3 + 296, 1, 32.9 );
setRotateKey( spep_1 -3 + 298, 1, 33.2 );
setRotateKey( spep_1 -3 + 300, 1, 33.5 );
setRotateKey( spep_1 -3 + 302, 1, 33.8 );
setRotateKey( spep_1 -3 + 304, 1, 34 );
setRotateKey( spep_1 -3 + 306, 1, 34.3 );
setRotateKey( spep_1 -3 + 308, 1, 34.6 );
setRotateKey( spep_1 -3 + 310, 1, 34.9 );
setRotateKey( spep_1 -3 + 312, 1, 34.9 );

-- ** 音 ** --
--敵ヒット
SE031 = playSeVer2( spep_1 + 216, 1067, "", 0, 0, 0, -1);

--転びながら着地
SE032 = playSeVer2( spep_1 + 312, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 312, SE032, 204 );
SE033 = playSeVer2( spep_1 + 318, 1007, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_1 + 318, 1332, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_1 + 322, 1333, "",spep_1 + 378, 0, 10, -1);
SE037 = playSeVer2( spep_1 + 326, 1012, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_1 + 338, 1331, "",spep_1 + 394, 0, 6, -1);
SE039 = playSeVer2( spep_1 + 344, 1013, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_1 + 356, 1007, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 384, 1192, "",spep_1 + 412, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 384, SE041, 188 );
SE042 = playSeVer2( spep_1 + 384, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 384, SE042, 158 );

--環境音
SE035 = playSeVer2( spep_1 + 318, 1269, "",spep_1 + 472 -1, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 318, SE035, 26 );

--気弾発射
SE043 = playSeVer2( spep_1 + 436, 1027, "",spep_1 + 472 -1, 0, 10, -1);
SE044 = playSeVer2( spep_1 + 436, 1145, "",spep_1 + 472 -1, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 436, SE044, 74 );
SE045 = playSeVer2( spep_1 + 436, 1109, "",spep_1 + 472 -1, 0, 10, -1);

-- ** 次の準備 ** --
spep_c = spep_1 + 461;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_c + 0, SE_05 );

--気弾飲み込まれ中
SE047 = playSeVer2( spep_c + 88, 1258, "",spep_c + 164, 0, 22, -1);
setSeVolumeByWorkId( spep_c + 88, SE047, 81 );
SE048 = playSeVer2( spep_c + 88, 1304, "",spep_c + 178, 0, 36, -1);
setSeVolumeByWorkId( spep_c + 88, SE048, 77 );
setPitch( spep_c + 88, SE048, 400 );
setTimeStretch( SE048, 1.27, 30, 4 );
SE049 = playSeVer2( spep_c + 92, 1213, "",spep_c + 178, 0, 36, -1);
setSeVolumeByWorkId( spep_c + 92, SE049, 48 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_c + 94;

------------------------------------------------------
-- 敵が飛ばされて、ベジータの連波攻撃と孫悟空のかめはめは攻撃 (254F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_3 + 0, SP_04r, 254, 0x100, -1, 0, 0, 0 );  --敵が飛ばされて、ベジータの連波攻撃と孫悟空のかめはめは攻撃   ef_004
setEffMoveKey( spep_3 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 254, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 254, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_f, 0 );
setEffRotateKey( spep_3 + 254, attack_f, 0 );
setEffAlphaKey( spep_3 + 0, attack_f, 255 );
setEffAlphaKey( spep_3 + 254 -1, attack_f, 255 );
setEffAlphaKey( spep_3 + 254, attack_f, 0 );

attack_b = entryEffectLife( spep_3 + 0, SP_05r, 254, 0x80, -1, 0, 0, 0 );  --敵が飛ばされて、ベジータの連波攻撃と孫悟空のかめはめは攻撃   ef_005
setEffMoveKey( spep_3 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 254, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 254, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_b, 0 );
setEffRotateKey( spep_3 + 254, attack_b, 0 );
setEffAlphaKey( spep_3 + 0, attack_b, 255 );
setEffAlphaKey( spep_3 + 254 -1, attack_b, 255 );
setEffAlphaKey( spep_3 + 254, attack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 54, 1, 0 );
changeAnime( spep_3 + 0, 1, 108 );

setMoveKey( spep_3 + 0, 1, -1, 7.3 , 0 );
setMoveKey( spep_3 + 1, 1, 11.2, 27.3 , 0 );
setMoveKey( spep_3 + 2, 1, -12.5, -0.7 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 3.7, 27.3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 35.9, -0.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 36.2, 15.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 20.4, 1.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 8.7, 15.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 38.9, 1.3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 41.1, 23.3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 49.4, 27.3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 25.6, -0.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 41.9, 27.3 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 74.1, -0.7 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 74.3, 15.3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 58.6, 1.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 46.8, 15.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 79.1, 27.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 55.3, -0.7 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 71.5, 27.3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 103.8, -0.7 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 104, 15.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 88.3, 1.3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 76.5, 15.3 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 106.7, 1.3 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 109, 23.3 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 109.2, 7.3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 109.2, 7.3 , 0 );

setScaleKey( spep_3 + 0, 1, 4.39, 4.39 );
setScaleKey( spep_3 -3 + 54, 1, 4.39, 4.39 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 54, 1, 0 );

-- ** 音 ** --
--ベジータ連続気弾
SE050 = playSeVer2( spep_3 + 44, 1357, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_3 + 50, 1016, "",spep_3 + 66, 0, 8, -1);
SE052 = playSeVer2( spep_3 + 56, 1016, "",spep_3 + 72, 0, 8, -1);
SE053 = playSeVer2( spep_3 + 64, 1016, "",spep_3 + 80, 0, 8, -1);
SE054 = playSeVer2( spep_3 + 70, 1016, "",spep_3 + 86, 0, 10, -1);
SE055 = playSeVer2( spep_3 + 76, 1016, "",spep_3 + 92, 0, 8, -1);
SE056 = playSeVer2( spep_3 + 82, 1016, "",spep_3 + 98, 0, 8, -1);
SE057 = playSeVer2( spep_3 + 90, 1016, "",spep_3 + 104, 0, 8, -1);
SE058 = playSeVer2( spep_3 + 98, 1016, "",spep_3 + 114, 0, 8, -1);
SE059 = playSeVer2( spep_3 + 106, 1016, "",spep_3 + 120, 0, 8, -1);
SE061 = playSeVer2( spep_3 + 112, 1016, "",spep_3 + 128, 0, 8, -1);
SE062 = playSeVer2( spep_3 + 118, 1016, "",spep_3 + 136, 0, 10, -1);
SE063 = playSeVer2( spep_3 + 126, 1016, "",spep_3 + 144, 0, 8, -1);
SE064 = playSeVer2( spep_3 + 140, 1357, "",spep_3 + 222, 14, 20, -1);
setSeVolumeByWorkId( spep_3 + 140, SE064, 55 );
setStartTimeMs( SE064,  217 );
SE065 = playSeVer2( spep_3 + 136, 1016, "",spep_3 + 152, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 136, SE065, 50 );
SE067 = playSeVer2( spep_3 + 144, 1016, "",spep_3 + 158, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 144, SE067, 50 );
SE068 = playSeVer2( spep_3 + 150, 1016, "",spep_3 + 166, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 150, SE068, 50 );
SE069 = playSeVer2( spep_3 + 156, 1016, "",spep_3 + 172, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 156, SE069, 50 );
SE070 = playSeVer2( spep_3 + 166, 1016, "",spep_3 + 180, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 166, SE070, 50 );
SE071 = playSeVer2( spep_3 + 174, 1016, "",spep_3 + 190, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 174, SE071, 50 );
SE072 = playSeVer2( spep_3 + 182, 1016, "",spep_3 + 196, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 182, SE072, 50 );
SE073 = playSeVer2( spep_3 + 188, 1016, "",spep_3 + 204, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 188, SE073, 50 );
SE074 = playSeVer2( spep_3 + 194, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 194, SE074, 50 );

--画面遷移
SE060 = playSeVer2( spep_3 + 106, 1072, "", 0, 0, 0, -1);

--悟空力む
SE066 = playSeVer2( spep_3 + 142, 1330, "",spep_3 + 206, 0, 36, -1);
setSeVolumeByWorkId( spep_3 + 142, SE066, 46 );

--かめはめ波発射
SE075 = playSeVer2( spep_3 + 206, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 206, SE075, 72 );
SE076 = playSeVer2( spep_3 + 206, 1146, "", 0, 0, 0, -1);
SE077 = playSeVer2( spep_3 + 206, 1133, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 206, SE077, 76 );

--連続気弾飛んでいく
SE078 = playSeVer2( spep_3 + 240, 1284, "", 0, 0, 0, -1);
SE079 = playSeVer2( spep_3 + 246, 1357, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 254 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 254;


------------------------------------------------------
-- フィニッシュ(356F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_06r, 0x100, -1, 0, 0, 0 );  --フィニッシュ  ef_006
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 356, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 356, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 356, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 356, finish_f, 255 );

-- ** 音 ** --
--連続気弾飛んでいく
SE080 = playSeVer2( spep_4 + 0, 1016, "",spep_4 + 16, 0, 8, -1);
SE081 = playSeVer2( spep_4 + 8, 1016, "",spep_4 + 22, 0, 6, -1);
SE082 = playSeVer2( spep_4 + 12, 1016, "",spep_4 + 28, 0, 8, -1);
SE083 = playSeVer2( spep_4 + 18, 1016, "",spep_4 + 34, 0, 8, -1);
SE084 = playSeVer2( spep_4 + 26, 1016, "",spep_4 + 42, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 26, SE084, 79 );
SE085 = playSeVer2( spep_4 + 32, 1016, "",spep_4 + 50, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 32, SE085, 83 );
SE086 = playSeVer2( spep_4 + 38, 1016, "",spep_4 + 56, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 38, SE086, 85 );
SE087 = playSeVer2( spep_4 + 44, 1016, "",spep_4 + 60, 0, 8, -1);
SE088 = playSeVer2( spep_4 + 52, 1016, "",spep_4 + 68, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 52, SE088, 87 );
SE089 = playSeVer2( spep_4 + 58, 1016, "",spep_4 + 74, 0, 6, -1);
SE090 = playSeVer2( spep_4 + 64, 1016, "",spep_4 + 80, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 64, SE090, 72 );
SE091 = playSeVer2( spep_4 + 70, 1016, "",spep_4 + 86, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 70, SE091, 97 );
SE092 = playSeVer2( spep_4 + 78, 1016, "",spep_4 + 94, 0, 8, -1);
SE093 = playSeVer2( spep_4 + 84, 1016, "",spep_4 + 102, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 84, SE093, 76 );
SE094 = playSeVer2( spep_4 + 92, 1016, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 356 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_4 + 0 );
endPhase( spep_4 + 98 );

end