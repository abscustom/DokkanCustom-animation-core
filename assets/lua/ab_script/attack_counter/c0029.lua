--1031300:UR_桃白白_格闘カウンター
--sp_effect_b1_00325
--c0029

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163812; -- 敵より前 ef_001
SP_01b = 163813; -- 敵より後ろ ef_001b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
 
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
 
OFFSET_X = -1;
 
------------------------------------------------------------------------------------------------------------
-- カウンター
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 28; --冒頭顔カットイン入るため28F固定
 
 
------------------------------------------------------
-- カウンター
------------------------------------------------------
 
MAX_FRAME_0 = 450;
 
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵より前 ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
 
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 敵より後ろ ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 82 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 103 );
changeAnimeAndStop( spep_0 + 30 + OFFSET_X, 1, 111 ,1);
changeAnime( spep_0 + 50 + OFFSET_X, 1, 110 );

setMoveKey( spep_0 + 0, 1, 340.9, -10.7 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 252.8, -10.7 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 252.8, -10.7 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 207.5, -10.7 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 207.5, -10.7 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 179.4, -10.7 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 179.4, -10.7 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 160.1, -10.7 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 160.1, -10.7 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 146.1, -10.7 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 146.1, -10.7 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 135.6, -10.7 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 135.6, -10.7 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 127.7, -10.7 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 127.7, -10.7 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 121.7, -10.7 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 121.7, -10.7 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 117.2, -10.7 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 117.2, -10.7 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 113.8, -10.7 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 113.8, -10.7 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 111.4, -10.7 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 111.4, -10.7 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 109.9, -10.7 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 109.9, -10.7 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 109, -10.7 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 109, -10.7 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 108.7, -10.7 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 108.7, -10.7 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 402.8, -45.9 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 402.8, -45.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 402.6, -45.9 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 402.6, -45.9 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 400.8, -46.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 400.8, -46.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 396, -46.5 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 396, -46.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 386.6, -47.4 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 386.6, -47.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 371.1, -48.8 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 371.1, -48.8 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 348, -50.9 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 348, -50.9 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 315.7, -53.9 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 315.7, -53.9 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 272.8, -57.9 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 272.8, -57.9 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 217.8, -63 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 217.8, -63 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 121.5, -60 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 121.5, -60 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -1.5, -71.2 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -1.5, -71.2 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -135.4, -83.3 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -135.4, -83.3 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -262.5, -94.9 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -262.5, -94.9 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -370.7, -104.7 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -370.7, -104.7 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -457.9, -112.6 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -457.9, -112.6 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -526.7, -118.9 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -526.7, -118.9 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -580.8, -123.8 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -580.8, -123.8 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -623, -127.6 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -623, -127.6 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -655.7, -130.6 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -655.7, -130.6 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -680.8, -132.9 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -680.8, -132.9 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -699.5, -134.6 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -699.5, -134.6 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -712.8, -135.8 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -712.8, -135.8 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -721.6, -136.6 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -721.6, -136.6 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -726.6, -137 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -726.6, -137 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -728.1, -136.9 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -728.1, -136.9 , 0 );

setScaleKey( spep_0 + 0, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 3.07, 3.06 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 3.07, 3.06 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 3.7, 3.7 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 49 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 50 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 51 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 52 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_0 + 53 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_0 + 54 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_0 + 55 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_0 + 56 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_0 + 57 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_0 + 58 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 59 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_0 + 61 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_0 + 62 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 63 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 64 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_0 + 65 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_0 + 66 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_0 + 67 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_0 + 68 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_0 + 69 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_0 + 70 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_0 + 71 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_0 + 72 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_0 + 75 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_0 + 76 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 82 + OFFSET_X, 1, 4 );

--敵の動き2

setDisp( spep_0 + 242 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 280 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 242 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 242 + OFFSET_X, 1, -725.4, -742.3 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -725.4, -742.3 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -747.3, -757.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -747.3, -757.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -769.1, -772.6 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -769.1, -772.6 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -791, -787.7 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -791, -787.7 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -812.9, -802.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -812.9, -802.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -834.8, -818 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -834.8, -818 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -856.7, -833.2 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -856.7, -833.2 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -878.6, -848.4 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -878.6, -848.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -900.4, -863.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -900.4, -863.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -922.3, -878.7 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -922.3, -878.7 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -944.2, -893.9 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -944.2, -893.9 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -966, -909.1 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -966, -909.1 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -987.9, -924.3 , 0 );

setScaleKey( spep_0 + 242 + OFFSET_X, 1, 11, 11 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 11, 11 );

