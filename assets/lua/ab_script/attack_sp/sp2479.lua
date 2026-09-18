--1025560:アルティメット悟飯_超必殺技：超かめはめ波
--sp_effect_a1_00388
--sp2478

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
SP_01 = 161215; --飛んでくる〜気溜め ef_001a
SP_02 = 161217; --飛んでくる〜気溜め ef_001b
SP_03 = 161219; --基地〜かめはめ波ヒット後爆発 ef_002a
SP_04 = 161221; --基地〜かめはめ波ヒット後爆発 ef_002b

--敵側
SP_01r = 161216; --飛んでくる〜気溜め ef_001a_r
SP_02r = 161218; --飛んでくる〜気溜め ef_001b_r
SP_03r = 161220; --基地〜かめはめ波ヒット後爆発 ef_002a_r
SP_04r = 161222; --基地〜かめはめ波ヒット後爆発 ef_002b_r

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

ENABLE_AUTO_TIME_STRETCH(0.8);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 飛んでくる〜気溜め(540F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 524, 0x100, -1, 0, 0, 0 );  --飛んでくる〜気溜め   ef_001a
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 524, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 524, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 524, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 524 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 524 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 524, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 524, 0x80, -1, 0, 0, 0 );  --飛んでくる〜気溜め    ef_001b
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 524, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 524, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 524, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 524 -2, first_b, 255 );
setEffAlphaKey( spep_0 + 524 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 524, first_b, 0 );

spep_x = spep_0 + 440;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 45, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 126, 0, 10, -1);
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);

--加速する
SE004 = playSeVer2( spep_0 + 36, 1068, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 36, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE005, 114 );
SE006 = playSeVer2( spep_0 + 36, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE006, 61 );
setTimeStretch( SE006, 1.24, 30, 4 );
SE007 = playSeVer2( spep_0 + 36, 1259, "", 0, 0, 0, 0.6);
setPitch( spep_0 + 36, SE007, 100 );
setTimeStretch( SE007, 1.07, 30, 4 );

--向かってくる
SE008 = playSeVer2( spep_0 + 64, 1019, "",spep_0 + 126, 0, 10, -1);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 84 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
   
    pauseAll( SP_dodge, 67);
    
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

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 -3 + 100, 1, 1 );
setDisp( spep_0 -3 + 270, 1, 0 );
changeAnime( spep_0 -3 + 100, 1, 118 );
changeAnime( spep_0 -3 + 120, 1, 106 );
changeAnime( spep_0 -3 + 126, 1, 5 );
changeAnime( spep_0 -3 + 142, 1, 105 );
changeAnime( spep_0 -3 + 166, 1, 6 );
changeAnime( spep_0 -3 + 188, 1, 108 );
changeAnime( spep_0 -3 + 226, 1, 105 );
changeAnime( spep_0 -3 + 230, 1, 5 );

setMoveKey( spep_0 -3 + 100, 1, 699.6, -200.2 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 616.8, -177.8 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 534.1, -155.4 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 451.4, -132.9 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 337.3, -110.5 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 256, -88.1 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 256, -88.1 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 216, -88.1 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 216, -88.1 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 166, -28.1 , 0 );
setMoveKey( spep_0 -3 + 119, 1, 166, -28.1 , 0 );--
setMoveKey( spep_0 -3 + 120, 1, 252.7, 8.6 , 0 );
setMoveKey( spep_0 -3 + 121, 1, 252.7, 8.6 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 252.7, 8.6 , 0 );
setMoveKey( spep_0 -3 + 123, 1, 252.7, 8.6 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 236.7, 3.6 , 0 );
setMoveKey( spep_0 -3 + 125, 1, 236.7, 3.6 , 0 );--
setMoveKey( spep_0 -3 + 126, 1, 235.7, -93.1 , 0 );
setMoveKey( spep_0 -3 + 127, 1, 235.7, -93.1 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 163.8, -109.1 , 0 );
setMoveKey( spep_0 -3 + 129, 1, 163.8, -109.1 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 33.9, 30.9 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 33.9, 30.9 , 0 );
setMoveKey( spep_0 -3 + 134, 1, -72, 128.6 , 0 );
setMoveKey( spep_0 -3 + 136, 1, -89.8, 145.2 , 0 );
setMoveKey( spep_0 -3 + 138, 1, -96.4, 151.3 , 0 );
setMoveKey( spep_0 -3 + 140, 1, -97.9, 152.7 , 0 );
setMoveKey( spep_0 -3 + 141, 1, -97.9, 152.7 , 0 );--
setMoveKey( spep_0 -3 + 142, 1, -98, 152.7 , 0 );
setMoveKey( spep_0 -3 + 144, 1, -94, 144.7 , 0 );
setMoveKey( spep_0 -3 + 146, 1, -93.1, 136.9 , 0 );
setMoveKey( spep_0 -3 + 148, 1, -92.2, 129.1 , 0 );
setMoveKey( spep_0 -3 + 150, 1, -91.3, 121.3 , 0 );
setMoveKey( spep_0 -3 + 152, 1, -92.4, 117.1 , 0 );
setMoveKey( spep_0 -3 + 154, 1, -94.1, 110.2 , 0 );
setMoveKey( spep_0 -3 + 156, 1, -97.1, 98.4 , 0 );
setMoveKey( spep_0 -3 + 158, 1, -102.2, 78.4 , 0 );
setMoveKey( spep_0 -3 + 160, 1, -110.3, 47 , 0 );
setMoveKey( spep_0 -3 + 162, 1, -121.2, 4.4 , 0 );
setMoveKey( spep_0 -3 + 164, 1, -133.6, -45.7 , 0 );
setMoveKey( spep_0 -3 + 165, 1, -133.6, -45.7 , 0 );--
setMoveKey( spep_0 -3 + 166, 1, -164.4, 106.9 , 0 );
setMoveKey( spep_0 -3 + 167, 1, -164.4, 106.9 , 0 );
setMoveKey( spep_0 -3 + 168, 1, -130.4, 131.9 , 0 );
setMoveKey( spep_0 -3 + 169, 1, -130.4, 131.9 , 0 );
setMoveKey( spep_0 -3 + 170, 1, -105.1, 260.9 , 0 );
setMoveKey( spep_0 -3 + 172, 1, -105.1, 260.9 , 0 );
setMoveKey( spep_0 -3 + 174, 1, -62.1, 259.9 , 0 );
setMoveKey( spep_0 -3 + 176, 1, -22.1, 259.9 , 0 );
setMoveKey( spep_0 -3 + 178, 1, -28.1, 267.9 , 0 );
setMoveKey( spep_0 -3 + 180, 1, -18.1, 278.9 , 0 );
setMoveKey( spep_0 -3 + 182, 1, -18.1, 278.9 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 31.9, 273.9 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 37.9, 263.9 , 0 );
setMoveKey( spep_0 -3 + 187, 1, 37.9, 263.9 , 0 );--
setMoveKey( spep_0 -3 + 188, 1, 77.1, 243.8 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 97.1, 240.8 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 97.1, 240.8 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 108.9, 229.5 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 108.9, 229.2 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 108.8, 228 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 108.7, 226.1 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 108.7, 226.1 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 108.3, 215.3 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 108.3, 215.3 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 107.8, 203.2 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 107.8, 203.2 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 107.1, 186 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 107.1, 186 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 106.1, 161.2 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 106.1, 161.2 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 101.9, 58.5 , 0 );
setMoveKey( spep_0 -3 + 225, 1, 101.9, 58.5 , 0 );--
setMoveKey( spep_0 -3 + 226, 1, 14.3, 26.7 , 0 );
setMoveKey( spep_0 -3 + 227, 1, 14.3, 26.7 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 32.3, 32.7 , 0 );
setMoveKey( spep_0 -3 + 229, 1, 32.3, 32.7 , 0 );--
setMoveKey( spep_0 -3 + 230, 1, 23.1, 104 , 0 );
setMoveKey( spep_0 -3 + 231, 1, 23.1, 104 , 0 );--
setMoveKey( spep_0 -3 + 232, 1, 70.5, 109 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 116.2, 104.6 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 111.9, 83.6 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 94.6, 78.3 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 83.2, 100.8 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 104.4, 113.1 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 92.4, 125.3 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 91.6, 107.5 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 106.8, 93.6 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 125.6, 95.7 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 132.2, 113.7 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 114.7, 113.8 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 116.4, 112.7 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 117.5, 114.3 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 116.3, 113.6 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 118.2, 114.2 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 116.1, 116.7 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 118.9, 112 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 118.9, 110.6 , 0 );

