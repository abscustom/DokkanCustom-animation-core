--1029200:UR_マイ_必殺技：飛行要塞発進！！
--sp_effect_b4_00337
--sp2736

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
 
--エフェクト(味方)
SP_01 = 163032	--開幕～要塞呼び出しまで	ef_001
SP_03 = 163036	--要塞登場～フィニッシュまで	ef_002

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
 
ENABLE_AUTO_TIME_STRETCH(0.86);
 
OFFSET_X = -1;

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end
 
if (_IS_PLAYER_SIDE_ == 1) then
 
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 0;

setupMovie( 0, SP_01, 0, 1);

-------------------------------------------------
-- 開幕～要塞呼び出しまで
-------------------------------------------------
MAX_FRAME_0 = 624;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～要塞呼び出しまで ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 70;
 
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
--敵の動き_1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 60 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 361.2, -173.8 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 374.1, -181.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 374.1, -181.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 387, -189.3 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 387, -189.3 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 399.9, -197.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 399.9, -197.1 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 412.8, -204.9 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 412.8, -204.9 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 425.8, -212.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 425.8, -212.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 438.7, -220.4 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 438.7, -220.4 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 451.6, -228.2 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 451.6, -228.2 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 464.5, -236 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 464.5, -236 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 477.4, -243.7 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 477.4, -243.7 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 490.2, -251.5 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 490.2, -251.5 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 503.1, -259.3 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 503.1, -259.3 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 516, -267.1 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 516, -267.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 528.9, -274.8 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 528.9, -274.8 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 541.8, -282.6 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 541.8, -282.6 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 554.7, -290.4 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 554.7, -290.4 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 567.6, -298.2 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 567.6, -298.2 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 580.5, -305.9 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 580.5, -305.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 593.4, -313.7 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 593.4, -313.7 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 606.3, -321.5 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 606.3, -321.5 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 619.1, -329.3 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 619.1, -329.3 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 632, -337 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 632, -337 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 644.9, -344.8 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 644.9, -344.8 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 657.8, -352.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 657.8, -352.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 670.7, -360.3 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 670.7, -360.3 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 683.5, -368.1 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 683.5, -368.1 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 696.4, -375.9 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 696.4, -375.9 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 709.3, -383.7 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 709.3, -383.7 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 722.2, -391.4 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 722.2, -391.4 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 735, -399.2 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 735, -399.2 , 0 );

setScaleKey( spep_0 + 0, 1, 6.82, 6.82 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 6.92, 6.92 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 6.92, 6.92 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 7.02, 7.02 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 7.02, 7.02 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 7.12, 7.12 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 7.12, 7.12 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 7.22, 7.22 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 7.22, 7.22 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 7.33, 7.33 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 7.33, 7.33 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 7.43, 7.43 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 7.43, 7.43 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 7.53, 7.53 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 7.53, 7.53 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 7.63, 7.63 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 7.63, 7.63 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 7.73, 7.73 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 7.73, 7.73 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 7.83, 7.83 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 7.83, 7.83 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 7.93, 7.93 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 7.93, 7.93 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 8.03, 8.03 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 8.03, 8.03 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 8.13, 8.13 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 8.13, 8.13 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 8.23, 8.23 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 8.23, 8.23 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 8.33, 8.33 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 8.33, 8.33 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 8.43, 8.43 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 8.43, 8.43 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 8.53, 8.53 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 8.53, 8.53 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 8.73, 8.73 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 8.73, 8.73 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 8.83, 8.83 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 8.83, 8.83 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 8.93, 8.93 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 8.93, 8.93 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 9.03, 9.03 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 9.03, 9.03 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 9.13, 9.13 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 9.13, 9.13 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 9.23, 9.23 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 9.23, 9.23 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 9.33, 9.33 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 9.33, 9.33 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 9.43, 9.43 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 9.43, 9.43 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 9.54, 9.54 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 9.54, 9.54 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 9.64, 9.64 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 9.64, 9.64 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 9.74, 9.74 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 9.74, 9.74 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );

