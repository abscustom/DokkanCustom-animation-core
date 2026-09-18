--9021920:UR_超サイヤ人孫悟空(GT)_アクティブ必殺技：渾身のかめはめ波_エネミー側
--sp_effect_a1_00291
--sp2901

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(敵)
SP_01r = 163868; --	悟空登場〜フィニッシュ ef_001_front_r
SP_01b = 157267; --	悟空登場〜フィニッシュ ef_001_back
--SP_03= 157268;--	KO

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

OFFSET_X = -3;

if (_IS_PLAYER_SIDE_ == 1) then

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 悟空登場〜フィニッシュ
-------------------------------------------------
MAX_FRAME_0 = 610;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 悟空登場〜フィニッシュ ef_001_front_r
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 悟空登場〜フィニッシュ ef_001_back
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

-- ** 敵キャラクター ** --
--敵の動き
setDisp(spep_0 + 426 + OFFSET_X, 1, 1);
setDisp(spep_0 + 612 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 426 + OFFSET_X, 1, 18 );
changeAnime( spep_0 + 482 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 426 + OFFSET_X, 1, -186, 151 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -186, 151 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 42.1, -20.2 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 42.1, -20.2 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 40.3, -18.7 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 40.3, -18.7 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 38.4, -17.3 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 38.4, -17.3 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 36.7, -15.9 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 36.7, -15.9 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 34.9, -14.5 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 34.9, -14.5 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 33.2, -13.2 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 33.2, -13.2 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 31.6, -11.9 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 31.6, -11.9 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 30, -10.6 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 30, -10.6 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 28.4, -9.4 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 28.4, -9.4 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 26.9, -8.2 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 26.9, -8.2 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 25.3, -7 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 25.3, -7 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 23.8, -5.8 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 23.8, -5.8 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 22.4, -4.6 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 22.4, -4.6 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 20.9, -3.4 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 20.9, -3.4 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 19.4, -2.2 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 19.4, -2.2 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 18, -1.1 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 18, -1.1 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 16.6, 0.1 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 16.6, 0.1 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 15.2, 1.2 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 15.2, 1.2 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 13.8, 2.3 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 13.8, 2.3 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 12.4, 3.5 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 12.4, 3.5 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 11.1, 4.6 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 11.1, 4.6 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 9.7, 5.7 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 9.7, 5.7 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 8.3, 6.8 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 8.3, 6.8 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 7, 8 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 7, 8 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 5.6, 9.1 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 5.6, 9.1 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 4.3, 10.2 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 4.3, 10.2 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 3, 11.3 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 3, 11.3 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 1.7, 12.4 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 1.7, 12.4 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 0.4, 13.5 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 0.4, 13.5 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, -0.9, 14.6 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -0.9, 14.6 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, -2.1, 15.6 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, -2.1, 15.6 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, -3.3, 16.6 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, -3.3, 16.6 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, -4.5, 17.6 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, -4.5, 17.6 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, -5.6, 18.5 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, -5.6, 18.5 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, -6.8, 19.4 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, -6.8, 19.4 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, -7.8, 20.3 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, -7.8, 20.3 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, -8.9, 21.2 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, -8.9, 21.2 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, -9.9, 22 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, -9.9, 22 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, -10.9, 22.9 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, -10.9, 22.9 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, -11.9, 23.6 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, -11.9, 23.6 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, -12.8, 24.4 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, -12.8, 24.4 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, -13.7, 25.2 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, -13.7, 25.2 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, -14.6, 25.9 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, -14.6, 25.9 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, -15.4, 26.6 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, -15.4, 26.6 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, -16.2, 27.2 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, -16.2, 27.2 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, -17, 27.9 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, -17, 27.9 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, -17.8, 28.5 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, -17.8, 28.5 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, -18.5, 29.1 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, -18.5, 29.1 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, -19.2, 29.6 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, -19.2, 29.6 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, -19.9, 30.2 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, -19.9, 30.2 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, -20.5, 30.7 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, -20.5, 30.7 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, -21.1, 31.1 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, -21.1, 31.1 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, -21.7, 31.6 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, -21.7, 31.6 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, -21.1, 31.2 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, -21.1, 31.2 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, -21.7, 31.6 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, -21.7, 31.6 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, -22.2, 32 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, -22.2, 32 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, -22.7, 32.4 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, -22.7, 32.4 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, -23.2, 32.8 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, -23.2, 32.8 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, -23.7, 33.1 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, -23.7, 33.1 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, -24.1, 33.4 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, -24.1, 33.4 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, -24.4, 33.7 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, -24.4, 33.7 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, -24.8, 34.5 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, -24.8, 34.5 , 0 );

setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_0 + 426 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_0 + 487 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_0 + 488 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_0 + 489 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_0 + 491 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_0 + 492 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_0 + 493 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_0 + 495 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_0 + 496 + OFFSET_X, 1, 19 );
setRotateKey( spep_0 + 497 + OFFSET_X, 1, 19 );
setRotateKey( spep_0 + 498 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 499 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 500 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_0 + 501 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_0 + 502 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_0 + 503 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_0 + 504 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_0 + 505 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_0 + 506 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_0 + 507 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_0 + 508 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_0 + 509 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_0 + 510 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_0 + 511 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_0 + 512 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 513 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 514 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 515 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 516 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_0 + 517 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_0 + 519 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, 17.6 );
setRotateKey( spep_0 + 521 + OFFSET_X, 1, 17.6 );
setRotateKey( spep_0 + 522 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 523 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 524 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 525 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 526 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_0 + 527 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_0 + 528 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_0 + 529 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_0 + 530 + OFFSET_X, 1, 17.1 );
setRotateKey( spep_0 + 533 + OFFSET_X, 1, 17.1 );
setRotateKey( spep_0 + 534 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 535 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_0 + 537 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_0 + 538 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_0 + 541 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_0 + 542 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_0 + 547 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_0 + 548 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_0 + 549 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_0 + 550 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_0 + 553 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_0 + 554 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_0 + 555 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_0 + 559 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_0 + 560 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 561 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 562 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_0 + 565 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_0 + 566 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_0 + 567 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_0 + 568 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_0 + 571 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_0 + 572 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_0 + 575 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_0 + 576 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_0 + 579 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_0 + 580 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_0 + 583 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_0 + 584 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_0 + 591 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_0 + 592 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_0 + 595 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_0 + 596 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 612 + OFFSET_X, 1, 15 );

