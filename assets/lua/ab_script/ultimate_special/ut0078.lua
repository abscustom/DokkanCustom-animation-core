-- 1029950: UR_超サイヤ人ゴッドSS孫悟空(宇宙樹パワー)_アクティブ必殺技：屈強の合体かめはめ波
-- sp_effect_b4_00360
-- ut0078

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163369; -- 前面 ef_001
SP_01b = 163370; -- 背面 ef_001b

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
           skipFrame(0, spep_0 + 640 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 640 -13, SP_01, spep_0 + 640 -13 + 2, 1);
       else
           skipFrame(0, spep_0 + 740 );  -- スキップ先フレーム指定
           setupMovie(spep_0 + 740 , SP_01, spep_0 + 740 -1 + 2, 1);

           --かめはめ波飛んでいく
           SE042 = playSeVer2( spep_0 + 740, 1258, "", 0, 0, 0, -1);
           SE043 = playSeVer2( spep_0 + 740, 1423, "",spep_0 + 756, 0, 12, -1);
           
       end
    else
        setupMovie(0, SP_01, 0, 1);

    end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 前面
------------------------------------------------------
MAX_FRAME_0 = 880;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 前面(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
--[[
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 背面(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 652 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 750 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 652 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 742 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 652 + OFFSET_X, 1, 522.9, 296 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, 522.9, 296 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, 525.9, 305.1 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, 525.9, 305.1 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, 405.8, 228.3 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, 405.8, 228.3 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, 393.6, 240.5 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, 393.6, 240.5 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, 309.4, 183.3 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, 309.4, 183.3 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, 297.2, 189.4 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, 297.2, 189.4 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, 254.5, 155.8 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, 254.5, 155.8 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, 251.4, 161.9 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, 251.4, 161.9 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, 238.9, 154 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, 238.9, 154 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, 242, 160.1 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, 242, 160.1 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, 244.9, 149.3 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, 244.9, 149.3 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, 244.9, 161.5 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, 244.9, 161.5 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, 232.8, 156.8 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, 232.8, 156.8 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, 242, 150.7 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, 242, 150.7 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, 239.3, 149.3 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, 239.3, 149.3 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, 230.1, 158.4 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, 230.1, 158.4 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, 239.8, 144.9 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, 239.8, 144.9 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, 239.8, 157.1 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, 239.8, 157.1 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, 228.3, 146.7 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, 228.3, 146.7 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 222.2, 152.8 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, 222.2, 152.8 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, 232.3, 145.5 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, 232.3, 145.5 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, 223.2, 154.6 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, 223.2, 154.6 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, 230.3, 144.4 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, 230.3, 144.4 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, 227.3, 144.4 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, 227.3, 144.4 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 231.6, 149.6 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, 231.6, 149.6 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, 222.4, 143.5 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, 222.4, 143.5 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, 217.7, 148.7 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, 217.7, 148.7 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, 220.8, 148.7 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, 220.8, 148.7 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 228.5, 138.8 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, 228.5, 138.8 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 228.5, 151 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, 228.5, 151 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 215.1, 141.1 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 215.1, 141.1 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 215.1, 150.2 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 215.1, 150.2 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 223, 140.6 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, 223, 140.6 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 225.1, 149.2 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 225.1, 149.2 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 215.3, 157 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 215.3, 157 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 230.1, 141 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 230.1, 141 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 230.1, 158.5 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 230.1, 158.5 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 229.5, 138.7 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, 229.5, 138.7 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 229.5, 129 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 229.5, 129 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 253.4, 111.3 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 253.4, 111.3 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 64.8, -23.5 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 64.8, -23.5 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 70.2, -15.5 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 70.2, -15.5 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 81.4, -11.5 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 81.4, -11.5 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 78.6, -19.5 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 78.6, -19.5 , 0 );

setScaleKey( spep_0 + 652 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 655 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 656 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 659 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 660 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 663 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 664 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 667 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 668 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 671 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 672 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 675 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 676 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 679 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 680 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 683 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 684 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 687 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 688 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 691 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 692 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 695 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 696 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 699 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 700 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 703 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 704 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 707 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 708 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 711 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 712 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 715 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 716 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 719 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 720 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 741 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 742 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 750 + OFFSET_X, 1, 0.27, 0.27 );

setRotateKey( spep_0 + 652 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_0 + 741 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_0 + 742 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 750 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 574, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 150 );
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 574, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 55 );
SE004 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 63 );

--イナヅマ
SE003 = playSeVer2( spep_0 + 0, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 40 );

--入り
SE005 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--オーラ
SE006 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE006, 63 );
SE007 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE007, 63 );
SE008 = playSeVer2( spep_0 + 68, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE008, 63 );
SE009 = playSeVer2( spep_0 + 92, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE009, 63 );
SE010 = playSeVer2( spep_0 + 116, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE010, 63 );
SE011 = playSeVer2( spep_0 + 140, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE011, 63 );

