-- 9027990:LR_超サイヤ人ゴッドSSゴジータ_アクティブ必殺：オレにどこまでついてこれるかな？（エネミー側）
-- sp_effect_b1_00274
-- sp2697

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162633;  -- 開幕ニヤリ→キックと蹴り飛ばし  ef_001
SP_01b = 162634;  -- 背景  ef_001b

--エフェクト(敵)
SP_01r  = 162654;  -- セリフ除いた敵側  ef_001_r


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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕ニヤリ→キックと蹴り飛ばし
------------------------------------------------------
MAX_FRAME_0 = 1218;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕ニヤリ→キックと蹴り飛ばし(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 背景(ef_001b)
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
-- 敵の動き1
setDisp( spep_0 + 340 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 388 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 340 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 352 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 340 + OFFSET_X, 1, 31.5, -65.7 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 31.5, -65.7 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 61.5, -65.7 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 61.5, -65.7 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 205.1, -16.1 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 205.1, -16.1 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 144.1, 70.8 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 144.1, 70.8 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 143, -42.4 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 143, -42.4 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 208, 67.4 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 208, 67.4 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 213, -27.4 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 213, -27.4 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 268, -37.4 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 268, -37.4 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 275, -58.4 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 275, -58.4 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 283, -38.4 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 283, -38.4 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 315, -61.4 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 315, -61.4 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 327, -43.4 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 327, -43.4 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 317, -48.4 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 317, -48.4 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 317, -45.4 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 317, -45.4 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 317, -55.4 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 317, -55.4 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 322, -40.4 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 322, -40.4 , 0 );

setScaleKey( spep_0 + 340 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 5.46, 5.46 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 5.46, 5.46 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 5.32, 5.32 );

setRotateKey( spep_0 + 340 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 454 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 660 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 454 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 532 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 454 + OFFSET_X, 1, 57, 22.8 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 57, 22.8 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 72.5, 21.2 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 72.5, 21.2 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 30.9, -60.3 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 30.9, -60.3 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 150.8, 13.7 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 150.8, 13.7 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 102.6, -61.5 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 102.6, -61.5 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 25.5, 61.4 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 25.5, 61.4 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 61.3, -34.7 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 61.3, -34.7 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 87.2, 21.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 87.2, 21.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 22.8, 0.9 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 22.8, 0.9 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 53.4, 5.8 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 53.4, 5.8 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 62.9, -10.6 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 62.9, -10.6 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 54.9, 9.4 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 54.9, 9.4 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 57.4, -18.2 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 57.4, -18.2 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 61.2, 7.5 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 61.2, 7.5 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 61.2, 8.3 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 61.2, 8.3 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 57.2, 0.9 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 57.2, 0.9 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 51.3, 13.9 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 51.3, 13.9 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 54.9, 10.7 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 54.9, 10.7 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 56.2, 14.7 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 56.2, 14.7 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 57.4, 12.3 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 57.4, 12.3 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 48, 21.8 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 48, 21.8 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 51.3, 18.2 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 51.3, 18.2 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 47.6, 23.1 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 47.6, 23.1 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 48.9, 19.2 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 48.9, 19.2 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 46.9, 19.2 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 46.9, 19.2 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 50.9, 17.2 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 50.9, 17.2 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 52.9, 17.2 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 52.9, 17.2 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 13.7, -1.6 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 13.7, -1.6 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 194.5, -89.7 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 194.5, -89.7 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 55.6, -85.6 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 55.6, -85.6 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 55.7, -85.6 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 55.7, -85.6 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 152.3, -180.2 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 152.3, -180.2 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 170.7, -72.9 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 170.7, -72.9 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 172.2, -149.9 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 172.2, -149.9 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 141, -102.4 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 141, -102.4 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 147, -128.4 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 147, -128.4 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 175.9, -104 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 175.9, -104 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 149.4, -111.2 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 149.4, -111.2 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 180.3, -120.4 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 180.3, -120.4 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 159.3, -103.4 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 159.3, -103.4 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 182.2, -130.4 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 182.2, -130.4 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 178.2, -104.9 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 178.2, -104.9 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 177.7, -126.9 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 177.7, -126.9 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 182.8, -108.5 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 182.8, -108.5 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 178.3, -115 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 178.3, -115 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 176.8, -115 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 176.8, -115 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 170.8, -114 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 170.8, -114 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 167.8, -112.5 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 167.8, -112.5 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 165.2, -111.5 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 165.2, -111.5 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 162.2, -109.5 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 162.2, -109.5 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 160.2, -108 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 160.2, -108 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 157.7, -106.5 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 157.7, -106.5 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 155.7, -106 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 155.7, -106 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 153.7, -104 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 153.7, -104 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 151.7, -102.5 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 151.7, -102.5 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 149.3, -101 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, 149.3, -101 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, -12.1, 18.9 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, -12.1, 18.9 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, -12, 18.9 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, -12, 18.9 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 22.6, -14.9 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 22.6, -14.9 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, -38.8, 87.5 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, -38.8, 87.5 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, -0.9, 69.4 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, -0.9, 69.4 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, -12.1, 19 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, -12.1, 19 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, -13.3, 79 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, -13.3, 79 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 7.6, 51.5 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 7.6, 51.5 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, -6.5, 65.1 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, -6.5, 65.1 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, -4.4, 51.8 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, -4.4, 51.8 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, -8.3, 55.1 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, -8.3, 55.1 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 0.2, 56.6 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 0.2, 56.6 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, -4.3, 57.4 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, -4.3, 57.4 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, -2.9, 58.1 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, -2.9, 58.1 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, -2.1, 58.4 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, -2.1, 58.4 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, -2.2, 59 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, -2.2, 59 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, -0.9, 59.7 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, -0.9, 59.7 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, -0.4, 59.9 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, -0.4, 59.9 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 0.1, 60.2 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, 0.1, 60.2 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, -0.3, 60.2 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, -0.3, 60.2 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, -0.2, 60.3 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, -0.2, 60.3 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, -0.5, 60.3 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, -0.5, 60.3 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, -0.8, 60.6 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, -0.8, 60.6 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, -1.7, 60.6 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, -1.7, 60.6 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, -3.6, 60.6 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, -3.6, 60.6 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, -4.4, 60.6 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, -4.4, 60.6 , 0 );

setScaleKey( spep_0 + 454 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 577 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 578 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 581 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 585 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 586 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 589 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 590 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 593 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 594 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 595 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 1.79, 1.8 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 1.79, 1.8 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 1.1, 1.11 );
setScaleKey( spep_0 + 603 + OFFSET_X, 1, 1.1, 1.11 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 1, 1.01 );
setScaleKey( spep_0 + 605 + OFFSET_X, 1, 1, 1.01 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 613 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 614 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 619 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 620 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 625 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 626 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 627 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 628 + OFFSET_X, 1, 0.08, 0.09 );
setScaleKey( spep_0 + 629 + OFFSET_X, 1, 0.08, 0.09 );
setScaleKey( spep_0 + 630 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 633 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 634 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 639 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 640 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 645 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 646 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 649 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 650 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 660 + OFFSET_X, 1, 0.06, 0.06 );

setRotateKey( spep_0 + 454 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 537 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 538 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 541 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 542 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 595 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 596 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_0 + 660 + OFFSET_X, 1, -17.5 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 320, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 2, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE002, 63 );

--構える
SE003 = playSeVer2( spep_0 + 16, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 71 );
SE004 = playSeVer2( spep_0 + 24, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 72 );

--飛び上がる
SE005 = playSeVer2( spep_0 + 238, 1121, "",spep_0 + 332, 4, 40, -1);
setSeVolumeByWorkId( spep_0 + 238, SE005, 53 );
setPitch( spep_0 + 238, SE005, -600 );
SE007 = playSeVer2( spep_0 + 236, 1182, "",spep_0 + 286, 0, 26, -1);
SE008 = playSeVer2( spep_0 + 236, 1117, "",spep_0 + 322, 0, 50, -1);
SE009 = playSeVer2( spep_0 + 236, 1183, "",spep_0 + 334, 0, 36, -1);

--画面遷移
SE006 = playSeVer2( spep_0 + 220, 1232, "", 0, 0, 0, -1);

--キックで向かってくる
SE010 = playSeVer2( spep_0 + 310, 1109, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 310, SE010, 71 );
SE011 = playSeVer2( spep_0 + 310, 1117, "",spep_0 + 370, 0, 12, -1);
SE012 = playSeVer2( spep_0 + 310, 9, "",spep_0 + 376, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 310, SE012, 68 );

-- ** ボイス ** --
--「オレにどこまで付いてこれるかな」
--playVoice( spep_0 + 0, 746 );
--setVoiceVolume( spep_0 + 0, 746, 100 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 330; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
--setVoiceVolume( SP_dodge - 12, 719, 0 );

pauseAll( SP_dodge, 67);

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
--敵ヒット
SE013 = playSeVer2( spep_0 + 338, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 340, 1414, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 340, 1359, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 342, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE016, 141 );
setPitch( spep_0 + 342, SE016, -600 );

--振りかぶる
SE017 = playSeVer2( spep_0 + 394, 1116, "",spep_0 + 432, 0, 18, -1);
SE018 = playSeVer2( spep_0 + 408, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE018, 82 );

--強キック
SE019 = playSeVer2( spep_0 + 442, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 458, 1414, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 458, 1359, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 458, 1110, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 460, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE023, 86 );
SE024 = playSeVer2( spep_0 + 464, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 464, SE024, 79 );

--敵吹き飛ぶ
SE025 = playSeVer2( spep_0 + 508, 1427, "",spep_0 + 618, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 508, SE025, 90 );
SE026 = playSeVer2( spep_0 + 520, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 520, SE026, 77 );
SE027 = playSeVer2( spep_0 + 520, 1027, "", 0, 0, 0, -1);

--敵吹き飛ぶ２
SE028 = playSeVer2( spep_0 + 586, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 586, SE028, 75 );
SE029 = playSeVer2( spep_0 + 586, 1121, "",spep_0 + 684, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 586, SE029, 59 );
SE030 = playSeVer2( spep_0 + 586, 1183, "",spep_0 + 684, 0, 16, -1);
SE031 = playSeVer2( spep_0 + 594, 1117, "", 0, 0, 0, -1);

--岩激突
SE032 = playSeVer2( spep_0 + 658, 1033, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 664, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 664, SE033, 50 );

--カメラパン移動
SE034 = playSeVer2( spep_0 + 716, 63, "",spep_0 + 796, 0, 20, -1);
SE035 = playSeVer2( spep_0 + 716, 8, "", 0, 0, 0, -1);  
SE036 = playSeVer2( spep_0 + 716, 1278, "",spep_0 + 902, 0, 100, -1);
setSeVolumeByWorkId( spep_0 + 716, SE036, 58 );

--環境音
SE037 = playSeVer2( spep_0 + 716, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 716, SE037, 25 );

--顔アップ
SE038 = playSeVer2( spep_0 + 856, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 856, SE038, 86 );

--服を掴む
SE039 = playSeVer2( spep_0 + 966, 1331, "",spep_0 + 1006, 0, 12, -1);
SE040 = playSeVer2( spep_0 + 986, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 986, SE040, 78 );

--ラスト決め
SE041 = playSeVer2( spep_0 + 1032, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1032, SE041, 45 );
setPitch( spep_0 + 1032, SE041, 400 );
setTimeStretch( SE041, 1.27, 30, 4 );
SE042 = playSeVer2( spep_0 + 1032, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1032, SE042, 46 );
SE043 = playSeVer2( spep_0 + 1032, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1032, SE043, 50 );
SE044 = playSeVer2( spep_0 + 1034, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1034, SE044, 74 );
SE045 = playSeVer2( spep_0 + 1034, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1034, SE045, 65 );

-- ** おわり ** --
dealDamage( spep_0 + 1042 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 終了フレーム 1218F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕ニヤリ→キックと蹴り飛ばし
------------------------------------------------------
MAX_FRAME_0 = 1218;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- セリフ除いた敵側(ef_001_r)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 背景(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 340 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 388 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 340 + OFFSET_X, 1, 17 );
changeAnime( spep_0 + 352 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 340 + OFFSET_X, 1, -31.5, -65.7 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -31.5, -65.7 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -61.5, -65.7 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -61.5, -65.7 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -205.1, -16.1 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -205.1, -16.1 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -144.1, 70.8 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -144.1, 70.8 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -143, -42.4 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -143, -42.4 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -208, 67.4 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -208, 67.4 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -213, -27.4 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -213, -27.4 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -268, -37.4 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -268, -37.4 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -275, -58.4 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -275, -58.4 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -283, -38.4 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -283, -38.4 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -315, -61.4 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -315, -61.4 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -327, -43.4 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -327, -43.4 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -317, -48.4 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -317, -48.4 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -317, -45.4 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -317, -45.4 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -317, -55.4 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -317, -55.4 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -322, -40.4 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -322, -40.4 , 0 );

setScaleKey( spep_0 + 340 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 5.46, 5.46 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 5.46, 5.46 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 5.32, 5.32 );

setRotateKey( spep_0 + 340 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 454 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 660 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 454 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 532 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 454 + OFFSET_X, 1, -57, 22.8 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -57, 22.8 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -72.5, 21.2 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -72.5, 21.2 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -30.9, -60.3 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -30.9, -60.3 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -150.8, 13.7 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -150.8, 13.7 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -102.6, -61.5 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -102.6, -61.5 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -25.5, 61.4 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -25.5, 61.4 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -61.3, -34.7 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -61.3, -34.7 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -87.2, 21.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -87.2, 21.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -22.8, 0.9 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -22.8, 0.9 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -53.4, 25.8 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -53.4, 25.8 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -62.9, 10.6 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -62.9, 10.6 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -54.9, 29.4 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -54.9, 29.4 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -57.4, 18.2 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -57.4, 18.2 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -61.2, 27.5 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, -61.2, 27.5 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -61.2, 28.3 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -61.2, 28.3 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -57.2, 20.9 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -57.2, 20.9 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -53.4, 5.8 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -53.4, 5.8 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -62.9, -10.6 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -62.9, -10.6 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -54.9, 9.4 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -54.9, 9.4 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -57.4, -18.2 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -57.4, -18.2 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -61.2, 7.5 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, -61.2, 7.5 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -61.2, 8.3 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -61.2, 8.3 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -57.2, 0.9 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -57.2, 0.9 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -51.3, 13.9 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -51.3, 13.9 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -54.9, 10.7 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -54.9, 10.7 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -56.2, 14.7 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -56.2, 14.7 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -57.4, 12.3 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -57.4, 12.3 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -48, 21.8 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -48, 21.8 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -51.3, 18.2 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -51.3, 18.2 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -47.6, 23.1 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -47.6, 23.1 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -48.9, 19.2 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -48.9, 19.2 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -46.9, 19.2 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -46.9, 19.2 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -50.9, 17.2 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -50.9, 17.2 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -52.9, 17.2 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, -52.9, 17.2 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -13.7, -1.6 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, -13.7, -1.6 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -194.5, -89.7 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -194.5, -89.7 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -55.6, -85.6 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -55.6, -85.6 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -55.7, -85.6 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, -55.7, -85.6 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, -152.3, -180.2 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, -152.3, -180.2 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, -170.7, -72.9 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, -170.7, -72.9 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, -172.2, -149.9 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -172.2, -149.9 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, -141, -102.4 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, -141, -102.4 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, -147, -128.4 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, -147, -128.4 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, -175.9, -104 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, -175.9, -104 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, -149.4, -111.2 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, -149.4, -111.2 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, -180.3, -120.4 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, -180.3, -120.4 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, -159.3, -103.4 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, -159.3, -103.4 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, -182.2, -130.4 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, -182.2, -130.4 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, -178.2, -104.9 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, -178.2, -104.9 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, -177.7, -126.9 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, -177.7, -126.9 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, -182.8, -108.5 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, -182.8, -108.5 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, -178.3, -115 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, -178.3, -115 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, -176.8, -115 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, -176.8, -115 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, -170.8, -114 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, -170.8, -114 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, -167.8, -112.5 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, -167.8, -112.5 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, -165.2, -111.5 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, -165.2, -111.5 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, -162.2, -109.5 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, -162.2, -109.5 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, -160.2, -108 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, -160.2, -108 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, -157.7, -106.5 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, -157.7, -106.5 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, -155.7, -106 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, -155.7, -106 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, -153.7, -104 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, -153.7, -104 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, -151.7, -102.5 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, -151.7, -102.5 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, -149.3, -101 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, -149.3, -101 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 12.1, 18.9 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, 12.1, 18.9 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 12, 18.9 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 12, 18.9 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, -22.6, -14.9 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, -22.6, -14.9 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 38.8, 87.5 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 38.8, 87.5 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 0.9, 69.4 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 0.9, 69.4 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 12.1, 19 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 12.1, 19 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 13.3, 79 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 13.3, 79 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, -7.6, 51.5 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, -7.6, 51.5 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 6.5, 65.1 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 6.5, 65.1 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 4.4, 51.8 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, 4.4, 51.8 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 8.3, 55.1 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 8.3, 55.1 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, -0.2, 56.6 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, -0.2, 56.6 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 4.3, 57.4 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 4.3, 57.4 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 2.9, 58.1 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 2.9, 58.1 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 2.1, 58.4 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 2.1, 58.4 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 2.2, 59 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, 2.2, 59 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 0.9, 59.7 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 0.9, 59.7 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 0.4, 59.9 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, 0.4, 59.9 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, -0.1, 60.2 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, -0.1, 60.2 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 0.3, 60.2 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, 0.3, 60.2 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 0.2, 60.3 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, 0.2, 60.3 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 0.5, 60.3 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, 0.5, 60.3 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, 0.8, 60.6 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, 0.8, 60.6 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, 1.7, 60.6 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, 1.7, 60.6 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, 3.6, 60.6 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, 3.6, 60.6 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, 4.4, 60.6 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, 4.4, 60.6 , 0 );

setScaleKey( spep_0 + 454 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 577 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 578 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 581 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 585 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 586 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 589 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 590 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 593 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 594 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 595 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 1.79, 1.8 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 1.79, 1.8 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 1.1, 1.11 );
setScaleKey( spep_0 + 603 + OFFSET_X, 1, 1.1, 1.11 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 1, 1.01 );
setScaleKey( spep_0 + 605 + OFFSET_X, 1, 1, 1.01 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 613 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 614 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 619 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 620 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 625 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 626 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 627 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 628 + OFFSET_X, 1, 0.08, 0.09 );
setScaleKey( spep_0 + 629 + OFFSET_X, 1, 0.08, 0.09 );
setScaleKey( spep_0 + 630 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 633 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 634 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 639 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 640 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 645 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 646 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 649 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 650 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 660 + OFFSET_X, 1, 0.06, 0.06 );

setRotateKey( spep_0 + 454 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 537 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 538 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 541 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 542 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 595 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 596 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 660 + OFFSET_X, 1, 17.5 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 320, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 2, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE002, 63 );

--構える
SE003 = playSeVer2( spep_0 + 16, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 71 );
SE004 = playSeVer2( spep_0 + 24, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 72 );

--飛び上がる
SE005 = playSeVer2( spep_0 + 238, 1121, "",spep_0 + 332, 4, 40, -1);
setSeVolumeByWorkId( spep_0 + 238, SE005, 53 );
setPitch( spep_0 + 238, SE005, -600 );
SE007 = playSeVer2( spep_0 + 236, 1182, "",spep_0 + 286, 0, 26, -1);
SE008 = playSeVer2( spep_0 + 236, 1117, "",spep_0 + 322, 0, 50, -1);
SE009 = playSeVer2( spep_0 + 236, 1183, "",spep_0 + 334, 0, 36, -1);

--画面遷移
SE006 = playSeVer2( spep_0 + 220, 1232, "", 0, 0, 0, -1);

--キックで向かってくる
SE010 = playSeVer2( spep_0 + 310, 1109, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 310, SE010, 71 );
SE011 = playSeVer2( spep_0 + 310, 1117, "",spep_0 + 370, 0, 12, -1);
SE012 = playSeVer2( spep_0 + 310, 9, "",spep_0 + 376, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 310, SE012, 68 );

-- ** ボイス ** --
--「オレにどこまで付いてこれるかな」
--playVoice( spep_0 + 0, 746 );
--setVoiceVolume( spep_0 + 0, 746, 100 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 330; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
--setVoiceVolume( SP_dodge - 12, 719, 0 );

pauseAll( SP_dodge, 67);

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
--敵ヒット
SE013 = playSeVer2( spep_0 + 338, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 340, 1414, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 340, 1359, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 342, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE016, 141 );
setPitch( spep_0 + 342, SE016, -600 );

--振りかぶる
SE017 = playSeVer2( spep_0 + 394, 1116, "",spep_0 + 432, 0, 18, -1);
SE018 = playSeVer2( spep_0 + 408, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE018, 82 );

--強キック
SE019 = playSeVer2( spep_0 + 442, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 458, 1414, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 458, 1359, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 458, 1110, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 460, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE023, 86 );
SE024 = playSeVer2( spep_0 + 464, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 464, SE024, 79 );

--敵吹き飛ぶ
SE025 = playSeVer2( spep_0 + 508, 1427, "",spep_0 + 618, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 508, SE025, 90 );
SE026 = playSeVer2( spep_0 + 520, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 520, SE026, 77 );
SE027 = playSeVer2( spep_0 + 520, 1027, "", 0, 0, 0, -1);

--敵吹き飛ぶ２
SE028 = playSeVer2( spep_0 + 586, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 586, SE028, 75 );
SE029 = playSeVer2( spep_0 + 586, 1121, "",spep_0 + 684, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 586, SE029, 59 );
SE030 = playSeVer2( spep_0 + 586, 1183, "",spep_0 + 684, 0, 16, -1);
SE031 = playSeVer2( spep_0 + 594, 1117, "", 0, 0, 0, -1);

--岩激突
SE032 = playSeVer2( spep_0 + 658, 1033, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 664, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 664, SE033, 50 );

--カメラパン移動
SE034 = playSeVer2( spep_0 + 716, 63, "",spep_0 + 796, 0, 20, -1);
SE035 = playSeVer2( spep_0 + 716, 8, "", 0, 0, 0, -1);  
SE036 = playSeVer2( spep_0 + 716, 1278, "",spep_0 + 902, 0, 100, -1);
setSeVolumeByWorkId( spep_0 + 716, SE036, 58 );

--環境音
SE037 = playSeVer2( spep_0 + 716, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 716, SE037, 25 );

--顔アップ
SE038 = playSeVer2( spep_0 + 856, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 856, SE038, 86 );

--服を掴む
SE039 = playSeVer2( spep_0 + 966, 1331, "",spep_0 + 1006, 0, 12, -1);
SE040 = playSeVer2( spep_0 + 986, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 986, SE040, 78 );

--ラスト決め
SE041 = playSeVer2( spep_0 + 1032, 1289, "",spep_0 + 1108, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 1032, SE041, 45 );
setPitch( spep_0 + 1032, SE041, 400 );
setTimeStretch( SE041, 1.27, 30, 4 );
SE042 = playSeVer2( spep_0 + 1032, 1126, "",spep_0 + 1140, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 1032, SE042, 46 );
SE043 = playSeVer2( spep_0 + 1032, 1264, "",spep_0 + 1142, 0, 68, -1);
setSeVolumeByWorkId( spep_0 + 1032, SE043, 50 );
SE044 = playSeVer2( spep_0 + 1034, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1034, SE044, 74 );
SE045 = playSeVer2( spep_0 + 1034, 1024, "",spep_0 + 1138, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 1034, SE045, 65 );

-- ** おわり ** --
dealDamage( spep_0 + 1042 );
endPhase( spep_0 + MAX_FRAME_0 -4 ); -- 終了フレーム 1218F-4


end
