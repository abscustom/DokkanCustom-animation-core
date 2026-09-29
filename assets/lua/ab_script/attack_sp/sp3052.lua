--1034200:LR_超サイヤ人3孫悟空_超必殺技:超かめはめ波
--sp_effect_a1_00544
--sp3052

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164577 --スタート〜フィニッシュ ef_001

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



ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then
else

    mirror = -1;

    --SP_01  = SP_01r; -- 敵側エフェクトがある場合のみ

end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- スタート〜フィニッシュ
-------------------------------------------------
MAX_FRAME_0 = 864;
CARD_FRAME = 242;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- スタート〜フィニッシュ ef_001
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 144; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き1
setDisp( spep_0 + 474 + OFFSET_X, 1, 1);
setDisp( spep_0 + 518 + OFFSET_X, 1, 0);

changeAnimeBySide( spep_0 + 474 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 474 + OFFSET_X, 1, 109.2 * mirror, -358.2 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 109.2 * mirror, -358.2 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 113.7 * mirror, -359.4 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 113.7 * mirror, -359.4 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 118.2 * mirror, -360.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 118.2 * mirror, -360.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 122.7 * mirror, -361.9 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 122.7 * mirror, -361.9 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 127.2 * mirror, -363.2 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 127.2 * mirror, -363.2 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 131.7 * mirror, -364.5 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 131.7 * mirror, -364.5 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 136.2 * mirror, -365.7 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 136.2 * mirror, -365.7 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 140.6 * mirror, -367 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 140.6 * mirror, -367 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 145.1 * mirror, -368.2 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 145.1 * mirror, -368.2 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 149.6 * mirror, -369.5 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 149.6 * mirror, -369.5 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 154.1 * mirror, -370.7 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 154.1 * mirror, -370.7 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 158.6 * mirror, -372 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 158.6 * mirror, -372 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 163.1 * mirror, -373.2 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 163.1 * mirror, -373.2 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 167.6 * mirror, -374.5 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 167.6 * mirror, -374.5 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 172.1 * mirror, -375.7 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 172.1 * mirror, -375.7 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 176.6 * mirror, -377 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 176.6 * mirror, -377 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 181.1 * mirror, -378.3 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 181.1 * mirror, -378.3 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 185.6 * mirror, -379.5 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 185.6 * mirror, -379.5 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 190.1 * mirror, -380.8 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 190.1 * mirror, -380.8 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 194.6 * mirror, -382 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 194.6 * mirror, -382 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 199.1 * mirror, -383.3 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 199.1 * mirror, -383.3 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 203.6 * mirror, -384.5 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 203.6 * mirror, -384.5 , 0 );

setScaleKey( spep_0 + 474 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_0 + 474 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, 0 * mirror );

setBlendColor( spep_0 + 474 + OFFSET_X, 1, 2, 0.04, 0.22, 0.46, 0.4);

-- 敵の動き2
setDisp( spep_0 + 522 + OFFSET_X, 1, 1);
setDisp( spep_0 + 618 + OFFSET_X, 1, 0);