--敵の動き_2
setDisp( spep_0 + 352 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 528 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 352 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 358 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 436 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 456 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 492 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 352 + OFFSET_X, 1, 18.8, -95.9 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 18.8, -95.9 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 16.9, -92 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 16.9, -92 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 24.9, -97.7 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 24.9, -97.7 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 11.5, -96.9 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 11.5, -96.9 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -0.6, -96.2 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -0.6, -96.2 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -9.4, -97.6 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -9.4, -97.6 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -20.7, -95.2 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -20.7, -95.2 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -28.8, -95 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -28.8, -95 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -35.5, -94.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -35.5, -94.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -40.8, -94.9 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -40.8, -94.9 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -44.8, -95.1 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -44.8, -95.1 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -45.6, -93.5 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -45.6, -93.5 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -48.8, -95.9 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -48.8, -95.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -48.8, -96.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -48.8, -96.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -47.4, -97.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -47.4, -97.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -44.6, -98.3 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -44.6, -98.3 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -41.3, -99.3 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -41.3, -99.3 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -38.2, -100.2 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -38.2, -100.2 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -35.3, -101 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -35.3, -101 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -32.6, -101.8 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -32.6, -101.8 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -30.1, -102.6 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -30.1, -102.6 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -27.7, -103.2 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -27.7, -103.2 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -25.6, -103.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -25.6, -103.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -23.7, -104.4 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -23.7, -104.4 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -22, -104.9 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -22, -104.9 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -20.5, -105.4 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -20.5, -105.4 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -19.2, -105.8 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -19.2, -105.8 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -18.1, -106.1 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -18.1, -106.1 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -17.2, -106.4 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -17.2, -106.4 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -16.5, -106.6 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -16.5, -106.6 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -16, -106.7 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -16, -106.7 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -15.7, -106.8 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -15.7, -106.8 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -15.6, -106.8 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -15.6, -106.8 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -16.1, -108.4 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -16.1, -108.4 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -71, -97.3 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -71, -97.3 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -60.8, -107.6 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -60.8, -107.6 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -61.8, -106.8 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -61.8, -106.8 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -62.6, -106.1 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -62.6, -106.1 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -63.2, -105.6 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -63.2, -105.6 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -63.8, -105.1 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -63.8, -105.1 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -64.2, -104.7 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -64.2, -104.7 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -64.5, -104.5 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -64.5, -104.5 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -64.7, -104.3 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -64.7, -104.3 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -64.8, -104.2 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -64.8, -104.2 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -91.7, -121 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -91.7, -121 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -106.4, -132.2 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -106.4, -132.2 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -108.1, -130.6 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -108.1, -130.6 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -109.7, -129.2 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -109.7, -129.2 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -111.2, -127.9 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -111.2, -127.9 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -112.6, -126.6 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -112.6, -126.6 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -113.8, -125.5 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -113.8, -125.5 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -115, -124.4 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -115, -124.4 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -116, -123.5 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -116, -123.5 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -117, -122.6 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -117, -122.6 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -117.8, -121.9 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -117.8, -121.9 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -118.5, -121.2 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -118.5, -121.2 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -119.1, -120.7 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -119.1, -120.7 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -119.6, -120.2 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -119.6, -120.2 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -120, -119.9 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -120, -119.9 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -120.3, -119.6 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -120.3, -119.6 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -120.5, -119.5 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -120.5, -119.5 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -120.5, -119.4 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -120.5, -119.4 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -121.3, -248.9 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, -121.3, -248.9 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -113.5, -259.6 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -113.5, -259.6 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -115.2, -260.7 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -115.2, -260.7 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -116.8, -261.6 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -116.8, -261.6 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -118.3, -262.5 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -118.3, -262.5 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -119.7, -263.3 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -119.7, -263.3 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -120.9, -264.1 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -120.9, -264.1 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -122.1, -264.8 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -122.1, -264.8 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -123.1, -265.4 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -123.1, -265.4 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -124.1, -266 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -124.1, -266 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -124.9, -266.5 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -124.9, -266.5 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -125.6, -266.9 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -125.6, -266.9 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -126.2, -267.3 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -126.2, -267.3 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -126.7, -267.6 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -126.7, -267.6 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -127.1, -267.8 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -127.1, -267.8 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -127.4, -268 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -127.4, -268 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -127.6, -268.1 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -127.6, -268.1 , 0 );

setScaleKey( spep_0 + 352 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 0.7, 0.7 );