setRotateKey( spep_0 + 242 + OFFSET_X, 1, -60 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -60 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -65.7 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -65.7 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -67.1 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -67.1 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -68.5 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -68.5 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -69.9 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, -69.9 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -71.3 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -71.3 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -72.7 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -72.7 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -74.2 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -74.2 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -75.6 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -75.6 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -77 );

--敵の動き3

setDisp( spep_0 + 292 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 451 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 292 + OFFSET_X, 1, 7 );

y = -50;

setMoveKey( spep_0 + 292 + OFFSET_X, 1, 82.2, -228.9 + y , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 82.2, -228.9 + y , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 72.8, -248.5 + y , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 72.8, -248.5 + y , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 63.5, -268.1 + y , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 63.5, -268.1 + y , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 54.2, -287.8 + y , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 54.2, -287.8 + y , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 44.9, -307.4 + y , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 44.9, -307.4 + y , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 35.5, -327 + y , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 35.5, -327 + y , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 26.2, -346.7 + y , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 26.2, -346.7 + y , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 16.9, -366.3 + y , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 16.9, -366.3 + y , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 7.5, -386 + y , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 7.5, -386 + y , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -1.8, -405.6 + y , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -1.8, -405.6 + y , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -1.8, -395.6 + y , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -1.8, -395.6 + y , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -1.8, -371.5 + y , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -1.8, -371.5 + y , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -1.8, -341.5 + y , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -1.8, -341.5 + y , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -1.8, -345.6 + y , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -1.8, -345.6 + y , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -1.8, -305.6 + y , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -1.8, -305.6 + y , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -21.8, -305 + y , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -21.8, -305 + y , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -1.8, -300 + y , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -1.8, -300 + y , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -1.8, -305 + y , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -1.8, -305 + y , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -1.8, -335.6 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -1.8, -335.6 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -1.8, -355.6 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -1.8, -355.6 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -1.8, -375.6 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -1.8, -375.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -1.8, -395.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -1.8, -395.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -1.8, -425.6 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -1.8, -425.6 , 0 );


setScaleKey( spep_0 + 292 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 3.0, 3.0 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 3.0, 3.0 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_0 + 292 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -13 );

-- ** 音 ** --

--敵向かってくる
SE001 = playSeVer2( spep_0 + 0, 1266, "",spep_0 + 110, 12, 56, -1);
setStartTimeMs( SE001,  1300 );
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 76 );

--よける
SE003 = playSeVer2( spep_0 + 42, 1116, "",spep_0 + 84, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 42, SE003, 65 );
SE004 = playSeVer2( spep_0 + 48, 1018, "",spep_0 + 92, 0, 24, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------
 
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 90; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge -12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    pauseAll( SP_dodge, 67 );
 
    speff = entryEffectUnpausable( SP_dodge -12, 1504, 0x100, -1, 0, 0, -350 ); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 ); -- カットイン差し替え
     
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350 ); -- 回避の文字表示
 
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    endPhase( SP_dodge + 10 );

 
do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --

--反撃
SE005 = playSeVer2( spep_0 + 88, 1118, "",spep_0 + 152, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 88, SE005, 50 );
SE006 = playSeVer2( spep_0 + 88, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE006, 60 );

--舌で突く
SE007 = playSeVer2( spep_0 + 134, 1179, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 134, 1000, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 140, 1110, "", 0, 0, 0, -1);

--画面割れる
SE010 = playSeVer2( spep_0 + 154, 1041, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 182, 1439, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE011, 129 );

--舌抜く
SE012 = playSeVer2( spep_0 + 252, 1196, "",spep_0 + 266, 4, 16, -1);
setSeVolumeByWorkId( spep_0 + 252, SE012, 47 );
setStartTimeMs( SE012,  1000 );
SE013 = playSeVer2( spep_0 + 252, 1309, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE013, 219 );
setPitch( spep_0 + 252, SE013, -500 );
setTimeStretch( SE013, 0.67, 30, 4 );

--敵倒れる
SE014 = playSeVer2( spep_0 + 298, 1008, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 298, SE014, 63 );
SE015 = playSeVer2( spep_0 + 302, 1012, "", 0, 0, 0, -1);

------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if ( _IS_DEAD_ == 1 ) then

    stopSe( spep_0 + 238, SE010, 0 );
    stopSe( spep_0 + 238, SE011, 0 );

    setDisp( spep_0 + 238, 1, 1 );
    endPhase( spep_0 + 240 );

     
else

------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------

-- -- ** ダメージ表示 ** --
dealDamage( spep_0 + 340 ); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 ); -- 450F

end