-- 1028790: UR_超サイヤ人3孫悟空(天使)_アクティブ必殺技：フルパワーかめはめ波
-- sp_effect_a1_00435
-- ut0071

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01  = 162838;  -- 気ダメ〜フィニッシュ ef_001

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
            skipFrame(0, spep_0 + 684 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
            setupMovie(spep_0 + 684 -13, SP_01, spep_0 + 684 -13, 1);
        else
            skipFrame(0, spep_0 + 898);  -- スキップ先フレーム指定
            setupMovie(spep_0 + 898, SP_01, spep_0 + 898 -1, 1);
        end
    else 
        setupMovie(0, SP_01, 0, 0);
    end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 気ダメ〜フィニッシュ
------------------------------------------------------
MAX_FRAME_0 = 1090;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 気ダメ〜フィニッシュ(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 620 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 858 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 620 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 720 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 730 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 774 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 620 + OFFSET_X, 1, 182, 231.9 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 182, 231.9 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 180.6, 231.8 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 180.6, 231.8 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 183.6, 231.6 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 183.6, 231.6 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 181.1, 232.3 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 181.1, 232.3 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 182.8, 231.3 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, 182.8, 231.3 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 181.2, 233.2 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, 181.2, 233.2 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 182.4, 231 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 182.4, 231 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 181.1, 233.1 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, 181.1, 233.1 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 181.4, 230.3 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, 181.4, 230.3 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 182.2, 233.1 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, 182.2, 233.1 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 182.2, 230.4 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, 182.2, 230.4 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 182, 232.9 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, 182, 232.9 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, 181.9, 230.2 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, 181.9, 230.2 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, 183, 233.1 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, 183, 233.1 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, 181.1, 232.1 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, 181.1, 232.1 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, 183.4, 232.2 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, 183.4, 232.2 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, 180.6, 231.6 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, 180.6, 231.6 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, 182.8, 231.2 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, 182.8, 231.2 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, 181.7, 233.1 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, 181.7, 233.1 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, 182.3, 230.5 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, 182.3, 230.5 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, 181.3, 233.1 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, 181.3, 233.1 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, 181.5, 230.5 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, 181.5, 230.5 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, 181.5, 232.9 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, 181.5, 232.9 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, 183, 230.3 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, 183, 230.3 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, 181, 232.6 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, 181, 232.6 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, 182, 230.6 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, 182, 230.6 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, 181.2, 233.6 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, 181.2, 233.6 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, 183.3, 231 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, 183.3, 231 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, 182.3, 233.6 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, 182.3, 233.6 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, 182.3, 230.1 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, 182.3, 230.1 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, 181.5, 233.5 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, 181.5, 233.5 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, 182.9, 230.6 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, 182.9, 230.6 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 181.9, 233.5 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, 181.9, 233.5 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, 181.4, 230.3 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, 181.4, 230.3 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, 182, 231.9 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, 182, 231.9 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, 282.1, 282.1 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, 282.1, 282.1 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, 280.3, 280.7 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, 280.3, 280.7 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 279.6, 280.7 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, 279.6, 280.7 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, 277.5, 275 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, 277.5, 275 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, 271.9, 272.9 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, 271.9, 272.9 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, 264.5, 263.5 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, 264.5, 263.5 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 256, 257.7 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, 256, 257.7 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 245.3, 243.9 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, 245.3, 243.9 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 229.3, 231.5 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 229.3, 231.5 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 214.9, 214.1 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 214.9, 214.1 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 191.8, 191.2 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, 191.8, 191.2 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 164.8, 166.1 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, 164.8, 166.1 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 129.2, 127.3 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 129.2, 127.3 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 80, 80.7 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 80, 80.7 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, -1.4, -0.5 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, -1.4, -0.5 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 24, 25.1 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 24, 25.1 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 35.8, -7.4 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, 35.8, -7.4 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 37.3, 26.4 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 37.3, 26.4 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 60.9, 91.2 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, 60.9, 91.2 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, 92.4, 93.2 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, 92.4, 93.2 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, 113.7, 131.6 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 113.7, 131.6 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 123.8, 156 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 123.8, 156 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 133.9, 155.7 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 133.9, 155.7 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 140.7, 163.7 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 140.7, 163.7 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 144.5, 168 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 144.5, 168 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 146.9, 172.5 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 146.9, 172.5 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 149.8, 177.5 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 149.8, 177.5 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 152.9, 183 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 152.9, 183 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 156.3, 189.1 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 156.3, 189.1 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 160.1, 195.7 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 160.1, 195.7 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 164, 202.8 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 164, 202.8 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 168.3, 210.4 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 168.3, 210.4 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 173, 218.6 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 173, 218.6 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 178.1, 227.6 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 178.1, 227.6 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, -30, -129.8 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, -30, -129.8 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, 2.8, -85.2 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, 2.8, -85.2 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, 20.2, -66.2 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, 20.2, -66.2 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, 27.3, -60.7 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, 27.3, -60.7 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, 32, -47 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, 32, -47 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, 37.1, -40.5 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, 37.1, -40.5 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, 36.4, -37.1 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, 36.4, -37.1 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, 50.2, -33.4 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, 50.2, -33.4 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, 42.9, -23.5 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, 42.9, -23.5 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, 55.1, -26.2 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, 55.1, -26.2 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, 53.3, -14.7 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, 53.3, -14.7 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, 58.5, -21.7 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, 58.5, -21.7 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, 53.4, -14.6 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, 53.4, -14.6 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, 63.9, -12.4 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, 63.9, -12.4 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, 53.5, -12.6 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, 53.5, -12.6 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, 63.6, -13.2 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, 63.6, -13.2 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, 58.2, -5.3 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, 58.2, -5.3 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, 66.5, -14.2 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, 66.5, -14.2 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, 63.6, -3.2 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, 63.6, -3.2 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 58.8, -11.9 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 58.8, -11.9 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 68.9, -2.2 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, 68.9, -2.2 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, 61.3, -8.7 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, 61.3, -8.7 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, 67.3, -0.2 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, 67.3, -0.2 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, 65.6, -10.6 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, 65.6, -10.6 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, 67, 1.1 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, 67, 1.1 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, 61.4, -9.5 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, 61.4, -9.5 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, 70.2, -1 , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, 70.2, -1 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, 61.9, -3.1 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, 61.9, -3.1 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, 71.4, 0.3 , 0 );
setMoveKey( spep_0 + 821 + OFFSET_X, 1, 71.4, 0.3 , 0 );
setMoveKey( spep_0 + 822 + OFFSET_X, 1, 60.1, -2.5 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, 60.1, -2.5 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, 70.3, -6.7 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, 70.3, -6.7 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, 62.7, -4 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, 62.7, -4 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, 71.6, 2.1 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, 71.6, 2.1 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, 66.9, -8.9 , 0 );
setMoveKey( spep_0 + 831 + OFFSET_X, 1, 66.9, -8.9 , 0 );
setMoveKey( spep_0 + 832 + OFFSET_X, 1, 62.6, 1.7 , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, 62.6, 1.7 , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, 79, -4.3 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, 79, -4.3 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, 71.1, -3.6 , 0 );
setMoveKey( spep_0 + 837 + OFFSET_X, 1, 71.1, -3.6 , 0 );
setMoveKey( spep_0 + 838 + OFFSET_X, 1, 63.3, -7.1 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, 63.3, -7.1 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, 76.7, 8.9 , 0 );
setMoveKey( spep_0 + 841 + OFFSET_X, 1, 76.7, 8.9 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, 73.3, -10.3 , 0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, 73.3, -10.3 , 0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, 78.2, 11 , 0 );
setMoveKey( spep_0 + 845 + OFFSET_X, 1, 78.2, 11 , 0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, 71.4, -5.5 , 0 );
setMoveKey( spep_0 + 847 + OFFSET_X, 1, 71.4, -5.5 , 0 );
setMoveKey( spep_0 + 848 + OFFSET_X, 1, 79.6, 11.4 , 0 );
setMoveKey( spep_0 + 849 + OFFSET_X, 1, 79.6, 11.4 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, 91.6, -2.1 , 0 );
setMoveKey( spep_0 + 851 + OFFSET_X, 1, 91.6, -2.1 , 0 );
setMoveKey( spep_0 + 852 + OFFSET_X, 1, 84.1, 12.4 , 0 );
setMoveKey( spep_0 + 853 + OFFSET_X, 1, 84.1, 12.4 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, 84.7, 0.5 , 0 );
setMoveKey( spep_0 + 855 + OFFSET_X, 1, 84.7, 0.5 , 0 );
setMoveKey( spep_0 + 856 + OFFSET_X, 1, 85, 16.8 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, 85, 16.8 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, 89.3, -3 , 0 );

setScaleKey( spep_0 + 620 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 695 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 696 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 699 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 700 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 701 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 702 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 703 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 704 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 705 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 706 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 707 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 708 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 709 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 710 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 711 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 712 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 713 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 714 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 715 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 716 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 717 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 719 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 720 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 729 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 730 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 733 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 734 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 735 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 736 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 737 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 738 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 739 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 740 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 741 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 742 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 743 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 744 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 745 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 746 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 747 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 748 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 749 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 750 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 751 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 752 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 753 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 754 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 755 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 756 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 757 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 758 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 759 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 760 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 761 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 762 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 763 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 764 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 765 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 766 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 767 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 768 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 769 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 770 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 771 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 772 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 773 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 774 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 775 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 776 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 777 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 778 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 779 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 780 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 781 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 782 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 783 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 784 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 785 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 786 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 787 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 788 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 789 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 790 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 793 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 794 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 795 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 796 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 801 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 802 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 811 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 812 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 833 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 834 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 841 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 842 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 847 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 848 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 849 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 850 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 855 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 856 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 858 + OFFSET_X, 1, 1.75, 1.75 );

setRotateKey( spep_0 + 620 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 773 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 774 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 858 + OFFSET_X, 1, -30 );

setBlendColor( spep_0 + 620 + OFFSET_X, 1, 3, 0, 0.8, 0.8, 0.4 );
setBlendColor( spep_0 + 696 + OFFSET_X, 1, 3, 0, 0.5, 0.5, 0.3 );
setBlendColor( spep_0 + 722 + OFFSET_X, 1, 3, 0, 0.6, 0.6, 0.35 );
setBlendColor( spep_0 + 724 + OFFSET_X, 1, 3, 0, 0.6, 0.6, 0.38 );
setBlendColor( spep_0 + 726 + OFFSET_X, 1, 3, 0, 0.6, 0.6, 0.42 );
setBlendColor( spep_0 + 728 + OFFSET_X, 1, 3, 0, 0.6, 0.6, 0.45 );
setBlendColor( spep_0 + 730 + OFFSET_X, 1, 3, 0, 0.6, 0.6, 0.48 );
setBlendColor( spep_0 + 732 + OFFSET_X, 1, 3, 0, 0.6, 0.6, 0.5 );
setBlendColor( spep_0 + 764 + OFFSET_X, 1, 3, 0, 0.8, 0.8, 0.4 );
setBlendColor( spep_0 + 850 + OFFSET_X, 1, 3, 0.4, 0.9, 0.9, 0.8 );
setBlendColor( spep_0 + 854 + OFFSET_X, 1, 3, 0.4, 0.8, 0.8, 0.8 );
setBlendColor( spep_0 + 856 + OFFSET_X, 1, 3, 0.4, 0.6, 0.6, 0.95 );
setBlendColor( spep_0 + 860 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 338, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 340, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 76 );

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 40 );
SE005 = playSeVer2( spep_0 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE005, 40 );
SE006 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE006, 40 );
SE009 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE009, 40 );
SE010 = playSeVer2( spep_0 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE010, 40 );
SE011 = playSeVer2( spep_0 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE011, 40 );
SE014 = playSeVer2( spep_0 + 138, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE014, 40 );
SE016 = playSeVer2( spep_0 + 162, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE016, 40 );
SE017 = playSeVer2( spep_0 + 186, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE017, 40 );
SE019 = playSeVer2( spep_0 + 210, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE019, 40 );
SE020 = playSeVer2( spep_0 + 234, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE020, 40 );
SE021 = playSeVer2( spep_0 + 258, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 258, SE021, 40 );