setScaleKey( spep_0 -3 + 100, 1, 2.88, 2.88 );
setScaleKey( spep_0 -3 + 102, 1, 2.77, 2.77 );
setScaleKey( spep_0 -3 + 104, 1, 2.66, 2.66 );
setScaleKey( spep_0 -3 + 106, 1, 2.56, 2.56 );
setScaleKey( spep_0 -3 + 108, 1, 2.45, 2.45 );
setScaleKey( spep_0 -3 + 110, 1, 2.34, 2.34 );
setScaleKey( spep_0 -3 + 119, 1, 2.34, 2.34 );--
setScaleKey( spep_0 -3 + 120, 1, 2.1, 2.1 );
setScaleKey( spep_0 -3 + 126, 1, 2.1, 2.1 );
setScaleKey( spep_0 -3 + 127, 1, 2.1, 2.1 );

a1 = 0.2;
setScaleKey( spep_0 -3 + 128, 1, 1.78 +a1, 1.78 +a1 );
setScaleKey( spep_0 -3 + 129, 1, 1.78 +a1, 1.78 +a1 );
setScaleKey( spep_0 -3 + 130, 1, 1.51 +a1, 1.51 +a1 );
setScaleKey( spep_0 -3 + 132, 1, 1.51 +a1, 1.51 +a1 );
setScaleKey( spep_0 -3 + 134, 1, 1.32 +a1, 1.32 +a1 );
setScaleKey( spep_0 -3 + 136, 1, 1.29 +a1, 1.29 +a1 );
setScaleKey( spep_0 -3 + 138, 1, 1.28 +a1, 1.28 +a1 );
setScaleKey( spep_0 -3 + 140, 1, 1.28 +a1, 1.28 +a1 );
setScaleKey( spep_0 -3 + 141, 1, 1.28 +a1, 1.28 +a1 );--
setScaleKey( spep_0 -3 + 142, 1, 1.28 +a1, 1.28 +a1 );
setScaleKey( spep_0 -3 + 144, 1, 1.28 +a1, 1.28 +a1 );
setScaleKey( spep_0 -3 + 146, 1, 1.25 +a1, 1.25 +a1 );
setScaleKey( spep_0 -3 + 148, 1, 1.22 +a1, 1.22 +a1 );
setScaleKey( spep_0 -3 + 150, 1, 1.19 +a1, 1.19 +a1 );
setScaleKey( spep_0 -3 + 152, 1, 1.21 +a1, 1.21 +a1 );
setScaleKey( spep_0 -3 + 154, 1, 1.23 +a1, 1.23 +a1 );
setScaleKey( spep_0 -3 + 156, 1, 1.28 +a1, 1.28 +a1 );
setScaleKey( spep_0 -3 + 158, 1, 1.36 +a1, 1.36 +a1 );
setScaleKey( spep_0 -3 + 160, 1, 1.48 +a1, 1.48 +a1 );
setScaleKey( spep_0 -3 + 162, 1, 1.64 +a1, 1.64 +a1 );
setScaleKey( spep_0 -3 + 164, 1, 1.84 +a1, 1.84 +a1 );
setScaleKey( spep_0 -3 + 165, 1, 1.84 +a1, 1.84 +a1 );--
setScaleKey( spep_0 -3 + 166, 1, 3.12, 3.12 );
setScaleKey( spep_0 -3 + 169, 1, 3.12, 3.12 );
setScaleKey( spep_0 -3 + 170, 1, 1.9459999999999997, 1.9459999999999997 );
setScaleKey( spep_0 -3 + 188, 1, 1.9459999999999997, 1.9459999999999997 );
setScaleKey( spep_0 -3 + 225, 1, 1.9459999999999997, 1.9459999999999997 );--
setScaleKey( spep_0 -3 + 226, 1, 1.59, 1.59 );
setScaleKey( spep_0 -3 + 229, 1, 1.59, 1.59 );--
setScaleKey( spep_0 -3 + 230, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 231, 1, 0.67, 0.67 );--
setScaleKey( spep_0 -3 + 232, 1, 0.39, 0.39 );
setScaleKey( spep_0 -3 + 234, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 236, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 238, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 240, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 242, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 244, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 246, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 248, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 252, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 254, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 258, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 260, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 270, 1, 0.11, 0.11 );