setRotateKey( spep_0 + 352 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -58.9 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, -58.9 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, -58.2 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -58.2 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -57.5 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -57.5 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -56.9 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -56.9 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -56.4 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -56.4 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -56 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -56 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -55.6 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -55.6 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -55.4 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -55.4 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -55.3 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -55.3 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -55.2 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, -55.2 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 528 + OFFSET_X, 1, 1.3 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 400, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--二人走ってくる
SE003 = playSeVer2( spep_0 + 4, 1108, "", 0, 0, 0, 0.5);
SE004 = playSeVer2( spep_0 + 4, 1107, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 4, SE004);
SE005 = playSeVer2( spep_0 + 16, 1108, "", 0, 0, 0, 0.5);
SE006 = playSeVer2( spep_0 + 24, 1107, "", 0, 0, 0, 0.5);
SE007 = playSeVer2( spep_0 + 26, 1108, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 26, SE007);
SE008 = playSeVer2( spep_0 + 36, 1108, "", 0, 0, 0, 0.5);
SE009 = playSeVer2( spep_0 + 42, 1107, "", 0, 0, 0, 0.5);
SE010 = playSeVer2( spep_0 + 48, 1108, "", 0, 0, 0, 0.5);
SE011 = playSeVer2( spep_0 + 58, 1108, "", 0, 0, 0, 0.5);
SE012 = playSeVer2( spep_0 + 64, 1107, "", 0, 0, 0, 0.5);
SE013 = playSeVer2( spep_0 + 70, 1108, "", 0, 0, 0, 0.5);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_0 + 180;  -- エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
    pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
    stopMovie( SP_dodge + 9 ); -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE00X, 0);
   
    pauseAll( SP_dodge, 67);
   
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え
    
    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);
    
    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade
    
    endPhase( SP_dodge+10);
    
    do return end
    else end
   
-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--背景音
SE016 = playSeVer2( spep_0 + 186, 1215, "",spep_0 + 386, 0, 70, -1);

--シュウ走り出す
SE015 = playSeVer2( spep_0 + 182, 1107, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 194, 1107, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 206, 1107, "", 0, 0, 0, -1);

--銃撃つ
SE019 = playSeVer2( spep_0 + 238, 1016, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 242, 1028, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 268, 1016, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 270, 1028, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 290, 1016, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 292, 1028, "", 0, 0, 0, -1);

--銃地面当たる
SE025 = playSeVer2( spep_0 + 346, 1016, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 346, 1025, "",spep_0 + 384, 0, 26, -1);
SE027 = playSeVer2( spep_0 + 358, 1016, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 358, 1025, "",spep_0 + 402, 0, 28, -1);
SE029 = playSeVer2( spep_0 + 374, 1016, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 374, 1025, "",spep_0 + 426, 0, 36, -1);

--環境音2
SE061 = playSeVer2( spep_0 + 374, 1269, "",spep_0 + 666, 10, 42, -1);
setSeVolumeByWorkId( spep_0 + 374, SE061, 25 );

--シュウ飛びかかる
SE031 = playSeVer2( spep_0 + 400, 63, "",spep_0 + 438, 0, 18, -1);

--斬る
SE032 = playSeVer2( spep_0 + 426, 1032, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 426, 1001, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 432, 1031, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 448, 1032, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 448, 1001, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 452, 1031, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 482, 1032, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 482, 1061, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 488, 1031, "", 0, 0, 0, -1);

--風音
SE041 = playSeVer2( spep_0 + 524, 1175, "",spep_0 + 634, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 524, SE041, 25 );

--髪なびく
SE042 = playSeVer2( spep_0 + 538, 1332, "", 0, 0, 0, -1);

--トランシーバー構える
SE043 = playSeVer2( spep_0 + 550, 21, "", 0, 0, 0, -1);