setBlendColor(spep_0 + 426 + OFFSET_X, 1, 3, 0.39, 0.71, 0.78, 0.68);
setBlendColor(spep_0 + 482 + OFFSET_X, 1, 3, 0.5, 0.72, 1, 0.49);
setBlendColor(spep_0 + 484 + OFFSET_X, 1, 3, 0.5, 0.72, 1, 0.49);
setBlendColor(spep_0 + 486 + OFFSET_X, 1, 3, 0.51, 0.72, 1, 0.5);
setBlendColor(spep_0 + 488 + OFFSET_X, 1, 3, 0.51, 0.73, 1, 0.51);
setBlendColor(spep_0 + 490 + OFFSET_X, 1, 3, 0.52, 0.73, 1, 0.52);
setBlendColor(spep_0 + 492 + OFFSET_X, 1, 3, 0.52, 0.73, 1, 0.52);
setBlendColor(spep_0 + 494 + OFFSET_X, 1, 3, 0.53, 0.74, 1, 0.53);
setBlendColor(spep_0 + 496 + OFFSET_X, 1, 3, 0.54, 0.74, 1, 0.54);
setBlendColor(spep_0 + 498 + OFFSET_X, 1, 3, 0.54, 0.75, 1, 0.55);
setBlendColor(spep_0 + 500 + OFFSET_X, 1, 3, 0.55, 0.75, 1, 0.55);
setBlendColor(spep_0 + 502 + OFFSET_X, 1, 3, 0.55, 0.75, 1, 0.56);
setBlendColor(spep_0 + 504 + OFFSET_X, 1, 3, 0.56, 0.76, 1, 0.57);
setBlendColor(spep_0 + 506 + OFFSET_X, 1, 3, 0.57, 0.76, 1, 0.58);
setBlendColor(spep_0 + 508 + OFFSET_X, 1, 3, 0.57, 0.77, 1, 0.58);
setBlendColor(spep_0 + 510 + OFFSET_X, 1, 3, 0.58, 0.77, 1, 0.59);
setBlendColor(spep_0 + 512 + OFFSET_X, 1, 3, 0.58, 0.77, 1, 0.6);
setBlendColor(spep_0 + 514 + OFFSET_X, 1, 3, 0.59, 0.78, 1, 0.61);
setBlendColor(spep_0 + 516 + OFFSET_X, 1, 3, 0.59, 0.78, 1, 0.61);
setBlendColor(spep_0 + 518 + OFFSET_X, 1, 3, 0.6, 0.79, 1, 0.62);
setBlendColor(spep_0 + 520 + OFFSET_X, 1, 3, 0.61, 0.79, 1, 0.63);
setBlendColor(spep_0 + 522 + OFFSET_X, 1, 3, 0.61, 0.79, 1, 0.64);
setBlendColor(spep_0 + 524 + OFFSET_X, 1, 3, 0.62, 0.8, 1, 0.64);
setBlendColor(spep_0 + 526 + OFFSET_X, 1, 3, 0.62, 0.8, 1, 0.65);
setBlendColor(spep_0 + 528 + OFFSET_X, 1, 3, 0.63, 0.81, 1, 0.66);
setBlendColor(spep_0 + 530 + OFFSET_X, 1, 3, 0.64, 0.81, 1, 0.67);
setBlendColor(spep_0 + 532 + OFFSET_X, 1, 3, 0.64, 0.81, 1, 0.67);
setBlendColor(spep_0 + 534 + OFFSET_X, 1, 3, 0.65, 0.82, 1, 0.68);
setBlendColor(spep_0 + 536 + OFFSET_X, 1, 3, 0.65, 0.82, 1, 0.69);
setBlendColor(spep_0 + 538 + OFFSET_X, 1, 3, 0.66, 0.83, 1, 0.7);
setBlendColor(spep_0 + 540 + OFFSET_X, 1, 3, 0.66, 0.83, 1, 0.7);
setBlendColor(spep_0 + 542 + OFFSET_X, 1, 3, 0.67, 0.83, 1, 0.71);
setBlendColor(spep_0 + 544 + OFFSET_X, 1, 3, 0.68, 0.84, 1, 0.72);
setBlendColor(spep_0 + 546 + OFFSET_X, 1, 3, 0.68, 0.84, 1, 0.73);
setBlendColor(spep_0 + 548 + OFFSET_X, 1, 3, 0.69, 0.85, 1, 0.73);
setBlendColor(spep_0 + 550 + OFFSET_X, 1, 3, 0.69, 0.85, 1, 0.74);
setBlendColor(spep_0 + 552 + OFFSET_X, 1, 3, 0.7, 0.85, 1, 0.75);
setBlendColor(spep_0 + 554 + OFFSET_X, 1, 3, 0.71, 0.86, 1, 0.76);
setBlendColor(spep_0 + 556 + OFFSET_X, 1, 3, 0.71, 0.86, 1, 0.76);
setBlendColor(spep_0 + 558 + OFFSET_X, 1, 3, 0.72, 0.87, 1, 0.77);
setBlendColor(spep_0 + 560 + OFFSET_X, 1, 3, 0.72, 0.87, 1, 0.78);
setBlendColor(spep_0 + 562 + OFFSET_X, 1, 3, 0.73, 0.87, 1, 0.79);
setBlendColor(spep_0 + 564 + OFFSET_X, 1, 3, 0.73, 0.88, 1, 0.79);
setBlendColor(spep_0 + 566 + OFFSET_X, 1, 3, 0.74, 0.88, 1, 0.8);
setBlendColor(spep_0 + 568 + OFFSET_X, 1, 3, 0.75, 0.89, 1, 0.81);
setBlendColor(spep_0 + 570 + OFFSET_X, 1, 3, 0.75, 0.89, 1, 0.82);
setBlendColor(spep_0 + 572 + OFFSET_X, 1, 3, 0.76, 0.89, 1, 0.82);
setBlendColor(spep_0 + 574 + OFFSET_X, 1, 3, 0.76, 0.9, 1, 0.83);
setBlendColor(spep_0 + 576 + OFFSET_X, 1, 3, 0.77, 0.9, 1, 0.84);
setBlendColor(spep_0 + 578 + OFFSET_X, 1, 3, 0.78, 0.91, 1, 0.85);
setBlendColor(spep_0 + 580 + OFFSET_X, 1, 3, 0.78, 0.91, 1, 0.85);
setBlendColor(spep_0 + 582 + OFFSET_X, 1, 3, 0.79, 0.91, 1, 0.86);
setBlendColor(spep_0 + 584 + OFFSET_X, 1, 3, 0.79, 0.92, 1, 0.87);
setBlendColor(spep_0 + 586 + OFFSET_X, 1, 3, 0.8, 0.92, 1, 0.88);
setBlendColor(spep_0 + 588 + OFFSET_X, 1, 3, 0.81, 0.93, 1, 0.89);
setBlendColor(spep_0 + 612 + OFFSET_X, 1, 3, 0.81, 0.93, 1, 0);

