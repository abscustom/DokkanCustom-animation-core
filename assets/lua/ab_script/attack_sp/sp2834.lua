--1030730:UR_ミスター・サタン_必殺技：サタンの怒り
--sp_effect_b1_00312
--sp2834

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(敵味方共通)
SP_01  = 163561;  --ef_001 登場
SP_02  = 163563;  --ef_002 連続攻撃
SP_02b = 163564;  --ef_002b 連続攻撃 裏側
SP_03  = 163565;  --ef_003 ガッ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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
--[[
setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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
]]
ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

adjustAttackerLabel( 0, 205);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場
-------------------------------------------------
MAX_FRAME_0 = 176;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 80;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 80 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 297, -81.1 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 301.5, -84.3 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 301.5, -84.3 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 306, -87.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 306, -87.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 310.4, -90.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 310.4, -90.8 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 314.9, -94.1 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 314.9, -94.1 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 319.4, -97.3 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 319.4, -97.3 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 323.9, -100.6 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 323.9, -100.6 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 328.4, -103.9 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 328.4, -103.9 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 332.9, -107.1 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 332.9, -107.1 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 337.4, -110.4 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 337.4, -110.4 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 341.9, -113.7 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 341.9, -113.7 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 346.5, -117 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 346.5, -117 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 351, -120.2 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 351, -120.2 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 355.5, -123.5 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 355.5, -123.5 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 360, -126.8 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 360, -126.8 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 364.6, -130.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 364.6, -130.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 369.1, -133.4 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 369.1, -133.4 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 373.7, -136.7 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 373.7, -136.7 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 378.2, -140 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 378.2, -140 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 382.8, -143.4 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 382.8, -143.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 387.4, -146.7 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 387.4, -146.7 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 391.9, -150 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 391.9, -150 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 396.5, -153.3 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 396.5, -153.3 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 401.1, -156.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 401.1, -156.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 405.7, -160 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 405.7, -160 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 410.3, -163.3 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 410.3, -163.3 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 414.9, -166.7 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 414.9, -166.7 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 419.5, -170 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 419.5, -170 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 424.1, -173.4 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 424.1, -173.4 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 428.7, -176.7 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 428.7, -176.7 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 433.4, -180.1 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 433.4, -180.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 438, -183.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 438, -183.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 442.6, -186.8 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 442.6, -186.8 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 447.3, -190.2 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 447.3, -190.2 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 451.9, -193.5 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 451.9, -193.5 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 456.5, -196.9 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 456.5, -196.9 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 461.2, -200.3 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 461.2, -200.3 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 465.9, -203.7 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 465.9, -203.7 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 470.5, -207.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 470.5, -207.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 475.2, -210.5 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 475.2, -210.5 , 0 );

setScaleKey( spep_0 + 0, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 5.27, 5.27 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 5.27, 5.27 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 5.31, 5.31 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 5.31, 5.31 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 5.35, 5.35 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 5.35, 5.35 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 5.37, 5.37 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 5.37, 5.37 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 5.43, 5.43 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 80 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 204, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--力む
SE002 = playSeVer2( spep_0 + 0, 1344, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 78 );

--入り
SE003 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 71 );

