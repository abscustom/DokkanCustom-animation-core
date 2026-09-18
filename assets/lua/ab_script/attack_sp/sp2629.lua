--1027620:UR_超サイヤ人3孫悟空_必殺技：渾身のかめはめ波
--sp_effect_a1_00419
--sp2629

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162566;	--カードカットインまで	ef_001
SP_02 = 162568;	--カードカットイン後　前面	ef_002
SP_02b = 162569;	--カードカットイン後　背面	ef_002b

--エフェクト(てき)
SP_01r = 162567;	--カードカットインまで　敵側	ef_001r
SP_02r = 162570;	--カードカットイン後　前面　敵側	ef_002r


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
-- changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
-- setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

-- setMoveKey(   0,   1,    0, -5000,   0 );
-- setMoveKey(   1,   1,    0, -5000,   0 );
-- setMoveKey(   2,   1,    0, -5000,   0 );
-- setMoveKey(   3,   1,    0, -5000,   0 );
-- setMoveKey(   4,   1,    0, -5000,   0 );
-- setMoveKey(   5,   1,    0, -5000,   0 );
-- setMoveKey(   6,   1,    0, -5000,   0 );
-- setScaleKey(  0,   1,  1.6, 1.6 );
-- setScaleKey(  1,   1,  1.6, 1.6 );
-- setScaleKey(  2,   1,  1.6, 1.6 );
-- setScaleKey(  3,   1,  1.6, 1.6 );
-- setScaleKey(  4,   1,  1.6, 1.6 );
-- setScaleKey(  5,   1,  1.6, 1.6 );
-- setScaleKey(  6,   1,  1.6, 1.6 );
-- setRotateKey( 0,   1,  0 );
-- setRotateKey( 1,   1,  0 );
-- setRotateKey( 2,   1,  0 );
-- setRotateKey( 3,   1,  0 );
-- setRotateKey( 4,   1,  0 );
-- setRotateKey( 5,   1,  0 );
-- setRotateKey( 6,   1,  0 );

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_c = spep_0 + 476;
        spep_1 = spep_c + 94;

        timing_skip = 4;

        skipFrame(0, spep_1 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --気弾発射2
        SE022 = playSeVer2( spep_1 + 4 + 3, 1427, "",spep_1 + 126, 0, 38, -1);

    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カードカットインまで
-------------------------------------------------


MAX_FRAME_0 = 476;


-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 52;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
mx1 = -200;

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 30 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 316.5 + mx1, -63.3 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 317.5 + mx1, -63.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 317.5 + mx1, -63.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 320.8 + mx1, -63.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 320.8 + mx1, -63.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 326.8 + mx1, -64.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 326.8 + mx1, -64.8 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 336.1 + mx1, -66.2 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 336.1 + mx1, -66.2 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 349.5 + mx1, -68 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 349.5 + mx1, -68 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 368.1 + mx1, -70.5 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 368.1 + mx1, -70.5 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 394 + mx1, -73.7 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 394 + mx1, -73.7 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 430.5 + mx1, -77.7 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 430.5 + mx1, -77.7 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 483.3 + mx1, -82.5 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 483.3 + mx1, -82.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 556.1 + mx1, -88.9 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 556.1 + mx1, -88.9 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 646.9 + mx1, -98.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 646.9 + mx1, -98.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 767.2 + mx1, -113.6 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 767.2 + mx1, -113.6 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 962 + mx1, -140.8 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 962 + mx1, -140.8 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 1396.1 + mx1, -204.9 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 1396.1 + mx1, -204.9 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 1775.8 + mx1, -259.6 , 0 );

setScaleKey( spep_0 + 0, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 5.53, 5.53 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 5.53, 5.53 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 7.56, 7.56 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 7.56, 7.56 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 10.35, 10.35 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 10.35, 10.35 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 12.79, 12.79 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 30 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--ズーム
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, 0.5);
setTimeStretch( SE001, 0.7, 30, 4 );
SE002 = playSeVer2( spep_0 + 30, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE002, 67 );