setRotateKey( spep_0 -3 + 100, 1, 0 );
setRotateKey( spep_0 -3 + 119, 1, 0 );--
setRotateKey( spep_0 -3 + 120, 1, 7.5 );
setRotateKey( spep_0 -3 + 125, 1, 7.5 );--
setRotateKey( spep_0 -3 + 126, 1, 17.5 );
setRotateKey( spep_0 -3 + 132, 1, 17.5 );
setRotateKey( spep_0 -3 + 134, 1, -3.7 );
setRotateKey( spep_0 -3 + 136, 1, -7.3 );
setRotateKey( spep_0 -3 + 138, 1, -8.6 );
setRotateKey( spep_0 -3 + 140, 1, -8.9 );
setRotateKey( spep_0 -3 + 141, 1, -8.9 );--
setRotateKey( spep_0 -3 + 142, 1, -8.9 );
setRotateKey( spep_0 -3 + 144, 1, -17.4 );
setRotateKey( spep_0 -3 + 146, 1, -24 );
setRotateKey( spep_0 -3 + 148, 1, -30.5 );
setRotateKey( spep_0 -3 + 150, 1, -37 );
setRotateKey( spep_0 -3 + 152, 1, -36.9 );
setRotateKey( spep_0 -3 + 154, 1, -36.8 );
setRotateKey( spep_0 -3 + 156, 1, -36.6 );
setRotateKey( spep_0 -3 + 158, 1, -36.3 );
setRotateKey( spep_0 -3 + 160, 1, -35.8 );
setRotateKey( spep_0 -3 + 162, 1, -35.2 );
setRotateKey( spep_0 -3 + 164, 1, -34.4 );
setRotateKey( spep_0 -3 + 165, 1, -34.4 );--
setRotateKey( spep_0 -3 + 166, 1, 45.2 );
setRotateKey( spep_0 -3 + 169, 1, 45.2 );
setRotateKey( spep_0 -3 + 170, 1, 58 );
setRotateKey( spep_0 -3 + 187, 1, 58 );--
setRotateKey( spep_0 -3 + 188, 1, -1.7 );
setRotateKey( spep_0 -3 + 225, 1, -1.7 );--
setRotateKey( spep_0 -3 + 226, 1, -50 );
setRotateKey( spep_0 -3 + 229, 1, -50 );--
setRotateKey( spep_0 -3 + 230, 1, 41 );
setRotateKey( spep_0 -3 + 231, 1, 41 );--
setRotateKey( spep_0 -3 + 232, 1, 45.4 );
setRotateKey( spep_0 -3 + 234, 1, 46.9 );
setRotateKey( spep_0 -3 + 236, 1, 47.8 );
setRotateKey( spep_0 -3 + 238, 1, 48.4 );
setRotateKey( spep_0 -3 + 240, 1, 48.8 );
setRotateKey( spep_0 -3 + 242, 1, 49.1 );
setRotateKey( spep_0 -3 + 244, 1, 49.3 );
setRotateKey( spep_0 -3 + 246, 1, 49.4 );
setRotateKey( spep_0 -3 + 248, 1, 49.5 );
setRotateKey( spep_0 -3 + 250, 1, 49.6 );
setRotateKey( spep_0 -3 + 252, 1, 49.6 );
setRotateKey( spep_0 -3 + 254, 1, 49.7 );
setRotateKey( spep_0 -3 + 256, 1, 49.7 );
setRotateKey( spep_0 -3 + 258, 1, 49.8 );
setRotateKey( spep_0 -3 + 260, 1, 49.8 );
setRotateKey( spep_0 -3 + 262, 1, 49.9 );
setRotateKey( spep_0 -3 + 270, 1, 49.9 );

-- ** 音 ** --
--蹴り
SE009 = playSeVer2( spep_0 + 102, 1004, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 110, 1187, "", 0, 0, 0, 0.6);
SE011 = playSeVer2( spep_0 + 110, 1359, "", 0, 0, 0, -1);

--アッパー
SE012 = playSeVer2( spep_0 + 152, 1359, "",spep_0 + 210, 0, 18, -1);
SE013 = playSeVer2( spep_0 + 152, 1009, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 154, 1000, "", 0, 0, 0, -1);

--画面遷移
SE015 = playSeVer2( spep_0 + 180, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE015, 79 );

--蹴り飛ばし
SE016 = playSeVer2( spep_0 + 206, 1003, "", 0, 0, 0, -1);
E017 = playSeVer2( spep_0 + 212, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 212, SE017, 89 );
E018 = playSeVer2( spep_0 + 214, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE018, 85 );

--右足構える
SE019 = playSeVer2( spep_0 + 274, 1192, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 276, 1301, "", 0, 0, 0, -1);

