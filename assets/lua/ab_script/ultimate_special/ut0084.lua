-- 1030660: UR_超サイヤ人孫悟空(ミニ)(DAIMA)_アクティブ必殺技：超かめはめ波
-- sp_effect_a1_00471
-- ut0084

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163556; -- 手前 ef_001
SP_01b = 163557; -- 奥 ef_001b

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
-- TODO: 敵キャラクターの開始フレームはムービー尺に合わせて手動確認してください。

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;---記載するspepの数に要注意

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 710 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 710 -13, SP_01, spep_0 + 710 -13 + 2, 1);
       else
           skipFrame(0, spep_0 + 976 );  -- スキップ先フレーム指定
           setupMovie(spep_0 + 976 , SP_01, spep_0 + 976 -1 + 2, 1);

           --かめはめ波中
           SE032 = playSeVer2( spep_0 + 976, 1161, "",spep_0 + 1114, 0, 28, -1);
           setSeVolumeByWorkId( spep_0 + 976, SE032, 79 );

           SE033 = playSeVer2( spep_0 + 976, 1258, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 976, SE033, 71 );
           SE034 = playSeVer2( spep_0 + 976, 1284, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 976, SE034, 71 );

       end
    else
        setupMovie(0, SP_01, 0, 1);

    end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 手前