--髪なびく
SE044 = playSeVer2( spep_0 + 564, 1331, "",spep_0 + 614, 0, 14, -1);
SE045 = playSeVer2( spep_0 + 584, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 584, SE045, 56 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;-- 624
 
--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0)+2;
entryFade( spep_1+94, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

--飛空挺おりてくる
SE047 = playSeVer2( spep_1 + 84, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE047, 75 );
SE048 = playSeVer2( spep_1 + 84, 63, "",spep_2 + 52, 0, 34, -1);
SE049 = playSeVer2( spep_1 + 84, 1116, "",spep_2 + 38, 0, 26, -1);

-------------------------------------------------
-- 要塞登場～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 382;
 
-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- 要塞登場～フィニッシュまで ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
setDisp( spep_2 + 248 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 382 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 248 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 262 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 266 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 272 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 278 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 284 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 292 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 294 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 296 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 298 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 248 + OFFSET_X, 1, 465.3, -230.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 465.3, -230.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 328.9, -230.5 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 328.9, -230.5 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 217.2, -230.5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 217.2, -230.5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 130.4, -230.5 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 130.4, -230.5 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 68.4, -230.5 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 68.4, -230.5 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 31.2, -230.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 31.2, -230.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 18.8, -230.5 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 18.8, -230.5 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 31.4, -225 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 31.4, -225 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 27.6, -225 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 27.6, -225 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 58.5, -232.1 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 58.5, -232.1 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 60.7, -241.2 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 60.7, -241.2 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 45.1, -227.1 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 45.1, -227.1 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 26.7, -224.9 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 26.7, -224.9 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 18.6, -223.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 18.6, -223.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 25.8, -225.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 25.8, -225.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 21.6, -229.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 21.6, -229.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 31.6, -222.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 31.6, -222.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 27.8, -241 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 27.8, -241 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 27, -224.9 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 27, -224.9 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 15.9, -218.8 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 15.9, -218.8 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 25.6, -224.9 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 25.6, -224.9 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 8.6, -225 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 8.6, -225 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 21.7, -229.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 21.7, -229.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 18, -225 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 18, -225 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 25.8, -213.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 25.8, -213.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 19.2, -225.1 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 19.2, -225.1 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 27, -224.9 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 27, -224.9 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 10.6, -225.1 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 10.6, -225.1 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 25.6, -224.9 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 25.6, -224.9 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 8.6, -225 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 8.6, -225 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 25.8, -225.1 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 25.8, -225.1 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 18, -225 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 18, -225 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 16.4, -224.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 16.4, -224.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 19.2, -225.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 19.2, -225.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 27, -224.9 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 27, -224.9 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 10.6, -225.1 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 10.6, -225.1 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 25.6, -224.9 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 25.6, -224.9 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 8.6, -225 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 8.6, -225 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 25.8, -225.1 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 25.8, -225.1 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 18, -225 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 18, -225 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 16.4, -224.8 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 16.4, -224.8 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 19.2, -225.1 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 19.2, -225.1 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 27, -224.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 27, -224.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 10.6, -225.1 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 10.6, -225.1 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 25.6, -224.9 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 25.6, -224.9 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 8.6, -225 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 8.6, -225 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 25.8, -225.1 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 25.8, -225.1 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 18, -225 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 18, -225 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 16.4, -224.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 16.4, -224.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 19.2, -225.1 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 19.2, -225.1 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 27, -224.9 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 27, -224.9 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 10.6, -225.1 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 10.6, -225.1 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 25.6, -224.9 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 25.6, -224.9 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 8.6, -225 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 8.6, -225 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 25.8, -225.1 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 25.8, -225.1 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 18, -225 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 18, -225 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 16.4, -224.8 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 16.4, -224.8 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 19.2, -225.1 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 19.2, -225.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 27, -224.9 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 27, -224.9 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 10.6, -225.1 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 10.6, -225.1 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 25.6, -224.9 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 25.6, -224.9 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 8.6, -225 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 8.6, -225 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 25.8, -225.1 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 25.8, -225.1 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 18, -225 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 18, -225 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 16.4, -224.8 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 16.4, -224.8 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 19.2, -225.1 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 19.2, -225.1 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 27, -224.9 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 27, -224.9 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 25.6, -224.9 , 0 );

setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 1.23, 1.23 );

setRotateKey( spep_2 + 248 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 33 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 33 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 31.1 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 31.1 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 84.7 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 84.7 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -37.5 );

-- ** 音 ** --
--飛空挺おりてくる
SE050 = playSeVer2( spep_2 + 8, 1392, "", 0, 0, 0, -1);

--機関銃でてくる
SE051 = playSeVer2( spep_2 + 104, 91, "",spep_2 + 148, 0, 16, -1);

--機関銃発射
SE052 = playSeVer2( spep_2 + 136, 1406, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 138, 1448, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE053, 74 );
SE054 = playSeVer2( spep_2 + 138, 1409, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE054, 140 );
SE055 = playSeVer2( spep_2 + 138, 1149, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 252, 1149, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 252, 1406, "", 0, 0, 0, -1);

--爆発
SE058 = playSeVer2( spep_2 + 252, 1023, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 282, 1024, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 312, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 282); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 382F
 
else
 
------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

 
 
spep_0 = 0;


setupMovie( 0, SP_01, 0, 1);

-------------------------------------------------
-- 開幕～要塞呼び出しまで
-------------------------------------------------
MAX_FRAME_0 = 624;
 
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～要塞呼び出しまで ef_001r
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 70;
 
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
--敵の動き_1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 60 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1,2 );

