-- 4028140: UR_孫悟飯(幼年期)__必殺技(交代後)：魔閃光
-- sp_effect_a1_00411
-- sp2643

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162432;  --  ef_001
SP_002 = 162434;  --  ef_002
SP_003 = 162436;  --  ef_003
SP_004 = 162438;  --  ef_004

-- 敵側
SP_001r = 162433;  --  ef_001r
SP_002r = 162435;  --  ef_002r
SP_003r = 162437;  --  ef_003r
SP_004r = 162439;  --  ef_004r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
--  ef_001
------------------------------------------------------
MAX_FRAME_0 = 653;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_02 = entryEffect( spep_0 + 0, SP_002, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_02, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_02, 0 );
setEffAlphaKey( spep_0 + 0, SP_02, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_02, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 10;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
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
-- 敵の動き1
setDisp( spep_0 + 178 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 214 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 178 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 178 + OFFSET_X, 1, 52.6, 172.7 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 52.6, 172.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 123.8, 142.4 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 123.8, 142.4 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 79.1, 194.6 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 79.1, 194.6 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 168, 180.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 168, 180.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 84.7, 208.3 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 84.7, 208.3 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 65, 203.1 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 65, 203.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 74.1, 225.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 74.1, 225.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 86.7, 256.1 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 86.7, 256.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 103.5, 297.2 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 103.5, 297.2 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 125.2, 350 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 125.2, 350 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 152.1, 415.9 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 152.1, 415.9 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 185.1, 496.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 185.1, 496.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 224.6, 592.9 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 224.6, 592.9 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 271.3, 707 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 271.3, 707 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 325.8, 840 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 325.8, 840 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 388.6, 993.5 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 388.6, 993.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 460.3, 1168.9 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 460.3, 1168.9 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 541.6, 1367.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 541.6, 1367.6 , 0 );

setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 4.65, 4.65 );

setRotateKey( spep_0 + 178 + OFFSET_X, 1, -59 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -59 );

-- 敵の動き2
setDisp( spep_0 + 396 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 454 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 396 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 396 + OFFSET_X, 1, 91.7, 21 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 91.7, 21 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 99.9, 23.5 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 99.9, 23.5 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 107.8, 26.1 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 107.8, 26.1 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 115, 28.7 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 115, 28.7 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 121.1, 31.2 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 121.1, 31.2 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 126, 33.8 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 126, 33.8 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 129.1, 36.4 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 129.1, 36.4 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 130.2, 38.9 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 130.2, 38.9 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 128.9, 41.5 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 128.9, 41.5 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 124.9, 44.1 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 124.9, 44.1 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 101, 75.8 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 101, 75.8 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 64.1, 61.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 64.1, 61.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 125.1, 93.4 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 125.1, 93.4 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 62.7, 64.7 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 62.7, 64.7 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 68.1, 43 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 68.1, 43 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 93.3, 70.8 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 93.3, 70.8 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 123.1, 99.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 123.1, 99.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 152.9, 129.1 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 152.9, 129.1 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 182.9, 158.4 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 182.9, 158.4 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 212.9, 187.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 212.9, 187.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 243, 217.3 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 243, 217.3 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 300, 249.3 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 300, 249.3 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 357, 281.3 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 357, 281.3 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 414, 313.4 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 414, 313.4 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 470.9, 345.4 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 470.9, 345.4 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 527.8, 377.4 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 527.8, 377.4 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 584.6, 409.2 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 584.6, 409.2 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 641.2, 441 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 641.2, 441 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 697.6, 472.7 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 697.6, 472.7 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 753.8, 504.5 , 0 );

setScaleKey( spep_0 + 396 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 2.92, 2.92 );

setRotateKey( spep_0 + 396 + OFFSET_X, 1, -71.7 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, -71.7 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, -70 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, -70 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, -68.2 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, -68.2 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, -66.5 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, -66.5 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, -61.8 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -61.8 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -58.8 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, -58.8 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, -55.8 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, -55.8 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -38.2 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -38.2 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -34 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -34 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -27.7 );

-- ** 音 ** --
--悟飯力む
SE002 = playSeVer2( spep_0 + 20, 1189, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 24, 1006, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 24, 1330, "",spep_0 + 104, 0, 40, -1);