--構える
SE021 = playSeVer2( spep_0 + 312, 1300, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 312, SE021, 59 );

--気ダメ
SE022 = playSeVer2( spep_0 + 390, 1259, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 390, SE022, 143 );
setStartTimeMs( SE022,  867 );
SE023 = playSeVer2( spep_0 + 360, 1008, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE023, 50 );
SE024 = playSeVer2( spep_0 + 360, 1176, "",spep_0 + 552, 0, 12, -1);
setPitch( spep_0 + 360, SE024, -300 );
setTimeStretch( SE024, 0.8, 30, 4 );
SE025 = playSeVer2( spep_0 + 386, 1188, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE025, 50 );
setStartTimeMs( SE025,  150 );

--イナヅマ
SE026 = playSeVer2( spep_0 + 426, 1147, "",spep_0 + 552, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 426, SE026, 54 );
setPitch( spep_0 + 426, SE026, -400 );
setTimeStretch( SE026, 0.73, 30, 4 );

--顔カットイン
SE027 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気ダメアップ
SE028 = playSeVer2( spep_0 + 440, 1035, "",spep_0 + 552, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 440, SE028, 107 );
SE029 = playSeVer2( spep_0 + 440, 1024, "",spep_0 + 552, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 440, SE029, 81 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 524 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 524;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_1, SE_05);
	speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_1, SE_05);
	speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 基地〜かめはめ波ヒット後爆発(556F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --基地〜かめはめ波ヒット後爆発 ef_002a
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 556, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 556, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 556, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 556, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --基地〜かめはめ波ヒット後爆発 ef_002b
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 556, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 556, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 556, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 556, finish_b, 255 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 -3 + 384, 1, 1 );
setDisp( spep_2 -3 + 428, 1, 0 );
changeAnime( spep_2 -3 + 384, 1, 106 );

setMoveKey( spep_2 -3 + 384, 1, 84.1, 19.5 , 0 );
setMoveKey( spep_2 -3 + 386, 1, 100.3, 32.6 , 0 );
setMoveKey( spep_2 -3 + 388, 1, 112.9, 42.6 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 123.3, 50.8 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 132.1, 57.9 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 139.9, 62.3 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 146.8, 65.9 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 151.2, 76.9 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 158.8, 77.8 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 161.1, 79.1 , 0 );
setMoveKey( spep_2 -3 + 404, 1, 165.8, 80.9 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 169.5, 85.6 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 172.9, 89 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 174.4, 91.8 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 175.4, 95.3 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 177.3, 89.8 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 181.6, 98.3 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 178.6, 94 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 183.6, 98.2 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 184.3, 99.2 , 0 );
setMoveKey( spep_2 -3 + 424, 1, 188.3, 99.8 , 0 );
setMoveKey( spep_2 -3 + 426, 1, 186.3, 103.2 , 0 );
setMoveKey( spep_2 -3 + 428, 1, 186.3, 103.2 , 0 );

setScaleKey( spep_2 -3 + 384, 1, 0.73, 0.73 );
setScaleKey( spep_2 -3 + 386, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 388, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 390, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 392, 1, 0.51, 0.51 );
setScaleKey( spep_2 -3 + 394, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 396, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 398, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 400, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 402, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 404, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 406, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 408, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 410, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 412, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 414, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 416, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 418, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 420, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 422, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 424, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 428, 1, 0.27, 0.27 );

setRotateKey( spep_2 -3 + 384, 1, -39.2 );
setRotateKey( spep_2 -3 + 428, 1, -39.2 );

-- ** 音 ** --
--光出す
SE031 = playSeVer2( spep_2 + 4, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE031, 150 );
SE032 = playSeVer2( spep_2 + 4, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE032, 79 );
SE033 = playSeVer2( spep_2 + 4, 1179, "", 0, 0, 0, -1);

--光広がる
SE034 = playSeVer2( spep_2 + 30, 1017, "", 0, 0, 0, -1);

--光立ち上がる
SE035 = playSeVer2( spep_2 + 54, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE035, 65 );
SE036 = playSeVer2( spep_2 + 54, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE036, 74 );
SE037 = playSeVer2( spep_2 + 54, 1156, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE037, 85 );
SE038 = playSeVer2( spep_2 + 54, 1303, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE038, 59 );

--光広がる２
SE039 = playSeVer2( spep_2 + 86, 1116, "",spep_2 + 146, 0, 38, -1);

--画面遷移
SE040 = playSeVer2( spep_2 + 118, 8, "", 0, 0, 0, -1);

--オーラ
SE041 = playSeVer2( spep_2 + 126, 1176, "",spep_2 + 318, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 126, SE041, 74 );
setPitch( spep_2 + 126, SE041, -400 );
setTimeStretch( SE041, 0.73, 30, 4 );

--イナヅマ
SE042 = playSeVer2( spep_2 + 138, 1148, "", 0, 0, 0, -1);
setPitch( spep_2 + 138, SE042, -300 );
setTimeStretch( SE042, 0.8, 30, 4 );

--かめはめ波溜め
SE043 = playSeVer2( spep_2 + 154, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 154, SE043, 77 );
SE044 = playSeVer2( spep_2 + 154, 1210, "",spep_2 + 318, 0, 26, 0.6);

--かめはめ波溜めアップ
SE045 = playSeVer2( spep_2 + 212, 1356, "",spep_2 + 322, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 212, SE045, 104 );
SE046 = playSeVer2( spep_2 + 212, 1157, "",spep_2 + 322, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 212, SE046, 123 );

--かめはめ波発射
SE047 = playSeVer2( spep_2 + 284, 1146, "",spep_2 + 444, 0, 10, -1);
SE048 = playSeVer2( spep_2 + 284, 1284, "",spep_2 + 444, 0, 10, -1);
SE049 = playSeVer2( spep_2 + 284, 1223, "",spep_2 + 444, 0, 10, -1);