changeAnimeBySide( spep_0 + 558 + OFFSET_X, 1, 100 );
changeAnimeBySide( spep_0 + 582 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 522 + OFFSET_X, 1, 217.1 * mirror, -388.3 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 217.1 * mirror, -388.3 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 221.6 * mirror, -389.6 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 221.6 * mirror, -389.6 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 226.1 * mirror, -390.8 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 226.1 * mirror, -390.8 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 230.6 * mirror, -392.1 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 230.6 * mirror, -392.1 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 235.1 * mirror, -393.3 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 235.1 * mirror, -393.3 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 239.7 * mirror, -394.6 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 239.7 * mirror, -394.6 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 243.9 * mirror, -395.9 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 243.9 * mirror, -395.9 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 248.4 * mirror, -397.1 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 248.4 * mirror, -397.1 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 253.1 * mirror, -398.3 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 253.1 * mirror, -398.3 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 257.6 * mirror, -399.6 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 257.6 * mirror, -399.6 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 262 * mirror, -400.9 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 262 * mirror, -400.9 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 266.4 * mirror, -402.1 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 266.4 * mirror, -402.1 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 270.9 * mirror, -403.3 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 270.9 * mirror, -403.3 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 275.4 * mirror, -404.6 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 275.4 * mirror, -404.6 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 279.9 * mirror, -405.9 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 279.9 * mirror, -405.9 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 284.4 * mirror, -407.2 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 284.4 * mirror, -407.2 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 288.9 * mirror, -408.3 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 288.9 * mirror, -408.3 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 293.4 * mirror, -409.7 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 293.4 * mirror, -409.7 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 279.7 * mirror, 89.7 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 279.7 * mirror, 89.7 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 271.6 * mirror, 98.4 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 271.6 * mirror, 98.4 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 257.2 * mirror, 109.4 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 257.2 * mirror, 109.4 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 237.4 * mirror, 122.1 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 237.4 * mirror, 122.1 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 212.7 * mirror, 136 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 212.7 * mirror, 136 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 183.8 * mirror, 150.5 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 183.8 * mirror, 150.5 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 151.6 * mirror, 165.3 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 151.6 * mirror, 165.3 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 117.3 * mirror, 179.6 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 117.3 * mirror, 179.6 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 82.4 * mirror, 192.4 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 82.4 * mirror, 192.4 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 49.2 * mirror, 202.7 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 49.2 * mirror, 202.7 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 22.4 * mirror, 208 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 22.4 * mirror, 208 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, -1.9 * mirror, 208 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, -1.9 * mirror, 208 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, -35.6 * mirror, 207 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, -35.6 * mirror, 207 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, -73.5 * mirror, 205.1 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, -73.5 * mirror, 205.1 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, -112.7 * mirror, 202.6 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, -112.7 * mirror, 202.6 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, -150.2 * mirror, 199.7 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, -150.2 * mirror, 199.7 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, -182.5 * mirror, 196.5 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, -182.5 * mirror, 196.5 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, -199.9 * mirror, 194 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, -199.9 * mirror, 194 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, -205.6 * mirror, 191.3 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, -205.6 * mirror, 191.3 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, -211.4 * mirror, 188.5 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, -211.4 * mirror, 188.5 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, -216.9 * mirror, 185.7 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, -216.9 * mirror, 185.7 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, -222.3 * mirror, 183 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, -222.3 * mirror, 183 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, -225.6 * mirror, 181.2 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, -225.6 * mirror, 181.2 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, -228.8 * mirror, 179.6 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, -228.8 * mirror, 179.6 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, -231.8 * mirror, 178.2 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, -231.8 * mirror, 178.2 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, -234.5 * mirror, 177 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, -234.5 * mirror, 177 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, -236.9 * mirror, 176.1 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, -236.9 * mirror, 176.1 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, -238.8 * mirror, 175.5 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, -238.8 * mirror, 175.5 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, -240 * mirror, 175.2 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, -240 * mirror, 175.2 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, -240.2 * mirror, 175.2 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, -240.2 * mirror, 175.2 , 0 );

setScaleKey( spep_0 + 522 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 618 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_0 + 522 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 618 + OFFSET_X, 1, 0 * mirror );

setBlendColor( spep_0 + 558 + OFFSET_X, 1, 2, 0.04, 0.0, 1.0, 0.3);

-- 敵の動き3
setDisp( spep_0 + 720 + OFFSET_X, 1, 1);
setDisp( spep_0 + 732 + OFFSET_X, 1, 0);

changeAnimeBySide( spep_0 + 720 + OFFSET_X, 1, 4 );

setMoveKey( spep_0 + 720 + OFFSET_X, 1, -304.4 * mirror, 16.8 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, -304.4 * mirror, 16.8 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, -206.7 * mirror, -39.5 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, -206.7 * mirror, -39.5 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, -169.2 * mirror, -59.2 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, -169.2 * mirror, -59.2 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, -171.5 * mirror, -137.1 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, -171.5 * mirror, -137.1 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, -170.6 * mirror, -208.7 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, -170.6 * mirror, -208.7 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, -171.1 * mirror, -209.1 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, -171.1 * mirror, -209.1 , 0 );

setScaleKey( spep_0 + 720 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 0.75, 0.75 );

setRotateKey( spep_0 + 720 + OFFSET_X, 1, -10.8 * mirror );
setRotateKey( spep_0 + 721 + OFFSET_X, 1, -10.8 * mirror );
setRotateKey( spep_0 + 722 + OFFSET_X, 1, -11 * mirror );
setRotateKey( spep_0 + 732 + OFFSET_X, 1, -11 * mirror );