setMoveKey( spep_0 + 0, 1, -361.2, -173.8 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -374.1, -181.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -374.1, -181.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -387, -189.3 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -387, -189.3 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -399.9, -197.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -399.9, -197.1 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -412.8, -204.9 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -412.8, -204.9 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -425.8, -212.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -425.8, -212.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -438.7, -220.4 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -438.7, -220.4 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -451.6, -228.2 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -451.6, -228.2 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -464.5, -236 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -464.5, -236 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -477.4, -243.7 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -477.4, -243.7 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -490.2, -251.5 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -490.2, -251.5 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -503.1, -259.3 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -503.1, -259.3 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -516, -267.1 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -516, -267.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -528.9, -274.8 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -528.9, -274.8 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -541.8, -282.6 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -541.8, -282.6 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -554.7, -290.4 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -554.7, -290.4 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -567.6, -298.2 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -567.6, -298.2 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -580.5, -305.9 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -580.5, -305.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -593.4, -313.7 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -593.4, -313.7 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -606.3, -321.5 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -606.3, -321.5 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -619.1, -329.3 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -619.1, -329.3 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -632, -337 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -632, -337 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -644.9, -344.8 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -644.9, -344.8 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -657.8, -352.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -657.8, -352.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -670.7, -360.3 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -670.7, -360.3 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -683.5, -368.1 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -683.5, -368.1 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -696.4, -375.9 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -696.4, -375.9 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -709.3, -383.7 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -709.3, -383.7 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -722.2, -391.4 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -722.2, -391.4 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -735, -399.2 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -735, -399.2 , 0 );

setScaleKey( spep_0 + 0, 1, 6.82, 6.82 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 6.92, 6.92 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 6.92, 6.92 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 7.02, 7.02 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 7.02, 7.02 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 7.12, 7.12 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 7.12, 7.12 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 7.22, 7.22 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 7.22, 7.22 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 7.33, 7.33 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 7.33, 7.33 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 7.43, 7.43 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 7.43, 7.43 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 7.53, 7.53 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 7.53, 7.53 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 7.63, 7.63 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 7.63, 7.63 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 7.73, 7.73 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 7.73, 7.73 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 7.83, 7.83 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 7.83, 7.83 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 7.93, 7.93 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 7.93, 7.93 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 8.03, 8.03 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 8.03, 8.03 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 8.13, 8.13 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 8.13, 8.13 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 8.23, 8.23 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 8.23, 8.23 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 8.33, 8.33 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 8.33, 8.33 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 8.43, 8.43 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 8.43, 8.43 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 8.53, 8.53 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 8.53, 8.53 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 8.73, 8.73 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 8.73, 8.73 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 8.83, 8.83 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 8.83, 8.83 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 8.93, 8.93 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 8.93, 8.93 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 9.03, 9.03 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 9.03, 9.03 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 9.13, 9.13 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 9.13, 9.13 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 9.23, 9.23 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 9.23, 9.23 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 9.33, 9.33 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 9.33, 9.33 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 9.43, 9.43 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 9.43, 9.43 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 9.54, 9.54 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 9.54, 9.54 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 9.64, 9.64 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 9.64, 9.64 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 9.74, 9.74 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 9.74, 9.74 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );

--敵の動き_2
setDisp( spep_0 + 352 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 528 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 352 + OFFSET_X, 1,0 );
changeAnime( spep_0 + 358 + OFFSET_X, 1,4 );
changeAnime( spep_0 + 436 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 456 + OFFSET_X, 1, 108  );
changeAnime( spep_0 + 492 + OFFSET_X, 1, 107  );

