--1028600:UR_フリーザ(第一形態)_必殺技：デスビーム
--sp_effect_a3_00107
--sp2669

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162581;	--フリーザ登場	ef_001
SP_02 = 162582;	--ビーム発射	ef_002
SP_02b = 162584;	--ビーム発射　裏側	ef_002_back

--エフェクト(てき)
SP_02r = 162583;	--ビーム発射　敵側	ef_002_r
SP_02br = 162585;	--ビーム発射　敵側裏側	ef_002_back_r


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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- フリーザ登場
-------------------------------------------------


MAX_FRAME_0 = 268;


-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001 (演出上プライオリティ100に変更)
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
spep_x = spep_0 + 76;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -40, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -40, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -40, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 81 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 4.3, -8.2 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 4.2, -6.8 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 4.2, -6.8 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 4.1, -5.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 4.1, -5.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 4.1, -4.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 4.1, -4.6 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 4, -3.6 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 4, -3.6 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 4, -2.8 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 4, -2.8 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 3.9, -2.1 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 3.9, -2.1 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 3.9, -1.5 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 3.9, -1.5 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 3.9, -1 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 3.9, -1 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 3.9, -0.6 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 3.9, -0.6 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 3.8, -0.2 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 3.8, -0.2 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 3.8, 0.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 3.8, 0.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 3.8, 0.3 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 3.8, 0.3 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 3.8, 0.5 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 3.8, 0.5 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 3.8, 0.6 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 3.8, 0.6 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 3.8, 0.7 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 3.8, 0.7 , 0 );