--構える
SE004 = playSeVer2( spep_0 + 66, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 66, 1233, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 78, 1006, "", 0, 0, 0, -1);

--空力音
SE007 = playSeVer2( spep_0 + 124, 1175, "",spep_0 + 334, 0, 136, -1);
setSeVolumeByWorkId( spep_0 + 124, SE007, 41 );

--構え
SE008 = playSeVer2( spep_0 + 162, 1116, "",spep_0 + 198, 0, 18, -1);
SE009 = playSeVer2( spep_0 + 162, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 162, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );

--かめはめ波溜め
SE010 = playSeVer2( spep_0 + 186, 1209, "", spep_0 + 340, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 186, SE010, 77 );
SE011 = playSeVer2( spep_0 + 186, 1210, "",spep_0 + 390, 0, 20, 0.5);

--気ダメ
SE012 = playSeVer2( spep_0 + 222, 1035, "", 0, 0, 0, -1);

--超サイヤ人２
SE013 = playSeVer2( spep_0 + 260, 8, "", spep_0 + 340, 0, 10, -1);
SE014 = playSeVer2( spep_0 + 260, 1043, "", 0, 0, 0, -1);

--超サイヤ人３
SE015 = playSeVer2( spep_0 + 344, 1035, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 344, 1298, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 344, SE016, 166 );

--気弾発射
SE017 = playSeVer2( spep_0 + 390, 1027, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 390, 1284, "",spep_0 + 488, 0, 14, -1);
SE019 = playSeVer2( spep_0 + 390, 1213, "",spep_0 + 488, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 390, SE019, 80 );
SE020 = playSeVer2( spep_0 + 390, 1146, "",spep_0 + 490, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 390, SE020, 80 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --476F


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- カードカットイン後
-------------------------------------------------

MAX_FRAME_1 = 318;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 前面	ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 背面	ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 + 132 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 0, 1, 278, -12.7 , 0 );
setMoveKey( spep_1 + 2 + OFFSET_X, 1, 275.5, -12.7 , 0 );
setMoveKey( spep_1 + 3 + OFFSET_X, 1, 275.5, -12.7 , 0 );
setMoveKey( spep_1 + 4 + OFFSET_X, 1, 272.9, -12.7 , 0 );
setMoveKey( spep_1 + 5 + OFFSET_X, 1, 272.9, -12.7 , 0 );
setMoveKey( spep_1 + 6 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 7 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 8 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 9 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 10 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 11 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 12 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 13 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 14 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 15 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 16 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 17 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 18 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 19 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 20 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 21 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 22 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 23 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 24 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 25 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 26 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 27 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 28 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 29 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 33 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 35 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 37 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 41 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 43 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 45 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 47 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 49 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 51 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 53 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 55 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 57 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, 272.9, -12.7 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_X, 1, 272.9, -12.7 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 56.3, 62.7 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, 56.3, 62.7 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 68.3, 55.5 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, 68.3, 55.5 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 57.3, 60.5 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 57.3, 60.5 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 56.3, 49.3 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 56.3, 49.3 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 65.4, 55.3 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 65.4, 55.3 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 57.1, 60.1 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 57.1, 60.1 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 65.2, 55 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 65.2, 55 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 55.9, 61.9 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 55.9, 61.9 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 67.8, 54.4 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 67.8, 54.4 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 56.6, 59.1 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 56.6, 59.1 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 55.4, 47.6 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 55.4, 47.6 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 64.4, 53.2 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 64.4, 53.2 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 54.9, 59.8 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 54.9, 59.8 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 54.6, 59.2 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 54.6, 59.2 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 66.2, 51.3 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 66.2, 51.3 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 54.8, 55.4 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 54.8, 55.4 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 62.5, 49.3 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 62.5, 49.3 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 52.7, 55.3 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 52.7, 55.3 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 63.9, 46.6 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 63.9, 46.6 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 52, 49.8 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 52, 49.8 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 49.9, 36.4 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 49.9, 36.4 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 57.6, 39.4 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 57.6, 39.4 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 55.4, 34.9 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 55.4, 34.9 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 41.2, 31.9 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 41.2, 31.9 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 47.5, 13.2 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 47.5, 13.2 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 33.1, 11.2 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 33.1, 11.2 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 30.4, -3.2 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 30.4, -3.2 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 38.9, 1.4 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 38.9, 1.4 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 38.6, 0.9 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 38.6, 0.9 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 29.5, 8.2 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 29.5, 8.2 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 43.8, 2.5 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 43.8, 2.5 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 35, 8.8 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 35, 8.8 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 36.3, -0.9 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 36.3, -0.9 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 47.8, 6.6 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 47.8, 6.6 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 47.2, 6.1 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 47.2, 6.1 , 0 );