--集中線
SE004 = playSeVer2( spep_0 + 76, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE004, 79 );
SE005 = playSeVer2( spep_0 + 76, 1237, "",spep_0 + 202, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 76, SE005, 83 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --176f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--拳握る１
SE009 = playSeVer2( spep_1 + 80, 1257, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 84, 1264, "",spep_1 + 160, 10, 34, -1);
setSeVolumeByWorkId( spep_1 + 84, SE008, 68 );
setStartTimeMs( SE008,  900 );
SE011 = playSeVer2( spep_1 + 92, 1414, "", 0, 0, 0, -1);

-------------------------------------------------
-- 連続攻撃
-------------------------------------------------
MAX_FRAME_2 = 416;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 連続攻撃(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 連続攻撃(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 126 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 382 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 126 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 140 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 194 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 224 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 362 + OFFSET_X, 1, 107 );

--敵位置調整用
b = 200;

setMoveKey( spep_2 + 126 + OFFSET_X, 1, 201.7, -54.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 201.7, -54.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 249.6, 35.9 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 249.6, 35.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 95.1, -90.5 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 95.1, -90.5 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 149.7, 37.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 149.7, 37.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 221.2, 47.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 221.2, 47.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 230.4, 129.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 230.4, 129.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 168.4, 96.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 168.4, 96.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 220.3, 98.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 220.3, 98.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 191.1, 138.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 191.1, 138.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 236.1, 137.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 236.1, 137.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 210.8, 127.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 210.8, 127.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 227.5, 137.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 227.5, 137.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 224.9, 130.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 224.9, 130.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 228.2, 132.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 228.2, 132.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 231, 136.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 231, 136.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 228.3, 139.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 228.3, 139.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 230.7, 137.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 230.7, 137.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 230.7, 139.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 230.7, 139.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 237.1, 140.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 237.1, 140.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 236.9, 138.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 236.9, 138.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 233.1, 142.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 233.1, 142.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 237.8, 143.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 237.8, 143.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 234.9, 143.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 234.9, 143.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 237.2, 143.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 237.2, 143.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 234, 141.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 234, 141.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -13.1, -101.4 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -13.1, -101.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -14, -101.4 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -14, -101.4 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -15, -101.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -15, -101.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 155.4, -124.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 155.4, -124.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -4.3, -78.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -4.3, -78.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 78.6, -143.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 78.6, -143.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 91, -67.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 91, -67.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 50.6, -106.3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 50.6, -106.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 97, -110.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 97, -110.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 82.6, -121.3 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 82.6, -121.3 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 74.9, -86.3 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 74.9, -86.3 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 85.3, -105.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 85.3, -105.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 85.2, -101.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 85.2, -101.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 84.9, -101.3 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 84.9, -101.3 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 84.5, -101.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 84.5, -101.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 84.9, -101.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 84.9, -101.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 87.1, -101.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 87.1, -101.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 89.4, -101.3 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 89.4, -101.3 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 242, -142.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 242, -142.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 79.9, -85.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 79.9, -85.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 141.9, -165.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 141.9, -165.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 182.6, -102 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 182.6, -102 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 149.4, -117.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 149.4, -117.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 200.2, -158.4 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 200.2, -158.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 203.6, -131 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 203.6, -131 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 173.3, -145.3 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 173.3, -145.3 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 185.2, -130.4 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 185.2, -130.4 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 186.7, -138.4 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 186.7, -138.4 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 186.2, -138.4 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 186.2, -138.4 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 185.8, -138.4 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 185.8, -138.4 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 184.4, -138.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 184.4, -138.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 178.9, -132.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 178.9, -132.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 173.3, -127.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 173.3, -127.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 245.8, -81.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 245.8, -81.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 447.5, 89.5 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 447.5, 89.5 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 465.9, 7.3 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 465.9, 7.3 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 553.6, 111.7 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 553.6, 111.7 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 702.8, 108.5 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 702.8, 108.5 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 697 + b, 171.3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 697 + b, 171.3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 701.6 + b, 118 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 701.6 + b, 118 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 760.4 + b, 135.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 760.4 + b, 135.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 710.7 + b, 162.6 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 710.7 + b, 162.6 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 299.4, -45.1 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 299.4, -45.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 400.9, -144.4 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 400.9, -144.4 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 406.2, -206.4 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 406.2, -206.4 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 443.1, -257 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 443.1, -257 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 788.5, -712.4 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 788.5, -712.4 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 1012.2, -774 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 1012.2, -774 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 1115.8, -970.3 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 1115.8, -970.3 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 1104.1, -918.8 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 1104.1, -918.8 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 1101.4, -1015.3 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 1101.4, -1015.3 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 1115.4, -921.3 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 1115.4, -921.3 , 0 );

--敵の大きさ調整用
a = 0.2;

setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.39 + a, 2.39 + a );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 2.39 + a, 2.39 + a );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.45 + a, 2.45 + a );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 2.45 + a, 2.45 + a );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 2.48 + a, 2.48 + a );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 2.48 + a, 2.48 + a );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.5 + a, 2.5 + a );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 2.5 + a, 2.5 + a );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 2.38 + a, 2.38 + a );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 2.38 + a, 2.38 + a );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 2.33 + a, 2.33 + a );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 2.33 + a, 2.33 + a );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.3 + a, 2.3 + a );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.3 + a, 2.3 + a );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.28 + a, 2.28 + a );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.28 + a, 2.28 + a );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.26 + a, 2.26 + a );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.26 + a, 2.26 + a );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.24 + a, 2.24 + a );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.24 + a, 2.24 + a );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.23 + a, 2.23 + a );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.23 + a, 2.23 + a );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.21 + a, 2.21 + a );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.21 + a, 2.21 + a );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.2 + a, 2.2 + a );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.2 + a, 2.2 + a );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.19 + a, 2.19 + a );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.19 + a, 2.19 + a );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.18 + a, 2.18 + a );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.18 + a, 2.18 + a );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.17 + a, 2.17 + a );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.17 + a, 2.17 + a );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.16 + a, 2.16 + a );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.16 + a, 2.16 + a );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.15 + a, 2.15 + a );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.15 + a, 2.15 + a );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.52 + a, 1.52 + a );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.52 + a, 1.52 + a );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.67 + a, 1.67 + a );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.67 + a, 1.67 + a );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.65 + a, 1.65 + a );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.65 + a, 1.65 + a );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.63 + a, 1.63 + a );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.63 + a, 1.63 + a );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.62 + a, 1.62 + a );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.62 + a, 1.62 + a );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.61 + a, 1.61 + a );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 1.61 + a, 1.61 + a );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.6 + a, 1.6 + a );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.6 + a, 1.6 + a );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.59 + a, 1.59 + a );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.59 + a, 1.59 + a );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.52 + a, 1.52 + a );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 1.52 + a, 1.52 + a );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 4.23, 4.23 );