--かめはめ波横アップ
SE050 = playSeVer2( spep_2 + 322, 1068, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 322, 1258, "",spep_2 + 444, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 322, SE051, 66 );

--かめはめ波飛んでいく
SE052 = playSeVer2( spep_2 + 378, 1021, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 378, 1202, "",spep_2 + 444, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 378, SE053, 155 );

--爆発
SE054 = playSeVer2( spep_2 + 428, 1067, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 428, 1159, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 436, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 556 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 446 );
endPhase( spep_2 + 546 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 飛んでくる〜気溜め(540F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 524, 0x100, -1, 0, 0, 0 );  --飛んでくる〜気溜め   ef_001a
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 524, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 524, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 524, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 524 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 524 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 524, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02r, 524, 0x80, -1, 0, 0, 0 );  --飛んでくる〜気溜め    ef_001b
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 524, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 524, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 524, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 524 -2, first_b, 255 );
setEffAlphaKey( spep_0 + 524 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 524, first_b, 0 );

spep_x = spep_0 + 440;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 45, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 126, 0, 10, -1);
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);

--加速する
SE004 = playSeVer2( spep_0 + 36, 1068, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 36, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE005, 114 );
SE006 = playSeVer2( spep_0 + 36, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE006, 61 );
setTimeStretch( SE006, 1.24, 30, 4 );
SE007 = playSeVer2( spep_0 + 36, 1259, "", 0, 0, 0, 0.6);
setPitch( spep_0 + 36, SE007, 100 );
setTimeStretch( SE007, 1.07, 30, 4 );

--向かってくる
SE008 = playSeVer2( spep_0 + 64, 1019, "",spep_0 + 126, 0, 10, -1);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 84 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
   
    pauseAll( SP_dodge, 67);
    
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

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 -3 + 100, 1, 1 );
setDisp( spep_0 -3 + 270, 1, 0 );
changeAnime( spep_0 -3 + 100, 1, 118 );
changeAnime( spep_0 -3 + 120, 1, 106 );
changeAnime( spep_0 -3 + 126, 1, 5 );
changeAnime( spep_0 -3 + 142, 1, 105 );
changeAnime( spep_0 -3 + 166, 1, 6 );
changeAnime( spep_0 -3 + 188, 1, 108 );
changeAnime( spep_0 -3 + 226, 1, 105 );
changeAnime( spep_0 -3 + 230, 1, 5 );

setMoveKey( spep_0 -3 + 100, 1, 699.6, -200.2 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 616.8, -177.8 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 534.1, -155.4 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 451.4, -132.9 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 337.3, -110.5 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 256, -88.1 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 256, -88.1 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 216, -88.1 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 216, -88.1 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 166, -28.1 , 0 );
setMoveKey( spep_0 -3 + 119, 1, 166, -28.1 , 0 );--
setMoveKey( spep_0 -3 + 120, 1, 252.7, 8.6 , 0 );
setMoveKey( spep_0 -3 + 121, 1, 252.7, 8.6 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 252.7, 8.6 , 0 );
setMoveKey( spep_0 -3 + 123, 1, 252.7, 8.6 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 236.7, 3.6 , 0 );
setMoveKey( spep_0 -3 + 125, 1, 236.7, 3.6 , 0 );--
setMoveKey( spep_0 -3 + 126, 1, 235.7, -93.1 , 0 );
setMoveKey( spep_0 -3 + 127, 1, 235.7, -93.1 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 163.8, -109.1 , 0 );
setMoveKey( spep_0 -3 + 129, 1, 163.8, -109.1 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 33.9, 30.9 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 33.9, 30.9 , 0 );
setMoveKey( spep_0 -3 + 134, 1, -72, 128.6 , 0 );
setMoveKey( spep_0 -3 + 136, 1, -89.8, 145.2 , 0 );
setMoveKey( spep_0 -3 + 138, 1, -96.4, 151.3 , 0 );
setMoveKey( spep_0 -3 + 140, 1, -97.9, 152.7 , 0 );
setMoveKey( spep_0 -3 + 141, 1, -97.9, 152.7 , 0 );--
setMoveKey( spep_0 -3 + 142, 1, -98, 152.7 , 0 );
setMoveKey( spep_0 -3 + 144, 1, -94, 144.7 , 0 );
setMoveKey( spep_0 -3 + 146, 1, -93.1, 136.9 , 0 );
setMoveKey( spep_0 -3 + 148, 1, -92.2, 129.1 , 0 );
setMoveKey( spep_0 -3 + 150, 1, -91.3, 121.3 , 0 );
setMoveKey( spep_0 -3 + 152, 1, -92.4, 117.1 , 0 );
setMoveKey( spep_0 -3 + 154, 1, -94.1, 110.2 , 0 );
setMoveKey( spep_0 -3 + 156, 1, -97.1, 98.4 , 0 );
setMoveKey( spep_0 -3 + 158, 1, -102.2, 78.4 , 0 );
setMoveKey( spep_0 -3 + 160, 1, -110.3, 47 , 0 );
setMoveKey( spep_0 -3 + 162, 1, -121.2, 4.4 , 0 );
setMoveKey( spep_0 -3 + 164, 1, -133.6, -45.7 , 0 );
setMoveKey( spep_0 -3 + 165, 1, -133.6, -45.7 , 0 );--
setMoveKey( spep_0 -3 + 166, 1, -164.4, 106.9 , 0 );
setMoveKey( spep_0 -3 + 167, 1, -164.4, 106.9 , 0 );
setMoveKey( spep_0 -3 + 168, 1, -130.4, 131.9 , 0 );
setMoveKey( spep_0 -3 + 169, 1, -130.4, 131.9 , 0 );
setMoveKey( spep_0 -3 + 170, 1, -105.1, 260.9 , 0 );
setMoveKey( spep_0 -3 + 172, 1, -105.1, 260.9 , 0 );
setMoveKey( spep_0 -3 + 174, 1, -62.1, 259.9 , 0 );
setMoveKey( spep_0 -3 + 176, 1, -22.1, 259.9 , 0 );
setMoveKey( spep_0 -3 + 178, 1, -28.1, 267.9 , 0 );
setMoveKey( spep_0 -3 + 180, 1, -18.1, 278.9 , 0 );
setMoveKey( spep_0 -3 + 182, 1, -18.1, 278.9 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 31.9, 273.9 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 37.9, 263.9 , 0 );
setMoveKey( spep_0 -3 + 187, 1, 37.9, 263.9 , 0 );--
setMoveKey( spep_0 -3 + 188, 1, 77.1, 243.8 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 97.1, 240.8 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 97.1, 240.8 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 108.9, 229.5 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 108.9, 229.2 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 108.8, 228 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 108.7, 226.1 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 108.7, 226.1 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 108.3, 215.3 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 108.3, 215.3 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 107.8, 203.2 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 107.8, 203.2 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 107.1, 186 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 107.1, 186 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 106.1, 161.2 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 106.1, 161.2 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 101.9, 58.5 , 0 );
setMoveKey( spep_0 -3 + 225, 1, 101.9, 58.5 , 0 );--
setMoveKey( spep_0 -3 + 226, 1, 14.3, 26.7 , 0 );
setMoveKey( spep_0 -3 + 227, 1, 14.3, 26.7 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 32.3, 32.7 , 0 );
setMoveKey( spep_0 -3 + 229, 1, 32.3, 32.7 , 0 );--
setMoveKey( spep_0 -3 + 230, 1, 23.1, 104 , 0 );
setMoveKey( spep_0 -3 + 231, 1, 23.1, 104 , 0 );--
setMoveKey( spep_0 -3 + 232, 1, 70.5, 109 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 116.2, 104.6 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 111.9, 83.6 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 94.6, 78.3 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 83.2, 100.8 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 104.4, 113.1 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 92.4, 125.3 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 91.6, 107.5 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 106.8, 93.6 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 125.6, 95.7 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 132.2, 113.7 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 114.7, 113.8 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 116.4, 112.7 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 117.5, 114.3 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 116.3, 113.6 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 118.2, 114.2 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 116.1, 116.7 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 118.9, 112 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 118.9, 110.6 , 0 );

