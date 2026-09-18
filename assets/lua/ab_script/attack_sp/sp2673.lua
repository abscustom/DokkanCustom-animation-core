-- 1028370: LR_ガンマ1号&ガンマ2号/ガンマ1号_超必殺技：スーパーガンマブラスト
-- sp_effect_a9_00122
-- sp2673

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 共通
SP_001 = 162686;  -- 開始〜銃撃 ef_001
SP_002 = 162688;  -- 銃弾溜め〜フィニッシュまで ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開始〜銃撃 ef_001
------------------------------------------------------
MAX_FRAME_0 = 582;

setupMovie(0 , SP_001, 0, 1);

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );   -- 開始〜銃撃 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 324 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 368 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 324 + OFFSET_X , 1, 4 );
changeAnime( spep_0 + 348 + OFFSET_X , 1, 6 );

sc_tmp = -40;
sc_tmp2 = -80;

setMoveKey( spep_0 + 324 + OFFSET_X , 1, 73.9,   sc_tmp + -51.7 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X , 1, 73.9,   sc_tmp + -51.7 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X , 1, 13.6,   sc_tmp + -48.3 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X , 1, 13.6,   sc_tmp + -48.3 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X , 1, -11,    sc_tmp + -45.2 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X , 1, -11,    sc_tmp + -45.2 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X , 1, -29.2,  sc_tmp + -42.4 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X , 1, -29.2,  sc_tmp + -42.4 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X , 1, -43.7,  sc_tmp + -39.8 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X , 1, -43.7,  sc_tmp + -39.8 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X , 1, -55.2,  sc_tmp + -37.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X , 1, -55.2,  sc_tmp + -37.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X , 1, -70.6,  sc_tmp + -30.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X , 1, -70.6,  sc_tmp + -30.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X , 1, -73.9,  sc_tmp + -42.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X , 1, -73.9,  sc_tmp + -42.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X , 1, -66.4,  sc_tmp + -31.1 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X , 1, -66.4,  sc_tmp + -31.1 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X , 1, -68,    sc_tmp + -42.3 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X , 1, -68,    sc_tmp + -42.3 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X , 1, -31,    sc_tmp2 + -49.2 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X , 1, -31,    sc_tmp2 + -49.2 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X , 1, -18.4,  sc_tmp2 + -35.1 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X , 1, -18.4,  sc_tmp2 + -35.1 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X , 1, -17.2,  sc_tmp2 + -43.7 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X , 1, -17.2,  sc_tmp2 + -43.7 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X , 1, -22.8,  sc_tmp2 + -36.8 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X , 1, -22.8,  sc_tmp2 + -36.8 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X , 1, -205,   sc_tmp2 + 179 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X , 1, -205,   sc_tmp2 + 179 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X , 1, -246.7, sc_tmp2 + 190.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X , 1, -246.7, sc_tmp2 + 190.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X , 1, -329,   sc_tmp2 + 252 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X , 1, -329,   sc_tmp2 + 252 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X , 1, -433.6, sc_tmp2 + 297.1 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X , 1, -433.6, sc_tmp2 + 297.1 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X , 1, -551.9, sc_tmp2 + 365.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X , 1, -551.9, sc_tmp2 + 365.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X , 1, -684.4, sc_tmp2 + 438.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X , 1, -684.4, sc_tmp2 + 438.7 , 0 );

setScaleKey( spep_0 + 324 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 325 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 326 + OFFSET_X , 1, 0.61, 0.61 );
setScaleKey( spep_0 + 327 + OFFSET_X , 1, 0.61, 0.61 );
setScaleKey( spep_0 + 328 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_0 + 329 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_0 + 330 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_0 + 331 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_0 + 332 + OFFSET_X , 1, 0.67, 0.67 );
setScaleKey( spep_0 + 333 + OFFSET_X , 1, 0.67, 0.67 );
setScaleKey( spep_0 + 334 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_0 + 335 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_0 + 336 + OFFSET_X , 1, 0.7, 0.7 );
setScaleKey( spep_0 + 339 + OFFSET_X , 1, 0.7, 0.7 );
setScaleKey( spep_0 + 340 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_0 + 347 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_0 + 348 + OFFSET_X , 1, 0.93, 0.93 );
setScaleKey( spep_0 + 349 + OFFSET_X , 1, 0.93, 0.93 );
setScaleKey( spep_0 + 350 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_0 + 351 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_0 + 352 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_0 + 368 + OFFSET_X , 1, 0.81, 0.81 );

setRotateKey( spep_0 + 324 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 347 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 348 + OFFSET_X , 1, 33.2 );
setRotateKey( spep_0 + 357 + OFFSET_X , 1, 33.2 );
setRotateKey( spep_0 + 358 + OFFSET_X , 1, 31.2 );
setRotateKey( spep_0 + 359 + OFFSET_X , 1, 31.2 );
setRotateKey( spep_0 + 360 + OFFSET_X , 1, 26.9 );
setRotateKey( spep_0 + 361 + OFFSET_X , 1, 26.9 );
setRotateKey( spep_0 + 362 + OFFSET_X , 1, 22.2 );
setRotateKey( spep_0 + 363 + OFFSET_X , 1, 22.2 );
setRotateKey( spep_0 + 364 + OFFSET_X , 1, 17 );
setRotateKey( spep_0 + 365 + OFFSET_X , 1, 17 );
setRotateKey( spep_0 + 366 + OFFSET_X , 1, 11.2 );
setRotateKey( spep_0 + 368 + OFFSET_X , 1, 11.2 );

setBlendColor( spep_0 + 324 + OFFSET_X , 1, 3, 0, 0, 0, 0.25);
setBlendColor( spep_0 + 368 + OFFSET_X , 1, 3, 0, 0, 0, 0.25);
setBlendColor( spep_0 + 369 + OFFSET_X , 1, 3, 0, 0, 0, 0);

-- 敵の動き2
setDisp( spep_0 + 424 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 584 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 424 + OFFSET_X , 1, 6 );
changeAnime( spep_0 + 488 + OFFSET_X , 1, 108 );
changeAnime( spep_0 + 508 + OFFSET_X , 1, 117 );
changeAnime( spep_0 + 542 + OFFSET_X , 1, 16 );

