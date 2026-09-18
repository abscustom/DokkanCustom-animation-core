-- 9027630: UR_超サイヤ人3孫悟空_フィニッシュ：龍拳
-- battle_301275
-- sp2714

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01  = 3212;  -- 必殺カウンター ef_001
SP_01b = 3213;  -- 必殺カウンター ef_002

-- 敵側
SP_01r  = 3216;  -- 必殺カウンター ef_001r

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

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

-- BGMの変更 (ゼロフレーム目から0.5秒かけて次のBGMに切り替える
--changeBgm( 0 , 0.5 );

--はじめの準備
spep_0 = 0;

setupMovie(0, SP_01, 0, 1);
------------------------------------------------------
-- 必殺カウンター
------------------------------------------------------
MAX_FRAME_0 = 988;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_f, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0 );
setEffAlphaKey( spep_0 + 0, base_f, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 514 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 549 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 514 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 514 + OFFSET_X, 1, 8.7, 1.9 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 8.7, 1.9 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 60.7, -1 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 60.7, -1 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, -73.8, -11.2 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, -73.8, -11.2 , 0 );

setScaleKey( spep_0 + 514 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 1.06, 1.06 );

setRotateKey( spep_0 + 514 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_0 + 549 + OFFSET_X, 1, -8.4 );

-- 敵の動き2
setDisp( spep_0 + 596 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 655 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 596 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 628 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 596 + OFFSET_X, 1, -36.3, 491.8 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, -36.3, 491.8 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, -3.5, 432.6 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, -3.5, 432.6 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, -51.1, 396.4 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, -51.1, 396.4 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, -18.9, 326.9 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, -18.9, 326.9 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, -19.1, 320.3 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, -19.1, 320.3 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, -15.5, 284.6 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, -15.5, 284.6 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, -12.2, 251.6 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, -12.2, 251.6 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, -9.1, 221.5 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, -9.1, 221.5 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, -6.4, 194.2 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, -6.4, 194.2 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, -3.9, 169.8 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, -3.9, 169.8 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, -1.8, 148.2 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, -1.8, 148.2 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 16.2, 157.5 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 16.2, 157.5 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, -14.3, 49.5 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, -14.3, 49.5 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 27, 96.4 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 27, 96.4 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 20.1, 118.2 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 20.1, 118.2 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, -11.2, 18.7 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, -11.2, 18.7 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 28.1, 25.2 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 28.1, 25.2 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 4.1, 29.2 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 4.1, 29.2 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 4.1, 27.3 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, 4.1, 27.3 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 4.1, 25.3 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 4.1, 25.3 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 4.1, 23.4 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, 4.1, 23.4 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 4.1, 21.4 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, 4.1, 21.4 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, 4.1, 19.5 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, 4.1, 19.5 , 0 );

setScaleKey( spep_0 + 596 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 655 + OFFSET_X, 1, 1.42, 1.42 );

setRotateKey( spep_0 + 596 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 597 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 598 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_0 + 601 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_0 + 602 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_0 + 603 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_0 + 604 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 605 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 606 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 607 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 608 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_0 + 609 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_0 + 610 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_0 + 611 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_0 + 612 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_0 + 613 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_0 + 614 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_0 + 615 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_0 + 616 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_0 + 617 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_0 + 618 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_0 + 619 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_0 + 620 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_0 + 621 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_0 + 622 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_0 + 623 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_0 + 624 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_0 + 627 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_0 + 628 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_0 + 631 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_0 + 632 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_0 + 635 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_0 + 639 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_0 + 640 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_0 + 643 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_0 + 644 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_0 + 647 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_0 + 648 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_0 + 652 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_0 + 653 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_0 + 655 + OFFSET_X, 1, -61.2 );

