--4026490:UR超サイヤ人2ケール_レジストブラスト
--sp_effect_a1_00397

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
SP_01 = 161717; --初動からライダーキック ef_001
SP_02 = 161718; --初動からライダーキック 裏 ef_001_back
SP_03 = 161721; --連続攻撃 ef_002
SP_04 = 161722; --連続攻撃 裏 ef_002_back
SP_05 = 161725; --光弾発射 ef_003
SP_06 = 161726; --光弾発射 裏 ef_003_back

--敵側
SP_01r = 161719; --初動からライダーキック ef_001_re
SP_02r = 161720; --初動からライダーキック 裏 ef_001_back_re
SP_03r = 161723; --連続攻撃 ef_002_re
SP_04r = 161724; --連続攻撃 裏 ef_002_back_re
SP_05r = 161727; --光弾発射 ef_003_re
SP_06r = 161728; --光弾発射 裏 ef_003_back_re

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
-- 初動からライダーキック(306F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); --初動からライダーキック ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 306, first_f, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 306, first_f, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 306, first_f, 0 );

setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 306 - 2, first_f, 255 );
setEffAlphaKey( spep_0 + 306 - 1, first_f, 255 );
setEffAlphaKey( spep_0 + 306, first_f, 0 );


first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); --初動からライダーキック 裏 ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 306, first_b, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 306, first_b, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 306, first_b, 0 );

setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 306 - 2, first_b, 255 );
setEffAlphaKey( spep_0 + 306 - 1, first_b, 255 );
setEffAlphaKey( spep_0 + 306, first_b, 0 );

--//////////顔カットイン、セリフカットインテンプレ
------------------------------------------------------
spep_x = spep_0 + 10;  --表示させたいフレーム−10の分を足す！
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);
------------------------------------------------------

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 306 + 2, 0, 0, 0, 0, 255); 

-- ** 音 ** --
--イナヅマ
SE001 = playSeVer2( spep_0 + 0, 1147, "",spep_0 + 114, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
SE007_02 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);

--構える
SE005 = playSeVer2( spep_0 + 26, 1004, "", 0, 0, 0, -1);

--飛び出す
SE008 = playSeVer2( spep_0 + 100, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 100, 1117, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 100, 9, "", 0, 0, 0, -1);

--飛び蹴りしてくる
SE011 = playSeVer2( spep_0 + 120, 1258, "",spep_0 + 188, 0, 18, -1);
SE012 = playSeVer2( spep_0 + 120, 1019, "",spep_0 + 188, 0, 18, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 144; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_0 + 161, 1, 1 );
setDisp( spep_0 + 191, 1, 0 );
setDisp( spep_0 + 261, 1, 1 );
--setDisp( spep_0 + 306, 1, 0 );

changeAnime( spep_0 + 161, 1, 104 );
changeAnime( spep_0 + 169, 1, 108 );
changeAnime( spep_0 + 275, 1, 106 );

setMoveKey( spep_0 + 161, 1, 108.6, -85.3, 0 );
setMoveKey( spep_0 + 168, 1, 108.6, -85.3, 0 );
setMoveKey( spep_0 + 169, 1, 139.6, -39.3 , 0 );
setMoveKey( spep_0 + 170, 1, 139.6, -39.3 , 0 );
setMoveKey( spep_0 + 174, 1, 139.6, -39.3 , 0 );
setMoveKey( spep_0 + 176, 1, 139.6, -38.3 , 0 );
setMoveKey( spep_0 + 178, 1, 362.9, -180.2 , 0 );
setMoveKey( spep_0 + 179, 1, 507.8, -294 , 0 );
setMoveKey( spep_0 + 180, 1, 507.8, -294 , 0 );
setMoveKey( spep_0 + 181, 1, 514.2, -298.3 , 0 );
setMoveKey( spep_0 + 182, 1, 514.2, -298.3 , 0 );
setMoveKey( spep_0 + 183, 1, 579.5, -299.8 , 0 );
setMoveKey( spep_0 + 184, 1, 579.5, -299.8 , 0 );
setMoveKey( spep_0 + 185, 1, 586.1, -311 , 0 );
setMoveKey( spep_0 + 186, 1, 586.1, -311 , 0 );
setMoveKey( spep_0 + 187, 1, 600.8, -341 , 0 );
setMoveKey( spep_0 + 188, 1, 600.8, -341 , 0 );
setMoveKey( spep_0 + 189, 1, 647.6, -347.3 , 0 );
setMoveKey( spep_0 + 190, 1, 647.6, -347.3 , 0 );

setMoveKey( spep_0 + 261, 1, -118.7, -48.4 , 0 );
setMoveKey( spep_0 + 262, 1, -118.7, -48.4 , 0 );
setMoveKey( spep_0 + 263, 1, -108.5, -39.4 , 0 );
setMoveKey( spep_0 + 264, 1, -108.5, -39.4 , 0 );
setMoveKey( spep_0 + 265, 1, -83.3, -40.4 , 0 );
setMoveKey( spep_0 + 266, 1, -83.3, -40.4 , 0 );
setMoveKey( spep_0 + 267, 1, -63.1, -36.3 , 0 );
setMoveKey( spep_0 + 268, 1, -63.1, -36.3 , 0 );
setMoveKey( spep_0 + 269, 1, -52.9, -22.3 , 0 );
setMoveKey( spep_0 + 270, 1, -52.9, -22.3 , 0 );
setMoveKey( spep_0 + 271, 1, -42.7, -13.3 , 0 );
setMoveKey( spep_0 + 272, 1, -42.7, -13.3 , 0 );
setMoveKey( spep_0 + 273, 1, -22.4, -5.7 , 0 );
setMoveKey( spep_0 + 274, 1, -22.4, -5.7 , 0 );
setMoveKey( spep_0 + 275, 1, 26.1, -27.5 , 0 );
setMoveKey( spep_0 + 276, 1, 26.1, -27.5 , 0 );
setMoveKey( spep_0 + 277, 1, 51.1, -20.5 , 0 );
setMoveKey( spep_0 + 278, 1, 51.1, -20.5 , 0 );
setMoveKey( spep_0 + 279, 1, 61.1, -70.5 , 0 );
setMoveKey( spep_0 + 280, 1, 61.1, -70.5 , 0 );
setMoveKey( spep_0 + 281, 1, 11.1, -27.5 , 0 );
setMoveKey( spep_0 + 282, 1, 11.1, -27.5 , 0 );
setMoveKey( spep_0 + 283, 1, 111.8, 20.8 , 0 );
setMoveKey( spep_0 + 284, 1, 111.8, 20.8 , 0 );
setMoveKey( spep_0 + 285, 1, 115.3, 23.2 , 0 );
setMoveKey( spep_0 + 286, 1, 115.3, 23.2 , 0 );
setMoveKey( spep_0 + 287, 1, 160.3, 40 , 0 );
setMoveKey( spep_0 + 288, 1, 160.3, 40 , 0 );
setMoveKey( spep_0 + 289, 1, 160.3, 65.2 , 0 );
setMoveKey( spep_0 + 290, 1, 160.3, 65.2 , 0 );
setMoveKey( spep_0 + 291, 1, 200.3, 89.9 , 0 );
setMoveKey( spep_0 + 292, 1, 200.3, 89.9 , 0 );
setMoveKey( spep_0 + 293, 1, 200.8, 80.7 , 0 );
setMoveKey( spep_0 + 294, 1, 200.8, 80.7 , 0 );
setMoveKey( spep_0 + 295, 1, 215.8, 94.2 , 0 );
setMoveKey( spep_0 + 296, 1, 215.8, 94.2 , 0 );
setMoveKey( spep_0 + 297, 1, 220.7, 99.9 , 0 );
setMoveKey( spep_0 + 298, 1, 220.7, 99.9 , 0 );
setMoveKey( spep_0 + 299, 1, 225, 100.1 , 0 );
setMoveKey( spep_0 + 300, 1, 225, 100.1 , 0 );
setMoveKey( spep_0 + 305, 1, 225, 100.1 , 0 );

setScaleKey( spep_0 + 161, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 168, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 169, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 170, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 171, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 190, 1, 2.24, 2.24 );