setMoveKey( spep_0 + 352 + OFFSET_X, 1, -18.8, -95.9 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -18.8, -95.9 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -16.9, -92 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -16.9, -92 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -24.9, -97.7 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -24.9, -97.7 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -11.5, -96.9 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -11.5, -96.9 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 0.6, -96.2 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 0.6, -96.2 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 9.4, -97.6 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 9.4, -97.6 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 20.7, -95.2 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 20.7, -95.2 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 28.8, -95 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 28.8, -95 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 35.5, -94.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 35.5, -94.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 40.8, -94.9 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 40.8, -94.9 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 44.8, -95.1 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 44.8, -95.1 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 45.6, -93.5 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 45.6, -93.5 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 48.8, -95.9 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 48.8, -95.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 48.8, -96.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 48.8, -96.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 47.4, -97.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 47.4, -97.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 44.6, -98.3 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 44.6, -98.3 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 41.3, -99.3 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 41.3, -99.3 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 38.2, -100.2 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 38.2, -100.2 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 35.3, -101 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 35.3, -101 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 32.6, -101.8 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 32.6, -101.8 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 30.1, -102.6 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 30.1, -102.6 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 27.7, -103.2 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 27.7, -103.2 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 25.6, -103.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 25.6, -103.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 23.7, -104.4 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 23.7, -104.4 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 22, -104.9 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 22, -104.9 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 20.5, -105.4 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 20.5, -105.4 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 19.2, -105.8 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 19.2, -105.8 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 18.1, -106.1 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 18.1, -106.1 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 17.2, -106.4 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 17.2, -106.4 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 16.5, -106.6 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 16.5, -106.6 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 16, -106.7 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 16, -106.7 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 15.7, -106.8 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 15.7, -106.8 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 15.6, -106.8 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 15.6, -106.8 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 16.1, -108.4 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 16.1, -108.4 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 71, -97.3 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 71, -97.3 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 60.8, -107.6 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 60.8, -107.6 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 61.8, -106.8 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 61.8, -106.8 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 62.6, -106.1 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 62.6, -106.1 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 63.2, -105.6 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 63.2, -105.6 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 63.8, -105.1 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 63.8, -105.1 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 64.2, -104.7 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 64.2, -104.7 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 64.5, -104.5 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 64.5, -104.5 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 64.7, -104.3 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 64.7, -104.3 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 64.8, -104.2 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 64.8, -104.2 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 91.7, -121 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 91.7, -121 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 106.4, -132.2 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 106.4, -132.2 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 108.1, -130.6 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 108.1, -130.6 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 109.7, -129.2 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 109.7, -129.2 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 111.2, -127.9 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 111.2, -127.9 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 112.6, -126.6 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 112.6, -126.6 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 113.8, -125.5 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 113.8, -125.5 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 115, -124.4 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 115, -124.4 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 116, -123.5 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 116, -123.5 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 117, -122.6 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 117, -122.6 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 117.8, -121.9 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 117.8, -121.9 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 118.5, -121.2 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 118.5, -121.2 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 119.1, -120.7 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 119.1, -120.7 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 119.6, -120.2 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 119.6, -120.2 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 120, -119.9 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 120, -119.9 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 120.3, -119.6 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 120.3, -119.6 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 120.5, -119.5 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 120.5, -119.5 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 120.5, -119.4 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 120.5, -119.4 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 121.3, -248.9 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 121.3, -248.9 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 113.5, -259.6 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 113.5, -259.6 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 115.2, -260.7 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 115.2, -260.7 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 116.8, -261.6 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 116.8, -261.6 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 118.3, -262.5 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 118.3, -262.5 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 119.7, -263.3 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 119.7, -263.3 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 120.9, -264.1 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 120.9, -264.1 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 122.1, -264.8 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 122.1, -264.8 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 123.1, -265.4 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 123.1, -265.4 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 124.1, -266 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 124.1, -266 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 124.9, -266.5 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 124.9, -266.5 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 125.6, -266.9 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 125.6, -266.9 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 126.2, -267.3 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 126.2, -267.3 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 126.7, -267.6 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 126.7, -267.6 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 127.1, -267.8 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 127.1, -267.8 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 127.4, -268 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 127.4, -268 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 127.6, -268.1 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 127.6, -268.1 , 0 );

setScaleKey( spep_0 + 352 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 0.7, 0.7 );

setRotateKey( spep_0 + 352 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, 58.9 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, 58.9 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, 58.2 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, 58.2 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, 57.5 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, 57.5 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, 56.9 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, 56.9 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, 56.4 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, 56.4 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, 56 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, 56 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, 55.6 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, 55.6 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, 55.4 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, 55.4 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, 55.3 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, 55.3 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, 55.2 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, 55.2 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_0 + 528 + OFFSET_X, 1, -1.3 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 400, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--二人走ってくる
SE003 = playSeVer2( spep_0 + 4, 1108, "", 0, 0, 0, 0.5);
SE004 = playSeVer2( spep_0 + 4, 1107, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 4, SE004);
SE005 = playSeVer2( spep_0 + 16, 1108, "", 0, 0, 0, 0.5);
SE006 = playSeVer2( spep_0 + 24, 1107, "", 0, 0, 0, 0.5);
SE007 = playSeVer2( spep_0 + 26, 1108, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 26, SE007);
SE008 = playSeVer2( spep_0 + 36, 1108, "", 0, 0, 0, 0.5);
SE009 = playSeVer2( spep_0 + 42, 1107, "", 0, 0, 0, 0.5);
SE010 = playSeVer2( spep_0 + 48, 1108, "", 0, 0, 0, 0.5);
SE011 = playSeVer2( spep_0 + 58, 1108, "", 0, 0, 0, 0.5);
SE012 = playSeVer2( spep_0 + 64, 1107, "", 0, 0, 0, 0.5);
SE013 = playSeVer2( spep_0 + 70, 1108, "", 0, 0, 0, 0.5);


--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_0 + 180;  -- エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
    pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
    stopMovie( SP_dodge + 9 ); -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE00X, 0);
   
    pauseAll( SP_dodge, 67);
   
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え
    
    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);
    
    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade
    
    endPhase( SP_dodge+10);
    
    do return end
    else end
   
