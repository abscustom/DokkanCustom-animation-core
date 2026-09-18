-- 50029331: UR_アックマン_アクティブ必殺技：アクマイト光線(エネミー側)
-- sp_effect_a1_00445
-- sp2915

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01r = 163826;  -- 冒頭〜ラスト；敵側　手前 ef_001r
SP_01b = 163056;  -- 冒頭〜ラスト：奥 ef_001b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭〜ラスト
------------------------------------------------------
MAX_FRAME_0 = 584;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 冒頭〜ラスト：敵側 手前 (ef_001r)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 冒頭〜ラスト：奥 (ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 356 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 550 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 356 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 424 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 356 + OFFSET_X, 1, 8.7, -52.1 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 8.7, -52.1 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 8.8, -52.1 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 8.8, -52.1 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 8.9, -52.1 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 8.9, -52.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 9, -52.2 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 9, -52.2 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 9.3, -52.3 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 9.3, -52.3 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 9.7, -52.4 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 9.7, -52.4 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 10.3, -52.6 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 10.3, -52.6 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 11.1, -52.9 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 11.1, -52.9 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 12.3, -53.4 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 12.3, -53.4 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 13.9, -54 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 13.9, -54 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 16.1, -54.8 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 16.1, -54.8 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 18.9, -55.8 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 18.9, -55.8 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 22.6, -57.1 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 22.6, -57.1 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 27.1, -58.8 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 27.1, -58.8 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 32.9, -60.8 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 32.9, -60.8 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 15.6, -4.1 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 15.6, -4.1 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 15.1, 16.7 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 15.1, 16.7 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 22, -19.6 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 22, -19.6 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 11.8, 17.6 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 11.8, 17.6 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 23.6, -20.1 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 23.6, -20.1 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 13.8, 17.1 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 13.8, 17.1 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 22, -19.6 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 22, -19.6 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 11.8, 17.6 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 11.8, 17.6 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 23.6, -20.1 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 23.6, -20.1 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 13.4, 17.1 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 13.4, 17.1 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 22, -19.6 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 22, -19.6 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 11.8, 17.6 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 11.8, 17.6 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 22, -19.6 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 22, -19.6 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 11.8, 17.6 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 11.8, 17.6 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 23.6, -20.1 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 23.6, -20.1 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 13.4, 17.1 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 13.4, 17.1 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 11.8, 17.6 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 11.8, 17.6 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 13.4, 17.1 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 13.4, 17.1 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 11.8, 17.6 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 11.8, 17.6 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -5.5, -292.1 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, -5.5, -292.1 , 0 );

setScaleKey( spep_0 + 356 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 0.68, 0.68 );

setRotateKey( spep_0 + 356 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -35 );
setRotateKey( spep_0 + 550 + OFFSET_X, 1, -35 );

setAlphaKey( spep_0 + 356 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 513 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 514 + OFFSET_X, 1, 253 );
setAlphaKey( spep_0 + 515 + OFFSET_X, 1, 253 );
setAlphaKey( spep_0 + 516 + OFFSET_X, 1, 249 );
setAlphaKey( spep_0 + 517 + OFFSET_X, 1, 249 );
setAlphaKey( spep_0 + 518 + OFFSET_X, 1, 242 );
setAlphaKey( spep_0 + 519 + OFFSET_X, 1, 242 );
setAlphaKey( spep_0 + 520 + OFFSET_X, 1, 231 );
setAlphaKey( spep_0 + 521 + OFFSET_X, 1, 231 );
setAlphaKey( spep_0 + 522 + OFFSET_X, 1, 218 );
setAlphaKey( spep_0 + 523 + OFFSET_X, 1, 218 );
setAlphaKey( spep_0 + 524 + OFFSET_X, 1, 201 );
setAlphaKey( spep_0 + 525 + OFFSET_X, 1, 201 );
setAlphaKey( spep_0 + 526 + OFFSET_X, 1, 180 );
setAlphaKey( spep_0 + 527 + OFFSET_X, 1, 180 );
setAlphaKey( spep_0 + 528 + OFFSET_X, 1, 157 );
setAlphaKey( spep_0 + 529 + OFFSET_X, 1, 157 );
setAlphaKey( spep_0 + 530 + OFFSET_X, 1, 132 );
setAlphaKey( spep_0 + 531 + OFFSET_X, 1, 132 );
setAlphaKey( spep_0 + 532 + OFFSET_X, 1, 108 );
setAlphaKey( spep_0 + 533 + OFFSET_X, 1, 108 );
setAlphaKey( spep_0 + 534 + OFFSET_X, 1, 85 );
setAlphaKey( spep_0 + 535 + OFFSET_X, 1, 85 );
setAlphaKey( spep_0 + 536 + OFFSET_X, 1, 66 );
setAlphaKey( spep_0 + 537 + OFFSET_X, 1, 66 );
setAlphaKey( spep_0 + 538 + OFFSET_X, 1, 50 );
setAlphaKey( spep_0 + 539 + OFFSET_X, 1, 50 );
setAlphaKey( spep_0 + 540 + OFFSET_X, 1, 37 );
setAlphaKey( spep_0 + 541 + OFFSET_X, 1, 37 );
setAlphaKey( spep_0 + 542 + OFFSET_X, 1, 27 );
setAlphaKey( spep_0 + 543 + OFFSET_X, 1, 27 );
setAlphaKey( spep_0 + 544 + OFFSET_X, 1, 20 );
setAlphaKey( spep_0 + 545 + OFFSET_X, 1, 20 );
setAlphaKey( spep_0 + 546 + OFFSET_X, 1, 15 );
setAlphaKey( spep_0 + 547 + OFFSET_X, 1, 15 );
setAlphaKey( spep_0 + 548 + OFFSET_X, 1, 13 );
setAlphaKey( spep_0 + 549 + OFFSET_X, 1, 10 );
setAlphaKey( spep_0 + 550 + OFFSET_X, 1, 255 );