setScaleKey( spep_0 -3 + 100, 1, 2.88, 2.88 );
setScaleKey( spep_0 -3 + 102, 1, 2.77, 2.77 );
setScaleKey( spep_0 -3 + 104, 1, 2.66, 2.66 );
setScaleKey( spep_0 -3 + 106, 1, 2.56, 2.56 );
setScaleKey( spep_0 -3 + 108, 1, 2.45, 2.45 );
setScaleKey( spep_0 -3 + 110, 1, 2.34, 2.34 );
setScaleKey( spep_0 -3 + 119, 1, 2.34, 2.34 );--
setScaleKey( spep_0 -3 + 120, 1, 2.1, 2.1 );
setScaleKey( spep_0 -3 + 126, 1, 2.1, 2.1 );
setScaleKey( spep_0 -3 + 127, 1, 2.1, 2.1 );

a1 = 0.2;
setScaleKey( spep_0 -3 + 128, 1, 1.78 +a1, 1.78 +a1 );
setScaleKey( spep_0 -3 + 129, 1, 1.78 +a1, 1.78 +a1 );
setScaleKey( spep_0 -3 + 130, 1, 1.51 +a1, 1.51 +a1 );
setScaleKey( spep_0 -3 + 132, 1, 1.51 +a1, 1.51 +a1 );
setScaleKey( spep_0 -3 + 134, 1, 1.32 +a1, 1.32 +a1 );
setScaleKey( spep_0 -3 + 136, 1, 1.29 +a1, 1.29 +a1 );
setScaleKey( spep_0 -3 + 138, 1, 1.28 +a1, 1.28 +a1 );
setScaleKey( spep_0 -3 + 140, 1, 1.28 +a1, 1.28 +a1 );
setScaleKey( spep_0 -3 + 141, 1, 1.28 +a1, 1.28 +a1 );--
setScaleKey( spep_0 -3 + 142, 1, 1.28 +a1, 1.28 +a1 );
setScaleKey( spep_0 -3 + 144, 1, 1.28 +a1, 1.28 +a1 );
setScaleKey( spep_0 -3 + 146, 1, 1.25 +a1, 1.25 +a1 );
setScaleKey( spep_0 -3 + 148, 1, 1.22 +a1, 1.22 +a1 );
setScaleKey( spep_0 -3 + 150, 1, 1.19 +a1, 1.19 +a1 );
setScaleKey( spep_0 -3 + 152, 1, 1.21 +a1, 1.21 +a1 );
setScaleKey( spep_0 -3 + 154, 1, 1.23 +a1, 1.23 +a1 );
setScaleKey( spep_0 -3 + 156, 1, 1.28 +a1, 1.28 +a1 );
setScaleKey( spep_0 -3 + 158, 1, 1.36 +a1, 1.36 +a1 );
setScaleKey( spep_0 -3 + 160, 1, 1.48 +a1, 1.48 +a1 );
setScaleKey( spep_0 -3 + 162, 1, 1.64 +a1, 1.64 +a1 );
setScaleKey( spep_0 -3 + 164, 1, 1.84 +a1, 1.84 +a1 );
setScaleKey( spep_0 -3 + 165, 1, 1.84 +a1, 1.84 +a1 );--
setScaleKey( spep_0 -3 + 166, 1, 3.12, 3.12 );
setScaleKey( spep_0 -3 + 169, 1, 3.12, 3.12 );
setScaleKey( spep_0 -3 + 170, 1, 1.9459999999999997, 1.9459999999999997 );
setScaleKey( spep_0 -3 + 188, 1, 1.9459999999999997, 1.9459999999999997 );
setScaleKey( spep_0 -3 + 225, 1, 1.9459999999999997, 1.9459999999999997 );--
setScaleKey( spep_0 -3 + 226, 1, 1.59, 1.59 );
setScaleKey( spep_0 -3 + 229, 1, 1.59, 1.59 );--
setScaleKey( spep_0 -3 + 230, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 231, 1, 0.67, 0.67 );--
setScaleKey( spep_0 -3 + 232, 1, 0.39, 0.39 );
setScaleKey( spep_0 -3 + 234, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 236, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 238, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 240, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 242, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 244, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 246, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 248, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 252, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 254, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 258, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 260, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 270, 1, 0.11, 0.11 );

