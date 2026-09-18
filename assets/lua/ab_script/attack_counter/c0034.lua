--1032260:UR_超サイヤ人4孫悟空(ミニ)(DAIMA)_気弾カウンター
--sp_effect_a2_00268
--c0034

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164198; -- 上空からの気弾を受け止めて跳ね返す ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
 
setVisibleUI( 0, 0);
 
changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);
 
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
 
ENABLE_AUTO_TIME_STRETCH(0.84);
 
OFFSET_X = -1;
 
------------------------------------------------------------------------------------------------------------
-- カウンター
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 28; --冒頭顔カットイン入るため28F固定
 
 
------------------------------------------------------
-- 上空からの気弾を受け止めて跳ね返す
------------------------------------------------------
 
MAX_FRAME_0 = 802;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 上空からの気弾を受け止めて跳ね返す ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-- ** 敵キャラクター ** --

setDisp( spep_0 + 684 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 786 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 684 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 754 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 684 + OFFSET_X, 1, 1, -1.8 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, 1, -1.8 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, 5.8, -3.2 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, 5.8, -3.2 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, 1.5, -4.8 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, 1.5, -4.8 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 3.6, -14.8 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, 3.6, -14.8 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, -3.6, -8.5 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, -3.6, -8.5 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, 2.2, -11.5 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, 2.2, -11.5 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, -10.1, -4 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, -10.1, -4 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, -5.1, -10.6 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, -5.1, -10.6 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, -14.9, -7.1 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, -14.9, -7.1 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, -6.3, -13.9 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, -6.3, -13.9 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, -13.8, -14.5 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, -13.8, -14.5 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, -4.2, -16.5 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, -4.2, -16.5 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, -9, -20.8 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, -9, -20.8 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 2.1, -11.5 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, 2.1, -11.5 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, -11.7, -7.6 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, -11.7, -7.6 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 2.7, 0.2 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 2.7, 0.2 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, -23.2, -13.1 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, -23.2, -13.1 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, -25.4, 14.8 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, -25.4, 14.8 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 1.5, -15.3 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 1.5, -15.3 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, -8.6, 11.2 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, -8.6, 11.2 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, -10.2, 5.5 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, -10.2, 5.5 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 2.6, 24.8 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 2.6, 24.8 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, -0.1, 12.7 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, -0.1, 12.7 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 18, 22.7 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 18, 22.7 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 7.7, 1.1 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, 7.7, 1.1 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, 27.9, 15.4 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, 27.9, 15.4 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, 15.6, -1.6 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 15.6, -1.6 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 15.3, 0.4 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 15.3, 0.4 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, -8.4, 2.6 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, -8.4, 2.6 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 9.6, 3.7 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 9.6, 3.7 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 13.5, -0.1 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 13.5, -0.1 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 19.7, 1.2 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 19.7, 1.2 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, -9.6, -30.2 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, -9.6, -30.2 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 2.5, 3.8 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 2.5, 3.8 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 0.6, -32.9 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 0.6, -32.9 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 13.3, 18.9 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 13.3, 18.9 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 10.7, 9.7 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 10.7, 9.7 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 29.9, 15.2 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 29.9, 15.2 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 23.7, 23.5 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 23.7, 23.5 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 36.5, 32.9 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 36.5, 32.9 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 24.3, 35.2 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, 24.3, 35.2 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, 35.7, 41.8 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, 35.7, 41.8 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, 21.3, 40 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, 21.3, 40 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, 32.7, 41.1 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, 32.7, 41.1 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, 14, 45.5 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, 14, 45.5 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, 31.1, 33 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, 31.1, 33 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, 20.9, 42.9 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, 20.9, 42.9 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, 39.6, 38.3 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, 39.6, 38.3 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, 28.5, 56 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, 28.5, 56 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, 45.6, 44.4 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, 45.6, 44.4 , 0 );

setScaleKey( spep_0 + 684 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 753 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 754 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 755 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 756 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 757 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 758 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 759 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 760 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 761 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 762 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 763 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 764 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 765 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 766 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 767 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 768 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 769 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 770 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 771 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 772 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 773 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 774 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 775 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 776 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 777 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 778 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 779 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 780 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 781 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 782 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 786 + OFFSET_X, 1, 1.34, 1.34 );