setMoveKey( spep_0 + 424 + OFFSET_X , 1, -386.1, sc_tmp2 + 22.8 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X , 1, -386.1, sc_tmp2 + 22.8 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X , 1, -334.2, sc_tmp2 + 14.8 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X , 1, -334.2, sc_tmp2 + 14.8 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X , 1, -283.8, sc_tmp2 + 7.1 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X , 1, -283.8, sc_tmp2 + 7.1 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X , 1, -236.5, sc_tmp2 + -4.6 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X , 1, -236.5, sc_tmp2 + -4.6 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X , 1, -190.7, sc_tmp2 + -16.2 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X , 1, -190.7, sc_tmp2 + -16.2 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X , 1, -146.3, sc_tmp2 + -27.5 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X , 1, -146.3, sc_tmp2 + -27.5 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X , 1, -103.5, sc_tmp2 + -38.5 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X , 1, -103.5, sc_tmp2 + -38.5 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X , 1, -62.1,  sc_tmp2 + -49.2 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X , 1, -62.1,  sc_tmp2 + -49.2 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X , 1, -22.2,  sc_tmp2 + -59.7 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X , 1, -22.2,  sc_tmp2 + -59.7 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X , 1, 13.5,   sc_tmp2 + -65.7 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X , 1, 13.5,   sc_tmp2 + -65.7 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X , 1, 21.1,   sc_tmp2 + -66.5 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X , 1, 21.1,   sc_tmp2 + -66.5 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X , 1, 29,     sc_tmp2 + -67.3 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X , 1, 29,     sc_tmp2 + -67.3 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X , 1, 37.1,   sc_tmp2 + -68 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X , 1, 37.1,   sc_tmp2 + -68 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X , 1, 45.5,   sc_tmp2 + -68.9 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X , 1, 45.5,   sc_tmp2 + -68.9 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X , 1, 30 + 54.2,   sc_tmp2 + -69.8 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X , 1, 30 + 54.2,   sc_tmp2 + -69.8 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X , 1, 30 + 63.1,   sc_tmp2 + -70.7 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X , 1, 30 + 63.1,   sc_tmp2 + -70.7 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X , 1, 30 + 72.4,   sc_tmp2 + -71.6 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X , 1, 30 + 72.4,   sc_tmp2 + -71.6 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X , 1, 30 + 81.9,   sc_tmp2 + -72.6 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X , 1, 30 + 81.9,   sc_tmp2 + -72.6 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X , 1, 30 + 91.6,   sc_tmp2 + -73.6 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X , 1, 30 + 91.6,   sc_tmp2 + -73.6 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X , 1, 30 + 101.6,  sc_tmp2 + -74.7 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X , 1, 30 + 101.6,  sc_tmp2 + -74.7 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X , 1, 30 + 111.9,  sc_tmp2 + -75.7 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X , 1, 30 + 111.9,  sc_tmp2 + -75.7 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X , 1, 30 + 122.5,  sc_tmp2 + -76.8 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X , 1, 30 + 122.5,  sc_tmp2 + -76.8 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X , 1, 30 + 133.3,  sc_tmp2 + -77.9 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X , 1, 30 + 133.3,  sc_tmp2 + -77.9 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X , 1, 30 + 144.4,  sc_tmp2 + -79.1 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X , 1, 30 + 144.4,  sc_tmp2 + -79.1 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X , 1, 30 + 145.1,  sc_tmp2 + -77.9 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X , 1, 30 + 145.1,  sc_tmp2 + -77.9 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X , 1, 30 + 145.8,  sc_tmp2 + -76.8 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X , 1, 30 + 145.8,  sc_tmp2 + -76.8 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X , 1, 30 + 146.5,  sc_tmp2 + -75.6 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X , 1, 30 + 146.5,  sc_tmp2 + -75.6 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X , 1, 30 + 147.2,  sc_tmp2 + -74.5 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X , 1, 30 + 147.2,  sc_tmp2 + -74.5 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X , 1, 30 + 147.8,  sc_tmp2 + -73.3 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X , 1, 30 + 147.8,  sc_tmp2 + -73.3 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X , 1, 30 + 148.5,  sc_tmp2 + -72.1 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X , 1, 30 + 148.5,  sc_tmp2 + -72.1 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X , 1, 30 + 149.2,  sc_tmp2 + -71 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X , 1, 30 + 149.2,  sc_tmp2 + -71 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X , 1, 30 + 149.2,  sc_tmp2 + -70.9 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X , 1, 30 + 149.2,  sc_tmp2 + -70.9 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X , 1, 18 + 195.7,  sc_tmp2 + 6.7 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X , 1, 18 + 195.7,  sc_tmp2 + 6.7 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X , 1, 16 + 196.7,  sc_tmp2 + 40.3 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X , 1, 16 + 196.7,  sc_tmp2 + 40.3 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X , 1, 14 + 196.6,  sc_tmp2 + 73.1 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X , 1, 14 + 196.6,  sc_tmp2 + 73.1 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X , 1, 12 + 195.4,  sc_tmp2 + 105.3 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X , 1, 12 + 195.4,  sc_tmp2 + 105.3 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X , 1, 10 + 193.2,  sc_tmp2 + 136.7 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X , 1, 10 + 193.2,  sc_tmp2 + 136.7 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X , 1, 8 + 182.6,  sc_tmp2 + 173.1 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X , 1, 8 + 182.6,  sc_tmp2 + 173.1 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X , 1, 7 + 180.6,  sc_tmp2 + 190.3 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X , 1, 7 + 180.6,  sc_tmp2 + 190.3 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X , 1, 6 + 185.9,  sc_tmp2 + 230.9 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X , 1, 6 + 185.9,  sc_tmp2 + 230.9 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X , 1, 5 + 178.8,  sc_tmp2 + 248 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X , 1, 5 + 178.8,  sc_tmp2 + 248 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X , 1, 4 + 170.8,  sc_tmp2 + 276 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X , 1, 4 + 170.8,  sc_tmp2 + 276 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X , 1, 181,    sc_tmp2 + 281.3 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X , 1, 181,    sc_tmp2 + 281.3 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X , 1, 184.6,  sc_tmp2 + 283.4 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X , 1, 184.6,  sc_tmp2 + 283.4 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X , 1, 188.1,  sc_tmp2 + 285.5 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X , 1, 188.1,  sc_tmp2 + 285.5 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X , 1, 191.7,  sc_tmp2 + 287.5 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X , 1, 191.7,  sc_tmp2 + 287.5 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X , 1, 195.2,  sc_tmp2 + 289.6 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X , 1, 195.2,  sc_tmp2 + 289.6 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X , 1, 198.7,  sc_tmp2 + 291.8 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X , 1, 198.7,  sc_tmp2 + 291.8 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X , 1, 202.3,  sc_tmp2 + 293.8 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X , 1, 202.3,  sc_tmp2 + 293.8 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X , 1, 205.8,  sc_tmp2 + 295.9 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X , 1, 205.8,  sc_tmp2 + 295.9 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X , 1, 209.4,  sc_tmp2 + 298 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X , 1, 209.4,  sc_tmp2 + 298 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X , 1, 212.9,  sc_tmp2 + 300.1 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X , 1, 212.9,  sc_tmp2 + 300.1 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X , 1, 212.7,  sc_tmp2 + 300.3 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X , 1, 212.7,  sc_tmp2 + 300.3 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X , 1, 212.5,  sc_tmp2 + 300.6 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X , 1, 212.5,  sc_tmp2 + 300.6 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X , 1, 212.2,  sc_tmp2 + 300.9 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X , 1, 212.2,  sc_tmp2 + 300.9 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X , 1, 212,    sc_tmp2 + 301.1 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X , 1, 212,    sc_tmp2 + 301.1 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X , 1, 211.8,  sc_tmp2 + 301.4 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X , 1, 211.8,  sc_tmp2 + 301.4 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X , 1, 211.6,  sc_tmp2 + 301.6 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X , 1, 211.6,  sc_tmp2 + 301.6 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X , 1, 211.4,  sc_tmp2 + 301.9 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X , 1, 211.4,  sc_tmp2 + 301.9 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X , 1, 203.1,  sc_tmp2 + 284 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X , 1, 203.1,  sc_tmp2 + 284 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X , 1, 199.2,  sc_tmp2 + 277.3 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X , 1, 199.2,  sc_tmp2 + 277.3 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X , 1, 194.9,  sc_tmp2 + 269.9 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X , 1, 194.9,  sc_tmp2 + 269.9 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X , 1, 190.1,  sc_tmp2 + 261.5 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X , 1, 190.1,  sc_tmp2 + 261.5 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X , 1, 184.9,  sc_tmp2 + 252.3 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X , 1, 184.9,  sc_tmp2 + 252.3 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X , 1, 179.3,  sc_tmp2 + 242.2 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X , 1, 179.3,  sc_tmp2 + 242.2 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X , 1, 179.1,  sc_tmp2 + 242.4 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X , 1, 179.1,  sc_tmp2 + 242.4 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X , 1, 178.8,  sc_tmp2 + 242.6 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X , 1, 178.8,  sc_tmp2 + 242.6 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X , 1, 178.3,  sc_tmp2 + 242.3 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X , 1, 178.3,  sc_tmp2 + 242.3 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X , 1, 170.4,  sc_tmp2 + 246.7 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X , 1, 170.4,  sc_tmp2 + 246.7 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X , 1, 171.3,  sc_tmp2 + 231.1 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X , 1, 171.3,  sc_tmp2 + 231.1 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X , 1, 179.5,  sc_tmp2 + 237.2 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X , 1, 179.5,  sc_tmp2 + 237.2 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X , 1, 174.6,  sc_tmp2 + 217.2 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X , 1, 174.6,  sc_tmp2 + 217.2 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X , 1, 162.1,  sc_tmp2 + 210.8 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X , 1, 162.1,  sc_tmp2 + 210.8 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X , 1, 144.9,  sc_tmp2 + 197.2 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X , 1, 144.9,  sc_tmp2 + 197.2 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X , 1, 133.4,  sc_tmp2 + 157.6 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X , 1, 133.4,  sc_tmp2 + 157.6 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X , 1, 125.5,  sc_tmp2 + 132.5 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X , 1, 125.5,  sc_tmp2 + 132.5 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X , 1, 100.3,  sc_tmp2 + 73.2 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X , 1, 100.3,  sc_tmp2 + 73.2 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X , 1, 58.3,   sc_tmp2 + 11.7 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X , 1, 58.3,   sc_tmp2 + 11.7 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X , 1, 29.3,   sc_tmp2 + -54.5 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X , 1, 29.3,   sc_tmp2 + -54.5 , 0 );