setScaleKey( spep_1 + 0, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 79 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 80 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 87 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 88 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 93 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 94 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 105 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 106 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 107 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 111 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 113 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 123 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 124 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 129 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 130 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_1 + 131 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_1 + 132 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 148 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 150 + OFFSET_X, 1, 1.92, 1.92 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 79 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 80 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_1 + 119 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_1 + 120 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_1 + 127 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_1 + 128 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_1 + 134 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_1 + 139 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_1 + 140 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_1 + 141 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_1 + 142 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_1 + 143 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_1 + 144 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_1 + 145 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_1 + 146 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_1 + 147 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_1 + 148 + OFFSET_X, 1, -16 );
setRotateKey( spep_1 + 150 + OFFSET_X, 1, -16 );

setBlendColor( spep_1 + 134 + OFFSET_X, 1, 3, 0, 0, 0, 0.7);
setBlendColor( spep_1 + 138 + OFFSET_X, 1, 3, 0, 0, 0, 1);
setBlendColor( spep_1 + 150 + OFFSET_X, 1, 3, 0, 0, 0, 1);
setBlendColor( spep_1 + 151 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--気弾発射2
SE022 = playSeVer2( spep_1 + 0, 1427, "",spep_1 + 126, 0, 38, -1);
SE023 = playSeVer2( spep_1 + 10, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 10, SE023, 78 );
SE024 = playSeVer2( spep_1 + 10, 1213, "",spep_1 + 196, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 10, SE024, 65 );
SE025 = playSeVer2( spep_1 + 10, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 10, SE025, 62 );
SE026 = playSeVer2( spep_1 + 10, 1133, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 10, SE026, 86 );
SE027 = playSeVer2( spep_1 + 10, 1285, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 10, SE027, 85 );

--気弾飛んでいく
SE028 = playSeVer2( spep_1 + 22, 1215, "",spep_1 + 180, 78, 40, 0.6);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0) 
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE025, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--気弾飛んでいく
SE029 = playSeVer2( spep_1 + 54, 1211, "",spep_1 + 184, 0, 40, -1);
setSeVolumeByWorkId( spep_1 + 54, SE029, 191 );
SE030 = playSeVer2( spep_1 + 54, 1161, "",spep_1 + 180, 0, 38, -1);

--爆発
SE031 = playSeVer2( spep_1 + 134, 1011, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_1 + 158, 1024, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_1 + 172, 1159, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_1 + 226, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 214); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 318F-4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カードカットインまで
-------------------------------------------------


MAX_FRAME_0 = 476;


-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 52;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
mx1 = -200;

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 30 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 316.5 + mx1, -63.3 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 317.5 + mx1, -63.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 317.5 + mx1, -63.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 320.8 + mx1, -63.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 320.8 + mx1, -63.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 326.8 + mx1, -64.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 326.8 + mx1, -64.8 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 336.1 + mx1, -66.2 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 336.1 + mx1, -66.2 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 349.5 + mx1, -68 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 349.5 + mx1, -68 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 368.1 + mx1, -70.5 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 368.1 + mx1, -70.5 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 394 + mx1, -73.7 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 394 + mx1, -73.7 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 430.5 + mx1, -77.7 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 430.5 + mx1, -77.7 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 483.3 + mx1, -82.5 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 483.3 + mx1, -82.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 556.1 + mx1, -88.9 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 556.1 + mx1, -88.9 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 646.9 + mx1, -98.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 646.9 + mx1, -98.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 767.2 + mx1, -113.6 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 767.2 + mx1, -113.6 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 962 + mx1, -140.8 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 962 + mx1, -140.8 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 1396.1 + mx1, -204.9 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 1396.1 + mx1, -204.9 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 1775.8 + mx1, -259.6 , 0 );