------------------------------------------------------
MAX_FRAME_0 = 1200;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 手前(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
--[[
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 奥(ef_001b)
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
setDisp( spep_0 + 744 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 818 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 744 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 756 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 744 + OFFSET_X, 1, -28, 10 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, -28, 10 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, -26.9, 13.5 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, -26.9, 13.5 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, -27.3, 15.6 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, -27.3, 15.6 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, -27.5, 16.1 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, -27.5, 16.1 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, -27.5, 16 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, -27.5, 16 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, -38.9, -6.1 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, -38.9, -6.1 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 49.2, -32.3 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 49.2, -32.3 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 52.1, -11.8 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 52.1, -11.8 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 47.6, -6.6 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 47.6, -6.6 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 61.2, 2.1 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 61.2, 2.1 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 71.2, 4.9 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, 71.2, 4.9 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, 76.5, -9.2 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, 76.5, -9.2 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, 78.9, -11.8 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, 78.9, -11.8 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, 90.3, -18.2 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, 90.3, -18.2 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, 98.2, -19.8 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, 98.2, -19.8 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, 128.8, -15 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, 128.8, -15 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, 127.1, -7.9 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, 127.1, -7.9 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, 126.7, -25.9 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, 126.7, -25.9 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, 150, -2.2 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, 150, -2.2 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, 146.8, -13.8 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, 146.8, -13.8 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, 161.9, -5 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, 161.9, -5 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, 174.3, -11 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, 174.3, -11 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, 158.6, -4.9 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, 158.6, -4.9 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, 161.1, 0 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, 161.1, 0 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, 200.8, 4.3 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, 200.8, 4.3 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, 233.3, -8.2 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, 233.3, -8.2 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, 263.8, -30.9 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, 263.8, -30.9 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, 278.6, -35.2 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, 278.6, -35.2 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, 301, -34 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, 301, -34 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 306.1, -41.7 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 306.1, -41.7 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 295, -48.8 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, 295, -48.8 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, 296.2, -46.6 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, 296.2, -46.6 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, 300.3, -49.7 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, 300.3, -49.7 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, 309.7, -40.7 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, 309.7, -40.7 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, 305, -34.4 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, 305, -34.4 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, 290.1, -51.2 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, 290.1, -51.2 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, 281, -39.2 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, 281, -39.2 , 0 );

setScaleKey( spep_0 + 744 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 757 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 758 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 759 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 760 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 761 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 762 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 763 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 764 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 765 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 766 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 767 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 768 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 769 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 770 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 771 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 772 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 773 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 774 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 775 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 776 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 777 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 778 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 779 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 780 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 781 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 782 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 783 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 784 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 785 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 786 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 787 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 788 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 791 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 792 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 793 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 794 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 795 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 796 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 797 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 798 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 799 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 800 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 801 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 802 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 805 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 806 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 809 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 810 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 813 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 814 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 818 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_0 + 744 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_0 + 755 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_0 + 756 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 785 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 786 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_0 + 787 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_0 + 788 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 807 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 808 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_0 + 818 + OFFSET_X, 1, 5.6 );

setBlendColor( spep_0 + 744 + OFFSET_X, 1, 0, 0.2, 0.8, 1.0, 0.4 );
setBlendColor( spep_0 + 746 + OFFSET_X, 1, 0, 0.2, 0.8, 1.0, 0.45 );
setBlendColor( spep_0 + 748 + OFFSET_X, 1, 0, 0.2, 0.8, 1.0, 0.5 );
setBlendColor( spep_0 + 750 + OFFSET_X, 1, 0, 0.2, 0.8, 1.0, 0.55 );
setBlendColor( spep_0 + 818 + OFFSET_X, 1, 0, 0, 0, 0, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 264, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 2, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 63 );

--腕クロス
SE004 = playSeVer2( spep_0 + 62, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 62, 1233, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 70, 1006, "", 0, 0, 0, -1);

--右手出す
SE007 = playSeVer2( spep_0 + 96, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 96, SE007, 100 );
setTimeStretch( SE007, 1.07, 30, 4 );

--左手出す
SE008 = playSeVer2( spep_0 + 128, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 128, SE008, -100 );
setTimeStretch( SE008, 0.93, 30, 4 );

--腕上下に
SE009 = playSeVer2( spep_0 + 164, 1003, "", 0, 0, 0, -1);

--構える
SE010 = playSeVer2( spep_0 + 184, 1233, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 194, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 194, SE011, 172 );

--気が高まっていく
SE012 = playSeVer2( spep_0 + 206, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE012, 34 );
SE013 = playSeVer2( spep_0 + 206, 1173, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE013, 75 );

--岩崩れる
SE014 = playSeVer2( spep_0 + 206, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE014, 46 );

--気が弾ける
SE015 = playSeVer2( spep_0 + 238, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE015, 100 );

--オーラ音
SE016 = playSeVer2( spep_0 + 266, 1181, "",spep_0 + 490, 0, 30, -1);

--画面遷移
SE017 = playSeVer2( spep_0 + 296, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE017, 76 );

--岩崩れる
SE018 = playSeVer2( spep_0 + 330, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE018, 54 );

--かめはめ波溜め
SE019 = playSeVer2( spep_0 + 414, 1210, "",spep_0 + 626, 36, 36, -1);
setSeVolumeByWorkId( spep_0 + 414, SE019, 65 );
setStartTimeMs( SE019,  1400 );

--カメラ前による
SE020 = playSeVer2( spep_0 + 336, 1116, "",spep_0 + 408, 0, 38, -1);

--かめはめ波溜め
SE021 = playSeVer2( spep_0 + 412, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 412, SE021, 71 );
SE022 = playSeVer2( spep_0 + 412, 1449, "",spep_0 + 624, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 412, SE022, 82 );

--かめはめ波発射
SE023 = playSeVer2( spep_0 + 568, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 568, SE023, 44 );
SE024 = playSeVer2( spep_0 + 568, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 568, SE024, 61 );
SE025 = playSeVer2( spep_0 + 568, 1423, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 568, SE025, 90 );
SE026 = playSeVer2( spep_0 + 572, 1223, "", 0, 0, 0, -1);

--かめはめ波中
SE027 = playSeVer2( spep_0 + 656, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 656, SE027, 79 );
SE028 = playSeVer2( spep_0 + 656, 1211, "",spep_0 + 1120, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 656, SE028, 251 );

-- ** ボイス ** --
--「じゃあオラも遠慮なく！」
SE_6_893 = playVoice( spep_0 + 10, 893 );
setVoiceVolume( spep_0 + 10, 893, 130 );

--「カーメー！」「ハーメー！」「波あああああ！」
SE_7_894 = playVoice( spep_0 + 158, 894 );
setVoiceVolume( spep_0 + 158, 894, 140 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 710; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE025, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
setVoiceVolume( SP_dodge - 12, SE_7_894, 0 );

pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 2 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

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
--かめはめ波飛んでいく
SE029 = playSeVer2( spep_0 + 724, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 724, SE029, 174 );

--敵ヒット
SE030 = playSeVer2( spep_0 + 756, 1011, "", 0, 0, 0, -1);

--かめはめ波加速する
SE031 = playSeVer2( spep_0 + 786, 1145, "", 0, 0, 0, -1);

--かめはめ波中
SE032 = playSeVer2( spep_0 + 872, 1161, "",spep_0 + 1114, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 872, SE032, 79 );

--威力アップ
SE033 = playSeVer2( spep_0 + 924, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 924, SE033, 71 );
SE034 = playSeVer2( spep_0 + 924, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 924, SE034, 71 );

--かめはめ波飛んでいく２
SE035 = playSeVer2( spep_0 + 992, 1133, "", 0, 0, 0, -1);

--光走る
SE036 = playSeVer2( spep_0 + 1054, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1054, SE036, 54 );

--爆発
SE037 = playSeVer2( spep_0 + 1072, 1159, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 1080, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
-- hideKoScreen();
dealDamage( spep_0 + 1086 );
endPhase( spep_0 + MAX_FRAME_0); -- 終了フレーム 1200F

else end
