--1033550:UR_ベジータ+ナッパ_アクティブ必殺：大猿大進撃
--sp_effect_a3_00126
--ut0124

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164461; --大猿化〜口からビーム ef_001

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

    if (_IS_SKIP_ == 1) then

        spep_0 = 0;

       if(_IS_DODGE_ == 1) then

           skipFrame(0, spep_0 + 560 - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 560 - 13, SP_01, spep_0 + 560 - 13 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

       else

           skipFrame(0, spep_0 + 688 );  -- スキップ先フレーム指定
           setupMovie(spep_0 + 688, SP_01, spep_0 + 688 -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

           -- ** 敵キャラクター ** --
           --敵の動き
           setMoveKey( spep_0 + 688, 1, 0, -5000, 0 );  -- スキップ時に敵が映り込むため記載

           -- ** 音 ** --
           --気弾発射
           SE030 = playSeVer2( spep_0 + 688+1, 1109, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 688+1, SE030, 146 );
           SE031 = playSeVer2( spep_0 + 692+1, 1145, "", 0, 0, 0, -1);
           SE032 = playSeVer2( spep_0 + 692+1, 1177, "",spep_0 + 844, 0, 22, -1);
           SE033 = playSeVer2( spep_0 + 692+1, 1193, "",spep_0 + 846, 0, 64, -1);

       end

    else 

      setupMovie(0, SP_01, 0, 1);  -- スキップしない時の通常再生時用のsetupMovie関数

    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;
 
 
-------------------------------------------------
-- 大猿化〜口からビーム
-------------------------------------------------

MAX_FRAME_0 = 970;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 大猿化〜口からビーム(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 542 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 606 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 542 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 590 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 542 + OFFSET_X, 1, 547.8, -392 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 547.8, -392 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 546.4, -391.1 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 546.4, -391.1 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 544.7, -390 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 544.7, -390 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 542.6, -388.7 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 542.6, -388.7 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 540, -387 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 540, -387 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 536.8, -385 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 536.8, -385 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 532.9, -382.5 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 532.9, -382.5 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 528.1, -379.5 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 528.1, -379.5 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 522.2, -375.7 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 522.2, -375.7 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 514.8, -371 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 514.8, -371 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 505.5, -365.1 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 505.5, -365.1 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 493.6, -357.5 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 493.6, -357.5 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 478, -347.6 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 478, -347.6 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 456.9, -334.3 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 456.9, -334.3 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 427.5, -315.5 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 427.5, -315.5 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 384, -287.8 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 384, -287.8 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 363, -276.9 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 363, -276.9 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 333.1, -261.5 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 333.1, -261.5 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 295.8, -242.2 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 295.8, -242.2 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 256.9, -222.1 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 256.9, -222.1 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 220.5, -203.2 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 220.5, -203.2 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 187.2, -186 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 187.2, -186 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 156.8, -170.4 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 156.8, -170.4 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 236.6, 46.9 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 236.6, 46.9 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 236.4, 41.1 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 236.4, 41.1 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 268.8, 57.1 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, 268.8, 57.1 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 444.6, 107.7 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, 444.6, 107.7 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 602.2, 130.4 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 602.2, 130.4 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 767.8, 191.9 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 767.8, 191.9 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 947.6, 236.6 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 947.6, 236.6 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 1116.7, 278.8 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 1116.7, 278.8 , 0 );

setScaleKey( spep_0 + 542 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 593 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 594 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 595 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 597 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 598 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 5.83, 5.83 );
setScaleKey( spep_0 + 601 + OFFSET_X, 1, 5.83, 5.83 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 7.27, 7.27 );
setScaleKey( spep_0 + 603 + OFFSET_X, 1, 7.27, 7.27 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 8.72, 8.72 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 8.72, 8.72 );

setRotateKey( spep_0 + 542 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 589 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 590 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_0 + 593 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_0 + 594 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_0 + 595 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_0 + 596 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_0 + 597 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_0 + 598 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_0 + 601 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_0 + 602 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 603 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 604 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 606 + OFFSET_X, 1, 1 );

--敵の動き2
setDisp( spep_0 + 724 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 782 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 724 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 754 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 724 + OFFSET_X, 1, 520.1, 27.1 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 520.1, 27.1 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 498.9, 27.1 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 498.9, 27.1 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 477.7, 27.1 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, 477.7, 27.1 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 456.5, 27.1 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 456.5, 27.1 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 435.2, 27.1 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, 435.2, 27.1 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, 413.8, 27.1 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, 413.8, 27.1 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, 392.4, 27.2 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 392.4, 27.2 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 371, 27.2 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 371, 27.2 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 349.5, 27.2 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 349.5, 27.2 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 328, 27.2 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 328, 27.2 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 306.4, 27.2 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 306.4, 27.2 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 295.3, 27.2 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 295.3, 27.2 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 284.1, 27.2 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 284.1, 27.2 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 272.9, 27.1 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 272.9, 27.1 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 261.6, 27.1 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 261.6, 27.1 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 26.6, -19 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 26.6, -19 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 26.7, -19 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, 26.7, -19 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, 26.6, -18.9 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, 26.6, -18.9 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, 26.5, -18.9 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, 26.5, -18.9 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, 26.4, -18.9 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, 26.4, -18.9 , 0 );

setScaleKey( spep_0 + 724 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 753 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 754 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 755 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 756 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 757 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 758 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 759 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 760 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 761 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 762 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 763 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 764 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 765 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 766 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 767 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 768 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 769 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 770 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 771 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 772 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 773 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 774 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 775 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 776 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 777 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 778 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 779 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 780 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 782 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_0 + 724 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_0 + 753 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_0 + 754 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_0 + 755 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_0 + 756 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_0 + 757 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_0 + 758 + OFFSET_X, 1, -30.6 );
setRotateKey( spep_0 + 759 + OFFSET_X, 1, -30.6 );
setRotateKey( spep_0 + 760 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 761 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 762 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_0 + 763 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_0 + 764 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_0 + 765 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_0 + 766 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_0 + 767 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_0 + 768 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_0 + 769 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_0 + 770 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_0 + 771 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_0 + 772 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_0 + 773 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_0 + 774 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 775 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 776 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_0 + 777 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_0 + 778 + OFFSET_X, 1, -22.7 );
setRotateKey( spep_0 + 779 + OFFSET_X, 1, -22.7 );
setRotateKey( spep_0 + 780 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_0 + 782 + OFFSET_X, 1, -21.8 );

setBlendColor( spep_0 + 754 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0 );
setBlendColor( spep_0 + 756 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.05 );
setBlendColor( spep_0 + 758 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.1 );
setBlendColor( spep_0 + 760 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.15 );
setBlendColor( spep_0 + 762 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.2 );
setBlendColor( spep_0 + 764 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.25 );
setBlendColor( spep_0 + 766 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.3 );
setBlendColor( spep_0 + 768 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.39 );
setBlendColor( spep_0 + 770 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.48 );
setBlendColor( spep_0 + 772 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.57 );
setBlendColor( spep_0 + 774 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.67 );
setBlendColor( spep_0 + 776 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.76 );
setBlendColor( spep_0 + 778 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.85 );
setBlendColor( spep_0 + 780 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.95 );
setBlendColor( spep_0 + 782 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--敵の動き3
setDisp( spep_0 + 786 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 830 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 786 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 786 + OFFSET_X, 1, 23.4, 24.9 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, 23.4, 24.9 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, 40.2, 34.4 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, 40.2, 34.4 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, 23.4, 25.8 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, 23.4, 25.8 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, 31.6, 18.3 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, 31.6, 18.3 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, 23.4, 27.4 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, 23.4, 27.4 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, 20.1, 35.1 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, 20.1, 35.1 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, 30.2, 25.2 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, 30.2, 25.2 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, 22.5, 33.4 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, 22.5, 33.4 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 27.8, 29.3 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 27.8, 29.3 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 22.5, 35.9 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, 22.5, 35.9 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, 27.8, 32.1 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, 27.8, 32.1 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, 22.5, 38.9 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, 22.5, 38.9 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, 27.8, 35.3 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, 27.8, 35.3 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, 22.5, 42.5 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, 22.5, 42.5 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, 27.8, 39.4 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, 27.8, 39.4 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, 22.5, 47.4 , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, 22.5, 47.4 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, 27.8, 46.6 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, 27.8, 46.6 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, 22.5, 60.3 , 0 );
setMoveKey( spep_0 + 821 + OFFSET_X, 1, 22.5, 60.3 , 0 );
setMoveKey( spep_0 + 822 + OFFSET_X, 1, 27.7, 73.9 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, 27.7, 73.9 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, 22.5, 114.8 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, 22.5, 114.8 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, 27.7, 114.3 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, 27.7, 114.3 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, 22.2, 120.3 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, 22.2, 120.3 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, 31, -21.4 , 0 );

setScaleKey( spep_0 + 786 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 787 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 788 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 789 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 790 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 791 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 792 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 793 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 794 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 795 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 796 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 797 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 798 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 799 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 800 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 801 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 802 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 803 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 804 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 805 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 806 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 807 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 808 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 809 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 810 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 811 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 812 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 813 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 814 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 815 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 816 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 817 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 818 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 819 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 820 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 821 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 822 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 823 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 824 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 825 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 826 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 827 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 828 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 829 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 830 + OFFSET_X, 1, 1.02, 1.02 );

setRotateKey( spep_0 + 786 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 817 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 818 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_0 + 823 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_0 + 824 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_0 + 829 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_0 + 830 + OFFSET_X, 1, -31.8 );

setBlendColor( spep_0 + 786 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.5 );
setBlendColor( spep_0 + 816 + OFFSET_X, 1, 3, 1, 1, 1, 0.55 );
setBlendColor( spep_0 + 818 + OFFSET_X, 1, 3, 1, 1, 1, 0.61 );
setBlendColor( spep_0 + 820 + OFFSET_X, 1, 3, 1, 1, 1, 0.67 );
setBlendColor( spep_0 + 822 + OFFSET_X, 1, 3, 1, 1, 1, 0.72 );
setBlendColor( spep_0 + 824 + OFFSET_X, 1, 3, 1, 1, 1, 0.86 );
setBlendColor( spep_0 + 826 + OFFSET_X, 1, 3, 1, 1, 1, 0.95 );
setBlendColor( spep_0 + 830 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--セリフカットイン
SE003 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + -8, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + -8, SE003, 63 );

--気弾溜め
SE004 = playSeVer2( spep_0 + 108, 1511, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE004, 50 );
setPitch( spep_0 + 108, SE004, 900 );
setTimeStretch( SE004, 1.6, 30, 4 );
SE005 = playSeVer2( spep_0 + 116, 1200, "",spep_0 + 278, 0, 48, -1);
SE006 = playSeVer2( spep_0 + 116, 1239, "",spep_0 + 280, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 116, SE006, 188 );
setPitch( spep_0 + 116, SE006, 100 );
setTimeStretch( SE006, 1.07, 30, 4 );
SE002 = playSeVer2( spep_0 + 120, 1400, "",spep_0 + 290, 18, 40, -1);
setStartTimeMs( SE002,  2167 );

--振りかぶる
SE007 = playSeVer2( spep_0 + 194, 1116, "",spep_0 + 240, 0, 22, -1);

--気弾投げる
SE008 = playSeVer2( spep_0 + 252, 1133, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 252, 1027, "", 0, 0, 0, -1);

--爆発予兆
SE010 = playSeVer2( spep_0 + 286, 1442, "",spep_0 + 402, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 286, SE010, 295 );

--拳握る
SE011 = playSeVer2( spep_0 + 332, 1189, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 342, 1006, "", 0, 0, 0, -1);

--爆発
SE013 = playSeVer2( spep_0 + 384, 1137, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE013, 63 );
SE014 = playSeVer2( spep_0 + 384, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE014, 40 );
SE015 = playSeVer2( spep_0 + 384, 1237, "", 0, 0, 0, -1);

--大猿SE
SE016 = playSeVer2( spep_0 + 430, 1125, "",spep_0 + 614, 0, 80, -1);

--画面遷移
SE017 = playSeVer2( spep_0 + 436, 8, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 472, 1072, "", 0, 0, 0, -1);

--飛び込んでいく
SE019 = playSeVer2( spep_0 + 538, 1033, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 542, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 542, SE020, 120 );
SE021 = playSeVer2( spep_0 + 542, 1167, "",spep_0 + 598, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 542, SE021, 43 );
setPitch( spep_0 + 542, SE021, -400 );
setTimeStretch( SE021, 0.73, 30, 4 );

-- ** ボイス ** --
--「皆殺しにしてやる……！」
playVoice( spep_0 + 0, 1178 );
setVoiceVolume( spep_0 + 0, 1178, 118 );

--「はじけてまざれっ！！！！」
playVoice( spep_0 + 262, 1179 );
setVoiceVolume( spep_0 + 262, 1179, 118 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 560; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
pauseAll( SP_dodge, 67);

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
--殴り飛ばす
SE022 = playSeVer2( spep_0 + 584, 1190, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 584, 1187, "", 0, 0, 0, -1);

--飛び込んでくる
SE025 = playSeVer2( spep_0 + 622, 1019, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 622, 1167, "",spep_0 + 678, 0, 14, -1);
SE027 = playSeVer2( spep_0 + 622, 1117, "",spep_0 + 696, 0, 42, -1);

--口気弾溜め
SE024 = playSeVer2( spep_0 + 642, 1144, "",spep_0 + 696, 6, 14, -1);
setStartTimeMs( SE024,  467 );
SE028 = playSeVer2( spep_0 + 642, 1157, "",spep_0 + 696, 0, 14, -1);
SE029 = playSeVer2( spep_0 + 642, 1130, "", 0, 0, 0, -1);

--気弾発射
SE030 = playSeVer2( spep_0 + 682, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 682, SE030, 146 );
SE031 = playSeVer2( spep_0 + 686, 1145, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 686, 1177, "",spep_0 + 844, 0, 22, -1);
SE033 = playSeVer2( spep_0 + 686, 1193, "",spep_0 + 846, 0, 64, -1);

--敵ヒット
SE034 = playSeVer2( spep_0 + 772, 1024, "", 0, 0, 0, -1);

--爆発
SE035 = playSeVer2( spep_0 + 810, 1128, "", 0, 0, 0, -1);
setPitch( spep_0 + 810, SE035, -1200 );
setTimeStretch( SE035, 0.2, 30, 4 );
SE036 = playSeVer2( spep_0 + 830, 1159, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 834, 1188, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 838, 1067, "", 0, 0, 0, -1);

--終わり
-- hideKoScreen();
dealDamage( spep_0 + 830);
endPhase( spep_0 + MAX_FRAME_0); -- 970f

else end