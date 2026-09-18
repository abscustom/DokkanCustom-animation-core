--1032580:LR_超サイヤ人3ベジータ(DAIMA)_アクティブ必殺：ファイナルフラッシュ
--sp_effect_b1_00352
--ut0119

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164384;  -- 左右ずつ手を広げFF構えて発射 ef_001
SP_01r = 164385;  -- 左右ずつ手を広げFF構えて発射 ef_001r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);
setAlphaKey( 0, 1, 255 );

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
        spep_0 = 0;---記載するspepの数に要注意

        if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 650 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 650 -13, SP_01, spep_0 + 650 -13 + 2, 1);
        else
           skipFrame(0, spep_0 + 906);  -- スキップ先フレーム指定
           setupMovie(spep_0 + 906, SP_01, spep_0 + 906 -1 + 2, 1);
SE052 = playSeVer2( spep_0 + 908, 1296, "",spep_0 + 984, 0, 66, -1);
           setPitch( spep_0 + 908, SE052, 400 );
           setTimeStretch( SE052, 1.27, 30, 4 );
           SE054 = playSeVer2( spep_0 + 908, 1069, "", spep_0 + 984, 0, 66, -1);
           SE051 = playSeVer2( spep_0 + 908, 1258, "", spep_0 + 984, 0, 66, -1);

        end
    else 
        setupMovie(0, SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 左右ずつ手を広げFF構えて発射
-------------------------------------------------
MAX_FRAME_0 = 1092;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 左右ずつ手を広げFF構えて発射(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 684 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 716 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 684 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 692 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 684 + OFFSET_X, 1, 26, 9.3 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, 26, 9.3 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, 27.4, 7.9 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, 27.4, 7.9 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, 27.1, 9.3 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, 27.1, 9.3 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 27.8, 7.9 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, 27.8, 7.9 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, 31.5, -0.4 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, 31.5, -0.4 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, 42.5, -16.8 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, 42.5, -16.8 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, 22.5, -0.8 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, 22.5, -0.8 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, 32.5, 11.2 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, 32.5, 11.2 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 36.5, 17.2 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, 36.5, 17.2 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, 43.5, 26.2 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, 43.5, 26.2 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, 39.8, -21.9 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, 39.8, -21.9 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, 47.2, -15.5 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, 47.2, -15.5 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 38.5, -0.1 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, 38.5, -0.1 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 35.9, 7.9 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, 35.9, 7.9 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 47.1, 22.5 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 47.1, 22.5 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 46.2, -10.4 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 46.2, -10.4 , 0 );

setScaleKey( spep_0 + 684 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 716 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_0 + 684 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 691 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 692 + OFFSET_X, 1, -54.1 );
setRotateKey( spep_0 + 716 + OFFSET_X, 1, -54.1 );

setBlendColor( spep_0 + 690 + OFFSET_X, 1, 0, 200., 225, 0, 0.3 );
setBlendColor( spep_0 + 692 + OFFSET_X, 1, 0, 200., 225, 0, 0.8 );

setAlphaKey( spep_0 + 684 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 716 + OFFSET_X, 1, 255 );

--敵の動き2

setDisp( spep_0 + 856 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 906 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 856 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 880 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 856 + OFFSET_X, 1, 4.9, 1.6 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, 4.9, 1.6 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, 12.5, -12 , 0 );
setMoveKey( spep_0 + 859 + OFFSET_X, 1, 12.5, -12 , 0 );
setMoveKey( spep_0 + 860 + OFFSET_X, 1, 4.9, 6.7 , 0 );
setMoveKey( spep_0 + 861 + OFFSET_X, 1, 4.9, 6.7 , 0 );
setMoveKey( spep_0 + 862 + OFFSET_X, 1, 10, -5.2 , 0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, 10, -5.2 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, 4, -0.1 , 0 );
setMoveKey( spep_0 + 865 + OFFSET_X, 1, 4, -0.1 , 0 );
setMoveKey( spep_0 + 866 + OFFSET_X, 1, 9.1, 0.7 , 0 );
setMoveKey( spep_0 + 867 + OFFSET_X, 1, 9.1, 0.7 , 0 );
setMoveKey( spep_0 + 868 + OFFSET_X, 1, 4, -4.4 , 0 );
setMoveKey( spep_0 + 869 + OFFSET_X, 1, 4, -4.4 , 0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, 8.3, -4.4 , 0 );
setMoveKey( spep_0 + 871 + OFFSET_X, 1, 8.3, -4.4 , 0 );
setMoveKey( spep_0 + 872 + OFFSET_X, 1, 5.7, 1.6 , 0 );
setMoveKey( spep_0 + 873 + OFFSET_X, 1, 5.7, 1.6 , 0 );
setMoveKey( spep_0 + 874 + OFFSET_X, 1, 10, 5 , 0 );
setMoveKey( spep_0 + 875 + OFFSET_X, 1, 10, 5 , 0 );
setMoveKey( spep_0 + 876 + OFFSET_X, 1, 13.4, -15.4 , 0 );
setMoveKey( spep_0 + 877 + OFFSET_X, 1, 13.4, -15.4 , 0 );
setMoveKey( spep_0 + 878 + OFFSET_X, 1, 14.2, 1.6 , 0 );
setMoveKey( spep_0 + 879 + OFFSET_X, 1, 14.2, 1.6 , 0 );
setMoveKey( spep_0 + 880 + OFFSET_X, 1, 15.9, 62 , 0 );
setMoveKey( spep_0 + 881 + OFFSET_X, 1, 15.9, 62 , 0 );
setMoveKey( spep_0 + 882 + OFFSET_X, 1, 24.4, 70.5 , 0 );
setMoveKey( spep_0 + 883 + OFFSET_X, 1, 24.4, 70.5 , 0 );
setMoveKey( spep_0 + 884 + OFFSET_X, 1, 27.4, 66.9 , 0 );
setMoveKey( spep_0 + 885 + OFFSET_X, 1, 27.4, 66.9 , 0 );
setMoveKey( spep_0 + 886 + OFFSET_X, 1, 24.7, 67.2 , 0 );
setMoveKey( spep_0 + 887 + OFFSET_X, 1, 24.7, 67.2 , 0 );
setMoveKey( spep_0 + 888 + OFFSET_X, 1, 27.7, 64.2 , 0 );
setMoveKey( spep_0 + 889 + OFFSET_X, 1, 27.7, 64.2 , 0 );
setMoveKey( spep_0 + 890 + OFFSET_X, 1, 24.7, 67.2 , 0 );
setMoveKey( spep_0 + 891 + OFFSET_X, 1, 24.7, 67.2 , 0 );
setMoveKey( spep_0 + 892 + OFFSET_X, 1, 31.7, 63.8 , 0 );
setMoveKey( spep_0 + 893 + OFFSET_X, 1, 31.7, 63.8 , 0 );
setMoveKey( spep_0 + 894 + OFFSET_X, 1, 36.8, 70.6 , 0 );
setMoveKey( spep_0 + 895 + OFFSET_X, 1, 36.8, 70.6 , 0 );
setMoveKey( spep_0 + 896 + OFFSET_X, 1, 40.2, 64.6 , 0 );
setMoveKey( spep_0 + 897 + OFFSET_X, 1, 40.2, 64.6 , 0 );
setMoveKey( spep_0 + 898 + OFFSET_X, 1, 40.2, 66.3 , 0 );
setMoveKey( spep_0 + 899 + OFFSET_X, 1, 40.2, 66.3 , 0 );
setMoveKey( spep_0 + 900 + OFFSET_X, 1, 39.5, 66.3 , 0 );
setMoveKey( spep_0 + 901 + OFFSET_X, 1, 39.5, 66.3 , 0 );
setMoveKey( spep_0 + 902 + OFFSET_X, 1, 36.9, 68 , 0 );
setMoveKey( spep_0 + 903 + OFFSET_X, 1, 36.9, 68 , 0 );
setMoveKey( spep_0 + 904 + OFFSET_X, 1, 37.9, 65.5 , 0 );
setMoveKey( spep_0 + 906 + OFFSET_X, 1, 37.9, 65.5 , 0 );

setScaleKey( spep_0 + 856 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 906 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_0 + 856 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 879 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 880 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 906 + OFFSET_X, 1, -29 );

setBlendColor( spep_0 + 856 + OFFSET_X, 1, 3, 0., 0, 0, 0 );

setAlphaKey( spep_0 + 856 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 885 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 886 + OFFSET_X, 1, 120 );
setAlphaKey( spep_0 + 887 + OFFSET_X, 1, 120 );
setAlphaKey( spep_0 + 888 + OFFSET_X, 1, 80 );
setAlphaKey( spep_0 + 889 + OFFSET_X, 1, 80 );
setAlphaKey( spep_0 + 890 + OFFSET_X, 1, 30 );
setAlphaKey( spep_0 + 905 + OFFSET_X, 1, 30 );
setAlphaKey( spep_0 + 906 + OFFSET_X, 1, 255 );

-- ** 音 ** --

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE002 = playSeVer2( spep_0 + 0, 1513, "",spep_0 + 514, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );
SE005 = playSeVer2( spep_0 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE005, 63 );
SE007 = playSeVer2( spep_0 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE007, 63 );
SE011 = playSeVer2( spep_0 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE011, 63 );
SE012 = playSeVer2( spep_0 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE012, 63 );
SE014 = playSeVer2( spep_0 + 108, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE014, 63 );
SE016 = playSeVer2( spep_0 + 132, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE016, 63 );
SE017 = playSeVer2( spep_0 + 156, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE017, 63 );
SE018 = playSeVer2( spep_0 + 180, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE018, 63 );
SE020 = playSeVer2( spep_0 + 204, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE020, 63 );
SE021 = playSeVer2( spep_0 + 228, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE021, 63 );
SE023 = playSeVer2( spep_0 + 252, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE023, 63 );
SE025 = playSeVer2( spep_0 + 276, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE025, 63 );
SE028 = playSeVer2( spep_0 + 300, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE028, 63 );
SE033 = playSeVer2( spep_0 + 324, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 324, SE033, 63 );
SE034 = playSeVer2( spep_0 + 348, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 348, SE034, 63 );
SE035 = playSeVer2( spep_0 + 372, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 372, SE035, 63 );
SE037 = playSeVer2( spep_0 + 396, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 396, SE037, 63 );
SE038 = playSeVer2( spep_0 + 420, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 420, SE038, 63 );
SE039 = playSeVer2( spep_0 + 444, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 444, SE039, 63 );

--左腕突き出す
SE003 = playSeVer2( spep_0 + 6, 1189, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 6, 1151, "", 0, 0, 0, -1);
setPitch( spep_0 + 6, SE004, 1000 );
setTimeStretch( SE004, 1.67, 30, 4 );
SE006 = playSeVer2( spep_0 + 12, 1006, "", 0, 0, 0, -1);

--右腕突き出す
SE008 = playSeVer2( spep_0 + 52, 1189, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 52, 1151, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 56, 1006, "", 0, 0, 0, -1);

--カメラ回転
SE013 = playSeVer2( spep_0 + 84, 1175, "",spep_0 + 344, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 84, SE013, 35 );
SE015 = playSeVer2( spep_0 + 108, 63, "", 0, 0, 0, -1);

--電気音
SE019 = playSeVer2( spep_0 + 186, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE019, 56 );
SE022 = playSeVer2( spep_0 + 228, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE022, 60 );

--両腕前に出す
SE024 = playSeVer2( spep_0 + 260, 1116, "",spep_0 + 310, 0, 26, -1);
SE026 = playSeVer2( spep_0 + 288, 1189, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 288, 1233, "", 0, 0, 0, -1);

--気弾溜め
SE029 = playSeVer2( spep_0 + 306, 1507, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE029, 141 );
setPitch( spep_0 + 306, SE029, 300 );
setTimeStretch( SE029, 1.2, 30, 4 );
SE030 = playSeVer2( spep_0 + 306, 1504, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 306, 1043, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE031, 89 );
SE032 = playSeVer2( spep_0 + 306, 1490, "",spep_0 + 514, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 306, SE032, 60 );

--セリフカットイン
SE036 = playSeVer2( spep_0 + 396, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 396, SE036, 63 );

--気弾発射１
SE040 = playSeVer2( spep_0 + 472, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 472, SE040, 78 );
SE041 = playSeVer2( spep_0 + 472, 1512, "",spep_0 + 616, 0, 94, -1);
setSeVolumeByWorkId( spep_0 + 472, SE041, 61 );
SE042 = playSeVer2( spep_0 + 472, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 472, SE042, 71 );

--気弾発射２
SE043 = playSeVer2( spep_0 + 582, 1114, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 582, 1512, "",spep_0 + 726, 0, 94, -1);
setSeVolumeByWorkId( spep_0 + 252, SE044, 61 );
SE045 = playSeVer2( spep_0 + 582, 1212, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 582, SE045, 79 );

-- ** ボイス ** --

--「ファイナルフラーーッシュ！！！」
playVoice( spep_0 + 386, 1139 );
setVoiceVolume( spep_0 + 386, 1139, 142 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 650; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE040, 0);
stopSe( SP_dodge - 12, SE041, 0);
stopSe( SP_dodge - 12, SE042, 0);
stopSe( SP_dodge - 12, SE043, 0);
stopSe( SP_dodge - 12, SE044, 0);
stopSe( SP_dodge - 12, SE045, 0);

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

--敵ヒット
SE046 = playSeVer2( spep_0 + 686, 1068, "", 0, 0, 0, -1);

--気弾中
SE047 = playSeVer2( spep_0 + 710, 1161, "",spep_0 + 936, 0, 96, -1);
setSeVolumeByWorkId( spep_0 + 710, SE047, 58 );
SE048 = playSeVer2( spep_0 + 710, 1211, "",spep_0 + 950, 0, 98, -1);
setSeVolumeByWorkId( spep_0 + 710, SE048, 100 );
SE049 = playSeVer2( spep_0 + 710, 1513, "",spep_0 + 938, 0, 94, -1);
setSeVolumeByWorkId( spep_0 + 710, SE049, 57 );


--敵飲まれる
SE050 = playSeVer2( spep_0 + 828, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 828, SE050, 80 );
SE051 = playSeVer2( spep_0 + 828, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 828, SE051, 80 );

--気弾飛んでいく
SE052 = playSeVer2( spep_0 + 898, 1296, "",spep_0 + 984, 0, 66, -1);
setPitch( spep_0 + 898, SE052, 400 );
setTimeStretch( SE052, 1.27, 30, 4 );
SE053 = playSeVer2( spep_0 + 914, 1173, "",spep_0 + 1042, 0, 50, -1);

--爆発
SE054 = playSeVer2( spep_0 + 1004, 1069, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 1026, 1188, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_0 + 1050, 1067, "", 0, 0, 0, -1);

-- ** ボイス ** --

--「はああああ…！！」
playVoice( spep_0 + 704, 1140 );
setVoiceVolume( spep_0 + 704, 1140, 136 );

--「たーーーっ！！！」
playVoice( spep_0 + 802, 1141 );
setVoiceVolume( spep_0 + 802, 1141, 136 );

-- ** おわり ** --
hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_0 + 1000); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 ); -- 10942(KO時 1412F)

else end