--セリフカットイン
SE004 = playSeVer2( spep_0 + 16, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 63 );

--気が弾ける1
SE007 = playSeVer2( spep_0 + 48, 1043, "", spep_0 + 190, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 48, SE007, 80 );
SE008 = playSeVer2( spep_0 + 48, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE008, 69 );

--気が弾ける2
SE012 = playSeVer2( spep_0 + 130, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE012, 80 );
SE013 = playSeVer2( spep_0 + 130, 1033, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 148, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE015, 73 );

--イナヅマ
SE018 = playSeVer2( spep_0 + 196, 1148, "",spep_0 + 332, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 196, SE018, 62 );

--気が爆発する
SE022 = playSeVer2( spep_0 + 274, 1035, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 276, 1049, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 276, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE024, 78 );
SE025 = playSeVer2( spep_0 + 276, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE025, 89 );

--オーラ
SE026 = playSeVer2( spep_0 + 282, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 282, SE026, 40 );

--画面遷移
SE027 = playSeVer2( spep_0 + 330, 8, "", 0, 0, 0, -1);

--かめはめ波溜める
SE028 = playSeVer2( spep_0 + 412, 1210, "",spep_0 + 578, 20, 34, -1);
setStartTimeMs( SE028,  967 );

--イナヅマ
SE029 = playSeVer2( spep_0 + 358, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 358, SE029, 65 );