setRotateKey( spep_2 + 126 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -51.3 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -51.3 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -48.1 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -48.1 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -44 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -44 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -43.7 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -43.7 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -42 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -42 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, 33 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, 33 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 30.5 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, 30.5 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, 29.6 );

-- ** 音 ** --
--拳握る１
SE012 = playSeVer2( spep_2 + 12, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE012, 67 );

--拳握る２
SE013 = playSeVer2( spep_2 + 28, 1257, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 38, 1264, "",spep_2 + 116, 10, 34, -1);
setSeVolumeByWorkId( spep_2 + 38, SE010, 68 );
setStartTimeMs( SE010,  900 );
SE014 = playSeVer2( spep_2 + 38, 1414, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 52, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE015, 63 );

--向かってくる
SE016 = playSeVer2( spep_2 + 70, 1182, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 70, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 114; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
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
--蹴り上げ
SE018 = playSeVer2( spep_2 + 120, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE018, 132 );
SE019 = playSeVer2( spep_2 + 126, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE019, 77 );
SE020 = playSeVer2( spep_2 + 126, 1110, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 126, 1010, "", 0, 0, 0, -1);

--パンチ１
SE022 = playSeVer2( spep_2 + 176, 1003, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 184, 1110, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 184, 1009, "", 0, 0, 0, -1);

--パンチ２
SE025 = playSeVer2( spep_2 + 216, 1110, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 216, 1009, "", 0, 0, 0, -1);

--アッパー
SE027 = playSeVer2( spep_2 + 234, 1189, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 244, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 244, SE028, 71 );

--向かっていく
SE029 = playSeVer2( spep_2 + 276, 1264, "",spep_2 + 402, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 276, SE029, 76 );
SE030 = playSeVer2( spep_2 + 276, 1116, "",spep_2 + 370, 0, 54, -1);

--蹴り飛ばす
SE031 = playSeVer2( spep_2 + 346, 1120, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2;  --416f

-------------------------------------------------
-- ガッ
-------------------------------------------------

-- ** 画面手前衝突(ガッ)演出のテンプレ ** --

-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

-- 背景差し替えがある場合のみ
finish_1b = entryEffectLife( spep_N + 0, SP_03, spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_003)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );

--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
]]

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9） 

setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );

--[[
shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );
]]

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );

setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );

setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );  

--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnime( spep_N + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );

setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
--ここまで