-- ** 音 ** --
--セリフカットイン
SE001 = playSe( spep_0 + 0, 1018 );

--カメラ引く
SE002 = playSe( spep_0 + 0, 1175 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 47 );
stopSe( spep_0 + 98, SE002, 30 );
SE003 = playSe( spep_0 + 0, 1168 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 48 );

--砂巻き上がる
SE004 = playSe( spep_0 + 96, 1024 );
setSeVolumeByWorkId( spep_0 + 96, SE004, 83 );
SE005 = playSe( spep_0 + 96, 1035 );

--カメラ横向き
SE006 = playSe( spep_0 + 168, 1278 );
stopSe( spep_0 + 256, SE006, 40 );

--気ダメ
SE007 = playSe( spep_0 + 240, 1258 );
setSeVolumeByWorkId( spep_0 + 240, SE007, 0 );
setSeVolumeByWorkId( spep_0 + 241, SE007, 4.1 );
setSeVolumeByWorkId( spep_0 + 242, SE007, 8.2 );
setSeVolumeByWorkId( spep_0 + 243, SE007, 12.3 );
setSeVolumeByWorkId( spep_0 + 244, SE007, 16.4 );
setSeVolumeByWorkId( spep_0 + 245, SE007, 20.5 );
setSeVolumeByWorkId( spep_0 + 246, SE007, 24.6 );
setSeVolumeByWorkId( spep_0 + 247, SE007, 28.7 );
setSeVolumeByWorkId( spep_0 + 248, SE007, 32.8 );
setSeVolumeByWorkId( spep_0 + 249, SE007, 36.9 );
setSeVolumeByWorkId( spep_0 + 250, SE007, 41 );
setSeVolumeByWorkId( spep_0 + 251, SE007, 45.1 );
setSeVolumeByWorkId( spep_0 + 252, SE007, 49.2 );
setSeVolumeByWorkId( spep_0 + 253, SE007, 53.3 );
setSeVolumeByWorkId( spep_0 + 254, SE007, 57.4 );
setSeVolumeByWorkId( spep_0 + 255, SE007, 61.5 );
setSeVolumeByWorkId( spep_0 + 256, SE007, 65.6 );
setSeVolumeByWorkId( spep_0 + 257, SE007, 69.7 );
setSeVolumeByWorkId( spep_0 + 258, SE007, 73.8 );
setSeVolumeByWorkId( spep_0 + 259, SE007, 77.9 );
setSeVolumeByWorkId( spep_0 + 260, SE007, 82 );
setSeVolumeByWorkId( spep_0 + 261, SE007, 86.1 );
setSeVolumeByWorkId( spep_0 + 262, SE007, 91 );
stopSe( spep_0 + 310, SE007, 24 );
setPitch( spep_0 + 240, SE007, -300 );
setTimeStretch( SE007, 0.8, 10, 1 );
SE008 = playSe( spep_0 + 256, 1306 );
setSeVolumeByWorkId( spep_0 + 256, SE008, 67 );
stopSe( spep_0 + 350, SE008, 36 );
SE009 = playSe( spep_0 + 256, 1226 );
setSeVolumeByWorkId( spep_0 + 256, SE009, 71 );
SE010 = playSe( spep_0 + 256, 1265 );
stopSe( spep_0 + 356, SE010, 24 );