--あごを引く
SE030 = playSeVer2( spep_0 + 378, 1233, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 378, 1300, "", 0, 0, 0, -1);

--画面遷移
SE032 = playSeVer2( spep_0 + 394, 1072, "", 0, 10, 0, -1);
setStartTimeMs( SE032,  267 );
SE033 = playSeVer2( spep_0 + 402, 8, "", 0, 0, 0, -1);

--かめはめ波溜める
SE034 = playSeVer2( spep_0 + 412, 1209, "", 0, 0, 0, -1);

--かめはめ波放つ
SE035 = playSeVer2( spep_0 + 528, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE035, 75 );
SE036 = playSeVer2( spep_0 + 534, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 534, SE036, 78 );
SE037 = playSeVer2( spep_0 + 534, 1213, "",spep_0 + 644, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 534, SE037, 69 );
SE038 = playSeVer2( spep_0 + 534, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 534, SE038, 84 );

--かめはめ波飛んでいく
SE039 = playSeVer2( spep_0 + 614, 1133, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 614, 1213, "",spep_0 + 892, 0, 30, -1);
SE041 = playSeVer2( spep_0 + 614, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 614, SE041, 78 );
SE042 = playSeVer2( spep_0 + 614, 1211, "",spep_0 + 896, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 614, SE042, 207 );
SE043 = playSeVer2( spep_0 + 664, 1215, "",spep_0 + 900, 0, 40, -1);