-- ** 音 ** --
--爆発
--SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_N + 2, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 2, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム  112f -4


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 登場
-------------------------------------------------
MAX_FRAME_0 = 176;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 80;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 80 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 18 );

setMoveKey( spep_0 + 0, 1, -297, -81.1 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -301.5, -84.3 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -301.5, -84.3 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -306, -87.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -306, -87.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -310.4, -90.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -310.4, -90.8 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -314.9, -94.1 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -314.9, -94.1 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -319.4, -97.3 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -319.4, -97.3 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -323.9, -100.6 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -323.9, -100.6 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -328.4, -103.9 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -328.4, -103.9 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -332.9, -107.1 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -332.9, -107.1 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -337.4, -110.4 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -337.4, -110.4 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -341.9, -113.7 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -341.9, -113.7 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -346.5, -117 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -346.5, -117 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -351, -120.2 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -351, -120.2 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -355.5, -123.5 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -355.5, -123.5 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -360, -126.8 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -360, -126.8 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -364.6, -130.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -364.6, -130.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -369.1, -133.4 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -369.1, -133.4 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -373.7, -136.7 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -373.7, -136.7 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -378.2, -140 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -378.2, -140 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -382.8, -143.4 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -382.8, -143.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -387.4, -146.7 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -387.4, -146.7 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -391.9, -150 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -391.9, -150 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -396.5, -153.3 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -396.5, -153.3 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -401.1, -156.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -401.1, -156.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -405.7, -160 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -405.7, -160 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -410.3, -163.3 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -410.3, -163.3 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -414.9, -166.7 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -414.9, -166.7 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -419.5, -170 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -419.5, -170 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -424.1, -173.4 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -424.1, -173.4 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -428.7, -176.7 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -428.7, -176.7 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -433.4, -180.1 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -433.4, -180.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -438, -183.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -438, -183.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -442.6, -186.8 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -442.6, -186.8 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -447.3, -190.2 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -447.3, -190.2 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -451.9, -193.5 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -451.9, -193.5 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -456.5, -196.9 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -456.5, -196.9 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -461.2, -200.3 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -461.2, -200.3 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -465.9, -203.7 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -465.9, -203.7 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -470.5, -207.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -470.5, -207.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -475.2, -210.5 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -475.2, -210.5 , 0 );

setScaleKey( spep_0 + 0, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 5.27, 5.27 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 5.27, 5.27 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 5.31, 5.31 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 5.31, 5.31 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 5.35, 5.35 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 5.35, 5.35 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 5.37, 5.37 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 5.37, 5.37 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 5.43, 5.43 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 80 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 204, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--力む
SE002 = playSeVer2( spep_0 + 0, 1344, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 78 );

--入り
SE003 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 71 );