--かめはめ波発射
SE011 = playSe( spep_0 + 336, 1205 );
SE012 = playSe( spep_0 + 336, 1146 );
SE013 = playSe( spep_0 + 336, 1284 );

--追いかめはめ波
SE015 = playSe( spep_0 + 420, 1021 );
setSeVolumeByWorkId( spep_0 + 420, SE015, 83 );

--敵飲み込まれる
SE016 = playSe( spep_0 + 422, 1226 );
setSeVolumeByWorkId( spep_0 + 422, SE016, 0 );
setSeVolumeByWorkId( spep_0 + 423, SE016, 2.5 );
setSeVolumeByWorkId( spep_0 + 424, SE016, 5 );
setSeVolumeByWorkId( spep_0 + 425, SE016, 7.5 );
setSeVolumeByWorkId( spep_0 + 426, SE016, 10 );
setSeVolumeByWorkId( spep_0 + 427, SE016, 12.5 );
setSeVolumeByWorkId( spep_0 + 428, SE016, 15 );
setSeVolumeByWorkId( spep_0 + 429, SE016, 17.5 );
setSeVolumeByWorkId( spep_0 + 430, SE016, 20 );
setSeVolumeByWorkId( spep_0 + 431, SE016, 22.5 );
setSeVolumeByWorkId( spep_0 + 432, SE016, 25 );
setSeVolumeByWorkId( spep_0 + 433, SE016, 27.5 );
setSeVolumeByWorkId( spep_0 + 434, SE016, 30 );
setSeVolumeByWorkId( spep_0 + 435, SE016, 32.5 );
setSeVolumeByWorkId( spep_0 + 436, SE016, 35 );
setSeVolumeByWorkId( spep_0 + 437, SE016, 37.5 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 450; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );

    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    
    setBlendColor(SP_dodge+9, 1, 3, 0, 0, 0, 0);

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
    
    -----------------------------
    --回避しなかった場合
    -----------------------------