-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--背景音
SE016 = playSeVer2( spep_0 + 186, 1215, "",spep_0 + 386, 0, 70, -1);

--シュウ走り出す
SE015 = playSeVer2( spep_0 + 182, 1107, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 194, 1107, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 206, 1107, "", 0, 0, 0, -1);

--銃撃つ
SE019 = playSeVer2( spep_0 + 238, 1016, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 242, 1028, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 268, 1016, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 270, 1028, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 290, 1016, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 292, 1028, "", 0, 0, 0, -1);

--銃地面当たる
SE025 = playSeVer2( spep_0 + 346, 1016, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 346, 1025, "",spep_0 + 384, 0, 26, -1);
SE027 = playSeVer2( spep_0 + 358, 1016, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 358, 1025, "",spep_0 + 402, 0, 28, -1);
SE029 = playSeVer2( spep_0 + 374, 1016, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 374, 1025, "",spep_0 + 426, 0, 36, -1);

--環境音2
SE061 = playSeVer2( spep_0 + 374, 1269, "",spep_0 + 666, 10, 42, -1);
setSeVolumeByWorkId( spep_0 + 374, SE061, 25 );

--シュウ飛びかかる
SE031 = playSeVer2( spep_0 + 400, 63, "",spep_0 + 438, 0, 18, -1);

--斬る
SE032 = playSeVer2( spep_0 + 426, 1032, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 426, 1001, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 432, 1031, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 448, 1032, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 448, 1001, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 452, 1031, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 482, 1032, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 482, 1061, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 488, 1031, "", 0, 0, 0, -1);

--風音
SE041 = playSeVer2( spep_0 + 524, 1175, "",spep_0 + 634, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 524, SE041, 25 );

--髪なびく
SE042 = playSeVer2( spep_0 + 538, 1332, "", 0, 0, 0, -1);

--トランシーバー構える
SE043 = playSeVer2( spep_0 + 550, 21, "", 0, 0, 0, -1);