setBlendColor( spep_0 + 720 + OFFSET_X, 1, 2, 0.0, 0.52, 1.0, 0.15);
setBlendColor( spep_0 + 732 + OFFSET_X, 1, 3, 0, 0, 0, 0);

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );

--イナヅマ
SE002 = playSeVer2( spep_0 + 0, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );

--オーラ
SE003 = playSeVer2( spep_0 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 63 );
SE004 = playSeVer2( spep_0 + 38, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE004, 63 );
SE005 = playSeVer2( spep_0 + 62, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE005, 63 );
SE007 = playSeVer2( spep_0 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE007, 63 );
SE009 = playSeVer2( spep_0 + 110, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE009, 63 );
SE010 = playSeVer2( spep_0 + 134, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE010, 63 );
SE014 = playSeVer2( spep_0 + 158, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE014, 63 );
SE015 = playSeVer2( spep_0 + 182, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE015, 63 );
SE018 = playSeVer2( spep_0 + 206, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE018, 63 );
SE019 = playSeVer2( spep_0 + 230, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 230, SE019, 63 );

--顔アップ
SE006 = playSeVer2( spep_0 + 60, 1179, "", 0, 0, 0, -1);

--降りてくる
SE008 = playSeVer2( spep_0 + 85, 1116, "",spep_0 + 149, 0, 39, -1);

--気ダメ
SE012 = playSeVer2( spep_0 + 149, 1503, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 154, 1504, "", 0, 0, 0, -1);

--雷落ちる
SE016 = playSeVer2( spep_0 + 187, 1231, "",spep_0 + 257, 0, 16, -1);

--イナヅマ
SE017 = playSeVer2( spep_0 + 196, 1148, "",spep_0 + 249, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 196, SE017, 50 );

--オーラ
SE021 = playSeVer2( spep_0 + 329, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 329, SE021, 63 );
SE023 = playSeVer2( spep_0 + 353, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 353, SE023, 63 );
SE024 = playSeVer2( spep_0 + 377, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 377, SE024, 63 );
SE025 = playSeVer2( spep_0 + 401, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 401, SE025, 63 );
SE029 = playSeVer2( spep_0 + 425, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 425, SE029, 63 );
SE031 = playSeVer2( spep_0 + 449, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 449, SE031, 63 );
SE032 = playSeVer2( spep_0 + 473, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 473, SE032, 63 );
SE033 = playSeVer2( spep_0 + 497, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 497, SE033, 63 );
SE035 = playSeVer2( spep_0 + 521, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 521, SE035, 63 );
SE036 = playSeVer2( spep_0 + 545, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 545, SE036, 63 );
SE037 = playSeVer2( spep_0 + 569, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 569, SE037, 63 );
SE038 = playSeVer2( spep_0 + 593, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 593, SE038, 63 );
SE039 = playSeVer2( spep_0 + 617, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 617, SE039, 63 );
SE040 = playSeVer2( spep_0 + 641, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 641, SE040, 63 );

--構える
SE022 = playSeVer2( spep_0 + 347, 1233, "", 0, 0, 0, -1);

--かめはめ波溜め
SE026 = playSeVer2( spep_0 + 416, 1328, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 416, 1210, "",spep_0 + 684, 0, 25, -1);
SE028 = playSeVer2( spep_0 + 423, 1209, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 425, 1336, "",spep_0 + 691, 0, 32, -1);

--気が大きくなる
SE034 = playSeVer2( spep_0 + 515, 1017, "", 0, 0, 0, -1);

--かめはめ波発射
SE041 = playSeVer2( spep_0 + 655, 1284, "",spep_0 + 771, 0, 24, -1);
SE042 = playSeVer2( spep_0 + 655, 1285, "",spep_0 + 773, 0, 27, -1);
SE043 = playSeVer2( spep_0 + 655, 1213, "",spep_0 + 771, 0, 21, -1);
SE044 = playSeVer2( spep_0 + 655, 1512, "",spep_0 + 776, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 655, SE044, 68 );
SE045 = playSeVer2( spep_0 + 676, 1304, "", 0, 0, 0, -1);

--爆発
SE046 = playSeVer2( spep_0 + 736, 1159, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 748, 1067, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 486; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

stopAndCancelAllSe( SP_dodge - 12 );
stopAndCancelAllVoice( SP_dodge - 12 );
playSeNotStoppable( SP_dodge - 12, 1042);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

-- ** 敵キャラクター ** --
setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0); --回避後の敵の色戻す

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 742); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 864