setScaleKey( spep_0 + 0, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 5.53, 5.53 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 5.53, 5.53 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 7.56, 7.56 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 7.56, 7.56 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 10.35, 10.35 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 10.35, 10.35 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 12.79, 12.79 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 30 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--ズーム
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, 0.5);
setTimeStretch( SE001, 0.7, 30, 4 );
SE002 = playSeVer2( spep_0 + 30, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE002, 67 );

--構える
SE004 = playSeVer2( spep_0 + 66, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 66, 1233, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 78, 1006, "", 0, 0, 0, -1);

--空力音
SE007 = playSeVer2( spep_0 + 124, 1175, "",spep_0 + 334, 0, 136, -1);
setSeVolumeByWorkId( spep_0 + 124, SE007, 41 );

--構え
SE008 = playSeVer2( spep_0 + 162, 1116, "",spep_0 + 198, 0, 18, -1);
SE009 = playSeVer2( spep_0 + 162, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 162, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );

--かめはめ波溜め
SE010 = playSeVer2( spep_0 + 186, 1209, "", spep_0 + 340, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 186, SE010, 77 );
SE011 = playSeVer2( spep_0 + 186, 1210, "",spep_0 + 390, 0, 20, 0.5);

--気ダメ
SE012 = playSeVer2( spep_0 + 222, 1035, "", 0, 0, 0, -1);

--超サイヤ人２
SE013 = playSeVer2( spep_0 + 260, 8, "", spep_0 + 340, 0, 10, -1);
SE014 = playSeVer2( spep_0 + 260, 1043, "", 0, 0, 0, -1);

--超サイヤ人３
SE015 = playSeVer2( spep_0 + 344, 1035, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 344, 1298, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 344, SE016, 166 );

--気弾発射
SE017 = playSeVer2( spep_0 + 390, 1027, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 390, 1284, "",spep_0 + 488, 0, 14, -1);
SE019 = playSeVer2( spep_0 + 390, 1213, "",spep_0 + 488, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 390, SE019, 80 );
SE020 = playSeVer2( spep_0 + 390, 1146, "",spep_0 + 490, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 390, SE020, 80 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --476F


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- カードカットイン後
-------------------------------------------------

MAX_FRAME_1 = 318;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 前面	ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 背面	ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 + 132 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 0, 1, 278, -12.7 , 0 );
setMoveKey( spep_1 + 2 + OFFSET_X, 1, 275.5, -12.7 , 0 );
setMoveKey( spep_1 + 3 + OFFSET_X, 1, 275.5, -12.7 , 0 );
setMoveKey( spep_1 + 4 + OFFSET_X, 1, 272.9, -12.7 , 0 );
setMoveKey( spep_1 + 5 + OFFSET_X, 1, 272.9, -12.7 , 0 );
setMoveKey( spep_1 + 6 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 7 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 8 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 9 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 10 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 11 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 12 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 13 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 14 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 15 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 16 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 17 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 18 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 19 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 20 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 21 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 22 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 23 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 24 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 25 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 26 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 27 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 28 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 29 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 33 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 35 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 37 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 41 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 43 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 45 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 47 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 49 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 51 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 53 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 55 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 57 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, 272.9, -12.7 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_X, 1, 272.9, -12.7 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, 272.9, -18.8 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, 282.1, -12.7 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, 272.9, -5.6 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 284.9, -12.7 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 273.9, -7.7 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 56.3, 62.7 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, 56.3, 62.7 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 68.3, 55.5 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, 68.3, 55.5 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 57.3, 60.5 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 57.3, 60.5 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 56.3, 49.3 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 56.3, 49.3 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 65.4, 55.3 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 65.4, 55.3 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 57.1, 60.1 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 57.1, 60.1 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 65.2, 55 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 65.2, 55 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 55.9, 61.9 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 55.9, 61.9 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 67.8, 54.4 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 67.8, 54.4 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 56.6, 59.1 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 56.6, 59.1 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 55.4, 47.6 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 55.4, 47.6 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 64.4, 53.2 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 64.4, 53.2 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 54.9, 59.8 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 54.9, 59.8 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 54.6, 59.2 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 54.6, 59.2 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 66.2, 51.3 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 66.2, 51.3 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 54.8, 55.4 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 54.8, 55.4 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 62.5, 49.3 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 62.5, 49.3 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 52.7, 55.3 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 52.7, 55.3 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 63.9, 46.6 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 63.9, 46.6 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 52, 49.8 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 52, 49.8 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 49.9, 36.4 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 49.9, 36.4 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 57.6, 39.4 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 57.6, 39.4 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 55.4, 34.9 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 55.4, 34.9 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 41.2, 31.9 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 41.2, 31.9 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 47.5, 13.2 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 47.5, 13.2 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 33.1, 11.2 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 33.1, 11.2 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 30.4, -3.2 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 30.4, -3.2 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 38.9, 1.4 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 38.9, 1.4 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 38.6, 0.9 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 38.6, 0.9 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 29.5, 8.2 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 29.5, 8.2 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 43.8, 2.5 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 43.8, 2.5 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 35, 8.8 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 35, 8.8 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 36.3, -0.9 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 36.3, -0.9 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 47.8, 6.6 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 47.8, 6.6 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 47.2, 6.1 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 47.2, 6.1 , 0 );

