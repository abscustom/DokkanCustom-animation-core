--4031440:LR_ザマス+ゴクウブラック(超サイヤ人ロゼ)_超必殺技：神裂波
--sp_effect_a2_00262
--sp2874

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 163909;  --ef_001 登場から気弾ため：手前
SP_01b  = 163910;  --ef_001b 登場から気弾ため：奥
SP_02  = 163911;  --ef_002 気弾投げからフィニッシュ：手前
SP_02b = 163912;  --ef_002b 気弾投げからフィニッシュ：奥

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
--]]

ENABLE_AUTO_TIME_STRETCH(0.78);

adjustAttackerLabel( 0, 205);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場から気弾ため
-------------------------------------------------
MAX_FRAME_0 = 472;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場から気弾ため(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 登場から気弾ため(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 298;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 86 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 228.3, -167.8 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 232, -168.9 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 232, -168.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 235.6, -170.1 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 235.6, -170.1 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 239.3, -171.2 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 239.3, -171.2 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 242.9, -172.4 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 242.9, -172.4 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 246.6, -173.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 246.6, -173.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 250.3, -174.7 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 250.3, -174.7 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 253.9, -175.9 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 253.9, -175.9 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 257.6, -177 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 257.6, -177 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 261.3, -178.2 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 261.3, -178.2 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 264.9, -179.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 264.9, -179.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 268.6, -180.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 268.6, -180.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 272.3, -181.7 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 272.3, -181.7 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 275.9, -182.8 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 275.9, -182.8 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 279.6, -184 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 279.6, -184 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 283.2, -185.2 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 283.2, -185.2 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 286.9, -186.3 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 286.9, -186.3 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 290.6, -187.5 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 290.6, -187.5 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 294.2, -188.6 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 294.2, -188.6 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 297.9, -189.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 297.9, -189.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 301.6, -191 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 301.6, -191 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 305.2, -192.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 305.2, -192.1 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 308.9, -193.3 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 308.9, -193.3 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 312.6, -194.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 312.6, -194.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 316.2, -195.6 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 316.2, -195.6 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 319.9, -196.8 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 319.9, -196.8 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 323.5, -197.9 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 323.5, -197.9 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 327.2, -199.1 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 327.2, -199.1 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 330.9, -200.2 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 330.9, -200.2 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 334.5, -201.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 334.5, -201.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 338.2, -202.6 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 338.2, -202.6 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 341.9, -203.7 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 341.9, -203.7 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 345.5, -204.9 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 345.5, -204.9 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 349.2, -206 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 349.2, -206 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 352.9, -207.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 352.9, -207.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 356.5, -208.4 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 356.5, -208.4 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 360.2, -209.5 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 360.2, -209.5 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 363.8, -210.7 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 363.8, -210.7 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 367.5, -211.8 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 367.5, -211.8 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 371.2, -213 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 371.2, -213 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 374.8, -214.2 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 374.8, -214.2 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 378.5, -215.3 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 378.5, -215.3 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 382.2, -216.5 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 382.2, -216.5 , 0 );

setScaleKey( spep_0 + 0, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 4.68, 4.68 );

setRotateKey( spep_0 + 0, 1, 11 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 86 + OFFSET_X, 1, 11 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 500, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 81 );
SE003 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 67 );

--腕上げる
SE004 = playSeVer2( spep_0 + 82, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE004, 84 );
SE005 = playSeVer2( spep_0 + 90, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE005, 83 );

--気弾溜めはじめ
SE006 = playSeVer2( spep_0 + 146, 1371, "",spep_0 + 490, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 146, SE006, 73 );
SE007 = playSeVer2( spep_0 + 146, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 146, SE007, 145 );
SE008 = playSeVer2( spep_0 + 146, 1374, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 146, SE008, 79 );

--気弾膨れ上がる
SE009 = playSeVer2( spep_0 + 220, 1210, "",spep_0 + 496, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 220, SE009, 54 );
setPitch( spep_0 + 220, SE009, -500 );
setTimeStretch( SE009, 0.67, 30, 4 );
SE010 = playSeVer2( spep_0 + 240, 1445, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 240, 1184, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --474f

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前溜め
SE012 = playSeVer2( spep_1 + 90, 1210, "",spep_1 + 234, 6, 46, -1);
setSeVolumeByWorkId( spep_1 + 90, SE012, 59 );
setStartTimeMs( SE012,  4567 );
setPitch( spep_1 + 90, SE012, -500 );
setTimeStretch( SE012, 0.67, 30, 4 );
SE014 = playSeVer2( spep_1 + 88, 1371, "",spep_1 + 234, 8, 44, -1);
setStartTimeMs( SE014,  2500 );
SE016 = playSeVer2( spep_1 + 90, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE016, 74 );

-------------------------------------------------
-- 気弾投げからフィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 390;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾投げからフィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾投げからフィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 152 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 200 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 152 + OFFSET_X, 1, 118 );