setRotateKey( spep_0 -3 + 100, 1, 0 );
setRotateKey( spep_0 -3 + 119, 1, 0 );--
setRotateKey( spep_0 -3 + 120, 1, 7.5 );
setRotateKey( spep_0 -3 + 125, 1, 7.5 );--
setRotateKey( spep_0 -3 + 126, 1, 17.5 );
setRotateKey( spep_0 -3 + 132, 1, 17.5 );
setRotateKey( spep_0 -3 + 134, 1, -3.7 );
setRotateKey( spep_0 -3 + 136, 1, -7.3 );
setRotateKey( spep_0 -3 + 138, 1, -8.6 );
setRotateKey( spep_0 -3 + 140, 1, -8.9 );
setRotateKey( spep_0 -3 + 141, 1, -8.9 );--
setRotateKey( spep_0 -3 + 142, 1, -8.9 );
setRotateKey( spep_0 -3 + 144, 1, -17.4 );
setRotateKey( spep_0 -3 + 146, 1, -24 );
setRotateKey( spep_0 -3 + 148, 1, -30.5 );
setRotateKey( spep_0 -3 + 150, 1, -37 );
setRotateKey( spep_0 -3 + 152, 1, -36.9 );
setRotateKey( spep_0 -3 + 154, 1, -36.8 );
setRotateKey( spep_0 -3 + 156, 1, -36.6 );
setRotateKey( spep_0 -3 + 158, 1, -36.3 );
setRotateKey( spep_0 -3 + 160, 1, -35.8 );
setRotateKey( spep_0 -3 + 162, 1, -35.2 );
setRotateKey( spep_0 -3 + 164, 1, -34.4 );
setRotateKey( spep_0 -3 + 165, 1, -34.4 );--
setRotateKey( spep_0 -3 + 166, 1, 45.2 );
setRotateKey( spep_0 -3 + 169, 1, 45.2 );
setRotateKey( spep_0 -3 + 170, 1, 58 );
setRotateKey( spep_0 -3 + 187, 1, 58 );--
setRotateKey( spep_0 -3 + 188, 1, -1.7 );
setRotateKey( spep_0 -3 + 225, 1, -1.7 );--
setRotateKey( spep_0 -3 + 226, 1, -50 );
setRotateKey( spep_0 -3 + 229, 1, -50 );--
setRotateKey( spep_0 -3 + 230, 1, 41 );
setRotateKey( spep_0 -3 + 231, 1, 41 );--
setRotateKey( spep_0 -3 + 232, 1, 45.4 );
setRotateKey( spep_0 -3 + 234, 1, 46.9 );
setRotateKey( spep_0 -3 + 236, 1, 47.8 );
setRotateKey( spep_0 -3 + 238, 1, 48.4 );
setRotateKey( spep_0 -3 + 240, 1, 48.8 );
setRotateKey( spep_0 -3 + 242, 1, 49.1 );
setRotateKey( spep_0 -3 + 244, 1, 49.3 );
setRotateKey( spep_0 -3 + 246, 1, 49.4 );
setRotateKey( spep_0 -3 + 248, 1, 49.5 );
setRotateKey( spep_0 -3 + 250, 1, 49.6 );
setRotateKey( spep_0 -3 + 252, 1, 49.6 );
setRotateKey( spep_0 -3 + 254, 1, 49.7 );
setRotateKey( spep_0 -3 + 256, 1, 49.7 );
setRotateKey( spep_0 -3 + 258, 1, 49.8 );
setRotateKey( spep_0 -3 + 260, 1, 49.8 );
setRotateKey( spep_0 -3 + 262, 1, 49.9 );
setRotateKey( spep_0 -3 + 270, 1, 49.9 );

-- ** 音 ** --
--蹴り
SE009 = playSeVer2( spep_0 + 102, 1004, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 110, 1187, "", 0, 0, 0, 0.6);
SE011 = playSeVer2( spep_0 + 110, 1359, "", 0, 0, 0, -1);

--アッパー
SE012 = playSeVer2( spep_0 + 152, 1359, "",spep_0 + 210, 0, 18, -1);
SE013 = playSeVer2( spep_0 + 152, 1009, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 154, 1000, "", 0, 0, 0, -1);

--画面遷移
SE015 = playSeVer2( spep_0 + 180, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE015, 79 );

--蹴り飛ばし
SE016 = playSeVer2( spep_0 + 206, 1003, "", 0, 0, 0, -1);
E017 = playSeVer2( spep_0 + 212, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 212, SE017, 89 );
E018 = playSeVer2( spep_0 + 214, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE018, 85 );

--右足構える
SE019 = playSeVer2( spep_0 + 274, 1192, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 276, 1301, "", 0, 0, 0, -1);

--構える
SE021 = playSeVer2( spep_0 + 312, 1300, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 312, SE021, 59 );

--気ダメ
SE022 = playSeVer2( spep_0 + 390, 1259, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 390, SE022, 143 );
setStartTimeMs( SE022,  867 );
SE023 = playSeVer2( spep_0 + 360, 1008, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE023, 50 );
SE024 = playSeVer2( spep_0 + 360, 1176, "",spep_0 + 552, 0, 12, -1);
setPitch( spep_0 + 360, SE024, -300 );
setTimeStretch( SE024, 0.8, 30, 4 );
SE025 = playSeVer2( spep_0 + 386, 1188, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE025, 50 );
setStartTimeMs( SE025,  150 );