-- 敵の動き3
setDisp( spep_0 + 674 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 756 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 674 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 674 + OFFSET_X, 1, -4.5, -40.7 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, -4.5, -40.7 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, -4.6, -41 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, -4.6, -41 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, 1.4, -15.2 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, 1.4, -15.2 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, -4.6, -41.5 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, -4.6, -41.5 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, -26.6, -39.7 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, -26.6, -39.7 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, -4.7, -41.9 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, -4.7, -41.9 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, 11.3, -56.2 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, 11.3, -56.2 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, -4.7, -28.4 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, -4.7, -28.4 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, -4.7, -42.7 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, -4.7, -42.7 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, -14.8, -48.9 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, -14.8, -48.9 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, -4.8, -29.1 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, -4.8, -29.1 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, -4.8, -43.4 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, -4.8, -43.4 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, -16.9, -45.6 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, -16.9, -45.6 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 9.1, -43.9 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, 9.1, -43.9 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, -4.9, -44.1 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, -4.9, -44.1 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, -4.9, -62.4 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, -4.9, -62.4 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, -3, -30.6 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, -3, -30.6 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, -5, -44.8 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, -5, -44.8 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, -17, -49.1 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, -17, -49.1 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, -5, -45.3 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, -5, -45.3 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 18.9, -43.6 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 18.9, -43.6 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, -5.1, -45.8 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, -5.1, -45.8 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, -15.1, -30.1 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, -15.1, -30.1 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, -5.2, -46.3 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, -5.2, -46.3 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 6.8, -70.5 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 6.8, -70.5 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, -5.2, -46.8 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, -5.2, -46.8 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, -5.2, -47 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, -5.2, -47 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, -5.3, -47.3 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, -5.3, -47.3 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, -5.3, -47.5 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, -5.3, -47.5 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, -5.3, -47.8 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, -5.3, -47.8 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, -5.3, -48 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, -5.3, -48 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, -5.4, -48.2 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, -5.4, -48.2 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, -5.4, -48.5 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, -5.4, -48.5 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, -5.4, -48.7 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, -5.4, -48.7 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, -5.5, -49 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, -5.5, -49 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, -5.5, -49.2 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, -5.5, -49.2 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, -5.5, -49.5 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, -5.5, -49.5 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, -5.5, -49.7 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, -5.5, -49.7 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, -5.6, -49.9 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, -5.6, -49.9 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, -5.6, -50.2 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, -5.6, -50.2 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, -5.6, -50.4 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, -5.6, -50.4 , 0 );

setScaleKey( spep_0 + 674 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 677 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 678 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 679 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 680 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 683 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 684 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 687 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 688 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 689 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 690 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 693 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 694 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 697 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 698 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 699 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 700 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 703 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 704 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 707 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 708 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 709 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 710 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 713 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 714 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 717 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 733 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 734 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 737 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 738 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 741 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 742 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 743 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 744 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 747 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 748 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 751 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 752 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 753 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 754 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 756 + OFFSET_X, 1, 1.24, 1.24 );

setRotateKey( spep_0 + 674 + OFFSET_X, 1, -53.4 );
setRotateKey( spep_0 + 756 + OFFSET_X, 1, -53.4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 35 );
SE002 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 18 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 22, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE003, 63 );

--構える
SE004 = playSeVer2( spep_0 + 110, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE004, 71 );
SE005 = playSeVer2( spep_0 + 114, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE005, 68 );

--向かっていく
SE006 = playSeVer2( spep_0 + 146, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 146, 1117, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 164, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE008, 75 );
setPitch( spep_0 + 164, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );

--画面遷移
SE009 = playSeVer2( spep_0 + 220, 1232, "", 0, 0, 0, -1);

--パンチアップ
SE010 = playSeVer2( spep_0 + 290, 1116, "",spep_0 + 330, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 290, SE010, 80 );
SE011 = playSeVer2( spep_0 + 296, 1233, "", 0, 0, 0, -1);

--龍拳ポーズ
SE012 = playSeVer2( spep_0 + 332, 1173, "",spep_0 + 402, 0, 30, -1);
SE013 = playSeVer2( spep_0 + 332, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 332, SE013, 68 );
SE014 = playSeVer2( spep_0 + 332, 1356, "",spep_0 + 528, 0, 102, -1);
setSeVolumeByWorkId( spep_0 + 332, SE014, 69 );
setPitch( spep_0 + 332, SE014, 500 );
setTimeStretch( SE014, 0.89, 30, 4 );

