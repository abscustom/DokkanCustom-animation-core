--1031280:LR_天津飯_アクティブ必殺技：気功砲
--sp_effect_a7_00072
--ut0098

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163847; --開始～フィニッシュ 前面 ef_001

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

--[[
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
--]]

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;
-- TODO: 敵キャラクターの開始フレームはムービー尺に合わせて手動確認してください。

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 810 - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 810 - 13, SP_01, spep_0 + 810 - 13 + 2, 1);
       else
           skipFrame(0, spep_0 + 636);  -- スキップ先フレーム指定
           setupMovie(spep_0 + 636, SP_01, spep_0 + 636 - 1 + 2, 1);

           --腕わかれて溜める
           SE019 = playSeVer2( spep_0 + 636, 1240, "",spep_0 + 690, 0, 22, -1);
           setSeVolumeByWorkId( spep_0 + 636, SE019, 112 );

       end
    else
        setupMovie(0, SP_01, 0, 1);

    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始～フィニッシュ
-------------------------------------------------

MAX_FRAME_0 = 1192;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始～フィニッシュ 前面 ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1);
setDisp( spep_0 + 162 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 102);
changeAnime( spep_0 + 60 + OFFSET_X, 1, 117);

setMoveKey( spep_0 + 0, 1, 203.3, -196.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 203.3, -196.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 203.3, -196.4 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 203.4, -198.2 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 203.4, -198.2 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 203.4, -198.2 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 203.4, -198.2 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 203.4, -200.3 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 203.4, -200.3 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 203.4, -202.7 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 203.4, -202.7 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 203.4, -205.3 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 203.4, -205.3 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 203.4, -208.2 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 203.4, -208.2 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 203.4, -211.3 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 203.4, -211.3 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 203.4, -214.7 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 203.4, -214.7 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 203.4, -218.2 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 203.4, -218.2 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 203.4, -222.1 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 203.4, -222.1 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 203.4, -226.2 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 203.4, -226.2 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 203.4, -230.5 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 203.4, -230.5 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 203.4, -235 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 203.4, -235 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 203.4, -239.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 203.4, -239.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 203.4, -244.9 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 203.4, -244.9 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 37.7, -124.8 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 37.7, -124.8 , 0 );

setScaleKey( spep_0 + 0, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 0.14, 0.14 );

setRotateKey( spep_0 + 0, 1.7 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1.7 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1.7 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1.7 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1.7 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1.7 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1.7 );
setRotateKey( spep_0 + 59 + OFFSET_X, 1.7 );
setRotateKey( spep_0 + 60 + OFFSET_X, 0 );
setRotateKey( spep_0 + 162 + OFFSET_X,0 );

--敵の動き2
setDisp( spep_0 + 534 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 636 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 534 + OFFSET_X, 1, 16 );

setMoveKey( spep_0 + 534 + OFFSET_X, 1, 1, -2 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 1, -2 , 0 );

setScaleKey( spep_0 + 534 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 636 + OFFSET_X, 1, 0.09, 0.09 );

setRotateKey( spep_0 + 534 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, 0 );