setScaleKey( spep_1 + 0, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 79 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 80 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 87 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 88 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 93 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 94 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 105 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 106 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 107 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 111 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 113 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 123 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 124 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 129 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 130 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_1 + 131 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_1 + 132 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 148 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 150 + OFFSET_X, 1, 1.92, 1.92 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 79 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 80 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_1 + 119 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_1 + 120 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_1 + 127 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_1 + 128 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_1 + 134 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_1 + 139 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_1 + 140 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_1 + 141 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_1 + 142 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_1 + 143 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_1 + 144 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_1 + 145 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_1 + 146 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_1 + 147 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_1 + 148 + OFFSET_X, 1, -16 );
setRotateKey( spep_1 + 150 + OFFSET_X, 1, -16 );

setBlendColor( spep_1 + 134 + OFFSET_X, 1, 3, 0, 0, 0, 0.7);
setBlendColor( spep_1 + 138 + OFFSET_X, 1, 3, 0, 0, 0, 1);
setBlendColor( spep_1 + 150 + OFFSET_X, 1, 3, 0, 0, 0, 1);
setBlendColor( spep_1 + 151 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--気弾発射2
SE022 = playSeVer2( spep_1 + 0, 1427, "",spep_1 + 126, 0, 38, -1);
SE023 = playSeVer2( spep_1 + 10, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 10, SE023, 78 );
SE024 = playSeVer2( spep_1 + 10, 1213, "",spep_1 + 196, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 10, SE024, 65 );
SE025 = playSeVer2( spep_1 + 10, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 10, SE025, 62 );
SE026 = playSeVer2( spep_1 + 10, 1133, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 10, SE026, 86 );
SE027 = playSeVer2( spep_1 + 10, 1285, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 10, SE027, 85 );

--気弾飛んでいく
SE028 = playSeVer2( spep_1 + 22, 1215, "",spep_1 + 180, 78, 40, 0.6);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0) 
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE025, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--気弾飛んでいく
SE029 = playSeVer2( spep_1 + 54, 1211, "",spep_1 + 184, 0, 40, -1);
setSeVolumeByWorkId( spep_1 + 54, SE029, 191 );
SE030 = playSeVer2( spep_1 + 54, 1161, "",spep_1 + 180, 0, 38, -1);

--爆発
SE031 = playSeVer2( spep_1 + 134, 1011, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_1 + 158, 1024, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_1 + 172, 1159, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_1 + 226, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 214); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 318F-4

end