-- ** ボイス ** --
--「オレがやらなきゃ誰がやる！」
--playVoice( spep_0 + 0, 741 );
--setVoiceVolume( spep_0 + 0, 741, 119 );

--「龍拳！」
--SE_7_742 = playVoice( spep_0 + 212, 742 );
--setVoiceVolume( spep_0 + 212, 742, 119 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 346 ; --エンドフェイズのフレーム数を置き換える
  
  pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE001, 0);
  stopSe( SP_dodge - 12, SE002, 0);
  stopSe( SP_dodge - 12, SE008, 0);
  stopSe( SP_dodge - 12, SE010, 0);
  stopSe( SP_dodge - 12, SE011, 0);
  stopSe( SP_dodge - 12, SE012, 0);
  stopSe( SP_dodge - 12, SE013, 0);
  stopSe( SP_dodge - 12, SE014, 0);
  setVoiceVolume( SP_dodge - 12, SE_7_742, 0 );

  pauseAll( SP_dodge, 67);   
  
  speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
  setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
  
  kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
  
  entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
  endPhase(SP_dodge+10);
  
do return end
else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--爆発
SE015 = playSeVer2( spep_0 + 376, 1069, "", 0, 2, 0, -1);
setStartTimeMs( SE015,  233 );
SE016 = playSeVer2( spep_0 + 372, 1188, "", 0, 0, 0, -1);

--炎の渦
SE017 = playSeVer2( spep_0 + 392, 1175, "",spep_0 + 580, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 392, SE017, 45 );
SE018 = playSeVer2( spep_0 + 398, 1226, "",spep_0 + 572, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 398, SE018, 56 );
SE019 = playSeVer2( spep_0 + 398, 1128, "",spep_0 + 574, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 398, SE019, 56 );
setPitch( spep_0 + 398, SE019, -1200 );
setTimeStretch( SE019, 0.2, 30, 4 );

--咆哮
SE020 = playSeVer2( spep_0 + 488, 1066, "",spep_0 + 598, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 488, SE020, 129 );

--龍突き抜ける
SE021 = playSeVer2( spep_0 + 540, 1120, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 540, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 540, SE022, 68 );
SE023 = playSeVer2( spep_0 + 550, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 550, SE023, 81 );

--地面から突き出す
SE024 = playSeVer2( spep_0 + 594, 1044, "",spep_0 + 712, 0, 24, -1);
SE025 = playSeVer2( spep_0 + 600, 1258, "",spep_0 + 746, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 600, SE025, 74 );
SE026 = playSeVer2( spep_0 + 612, 1024, "",spep_0 + 746, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 612, SE026, 77 );

--しめつける
SE027 = playSeVer2( spep_0 + 668, 1429, "",spep_0 + 798, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 668, SE027, 120 );
SE028 = playSeVer2( spep_0 + 684, 1226, "",spep_0 + 844, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 684, SE028, 76 );
SE029 = playSeVer2( spep_0 + 684, 1043, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 684, 1320, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 684, SE030, 38 );
setPitch( spep_0 + 684, SE030, 500 );
setTimeStretch( SE030, 1.33, 30, 4 );


--爆発
SE033 = playSeVer2( spep_0 + 752, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 752, SE033, 42 );
SE034 = playSeVer2( spep_0 + 752, 1159, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 752, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 752, SE035, 82 );

--画面遷移
SE038 = playSeVer2( spep_0 + 826, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 826, SE038, 58 );

--最後環境音
SE037 = playSeVer2( spep_0 + 818, 1263, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 826, 1288, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_0 + 826, SE036, 67 );
setStartTimeMs( SE036,  600 );
SE032 = playSeVer2( spep_0 + 828, 1168, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_0 + 828, SE032, 42 );
setStartTimeMs( SE032,  1733 );
SE031 = playSeVer2( spep_0 + 830, 1288, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_0 + 830, SE031, 67 );
setStartTimeMs( SE031,  2400 );