setMoveKey( spep_2 + 152 + OFFSET_X, 1, 225.1, -167.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 225.1, -167.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 230.5, -157.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 230.5, -157.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 214.3, -170.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 214.3, -170.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 227.1, -167.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 227.1, -167.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 210.3, -153.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 210.3, -153.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 222.5, -151.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 222.5, -151.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 206.3, -163.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 206.3, -163.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 219.1, -160.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 219.1, -160.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 202.3, -146.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 202.3, -146.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 214.5, -144.1 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 214.5, -144.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 198.4, -156.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 198.4, -156.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 213.6, -154.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 213.6, -154.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 191.6, -137.9 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 191.6, -137.9 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 208.7, -135 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 208.7, -135 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 187.4, -151.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 187.4, -151.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 209.1, -150.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 209.1, -150.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 180.5, -128.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 180.5, -128.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 202.7, -126.1 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 202.7, -126.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 177.3, -146.7 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 177.3, -146.7 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 201, -143.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 201, -143.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 172.5, -121.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 172.5, -121.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 194.8, -119.1 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 194.8, -119.1 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 169.4, -139.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 169.4, -139.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 193.1, -136.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 193.1, -136.3 , 0 );

setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_2 + 152 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 12 );


-- ** 音 ** --
--気弾放つ
SE017 = playSeVer2( spep_2 + 68, 1004, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 88, 1027, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 88, 1193, "",spep_2 + 270, 0, 24, -1);
SE020 = playSeVer2( spep_2 + 88, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE020, 166 );