setScaleKey( spep_0 + 261, 1, 4.3, 4.3 );
setScaleKey( spep_0 + 262, 1, 4.3, 4.3 );
setScaleKey( spep_0 + 263, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 264, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 265, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 266, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 267, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 268, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 269, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 270, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 271, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 272, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 273, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 274, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 275, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 276, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 282, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 283, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 284, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 285, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 286, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 287, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 288, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 289, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 290, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 291, 1, 1.0, 1.0 );
setScaleKey( spep_0 + 292, 1, 1.0, 1.0 );
setScaleKey( spep_0 + 293, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 294, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 295, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 296, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 297, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 298, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 299, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 300, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 305, 1, 0.72, 0.72 );

setRotateKey( spep_0 + 161, 1, 0 );
setRotateKey( spep_0 + 169, 1, 0 );
setRotateKey( spep_0 + 170, 1, 0 );
setRotateKey( spep_0 + 190, 1, 0 );

setRotateKey( spep_0 + 261, 1, 0 );
setRotateKey( spep_0 + 262, 1, 0 );
setRotateKey( spep_0 + 274, 1, 0 );
setRotateKey( spep_0 + 275, 1, -55.7 );
setRotateKey( spep_0 + 300, 1, -55.7 );
setRotateKey( spep_0 + 305, 1, -55.7 );

-- ** 音 ** --
--飛び蹴りHIT
SE013 = playSeVer2( spep_0 + 168, 1187, "", 0, 0, 0, -1);

--着地
SE014 = playSeVer2( spep_0 + 186, 1297, "",spep_0 + 250, 0, 24, -1);
SE015 = playSeVer2( spep_0 + 192, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE015, 251 );
SE016 = playSeVer2( spep_0 + 198, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE016, 79 );

--向かってくる
SE017 = playSeVer2( spep_0 + 232, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 232, 1117, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 236, 1277, "", 0, 0, 0, -1);

--パンチ
SE020 = playSeVer2( spep_0 + 274, 1187, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 274, 1153, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 306;

------------------------------------------------------
-- 連続攻撃(276F)
------------------------------------------------------

-- ** エフェクト等 ** --
grapple_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); --連続攻撃 ef_002
setEffMoveKey( spep_1 + 0, grapple_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 276, grapple_f, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, grapple_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 276, grapple_f, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, grapple_f, 0 );
setEffRotateKey( spep_1 + 276, grapple_f, 0 );

setEffAlphaKey( spep_1 + 0, grapple_f, 255 );
setEffAlphaKey( spep_1 + 276 - 2, grapple_f, 255 );
setEffAlphaKey( spep_1 + 276 - 1, grapple_f, 255 );
setEffAlphaKey( spep_1 + 276, grapple_f, 0 );

grapple_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); --連続攻撃 裏 ef_002_back
setEffMoveKey( spep_1 + 0, grapple_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 276, grapple_b, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, grapple_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 276, grapple_b, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, grapple_b, 0 );
setEffRotateKey( spep_1 + 276, grapple_b, 0 );

setEffAlphaKey( spep_1 + 0, grapple_b, 255 );
setEffAlphaKey( spep_1 + 276 - 2, grapple_b, 255 );
setEffAlphaKey( spep_1 + 276 - 1, grapple_b, 255 );
setEffAlphaKey( spep_1 + 276, grapple_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 89, 1, 0 );
setDisp( spep_1 + 125, 1, 1 );
setDisp( spep_1 + 276, 1, 0 );

changeAnime( spep_1 + 0, 1, 106 );
changeAnime( spep_1 + 17, 1, 108 );
changeAnime( spep_1 + 39, 1, 106 );
changeAnime( spep_1 + 63, 1, 108 );
changeAnime( spep_1 + 125, 1, 104 );
changeAnime( spep_1 + 131, 1, 108 );
changeAnime( spep_1 + 195, 1, 6 );

setMoveKey( spep_1 + 0, 1, -111.3, -82.9 , 0 );
setMoveKey( spep_1 + 2, 1, -111.6, -82.3 , 0 );
setMoveKey( spep_1 + 4, 1, -111.9, -81.6 , 0 );
setMoveKey( spep_1 + 6, 1, -112.2, -81 , 0 );
setMoveKey( spep_1 + 8, 1, -112.6, -80.3 , 0 );
setMoveKey( spep_1 + 10, 1, -112.9, -79.7 , 0 );
setMoveKey( spep_1 + 12, 1, -113.2, -79 , 0 );
setMoveKey( spep_1 + 14, 1, -113.5, -78.4 , 0 );
setMoveKey( spep_1 + 15, 1, -113.5, -78.4 , 0 );
setMoveKey( spep_1 + 16, 1, -113.5, -78.4 , 0 );
setMoveKey( spep_1 + 17, 1, -35.4, -35.1  , 0 );
setMoveKey( spep_1 + 18, 1, -35.4, -35.1 , 0 );
setMoveKey( spep_1 + 19, 1, -56.2, -74.2 , 0 );
setMoveKey( spep_1 + 20, 1, -56.2, -74.2 , 0 );
setMoveKey( spep_1 + 21, 1, -40.3, -38.5 , 0 );
setMoveKey( spep_1 + 22, 1, -40.3, -38.5 , 0 );
setMoveKey( spep_1 + 23, 1, 3.7, -53.1 , 0 );
setMoveKey( spep_1 + 24, 1, 3.7, -53.1 , 0 );
setMoveKey( spep_1 + 25, 1, 3.6, -62.8 , 0 );
setMoveKey( spep_1 + 26, 1, 3.6, -62.8 , 0 );
setMoveKey( spep_1 + 27, 1, -13.2, -58.7 , 0 );
setMoveKey( spep_1 + 28, 1, -13.2, -58.7 , 0 );
setMoveKey( spep_1 + 29, 1, 10.5, -57.6 , 0 );
setMoveKey( spep_1 + 30, 1, 10.5, -57.6 , 0 );
setMoveKey( spep_1 + 31, 1, 9.7, -42.6 , 0 );
setMoveKey( spep_1 + 32, 1, 9.7, -42.6 , 0 );
setMoveKey( spep_1 + 33, 1, -4.7, -42.6 , 0 );
setMoveKey( spep_1 + 34, 1, -4.7, -42.6 , 0 );
setMoveKey( spep_1 + 35, 1, -1.7, -48.6 , 0 );
setMoveKey( spep_1 + 36, 1, -1.7, -48.6 , 0 );
setMoveKey( spep_1 + 37, 1, 20.7, -37.6 , 0 );
setMoveKey( spep_1 + 38, 1, 20.7, -37.6 , 0 );
setMoveKey( spep_1 + 39, 1, 12.1, -18.9 , 0 );
setMoveKey( spep_1 + 40, 1, 12.1, -18.9 , 0 );
setMoveKey( spep_1 + 41, 1, -10.9, -36.3 , 0 );
setMoveKey( spep_1 + 42, 1, -10.9, -36.3 , 0 );
setMoveKey( spep_1 + 43, 1, 2.9, 18.5 , 0 );
setMoveKey( spep_1 + 44, 1, 2.9, 18.5 , 0 );
setMoveKey( spep_1 + 45, 1, 38.6, 14.1 , 0 );
setMoveKey( spep_1 + 46, 1, 38.6, 14.1 , 0 );
setMoveKey( spep_1 + 47, 1, 45.7, -4.2 , 0 );
setMoveKey( spep_1 + 48, 1, 45.7, -4.2 , 0 );
setMoveKey( spep_1 + 49, 1, 30.1, 8.5 , 0 );
setMoveKey( spep_1 + 50, 1, 30.1, 8.5 , 0 );
setMoveKey( spep_1 + 51, 1, 58.3, 10.7 , 0 );
setMoveKey( spep_1 + 52, 1, 58.3, 10.7 , 0 );
setMoveKey( spep_1 + 53, 1, 62.1, 25.5 , 0 );
setMoveKey( spep_1 + 54, 1, 62.1, 25.5 , 0 );
setMoveKey( spep_1 + 55, 1, 53.2, 21.6 , 0 );
setMoveKey( spep_1 + 56, 1, 53.2, 21.6 , 0 );
setMoveKey( spep_1 + 57, 1, 49.2, 21.6 , 0 );
setMoveKey( spep_1 + 58, 1, 49.2, 21.6 , 0 );
setMoveKey( spep_1 + 59, 1, 53.2, 17.6 , 0 );
setMoveKey( spep_1 + 60, 1, 53.2, 17.6 , 0 );
setMoveKey( spep_1 + 61, 1, 63.2, 24.6 , 0 );
setMoveKey( spep_1 + 62, 1, 63.2, 24.6 , 0 );
setMoveKey( spep_1 + 63, 1, 95.7, -19.9 , 0 );
setMoveKey( spep_1 + 64, 1, 95.7, -19.9 , 0 );
setMoveKey( spep_1 + 65, 1, 147, -48.5 , 0 );
setMoveKey( spep_1 + 66, 1, 147, -48.5 , 0 );
setMoveKey( spep_1 + 67, 1, 128.3, -67.1 , 0 );
setMoveKey( spep_1 + 68, 1, 128.3, -67.1 , 0 );
setMoveKey( spep_1 + 69, 1, 159.6, -65.6 , 0 );
setMoveKey( spep_1 + 70, 1, 159.6, -65.6 , 0 );
setMoveKey( spep_1 + 71, 1, 271, -48.2 , 0 );
setMoveKey( spep_1 + 72, 1, 271, -48.2 , 0 );
setMoveKey( spep_1 + 73, 1, 302.3, -58.8 , 0 );
setMoveKey( spep_1 + 74, 1, 302.3, -58.8 , 0 );
setMoveKey( spep_1 + 75, 1, 306.6, -51.3 , 0 );
setMoveKey( spep_1 + 76, 1, 306.6, -51.3 , 0 );
setMoveKey( spep_1 + 77, 1, 359.9, -49.9 , 0 );
setMoveKey( spep_1 + 78, 1, 359.9, -49.9 , 0 );
setMoveKey( spep_1 + 79, 1, 388.3, -33.5 , 0 );
setMoveKey( spep_1 + 80, 1, 388.3, -33.5 , 0 );
setMoveKey( spep_1 + 81, 1, 415.6, -37 , 0 );
setMoveKey( spep_1 + 82, 1, 415.6, -37 , 0 );
setMoveKey( spep_1 + 89, 1, 417.6, -37 , 0 );