-- ** ダメージ表示 ** --
dealDamage( spep_0 + 854 );
endPhase( spep_0 + MAX_FRAME_0 -4); -- 988

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

-- BGMの変更 (ゼロフレーム目から0.5秒かけて次のBGMに切り替える
--changeBgm( 0 , 0.5 );

--はじめの準備
spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
-- 必殺カウンター
------------------------------------------------------
MAX_FRAME_0 = 988;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_f, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0 );
setEffAlphaKey( spep_0 + 0, base_f, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 514 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 549 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 514 + OFFSET_X, 1, 4 );

setMoveKey( spep_0 + 514 + OFFSET_X, 1, -8.7, 1.9 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, -8.7, 1.9 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, -60.7, -1 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, -60.7, -1 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 73.8, -11.2 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 73.8, -11.2 , 0 );

setScaleKey( spep_0 + 514 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 1.06, 1.06 );

setRotateKey( spep_0 + 514 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_0 + 549 + OFFSET_X, 1, 8.4 );

-- 敵の動き2
setDisp( spep_0 + 596 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 655 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 596 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 628 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 596 + OFFSET_X, 1, 36.3, 491.8 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, 36.3, 491.8 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 3.5, 432.6 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 3.5, 432.6 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 51.1, 396.4 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 51.1, 396.4 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 18.9, 326.9 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 18.9, 326.9 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 19.1, 320.3 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 19.1, 320.3 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 15.5, 284.6 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 15.5, 284.6 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 12.2, 251.6 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 12.2, 251.6 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 9.1, 221.5 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 9.1, 221.5 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 6.4, 194.2 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 6.4, 194.2 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 3.9, 169.8 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 3.9, 169.8 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 1.8, 148.2 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, 1.8, 148.2 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, -16.2, 157.5 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, -16.2, 157.5 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 14.3, 49.5 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, 14.3, 49.5 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, -27, 96.4 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, -27, 96.4 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, -20.1, 118.2 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, -20.1, 118.2 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 11.2, 18.7 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 11.2, 18.7 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, -28.1, 25.2 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, -28.1, 25.2 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, -4.1, 29.2 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, -4.1, 29.2 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, -4.1, 27.3 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, -4.1, 27.3 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, -4.1, 25.3 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, -4.1, 25.3 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, -4.1, 23.4 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, -4.1, 23.4 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, -4.1, 21.4 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, -4.1, 21.4 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, -4.1, 19.5 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, -4.1, 19.5 , 0 );

setScaleKey( spep_0 + 596 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 655 + OFFSET_X, 1, 1.42, 1.42 );

setRotateKey( spep_0 + 596 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 597 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 598 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_0 + 601 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_0 + 602 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_0 + 603 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_0 + 604 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 605 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 606 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 607 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 608 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_0 + 609 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_0 + 610 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_0 + 611 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_0 + 612 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_0 + 613 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_0 + 614 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_0 + 615 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_0 + 616 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_0 + 617 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_0 + 618 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_0 + 619 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_0 + 620 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_0 + 621 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_0 + 622 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_0 + 623 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_0 + 624 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_0 + 627 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_0 + 628 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_0 + 631 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_0 + 632 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_0 + 635 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_0 + 639 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_0 + 640 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_0 + 643 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_0 + 644 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_0 + 647 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_0 + 648 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_0 + 652 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_0 + 653 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_0 + 655 + OFFSET_X, 1, 61.2 );

