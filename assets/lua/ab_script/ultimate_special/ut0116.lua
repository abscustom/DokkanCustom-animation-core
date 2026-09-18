-- 4031980:UR_スーパーベビー2(大猿ベビー)大猿状態_アクティブ必殺：リベンジデスボールファイナル
-- sp_effect_a2_00266
-- ut0116

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01  = 164112;  --   ef_001 両手を上げた大猿ベビー〜フィニッシュ
SP_01b = 164113;  --   ef_001b 両手を上げた大猿ベビー〜フィニッシュ


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
        spep_0 = 0;---記載するspepの数に要注意

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 606 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 624 -1);  -- スキップ先フレーム指定

            --気弾発射
            SE013 = playSeVer2( spep_0 + 624, 1011, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 624, SE013, 86 );
            SE014 = playSeVer2( spep_0 + 624, 1193, "", 0, 0, 0, -1);
            SE015 = playSeVer2( spep_0 + 624, 1145, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 624, SE015, 74 );
            SE016 = playSeVer2( spep_0 + 624, 1304, "", 0, 0, 0, -1);

       end
    else end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 両手を上げた大猿ベビー〜フィニッシュ
------------------------------------------------------
MAX_FRAME_0 = 1062;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 両手を上げた大猿ベビー〜フィニッシュ(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 両手を上げた大猿ベビー〜フィニッシュ(ef_001b)
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
setDisp( spep_0 + 624 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 816 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 624 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 740 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 624 + OFFSET_X, 1, 145.8, -24.9 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, 145.8, -24.9 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, 147.7, -23 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, 147.7, -23 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, 143.9, -26.8 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, 143.9, -26.8 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, 147.7, -26.8 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, 147.7, -26.8 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, 143.9, -23 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, 143.9, -23 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 147.7, -23 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, 147.7, -23 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, 143.9, -26.8 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, 143.9, -26.8 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, 147.7, -26.8 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, 147.7, -26.8 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, 143.9, -23 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, 143.9, -23 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, 145.8, -24.9 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, 145.8, -24.9 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 147.7, -23 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, 147.7, -23 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, 143.9, -26.8 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, 143.9, -26.8 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, 147.7, -26.8 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, 147.7, -26.8 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, 143.9, -23 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, 143.9, -23 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 145.8, -24.9 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, 145.8, -24.9 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 149.6, -21.1 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, 149.6, -21.1 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 142, -28.7 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 142, -28.7 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 149.6, -28.7 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 149.6, -28.7 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 142, -21.1 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, 142, -21.1 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 145.8, -24.9 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, 145.8, -24.9 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 149.6, -21.1 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 149.6, -21.1 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 142, -28.7 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 142, -28.7 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 149.6, -28.7 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 149.6, -28.7 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 142, -21.1 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 142, -21.1 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 145.8, -24.9 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, 145.8, -24.9 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 151.5, -19.2 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 151.5, -19.2 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 140.1, -30.6 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, 140.1, -30.6 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, 151.5, -30.6 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, 151.5, -30.6 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, 140.1, -19.2 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 140.1, -19.2 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 9, -111.9 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 9, -111.9 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 14.7, -117.6 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 14.7, -117.6 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 3.3, -106.2 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 3.3, -106.2 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 14.7, -106.2 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 14.7, -106.2 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 3.3, -117.6 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 3.3, -117.6 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 14.7, -117.6 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 14.7, -117.6 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 3.3, -106.2 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 3.3, -106.2 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 14.7, -106.2 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 14.7, -106.2 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 3.3, -117.6 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 3.3, -117.6 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 14.7, -117.6 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 14.7, -117.6 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 3.3, -106.2 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 3.3, -106.2 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 9, -111.9 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 9, -111.9 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 14.7, -106.2 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, 14.7, -106.2 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, 3.3, -117.6 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, 3.3, -117.6 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, 14.7, -117.6 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, 14.7, -117.6 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, 3.3, -106.2 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, 3.3, -106.2 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, 9, -111.9 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, 9, -111.9 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, 14.7, -106.2 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, 14.7, -106.2 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, 3.3, -117.6 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, 3.3, -117.6 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, 14.7, -117.6 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, 14.7, -117.6 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, 3.3, -106.2 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, 3.3, -106.2 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, 9, -111.9 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, 9, -111.9 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, 14.7, -106.2 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, 14.7, -106.2 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, 3.3, -117.6 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, 3.3, -117.6 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, 14.7, -117.6 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, 14.7, -117.6 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, 3.3, -106.2 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, 3.3, -106.2 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, 9, -111.9 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, 9, -111.9 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, 14.7, -106.2 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, 14.7, -106.2 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, 3.3, -117.6 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, 3.3, -117.6 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, 14.7, -117.6 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, 14.7, -117.6 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, 3.3, -106.2 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, 3.3, -106.2 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 9, -111.9 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 9, -111.9 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 14.7, -106.2 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, 14.7, -106.2 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, 3.3, -117.6 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, 3.3, -117.6 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, 14.7, -117.6 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, 14.7, -117.6 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, 3.3, -106.2 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, 3.3, -106.2 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, 9, -111.9 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, 9, -111.9 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, 14.7, -106.2 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, 14.7, -106.2 , 0 );

setScaleKey( spep_0 + 624 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 739 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 740 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 816 + OFFSET_X, 1, 1.46, 1.46 );

setRotateKey( spep_0 + 624 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 739 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 740 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 816 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 726 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.2 );
setBlendColor( spep_0 + 731 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.2 );
setBlendColor( spep_0 + 732 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4 );
setBlendColor( spep_0 + 739 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4 );
setBlendColor( spep_0 + 740 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.5 );
setBlendColor( spep_0 + 815 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.5 );
setBlendColor( spep_0 + 816 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--気弾溜め
SE001 = playSeVer2( spep_0 + 50, 1495, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE001, 48 );
setStartTimeMs( SE001,  833 );
setPitch( spep_0 + 50, SE001, 1000 );
setTimeStretch( SE001, 1.67, 30, 4 );
SE003 = playSeVer2( spep_0 + 52, 1328, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE003, 79 );
setStartTimeMs( SE003,  133 );
SE004 = playSeVer2( spep_0 + 54, 1494, "",spep_0 + 142, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 54, SE004, 74 );
setPitch( spep_0 + 54, SE004, -200 );
setTimeStretch( SE004, 0.87, 30, 4 );
SE005 = playSeVer2( spep_0 + 54, 1184, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE005, 62 );
SE006 = playSeVer2( spep_0 + 82, 1398, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE006, 133 );
setPitch( spep_0 + 82, SE006, -600 );
setTimeStretch( SE006, 0.6, 30, 4 );
SE007 = playSeVer2( spep_0 + 82, 1396, "",spep_0 + 678, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 82, SE007, 81 );
SE008 = playSeVer2( spep_0 + 92, 1176, "",spep_0 + 648, 32, 46, -1);
setSeVolumeByWorkId( spep_0 + 92, SE008, 20 );
setStartTimeMs( SE008,  167 );
SE009 = playSeVer2( spep_0 + 280, 1158, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 322, 1398, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE010, 133 );
setPitch( spep_0 + 322, SE010, -600 );
setTimeStretch( SE010, 0.6, 30, 4 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );

--ズームアウト
SE011 = playSeVer2( spep_0 + 320, 1072, "", 0, 0, 0, -1);

--電気走る
SE012 = playSeVer2( spep_0 + 492, 1043, "", 0, 0, 0, -1);

--気弾発射
SE013 = playSeVer2( spep_0 + 570, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 570, SE013, 86 );
SE014 = playSeVer2( spep_0 + 570, 1193, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 570, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 570, SE015, 74 );
SE016 = playSeVer2( spep_0 + 594, 1304, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「おまえの皮も！骨も！全て蒸発させてやる！！」
playVoice( spep_0 + 0, 1080 );
setVoiceVolume( spep_0 + 0, 1080, 122 );

--「リベンジデスボール！！」
playVoice( spep_0 + 288, 1081 );
setVoiceVolume( spep_0 + 288, 1081, 122 );

--「ファイナール！！！！」
playVoice( spep_0 + 434, 1082 );
setVoiceVolume( spep_0 + 434, 1082, 122 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 606; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
setVoiceVolume( SP_dodge - 12, 1082, 0 );

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
--地響き
SE017 = playSeVer2( spep_0 + 642, 1226, "",spep_0 + 1128, 0, 152, -1);

--風圧
SE018 = playSeVer2( spep_0 + 652, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 652, SE018, 68 );

--気弾ヒット
SE019 = playSeVer2( spep_0 + 758, 1024, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 758, 1159, "", 0, 0, 0, -1);

--爆発
SE021 = playSeVer2( spep_0 + 796, 1128, "", 0, 0, 0, -1);
setPitch( spep_0 + 796, SE021, -1200 );
setTimeStretch( SE021, 0.2, 30, 4 );
SE022 = playSeVer2( spep_0 + 798, 1069, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 840, 1188, "", 0, 0, 0, -1);

--爆発2
SE024 = playSeVer2( spep_0 + 906, 1156, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 916, 1067, "", 0, 0, 0, -1);

if ( _IS_DEAD_LAST_ == 0 ) then
    entryFade( spep_0 + 1058 + OFFSET_X, 6, 30, 0, 0, 0, 0, 255);  -- black fade
end

-- ** おわり ** --
hideKoScreen();
fadeKoLabel( 0.0, 0.5 );
dealDamage( spep_0 + 946 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 終了フレーム 1062F

else end