setScaleKey( spep_0 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 0.54, 0.54 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 81 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--スカウター音
SE001 = playSeVer2( spep_0 + 0, 53, "",spep_0 + 54, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 110 );

--スカウター数値出る
SE002 = playSeVer2( spep_0 + 40, 28, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 40, SE002, 80 );
SE003 = playSeVer2( spep_0 + 44, 28, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 44, SE003, 80 );
SE004 = playSeVer2( spep_0 + 48, 28, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 48, SE004, 80 );
SE005 = playSeVer2( spep_0 + 52, 28, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 52, SE005, 80 );
SE006 = playSeVer2( spep_0 + 56, 28, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 56, SE006, 80 );
SE007 = playSeVer2( spep_0 + 60, 28, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 60, SE007, 80 );
SE008 = playSeVer2( spep_0 + 64, 99, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 64, SE008, 80 );

--スカウター数値出る
SE010 = playSeVer2( spep_0 + 68, 24, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE010, 73 );

--画面遷移
SE011 = playSeVer2( spep_0 + 82, 8, "", 0, 0, 0, -1);

--振りかぶる
SE012 = playSeVer2( spep_0 + 180, 1003, "", 0, 0, 0, -1);

--指をさす
SE013 = playSeVer2( spep_0 + 216, 1198, "", 0, 4, 0, -1);
setStartTimeMs( SE013,  367 );
SE014 = playSeVer2( spep_0 + 216, 1189, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 224, 1006, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 224, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE016, 141 );
SE017 = playSeVer2( spep_0 + 224, 1255, "",spep_0 + 274, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 224, SE017, 126 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --268F


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 1);


-------------------------------------------------
-- ビーム発射
-------------------------------------------------

MAX_FRAME_1 = 258;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002_back
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 48 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 291.1, 499.1 , 0 );
setMoveKey( spep_1 + 2 + OFFSET_X, 1, 293.4, 501.4 , 0 );
setMoveKey( spep_1 + 3 + OFFSET_X, 1, 293.4, 501.4 , 0 );
setMoveKey( spep_1 + 4 + OFFSET_X, 1, 295.6, 503.6 , 0 );
setMoveKey( spep_1 + 5 + OFFSET_X, 1, 295.6, 503.6 , 0 );
setMoveKey( spep_1 + 6 + OFFSET_X, 1, 297.9, 505.9 , 0 );
setMoveKey( spep_1 + 7 + OFFSET_X, 1, 297.9, 505.9 , 0 );
setMoveKey( spep_1 + 8 + OFFSET_X, 1, 300.1, 508.1 , 0 );
setMoveKey( spep_1 + 9 + OFFSET_X, 1, 300.1, 508.1 , 0 );
setMoveKey( spep_1 + 10 + OFFSET_X, 1, 302.4, 510.4 , 0 );
setMoveKey( spep_1 + 11 + OFFSET_X, 1, 302.4, 510.4 , 0 );
setMoveKey( spep_1 + 12 + OFFSET_X, 1, 304.6, 512.6 , 0 );
setMoveKey( spep_1 + 13 + OFFSET_X, 1, 304.6, 512.6 , 0 );
setMoveKey( spep_1 + 14 + OFFSET_X, 1, 306.9, 514.9 , 0 );
setMoveKey( spep_1 + 15 + OFFSET_X, 1, 306.9, 514.9 , 0 );
setMoveKey( spep_1 + 16 + OFFSET_X, 1, 309.1, 517.1 , 0 );
setMoveKey( spep_1 + 17 + OFFSET_X, 1, 309.1, 517.1 , 0 );
setMoveKey( spep_1 + 18 + OFFSET_X, 1, 290.9, 480.3 , 0 );
setMoveKey( spep_1 + 19 + OFFSET_X, 1, 290.9, 480.3 , 0 );
setMoveKey( spep_1 + 20 + OFFSET_X, 1, 255.9, 508.2 , 0 );
setMoveKey( spep_1 + 21 + OFFSET_X, 1, 255.9, 508.2 , 0 );
setMoveKey( spep_1 + 22 + OFFSET_X, 1, 271.1, 503 , 0 );
setMoveKey( spep_1 + 23 + OFFSET_X, 1, 271.1, 503 , 0 );
setMoveKey( spep_1 + 24 + OFFSET_X, 1, 288.9, 477.2 , 0 );
setMoveKey( spep_1 + 25 + OFFSET_X, 1, 288.9, 477.2 , 0 );
setMoveKey( spep_1 + 26 + OFFSET_X, 1, 262.3, 493.8 , 0 );
setMoveKey( spep_1 + 27 + OFFSET_X, 1, 262.3, 493.8 , 0 );
setMoveKey( spep_1 + 28 + OFFSET_X, 1, 271.6, 471.3 , 0 );
setMoveKey( spep_1 + 29 + OFFSET_X, 1, 271.6, 471.3 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, 257.5, 486.3 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_X, 1, 257.5, 486.3 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, 270.7, 478.7 , 0 );
setMoveKey( spep_1 + 33 + OFFSET_X, 1, 270.7, 478.7 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, 254.1, 455.2 , 0 );
setMoveKey( spep_1 + 35 + OFFSET_X, 1, 254.1, 455.2 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, 246.6, 470.8 , 0 );
setMoveKey( spep_1 + 37 + OFFSET_X, 1, 246.6, 470.8 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_X, 1, 262, 471.4 , 0 );
setMoveKey( spep_1 + 39 + OFFSET_X, 1, 262, 471.4 , 0 );
setMoveKey( spep_1 + 40 + OFFSET_X, 1, 247.6, 468 , 0 );
setMoveKey( spep_1 + 41 + OFFSET_X, 1, 247.6, 468 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, 246, 454.6 , 0 );
setMoveKey( spep_1 + 43 + OFFSET_X, 1, 246, 454.6 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 254.4, 462.1 , 0 );
setMoveKey( spep_1 + 45 + OFFSET_X, 1, 254.4, 462.1 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 238.6, 463.5 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 238.6, 463.5 , 0 );

setScaleKey( spep_1 + 0, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 17 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 18 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 19 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 20 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 23 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 24 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 29 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 30 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 43 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 44 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 48 + OFFSET_X, 1, 0.29, 0.29 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 48 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_1 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 156 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 100 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 90 + OFFSET_X, 1, 62.1, 54 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 62.1, 54 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 53.6, 53 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 53.6, 53 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 45.1, 52 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 45.1, 52 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 36.6, 51 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 36.6, 51 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 28.1, 50 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 28.1, 50 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 30.4, 48.6 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 30.4, 48.6 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 32.8, 47.2 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 32.8, 47.2 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 35.2, 45.7 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 35.2, 45.7 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 54.8, 53.2 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 54.8, 53.2 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 70.6, 59.4 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 70.6, 59.4 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 119.1, 45.2 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 119.1, 45.2 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 76.8, 86.9 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 76.8, 86.9 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 129.3, 102.8 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 129.3, 102.8 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 124.2, 50 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 124.2, 50 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 87.9, 93.9 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 87.9, 93.9 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 104.7, 59.3 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 104.7, 59.3 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 135.8, 93.4 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 135.8, 93.4 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 124.4, 66.4 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 124.4, 66.4 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 110.5, 82.3 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 110.5, 82.3 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 130.5, 86 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 130.5, 86 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 132.1, 76.6 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 132.1, 76.6 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 122.6, 75.2 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 122.6, 75.2 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 124, 85.7 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 124, 85.7 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 135.2, 79.2 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 135.2, 79.2 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 128.4, 86.7 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 128.4, 86.7 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 134.6, 87.1 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 134.6, 87.1 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 133.7, 83.6 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 133.7, 83.6 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 134.7, 84 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 134.7, 84 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 135.8, 84.4 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 135.8, 84.4 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 136.9, 84.8 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 136.9, 84.8 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 137.9, 85.2 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 137.9, 85.2 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 139, 85.6 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 139, 85.6 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 140.1, 86 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 140.1, 86 , 0 );