--髪なびく
SE044 = playSeVer2( spep_0 + 564, 1331, "",spep_0 + 614, 0, 14, -1);
SE045 = playSeVer2( spep_0 + 584, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 584, SE045, 56 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;-- 624
 
--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0)+2;
entryFade( spep_1+94, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

--飛空挺おりてくる
SE047 = playSeVer2( spep_1 + 84, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE047, 75 );
SE048 = playSeVer2( spep_1 + 84, 63, "",spep_2 + 52, 0, 34, -1);
SE049 = playSeVer2( spep_1 + 84, 1116, "",spep_2 + 38, 0, 26, -1);

-------------------------------------------------
-- 要塞登場～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 382;
 
-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- 要塞登場～フィニッシュまで ef_002r
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
setDisp( spep_2 + 248 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 382 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 248 + OFFSET_X, 1,4 );
changeAnime( spep_2 + 262 + OFFSET_X, 1,6 );
changeAnime( spep_2 + 266 + OFFSET_X, 1,8 );
changeAnime( spep_2 + 272 + OFFSET_X, 1,6 );
changeAnime( spep_2 + 278 + OFFSET_X, 1,8 );
changeAnime( spep_2 + 284 + OFFSET_X, 1,6 );
changeAnime( spep_2 + 292 + OFFSET_X, 1,8 );
changeAnime( spep_2 + 294 + OFFSET_X, 1,6 );
changeAnime( spep_2 + 296 + OFFSET_X, 1,8 );
changeAnime( spep_2 + 298 + OFFSET_X, 1,6 );

setMoveKey( spep_2 + 248 + OFFSET_X, 1, -465.3, -230.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -465.3, -230.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -328.9, -230.5 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -328.9, -230.5 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -217.2, -230.5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -217.2, -230.5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -130.4, -230.5 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -130.4, -230.5 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -68.4, -230.5 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -68.4, -230.5 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -31.2, -230.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -31.2, -230.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -18.8, -230.5 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -18.8, -230.5 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -31.4, -225 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -31.4, -225 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -27.6, -225 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -27.6, -225 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -58.5, -232.1 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -58.5, -232.1 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -60.7, -241.2 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -60.7, -241.2 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -45.1, -227.1 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -45.1, -227.1 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -26.7, -224.9 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -26.7, -224.9 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -18.6, -223.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -18.6, -223.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -25.8, -225.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -25.8, -225.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -21.6, -229.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -21.6, -229.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -31.6, -222.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -31.6, -222.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -27.8, -241 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -27.8, -241 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -27, -224.9 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -27, -224.9 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -15.9, -218.8 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -15.9, -218.8 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -25.6, -224.9 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -25.6, -224.9 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -8.6, -225 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -8.6, -225 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -21.7, -229.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -21.7, -229.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -18, -225 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -18, -225 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -25.8, -213.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -25.8, -213.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -19.2, -225.1 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -19.2, -225.1 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -27, -224.9 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -27, -224.9 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -10.6, -225.1 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -10.6, -225.1 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -25.6, -224.9 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -25.6, -224.9 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -8.6, -225 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -8.6, -225 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -25.8, -225.1 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -25.8, -225.1 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -18, -225 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -18, -225 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -16.4, -224.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -16.4, -224.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -19.2, -225.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -19.2, -225.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -27, -224.9 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -27, -224.9 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -10.6, -225.1 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -10.6, -225.1 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -25.6, -224.9 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -25.6, -224.9 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -8.6, -225 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -8.6, -225 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -25.8, -225.1 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -25.8, -225.1 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -18, -225 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -18, -225 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -16.4, -224.8 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -16.4, -224.8 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -19.2, -225.1 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -19.2, -225.1 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -27, -224.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -27, -224.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -10.6, -225.1 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -10.6, -225.1 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -25.6, -224.9 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -25.6, -224.9 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -8.6, -225 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -8.6, -225 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -25.8, -225.1 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -25.8, -225.1 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -18, -225 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -18, -225 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -16.4, -224.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -16.4, -224.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -19.2, -225.1 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -19.2, -225.1 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -27, -224.9 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -27, -224.9 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -10.6, -225.1 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -10.6, -225.1 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -25.6, -224.9 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -25.6, -224.9 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -8.6, -225 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -8.6, -225 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -25.8, -225.1 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -25.8, -225.1 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -18, -225 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -18, -225 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -16.4, -224.8 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -16.4, -224.8 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -19.2, -225.1 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -19.2, -225.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -27, -224.9 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -27, -224.9 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -10.6, -225.1 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -10.6, -225.1 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -25.6, -224.9 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -25.6, -224.9 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -8.6, -225 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -8.6, -225 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -25.8, -225.1 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -25.8, -225.1 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -18, -225 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -18, -225 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -16.4, -224.8 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -16.4, -224.8 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -19.2, -225.1 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -19.2, -225.1 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -27, -224.9 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -27, -224.9 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -25.6, -224.9 , 0 );

setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 1.23, 1.23 );

setRotateKey( spep_2 + 248 + OFFSET_X, 1, -17.4 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -17.4 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, -32.3 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, -32.3 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 40.5 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 40.5 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 45.7 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 45.7 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -84.7 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -84.7 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 45.7 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 45.7 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 45.7 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 45.7 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 45.7 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 45.7 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 45.7 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, 45.7 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, 45.7 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, 45.7 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, 37.5 );

-- ** 音 ** --
--飛空挺おりてくる
SE050 = playSeVer2( spep_2 + 8, 1392, "", 0, 0, 0, -1);

--機関銃でてくる
SE051 = playSeVer2( spep_2 + 104, 91, "",spep_2 + 148, 0, 16, -1);

--機関銃発射
SE052 = playSeVer2( spep_2 + 136, 1406, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 138, 1448, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE053, 74 );
SE054 = playSeVer2( spep_2 + 138, 1409, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE054, 140 );
SE055 = playSeVer2( spep_2 + 138, 1149, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 252, 1149, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 252, 1406, "", 0, 0, 0, -1);

--爆発
SE058 = playSeVer2( spep_2 + 252, 1023, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 282, 1024, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 312, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 282); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 382F

end