setMoveKey( spep_1 + 125, 1, -6.4, 95 , 0 );
setMoveKey( spep_1 + 130, 1, -6.4, 95 , 0 );
setMoveKey( spep_1 + 131, 1, 31.6, 29.2 , 0 );
setMoveKey( spep_1 + 135, 1, 31.6, 29.2 , 0 );
setMoveKey( spep_1 + 137, 1, -2.4, 65.1 , 0 );
setMoveKey( spep_1 + 138, 1, -2.4, 65.1 , 0 );
setMoveKey( spep_1 + 139, 1, -2.4, 64.7 , 0 );
setMoveKey( spep_1 + 140, 1, -2.4, 64.7 , 0 );
setMoveKey( spep_1 + 141, 1, -34.4, 76.3 , 0 );
setMoveKey( spep_1 + 142, 1, -34.4, 76.3 , 0 );
setMoveKey( spep_1 + 143, 1, -14.3, 54.6 , 0 );
setMoveKey( spep_1 + 144, 1, -14.3, 54.6 , 0 );
setMoveKey( spep_1 + 145, 1, -2.3, 73.4 , 0 );
setMoveKey( spep_1 + 146, 1, -2.3, 73.4 , 0 );
setMoveKey( spep_1 + 147, 1, 5.2, 40.8 , 0 );
setMoveKey( spep_1 + 148, 1, 5.2, 40.8 , 0 );
setMoveKey( spep_1 + 149, 1, -22, 49 , 0 );
setMoveKey( spep_1 + 150, 1, -22, 49 , 0 );
setMoveKey( spep_1 + 151, 1, 4.8, 25.5 , 0 );
setMoveKey( spep_1 + 152, 1, 4.8, 25.5 , 0 );
setMoveKey( spep_1 + 153, 1, -16.4, 8.6 , 0 );
setMoveKey( spep_1 + 154, 1, -16.4, 8.6 , 0 );
setMoveKey( spep_1 + 155, 1, -10.5, -76.6 , 0 );
setMoveKey( spep_1 + 156, 1, -10.5, -76.6 , 0 );
setMoveKey( spep_1 + 157, 1, 0.4, -126.6 , 0 );
setMoveKey( spep_1 + 158, 1, 0.4, -126.6 , 0 );
setMoveKey( spep_1 + 159, 1, 0.7, -159.3 , 0 );
setMoveKey( spep_1 + 160, 1, 0.7, -159.3 , 0 );
setMoveKey( spep_1 + 161, 1, -3.9, -162.8 , 0 );
setMoveKey( spep_1 + 162, 1, -3.9, -162.8 , 0 );
setMoveKey( spep_1 + 163, 1, -4, -165.9 , 0 );
setMoveKey( spep_1 + 164, 1, -4, -165.9 , 0 );
setMoveKey( spep_1 + 165, 1, -5, -169.8 , 0 );
setMoveKey( spep_1 + 166, 1, -5, -169.8 , 0 );
setMoveKey( spep_1 + 167, 1, -4.1, -170.6 , 0 );
setMoveKey( spep_1 + 168, 1, -4.1, -170.6 , 0 );
setMoveKey( spep_1 + 169, 1, -18.2, -104.5 , 0 );
setMoveKey( spep_1 + 170, 1, -18.2, -104.5 , 0 );
setMoveKey( spep_1 + 171, 1, -2.7, -88.2 , 0 );
setMoveKey( spep_1 + 172, 1, -2.7, -88.2 , 0 );
setMoveKey( spep_1 + 173, 1, 8.9, -64.2 , 0 );
setMoveKey( spep_1 + 174, 1, 8.9, -64.2 , 0 );
setMoveKey( spep_1 + 175, 1, 17.9, -43.9 , 0 );
setMoveKey( spep_1 + 176, 1, 17.9, -43.9 , 0 );
setMoveKey( spep_1 + 177, 1, 30.5, -34.4 , 0 );
setMoveKey( spep_1 + 178, 1, 30.5, -34.4 , 0 );
setMoveKey( spep_1 + 179, 1, 38.2, -15.6 , 0 );
setMoveKey( spep_1 + 180, 1, 38.2, -15.6 , 0 );
setMoveKey( spep_1 + 181, 1, 45.1, -3 , 0 );
setMoveKey( spep_1 + 182, 1, 45.1, -3 , 0 );
setMoveKey( spep_1 + 183, 1, 48.6, 2.6 , 0 );
setMoveKey( spep_1 + 184, 1, 48.6, 2.6 , 0 );
setMoveKey( spep_1 + 185, 1, 53, 13.8 , 0 );
setMoveKey( spep_1 + 186, 1, 53, 13.8 , 0 );
setMoveKey( spep_1 + 187, 1, 55.5, 24.7 , 0 );
setMoveKey( spep_1 + 188, 1, 55.5, 24.7 , 0 );
setMoveKey( spep_1 + 189, 1, 59.2, 32.6 , 0 );
setMoveKey( spep_1 + 190, 1, 59.2, 32.6 , 0 );
setMoveKey( spep_1 + 191, 1, 60.2, 41.6 , 0 );
setMoveKey( spep_1 + 192, 1, 60.2, 41.6 , 0 );
setMoveKey( spep_1 + 193, 1, 61.8, 47 , 0 );
setMoveKey( spep_1 + 194, 1, 61.8, 47 , 0 );
setMoveKey( spep_1 + 195, 1, -17.1, -34 , 0 );
setMoveKey( spep_1 + 196, 1, -17.1, -34 , 0 );
setMoveKey( spep_1 + 197, 1, -12.6, -33 , 0 );
setMoveKey( spep_1 + 198, 1, -12.6, -33 , 0 );
setMoveKey( spep_1 + 199, 1, -15.1, -45.3 , 0 );
setMoveKey( spep_1 + 200, 1, -15.1, -45.3 , 0 );
setMoveKey( spep_1 + 201, 1, -25.1, -29.3 , 0 );
setMoveKey( spep_1 + 202, 1, -25.1, -29.3 , 0 );
setMoveKey( spep_1 + 203, 1, -13.1, -42 , 0 );
setMoveKey( spep_1 + 204, 1, -13.1, -42 , 0 );
setMoveKey( spep_1 + 205, 1, -10.7, -33 , 0 );
setMoveKey( spep_1 + 206, 1, -10.7, -33 , 0 );
setMoveKey( spep_1 + 207, 1, -23.1, -43.2 , 0 );
setMoveKey( spep_1 + 208, 1, -23.1, -43.2 , 0 );
setMoveKey( spep_1 + 209, 1, -25.1, -33.4 , 0 );
setMoveKey( spep_1 + 210, 1, -25.1, -33.4 , 0 );
setMoveKey( spep_1 + 211, 1, -16.4, -38 , 0 );
setMoveKey( spep_1 + 212, 1, -16.4, -38 , 0 );
setMoveKey( spep_1 + 213, 1, -13.7, -33 , 0 );
setMoveKey( spep_1 + 214, 1, -13.7, -33 , 0 );
setMoveKey( spep_1 + 215, 1, -15.5, -56.4 , 0 );
setMoveKey( spep_1 + 216, 1, -15.5, -56.4 , 0 );
setMoveKey( spep_1 + 217, 1, -29.1, -32.2 , 0 );
setMoveKey( spep_1 + 218, 1, -29.1, -32.2 , 0 );
setMoveKey( spep_1 + 219, 1, -13.1, -42 , 0 );
setMoveKey( spep_1 + 220, 1, -13.1, -42 , 0 );
setMoveKey( spep_1 + 221, 1, -10.8, -33 , 0 );
setMoveKey( spep_1 + 222, 1, -10.8, -33 , 0 );
setMoveKey( spep_1 + 223, 1, -20.1, -41.8 , 0 );
setMoveKey( spep_1 + 224, 1, -20.1, -41.8 , 0 );
setMoveKey( spep_1 + 276, 1, -17.1, -33 , 0 );