--敵の動き3
setDisp( spep_0 + 786 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 876 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 786 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 842 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 786 + OFFSET_X, 1, 21.6, -63.6 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, 21.6, -63.6 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, 22.1, -64.5 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, 22.1, -64.5 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, 22.5, -65.3 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, 22.5, -65.3 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, 22.9, -66.1 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, 22.9, -66.1 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, 23.3, -66.9 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, 23.3, -66.9 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, 23.7, -67.6 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, 23.7, -67.6 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, 24, -68.3 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, 24, -68.3 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, 24.4, -69 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, 24.4, -69 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 24.7, -69.7 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 24.7, -69.7 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 25, -70.3 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, 25, -70.3 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, 25.3, -70.9 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, 25.3, -70.9 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, 25.6, -71.5 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, 25.6, -71.5 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, 25.9, -72 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, 25.9, -72 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, 26.1, -72.5 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, 26.1, -72.5 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, 26.4, -73 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, 26.4, -73 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, 26.6, -73.4 , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, 26.6, -73.4 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, 26.8, -73.8 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, 26.8, -73.8 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, 27, -74.2 , 0 );
setMoveKey( spep_0 + 821 + OFFSET_X, 1, 27, -74.2 , 0 );
setMoveKey( spep_0 + 822 + OFFSET_X, 1, 27.2, -74.6 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, 27.2, -74.6 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, 27.3, -74.9 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, 27.3, -74.9 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, 27.5, -75.2 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, 27.5, -75.2 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, 27.6, -75.5 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, 27.6, -75.5 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, 27.8, -75.7 , 0 );
setMoveKey( spep_0 + 831 + OFFSET_X, 1, 27.8, -75.7 , 0 );
setMoveKey( spep_0 + 832 + OFFSET_X, 1, 27.9, -76 , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, 27.9, -76 , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, 28, -76.1 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, 28, -76.1 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, 28, -76.3 , 0 );
setMoveKey( spep_0 + 841 + OFFSET_X, 1, 28, -76.3 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, 65.8, -34.7,  0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, 65.8, -34.7,  0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, 68, -32.3,  0 );
setMoveKey( spep_0 + 845 + OFFSET_X, 1, 68, -32.3,  0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, 71.6, -30.7,  0 );
setMoveKey( spep_0 + 847 + OFFSET_X, 1, 71.6, -30.7,  0 );
setMoveKey( spep_0 + 848 + OFFSET_X, 1, 73.8, -29.8,  0 );
setMoveKey( spep_0 + 849 + OFFSET_X, 1, 73.8, -29.8,  0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, 77.1, -28.1,  0 );
setMoveKey( spep_0 + 851 + OFFSET_X, 1, 77.1, -28.1,  0 );
setMoveKey( spep_0 + 852 + OFFSET_X, 1, 79.3, -25.7,  0 );
setMoveKey( spep_0 + 853 + OFFSET_X, 1, 79.3, -25.7,  0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, 82.9, -24.1,  0 );
setMoveKey( spep_0 + 855 + OFFSET_X, 1, 82.9, -24.1,  0 );
setMoveKey( spep_0 + 856 + OFFSET_X, 1, 85.1, -23.2,  0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, 85.1, -23.2,  0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, 88.4, -21.5,  0 );
setMoveKey( spep_0 + 859 + OFFSET_X, 1, 88.4, -21.5,  0 );
setMoveKey( spep_0 + 860 + OFFSET_X, 1, 90.6, -19.1,  0 );
setMoveKey( spep_0 + 861 + OFFSET_X, 1, 90.6, -19.1,  0 );
setMoveKey( spep_0 + 862 + OFFSET_X, 1, 94.2, -17.5,  0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, 94.2, -17.5,  0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, 96.4, -16.6,  0 );
setMoveKey( spep_0 + 865 + OFFSET_X, 1, 96.4, -16.6,  0 );
setMoveKey( spep_0 + 866 + OFFSET_X, 1, 99.7, -14.9,  0 );
setMoveKey( spep_0 + 867 + OFFSET_X, 1, 99.7, -14.9,  0 );
setMoveKey( spep_0 + 868 + OFFSET_X, 1, 101.9, -12.4,  0 );
setMoveKey( spep_0 + 869 + OFFSET_X, 1, 101.9, -12.4,  0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, 105.5, -10.9,  0 );
setMoveKey( spep_0 + 871 + OFFSET_X, 1, 105.5, -10.9,  0 );
setMoveKey( spep_0 + 872 + OFFSET_X, 1, 107.7, -9.9,  0 );
setMoveKey( spep_0 + 873 + OFFSET_X, 1, 107.7, -9.9,  0 );
setMoveKey( spep_0 + 874 + OFFSET_X, 1, 111, -8.3,  0 );
setMoveKey( spep_0 + 875 + OFFSET_X, 1, 111, -8.3,  0 );
setMoveKey( spep_0 + 876 + OFFSET_X, 1, 109.8, -5.9 , 0 );