-- ** 音 ** --
--敵飲み込まれる
setSeVolumeByWorkId( spep_0 + 438, SE016, 40 );
setSeVolumeByWorkId( spep_0 + 439, SE016, 42.5 );
setSeVolumeByWorkId( spep_0 + 440, SE016, 45 );
setSeVolumeByWorkId( spep_0 + 441, SE016, 47.5 );
setSeVolumeByWorkId( spep_0 + 442, SE016, 50 );
setSeVolumeByWorkId( spep_0 + 443, SE016, 52.5 );
setSeVolumeByWorkId( spep_0 + 444, SE016, 55 );
setSeVolumeByWorkId( spep_0 + 445, SE016, 57.5 );
setSeVolumeByWorkId( spep_0 + 446, SE016, 60 );
setSeVolumeByWorkId( spep_0 + 447, SE016, 62.5 );
setSeVolumeByWorkId( spep_0 + 448, SE016, 65 );
setSeVolumeByWorkId( spep_0 + 449, SE016, 67.5 );
setSeVolumeByWorkId( spep_0 + 450, SE016, 70 );
setSeVolumeByWorkId( spep_0 + 451, SE016, 72.5 );
setSeVolumeByWorkId( spep_0 + 452, SE016, 75 );
setSeVolumeByWorkId( spep_0 + 453, SE016, 77.5 );
setSeVolumeByWorkId( spep_0 + 454, SE016, 80 );
setSeVolumeByWorkId( spep_0 + 455, SE016, 82.5 );
setSeVolumeByWorkId( spep_0 + 456, SE016, 85 );
setSeVolumeByWorkId( spep_0 + 457, SE016, 87.5 );
setSeVolumeByWorkId( spep_0 + 458, SE016, 90 );
setSeVolumeByWorkId( spep_0 + 459, SE016, 92.5 );
setSeVolumeByWorkId( spep_0 + 460, SE016, 95 );
setSeVolumeByWorkId( spep_0 + 461, SE016, 97.5 );
setSeVolumeByWorkId( spep_0 + 462, SE016, 100 );
stopSe( spep_0 + 594, SE016, 104 );
SE017 = playSe( spep_0 + 470, 1161 );
setSeVolumeByWorkId( spep_0 + 470, SE017, 50 );
stopSe( spep_0 + 590, SE017, 98 );
SE018 = playSe( spep_0 + 470, 1024 );
setSeVolumeByWorkId( spep_0 + 470, SE018, 71 );
SE019 = playSe( spep_0 + 474, 1067 );
setSeVolumeByWorkId( spep_0 + 474, SE019, 79 );
SE020 = playSe( spep_0 + 474, 1159 );
setSeVolumeByWorkId( spep_0 + 474, SE020, 79 );
stopSe( spep_0 + 644, SE020, 10 );
SE014 = playSe( spep_0 + 518, 1266 );
setSeVolumeByWorkId( spep_0 + 518, SE014, 0 );
setSeVolumeByWorkId( spep_0 + 519, SE014, 4.4 );
setSeVolumeByWorkId( spep_0 + 520, SE014, 8.8 );
setSeVolumeByWorkId( spep_0 + 521, SE014, 13.2 );
setSeVolumeByWorkId( spep_0 + 522, SE014, 17.6 );
setSeVolumeByWorkId( spep_0 + 523, SE014, 22 );
setSeVolumeByWorkId( spep_0 + 524, SE014, 26.4 );
setSeVolumeByWorkId( spep_0 + 525, SE014, 30.8 );
setSeVolumeByWorkId( spep_0 + 526, SE014, 35.2 );
setSeVolumeByWorkId( spep_0 + 527, SE014, 39.6 );
setSeVolumeByWorkId( spep_0 + 528, SE014, 44 );
setSeVolumeByWorkId( spep_0 + 529, SE014, 48.4 );
setSeVolumeByWorkId( spep_0 + 530, SE014, 52.8 );
setSeVolumeByWorkId( spep_0 + 531, SE014, 57.2 );
setSeVolumeByWorkId( spep_0 + 532, SE014, 61.6 );
setSeVolumeByWorkId( spep_0 + 533, SE014, 66 );
setSeVolumeByWorkId( spep_0 + 534, SE014, 70.4 );
setSeVolumeByWorkId( spep_0 + 535, SE014, 74.8 );
setSeVolumeByWorkId( spep_0 + 536, SE014, 79.2 );
setSeVolumeByWorkId( spep_0 + 537, SE014, 83.6 );
setSeVolumeByWorkId( spep_0 + 538, SE014, 88 );
setSeVolumeByWorkId( spep_0 + 539, SE014, 92.4 );
setSeVolumeByWorkId( spep_0 + 540, SE014, 96.8 );
setSeVolumeByWorkId( spep_0 + 541, SE014, 101.2 );
setSeVolumeByWorkId( spep_0 + 542, SE014, 105.6 );
setSeVolumeByWorkId( spep_0 + 543, SE014, 110 );
setSeVolumeByWorkId( spep_0 + 544, SE014, 114.4 );
setSeVolumeByWorkId( spep_0 + 545, SE014, 118.8 );
setSeVolumeByWorkId( spep_0 + 546, SE014, 123.2 );
setSeVolumeByWorkId( spep_0 + 547, SE014, 127.6 );
setSeVolumeByWorkId( spep_0 + 548, SE014, 132 );
setSeVolumeByWorkId( spep_0 + 549, SE014, 136.4 );
setSeVolumeByWorkId( spep_0 + 550, SE014, 141 );
setStartTimeMs( SE014,  2317 );
stopSe( spep_0 + 604, SE014, 38 );

-- ** ダメージ表示 ** --
dealDamage( spep_0 + 510 ); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 ); -- 終了フレーム  610f
end