--1031300:UR_桃白白_アクティブ必殺技：本気のどどん波
--sp_effect_a3_00118
--ut0094

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163805 --敵より前 ef_001
SP_01b = 163806 --敵より後ろ ef_001b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 400 - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 382 - 1);  -- スキップ先フレーム指定

            --どどんぱ発射
            SE009 = playSeVer2( spep_0 + 382, 1438, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 382, SE009, 232 );
            SE010 = playSeVer2( spep_0 + 382, 1145, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 382, SE010, 54 );
            SE011 = playSeVer2( spep_0 + 382, 1177, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 382, SE011, 58 );
            setTimeStretch( SE011, 1.24, 30, 4 );
            SE012 = playSeVer2( spep_0 + 382, 1249, "",spep_0 + 614, 0, 34, -1);
            setSeVolumeByWorkId( spep_0 + 382, SE012, 60 );
       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 敵より前
-------------------------------------------------

MAX_FRAME_0 = 790;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵より前 (ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 敵より後ろ (ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 570 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 654 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 570 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 586 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 592 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 570 + OFFSET_X, 1, 575.5, -50.6 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 575.5, -50.6 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 489.5, -43.7 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 489.5, -43.7 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 412.8, -47.6 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 412.8, -47.6 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 326.8, -40.6 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 326.8, -40.6 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 250.1, -44.5 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 250.1, -44.5 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 164.1, -37.6 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 164.1, -37.6 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 87.4, -41.4 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 87.4, -41.4 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 1.4, -34.5 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 1.4, -34.5 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 4.9, 10 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 4.9, 10 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 0.3, 15.4 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 0.3, 15.4 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 20.7, -1.8 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 20.7, -1.8 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 13.9, -33.5 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 13.9, -33.5 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, -21.7, 14.3 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, -21.7, 14.3 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 22.1, 48.9 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, 22.1, 48.9 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 20.2, -36.6 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 20.2, -36.6 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, -12.7, 18.7 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, -12.7, 18.7 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 21.4, 53.4 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 21.4, 53.4 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 17.1, -41.8 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 17.1, -41.8 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, -3.8, 23.1 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, -3.8, 23.1 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 30.4, 21.6 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 30.4, 21.6 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 28.7, 28.4 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 28.7, 28.4 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 36.4, 24.5 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 36.4, 24.5 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 34.7, 31.4 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 34.7, 31.4 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 42.4, 27.5 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, 42.4, 27.5 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 40.7, 34.3 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 40.7, 34.3 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 46.1, 34.5 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, 46.1, 34.5 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 46.7, 37.3 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 46.7, 37.3 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 52.1, 37.4 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 52.1, 37.4 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 52.6, 40.2 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 52.6, 40.2 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 58.1, 40.4 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 58.1, 40.4 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 58.6, 43.1 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 58.6, 43.1 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 64, 43.3 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 64, 43.3 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 64.6, 46.1 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, 64.6, 46.1 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 70, 46.3 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, 70, 46.3 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 70.6, 49 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 70.6, 49 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 76, 49.2 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, 76, 49.2 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 76.5, 52 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, 76.5, 52 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 82, 52.1 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, 82, 52.1 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 82.5, 54.9 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, 82.5, 54.9 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 85.5, 56.4 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, 85.5, 56.4 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, 88.5, 57.8 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, 88.5, 57.8 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, 91.5, 59.3 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, 91.5, 59.3 , 0 );

setScaleKey( spep_0 + 570 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 577 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 578 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 581 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 583 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 584 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 586 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 654 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_0 + 570 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 585 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 586 + OFFSET_X, 1, -48 );
setRotateKey( spep_0 + 587 + OFFSET_X, 1, -48 );
setRotateKey( spep_0 + 588 + OFFSET_X, 1, -44.5 );
setRotateKey( spep_0 + 589 + OFFSET_X, 1, -44.5 );
setRotateKey( spep_0 + 590 + OFFSET_X, 1, -41 );
setRotateKey( spep_0 + 591 + OFFSET_X, 1, -41 );
setRotateKey( spep_0 + 592 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 593 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 594 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_0 + 595 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_0 + 596 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 597 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 598 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 601 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 602 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_0 + 603 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_0 + 604 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 605 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 606 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_0 + 607 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_0 + 608 + OFFSET_X, 1, 18.9 );
setRotateKey( spep_0 + 609 + OFFSET_X, 1, 18.9 );
setRotateKey( spep_0 + 610 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_0 + 611 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_0 + 612 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_0 + 613 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_0 + 614 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_0 + 615 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_0 + 616 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 617 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 618 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 619 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 620 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_0 + 621 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_0 + 622 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_0 + 623 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_0 + 624 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_0 + 625 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_0 + 626 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 627 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 628 + OFFSET_X, 1, 21.2 );
setRotateKey( spep_0 + 629 + OFFSET_X, 1, 21.2 );
setRotateKey( spep_0 + 630 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_0 + 631 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_0 + 632 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_0 + 633 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_0 + 634 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_0 + 635 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_0 + 637 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_0 + 638 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_0 + 639 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_0 + 640 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_0 + 641 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_0 + 642 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_0 + 643 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_0 + 644 + OFFSET_X, 1, 23.1 );
setRotateKey( spep_0 + 645 + OFFSET_X, 1, 23.1 );
setRotateKey( spep_0 + 646 + OFFSET_X, 1, 23.3 );
setRotateKey( spep_0 + 647 + OFFSET_X, 1, 23.3 );
setRotateKey( spep_0 + 648 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_0 + 649 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_0 + 650 + OFFSET_X, 1, 23.8 );
setRotateKey( spep_0 + 651 + OFFSET_X, 1, 23.8 );
setRotateKey( spep_0 + 652 + OFFSET_X, 1, 24 );
setRotateKey( spep_0 + 654 + OFFSET_X, 1, 24 );

-- ** 音 ** --
--セリフカットイン
SE001 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 242, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--構える
SE003 = playSeVer2( spep_0 + 20, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 61 );
SE004 = playSeVer2( spep_0 + 28, 1300, "", 0, 0, 0, -1);

--力む
SE005 = playSeVer2( spep_0 + 60, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE005, 50 );

--強調
SE006 = playSeVer2( spep_0 + 176, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE006, 61 );
setPitch( spep_0 + 176, SE006, 200 );
setTimeStretch( SE006, 1.13, 30, 4 );

--集中線
SE007 = playSeVer2( spep_0 + 292, 1237, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE007, 82 );
SE008 = playSeVer2( spep_0 + 292, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE008, 78 );

--どどんぱ発射
SE009 = playSeVer2( spep_0 + 372, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 372, SE009, 232 );
SE010 = playSeVer2( spep_0 + 372, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 372, SE010, 54 );
SE011 = playSeVer2( spep_0 + 372, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 372, SE011, 58 );
setTimeStretch( SE011, 1.24, 30, 4 );
SE012 = playSeVer2( spep_0 + 372, 1249, "",spep_0 + 614, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 372, SE012, 60 );
SE014 = playSeVer2( spep_0 + 382, 1402, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「こんどこそ本気の本気だ!!!」
playVoice( spep_0 + 2, 1004 );
setVoiceVolume( spep_0 + 2, 1004, 122 );
--「死ねっ!!!必殺どどん波!!!!!」
playVoice( spep_0 + 186, 1005 );
setVoiceVolume( spep_0 + 186, 1005, 122 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 400; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE014, 0);

pauseAll( SP_dodge, 67);
setVoiceVolume( SP_dodge - 12, SE_8_890, 0 );

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
--どどんぱ飛んでいく
SE013 = playSeVer2( spep_0 + 430, 1215, "",spep_0 + 616, 36, 28, -1);
setSeVolumeByWorkId( spep_0 + 430, SE013, 79 );
setStartTimeMs( SE013,  900 );
SE015 = playSeVer2( spep_0 + 492, 1021, "", 0, 0, 0, -1);

--爆発
SE016 = playSeVer2( spep_0 + 578, 1023, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 590, 1024, "", 0, 0, 0, -1);

--環境音
SE018 = playSeVer2( spep_0 + 606, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 606, SE018, 25 );

--画面遷移
SE019 = playSeVer2( spep_0 + 640, 8, "", 0, 0, 0, -1);

--終わり
-- hideKoScreen();
dealDamage( spep_0 + 588);
endPhase( spep_0 + MAX_FRAME_0); --790F

else end