setScaleKey( spep_0 + 786 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 787 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 788 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 793 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 794 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 797 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 798 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 805 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 806 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 813 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 814 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 823 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 824 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 841 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 842 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 876 + OFFSET_X, 1, 2.53, 2.53 );

setRotateKey( spep_0 + 786 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_0 + 841 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_0 + 842 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_0 + 876 + OFFSET_X, 1, -22.5 );

setBlendColor( spep_0 + 786 + OFFSET_X, 1, 0, 0, 0, 0, 0 );
setBlendColor( spep_0 + 842 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_0 + 880 + OFFSET_X, 1, 0, 0, 0, 0, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--飛び上がる
SE002 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);	
SE003 = playSeVer2( spep_0 + 44, 1117, "", 0, 0, 0, -1);

--セリフカットイン
SE004 = playSeVer2( spep_0 + 148, 1018, "", 0, 0, 0, -1);

--構える
SE005 = playSeVer2( spep_0 + 196, 1003, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 208, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 208, 1233, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 222, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE008, 78 );

--溜め
SE009 = playSeVer2( spep_0 + 222, 1397, "",spep_0 + 688, 0, 32, -1);

--力む
SE010 = playSeVer2( spep_0 + 236, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE010, 67 );

--腕わかれて溜める
SE011 = playSeVer2( spep_0 + 300, 1240, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 308, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE012, 63 );
SE013 = playSeVer2( spep_0 + 354, 1194, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 354, SE013, 158 );
SE014 = playSeVer2( spep_0 + 354, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 354, SE014, 63 );

--絞り込む
SE015 = playSeVer2( spep_0 + 556, 1122, "",spep_0 + 628, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 556, SE015, 79 );
SE016 = playSeVer2( spep_0 + 560, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 560, SE016, 119 );
SE017 = playSeVer2( spep_0 + 562, 1254, "",spep_0 + 642, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 562, SE017, 63 );
SE018 = playSeVer2( spep_0 + 572, 1296, "",spep_0 + 658, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 572, SE018, 82 );
setPitch( spep_0 + 572, SE018, 300 );
setTimeStretch( SE018, 1.2, 30, 4 );

--腕わかれて溜める
SE019 = playSeVer2( spep_0 + 586, 1240, "",spep_0 + 690, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 586, SE019, 112 );

--気弾発射
SE020 = playSeVer2( spep_0 + 654, 1145, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 654, 1379, "", 0, 0, 0, -1);

--気弾発射2
SE022 = playSeVer2( spep_0 + 720, 1213, "",spep_0 + 956, 0, 98, -1);
setSeVolumeByWorkId( spep_0 + 720, SE022, 76 );
SE023 = playSeVer2( spep_0 + 724, 1423, "",spep_0 + 934, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 724, SE023, 120 );

-- ** ボイス ** --
--「いくぞ！」
playVoice( spep_0 + 148, 1008 );
setVoiceVolume( spep_0 + 148, 1008, 140 );
--「ねらいは…」
playVoice( spep_0 + 400, 1009 );
setVoiceVolume( spep_0 + 400, 1009, 140 );
--「武舞台だ」
playVoice( spep_0 + 534, 1010 );
setVoiceVolume( spep_0 + 534, 1010, 140 );
--「気功砲！」
playVoice( spep_0 + 644, 1011 );
setVoiceVolume( spep_0 + 644, 1011, 140 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 810; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 2 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

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
SE024 = playSeVer2( spep_0 + 820, 1011, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 826, 1024, "",spep_0 + 954, 0, 86, -1);

--爆発
SE026 = playSeVer2( spep_0 + 914, 1069, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 930, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 930, SE027, 65 );
SE028 = playSeVer2( spep_0 + 1002, 1168, "", 0, 0, 0, -1);

--画面遷移
SE029 = playSeVer2( spep_0 + 1044, 8, "", 0, 0, 0, -1);

--終わり
-- hideKoScreen();
dealDamage( spep_0 + 1060);
endPhase( spep_0 + MAX_FRAME_0); --1192F

else end