-- ** ボイス ** --
--「 オラの時間がなくなっちまう……！」
playVoice( spep_0 + 12, 786 );
setVoiceVolume( spep_0 + 12, 786, 100 );

--「だが……」
playVoice( spep_0 + 206, 787 );
setVoiceVolume( spep_0 + 206, 787, 100 );

--「やるしかねえ……！」
playVoice( spep_0 + 318, 788 );
setVoiceVolume( spep_0 + 318, 788, 100 );

--「かめはめ」
playVoice( spep_0 + 442, 789 );
setVoiceVolume( spep_0 + 442, 789, 100 );

--「波っ！」
playVoice( spep_0 + 506, 790 );
setVoiceVolume( spep_0 + 506, 790, 150 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 684; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE035, 0);
stopSe( SP_dodge - 12, SE036, 0);
stopSe( SP_dodge - 12, SE037, 0);
stopSe( SP_dodge - 12, SE038, 0);
stopSe( SP_dodge - 12, SE039, 0);
stopSe( SP_dodge - 12, SE040, 0);
stopSe( SP_dodge - 12, SE041, 0);
stopSe( SP_dodge - 12, SE042, 0);
stopSe( SP_dodge - 12, SE043, 0);
setVoiceVolume(SP_dodge - 12, 790, 0)

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, - 1, 0, 0, - 350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, - 1, 0, 0, 350); -- 回避の文字表示

-- ** 敵キャラクター ** --
setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0); --回避後の敵の色戻す

entryFade(SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge + 10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--敵ヒット
SE044 = playSeVer2( spep_0 + 720, 1258, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 724, 1145, "", 0, 0, 0, -1);

--かめはめ波中
SE046 = playSeVer2( spep_0 + 762, 1226, "",spep_0 + 906, 0, 42, -1);

--気弾宇宙へ抜けていく
SE047 = playSeVer2( spep_0 + 898, 1145, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 898, 1296, "",spep_0 + 1090, 0, 98, -1);
SE049 = playSeVer2( spep_0 + 898, 1265, "",spep_0 + 1090, 0, 98, -1);
SE050 = playSeVer2( spep_0 + 898, 1024, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_0 + 950);
endPhase( spep_0 + MAX_FRAME_0); -- 終了フレーム 1090F

else end