--イナヅマ
SE026 = playSeVer2( spep_0 + 426, 1147, "",spep_0 + 552, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 426, SE026, 54 );
setPitch( spep_0 + 426, SE026, -400 );
setTimeStretch( SE026, 0.73, 30, 4 );

--顔カットイン
--SE027 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気ダメアップ
SE028 = playSeVer2( spep_0 + 440, 1035, "",spep_0 + 552, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 440, SE028, 107 );
SE029 = playSeVer2( spep_0 + 440, 1024, "",spep_0 + 552, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 440, SE029, 81 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 524 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 524;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 基地〜かめはめ波ヒット後爆発(556F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --基地〜かめはめ波ヒット後爆発  ef_002a
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 556, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 556, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 556, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 556, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04r, 0x80, -1, 0, 0, 0 );  --基地〜かめはめ波ヒット後爆発   ef_002b
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 556, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 556, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 556, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 556, finish_b, 255 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 -3 + 384, 1, 1 );
setDisp( spep_2 -3 + 428, 1, 0 );
changeAnime( spep_2 -3 + 384, 1, 106 );

setMoveKey( spep_2 -3 + 384, 1, 84.1, 19.5 , 0 );
setMoveKey( spep_2 -3 + 386, 1, 100.3, 32.6 , 0 );
setMoveKey( spep_2 -3 + 388, 1, 112.9, 42.6 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 123.3, 50.8 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 132.1, 57.9 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 139.9, 62.3 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 146.8, 65.9 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 151.2, 76.9 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 158.8, 77.8 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 161.1, 79.1 , 0 );
setMoveKey( spep_2 -3 + 404, 1, 165.8, 80.9 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 169.5, 85.6 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 172.9, 89 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 174.4, 91.8 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 175.4, 95.3 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 177.3, 89.8 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 181.6, 98.3 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 178.6, 94 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 183.6, 98.2 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 184.3, 99.2 , 0 );
setMoveKey( spep_2 -3 + 424, 1, 188.3, 99.8 , 0 );
setMoveKey( spep_2 -3 + 426, 1, 186.3, 103.2 , 0 );
setMoveKey( spep_2 -3 + 428, 1, 186.3, 103.2 , 0 );

setScaleKey( spep_2 -3 + 384, 1, 0.73, 0.73 );
setScaleKey( spep_2 -3 + 386, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 388, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 390, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 392, 1, 0.51, 0.51 );
setScaleKey( spep_2 -3 + 394, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 396, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 398, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 400, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 402, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 404, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 406, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 408, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 410, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 412, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 414, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 416, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 418, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 420, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 422, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 424, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 428, 1, 0.27, 0.27 );

setRotateKey( spep_2 -3 + 384, 1, -39.2 );
setRotateKey( spep_2 -3 + 428, 1, -39.2 );

-- ** 音 ** --
--光出す
SE031 = playSeVer2( spep_2 + 4, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE031, 150 );
SE032 = playSeVer2( spep_2 + 4, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE032, 79 );
SE033 = playSeVer2( spep_2 + 4, 1179, "", 0, 0, 0, -1);

--光広がる
SE034 = playSeVer2( spep_2 + 30, 1017, "", 0, 0, 0, -1);

--光立ち上がる
SE035 = playSeVer2( spep_2 + 54, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE035, 65 );
SE036 = playSeVer2( spep_2 + 54, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE036, 74 );
SE037 = playSeVer2( spep_2 + 54, 1156, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE037, 85 );
SE038 = playSeVer2( spep_2 + 54, 1303, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE038, 59 );

--光広がる２
SE039 = playSeVer2( spep_2 + 86, 1116, "",spep_2 + 146, 0, 38, -1);

--画面遷移
SE040 = playSeVer2( spep_2 + 118, 8, "", 0, 0, 0, -1);

--オーラ
SE041 = playSeVer2( spep_2 + 126, 1176, "",spep_2 + 318, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 126, SE041, 74 );
setPitch( spep_2 + 126, SE041, -400 );
setTimeStretch( SE041, 0.73, 30, 4 );

--イナヅマ
SE042 = playSeVer2( spep_2 + 138, 1148, "", 0, 0, 0, -1);
setPitch( spep_2 + 138, SE042, -300 );
setTimeStretch( SE042, 0.8, 30, 4 );

--かめはめ波溜め
SE043 = playSeVer2( spep_2 + 154, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 154, SE043, 77 );
SE044 = playSeVer2( spep_2 + 154, 1210, "",spep_2 + 318, 0, 26, 0.6);

--かめはめ波溜めアップ
SE045 = playSeVer2( spep_2 + 212, 1356, "",spep_2 + 322, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 212, SE045, 104 );
SE046 = playSeVer2( spep_2 + 212, 1157, "",spep_2 + 322, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 212, SE046, 123 );

--かめはめ波発射
SE047 = playSeVer2( spep_2 + 284, 1146, "",spep_2 + 444, 0, 10, -1);
SE048 = playSeVer2( spep_2 + 284, 1284, "",spep_2 + 444, 0, 10, -1);
SE049 = playSeVer2( spep_2 + 284, 1223, "",spep_2 + 444, 0, 10, -1);

--かめはめ波横アップ
SE050 = playSeVer2( spep_2 + 322, 1068, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 322, 1258, "",spep_2 + 444, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 322, SE051, 66 );

--かめはめ波飛んでいく
SE052 = playSeVer2( spep_2 + 378, 1021, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 378, 1202, "",spep_2 + 444, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 378, SE053, 155 );

--爆発
SE054 = playSeVer2( spep_2 + 428, 1067, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 428, 1159, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 436, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 556 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 446 );
endPhase( spep_2 + 546 );

end