setScaleKey( spep_0 + 424 + OFFSET_X , 1, 0.4, 0.4 );
setScaleKey( spep_0 + 425 + OFFSET_X , 1, 0.4, 0.4 );
setScaleKey( spep_0 + 426 + OFFSET_X , 1, 0.41, 0.41 );
setScaleKey( spep_0 + 427 + OFFSET_X , 1, 0.41, 0.41 );
setScaleKey( spep_0 + 428 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_0 + 429 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_0 + 430 + OFFSET_X , 1, 0.44, 0.44 );
setScaleKey( spep_0 + 431 + OFFSET_X , 1, 0.44, 0.44 );
setScaleKey( spep_0 + 432 + OFFSET_X , 1, 0.45, 0.45 );
setScaleKey( spep_0 + 433 + OFFSET_X , 1, 0.45, 0.45 );
setScaleKey( spep_0 + 434 + OFFSET_X , 1, 0.46, 0.46 );
setScaleKey( spep_0 + 435 + OFFSET_X , 1, 0.46, 0.46 );
setScaleKey( spep_0 + 436 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 437 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 438 + OFFSET_X , 1, 0.48, 0.48 );
setScaleKey( spep_0 + 439 + OFFSET_X , 1, 0.48, 0.48 );
setScaleKey( spep_0 + 440 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_0 + 441 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_0 + 442 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 443 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 444 + OFFSET_X , 1, 0.51, 0.51 );
setScaleKey( spep_0 + 445 + OFFSET_X , 1, 0.51, 0.51 );
setScaleKey( spep_0 + 446 + OFFSET_X , 1, 0.52, 0.52 );
setScaleKey( spep_0 + 447 + OFFSET_X , 1, 0.52, 0.52 );
setScaleKey( spep_0 + 448 + OFFSET_X , 1, 0.53, 0.53 );
setScaleKey( spep_0 + 449 + OFFSET_X , 1, 0.53, 0.53 );
setScaleKey( spep_0 + 450 + OFFSET_X , 1, 0.54, 0.54 );
setScaleKey( spep_0 + 451 + OFFSET_X , 1, 0.54, 0.54 );
setScaleKey( spep_0 + 452 + OFFSET_X , 1, 0.55, 0.55 );
setScaleKey( spep_0 + 453 + OFFSET_X , 1, 0.55, 0.55 );
setScaleKey( spep_0 + 454 + OFFSET_X , 1, 0.56, 0.56 );
setScaleKey( spep_0 + 455 + OFFSET_X , 1, 0.56, 0.56 );
setScaleKey( spep_0 + 456 + OFFSET_X , 1, 0.57, 0.57 );
setScaleKey( spep_0 + 457 + OFFSET_X , 1, 0.57, 0.57 );
setScaleKey( spep_0 + 458 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_0 + 459 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_0 + 460 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 461 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 462 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_0 + 463 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_0 + 464 + OFFSET_X , 1, 0.61, 0.61 );
setScaleKey( spep_0 + 465 + OFFSET_X , 1, 0.61, 0.61 );
setScaleKey( spep_0 + 466 + OFFSET_X , 1, 0.63, 0.63 );
setScaleKey( spep_0 + 467 + OFFSET_X , 1, 0.63, 0.63 );
setScaleKey( spep_0 + 468 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_0 + 469 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_0 + 470 + OFFSET_X , 1, 0.65, 0.65 );
setScaleKey( spep_0 + 471 + OFFSET_X , 1, 0.65, 0.65 );
setScaleKey( spep_0 + 472 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_0 + 473 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_0 + 474 + OFFSET_X , 1, 0.67, 0.67 );
setScaleKey( spep_0 + 475 + OFFSET_X , 1, 0.67, 0.67 );
setScaleKey( spep_0 + 476 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_0 + 477 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_0 + 478 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_0 + 479 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_0 + 480 + OFFSET_X , 1, 0.7, 0.7 );
setScaleKey( spep_0 + 481 + OFFSET_X , 1, 0.7, 0.7 );
setScaleKey( spep_0 + 482 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_0 + 483 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_0 + 484 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_0 + 489 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_0 + 490 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_0 + 491 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_0 + 492 + OFFSET_X , 1, 0.67, 0.67 );
setScaleKey( spep_0 + 493 + OFFSET_X , 1, 0.67, 0.67 );
setScaleKey( spep_0 + 494 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_0 + 495 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_0 + 496 + OFFSET_X , 1, 0.62, 0.62 );
setScaleKey( spep_0 + 497 + OFFSET_X , 1, 0.62, 0.62 );
setScaleKey( spep_0 + 498 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 499 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 500 + OFFSET_X , 1, 0.57, 0.57 );
setScaleKey( spep_0 + 501 + OFFSET_X , 1, 0.57, 0.57 );
setScaleKey( spep_0 + 502 + OFFSET_X , 1, 0.55, 0.55 );
setScaleKey( spep_0 + 503 + OFFSET_X , 1, 0.55, 0.55 );
setScaleKey( spep_0 + 504 + OFFSET_X , 1, 0.52, 0.52 );
setScaleKey( spep_0 + 505 + OFFSET_X , 1, 0.52, 0.52 );
setScaleKey( spep_0 + 506 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 509 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 510 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_0 + 519 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_0 + 520 + OFFSET_X , 1, 0.48, 0.48 );
setScaleKey( spep_0 + 541 + OFFSET_X , 1, 0.48, 0.48 );
setScaleKey( spep_0 + 542 + OFFSET_X , 1, 0.39, 0.39 );
setScaleKey( spep_0 + 557 + OFFSET_X , 1, 0.39, 0.39 );
setScaleKey( spep_0 + 558 + OFFSET_X , 1, 0.4, 0.4 );
setScaleKey( spep_0 + 561 + OFFSET_X , 1, 0.4, 0.4 );
setScaleKey( spep_0 + 562 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_0 + 563 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_0 + 564 + OFFSET_X , 1, 0.46, 0.46 );
setScaleKey( spep_0 + 565 + OFFSET_X , 1, 0.46, 0.46 );
setScaleKey( spep_0 + 566 + OFFSET_X , 1, 0.51, 0.51 );
setScaleKey( spep_0 + 567 + OFFSET_X , 1, 0.51, 0.51 );
setScaleKey( spep_0 + 568 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 569 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 570 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_0 + 571 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_0 + 572 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_0 + 573 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_0 + 574 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_0 + 575 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_0 + 576 + OFFSET_X , 1, 1.42, 1.42 );
setScaleKey( spep_0 + 577 + OFFSET_X , 1, 1.42, 1.42 );
setScaleKey( spep_0 + 578 + OFFSET_X , 1, 1.8, 1.8 );
setScaleKey( spep_0 + 579 + OFFSET_X , 1, 1.8, 1.8 );
setScaleKey( spep_0 + 580 + OFFSET_X , 1, 2.29, 2.29 );
setScaleKey( spep_0 + 584 + OFFSET_X , 1, 2.29, 2.29 );