-- 敵の動き3
setDisp( spep_0 + 674 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 756 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 674 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 674 + OFFSET_X, 1, 4.5, -40.7 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, 4.5, -40.7 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, 4.6, -41 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, 4.6, -41 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, -1.4, -15.2 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, -1.4, -15.2 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, 4.6, -41.5 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, 4.6, -41.5 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, 26.6, -39.7 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, 26.6, -39.7 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, 4.7, -41.9 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, 4.7, -41.9 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, -11.3, -56.2 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, -11.3, -56.2 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, 4.7, -28.4 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, 4.7, -28.4 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 4.7, -42.7 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, 4.7, -42.7 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, 14.8, -48.9 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, 14.8, -48.9 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, 4.8, -29.1 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, 4.8, -29.1 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, 4.8, -43.4 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, 4.8, -43.4 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, 16.9, -45.6 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, 16.9, -45.6 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, -9.1, -43.9 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, -9.1, -43.9 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, 4.9, -44.1 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, 4.9, -44.1 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, 4.9, -62.4 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, 4.9, -62.4 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, 3, -30.6 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, 3, -30.6 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 5, -44.8 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, 5, -44.8 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 17, -49.1 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, 17, -49.1 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 5, -45.3 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 5, -45.3 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, -18.9, -43.6 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, -18.9, -43.6 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 5.1, -45.8 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, 5.1, -45.8 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 15.1, -30.1 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, 15.1, -30.1 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 5.2, -46.3 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 5.2, -46.3 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, -6.8, -70.5 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, -6.8, -70.5 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 5.2, -46.8 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 5.2, -46.8 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 5.2, -47 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 5.2, -47 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 5.3, -47.3 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, 5.3, -47.3 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 5.3, -47.5 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 5.3, -47.5 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 5.3, -47.8 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, 5.3, -47.8 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, 5.3, -48 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, 5.3, -48 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, 5.4, -48.2 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 5.4, -48.2 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 5.4, -48.5 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 5.4, -48.5 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 5.4, -48.7 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 5.4, -48.7 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 5.5, -49 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 5.5, -49 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 5.5, -49.2 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 5.5, -49.2 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 5.5, -49.5 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 5.5, -49.5 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 5.5, -49.7 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 5.5, -49.7 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 5.6, -49.9 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 5.6, -49.9 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 5.6, -50.2 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 5.6, -50.2 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 5.6, -50.4 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 5.6, -50.4 , 0 );

setScaleKey( spep_0 + 674 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 677 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 678 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 679 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 680 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 683 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 684 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 687 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 688 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 689 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 690 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 693 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 694 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 697 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 698 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 699 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 700 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 703 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 704 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 707 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 708 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 709 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 710 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 713 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 714 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 717 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 733 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 734 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 737 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 738 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 741 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 742 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 743 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 744 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 747 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 748 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 751 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 752 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 753 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 754 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 756 + OFFSET_X, 1, 1.24, 1.24 );

setRotateKey( spep_0 + 674 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_0 + 756 + OFFSET_X, 1, 53.4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 35 );
SE002 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 18 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 22, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE003, 63 );

--構える
SE004 = playSeVer2( spep_0 + 110, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE004, 71 );
SE005 = playSeVer2( spep_0 + 114, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE005, 68 );

--向かっていく
SE006 = playSeVer2( spep_0 + 146, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 146, 1117, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 164, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE008, 75 );
setPitch( spep_0 + 164, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );

--画面遷移
SE009 = playSeVer2( spep_0 + 220, 1232, "", 0, 0, 0, -1);

--パンチアップ
SE010 = playSeVer2( spep_0 + 290, 1116, "",spep_0 + 330, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 290, SE010, 80 );
SE011 = playSeVer2( spep_0 + 296, 1233, "", 0, 0, 0, -1);

--龍拳ポーズ
SE012 = playSeVer2( spep_0 + 332, 1173, "",spep_0 + 402, 0, 30, -1);
SE013 = playSeVer2( spep_0 + 332, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 332, SE013, 68 );
SE014 = playSeVer2( spep_0 + 332, 1356, "",spep_0 + 528, 0, 102, -1);
setSeVolumeByWorkId( spep_0 + 332, SE014, 69 );
setPitch( spep_0 + 332, SE014, 500 );
setTimeStretch( SE014, 0.89, 30, 4 );

-- ** ボイス ** --
--「オレがやらなきゃ誰がやる！」
--playVoice( spep_0 + 0, 741 );
--setVoiceVolume( spep_0 + 0, 741, 119 );