--集中線
SE004 = playSeVer2( spep_0 + 76, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE004, 79 );
SE005 = playSeVer2( spep_0 + 76, 1237, "",spep_0 + 202, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 76, SE005, 83 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --176f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--拳握る１
SE009 = playSeVer2( spep_1 + 80, 1257, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 84, 1264, "",spep_1 + 160, 10, 34, -1);
setSeVolumeByWorkId( spep_1 + 84, SE008, 68 );
setStartTimeMs( SE008,  900 );
SE011 = playSeVer2( spep_1 + 92, 1414, "", 0, 0, 0, -1);

-------------------------------------------------
-- 連続攻撃
-------------------------------------------------
MAX_FRAME_2 = 416;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 連続攻撃(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 連続攻撃(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 126 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 382 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 126 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 140 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 194 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 224 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 362 + OFFSET_X, 1, 7 );

--敵位置調整用
b = 200;

setMoveKey( spep_2 + 126 + OFFSET_X, 1, -201.7, -54.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -201.7, -54.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -249.6, 35.9 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -249.6, 35.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -95.1, -90.5 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -95.1, -90.5 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -149.7, 37.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -149.7, 37.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -221.2, 47.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -221.2, 47.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -230.4, 129.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -230.4, 129.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -168.4, 96.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -168.4, 96.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -220.3, 98.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -220.3, 98.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -191.1, 138.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -191.1, 138.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -236.1, 137.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -236.1, 137.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -210.8, 127.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -210.8, 127.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -227.5, 137.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -227.5, 137.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -224.9, 130.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -224.9, 130.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -228.2, 132.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -228.2, 132.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -231, 136.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -231, 136.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -228.3, 139.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -228.3, 139.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -230.7, 137.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -230.7, 137.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -230.7, 139.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -230.7, 139.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -237.1, 140.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -237.1, 140.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -236.9, 138.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -236.9, 138.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -233.1, 142.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -233.1, 142.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -237.8, 143.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -237.8, 143.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -234.9, 143.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -234.9, 143.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -237.2, 143.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -237.2, 143.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -234, 141.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -234, 141.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 13.1, -101.4 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 13.1, -101.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 14, -101.4 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 14, -101.4 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 15, -101.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 15, -101.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -155.4, -124.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -155.4, -124.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 4.3, -78.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 4.3, -78.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -78.6, -143.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -78.6, -143.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -91, -67.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -91, -67.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -50.6, -106.3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -50.6, -106.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -97, -110.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -97, -110.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -82.6, -121.3 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -82.6, -121.3 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -74.9, -86.3 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -74.9, -86.3 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -85.3, -105.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -85.3, -105.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -85.2, -101.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -85.2, -101.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -84.9, -101.3 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -84.9, -101.3 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -84.5, -101.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -84.5, -101.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -84.9, -101.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -84.9, -101.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -87.1, -101.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -87.1, -101.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -89.4, -101.3 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -89.4, -101.3 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -242, -142.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -242, -142.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -79.9, -85.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -79.9, -85.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -141.9, -165.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -141.9, -165.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -182.6, -102 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -182.6, -102 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -149.4, -117.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -149.4, -117.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -200.2, -158.4 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -200.2, -158.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -203.6, -131 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -203.6, -131 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -173.3, -145.3 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -173.3, -145.3 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -185.2, -130.4 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -185.2, -130.4 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -186.7, -138.4 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -186.7, -138.4 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -186.2, -138.4 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -186.2, -138.4 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -185.8, -138.4 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -185.8, -138.4 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -184.4, -138.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -184.4, -138.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -178.9, -132.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -178.9, -132.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -173.3, -127.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -173.3, -127.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -245.8, -81.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -245.8, -81.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -447.5, 89.5 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -447.5, 89.5 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -465.9, 7.3 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -465.9, 7.3 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -553.6, 111.7 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -553.6, 111.7 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -702.8, 108.5 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -702.8, 108.5 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -697 - b, 171.3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -697 - b, 171.3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -701.6 - b, 118 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -701.6 - b, 118 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -760.4 - b, 135.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -760.4 - b, 135.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -710.7 - b, 162.6 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -710.7 - b, 162.6 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -299.4, -45.1 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -299.4, -45.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -400.9, -144.4 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -400.9, -144.4 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -406.2, -206.4 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -406.2, -206.4 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -443.1, -257 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -443.1, -257 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -788.5, -712.4 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -788.5, -712.4 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -1012.2, -774 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -1012.2, -774 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -1115.8, -970.3 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -1115.8, -970.3 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -1104.1, -918.8 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -1104.1, -918.8 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -1101.4, -1015.3 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -1101.4, -1015.3 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -1115.4, -921.3 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -1115.4, -921.3 , 0 );

--敵の大きさ調整用
a = 0.2;

setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.39 + a, 2.39 + a );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 2.39 + a, 2.39 + a );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.45 + a, 2.45 + a );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 2.45 + a, 2.45 + a );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 2.48 + a, 2.48 + a );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 2.48 + a, 2.48 + a );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.5 + a, 2.5 + a );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 2.5 + a, 2.5 + a );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 2.38 + a, 2.38 + a );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 2.38 + a, 2.38 + a );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 2.33 + a, 2.33 + a );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 2.33 + a, 2.33 + a );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.3 + a, 2.3 + a );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.3 + a, 2.3 + a );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.28 + a, 2.28 + a );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.28 + a, 2.28 + a );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.26 + a, 2.26 + a );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.26 + a, 2.26 + a );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.24 + a, 2.24 + a );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.24 + a, 2.24 + a );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.23 + a, 2.23 + a );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.23 + a, 2.23 + a );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.21 + a, 2.21 + a );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.21 + a, 2.21 + a );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.2 + a, 2.2 + a );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.2 + a, 2.2 + a );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.19 + a, 2.19 + a );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.19 + a, 2.19 + a );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.18 + a, 2.18 + a );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.18 + a, 2.18 + a );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.17 + a, 2.17 + a );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.17 + a, 2.17 + a );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.16 + a, 2.16 + a );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.16 + a, 2.16 + a );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.15 + a, 2.15 + a );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.15 + a, 2.15 + a );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.52 + a, 1.52 + a );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.52 + a, 1.52 + a );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.67 + a, 1.67 + a );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.67 + a, 1.67 + a );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.65 + a, 1.65 + a );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.65 + a, 1.65 + a );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.63 + a, 1.63 + a );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.63 + a, 1.63 + a );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.62 + a, 1.62 + a );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.62 + a, 1.62 + a );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.61 + a, 1.61 + a );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 1.61 + a, 1.61 + a );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.6 + a, 1.6 + a );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.6 + a, 1.6 + a );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.59 + a, 1.59 + a );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.59 + a, 1.59 + a );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.52 + a, 1.52 + a );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 1.52 + a, 1.52 + a );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 4.23, 4.23 );