setBlendColor( spep_0 + 356 + OFFSET_X, 1, 3, 0, 0, 0, 0.0 );
setBlendColor( spep_0 + 466 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_0 + 552 + OFFSET_X, 1, 3, 0, 0, 0, 0.0 );

-- ** 音 ** --
--環境音1
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 37 );

--腕上げる
SE002 = playSeVer2( spep_0 + 22, 1004, "", 0, 0, 0, -1);

--顔カットイン
SE003 = playSeVer2( spep_0 + 50, 1018, "", 0, 0, 0, -1);

--ポーズ音
SE004 = playSeVer2( spep_0 + 62, 1048, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 132, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 178, 8, "", 0, 0, 0, -1);

--環境音2
SE005 = playSeVer2( spep_0 + 62, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE005, 29 );

--光線溜め音
SE008 = playSeVer2( spep_0 + 236, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE008, 120 );
SE009 = playSeVer2( spep_0 + 236, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE009, 250 );
SE010 = playSeVer2( spep_0 + 236, 48, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE010, 39 );

--光線発射音
SE011 = playSeVer2( spep_0 + 264, 1127, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE011, 116 );
setPitch( spep_0 + 264, SE011, -510 );
setTimeStretch( SE011, 0.66, 30, 4 );
SE012 = playSeVer2( spep_0 + 264, 1211, "",spep_0 + 446, 0, 10, -1);
SE013 = playSeVer2( spep_0 + 264, 1214, "",spep_0 + 448, 0, 30, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 300; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);

pauseAll( SP_dodge, 67);

setAlphaKey( SP_dodge , 1, 255 );
setBlendColor( SP_dodge , 1, 3, 0, 0, 0, 0.0 );

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, - 1, 0, 0, - 350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, - 1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge + 10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--光線発射音
SE014 = playSeVer2( spep_0 + 352, 1127, "",spep_0 + 444, 20, 28, -1);
setSeVolumeByWorkId( spep_0 + 352, SE014, 116 );
setStartTimeMs( SE014,  400 );
setPitch( spep_0 + 352, SE014, -510 );
setTimeStretch( SE014, 0.66, 30, 4 );
SE015 = playSeVer2( spep_0 + 402, 1127, "",spep_0 + 466, 14, 14, -1);
setSeVolumeByWorkId( spep_0 + 402, SE015, 116 );
setStartTimeMs( SE015,  467 );
setPitch( spep_0 + 402, SE015, -510 );
setTimeStretch( SE015, 0.66, 30, 4 );

--光線着弾音
SE016 = playSeVer2( spep_0 + 418, 1424, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 418, 1114, "", 0, 0, 0, -1);

--眼光る
SE018 = playSeVer2( spep_0 + 460, 1386, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 466, 12, "", 0, 0, 0, -1);
setPitch( spep_0 + 466, SE019, -610 );
setTimeStretch( SE019, 0.59, 30, 4 );

--爆発音
SE020 = playSeVer2( spep_0 + 502, 1156, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 502, 1159, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_0 + 430);
endPhase( spep_0 + MAX_FRAME_0); -- 終了フレーム 586F

end
