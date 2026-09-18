--1033970:LR_フリーザ(最終形態)_格闘カウンター
--sp_effect_b1_00378
--c0037

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164543; --最初〜最後まで ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);

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

--setAlphaKey( 0, 1, 255 );

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

------------------------------------------------------------------------------------------------------------
-- カウンター開始まで
------------------------------------------------------------------------------------------------------------

spep_0 = 28; -- 28F固定 (冒頭顔カットインが入るため)

setupMovie(spep_0, SP_01, 0, 1);

-------------------------------------------------
-- 最初〜最後まで
-------------------------------------------------
MAX_FRAME_0 = 590;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初〜最後まで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

--------------------------------------
-- 敵キャラクター
--------------------------------------
-- ** 敵の動き ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 42 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 0, 1, 16 );

setMoveKey( spep_0 + 0, 1, -1.9, 0.6 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -2, 0.5 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -2, 0.5 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -2.1, 0.5 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -2.1, 0.5 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -2.2, 0.5 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -2.2, 0.5 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -2.3, 0.4 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -2.3, 0.4 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -2.4, 0.4 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -2.4, 0.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -2.5, 0.4 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -2.5, 0.4 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -2.6, 0.4 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -2.6, 0.4 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -2.7, 0.3 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -2.7, 0.3 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -2.5, 0.2 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -2.5, 0.2 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -2.3, 0.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -2.3, 0.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -2.1, 0 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -2.1, 0 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -2.3, 0.2 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -2.3, 0.2 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -2.4, 0.3 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -2.4, 0.3 , 0 );

setScaleKey( spep_0 + 0, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 3.18, 3.18 );

setRotateKey( spep_0 + 0, 1, 16.7 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_0 + 8 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_0 + 9 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_0 + 10 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_0 + 11 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_0 + 12 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 13 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 14 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_0 + 15 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_0 + 16 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 17 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 18 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_0 + 19 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_0 + 20 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 21 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 22 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_0 + 23 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_0 + 24 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_0 + 25 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_0 + 26 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_0 + 27 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_0 + 28 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_0 + 29 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_0 + 30 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 31 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 32 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 33 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 34 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 42 + OFFSET_X, 1, 0.3 );

--敵の動き2
setDisp( spep_0 + 192 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 194 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 196 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 220 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 192 + OFFSET_X, 1, 2 );
changeAnimeBySide( spep_0 + 196 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 192 + OFFSET_X, 1, -109.9, -271.9 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -109.9, -271.9 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -68.4, -124.9 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -68.4, -124.9 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -66.4, -138.5 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -66.4, -138.5 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -115.6, -101.6 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -115.6, -101.6 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -127.7, -144.2 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -127.7, -144.2 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -139.9, -186.8 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -139.9, -186.8 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -152.3, -229.6 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -152.3, -229.6 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -164.7, -272.4 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -164.7, -272.4 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -177.3, -315.3 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -177.3, -315.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -190, -358.2 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -190, -358.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -202.8, -401.2 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -202.8, -401.2 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -215.8, -444.4 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -215.8, -444.4 , 0 );

setScaleKey( spep_0 + 192 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 3.95, 3.95 );

setRotateKey( spep_0 + 192 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, 72.4 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, 72.4 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, 56.0 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, 56.0 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, 24.4 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, 24.4 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, 23.9 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, 23.9 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, 23.7 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, 23.7 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, 23.2 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, 23.2 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 23 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, 23 );