setScaleKey( spep_1 + 0, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 16, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 17, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 38, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 39, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 63, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 64, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 89, 1, 1.07, 1.07 );

setScaleKey( spep_1 + 125, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 140, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 141, 1, 1.93, 1.93 );
setScaleKey( spep_1 + 142, 1, 1.93, 1.93 );
setScaleKey( spep_1 + 143, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 144, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 145, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 146, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 147, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 148, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 149, 1, 1.71, 1.71 );
setScaleKey( spep_1 + 150, 1, 1.71, 1.71 );
setScaleKey( spep_1 + 151, 1, 1.53, 1.53 );
setScaleKey( spep_1 + 152, 1, 1.53, 1.53 );
setScaleKey( spep_1 + 153, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 154, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 155, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 156, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 157, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 158, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 159, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 160, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 161, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 162, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 163, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 164, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 165, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 168, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 169, 1, 0.61, 0.61 );
setScaleKey( spep_1 + 194, 1, 0.61, 0.61 );
setScaleKey( spep_1 + 195, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 276, 1, 0.54, 0.54 );

setRotateKey( spep_1 + 0, 1, -48.5 );
setRotateKey( spep_1 + 16, 1, -48.5 );
setRotateKey( spep_1 + 17, 1, 3.7 );
setRotateKey( spep_1 + 38, 1, 3.7 );
setRotateKey( spep_1 + 39, 1, -42.6 );
setRotateKey( spep_1 + 63, 1, -42.6 );
setRotateKey( spep_1 + 64, 1, 3.7 );
setRotateKey( spep_1 + 89, 1, 3.7 );

setRotateKey( spep_1 + 125, 1, 0 );
setRotateKey( spep_1 + 194, 1, 0 );
setRotateKey( spep_1 + 195, 1, 66.5 );
setRotateKey( spep_1 + 276, 1, 66.5 );

setBlendColor( spep_1 + 195, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_1 + 196, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_1 + 276, 1, 3, 0, 0, 0, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 276 + 2, 0, 0, 0, 0, 255);

-- ** 音 ** --
--ラッシュ
SE022 = playSeVer2( spep_1 + 12, 1003, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_1 + 12, 1009, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 16, 1110, "", 0, 0, 0, -1);

--ラッシュ
SE025 = playSeVer2( spep_1 + 28, 1110, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_1 + 28, 1010, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 62, 1187, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_1 + 62, 1190, "", 0, 0, 0, -1);

--向かってくる
SE029 = playSeVer2( spep_1 + 86, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE029, 78 );

--パンチ
SE030 = playSeVer2( spep_1 + 130, 1187, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 130, 1120, "", 0, 0, 0, -1);

--岩に突っ込んでく
SE032 = playSeVer2( spep_1 + 158, 1258, "",spep_1 + 212, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 158, SE032, 63 );
SE033 = playSeVer2( spep_1 + 162, 1168, "",spep_1 + 222, 0, 28, -1);
setSeVolumeByWorkId( spep_1 + 162, SE033, 84 );

--岩激突
SE034 = playSeVer2( spep_1 + 192, 1159, "",spep_1 + 292, 0, 18, -1);
SE035 = playSeVer2( spep_1 + 208, 1024, "",spep_1 + 292, 0, 18, -1);
SE036 = playSeVer2( spep_1 + 212, 1067, "",spep_1 + 292, 0, 18, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 276;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--気弾溜め
SE038 = playSeVer2( spep_2 + 86, 1252, "",spep_2 + 162, 0, 20, -1);
SE039 = playSeVer2( spep_2 + 86, 1253, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 86, 1274, "",spep_2 + 162, 0, 20, -1);
SE041 = playSeVer2( spep_2 + 86, 1282, "",spep_2 + 162, 0, 20, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 光弾発射(258F)
------------------------------------------------------

-- ** エフェクト等 ** --
beam_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); --光弾発射 ef_003
setEffMoveKey( spep_3 + 0, beam_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 258, beam_f, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 258, beam_f, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, beam_f, 0 );
setEffRotateKey( spep_3 + 258, beam_f, 0 );

setEffAlphaKey( spep_3 + 0, beam_f, 255 );
setEffAlphaKey( spep_3 + 258, beam_f, 255 );

beam_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --光弾発射 裏 ef_003_back
setEffMoveKey( spep_3 + 0, beam_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 258, beam_b, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 258, beam_b, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, beam_b, 0 );
setEffRotateKey( spep_3 + 258, beam_b, 0 );

setEffAlphaKey( spep_3 + 0, beam_b, 255 );
setEffAlphaKey( spep_3 + 258, beam_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 35, 1, 1 );
setDisp( spep_3 + 52, 1, 0 );

changeAnime( spep_3 + 35, 1, 106 );

setMoveKey( spep_3 + 35, 1, 150.3, -119.4 , 0 );
setMoveKey( spep_3 + 38, 1, 153.8, -119.4 , 0 );
setMoveKey( spep_3 + 40, 1, 157.3, -119.4 , 0 );
setMoveKey( spep_3 + 42, 1, 160.8, -119.4 , 0 );
setMoveKey( spep_3 + 44, 1, 164.3, -119.4 , 0 );
setMoveKey( spep_3 + 46, 1, 167.8, -119.4 , 0 );
setMoveKey( spep_3 + 48, 1, 171.3, -119.4 , 0 );
setMoveKey( spep_3 + 50, 1, 174.8, -119.4 , 0 );
setMoveKey( spep_3 + 52, 1, 178.3, -119.4 , 0 );

setScaleKey( spep_3 + 35, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 52, 1, 1.49, 1.49 );

setRotateKey( spep_3 + 35, 1, -30.7 );
setRotateKey( spep_3 + 52, 1, -30.7 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 258 + 2, 0, 0, 0, 0, 255); 

-- ** 音 ** --
--気弾発射
SE042 = playSeVer2( spep_3 + 44, 1212, "", 0, 6, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 44, SE042, 81 );
setStartTimeMs( SE042,  200 );
SE043 = playSeVer2( spep_3 + 44, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 44, SE043, 68 );
SE044 = playSeVer2( spep_3 + 44, 1146, "", 0, 0, 0, -1);

--気弾飛んでいく
SE045 = playSeVer2( spep_3 + 90, 1044, "", 0, 26, 0, -1);
setSeVolumeByWorkId( spep_3 + 90, SE045, 200 );
SE046 = playSeVer2( spep_3 + 86, 1161, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_3 + 96, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 96, SE047, 82 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 148 );
endPhase( spep_3 + 248 );

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 初動からライダーキック(306F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 ); --初動からライダーキック ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 306, first_f, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 306, first_f, -1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_f, -0 );
setEffRotateKey( spep_0 + 306, first_f, -0 );

setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 306 - 2, first_f, 255 );
setEffAlphaKey( spep_0 + 306 - 1, first_f, 255 );
setEffAlphaKey( spep_0 + 306, first_f, 0 );


first_b = entryEffect( spep_0 + 0, SP_02r, 0x80, -1, 0, 0, 0 ); --初動からライダーキック 裏 ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 306, first_b, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 306, first_b, -1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_b, -0 );
setEffRotateKey( spep_0 + 306, first_b, -0 );

setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 306 - 2, first_b, 255 );
setEffAlphaKey( spep_0 + 306 - 1, first_b, 255 );
setEffAlphaKey( spep_0 + 306, first_b, 0 );

--//////////顔カットイン、セリフカットインテンプレ
------------------------------------------------------
spep_x = spep_0 + 10;  --表示させたいフレーム−10の分を足す！
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);
------------------------------------------------------

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 306 + 2, 0, 0, 0, 0, 255); 

-- ** 音 ** --
--イナヅマ
SE001 = playSeVer2( spep_0 + 0, 1147, "",spep_0 + 114, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
SE007_02 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);

--構える
SE005 = playSeVer2( spep_0 + 26, 1004, "", 0, 0, 0, -1);

--飛び出す
SE008 = playSeVer2( spep_0 + 100, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 100, 1117, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 100, 9, "", 0, 0, 0, -1);

--飛び蹴りしてくる
SE011 = playSeVer2( spep_0 + 120, 1258, "",spep_0 + 188, 0, 18, -1);
SE012 = playSeVer2( spep_0 + 120, 1019, "",spep_0 + 188, 0, 18, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 144; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_0 + 161, 1, 1 );
setDisp( spep_0 + 191, 1, 0 );
setDisp( spep_0 + 261, 1, 1 );
--setDisp( spep_0 + 306, 1, 0 );

changeAnime( spep_0 + 161, 1, 104 );
changeAnime( spep_0 + 169, 1, 108 );
changeAnime( spep_0 + 275, 1, 106 );

setMoveKey( spep_0 + 161, 1, 108.6, -85.3, 0 );
setMoveKey( spep_0 + 168, 1, 108.6, -85.3, 0 );
setMoveKey( spep_0 + 169, 1, 139.6, -39.3 , 0 );
setMoveKey( spep_0 + 170, 1, 139.6, -39.3 , 0 );
setMoveKey( spep_0 + 174, 1, 139.6, -39.3 , 0 );
setMoveKey( spep_0 + 176, 1, 139.6, -38.3 , 0 );
setMoveKey( spep_0 + 178, 1, 362.9, -180.2 , 0 );
setMoveKey( spep_0 + 179, 1, 507.8, -294 , 0 );
setMoveKey( spep_0 + 180, 1, 507.8, -294 , 0 );
setMoveKey( spep_0 + 181, 1, 514.2, -298.3 , 0 );
setMoveKey( spep_0 + 182, 1, 514.2, -298.3 , 0 );
setMoveKey( spep_0 + 183, 1, 579.5, -299.8 , 0 );
setMoveKey( spep_0 + 184, 1, 579.5, -299.8 , 0 );
setMoveKey( spep_0 + 185, 1, 586.1, -311 , 0 );
setMoveKey( spep_0 + 186, 1, 586.1, -311 , 0 );
setMoveKey( spep_0 + 187, 1, 600.8, -341 , 0 );
setMoveKey( spep_0 + 188, 1, 600.8, -341 , 0 );
setMoveKey( spep_0 + 189, 1, 647.6, -347.3 , 0 );
setMoveKey( spep_0 + 190, 1, 647.6, -347.3 , 0 );

setMoveKey( spep_0 + 261, 1, -118.7, -48.4 , 0 );
setMoveKey( spep_0 + 262, 1, -118.7, -48.4 , 0 );
setMoveKey( spep_0 + 263, 1, -108.5, -39.4 , 0 );
setMoveKey( spep_0 + 264, 1, -108.5, -39.4 , 0 );
setMoveKey( spep_0 + 265, 1, -83.3, -40.4 , 0 );
setMoveKey( spep_0 + 266, 1, -83.3, -40.4 , 0 );
setMoveKey( spep_0 + 267, 1, -63.1, -36.3 , 0 );
setMoveKey( spep_0 + 268, 1, -63.1, -36.3 , 0 );
setMoveKey( spep_0 + 269, 1, -52.9, -22.3 , 0 );
setMoveKey( spep_0 + 270, 1, -52.9, -22.3 , 0 );
setMoveKey( spep_0 + 271, 1, -42.7, -13.3 , 0 );
setMoveKey( spep_0 + 272, 1, -42.7, -13.3 , 0 );
setMoveKey( spep_0 + 273, 1, -22.4, -5.7 , 0 );
setMoveKey( spep_0 + 274, 1, -22.4, -5.7 , 0 );
setMoveKey( spep_0 + 275, 1, 26.1, -27.5 , 0 );
setMoveKey( spep_0 + 276, 1, 26.1, -27.5 , 0 );
setMoveKey( spep_0 + 277, 1, 51.1, -20.5 , 0 );
setMoveKey( spep_0 + 278, 1, 51.1, -20.5 , 0 );
setMoveKey( spep_0 + 279, 1, 61.1, -70.5 , 0 );
setMoveKey( spep_0 + 280, 1, 61.1, -70.5 , 0 );
setMoveKey( spep_0 + 281, 1, 11.1, -27.5 , 0 );
setMoveKey( spep_0 + 282, 1, 11.1, -27.5 , 0 );
setMoveKey( spep_0 + 283, 1, 111.8, 20.8 , 0 );
setMoveKey( spep_0 + 284, 1, 111.8, 20.8 , 0 );
setMoveKey( spep_0 + 285, 1, 115.3, 23.2 , 0 );
setMoveKey( spep_0 + 286, 1, 115.3, 23.2 , 0 );
setMoveKey( spep_0 + 287, 1, 160.3, 40 , 0 );
setMoveKey( spep_0 + 288, 1, 160.3, 40 , 0 );
setMoveKey( spep_0 + 289, 1, 160.3, 65.2 , 0 );
setMoveKey( spep_0 + 290, 1, 160.3, 65.2 , 0 );
setMoveKey( spep_0 + 291, 1, 200.3, 89.9 , 0 );
setMoveKey( spep_0 + 292, 1, 200.3, 89.9 , 0 );
setMoveKey( spep_0 + 293, 1, 200.8, 80.7 , 0 );
setMoveKey( spep_0 + 294, 1, 200.8, 80.7 , 0 );
setMoveKey( spep_0 + 295, 1, 215.8, 94.2 , 0 );
setMoveKey( spep_0 + 296, 1, 215.8, 94.2 , 0 );
setMoveKey( spep_0 + 297, 1, 220.7, 99.9 , 0 );
setMoveKey( spep_0 + 298, 1, 220.7, 99.9 , 0 );
setMoveKey( spep_0 + 299, 1, 225, 100.1 , 0 );
setMoveKey( spep_0 + 300, 1, 225, 100.1 , 0 );
setMoveKey( spep_0 + 305, 1, 225, 100.1 , 0 );

setScaleKey( spep_0 + 161, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 168, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 169, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 170, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 171, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 190, 1, 2.24, 2.24 );

setScaleKey( spep_0 + 261, 1, 4.3, 4.3 );
setScaleKey( spep_0 + 262, 1, 4.3, 4.3 );
setScaleKey( spep_0 + 263, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 264, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 265, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 266, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 267, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 268, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 269, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 270, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 271, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 272, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 273, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 274, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 275, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 276, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 282, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 283, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 284, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 285, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 286, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 287, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 288, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 289, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 290, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 291, 1, 1.0, 1.0 );
setScaleKey( spep_0 + 292, 1, 1.0, 1.0 );
setScaleKey( spep_0 + 293, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 294, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 295, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 296, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 297, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 298, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 299, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 300, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 305, 1, 0.72, 0.72 );