setRotateKey( spep_2 + 126 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 48.1 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 48.1 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 46.9 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 46.9 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 44.8 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 44.8 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 44 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 44 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 43.7 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 43.7 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 42.6 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 42.6 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 42.4 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 42.4 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 42.1 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 42.1 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 25 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, 25 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -29.6 );

-- ** 音 ** --
--拳握る１
SE012 = playSeVer2( spep_2 + 12, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE012, 67 );

--拳握る２
SE013 = playSeVer2( spep_2 + 28, 1257, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 38, 1264, "",spep_2 + 116, 10, 34, -1);
setSeVolumeByWorkId( spep_2 + 38, SE010, 68 );
setStartTimeMs( SE010,  900 );
SE014 = playSeVer2( spep_2 + 38, 1414, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 52, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE015, 63 );

--向かってくる
SE016 = playSeVer2( spep_2 + 70, 1182, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 70, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 114; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
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
--蹴り上げ
SE018 = playSeVer2( spep_2 + 120, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE018, 132 );
SE019 = playSeVer2( spep_2 + 126, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE019, 77 );
SE020 = playSeVer2( spep_2 + 126, 1110, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 126, 1010, "", 0, 0, 0, -1);

--パンチ１
SE022 = playSeVer2( spep_2 + 176, 1003, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 184, 1110, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 184, 1009, "", 0, 0, 0, -1);

--パンチ２
SE025 = playSeVer2( spep_2 + 216, 1110, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 216, 1009, "", 0, 0, 0, -1);

--アッパー
SE027 = playSeVer2( spep_2 + 234, 1189, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 244, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 244, SE028, 71 );

--向かっていく
SE029 = playSeVer2( spep_2 + 276, 1264, "",spep_2 + 402, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 276, SE029, 76 );
SE030 = playSeVer2( spep_2 + 276, 1116, "",spep_2 + 370, 0, 54, -1);

--蹴り飛ばす
SE031 = playSeVer2( spep_2 + 346, 1120, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2;  --416f

-------------------------------------------------
-- ガッ
-------------------------------------------------

-- ** 画面手前衝突(ガッ)演出のテンプレ ** --

-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, -1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, -1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

-- 背景差し替えがある場合のみ
finish_1b = entryEffectLife( spep_N + 0, SP_03, spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_003)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, -1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, -1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );

--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
]]

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9） 

setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );

--[[
shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );
]]

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );

setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );

setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );  

--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnime( spep_N + 0, 1, 7 );

--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, -21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, 8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, 12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, 16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, 20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, 24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, 28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, 32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, 37.2, -57.6 , 0 );

setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );

setRotateKey( spep_N + 0, 1, 354.8 );
setRotateKey( spep_N + 2, 1, 122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, 1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, -120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, -242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, -364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, -486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, -607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, -729.5 );
setRotateKey( spep_N + 112, 1, -729.5 );
--ここまで

-- ** 音 ** --
--爆発
--SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_N + 2, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 2, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム  112f -4


end