--構える１
SE012 = playSeVer2( spep_0 + 144, 1233, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 144, 1004, "", 0, 0, 0, -1);

--オーラ
SE014 = playSeVer2( spep_0 + 164, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE014, 63 );
SE015 = playSeVer2( spep_0 + 188, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 188, SE015, 63 );
SE017 = playSeVer2( spep_0 + 212, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 212, SE017, 63 );
SE019 = playSeVer2( spep_0 + 236, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE019, 63 );
SE021 = playSeVer2( spep_0 + 260, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE021, 63 );
SE022 = playSeVer2( spep_0 + 284, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE022, 63 );

--イナヅマ
SE016 = playSeVer2( spep_0 + 202, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE016, 40 );

--構える２
SE018 = playSeVer2( spep_0 + 230, 1233, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 236, 1004, "", 0, 0, 0, -1);

--かめはめ波溜め
SE023 = playSeVer2( spep_0 + 336, 1210, "",spep_0 + 570, 6, 26, -1);
setStartTimeMs( SE023,  767 );

--オーラ
SE024 = playSeVer2( spep_0 + 308, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE024, 63 );
SE026 = playSeVer2( spep_0 + 332, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 332, SE026, 63 );

--セリフカットイン
SE025 = playSeVer2( spep_0 + 330, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE025, 63 );

--イナヅマ
SE027 = playSeVer2( spep_0 + 336, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE027, 40 );

--かめはめ波溜め
SE028 = playSeVer2( spep_0 + 336, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE028, 66 );
SE029 = playSeVer2( spep_0 + 336, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE029, 51 );

--オーラ
SE030 = playSeVer2( spep_0 + 356, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 356, SE030, 63 );
SE031 = playSeVer2( spep_0 + 380, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 380, SE031, 63 );
SE032 = playSeVer2( spep_0 + 404, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 404, SE032, 63 );
SE033 = playSeVer2( spep_0 + 428, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 428, SE033, 63 );
SE034 = playSeVer2( spep_0 + 452, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 452, SE034, 63 );

--かめはめ波発射
SE035 = playSeVer2( spep_0 + 540, 1133, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 540, 1146, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 540, 1213, "",spep_0 + 766, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 540, SE037, 65 );
SE038 = playSeVer2( spep_0 + 540, 1285, "", 0, 0, 0, -1);

--かめはめ波飛んでいく
SE039 = playSeVer2( spep_0 + 572, 1211, "",spep_0 + 760, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 572, SE039, 295 );
SE040 = playSeVer2( spep_0 + 572, 1390, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 572, SE040, 76 );
SE041 = playSeVer2( spep_0 + 604, 1212, "", 0, 24, 0, -1);
setStartTimeMs( SE041,  267 );
SE042 = playSeVer2( spep_0 + 604, 1258, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 610, 1423, "",spep_0 + 756, 0, 12, -1);

-- ** ボイス ** --
--「全力でいくぜ！」
SE_7_877 = playVoice( spep_0 + 306, 877 );
setVoiceVolume( spep_0 + 306, 877, 132 );

--「はぁぁぁぁぁぁぁぁぁぁ！！！」
SE_7_878 = playVoice( spep_0 + 424, 878 );
setVoiceVolume( spep_0 + 424, 878, 132 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 640; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE034, 0);
stopSe( SP_dodge - 12, SE035, 0);
stopSe( SP_dodge - 12, SE036, 0);
stopSe( SP_dodge - 12, SE037, 0);
stopSe( SP_dodge - 12, SE038, 0);
stopSe( SP_dodge - 12, SE039, 0);
stopSe( SP_dodge - 12, SE040, 0);
stopSe( SP_dodge - 12, SE041, 0);
stopSe( SP_dodge - 12, SE042, 0);
stopSe( SP_dodge - 12, SE043, 0);
setVoiceVolume( SP_dodge - 12, SE_7_878, 0 );

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
--爆発
SE044 = playSeVer2( spep_0 + 738, 1159, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 808, 1067, "", 0, 0, 0, -1);

--爆発２
SE045 = playSeVer2( spep_0 + 744, 1068, "", 0, 0, 0, -1);

-- ** おわり ** --
-- hideKoScreen();
dealDamage( spep_0 + 760 );
endPhase( spep_0 + MAX_FRAME_0); -- 終了フレーム 880F

else end