setRotateKey( spep_0 + 424 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 541 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 542 + OFFSET_X , 1, -4.9 );
setRotateKey( spep_0 + 584 + OFFSET_X , 1, -4.9 );

setBlendColor( spep_0 + 424 + OFFSET_X , 1, 3, 0, 0, 0, 0.25);
setBlendColor( spep_0 + 584 + OFFSET_X , 1, 3, 0, 0, 0, 0.25);
setBlendColor( spep_0 + 586 + OFFSET_X , 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--マント音
SE001 = playSeVer2( spep_0 + 4, 1332, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 30, 1331, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE004, 80 );
SE006 = playSeVer2( spep_0 + 84, 1332, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 108, 1332, "", 0, 0, 0, -1);
setPitch( spep_0 + 108, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );
SE008 = playSeVer2( spep_0 + 144, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE008, 72 );
setPitch( spep_0 + 144, SE008, -800 );
setTimeStretch( SE008, 0.47, 30, 4 );

--腕あげる
SE003 = playSeVer2( spep_0 + 30, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE003, 153 );
SE005 = playSeVer2( spep_0 + 34, 1013, "", 0, 0, 0, -1);

--銃構える
SE009 = playSeVer2( spep_0 + 160, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE009, 62 );
SE010 = playSeVer2( spep_0 + 166, 1389, "", 0, 0, 0, -1);

--2号飛んでくる
SE011 = playSeVer2( spep_0 + 206, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 206, 1117, "", 0, 0, 0, -1);

--2号銃撃つ１
SE013 = playSeVer2( spep_0 + 240, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE013, 155 );
SE014 = playSeVer2( spep_0 + 240, 1201, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 240, 1312, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 240, 1438, "",spep_0 + 308, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 240, SE016, 162 );

--2号銃撃つ２
SE017 = playSeVer2( spep_0 + 274, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 274, SE017, 158 );
SE018 = playSeVer2( spep_0 + 274, 1201, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 274, 1312, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 274, 1438, "",spep_0 + 342, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 274, SE020, 166 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_0 + 300;  -- エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    
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
--2号銃撃つ３
SE021 = playSeVer2( spep_0 + 306, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE021, 158 );
SE022 = playSeVer2( spep_0 + 306, 1201, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 306, 1312, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 306, 1438, "",spep_0 + 374, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 306, SE024, 162 );

--敵ヒット
SE025 = playSeVer2( spep_0 + 338, 1023, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 346, 1024, "", 0, 0, 0, -1);

--1号回り込んでくる
SE027 = playSeVer2( spep_0 + 388, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 388, SE027, 124 );
SE028 = playSeVer2( spep_0 + 396, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 396, SE028, 143 );
SE029 = playSeVer2( spep_0 + 406, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE029, 135 );
SE030 = playSeVer2( spep_0 + 410, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE030, 72 );
SE031 = playSeVer2( spep_0 + 420, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 420, SE031, 79 );
setTimeStretch( SE031, 1.41, 30, 4 );

--1号銃撃つ
SE032 = playSeVer2( spep_0 + 480, 1177, "",spep_0 + 532, 0, 30, -1);
SE033 = playSeVer2( spep_0 + 480, 1016, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 480, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE034, 146 );
SE035 = playSeVer2( spep_0 + 480, 1110, "", 0, 0, 0, -1);

--敵ヒット
SE036 = playSeVer2( spep_0 + 488, 1011, "",spep_0 + 594, 0, 6, -1);
SE037 = playSeVer2( spep_0 + 488, 1023, "", 0, 0, 0, -1);

--敵向かってくる
SE038 = playSeVer2( spep_0 + 538, 9, "",spep_0 + 598, 0, 10, -1);
SE039 = playSeVer2( spep_0 + 538, 1167, "",spep_0 + 598, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 538, SE039, 72 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 580

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0) + 2;

entryFade(spep_2 - 2, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- 銃弾溜め〜フィニッシュまで ef_002
------------------------------------------------------
MAX_FRAME_2 = 350;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x80, -1, 0, 0, 0 );   -- 銃弾溜め〜フィニッシュまで ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--気弾背景
SE041 = playSeVer2( spep_2 + 0, 1264, "",spep_2 + 228, 12, 30, -1);
setSeVolumeByWorkId( spep_2 + 0, SE041, 86 );
setStartTimeMs( SE041,  67 );
SE042 = playSeVer2( spep_2 + 0, 1226, "",spep_2 + 66, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 0, SE042, 62 );
SE043 = playSeVer2( spep_2 + 0, 8, "", 60, 0, 15, -1);
SE044 = playSeVer2( spep_2 + 0, 1227, "",spep_2 + 60, 0, 24, -1);

--ズームアウト
SE045 = playSeVer2( spep_2 + 12, 44, "", 0, 0, 0, -1);

--1号飛び退く
SE046 = playSeVer2( spep_2 + 60, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE046, 193 );
SE047 = playSeVer2( spep_2 + 60, 1117, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 60, 1000, "", 0, 0, 0, -1);

--2号銃気弾溜め
SE049 = playSeVer2( spep_2 + 76, 1356, "",spep_2 + 206, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 76, SE049, 148 );
setPitch( spep_2 + 76, SE049, 300 );
setTimeStretch( SE049, 1.2, 30, 4 );
SE050 = playSeVer2( spep_2 + 84, 1396, "",spep_2 + 206, 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 84, SE050, 148 );

--気弾発射
SE051 = playSeVer2( spep_2 + 156, 1109, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 156, 1193, "",spep_2 + 236, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 156, SE052, 146 );
SE053 = playSeVer2( spep_2 + 156, 1027, "", 0, 0, 0, -1);

--銃はらう
SE054 = playSeVer2( spep_2 + 182, 1426, "",spep_2 + 280, 6, 62, -1);
setSeVolumeByWorkId( spep_2 + 182, SE054, 72 );
setStartTimeMs( SE054,  194 );
SE056 = playSeVer2( spep_2 + 190, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE056, 138 );
SE057 = playSeVer2( spep_2 + 190, 1371, "",spep_2 + 274, 0, 40, -1);

--気弾背景音２
SE055 = playSeVer2( spep_2 + 174, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 174, SE055, 76 );

--爆発
SE058 = playSeVer2( spep_2 + 190, 1067, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 202, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 202, SE059, 86 );

-- ** おわり ** --
dealDamage( spep_2 + 240 );
endPhase( spep_2 +  MAX_FRAME_2 - 2);  -- 350

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開始〜銃撃 ef_001
------------------------------------------------------
MAX_FRAME_0 = 580;

setupMovie(0 , SP_001, 0, 1);

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );   -- 開始〜銃撃 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 324 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 368 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 324 + OFFSET_X , 1, 104 );
changeAnime( spep_0 + 348 + OFFSET_X , 1, 106 );