--敵の動き3
setDisp( spep_0 + 238 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 362 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 238 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 238 + OFFSET_X, 1, -101.1, -693.3 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -101.1, -693.3 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -89.7, -574.4 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -89.7, -574.4 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -78.3, -455.5 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -78.3, -455.5 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -67.8, -412 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -67.8, -412 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -57.4, -368.5 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -57.4, -368.5 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -46.9, -325 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -46.9, -325 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -30.3, -319.1 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -30.3, -319.1 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -23.7, -303.5 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -23.7, -303.5 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -20.3, -306.8 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -20.3, -306.8 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -17, -289.7 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -17, -289.7 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -13.6, -294.3 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -13.6, -294.3 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -10.3, -277.1 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -10.3, -277.1 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -6.8, -281.8 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -6.8, -281.8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -3.4, -267.7 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -3.4, -267.7 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 0, -269.2 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 0, -269.2 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 3.3, -253.6 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 3.3, -253.6 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 6.8, -256.7 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 6.8, -256.7 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 10.3, -247.4 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 10.3, -247.4 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 13.7, -244.1 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 13.7, -244.1 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 17.1, -233.3 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 17.1, -233.3 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 20.5, -231.7 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 20.5, -231.7 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 24, -225.4 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 24, -225.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 27.3, -219 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 27.3, -219 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 27.3, -219.1 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 27.3, -219.1 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 27.3, -219.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 27.3, -219.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 27.3, -219.3 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 27.3, -219.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 27.3, -219.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 27.3, -219.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 27.3, -219.5 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 27.3, -219.5 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 27.3, -219.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 27.3, -219.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 27.3, -219.7 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 27.3, -219.7 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 27.3, -219.8 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 27.3, -219.8 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 27.3, -219.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 27.3, -219.9 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 27.3, -220 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 27.3, -220 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 27.3, -220.1 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 27.3, -220.1 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 27.3, -220.2 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 27.3, -220.2 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 27.3, -220.3 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 27.3, -220.3 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 27.3, -220.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 27.3, -220.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 27.3, -220.5 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 27.3, -220.5 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 27.3, -220.6 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 27.3, -220.6 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 32.4, -220.4 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 32.4, -220.4 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 37.4, -220.1 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 37.4, -220.1 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 47.5, -217.1 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 47.5, -217.1 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 57.6, -214.1 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 57.6, -214.1 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 73.9, -209.6 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 73.9, -209.6 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 90.3, -205 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 90.3, -205 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 114.8, -198.7 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 114.8, -198.7 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 139.3, -192.5 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 139.3, -192.5 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 163.9, -186.2 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 163.9, -186.2 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 188.4, -179.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 188.4, -179.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 212.9, -173.6 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 212.9, -173.6 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 237.5, -167.4 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 237.5, -167.4 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 266.2, -159.2 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 266.2, -159.2 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 295, -151.1 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 295, -151.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 323.8, -143 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 323.8, -143 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 352.5, -134.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 352.5, -134.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 381.3, -126.8 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 381.3, -126.8 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 410, -118.6 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 410, -118.6 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 438.8, -110.5 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 438.8, -110.5 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 467.5, -102.4 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 467.5, -102.4 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 496.3, -94.3 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 496.3, -94.3 , 0 );

setScaleKey( spep_0 + 238 + OFFSET_X, 1, 15.73, 15.73 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 15.73, 15.73 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 13.98, 13.98 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 13.98, 13.98 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 12.24, 12.24 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 12.24, 12.24 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 9.68, 9.68 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 9.68, 9.68 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 7.12, 7.12 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 7.12, 7.12 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 0.93, 0.93 );

setRotateKey( spep_0 + 238 + OFFSET_X, 1, 38 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, 38 );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--敵向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);

--パンチ当たる
SE003 = playSeVer2( spep_0 + 33, 1010, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 33, 1414, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 37, 1169, "", 0, 0, 0, -1);

--背景音
SE005 = playSeVer2( spep_0 + 33, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 33, SE005, 52 );

--振りかぶる
SE007 = playSeVer2( spep_0 + 97, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 170; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);


pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------
-- ** SE ** --
--目きつく
SE008 = playSeVer2( spep_0 + 157, 1179, "", 0, 0, 0, -1);

--殴り返す
SE009 = playSeVer2( spep_0 + 187, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 187, SE009, 150 );
SE010 = playSeVer2( spep_0 + 193, 1187, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 193, 1120, "", 0, 0, 0, -1);

--環境音
SE012 = playSeVer2( spep_0 + 197, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 197, SE012, 25 );

------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if ( _IS_DEAD_ == 1 ) then

-- ** SE ** --
stopSe( spep_0 + 222, SE005, 0 );
stopSe( spep_0 + 222, SE008, 0 );
stopSe( spep_0 + 222, SE009, 0 );
stopSe( spep_0 + 222, SE010, 0 );
stopSe( spep_0 + 222, SE011, 0 );
stopSe( spep_0 + 222, SE012, 0 );

stopMovie( spep_0 + 222 );

setEffAlphaKey( spep_0 + 221, start_f, 255);
setEffAlphaKey( spep_0 + 222, start_f, 0);

-- ** 敵の動き ** --
setDisp( spep_0 + 222, 1, 1 );
changeAnime( spep_0 + 222, 1, 106 );

setMoveKey( spep_0 + 222, 1, 5000, 5000 , 0 );
setMoveKey( spep_0 + 228, 1, 5000, 5000 , 0 );


-- ** 終了 ** --
endPhase( spep_0 + 228 );

else
------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------
-- ** SE ** --
--敵吹き飛ぶ
SE013 = playSeVer2( spep_0 + 240, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE013, 282 );
SE014 = playSeVer2( spep_0 + 240, 1008, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 240, 1330, "",spep_0 + 303, 0, 34, -1);
SE016 = playSeVer2( spep_0 + 240, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE016, 57 );
SE017 = playSeVer2( spep_0 + 247, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 247, SE017, 43 );
SE018 = playSeVer2( spep_0 + 254, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE018, 28 );
SE019 = playSeVer2( spep_0 + 264, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE019, 21 );

--画面遷移
SE020 = playSeVer2( spep_0 + 321, 63, "",spep_0 + 383, 0, 26, -1);
SE021 = playSeVer2( spep_0 + 321, 8, "", 0, 0, 0, -1);

--握り直す
SE022 = playSeVer2( spep_0 + 449, 1301, "", 0, 0, 0, -1);

-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 420); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 590f

end