setRotateKey( spep_0 + 684 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 786 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 684 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_0 + 694 + OFFSET_X, 1, 3, 0, 0, 0, 0.15 );
setBlendColor( spep_0 + 698 + OFFSET_X, 1, 3, 0, 0, 0, 0.25 );
setBlendColor( spep_0 + 702 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 706 + OFFSET_X, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_0 + 710 + OFFSET_X, 1, 3, 0, 0, 0, 0.45 );
setBlendColor( spep_0 + 714 + OFFSET_X, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_0 + 718 + OFFSET_X, 1, 3, 0, 0, 0, 0.55 );
setBlendColor( spep_0 + 734 + OFFSET_X, 1, 3, 0, 0, 0, 0.65 );
setBlendColor( spep_0 + 744 + OFFSET_X, 1, 3, 0, 0, 0, 0.85 );
setBlendColor( spep_0 + 756 + OFFSET_X, 1, 3, 0, 0, 0, 0.55 );
setBlendColor( spep_0 + 760 + OFFSET_X, 1, 3, 0, 0, 0, 0.35 );
setBlendColor( spep_0 + 786 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

setAlphaKey( spep_0 + 684 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 743 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 744 + OFFSET_X, 1, 200 );
setAlphaKey( spep_0 + 747 + OFFSET_X, 1, 200 );
setAlphaKey( spep_0 + 748 + OFFSET_X, 1, 150 );
setAlphaKey( spep_0 + 749 + OFFSET_X, 1, 150 );
setAlphaKey( spep_0 + 750 + OFFSET_X, 1, 100 );
setAlphaKey( spep_0 + 751 + OFFSET_X, 1, 100 );
setAlphaKey( spep_0 + 752 + OFFSET_X, 1, 60 );
setAlphaKey( spep_0 + 755 + OFFSET_X, 1, 60 );
setAlphaKey( spep_0 + 756 + OFFSET_X, 1, 120 );
setAlphaKey( spep_0 + 759 + OFFSET_X, 1, 120 );
setAlphaKey( spep_0 + 760 + OFFSET_X, 1, 70 );
setAlphaKey( spep_0 + 761 + OFFSET_X, 1, 70 );
setAlphaKey( spep_0 + 762 + OFFSET_X, 1, 50 );
setAlphaKey( spep_0 + 763 + OFFSET_X, 1, 50 );
setAlphaKey( spep_0 + 764 + OFFSET_X, 1, 30 );
setAlphaKey( spep_0 + 765 + OFFSET_X, 1, 30 );
setAlphaKey( spep_0 + 766 + OFFSET_X, 1, 40 );
setAlphaKey( spep_0 + 767 + OFFSET_X, 1, 40 );
setAlphaKey( spep_0 + 768 + OFFSET_X, 1, 30 );
setAlphaKey( spep_0 + 769 + OFFSET_X, 1, 30 );
setAlphaKey( spep_0 + 770 + OFFSET_X, 1, 10 );
setAlphaKey( spep_0 + 771 + OFFSET_X, 1, 10 );
setAlphaKey( spep_0 + 772 + OFFSET_X, 1, 15 );
setAlphaKey( spep_0 + 773 + OFFSET_X, 1, 15 );
setAlphaKey( spep_0 + 774 + OFFSET_X, 1, 12 );
setAlphaKey( spep_0 + 775 + OFFSET_X, 1, 12 );
setAlphaKey( spep_0 + 776 + OFFSET_X, 1, 10 );
setAlphaKey( spep_0 + 777 + OFFSET_X, 1, 10 );
setAlphaKey( spep_0 + 778 + OFFSET_X, 1, 8 );
setAlphaKey( spep_0 + 779 + OFFSET_X, 1, 8 );
setAlphaKey( spep_0 + 780 + OFFSET_X, 1, 5 );
setAlphaKey( spep_0 + 785 + OFFSET_X, 1, 5 );
setAlphaKey( spep_0 + 786 + OFFSET_X, 1, 255 );

-- ** 音 ** --

--気弾迫ってくる
SE001 = playSeVer2( spep_0 + 0, 1193, "", 0, 14, 0, -1);
setStartTimeMs( SE001, 1000 );
SE002 = playSeVer2( spep_0 + 0, 1022, "", 0, 0, 0, -1);

--地響き
SE003 = playSeVer2( spep_0 + 0, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 77 );
SE005 = playSeVer2( spep_0 + 100, 1044, "",spep_0 + 660, 0, 42, -1);

--地面当たる
SE004 = playSeVer2( spep_0 + 60, 1188, "", 0, 0, 0, -1);

--オーラ
SE006 = playSeVer2( spep_0 + 232, 1513, "",spep_0 + 664, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 232, SE006, 87 );
SE007 = playSeVer2( spep_0 + 232, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE007, 63 );
SE008 = playSeVer2( spep_0 + 256, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE008, 63 );
SE009 = playSeVer2( spep_0 + 280, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE009, 63 );
SE010 = playSeVer2( spep_0 + 304, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE010, 63 );
SE011 = playSeVer2( spep_0 + 328, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE011, 63 );
SE012 = playSeVer2( spep_0 + 354, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 354, SE012, 63 );
SE013 = playSeVer2( spep_0 + 376, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE013, 63 );
SE014 = playSeVer2( spep_0 + 400, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE014, 63 );
SE015 = playSeVer2( spep_0 + 424, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 424, SE015, 63 );
SE017 = playSeVer2( spep_0 + 448, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE017, 63 );
SE018 = playSeVer2( spep_0 + 472, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 472, SE018, 63 );
SE019 = playSeVer2( spep_0 + 496, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 496, SE019, 63 );
SE020 = playSeVer2( spep_0 + 520, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 520, SE020, 63 );
SE022 = playSeVer2( spep_0 + 544, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 544, SE022, 63 );
SE023 = playSeVer2( spep_0 + 568, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 568, SE023, 63 );
SE024 = playSeVer2( spep_0 + 592, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 592, SE024, 63 );
SE025 = playSeVer2( spep_0 + 616, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 616, SE025, 63 );

--目光る
SE016 = playSeVer2( spep_0 + 442, 1303, "",spep_0 + 520, 0, 42, -1);
setPitch( spep_0 + 446, SE016, -600 );
setTimeStretch( SE016, 0.6, 30, 4 );
setSeVolumeByWorkId( spep_0 + 446, SE016, 120 );

--顔アップ
SE021 = playSeVer2( spep_0 + 526, 1116, "",spep_0 + 574, 0, 26, -1);

--跳ね返す
SE026 = playSeVer2( spep_0 + 616, 1190, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 616, 1193, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 616, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 616, SE028, 60 );
SE029 = playSeVer2( spep_0 + 616, 1215, "", 0, 0, 0, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------
 
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 680; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge -12, 1042 );
    stopSe( SP_dodge - 12, SE026, 0 );
    stopSe( SP_dodge - 12, SE027, 0 );
    stopSe( SP_dodge - 12, SE028, 0 );
    stopSe( SP_dodge - 12, SE029, 0 );
    pauseAll( SP_dodge, 67 );
 
    speff = entryEffectUnpausable( SP_dodge -12, 1504, 0x100, -1, 0, 0, -350 ); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 ); -- カットイン差し替え
     
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350 ); -- 回避の文字表示
 
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    endPhase( SP_dodge + 10 );

 
do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --

--敵ヒット
SE030 = playSeVer2( spep_0 + 738, 1024, "", 0, 0, 0, -1);

------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if ( _IS_DEAD_ == 1 ) then

    stopSe( spep_0 + 738, SE026, 0 );
    stopSe( spep_0 + 738, SE027, 0 );
    stopSe( spep_0 + 738, SE028, 0 );
    stopSe( spep_0 + 738, SE029, 0 );
    stopSe( spep_0 + 738, SE030, 0 );

    setAlphaKey( spep_0 + 740 + OFFSET_X, 1, 255 );
    setBlendColor( spep_0 + 740 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

    setDisp( spep_0 + 738, 1, 1 );
    endPhase( spep_0 + 740 );

     
else

------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------

-- -- ** ダメージ表示 ** --
dealDamage( spep_0 + 686 ); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 ); -- 802

end