sc_tmp = -40;
sc_tmp2 = -80;

setMoveKey( spep_0 + 324 + OFFSET_X , 1, -73.9, sc_tmp + -51.7 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X , 1, -73.9, sc_tmp + -51.7 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X , 1, -13.6, sc_tmp + -48.3 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X , 1, -13.6, sc_tmp + -48.3 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X , 1, 11, sc_tmp + -45.2 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X , 1, 11, sc_tmp + -45.2 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X , 1, 29.2, sc_tmp + -42.4 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X , 1, 29.2, sc_tmp + -42.4 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X , 1, 43.7, sc_tmp + -39.8 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X , 1, 43.7, sc_tmp + -39.8 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X , 1, 55.2, sc_tmp + -37.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X , 1, 55.2, sc_tmp + -37.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X , 1, 70.6, sc_tmp + -30.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X , 1, 70.6, sc_tmp + -30.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X , 1, 73.9, sc_tmp + -42.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X , 1, 73.9, sc_tmp + -42.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X , 1, 66.4, sc_tmp + -31.1 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X , 1, 66.4, sc_tmp + -31.1 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X , 1, 68, sc_tmp + -42.3 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X , 1, 68, sc_tmp + -42.3 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X , 1, 31, sc_tmp2 + -49.2 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X , 1, 31, sc_tmp2 + -49.2 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X , 1, 18.4, sc_tmp2 + -35.1 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X , 1, 18.4, sc_tmp2 + -35.1 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X , 1, 17.2, sc_tmp2 + -43.7 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X , 1, 17.2, sc_tmp2 + -43.7 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X , 1, 22.8, sc_tmp2 + -36.8 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X , 1, 22.8, sc_tmp2 + -36.8 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X , 1, 205, sc_tmp2 + 179 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X , 1, 205, sc_tmp2 + 179 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X , 1, 246.7, sc_tmp2 + 190.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X , 1, 246.7, sc_tmp2 + 190.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X , 1, 329, sc_tmp2 + 252 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X , 1, 329, sc_tmp2 + 252 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X , 1, 433.6, sc_tmp2 + 297.1 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X , 1, 433.6, sc_tmp2 + 297.1 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X , 1, 551.9, sc_tmp2 + 365.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X , 1, 551.9, sc_tmp2 + 365.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X , 1, 684.4, sc_tmp2 + 438.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X , 1, 684.4, sc_tmp2 + 438.7 , 0 );

setScaleKey( spep_0 + 324 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 325 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 326 + OFFSET_X , 1, 0.61, 0.61 );
setScaleKey( spep_0 + 327 + OFFSET_X , 1, 0.61, 0.61 );
setScaleKey( spep_0 + 328 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_0 + 329 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_0 + 330 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_0 + 331 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_0 + 332 + OFFSET_X , 1, 0.67, 0.67 );
setScaleKey( spep_0 + 333 + OFFSET_X , 1, 0.67, 0.67 );
setScaleKey( spep_0 + 334 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_0 + 335 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_0 + 336 + OFFSET_X , 1, 0.7, 0.7 );
setScaleKey( spep_0 + 339 + OFFSET_X , 1, 0.7, 0.7 );
setScaleKey( spep_0 + 340 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_0 + 347 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_0 + 348 + OFFSET_X , 1, 0.93, 0.93 );
setScaleKey( spep_0 + 349 + OFFSET_X , 1, 0.93, 0.93 );
setScaleKey( spep_0 + 350 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_0 + 351 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_0 + 352 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_0 + 368 + OFFSET_X , 1, 0.81, 0.81 );

setRotateKey( spep_0 + 324 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 347 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 348 + OFFSET_X , 1, -33.2 );
setRotateKey( spep_0 + 357 + OFFSET_X , 1, -33.2 );
setRotateKey( spep_0 + 358 + OFFSET_X , 1, -31.2 );
setRotateKey( spep_0 + 359 + OFFSET_X , 1, -31.2 );
setRotateKey( spep_0 + 360 + OFFSET_X , 1, -26.9 );
setRotateKey( spep_0 + 361 + OFFSET_X , 1, -26.9 );
setRotateKey( spep_0 + 362 + OFFSET_X , 1, -22.2 );
setRotateKey( spep_0 + 363 + OFFSET_X , 1, -22.2 );
setRotateKey( spep_0 + 364 + OFFSET_X , 1, -17 );
setRotateKey( spep_0 + 365 + OFFSET_X , 1, -17 );
setRotateKey( spep_0 + 366 + OFFSET_X , 1, -11.2 );
setRotateKey( spep_0 + 368 + OFFSET_X , 1, -11.2 );

setBlendColor( spep_0 + 324 + OFFSET_X , 1, 3, 0, 0, 0, 0.25);
setBlendColor( spep_0 + 368 + OFFSET_X , 1, 3, 0, 0, 0, 0.25);
setBlendColor( spep_0 + 369 + OFFSET_X , 1, 3, 0, 0, 0, 0);

-- 敵の動き2
setDisp( spep_0 + 424 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 582 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 424 + OFFSET_X , 1, 106 );
changeAnime( spep_0 + 488 + OFFSET_X , 1, 8 );
changeAnime( spep_0 + 508 + OFFSET_X , 1, 17 );
changeAnime( spep_0 + 542 + OFFSET_X , 1, 116 );