--「龍拳！」
--SE_7_742 = playVoice( spep_0 + 212, 742 );
--setVoiceVolume( spep_0 + 212, 742, 119 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 346 ; --エンドフェイズのフレーム数を置き換える
  
  pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE001, 0);
  stopSe( SP_dodge - 12, SE002, 0);
  stopSe( SP_dodge - 12, SE008, 0);
  stopSe( SP_dodge - 12, SE010, 0);
  stopSe( SP_dodge - 12, SE011, 0);
  stopSe( SP_dodge - 12, SE012, 0);
  stopSe( SP_dodge - 12, SE013, 0);
  stopSe( SP_dodge - 12, SE014, 0);
  setVoiceVolume( SP_dodge - 12, SE_7_742, 0 );

  pauseAll( SP_dodge, 67);   
  
  speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
  setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
  
  kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
  
  entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
  endPhase(SP_dodge+10);
  
do return end
else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--爆発
SE015 = playSeVer2( spep_0 + 376, 1069, "", 0, 2, 0, -1);
setStartTimeMs( SE015,  233 );
SE016 = playSeVer2( spep_0 + 372, 1188, "", 0, 0, 0, -1);

--炎の渦
SE017 = playSeVer2( spep_0 + 392, 1175, "",spep_0 + 580, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 392, SE017, 45 );
SE018 = playSeVer2( spep_0 + 398, 1226, "",spep_0 + 572, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 398, SE018, 56 );
SE019 = playSeVer2( spep_0 + 398, 1128, "",spep_0 + 574, 0, 48, 0.5);
setSeVolumeByWorkId( spep_0 + 398, SE019, 56 );
setPitch( spep_0 + 398, SE019, -1200 );
setTimeStretch( SE019, 0.2, 30, 4 );

--咆哮
SE020 = playSeVer2( spep_0 + 488, 1066, "",spep_0 + 598, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 488, SE020, 129 );

--龍突き抜ける
SE021 = playSeVer2( spep_0 + 540, 1120, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 540, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 540, SE022, 68 );
SE023 = playSeVer2( spep_0 + 550, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 550, SE023, 81 );

--地面から突き出す
SE024 = playSeVer2( spep_0 + 594, 1044, "",spep_0 + 712, 0, 24, -1);
SE025 = playSeVer2( spep_0 + 600, 1258, "",spep_0 + 746, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 600, SE025, 74 );
SE026 = playSeVer2( spep_0 + 612, 1024, "",spep_0 + 746, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 612, SE026, 77 );

--しめつける
SE027 = playSeVer2( spep_0 + 668, 1429, "",spep_0 + 798, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 668, SE027, 120 );
SE028 = playSeVer2( spep_0 + 684, 1226, "",spep_0 + 844, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 684, SE028, 76 );
SE029 = playSeVer2( spep_0 + 684, 1043, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 684, 1320, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 684, SE030, 38 );
setPitch( spep_0 + 684, SE030, 500 );
setTimeStretch( SE030, 1.33, 30, 4 );


--爆発
SE033 = playSeVer2( spep_0 + 752, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 752, SE033, 42 );
SE034 = playSeVer2( spep_0 + 752, 1159, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 752, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 752, SE035, 82 );

--画面遷移
SE038 = playSeVer2( spep_0 + 826, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 826, SE038, 58 );

--最後環境音
SE037 = playSeVer2( spep_0 + 818, 1263, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 826, 1288, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_0 + 826, SE036, 67 );
setStartTimeMs( SE036,  600 );
SE032 = playSeVer2( spep_0 + 828, 1168, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_0 + 828, SE032, 42 );
setStartTimeMs( SE032,  1733 );
SE031 = playSeVer2( spep_0 + 830, 1288, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_0 + 830, SE031, 67 );
setStartTimeMs( SE031,  2400 );


-- ** ダメージ表示 ** --
dealDamage( spep_0 + 854 );
endPhase( spep_0 + MAX_FRAME_0 - 4); -- 988

end