--気弾飛んでいく
SE021 = playSeVer2( spep_2 + 144, 1021, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 152, 1121, "",spep_2 + 268, 0, 22, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 186; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
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
--敵ヒット
SE023 = playSeVer2( spep_2 + 192, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 192, SE023, 70 );
SE024 = playSeVer2( spep_2 + 194, 1156, "",spep_2 + 274, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 194, SE024, 70 );
--爆発
SE025 = playSeVer2( spep_2 + 246, 1159, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 278, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 290); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム  390f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 登場から気弾ため
-------------------------------------------------
MAX_FRAME_0 = 472;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場から気弾ため(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 登場から気弾ため(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
-- spep_x = spep_0 + 298;

-- ** 顔カットイン ** --
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
-- SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 86 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 18 );

setMoveKey( spep_0 + 0, 1, -228.3, -167.8 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -232, -168.9 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -232, -168.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -235.6, -170.1 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -235.6, -170.1 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -239.3, -171.2 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -239.3, -171.2 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -242.9, -172.4 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -242.9, -172.4 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -246.6, -173.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -246.6, -173.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -250.3, -174.7 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -250.3, -174.7 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -253.9, -175.9 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -253.9, -175.9 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -257.6, -177 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -257.6, -177 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -261.3, -178.2 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -261.3, -178.2 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -264.9, -179.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -264.9, -179.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -268.6, -180.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -268.6, -180.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -272.3, -181.7 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -272.3, -181.7 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -275.9, -182.8 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -275.9, -182.8 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -279.6, -184 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -279.6, -184 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -283.2, -185.2 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -283.2, -185.2 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -286.9, -186.3 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -286.9, -186.3 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -290.6, -187.5 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -290.6, -187.5 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -294.2, -188.6 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -294.2, -188.6 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -297.9, -189.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -297.9, -189.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -301.6, -191 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -301.6, -191 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -305.2, -192.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -305.2, -192.1 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -308.9, -193.3 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -308.9, -193.3 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -312.6, -194.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -312.6, -194.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -316.2, -195.6 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -316.2, -195.6 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -319.9, -196.8 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -319.9, -196.8 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -323.5, -197.9 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -323.5, -197.9 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -327.2, -199.1 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -327.2, -199.1 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -330.9, -200.2 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -330.9, -200.2 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -334.5, -201.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -334.5, -201.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -338.2, -202.6 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -338.2, -202.6 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -341.9, -203.7 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -341.9, -203.7 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -345.5, -204.9 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -345.5, -204.9 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -349.2, -206 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -349.2, -206 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -352.9, -207.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -352.9, -207.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -356.5, -208.4 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -356.5, -208.4 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -360.2, -209.5 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -360.2, -209.5 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -363.8, -210.7 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -363.8, -210.7 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -367.5, -211.8 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -367.5, -211.8 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -371.2, -213 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -371.2, -213 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -374.8, -214.2 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -374.8, -214.2 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -378.5, -215.3 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -378.5, -215.3 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -382.2, -216.5 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -382.2, -216.5 , 0 );

setScaleKey( spep_0 + 0, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 4.68, 4.68 );

setRotateKey( spep_0 + 0, 1, -11 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 86 + OFFSET_X, 1, -11 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 500, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 81 );
SE003 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 67 );

--腕上げる
SE004 = playSeVer2( spep_0 + 82, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE004, 84 );
SE005 = playSeVer2( spep_0 + 90, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE005, 83 );

--気弾溜めはじめ
SE006 = playSeVer2( spep_0 + 146, 1371, "",spep_0 + 490, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 146, SE006, 73 );
SE007 = playSeVer2( spep_0 + 146, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 146, SE007, 145 );
SE008 = playSeVer2( spep_0 + 146, 1374, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 146, SE008, 79 );

--気弾膨れ上がる
SE009 = playSeVer2( spep_0 + 220, 1210, "",spep_0 + 496, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 220, SE009, 54 );
setPitch( spep_0 + 220, SE009, -500 );
setTimeStretch( SE009, 0.67, 30, 4 );
SE010 = playSeVer2( spep_0 + 240, 1445, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 240, 1184, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --474f

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前溜め
SE012 = playSeVer2( spep_1 + 90, 1210, "",spep_1 + 234, 6, 46, -1);
setSeVolumeByWorkId( spep_1 + 90, SE012, 59 );
setStartTimeMs( SE012,  4567 );
setPitch( spep_1 + 90, SE012, -500 );
setTimeStretch( SE012, 0.67, 30, 4 );
SE014 = playSeVer2( spep_1 + 88, 1371, "",spep_1 + 234, 8, 44, -1);
setStartTimeMs( SE014,  2500 );
SE016 = playSeVer2( spep_1 + 90, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE016, 74 );

-------------------------------------------------
-- 気弾投げからフィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 390;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾投げからフィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾投げからフィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 152 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 200 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 152 + OFFSET_X, 1, 18 );

setMoveKey( spep_2 + 152 + OFFSET_X, 1, -225.1, -167.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -225.1, -167.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -230.5, -157.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -230.5, -157.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -214.3, -170.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -214.3, -170.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -227.1, -167.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -227.1, -167.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -210.3, -153.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -210.3, -153.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -222.5, -151.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -222.5, -151.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -206.3, -163.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -206.3, -163.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -219.1, -160.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -219.1, -160.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -202.3, -146.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -202.3, -146.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -214.5, -144.1 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -214.5, -144.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -198.4, -156.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -198.4, -156.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -213.6, -154.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -213.6, -154.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -191.6, -137.9 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -191.6, -137.9 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -208.7, -135 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -208.7, -135 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -187.4, -151.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -187.4, -151.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -209.1, -150.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -209.1, -150.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -180.5, -128.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -180.5, -128.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -202.7, -126.1 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -202.7, -126.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -177.3, -146.7 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -177.3, -146.7 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -201, -143.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -201, -143.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -172.5, -121.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -172.5, -121.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -194.8, -119.1 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -194.8, -119.1 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -169.4, -139.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -169.4, -139.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -193.1, -136.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -193.1, -136.3 , 0 );

setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_2 + 152 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -12 );

-- ** 音 ** --
--気弾放つ
SE017 = playSeVer2( spep_2 + 68, 1004, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 88, 1027, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 88, 1193, "",spep_2 + 270, 0, 24, -1);
SE020 = playSeVer2( spep_2 + 88, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE020, 166 );

--気弾飛んでいく
SE021 = playSeVer2( spep_2 + 144, 1021, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 152, 1121, "",spep_2 + 268, 0, 22, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 186; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
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
--敵ヒット
SE023 = playSeVer2( spep_2 + 192, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 192, SE023, 70 );
SE024 = playSeVer2( spep_2 + 194, 1156, "",spep_2 + 274, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 194, SE024, 70 );

--爆発
SE025 = playSeVer2( spep_2 + 246, 1159, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 278, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 290); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム  390f

end