setMoveKey( spep_0 + 424 + OFFSET_X , 1, 386.1, sc_tmp2 + 22.8 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X , 1, 386.1, sc_tmp2 + 22.8 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X , 1, 334.2, sc_tmp2 + 14.8 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X , 1, 334.2, sc_tmp2 + 14.8 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X , 1, 283.8, sc_tmp2 + 7.1 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X , 1, 283.8, sc_tmp2 + 7.1 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X , 1, 236.5, sc_tmp2 + -4.6 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X , 1, 236.5, sc_tmp2 + -4.6 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X , 1, 190.7, sc_tmp2 + -16.2 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X , 1, 190.7, sc_tmp2 + -16.2 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X , 1, 146.3, sc_tmp2 + -27.5 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X , 1, 146.3, sc_tmp2 + -27.5 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X , 1, 103.5, sc_tmp2 + -38.5 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X , 1, 103.5, sc_tmp2 + -38.5 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X , 1, 62.1, sc_tmp2 + -49.2 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X , 1, 62.1, sc_tmp2 + -49.2 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X , 1, 22.2, sc_tmp2 + -59.7 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X , 1, 22.2, sc_tmp2 + -59.7 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X , 1, -13.5, sc_tmp2 + -65.7 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X , 1, -13.5, sc_tmp2 + -65.7 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X , 1, -21.1, sc_tmp2 + -66.5 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X , 1, -21.1, sc_tmp2 + -66.5 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X , 1, -29, sc_tmp2 + -67.3 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X , 1, -29, sc_tmp2 + -67.3 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X , 1, -37.1, sc_tmp2 + -68 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X , 1, -37.1, sc_tmp2 + -68 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X , 1, -45.5, sc_tmp2 + -68.9 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X , 1, -45.5, sc_tmp2 + -68.9 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X , 1, -30 - 54.2,   sc_tmp2 + -69.8 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X , 1, -30 - 54.2,   sc_tmp2 + -69.8 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X , 1, -30 - 63.1,   sc_tmp2 + -70.7 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X , 1, -30 - 63.1,   sc_tmp2 + -70.7 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X , 1, -30 - 72.4,   sc_tmp2 + -71.6 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X , 1, -30 - 72.4,   sc_tmp2 + -71.6 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X , 1, -30 - 81.9,   sc_tmp2 + -72.6 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X , 1, -30 - 81.9,   sc_tmp2 + -72.6 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X , 1, -30 - 91.6,   sc_tmp2 + -73.6 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X , 1, -30 - 91.6,   sc_tmp2 + -73.6 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X , 1, -30 - 101.6,  sc_tmp2 + -74.7 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X , 1, -30 - 101.6,  sc_tmp2 + -74.7 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X , 1, -30 - 111.9,  sc_tmp2 + -75.7 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X , 1, -30 - 111.9,  sc_tmp2 + -75.7 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X , 1, -30 - 122.5,  sc_tmp2 + -76.8 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X , 1, -30 - 122.5,  sc_tmp2 + -76.8 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X , 1, -30 - 133.3,  sc_tmp2 + -77.9 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X , 1, -30 - 133.3,  sc_tmp2 + -77.9 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X , 1, -30 - 144.4,  sc_tmp2 + -79.1 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X , 1, -30 - 144.4,  sc_tmp2 + -79.1 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X , 1, -30 - 145.1,  sc_tmp2 + -77.9 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X , 1, -30 - 145.1,  sc_tmp2 + -77.9 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X , 1, -30 - 145.8,  sc_tmp2 + -76.8 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X , 1, -30 - 145.8,  sc_tmp2 + -76.8 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X , 1, -30 - 146.5,  sc_tmp2 + -75.6 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X , 1, -30 - 146.5,  sc_tmp2 + -75.6 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X , 1, -30 - 147.2,  sc_tmp2 + -74.5 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X , 1, -30 - 147.2,  sc_tmp2 + -74.5 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X , 1, -30 - 147.8,  sc_tmp2 + -73.3 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X , 1, -30 - 147.8,  sc_tmp2 + -73.3 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X , 1, -30 - 148.5,  sc_tmp2 + -72.1 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X , 1, -30 - 148.5,  sc_tmp2 + -72.1 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X , 1, -30 - 149.2,  sc_tmp2 + -71 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X , 1, -30 - 149.2,  sc_tmp2 + -71 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X , 1, -30 - 149.2,  sc_tmp2 + -70.9 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X , 1, -30 - 149.2,  sc_tmp2 + -70.9 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X , 1, -18 - 195.7,  sc_tmp2 + 6.7 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X , 1, -18 - 195.7,  sc_tmp2 + 6.7 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X , 1, -16 - 196.7,  sc_tmp2 + 40.3 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X , 1, -16 - 196.7,  sc_tmp2 + 40.3 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X , 1, -14 - 196.6,  sc_tmp2 + 73.1 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X , 1, -14 - 196.6,  sc_tmp2 + 73.1 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X , 1, -12 - 195.4,  sc_tmp2 + 105.3 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X , 1, -12 - 195.4,  sc_tmp2 + 105.3 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X , 1, -10 - 193.2,  sc_tmp2 + 136.7 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X , 1, -10 - 193.2,  sc_tmp2 + 136.7 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X , 1, -8 - 182.6,  sc_tmp2 + 173.1 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X , 1, -8 - 182.6,  sc_tmp2 + 173.1 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X , 1, -7 - 180.6,  sc_tmp2 + 190.3 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X , 1, -7 - 180.6,  sc_tmp2 + 190.3 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X , 1, -6 - 185.9,  sc_tmp2 + 230.9 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X , 1, -6 - 185.9,  sc_tmp2 + 230.9 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X , 1, -5 - 178.8,  sc_tmp2 + 248 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X , 1, -5 - 178.8,  sc_tmp2 + 248 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X , 1, -4 - 170.8,  sc_tmp2 + 276 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X , 1, -4 - 170.8,  sc_tmp2 + 276 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X , 1, -181, sc_tmp2 + 281.3 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X , 1, -181, sc_tmp2 + 281.3 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X , 1, -184.6, sc_tmp2 + 283.4 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X , 1, -184.6, sc_tmp2 + 283.4 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X , 1, -188.1, sc_tmp2 + 285.5 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X , 1, -188.1, sc_tmp2 + 285.5 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X , 1, -191.7, sc_tmp2 + 287.5 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X , 1, -191.7, sc_tmp2 + 287.5 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X , 1, -195.2, sc_tmp2 + 289.6 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X , 1, -195.2, sc_tmp2 + 289.6 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X , 1, -198.7, sc_tmp2 + 291.8 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X , 1, -198.7, sc_tmp2 + 291.8 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X , 1, -202.3, sc_tmp2 + 293.8 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X , 1, -202.3, sc_tmp2 + 293.8 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X , 1, -205.8, sc_tmp2 + 295.9 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X , 1, -205.8, sc_tmp2 + 295.9 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X , 1, -209.4, sc_tmp2 + 298 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X , 1, -209.4, sc_tmp2 + 298 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X , 1, -212.9, sc_tmp2 + 300.1 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X , 1, -212.9, sc_tmp2 + 300.1 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X , 1, -212.7, sc_tmp2 + 300.3 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X , 1, -212.7, sc_tmp2 + 300.3 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X , 1, -212.5, sc_tmp2 + 300.6 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X , 1, -212.5, sc_tmp2 + 300.6 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X , 1, -212.2, sc_tmp2 + 300.9 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X , 1, -212.2, sc_tmp2 + 300.9 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X , 1, -212, sc_tmp2 + 301.1 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X , 1, -212, sc_tmp2 + 301.1 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X , 1, -211.8, sc_tmp2 + 301.4 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X , 1, -211.8, sc_tmp2 + 301.4 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X , 1, -211.6, sc_tmp2 + 301.6 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X , 1, -211.6, sc_tmp2 + 301.6 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X , 1, -211.4, sc_tmp2 + 301.9 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X , 1, -211.4, sc_tmp2 + 301.9 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X , 1, -203.1, sc_tmp2 + 284 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X , 1, -203.1, sc_tmp2 + 284 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X , 1, -199.2, sc_tmp2 + 277.3 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X , 1, -199.2, sc_tmp2 + 277.3 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X , 1, -194.9, sc_tmp2 + 269.9 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X , 1, -194.9, sc_tmp2 + 269.9 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X , 1, -190.1, sc_tmp2 + 261.5 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X , 1, -190.1, sc_tmp2 + 261.5 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X , 1, -184.9, sc_tmp2 + 252.3 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X , 1, -184.9, sc_tmp2 + 252.3 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X , 1, -179.3, sc_tmp2 + 242.2 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X , 1, -179.3, sc_tmp2 + 242.2 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X , 1, -179.1, sc_tmp2 + 242.4 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X , 1, -179.1, sc_tmp2 + 242.4 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X , 1, -178.8, sc_tmp2 + 242.6 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X , 1, -178.8, sc_tmp2 + 242.6 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X , 1, -178.3, sc_tmp2 + 242.3 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X , 1, -178.3, sc_tmp2 + 242.3 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X , 1, -170.4, sc_tmp2 + 246.7 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X , 1, -170.4, sc_tmp2 + 246.7 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X , 1, -171.3, sc_tmp2 + 231.1 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X , 1, -171.3, sc_tmp2 + 231.1 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X , 1, -179.5, sc_tmp2 + 237.2 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X , 1, -179.5, sc_tmp2 + 237.2 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X , 1, -174.6, sc_tmp2 + 217.2 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X , 1, -174.6, sc_tmp2 + 217.2 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X , 1, -162.1, sc_tmp2 + 210.8 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X , 1, -162.1, sc_tmp2 + 210.8 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X , 1, -144.9, sc_tmp2 + 197.2 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X , 1, -144.9, sc_tmp2 + 197.2 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X , 1, -133.4, sc_tmp2 + 157.6 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X , 1, -133.4, sc_tmp2 + 157.6 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X , 1, -125.5, sc_tmp2 + 132.5 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X , 1, -125.5, sc_tmp2 + 132.5 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X , 1, -100.3, sc_tmp2 + 73.2 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X , 1, -100.3, sc_tmp2 + 73.2 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X , 1, -58.3, sc_tmp2 + 11.7 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X , 1, -58.3, sc_tmp2 + 11.7 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X , 1, -29.3, sc_tmp2 + -54.5 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X , 1, -29.3, sc_tmp2 + -54.5 , 0 );