setScaleKey( spep_1 + 90 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 105 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 106 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 107 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 111 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 113 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 137 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 138 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 143 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 144 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 151 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 152 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 156 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_1 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 156 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--気弾発射前溜め
SE019 = playSeVer2( spep_1 + 0, 1282, "",spep_1 + 32, 4, 12, -1);
setSeVolumeByWorkId( spep_1 + 0, SE019, 81 );
setStartTimeMs( SE019,  167 );
SE020 = playSeVer2( spep_1 + 4, 1225, "",spep_1 + 44, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 4, SE020, 148 );

--気弾発射
SE021 = playSeVer2( spep_1 + 8, 1027, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 8, 1177, "",spep_1 + 132, 0, 26, -1);
setSeVolumeByWorkId( spep_1 + 8, SE022, 77 );
SE023 = playSeVer2( spep_1 + 8, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 8, SE023, 141 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
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
SE024 = playSeVer2( spep_1 + 40, 1430, "",spep_1 + 120, 0, 20, -1);
SE025 = playSeVer2( spep_1 + 40, 1318, "",spep_1 + 116, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 40, SE025, 141 );

--気弾ヒット
SE026 = playSeVer2( spep_1 + 88, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE026, 141 );
SE027 = playSeVer2( spep_1 + 88, 1011, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_1 + 88, 1179, "",spep_1 + 164, 0, 16, -1);

--爆発
SE029 = playSeVer2( spep_1 + 154, 1024, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 154, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 154); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 258F-4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- フリーザ登場
-------------------------------------------------


MAX_FRAME_0 = 268;


-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001 (演出上プライオリティ100に変更)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 76;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -40, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -40, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -40, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
mx0 = -10;

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 81 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 4.3 + mx0, -8.2 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 4.2 + mx0, -6.8 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 4.2 + mx0, -6.8 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 4.1 + mx0, -5.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 4.1 + mx0, -5.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 4.1 + mx0, -4.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 4.1 + mx0, -4.6 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 4 + mx0, -3.6 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 4 + mx0, -3.6 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 4 + mx0, -2.8 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 4 + mx0, -2.8 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 3.9 + mx0, -2.1 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 3.9 + mx0, -2.1 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 3.9 + mx0, -1.5 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 3.9 + mx0, -1.5 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 3.9 + mx0, -1 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 3.9 + mx0, -1 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 3.9 + mx0, -0.6 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 3.9 + mx0, -0.6 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 3.8 + mx0, -0.2 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 3.8 + mx0, -0.2 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 3.8 + mx0, 0.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 3.8 + mx0, 0.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 3.8 + mx0, 0.3 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 3.8 + mx0, 0.3 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 3.8 + mx0, 0.5 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 3.8 + mx0, 0.5 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 3.8 + mx0, 0.6 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 3.8 + mx0, 0.6 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 3.8 + mx0, 0.7 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 3.8 + mx0, 0.7 , 0 );

setScaleKey( spep_0 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 0.54, 0.54 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 81 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--スカウター音
SE001 = playSeVer2( spep_0 + 0, 53, "",spep_0 + 54, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 110 );

--スカウター数値出る
SE002 = playSeVer2( spep_0 + 40, 28, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 40, SE002, 80 );
SE003 = playSeVer2( spep_0 + 44, 28, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 44, SE003, 80 );
SE004 = playSeVer2( spep_0 + 48, 28, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 48, SE004, 80 );
SE005 = playSeVer2( spep_0 + 52, 28, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 52, SE005, 80 );
SE006 = playSeVer2( spep_0 + 56, 28, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 56, SE006, 80 );
SE007 = playSeVer2( spep_0 + 60, 28, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 60, SE007, 80 );
SE008 = playSeVer2( spep_0 + 64, 99, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 64, SE008, 80 );

--スカウター数値出る
SE010 = playSeVer2( spep_0 + 68, 24, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE010, 73 );

--画面遷移
SE011 = playSeVer2( spep_0 + 82, 8, "", 0, 0, 0, -1);

--振りかぶる
SE012 = playSeVer2( spep_0 + 180, 1003, "", 0, 0, 0, -1);

--指をさす
SE013 = playSeVer2( spep_0 + 216, 1198, "", 0, 4, 0, -1);
setStartTimeMs( SE013,  367 );
SE014 = playSeVer2( spep_0 + 216, 1189, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 224, 1006, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 224, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE016, 141 );
SE017 = playSeVer2( spep_0 + 224, 1255, "",spep_0 + 274, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 224, SE017, 126 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --268F


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 1);


-------------------------------------------------
-- ビーム発射
-------------------------------------------------

MAX_FRAME_1 = 258;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_002_back
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 48 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 291.1, 499.1 , 0 );
setMoveKey( spep_1 + 2 + OFFSET_X, 1, 293.4, 501.4 , 0 );
setMoveKey( spep_1 + 3 + OFFSET_X, 1, 293.4, 501.4 , 0 );
setMoveKey( spep_1 + 4 + OFFSET_X, 1, 295.6, 503.6 , 0 );
setMoveKey( spep_1 + 5 + OFFSET_X, 1, 295.6, 503.6 , 0 );
setMoveKey( spep_1 + 6 + OFFSET_X, 1, 297.9, 505.9 , 0 );
setMoveKey( spep_1 + 7 + OFFSET_X, 1, 297.9, 505.9 , 0 );
setMoveKey( spep_1 + 8 + OFFSET_X, 1, 300.1, 508.1 , 0 );
setMoveKey( spep_1 + 9 + OFFSET_X, 1, 300.1, 508.1 , 0 );
setMoveKey( spep_1 + 10 + OFFSET_X, 1, 302.4, 510.4 , 0 );
setMoveKey( spep_1 + 11 + OFFSET_X, 1, 302.4, 510.4 , 0 );
setMoveKey( spep_1 + 12 + OFFSET_X, 1, 304.6, 512.6 , 0 );
setMoveKey( spep_1 + 13 + OFFSET_X, 1, 304.6, 512.6 , 0 );
setMoveKey( spep_1 + 14 + OFFSET_X, 1, 306.9, 514.9 , 0 );
setMoveKey( spep_1 + 15 + OFFSET_X, 1, 306.9, 514.9 , 0 );
setMoveKey( spep_1 + 16 + OFFSET_X, 1, 309.1, 517.1 , 0 );
setMoveKey( spep_1 + 17 + OFFSET_X, 1, 309.1, 517.1 , 0 );
setMoveKey( spep_1 + 18 + OFFSET_X, 1, 290.9, 480.3 , 0 );
setMoveKey( spep_1 + 19 + OFFSET_X, 1, 290.9, 480.3 , 0 );
setMoveKey( spep_1 + 20 + OFFSET_X, 1, 255.9, 508.2 , 0 );
setMoveKey( spep_1 + 21 + OFFSET_X, 1, 255.9, 508.2 , 0 );
setMoveKey( spep_1 + 22 + OFFSET_X, 1, 271.1, 503 , 0 );
setMoveKey( spep_1 + 23 + OFFSET_X, 1, 271.1, 503 , 0 );
setMoveKey( spep_1 + 24 + OFFSET_X, 1, 288.9, 477.2 , 0 );
setMoveKey( spep_1 + 25 + OFFSET_X, 1, 288.9, 477.2 , 0 );
setMoveKey( spep_1 + 26 + OFFSET_X, 1, 262.3, 493.8 , 0 );
setMoveKey( spep_1 + 27 + OFFSET_X, 1, 262.3, 493.8 , 0 );
setMoveKey( spep_1 + 28 + OFFSET_X, 1, 271.6, 471.3 , 0 );
setMoveKey( spep_1 + 29 + OFFSET_X, 1, 271.6, 471.3 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, 257.5, 486.3 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_X, 1, 257.5, 486.3 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, 270.7, 478.7 , 0 );
setMoveKey( spep_1 + 33 + OFFSET_X, 1, 270.7, 478.7 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, 254.1, 455.2 , 0 );
setMoveKey( spep_1 + 35 + OFFSET_X, 1, 254.1, 455.2 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, 246.6, 470.8 , 0 );
setMoveKey( spep_1 + 37 + OFFSET_X, 1, 246.6, 470.8 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_X, 1, 262, 471.4 , 0 );
setMoveKey( spep_1 + 39 + OFFSET_X, 1, 262, 471.4 , 0 );
setMoveKey( spep_1 + 40 + OFFSET_X, 1, 247.6, 468 , 0 );
setMoveKey( spep_1 + 41 + OFFSET_X, 1, 247.6, 468 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, 246, 454.6 , 0 );
setMoveKey( spep_1 + 43 + OFFSET_X, 1, 246, 454.6 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 254.4, 462.1 , 0 );
setMoveKey( spep_1 + 45 + OFFSET_X, 1, 254.4, 462.1 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 238.6, 463.5 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 238.6, 463.5 , 0 );

setScaleKey( spep_1 + 0, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 17 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 18 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 19 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 20 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 23 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 24 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 29 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 30 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 43 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 44 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 48 + OFFSET_X, 1, 0.29, 0.29 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 48 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_1 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 156 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 100 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 90 + OFFSET_X, 1, 62.1, 54 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 62.1, 54 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 53.6, 53 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 53.6, 53 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 45.1, 52 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 45.1, 52 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 36.6, 51 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 36.6, 51 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 28.1, 50 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 28.1, 50 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 30.4, 48.6 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 30.4, 48.6 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 32.8, 47.2 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 32.8, 47.2 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 35.2, 45.7 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 35.2, 45.7 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 54.8, 53.2 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 54.8, 53.2 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 70.6, 59.4 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 70.6, 59.4 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 119.1, 45.2 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 119.1, 45.2 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 76.8, 86.9 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 76.8, 86.9 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 129.3, 102.8 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 129.3, 102.8 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 124.2, 50 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 124.2, 50 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 87.9, 93.9 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 87.9, 93.9 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 104.7, 59.3 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 104.7, 59.3 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 135.8, 93.4 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 135.8, 93.4 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 124.4, 66.4 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 124.4, 66.4 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 110.5, 82.3 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 110.5, 82.3 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 130.5, 86 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 130.5, 86 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 132.1, 76.6 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 132.1, 76.6 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 122.6, 75.2 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 122.6, 75.2 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 124, 85.7 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 124, 85.7 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 135.2, 79.2 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 135.2, 79.2 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 128.4, 86.7 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 128.4, 86.7 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 134.6, 87.1 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 134.6, 87.1 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 133.7, 83.6 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 133.7, 83.6 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 134.7, 84 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 134.7, 84 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 135.8, 84.4 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 135.8, 84.4 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 136.9, 84.8 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 136.9, 84.8 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 137.9, 85.2 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 137.9, 85.2 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 139, 85.6 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 139, 85.6 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 140.1, 86 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 140.1, 86 , 0 );

setScaleKey( spep_1 + 90 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 105 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 106 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 107 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 111 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 113 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 137 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 138 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 143 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 144 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 151 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 152 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 156 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_1 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 156 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--気弾発射前溜め
SE019 = playSeVer2( spep_1 + 0, 1282, "",spep_1 + 32, 4, 12, -1);
setSeVolumeByWorkId( spep_1 + 0, SE019, 81 );
setStartTimeMs( SE019,  167 );
SE020 = playSeVer2( spep_1 + 4, 1225, "",spep_1 + 44, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 4, SE020, 148 );

--気弾発射
SE021 = playSeVer2( spep_1 + 8, 1027, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 8, 1177, "",spep_1 + 132, 0, 26, -1);
setSeVolumeByWorkId( spep_1 + 8, SE022, 77 );
SE023 = playSeVer2( spep_1 + 8, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 8, SE023, 141 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
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
SE024 = playSeVer2( spep_1 + 40, 1430, "",spep_1 + 120, 0, 20, -1);
SE025 = playSeVer2( spep_1 + 40, 1318, "",spep_1 + 116, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 40, SE025, 141 );

--気弾ヒット
SE026 = playSeVer2( spep_1 + 88, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE026, 141 );
SE027 = playSeVer2( spep_1 + 88, 1011, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_1 + 88, 1179, "",spep_1 + 164, 0, 16, -1);

--爆発
SE029 = playSeVer2( spep_1 + 154, 1024, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 154, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 154); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 258F-4

end