setRotateKey( spep_0 + 161, 1, 0 );
setRotateKey( spep_0 + 169, 1, 0 );
setRotateKey( spep_0 + 170, 1, 0 );
setRotateKey( spep_0 + 190, 1, 0 );

setRotateKey( spep_0 + 261, 1, 0 );
setRotateKey( spep_0 + 262, 1, 0 );
setRotateKey( spep_0 + 274, 1, 0 );
setRotateKey( spep_0 + 275, 1, -55.7 );
setRotateKey( spep_0 + 300, 1, -55.7 );
setRotateKey( spep_0 + 305, 1, -55.7 );

-- ** 音 ** --
--飛び蹴りHIT
SE013 = playSeVer2( spep_0 + 168, 1187, "", 0, 0, 0, -1);

--着地
SE014 = playSeVer2( spep_0 + 186, 1297, "",spep_0 + 250, 0, 24, -1);
SE015 = playSeVer2( spep_0 + 192, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE015, 251 );
SE016 = playSeVer2( spep_0 + 198, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE016, 79 );

--向かってくる
SE017 = playSeVer2( spep_0 + 232, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 232, 1117, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 236, 1277, "", 0, 0, 0, -1);

--パンチ
SE020 = playSeVer2( spep_0 + 274, 1187, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 274, 1153, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 306;

------------------------------------------------------
-- 連続攻撃(276F)
------------------------------------------------------

-- ** エフェクト等 ** --
grapple_f = entryEffect( spep_1 + 0, SP_03r, 0x100, -1, 0, 0, 0 ); --連続攻撃 ef_002
setEffMoveKey( spep_1 + 0, grapple_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 276, grapple_f, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, grapple_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 276, grapple_f, -1.0, 1.0 );

setEffRotateKey( spep_1 + 0, grapple_f, -0 );
setEffRotateKey( spep_1 + 276, grapple_f, -0 );

setEffAlphaKey( spep_1 + 0, grapple_f, 255 );
setEffAlphaKey( spep_1 + 276 - 2, grapple_f, 255 );
setEffAlphaKey( spep_1 + 276 - 1, grapple_f, 255 );
setEffAlphaKey( spep_1 + 276, grapple_f, 0 );

grapple_b = entryEffect( spep_1 + 0, SP_04r, 0x80, -1, 0, 0, 0 ); --連続攻撃 裏 ef_002_back
setEffMoveKey( spep_1 + 0, grapple_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 276, grapple_b, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, grapple_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 276, grapple_b, -1.0, 1.0 );

setEffRotateKey( spep_1 + 0, grapple_b, -0 );
setEffRotateKey( spep_1 + 276, grapple_b, -0 );

setEffAlphaKey( spep_1 + 0, grapple_b, 255 );
setEffAlphaKey( spep_1 + 276 - 2, grapple_b, 255 );
setEffAlphaKey( spep_1 + 276 - 1, grapple_b, 255 );
setEffAlphaKey( spep_1 + 276, grapple_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 89, 1, 0 );
setDisp( spep_1 + 125, 1, 1 );
setDisp( spep_1 + 276, 1, 0 );

changeAnime( spep_1 + 0, 1, 106 );
changeAnime( spep_1 + 17, 1, 108 );
changeAnime( spep_1 + 39, 1, 106 );
changeAnime( spep_1 + 63, 1, 108 );
changeAnime( spep_1 + 125, 1, 104 );
changeAnime( spep_1 + 131, 1, 108 );
changeAnime( spep_1 + 195, 1, 6 );

setMoveKey( spep_1 + 0, 1, -111.3, -82.9 , 0 );
setMoveKey( spep_1 + 2, 1, -111.6, -82.3 , 0 );
setMoveKey( spep_1 + 4, 1, -111.9, -81.6 , 0 );
setMoveKey( spep_1 + 6, 1, -112.2, -81 , 0 );
setMoveKey( spep_1 + 8, 1, -112.6, -80.3 , 0 );
setMoveKey( spep_1 + 10, 1, -112.9, -79.7 , 0 );
setMoveKey( spep_1 + 12, 1, -113.2, -79 , 0 );
setMoveKey( spep_1 + 14, 1, -113.5, -78.4 , 0 );
setMoveKey( spep_1 + 15, 1, -113.5, -78.4 , 0 );
setMoveKey( spep_1 + 16, 1, -113.5, -78.4 , 0 );
setMoveKey( spep_1 + 17, 1, -35.4, -35.1  , 0 );
setMoveKey( spep_1 + 18, 1, -35.4, -35.1 , 0 );
setMoveKey( spep_1 + 19, 1, -56.2, -74.2 , 0 );
setMoveKey( spep_1 + 20, 1, -56.2, -74.2 , 0 );
setMoveKey( spep_1 + 21, 1, -40.3, -38.5 , 0 );
setMoveKey( spep_1 + 22, 1, -40.3, -38.5 , 0 );
setMoveKey( spep_1 + 23, 1, 3.7, -53.1 , 0 );
setMoveKey( spep_1 + 24, 1, 3.7, -53.1 , 0 );
setMoveKey( spep_1 + 25, 1, 3.6, -62.8 , 0 );
setMoveKey( spep_1 + 26, 1, 3.6, -62.8 , 0 );
setMoveKey( spep_1 + 27, 1, -13.2, -58.7 , 0 );
setMoveKey( spep_1 + 28, 1, -13.2, -58.7 , 0 );
setMoveKey( spep_1 + 29, 1, 10.5, -57.6 , 0 );
setMoveKey( spep_1 + 30, 1, 10.5, -57.6 , 0 );
setMoveKey( spep_1 + 31, 1, 9.7, -42.6 , 0 );
setMoveKey( spep_1 + 32, 1, 9.7, -42.6 , 0 );
setMoveKey( spep_1 + 33, 1, -4.7, -42.6 , 0 );
setMoveKey( spep_1 + 34, 1, -4.7, -42.6 , 0 );
setMoveKey( spep_1 + 35, 1, -1.7, -48.6 , 0 );
setMoveKey( spep_1 + 36, 1, -1.7, -48.6 , 0 );
setMoveKey( spep_1 + 37, 1, 20.7, -37.6 , 0 );
setMoveKey( spep_1 + 38, 1, 20.7, -37.6 , 0 );
setMoveKey( spep_1 + 39, 1, 12.1, -18.9 , 0 );
setMoveKey( spep_1 + 40, 1, 12.1, -18.9 , 0 );
setMoveKey( spep_1 + 41, 1, -10.9, -36.3 , 0 );
setMoveKey( spep_1 + 42, 1, -10.9, -36.3 , 0 );
setMoveKey( spep_1 + 43, 1, 2.9, 18.5 , 0 );
setMoveKey( spep_1 + 44, 1, 2.9, 18.5 , 0 );
setMoveKey( spep_1 + 45, 1, 38.6, 14.1 , 0 );
setMoveKey( spep_1 + 46, 1, 38.6, 14.1 , 0 );
setMoveKey( spep_1 + 47, 1, 45.7, -4.2 , 0 );
setMoveKey( spep_1 + 48, 1, 45.7, -4.2 , 0 );
setMoveKey( spep_1 + 49, 1, 30.1, 8.5 , 0 );
setMoveKey( spep_1 + 50, 1, 30.1, 8.5 , 0 );
setMoveKey( spep_1 + 51, 1, 58.3, 10.7 , 0 );
setMoveKey( spep_1 + 52, 1, 58.3, 10.7 , 0 );
setMoveKey( spep_1 + 53, 1, 62.1, 25.5 , 0 );
setMoveKey( spep_1 + 54, 1, 62.1, 25.5 , 0 );
setMoveKey( spep_1 + 55, 1, 53.2, 21.6 , 0 );
setMoveKey( spep_1 + 56, 1, 53.2, 21.6 , 0 );
setMoveKey( spep_1 + 57, 1, 49.2, 21.6 , 0 );
setMoveKey( spep_1 + 58, 1, 49.2, 21.6 , 0 );
setMoveKey( spep_1 + 59, 1, 53.2, 17.6 , 0 );
setMoveKey( spep_1 + 60, 1, 53.2, 17.6 , 0 );
setMoveKey( spep_1 + 61, 1, 63.2, 24.6 , 0 );
setMoveKey( spep_1 + 62, 1, 63.2, 24.6 , 0 );
setMoveKey( spep_1 + 63, 1, 95.7, -19.9 , 0 );
setMoveKey( spep_1 + 64, 1, 95.7, -19.9 , 0 );
setMoveKey( spep_1 + 65, 1, 147, -48.5 , 0 );
setMoveKey( spep_1 + 66, 1, 147, -48.5 , 0 );
setMoveKey( spep_1 + 67, 1, 128.3, -67.1 , 0 );
setMoveKey( spep_1 + 68, 1, 128.3, -67.1 , 0 );
setMoveKey( spep_1 + 69, 1, 159.6, -65.6 , 0 );
setMoveKey( spep_1 + 70, 1, 159.6, -65.6 , 0 );
setMoveKey( spep_1 + 71, 1, 271, -48.2 , 0 );
setMoveKey( spep_1 + 72, 1, 271, -48.2 , 0 );
setMoveKey( spep_1 + 73, 1, 302.3, -58.8 , 0 );
setMoveKey( spep_1 + 74, 1, 302.3, -58.8 , 0 );
setMoveKey( spep_1 + 75, 1, 306.6, -51.3 , 0 );
setMoveKey( spep_1 + 76, 1, 306.6, -51.3 , 0 );
setMoveKey( spep_1 + 77, 1, 359.9, -49.9 , 0 );
setMoveKey( spep_1 + 78, 1, 359.9, -49.9 , 0 );
setMoveKey( spep_1 + 79, 1, 388.3, -33.5 , 0 );
setMoveKey( spep_1 + 80, 1, 388.3, -33.5 , 0 );
setMoveKey( spep_1 + 81, 1, 415.6, -37 , 0 );
setMoveKey( spep_1 + 82, 1, 415.6, -37 , 0 );
setMoveKey( spep_1 + 89, 1, 417.6, -37 , 0 );

setMoveKey( spep_1 + 125, 1, -6.4, 95 , 0 );
setMoveKey( spep_1 + 130, 1, -6.4, 95 , 0 );
setMoveKey( spep_1 + 131, 1, 31.6, 29.2 , 0 );
setMoveKey( spep_1 + 135, 1, 31.6, 29.2 , 0 );
setMoveKey( spep_1 + 137, 1, -2.4, 65.1 , 0 );
setMoveKey( spep_1 + 138, 1, -2.4, 65.1 , 0 );
setMoveKey( spep_1 + 139, 1, -2.4, 64.7 , 0 );
setMoveKey( spep_1 + 140, 1, -2.4, 64.7 , 0 );
setMoveKey( spep_1 + 141, 1, -34.4, 76.3 , 0 );
setMoveKey( spep_1 + 142, 1, -34.4, 76.3 , 0 );
setMoveKey( spep_1 + 143, 1, -14.3, 54.6 , 0 );
setMoveKey( spep_1 + 144, 1, -14.3, 54.6 , 0 );
setMoveKey( spep_1 + 145, 1, -2.3, 73.4 , 0 );
setMoveKey( spep_1 + 146, 1, -2.3, 73.4 , 0 );
setMoveKey( spep_1 + 147, 1, 5.2, 40.8 , 0 );
setMoveKey( spep_1 + 148, 1, 5.2, 40.8 , 0 );
setMoveKey( spep_1 + 149, 1, -22, 49 , 0 );
setMoveKey( spep_1 + 150, 1, -22, 49 , 0 );
setMoveKey( spep_1 + 151, 1, 4.8, 25.5 , 0 );
setMoveKey( spep_1 + 152, 1, 4.8, 25.5 , 0 );
setMoveKey( spep_1 + 153, 1, -16.4, 8.6 , 0 );
setMoveKey( spep_1 + 154, 1, -16.4, 8.6 , 0 );
setMoveKey( spep_1 + 155, 1, -10.5, -76.6 , 0 );
setMoveKey( spep_1 + 156, 1, -10.5, -76.6 , 0 );
setMoveKey( spep_1 + 157, 1, 0.4, -126.6 , 0 );
setMoveKey( spep_1 + 158, 1, 0.4, -126.6 , 0 );
setMoveKey( spep_1 + 159, 1, 0.7, -159.3 , 0 );
setMoveKey( spep_1 + 160, 1, 0.7, -159.3 , 0 );
setMoveKey( spep_1 + 161, 1, -3.9, -162.8 , 0 );
setMoveKey( spep_1 + 162, 1, -3.9, -162.8 , 0 );
setMoveKey( spep_1 + 163, 1, -4, -165.9 , 0 );
setMoveKey( spep_1 + 164, 1, -4, -165.9 , 0 );
setMoveKey( spep_1 + 165, 1, -5, -169.8 , 0 );
setMoveKey( spep_1 + 166, 1, -5, -169.8 , 0 );
setMoveKey( spep_1 + 167, 1, -4.1, -170.6 , 0 );
setMoveKey( spep_1 + 168, 1, -4.1, -170.6 , 0 );
setMoveKey( spep_1 + 169, 1, -18.2, -104.5 , 0 );
setMoveKey( spep_1 + 170, 1, -18.2, -104.5 , 0 );
setMoveKey( spep_1 + 171, 1, -2.7, -88.2 , 0 );
setMoveKey( spep_1 + 172, 1, -2.7, -88.2 , 0 );
setMoveKey( spep_1 + 173, 1, 8.9, -64.2 , 0 );
setMoveKey( spep_1 + 174, 1, 8.9, -64.2 , 0 );
setMoveKey( spep_1 + 175, 1, 17.9, -43.9 , 0 );
setMoveKey( spep_1 + 176, 1, 17.9, -43.9 , 0 );
setMoveKey( spep_1 + 177, 1, 30.5, -34.4 , 0 );
setMoveKey( spep_1 + 178, 1, 30.5, -34.4 , 0 );
setMoveKey( spep_1 + 179, 1, 38.2, -15.6 , 0 );
setMoveKey( spep_1 + 180, 1, 38.2, -15.6 , 0 );
setMoveKey( spep_1 + 181, 1, 45.1, -3 , 0 );
setMoveKey( spep_1 + 182, 1, 45.1, -3 , 0 );
setMoveKey( spep_1 + 183, 1, 48.6, 2.6 , 0 );
setMoveKey( spep_1 + 184, 1, 48.6, 2.6 , 0 );
setMoveKey( spep_1 + 185, 1, 53, 13.8 , 0 );
setMoveKey( spep_1 + 186, 1, 53, 13.8 , 0 );
setMoveKey( spep_1 + 187, 1, 55.5, 24.7 , 0 );
setMoveKey( spep_1 + 188, 1, 55.5, 24.7 , 0 );
setMoveKey( spep_1 + 189, 1, 59.2, 32.6 , 0 );
setMoveKey( spep_1 + 190, 1, 59.2, 32.6 , 0 );
setMoveKey( spep_1 + 191, 1, 60.2, 41.6 , 0 );
setMoveKey( spep_1 + 192, 1, 60.2, 41.6 , 0 );
setMoveKey( spep_1 + 193, 1, 61.8, 47 , 0 );
setMoveKey( spep_1 + 194, 1, 61.8, 47 , 0 );
setMoveKey( spep_1 + 195, 1, -17.1, -34 , 0 );
setMoveKey( spep_1 + 196, 1, -17.1, -34 , 0 );
setMoveKey( spep_1 + 197, 1, -12.6, -33 , 0 );
setMoveKey( spep_1 + 198, 1, -12.6, -33 , 0 );
setMoveKey( spep_1 + 199, 1, -15.1, -45.3 , 0 );
setMoveKey( spep_1 + 200, 1, -15.1, -45.3 , 0 );
setMoveKey( spep_1 + 201, 1, -25.1, -29.3 , 0 );
setMoveKey( spep_1 + 202, 1, -25.1, -29.3 , 0 );
setMoveKey( spep_1 + 203, 1, -13.1, -42 , 0 );
setMoveKey( spep_1 + 204, 1, -13.1, -42 , 0 );
setMoveKey( spep_1 + 205, 1, -10.7, -33 , 0 );
setMoveKey( spep_1 + 206, 1, -10.7, -33 , 0 );
setMoveKey( spep_1 + 207, 1, -23.1, -43.2 , 0 );
setMoveKey( spep_1 + 208, 1, -23.1, -43.2 , 0 );
setMoveKey( spep_1 + 209, 1, -25.1, -33.4 , 0 );
setMoveKey( spep_1 + 210, 1, -25.1, -33.4 , 0 );
setMoveKey( spep_1 + 211, 1, -16.4, -38 , 0 );
setMoveKey( spep_1 + 212, 1, -16.4, -38 , 0 );
setMoveKey( spep_1 + 213, 1, -13.7, -33 , 0 );
setMoveKey( spep_1 + 214, 1, -13.7, -33 , 0 );
setMoveKey( spep_1 + 215, 1, -15.5, -56.4 , 0 );
setMoveKey( spep_1 + 216, 1, -15.5, -56.4 , 0 );
setMoveKey( spep_1 + 217, 1, -29.1, -32.2 , 0 );
setMoveKey( spep_1 + 218, 1, -29.1, -32.2 , 0 );
setMoveKey( spep_1 + 219, 1, -13.1, -42 , 0 );
setMoveKey( spep_1 + 220, 1, -13.1, -42 , 0 );
setMoveKey( spep_1 + 221, 1, -10.8, -33 , 0 );
setMoveKey( spep_1 + 222, 1, -10.8, -33 , 0 );
setMoveKey( spep_1 + 223, 1, -20.1, -41.8 , 0 );
setMoveKey( spep_1 + 224, 1, -20.1, -41.8 , 0 );
setMoveKey( spep_1 + 276, 1, -17.1, -33 , 0 );

setScaleKey( spep_1 + 0, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 16, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 17, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 38, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 39, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 63, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 64, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 89, 1, 1.07, 1.07 );

setScaleKey( spep_1 + 125, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 140, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 141, 1, 1.93, 1.93 );
setScaleKey( spep_1 + 142, 1, 1.93, 1.93 );
setScaleKey( spep_1 + 143, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 144, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 145, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 146, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 147, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 148, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 149, 1, 1.71, 1.71 );
setScaleKey( spep_1 + 150, 1, 1.71, 1.71 );
setScaleKey( spep_1 + 151, 1, 1.53, 1.53 );
setScaleKey( spep_1 + 152, 1, 1.53, 1.53 );
setScaleKey( spep_1 + 153, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 154, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 155, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 156, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 157, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 158, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 159, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 160, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 161, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 162, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 163, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 164, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 165, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 168, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 169, 1, 0.61, 0.61 );
setScaleKey( spep_1 + 194, 1, 0.61, 0.61 );
setScaleKey( spep_1 + 195, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 276, 1, 0.54, 0.54 );

setRotateKey( spep_1 + 0, 1, -48.5 );
setRotateKey( spep_1 + 16, 1, -48.5 );
setRotateKey( spep_1 + 17, 1, 3.7 );
setRotateKey( spep_1 + 38, 1, 3.7 );
setRotateKey( spep_1 + 39, 1, -42.6 );
setRotateKey( spep_1 + 63, 1, -42.6 );
setRotateKey( spep_1 + 64, 1, 3.7 );
setRotateKey( spep_1 + 89, 1, 3.7 );

setRotateKey( spep_1 + 125, 1, 0 );
setRotateKey( spep_1 + 194, 1, 0 );
setRotateKey( spep_1 + 195, 1, 66.5 );
setRotateKey( spep_1 + 276, 1, 66.5 );

setBlendColor( spep_1 + 195, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_1 + 196, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_1 + 276, 1, 3, 0, 0, 0, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 276 + 2, 0, 0, 0, 0, 255);

-- ** 音 ** --
--ラッシュ
SE022 = playSeVer2( spep_1 + 12, 1003, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_1 + 12, 1009, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 16, 1110, "", 0, 0, 0, -1);

--ラッシュ
SE025 = playSeVer2( spep_1 + 28, 1110, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_1 + 28, 1010, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 62, 1187, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_1 + 62, 1190, "", 0, 0, 0, -1);

--向かってくる
SE029 = playSeVer2( spep_1 + 86, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE029, 78 );

--パンチ
SE030 = playSeVer2( spep_1 + 130, 1187, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 130, 1120, "", 0, 0, 0, -1);

--岩に突っ込んでく
SE032 = playSeVer2( spep_1 + 158, 1258, "",spep_1 + 212, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 158, SE032, 63 );
SE033 = playSeVer2( spep_1 + 162, 1168, "",spep_1 + 222, 0, 28, -1);
setSeVolumeByWorkId( spep_1 + 162, SE033, 84 );

--岩激突
SE034 = playSeVer2( spep_1 + 192, 1159, "",spep_1 + 292, 0, 18, -1);
SE035 = playSeVer2( spep_1 + 208, 1024, "",spep_1 + 292, 0, 18, -1);
SE036 = playSeVer2( spep_1 + 212, 1067, "",spep_1 + 292, 0, 18, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 276;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--気弾溜め
SE038 = playSeVer2( spep_2 + 86, 1252, "",spep_2 + 162, 0, 20, -1);
SE039 = playSeVer2( spep_2 + 86, 1253, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 86, 1274, "",spep_2 + 162, 0, 20, -1);
SE041 = playSeVer2( spep_2 + 86, 1282, "",spep_2 + 162, 0, 20, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 光弾発射(258F)
------------------------------------------------------

-- ** エフェクト等 ** --
beam_f = entryEffect( spep_3 + 0, SP_05r, 0x100, -1, 0, 0, 0 ); --光弾発射 ef_003
setEffMoveKey( spep_3 + 0, beam_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 258, beam_f, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, beam_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 258, beam_f, -1.0, 1.0 );

setEffRotateKey( spep_3 + 0, beam_f, -0 );
setEffRotateKey( spep_3 + 258, beam_f, -0 );

setEffAlphaKey( spep_3 + 0, beam_f, 255 );
setEffAlphaKey( spep_3 + 258, beam_f, 255 );

beam_b = entryEffect( spep_3 + 0, SP_06r, 0x80, -1, 0, 0, 0 ); --光弾発射 裏 ef_003_back
setEffMoveKey( spep_3 + 0, beam_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 258, beam_b, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, beam_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 258, beam_b, -1.0, 1.0 );

setEffRotateKey( spep_3 + 0, beam_b, -0 );
setEffRotateKey( spep_3 + 258, beam_b, -0 );

setEffAlphaKey( spep_3 + 0, beam_b, 255 );
setEffAlphaKey( spep_3 + 258, beam_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 35, 1, 1 );
setDisp( spep_3 + 52, 1, 0 );

changeAnime( spep_3 + 35, 1, 106 );

setMoveKey( spep_3 + 35, 1, 150.3, -119.4 , 0 );
setMoveKey( spep_3 + 38, 1, 153.8, -119.4 , 0 );
setMoveKey( spep_3 + 40, 1, 157.3, -119.4 , 0 );
setMoveKey( spep_3 + 42, 1, 160.8, -119.4 , 0 );
setMoveKey( spep_3 + 44, 1, 164.3, -119.4 , 0 );
setMoveKey( spep_3 + 46, 1, 167.8, -119.4 , 0 );
setMoveKey( spep_3 + 48, 1, 171.3, -119.4 , 0 );
setMoveKey( spep_3 + 50, 1, 174.8, -119.4 , 0 );
setMoveKey( spep_3 + 52, 1, 178.3, -119.4 , 0 );

setScaleKey( spep_3 + 35, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 52, 1, 1.49, 1.49 );

setRotateKey( spep_3 + 35, 1, -30.7 );
setRotateKey( spep_3 + 52, 1, -30.7 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 258 + 2, 0, 0, 0, 0, 255); 

-- ** 音 ** --
--気弾発射
SE042 = playSeVer2( spep_3 + 44, 1212, "", 0, 6, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 44, SE042, 81 );
setStartTimeMs( SE042,  200 );
SE043 = playSeVer2( spep_3 + 44, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 44, SE043, 68 );
SE044 = playSeVer2( spep_3 + 44, 1146, "", 0, 0, 0, -1);

--気弾飛んでいく
SE045 = playSeVer2( spep_3 + 90, 1044, "", 0, 26, 0, -1);
setSeVolumeByWorkId( spep_3 + 90, SE045, 200 );
SE046 = playSeVer2( spep_3 + 86, 1161, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_3 + 96, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 96, SE047, 82 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 148 );
endPhase( spep_3 + 248 );

end