setScaleKey( spep_0 + 424 + OFFSET_X , 1, 0.4, 0.4 );
setScaleKey( spep_0 + 425 + OFFSET_X , 1, 0.4, 0.4 );
setScaleKey( spep_0 + 426 + OFFSET_X , 1, 0.41, 0.41 );
setScaleKey( spep_0 + 427 + OFFSET_X , 1, 0.41, 0.41 );
setScaleKey( spep_0 + 428 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_0 + 429 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_0 + 430 + OFFSET_X , 1, 0.44, 0.44 );
setScaleKey( spep_0 + 431 + OFFSET_X , 1, 0.44, 0.44 );
setScaleKey( spep_0 + 432 + OFFSET_X , 1, 0.45, 0.45 );
setScaleKey( spep_0 + 433 + OFFSET_X , 1, 0.45, 0.45 );
setScaleKey( spep_0 + 434 + OFFSET_X , 1, 0.46, 0.46 );
setScaleKey( spep_0 + 435 + OFFSET_X , 1, 0.46, 0.46 );
setScaleKey( spep_0 + 436 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 437 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 438 + OFFSET_X , 1, 0.48, 0.48 );
setScaleKey( spep_0 + 439 + OFFSET_X , 1, 0.48, 0.48 );
setScaleKey( spep_0 + 440 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_0 + 441 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_0 + 442 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 443 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 444 + OFFSET_X , 1, 0.51, 0.51 );
setScaleKey( spep_0 + 445 + OFFSET_X , 1, 0.51, 0.51 );
setScaleKey( spep_0 + 446 + OFFSET_X , 1, 0.52, 0.52 );
setScaleKey( spep_0 + 447 + OFFSET_X , 1, 0.52, 0.52 );
setScaleKey( spep_0 + 448 + OFFSET_X , 1, 0.53, 0.53 );
setScaleKey( spep_0 + 449 + OFFSET_X , 1, 0.53, 0.53 );
setScaleKey( spep_0 + 450 + OFFSET_X , 1, 0.54, 0.54 );
setScaleKey( spep_0 + 451 + OFFSET_X , 1, 0.54, 0.54 );
setScaleKey( spep_0 + 452 + OFFSET_X , 1, 0.55, 0.55 );
setScaleKey( spep_0 + 453 + OFFSET_X , 1, 0.55, 0.55 );
setScaleKey( spep_0 + 454 + OFFSET_X , 1, 0.56, 0.56 );
setScaleKey( spep_0 + 455 + OFFSET_X , 1, 0.56, 0.56 );
setScaleKey( spep_0 + 456 + OFFSET_X , 1, 0.57, 0.57 );
setScaleKey( spep_0 + 457 + OFFSET_X , 1, 0.57, 0.57 );
setScaleKey( spep_0 + 458 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_0 + 459 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_0 + 460 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 461 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 462 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_0 + 463 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_0 + 464 + OFFSET_X , 1, 0.61, 0.61 );
setScaleKey( spep_0 + 465 + OFFSET_X , 1, 0.61, 0.61 );
setScaleKey( spep_0 + 466 + OFFSET_X , 1, 0.63, 0.63 );
setScaleKey( spep_0 + 467 + OFFSET_X , 1, 0.63, 0.63 );
setScaleKey( spep_0 + 468 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_0 + 469 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_0 + 470 + OFFSET_X , 1, 0.65, 0.65 );
setScaleKey( spep_0 + 471 + OFFSET_X , 1, 0.65, 0.65 );
setScaleKey( spep_0 + 472 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_0 + 473 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_0 + 474 + OFFSET_X , 1, 0.67, 0.67 );
setScaleKey( spep_0 + 475 + OFFSET_X , 1, 0.67, 0.67 );
setScaleKey( spep_0 + 476 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_0 + 477 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_0 + 478 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_0 + 479 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_0 + 480 + OFFSET_X , 1, 0.7, 0.7 );
setScaleKey( spep_0 + 481 + OFFSET_X , 1, 0.7, 0.7 );
setScaleKey( spep_0 + 482 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_0 + 483 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_0 + 484 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_0 + 489 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_0 + 490 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_0 + 491 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_0 + 492 + OFFSET_X , 1, 0.67, 0.67 );
setScaleKey( spep_0 + 493 + OFFSET_X , 1, 0.67, 0.67 );
setScaleKey( spep_0 + 494 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_0 + 495 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_0 + 496 + OFFSET_X , 1, 0.62, 0.62 );
setScaleKey( spep_0 + 497 + OFFSET_X , 1, 0.62, 0.62 );
setScaleKey( spep_0 + 498 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 499 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 500 + OFFSET_X , 1, 0.57, 0.57 );
setScaleKey( spep_0 + 501 + OFFSET_X , 1, 0.57, 0.57 );
setScaleKey( spep_0 + 502 + OFFSET_X , 1, 0.55, 0.55 );
setScaleKey( spep_0 + 503 + OFFSET_X , 1, 0.55, 0.55 );
setScaleKey( spep_0 + 504 + OFFSET_X , 1, 0.52, 0.52 );
setScaleKey( spep_0 + 505 + OFFSET_X , 1, 0.52, 0.52 );
setScaleKey( spep_0 + 506 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 509 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 510 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_0 + 519 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_0 + 520 + OFFSET_X , 1, 0.48, 0.48 );
setScaleKey( spep_0 + 541 + OFFSET_X , 1, 0.48, 0.48 );
setScaleKey( spep_0 + 542 + OFFSET_X , 1, 0.39, 0.39 );
setScaleKey( spep_0 + 557 + OFFSET_X , 1, 0.39, 0.39 );
setScaleKey( spep_0 + 558 + OFFSET_X , 1, 0.4, 0.4 );
setScaleKey( spep_0 + 561 + OFFSET_X , 1, 0.4, 0.4 );
setScaleKey( spep_0 + 562 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_0 + 563 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_0 + 564 + OFFSET_X , 1, 0.46, 0.46 );
setScaleKey( spep_0 + 565 + OFFSET_X , 1, 0.46, 0.46 );
setScaleKey( spep_0 + 566 + OFFSET_X , 1, 0.51, 0.51 );
setScaleKey( spep_0 + 567 + OFFSET_X , 1, 0.51, 0.51 );
setScaleKey( spep_0 + 568 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 569 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 570 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_0 + 571 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_0 + 572 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_0 + 573 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_0 + 574 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_0 + 575 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_0 + 576 + OFFSET_X , 1, 1.42, 1.42 );
setScaleKey( spep_0 + 577 + OFFSET_X , 1, 1.42, 1.42 );
setScaleKey( spep_0 + 578 + OFFSET_X , 1, 1.8, 1.8 );
setScaleKey( spep_0 + 579 + OFFSET_X , 1, 1.8, 1.8 );
setScaleKey( spep_0 + 580 + OFFSET_X , 1, 2.29, 2.29 );
setScaleKey( spep_0 + 582 + OFFSET_X , 1, 2.29, 2.29 );