--悟飯向かっていく
SE005 = playSeVer2( spep_0 + 98, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 98, 1117, "",spep_0 + 190, 0, 14, -1);
SE007 = playSeVer2( spep_0 + 98, 1207, "",spep_0 + 190, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 98, SE007, 63 );
SE008 = playSeVer2( spep_0 + 98, 1264, "",spep_0 + 190, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 98, SE008, 56 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 146;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

--蹴り飛ばす
SE009 = playSeVer2( spep_0 + 162, 1004, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 174, 1187, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 174, 1183, "",spep_0 + 258, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 174, SE011, 68 );
SE012 = playSeVer2( spep_0 + 174, 1110, "", 0, 0, 0, -1);

--走る音
SE014 = playSeVer2( spep_0 + 224, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE014, 34 );
SE015 = playSeVer2( spep_0 + 224, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE015, 71 );

--走る
SE013 = playSeVer2( spep_0 + 224, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE013, 141 );
SE016 = playSeVer2( spep_0 + 232, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE016, 141 );
SE017 = playSeVer2( spep_0 + 242, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE017, 141 );
SE018 = playSeVer2( spep_0 + 252, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE018, 141 );
SE019 = playSeVer2( spep_0 + 260, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE019, 141 );
SE020 = playSeVer2( spep_0 + 270, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE020, 141 );
SE021 = playSeVer2( spep_0 + 280, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE021, 141 );
SE024 = playSeVer2( spep_0 + 288, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE024, 141 );

--パンチ強打ヒット（単打）
SE022 = playSeVer2( spep_0 + 286, 1009, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 298, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 298, SE025, 79 );
SE027 = playSeVer2( spep_0 + 308, 1009, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 318, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE029, 79 );
SE031 = playSeVer2( spep_0 + 328, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE031, 91 );
setPitch( spep_0 + 328, SE031, -200 );
setTimeStretch( SE031, 0.87, 30, 4 );
SE033 = playSeVer2( spep_0 + 340, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE033, 106 );
SE035 = playSeVer2( spep_0 + 350, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 350, SE035, 95 );

--打撃音_シーラス
SE023 = playSeVer2( spep_0 + 286, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 286, SE023, 92 );
SE026 = playSeVer2( spep_0 + 298, 1110, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 308, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE028, 107 );
setPitch( spep_0 + 308, SE028, -200 );
setTimeStretch( SE028, 0.87, 30, 4 );
SE030 = playSeVer2( spep_0 + 318, 1110, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 328, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE032, 92 );
SE034 = playSeVer2( spep_0 + 340, 1110, "", 0, 0, 0, -1);
setPitch( spep_0 + 340, SE034, 200 );
setTimeStretch( SE034, 1.13, 30, 4 );
SE036 = playSeVer2( spep_0 + 350, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 350, SE036, 92 );

--構える
SE037 = playSeVer2( spep_0 + 382, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 382, SE037, 68 );

--アッパー
SE038 = playSeVer2( spep_0 + 408, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE038, 124 );
SE039 = playSeVer2( spep_0 + 416, 1187, "", 0, 0, 0, -1);

--飛び込んでくる
SE040 = playSeVer2( spep_0 + 454, 1117, "",spep_0 + 518, 0, 20, -1);
SE041 = playSeVer2( spep_0 + 454, 9, "",spep_0 + 516, 0, 18, -1);

--蹴りヒット
SE042 = playSeVer2( spep_0 + 496, 1120, "", 0, 0, 0, -1);

--力溜める
SE043 = playSeVer2( spep_0 + 510, 1232, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 510, 1278, "",spep_0 + 640, 0, 70, -1);
setSeVolumeByWorkId( spep_0 + 510, SE044, 68 );
SE045 = playSeVer2( spep_0 + 510, 1226, "",spep_0 + 674, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 510, SE045, 50 );

--気弾溜め
SE046 = playSeVer2( spep_0 + 586, 1334, "",spep_0 + 670, 4, 18, -1);
setSeVolumeByWorkId( spep_0 + 586, SE046, 115 );
setStartTimeMs( SE046,  867 );
SE048 = playSeVer2( spep_0 + 588, 1252, "",spep_0 + 672, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 588, SE048, 122 );
SE049 = playSeVer2( spep_0 + 588, 1265, "",spep_0 + 670, 0, 18, -1);
SE050 = playSeVer2( spep_0 + 588, 1296, "",spep_0 + 668, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 588, SE050, 106 );
SE051 = playSeVer2( spep_0 + 588, 1393, "",spep_0 + 668, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 588, SE051, 132 );

--腕上げる
SE047 = playSeVer2( spep_0 + 578, 1004, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 653

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
--  ef_003
------------------------------------------------------
MAX_FRAME_2 = 256;

-- ** エフェクト等 ** --
SP_03 = entryEffect( spep_2 + 0, SP_003, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );
SP_04 = entryEffect( spep_2 + 0, SP_004, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_04, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_04, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_04, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_04, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_04, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_04, 0 );
setEffAlphaKey( spep_2 + 0, SP_04, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_04, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 198 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 60 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 60 + OFFSET_X, 1, 132.8, -77.1 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 132.8, -77.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 134.6, -78.2 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 134.6, -78.2 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 136.4, -79.2 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 136.4, -79.2 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 138.2, -80.3 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 138.2, -80.3 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 139.9, -81.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 139.9, -81.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 141.7, -82.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 141.7, -82.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 143.5, -83.5 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 143.5, -83.5 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 145.3, -84.5 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 145.3, -84.5 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 147, -85.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 147, -85.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 148.8, -86.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 148.8, -86.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 150.6, -87.7 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 150.6, -87.7 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 152.4, -88.7 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 152.4, -88.7 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 154.1, -89.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 154.1, -89.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 155.9, -90.8 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 155.9, -90.8 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 157.7, -91.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 157.7, -91.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 159.5, -92.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 159.5, -92.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 161.3, -94 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 161.3, -94 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 163, -95 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 163, -95 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 164.8, -96.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 164.8, -96.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 166.6, -97.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 166.6, -97.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 168.4, -98.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 168.4, -98.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 170.2, -99.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 170.2, -99.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 171.9, -100.3 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 171.9, -100.3 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 182.9, -88.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 182.9, -88.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 161.8, -107.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 161.8, -107.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 186.2, -81.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 186.2, -81.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 179.5, -111.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 179.5, -111.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 160.4, -80.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 160.4, -80.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 183.2, -84.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 183.2, -84.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 157.3, -109.5 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 157.3, -109.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 176.1, -101.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 176.1, -101.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 153.6, -84.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 153.6, -84.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 182.7, -90.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 182.7, -90.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 158.7, -108.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 158.7, -108.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 178.7, -88.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 178.7, -88.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 167.5, -99.6 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 167.5, -99.6 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 172.4, -102.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 172.4, -102.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 168.4, -97 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 168.4, -97 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 172.4, -102.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 172.4, -102.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 168.7, -97.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 168.7, -97.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 172.4, -102.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 172.4, -102.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 169.2, -97.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 169.2, -97.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 169.2, -98.2 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 169.2, -98.2 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 172.9, -101.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 172.9, -101.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 169.9, -98.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 169.9, -98.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 172.3, -101.4 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 172.3, -101.4 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 170.5, -98.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 170.5, -98.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 172.3, -101.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 172.3, -101.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 170.8, -98.7 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 170.8, -98.7 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 173.2, -101.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 173.2, -101.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 170.3, -99.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 170.3, -99.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 171.1, -98.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 171.1, -98.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 170.5, -99.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 170.5, -99.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 171.4, -99.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 171.4, -99.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 172.9, -101.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 172.9, -101.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 171.6, -100.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 171.6, -100.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 171.6, -100.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 171.6, -100.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 171.7, -100.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 171.7, -100.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 171.6, -100.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 171.6, -100.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 171.7, -100.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 171.7, -100.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 172.4, -100.4 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.28, 0.28 );

setRotateKey( spep_2 + 60 + OFFSET_X, 1, 28.2 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, 28.2 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 36.9 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 36.9 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 44.5 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 44.5 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 47.8 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 47.8 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 48.9 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 48.9 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 51 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 51 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 53.2 );

-- ** 音 ** --
--発射前溜め
SE053 = playSeVer2( spep_1 + 90, 1296, "",spep_2 + 44, 2, 20, -1);
setStartTimeMs( SE053,  400 );
SE054 = playSeVer2( spep_1 + 92, 1252, "",spep_2 + 46, 0, 20, -1);
SE055 = playSeVer2( spep_1 + 92, 1393, "",spep_2 + 46, 0, 20, -1);

--気弾発射
SE056 = playSeVer2( spep_2 + 14, 1022, "",spep_2 + 128, 0, 16, -1);
SE057 = playSeVer2( spep_2 + 18, 1177, "",spep_2 + 130, 0, 20, -1);
SE058 = playSeVer2( spep_2 + 18, 1145, "",spep_2 + 126, 0, 16, -1);
SE059 = playSeVer2( spep_2 + 18, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE059, 80 );

--爆発
SE060 = playSeVer2( spep_2 + 104, 1024, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 110, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 150 );
endPhase( spep_2 + MAX_FRAME_2 - 4);  -- 256

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
--  ef_001
------------------------------------------------------
MAX_FRAME_0 = 653;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_02 = entryEffect( spep_0 + 0, SP_002r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_02, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_02, 0 );
setEffAlphaKey( spep_0 + 0, SP_02, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_02, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
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
-- 敵の動き1
setDisp( spep_0 + 178 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 214 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 178 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 178 + OFFSET_X, 1, 52.6, 172.7 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 52.6, 172.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 123.8, 142.4 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 123.8, 142.4 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 79.1, 194.6 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 79.1, 194.6 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 168, 180.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 168, 180.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 84.7, 208.3 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 84.7, 208.3 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 65, 203.1 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 65, 203.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 74.1, 225.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 74.1, 225.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 86.7, 256.1 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 86.7, 256.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 103.5, 297.2 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 103.5, 297.2 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 125.2, 350 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 125.2, 350 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 152.1, 415.9 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 152.1, 415.9 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 185.1, 496.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 185.1, 496.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 224.6, 592.9 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 224.6, 592.9 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 271.3, 707 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 271.3, 707 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 325.8, 840 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 325.8, 840 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 388.6, 993.5 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 388.6, 993.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 460.3, 1168.9 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 460.3, 1168.9 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 541.6, 1367.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 541.6, 1367.6 , 0 );

setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 4.65, 4.65 );

setRotateKey( spep_0 + 178 + OFFSET_X, 1, -59 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -59 );

-- 敵の動き2
setDisp( spep_0 + 396 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 454 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 396 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 396 + OFFSET_X, 1, 91.7, 21 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 91.7, 21 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 99.9, 23.5 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 99.9, 23.5 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 107.8, 26.1 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 107.8, 26.1 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 115, 28.7 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 115, 28.7 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 121.1, 31.2 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 121.1, 31.2 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 126, 33.8 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 126, 33.8 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 129.1, 36.4 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 129.1, 36.4 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 130.2, 38.9 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 130.2, 38.9 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 128.9, 41.5 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 128.9, 41.5 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 124.9, 44.1 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 124.9, 44.1 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 101, 75.8 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 101, 75.8 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 64.1, 61.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 64.1, 61.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 125.1, 93.4 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 125.1, 93.4 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 62.7, 64.7 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 62.7, 64.7 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 68.1, 43 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 68.1, 43 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 93.3, 70.8 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 93.3, 70.8 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 123.1, 99.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 123.1, 99.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 152.9, 129.1 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 152.9, 129.1 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 182.9, 158.4 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 182.9, 158.4 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 212.9, 187.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 212.9, 187.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 243, 217.3 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 243, 217.3 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 300, 249.3 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 300, 249.3 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 357, 281.3 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 357, 281.3 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 414, 313.4 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 414, 313.4 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 470.9, 345.4 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 470.9, 345.4 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 527.8, 377.4 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 527.8, 377.4 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 584.6, 409.2 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 584.6, 409.2 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 641.2, 441 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 641.2, 441 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 697.6, 472.7 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 697.6, 472.7 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 753.8, 504.5 , 0 );

setScaleKey( spep_0 + 396 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 2.92, 2.92 );

setRotateKey( spep_0 + 396 + OFFSET_X, 1, -71.7 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, -71.7 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, -70 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, -70 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, -68.2 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, -68.2 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, -66.5 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, -66.5 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, -61.8 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -61.8 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -58.8 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, -58.8 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, -55.8 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, -55.8 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -38.2 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -38.2 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -34 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -34 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -27.7 );

-- ** 音 ** --
--悟飯力む
SE002 = playSeVer2( spep_0 + 20, 1189, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 24, 1006, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 24, 1330, "",spep_0 + 104, 0, 40, -1);

--悟飯向かっていく
SE005 = playSeVer2( spep_0 + 98, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 98, 1117, "",spep_0 + 190, 0, 14, -1);
SE007 = playSeVer2( spep_0 + 98, 1207, "",spep_0 + 190, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 98, SE007, 63 );
SE008 = playSeVer2( spep_0 + 98, 1264, "",spep_0 + 190, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 98, SE008, 56 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 146;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

--蹴り飛ばす
SE009 = playSeVer2( spep_0 + 162, 1004, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 174, 1187, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 174, 1183, "",spep_0 + 258, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 174, SE011, 68 );
SE012 = playSeVer2( spep_0 + 174, 1110, "", 0, 0, 0, -1);

--走る音
SE014 = playSeVer2( spep_0 + 224, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE014, 34 );
SE015 = playSeVer2( spep_0 + 224, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE015, 71 );

--走る
SE013 = playSeVer2( spep_0 + 224, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE013, 141 );
SE016 = playSeVer2( spep_0 + 232, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE016, 141 );
SE017 = playSeVer2( spep_0 + 242, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE017, 141 );
SE018 = playSeVer2( spep_0 + 252, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE018, 141 );
SE019 = playSeVer2( spep_0 + 260, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE019, 141 );
SE020 = playSeVer2( spep_0 + 270, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE020, 141 );
SE021 = playSeVer2( spep_0 + 280, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE021, 141 );
SE024 = playSeVer2( spep_0 + 288, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE024, 141 );

--パンチ強打ヒット（単打）
SE022 = playSeVer2( spep_0 + 286, 1009, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 298, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 298, SE025, 79 );
SE027 = playSeVer2( spep_0 + 308, 1009, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 318, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE029, 79 );
SE031 = playSeVer2( spep_0 + 328, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE031, 91 );
setPitch( spep_0 + 328, SE031, -200 );
setTimeStretch( SE031, 0.87, 30, 4 );
SE033 = playSeVer2( spep_0 + 340, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE033, 106 );
SE035 = playSeVer2( spep_0 + 350, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 350, SE035, 95 );

--打撃音_シーラス
SE023 = playSeVer2( spep_0 + 286, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 286, SE023, 92 );
SE026 = playSeVer2( spep_0 + 298, 1110, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 308, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE028, 107 );
setPitch( spep_0 + 308, SE028, -200 );
setTimeStretch( SE028, 0.87, 30, 4 );
SE030 = playSeVer2( spep_0 + 318, 1110, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 328, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE032, 92 );
SE034 = playSeVer2( spep_0 + 340, 1110, "", 0, 0, 0, -1);
setPitch( spep_0 + 340, SE034, 200 );
setTimeStretch( SE034, 1.13, 30, 4 );
SE036 = playSeVer2( spep_0 + 350, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 350, SE036, 92 );

--構える
SE037 = playSeVer2( spep_0 + 382, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 382, SE037, 68 );

--アッパー
SE038 = playSeVer2( spep_0 + 408, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE038, 124 );
SE039 = playSeVer2( spep_0 + 416, 1187, "", 0, 0, 0, -1);

--飛び込んでくる
SE040 = playSeVer2( spep_0 + 454, 1117, "",spep_0 + 518, 0, 20, -1);
SE041 = playSeVer2( spep_0 + 454, 9, "",spep_0 + 516, 0, 18, -1);

--蹴りヒット
SE042 = playSeVer2( spep_0 + 496, 1120, "", 0, 0, 0, -1);

--力溜める
SE043 = playSeVer2( spep_0 + 510, 1232, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 510, 1278, "",spep_0 + 640, 0, 70, -1);
setSeVolumeByWorkId( spep_0 + 510, SE044, 68 );
SE045 = playSeVer2( spep_0 + 510, 1226, "",spep_0 + 674, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 510, SE045, 50 );

--気弾溜め
SE046 = playSeVer2( spep_0 + 586, 1334, "",spep_0 + 670, 4, 18, -1);
setSeVolumeByWorkId( spep_0 + 586, SE046, 115 );
setStartTimeMs( SE046,  867 );
SE048 = playSeVer2( spep_0 + 588, 1252, "",spep_0 + 672, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 588, SE048, 122 );
SE049 = playSeVer2( spep_0 + 588, 1265, "",spep_0 + 670, 0, 18, -1);
SE050 = playSeVer2( spep_0 + 588, 1296, "",spep_0 + 668, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 588, SE050, 106 );
SE051 = playSeVer2( spep_0 + 588, 1393, "",spep_0 + 668, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 588, SE051, 132 );

--腕上げる
SE047 = playSeVer2( spep_0 + 578, 1004, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 653

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
--  ef_003
------------------------------------------------------
MAX_FRAME_2 = 256;

-- ** エフェクト等 ** --
SP_03 = entryEffect( spep_2 + 0, SP_003r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );
SP_04 = entryEffect( spep_2 + 0, SP_004r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_04, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_04, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_04, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_04, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_04, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_04, 0 );
setEffAlphaKey( spep_2 + 0, SP_04, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_04, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 198 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 60 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 60 + OFFSET_X, 1, 132.8, -77.1 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 132.8, -77.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 134.6, -78.2 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 134.6, -78.2 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 136.4, -79.2 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 136.4, -79.2 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 138.2, -80.3 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 138.2, -80.3 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 139.9, -81.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 139.9, -81.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 141.7, -82.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 141.7, -82.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 143.5, -83.5 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 143.5, -83.5 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 145.3, -84.5 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 145.3, -84.5 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 147, -85.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 147, -85.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 148.8, -86.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 148.8, -86.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 150.6, -87.7 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 150.6, -87.7 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 152.4, -88.7 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 152.4, -88.7 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 154.1, -89.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 154.1, -89.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 155.9, -90.8 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 155.9, -90.8 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 157.7, -91.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 157.7, -91.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 159.5, -92.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 159.5, -92.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 161.3, -94 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 161.3, -94 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 163, -95 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 163, -95 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 164.8, -96.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 164.8, -96.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 166.6, -97.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 166.6, -97.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 168.4, -98.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 168.4, -98.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 170.2, -99.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 170.2, -99.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 171.9, -100.3 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 171.9, -100.3 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 182.9, -88.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 182.9, -88.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 161.8, -107.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 161.8, -107.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 186.2, -81.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 186.2, -81.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 179.5, -111.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 179.5, -111.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 160.4, -80.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 160.4, -80.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 183.2, -84.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 183.2, -84.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 157.3, -109.5 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 157.3, -109.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 176.1, -101.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 176.1, -101.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 153.6, -84.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 153.6, -84.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 182.7, -90.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 182.7, -90.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 158.7, -108.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 158.7, -108.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 178.7, -88.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 178.7, -88.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 167.5, -99.6 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 167.5, -99.6 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 172.4, -102.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 172.4, -102.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 168.4, -97 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 168.4, -97 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 172.4, -102.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 172.4, -102.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 168.7, -97.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 168.7, -97.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 172.4, -102.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 172.4, -102.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 169.2, -97.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 169.2, -97.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 169.2, -98.2 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 169.2, -98.2 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 172.9, -101.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 172.9, -101.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 169.9, -98.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 169.9, -98.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 172.3, -101.4 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 172.3, -101.4 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 170.5, -98.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 170.5, -98.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 172.3, -101.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 172.3, -101.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 170.8, -98.7 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 170.8, -98.7 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 173.2, -101.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 173.2, -101.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 170.3, -99.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 170.3, -99.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 171.1, -98.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 171.1, -98.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 170.5, -99.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 170.5, -99.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 171.4, -99.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 171.4, -99.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 172.9, -101.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 172.9, -101.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 171.6, -100.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 171.6, -100.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 171.6, -100.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 171.6, -100.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 171.7, -100.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 171.7, -100.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 171.6, -100.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 171.6, -100.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 171.7, -100.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 171.7, -100.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 172.4, -101.4 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 172.4, -100.4 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.28, 0.28 );

setRotateKey( spep_2 + 60 + OFFSET_X, 1, 28.2 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, 28.2 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 36.9 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 36.9 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 44.5 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 44.5 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 47.8 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 47.8 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 48.9 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 48.9 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 51 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 51 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 53.2 );

-- ** 音 ** --
--発射前溜め
SE053 = playSeVer2( spep_1 + 90, 1296, "",spep_2 + 44, 2, 20, -1);
setStartTimeMs( SE053,  400 );
SE054 = playSeVer2( spep_1 + 92, 1252, "",spep_2 + 46, 0, 20, -1);
SE055 = playSeVer2( spep_1 + 92, 1393, "",spep_2 + 46, 0, 20, -1);

--気弾発射
SE056 = playSeVer2( spep_2 + 14, 1022, "",spep_2 + 128, 0, 16, -1);
SE057 = playSeVer2( spep_2 + 18, 1177, "",spep_2 + 130, 0, 20, -1);
SE058 = playSeVer2( spep_2 + 18, 1145, "",spep_2 + 126, 0, 16, -1);
SE059 = playSeVer2( spep_2 + 18, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE059, 80 );

--爆発
SE060 = playSeVer2( spep_2 + 104, 1024, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 110, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 150 );
endPhase( spep_2 + MAX_FRAME_2 - 4);  -- 256

end