setRotateKey( spep_0 + 424 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 541 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 542 + OFFSET_X , 1, 4.9 );
setRotateKey( spep_0 + 582 + OFFSET_X , 1, 4.9 );

setBlendColor( spep_0 + 424 + OFFSET_X , 1, 3, 0, 0, 0, 0.25);
setBlendColor( spep_0 + 580 + OFFSET_X , 1, 3, 0, 0, 0, 0.25);
setBlendColor( spep_0 + 582 + OFFSET_X , 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--マント音
SE001 = playSeVer2( spep_0 + 4, 1332, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 30, 1331, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE004, 80 );
SE006 = playSeVer2( spep_0 + 84, 1332, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 108, 1332, "", 0, 0, 0, -1);
setPitch( spep_0 + 108, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );
SE008 = playSeVer2( spep_0 + 144, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE008, 72 );
setPitch( spep_0 + 144, SE008, -800 );
setTimeStretch( SE008, 0.47, 30, 4 );

--腕あげる
SE003 = playSeVer2( spep_0 + 30, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE003, 153 );
SE005 = playSeVer2( spep_0 + 34, 1013, "", 0, 0, 0, -1);

--銃構える
SE009 = playSeVer2( spep_0 + 160, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE009, 62 );
SE010 = playSeVer2( spep_0 + 166, 1389, "", 0, 0, 0, -1);

--2号飛んでくる
SE011 = playSeVer2( spep_0 + 206, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 206, 1117, "", 0, 0, 0, -1);

--2号銃撃つ１
SE013 = playSeVer2( spep_0 + 240, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE013, 155 );
SE014 = playSeVer2( spep_0 + 240, 1201, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 240, 1312, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 240, 1438, "",spep_0 + 308, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 240, SE016, 162 );

--2号銃撃つ２
SE017 = playSeVer2( spep_0 + 274, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 274, SE017, 158 );
SE018 = playSeVer2( spep_0 + 274, 1201, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 274, 1312, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 274, 1438, "",spep_0 + 342, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 274, SE020, 166 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_0 + 300;  -- エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    
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
--2号銃撃つ３
SE021 = playSeVer2( spep_0 + 306, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE021, 158 );
SE022 = playSeVer2( spep_0 + 306, 1201, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 306, 1312, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 306, 1438, "",spep_0 + 374, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 306, SE024, 162 );

--敵ヒット
SE025 = playSeVer2( spep_0 + 338, 1023, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 346, 1024, "", 0, 0, 0, -1);

--1号回り込んでくる
SE027 = playSeVer2( spep_0 + 388, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 388, SE027, 124 );
SE028 = playSeVer2( spep_0 + 396, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 396, SE028, 143 );
SE029 = playSeVer2( spep_0 + 406, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE029, 135 );
SE030 = playSeVer2( spep_0 + 410, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE030, 72 );
SE031 = playSeVer2( spep_0 + 420, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 420, SE031, 79 );
setTimeStretch( SE031, 1.41, 30, 4 );

--1号銃撃つ
SE032 = playSeVer2( spep_0 + 480, 1177, "",spep_0 + 532, 0, 30, -1);
SE033 = playSeVer2( spep_0 + 480, 1016, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 480, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE034, 146 );
SE035 = playSeVer2( spep_0 + 480, 1110, "", 0, 0, 0, -1);

--敵ヒット
SE036 = playSeVer2( spep_0 + 488, 1011, "",spep_0 + 594, 0, 6, -1);
SE037 = playSeVer2( spep_0 + 488, 1023, "", 0, 0, 0, -1);

--敵向かってくる
SE038 = playSeVer2( spep_0 + 538, 9, "",spep_0 + 598, 0, 10, -1);
SE039 = playSeVer2( spep_0 + 538, 1167, "",spep_0 + 598, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 538, SE039, 72 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 580

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 銃弾溜め〜フィニッシュまで ef_002
------------------------------------------------------
MAX_FRAME_2 = 350;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x80, -1, 0, 0, 0 );   -- 銃弾溜め〜フィニッシュまで ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--気弾背景
SE041 = playSeVer2( spep_2 + 0, 1264, "",spep_2 + 228, 12, 30, -1);
setSeVolumeByWorkId( spep_2 + 0, SE041, 86 );
setStartTimeMs( SE041,  67 );
SE042 = playSeVer2( spep_2 + 0, 1226, "",spep_2 + 66, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 0, SE042, 62 );
SE043 = playSeVer2( spep_2 + 0, 8, "", 60, 0, 15, -1);
SE044 = playSeVer2( spep_2 + 0, 1227, "",spep_2 + 60, 0, 24, -1);

--ズームアウト
SE045 = playSeVer2( spep_2 + 12, 44, "", 0, 0, 0, -1);

--1号飛び退く
SE046 = playSeVer2( spep_2 + 60, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE046, 193 );
SE047 = playSeVer2( spep_2 + 60, 1117, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 60, 1000, "", 0, 0, 0, -1);

--2号銃気弾溜め
SE049 = playSeVer2( spep_2 + 76, 1356, "",spep_2 + 206, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 76, SE049, 148 );
setPitch( spep_2 + 76, SE049, 300 );
setTimeStretch( SE049, 1.2, 30, 4 );
SE050 = playSeVer2( spep_2 + 84, 1396, "",spep_2 + 206, 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 84, SE050, 148 );

--気弾発射
SE051 = playSeVer2( spep_2 + 156, 1109, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 156, 1193, "",spep_2 + 236, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 156, SE052, 146 );
SE053 = playSeVer2( spep_2 + 156, 1027, "", 0, 0, 0, -1);

--銃はらう
SE054 = playSeVer2( spep_2 + 182, 1426, "",spep_2 + 280, 6, 62, -1);
setSeVolumeByWorkId( spep_2 + 182, SE054, 72 );
setStartTimeMs( SE054,  194 );
SE056 = playSeVer2( spep_2 + 190, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE056, 138 );
SE057 = playSeVer2( spep_2 + 190, 1371, "",spep_2 + 274, 0, 40, -1);

--気弾背景音２
SE055 = playSeVer2( spep_2 + 174, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 174, SE055, 76 );

--爆発
SE058 = playSeVer2( spep_2 + 190, 1067, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 202, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 202, SE059, 86 );

-- ** おわり ** --
dealDamage( spep_2 + 240 );
endPhase( spep_2 +  MAX_FRAME_2 - 2);  -- 350

end