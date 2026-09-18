--1034340:LR_孫悟飯(ビースト)_アクティブ必殺：魔貫光殺砲
--sp_effect_a3_00130
--ut0132

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164526 --本体 ef_001
SP_02 = 164527 --KO ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);

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

--setAlphaKey( 0, 1, 255 );

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1) then

        spep_0 = 0;

       if(_IS_DODGE_ == 1) then

           skipFrame(0, spep_0 + 880 - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 880 - 13, SP_01, spep_0 + 880 - 13 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

       else

           timing_skip = 1194;

           skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
           setupMovie(spep_0 + timing_skip, SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

           -- ** 音 ** --
           --爆発予兆
           SE053 = playSeVer2( spep_0 + 1194+1, 1157, "",spep_0 + 1284, 0, 26, -1);


        end

    else 

      setupMovie(0, SP_01, 0, 1);  -- スキップしない時の通常再生時用のsetupMovie関数

    end

else end
------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 本体 ef_001
-------------------------------------------------
MAX_FRAME_0 = 1336;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 本体(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

if(_IS_DEAD_LAST_ == 1) then
    spep_1 = 1334
    KO = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- KO(ef_002)
    setEffMoveKey( spep_1 + 0, KO, 0, 0 , 0);
    setEffMoveKey( spep_1 + 80, KO, 0, 0 , 0);
    setEffScaleKey( spep_1 + 0, KO, 1.0, 1.0);
    setEffScaleKey( spep_1 + 80, KO, 1.0, 1.0);
    setEffRotateKey( spep_1 + 0, KO, 0);
    setEffRotateKey( spep_1 + 80, KO, 0);
    setEffAlphaKey( spep_1 + 0, KO, 255);
    setEffAlphaKey( spep_1 + 80, KO, 255);
end

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き
setDisp( spep_0 + 826 + OFFSET_X, 1, 1);
setDisp( spep_0 + 894 + OFFSET_X, 1, 0);

changeAnimeBySide( spep_0 + 826 + OFFSET_X, 1, 17 );

setMoveKey( spep_0 + 826 + OFFSET_X, 1, -113.8, 114.9 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, -113.8, 114.9 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, -113.8, 114.7 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, -113.8, 114.7 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, -113.8, 114.2 , 0 );
setMoveKey( spep_0 + 831 + OFFSET_X, 1, -113.8, 114.2 , 0 );
setMoveKey( spep_0 + 832 + OFFSET_X, 1, -113.7, 113.7 , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, -113.7, 113.7 , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, -113.8, 112.8 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, -113.8, 112.8 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, -113.8, 111.8 , 0 );
setMoveKey( spep_0 + 837 + OFFSET_X, 1, -113.8, 111.8 , 0 );
setMoveKey( spep_0 + 838 + OFFSET_X, 1, -113.7, 110.7 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, -113.7, 110.7 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, -113.8, 109.3 , 0 );
setMoveKey( spep_0 + 841 + OFFSET_X, 1, -113.8, 109.3 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, -113.8, 108 , 0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, -113.8, 108 , 0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, -113.8, 106.4 , 0 );
setMoveKey( spep_0 + 845 + OFFSET_X, 1, -113.8, 106.4 , 0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, -113.7, 104.7 , 0 );
setMoveKey( spep_0 + 847 + OFFSET_X, 1, -113.7, 104.7 , 0 );
setMoveKey( spep_0 + 848 + OFFSET_X, 1, -113.7, 102.9 , 0 );
setMoveKey( spep_0 + 849 + OFFSET_X, 1, -113.7, 102.9 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, -113.8, 100.8 , 0 );
setMoveKey( spep_0 + 851 + OFFSET_X, 1, -113.8, 100.8 , 0 );
setMoveKey( spep_0 + 852 + OFFSET_X, 1, -113.7, 98.5 , 0 );
setMoveKey( spep_0 + 853 + OFFSET_X, 1, -113.7, 98.5 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, -113.7, 96 , 0 );
setMoveKey( spep_0 + 855 + OFFSET_X, 1, -113.7, 96 , 0 );
setMoveKey( spep_0 + 856 + OFFSET_X, 1, -113.8, 92.8 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, -113.8, 92.8 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, -113.9, 78.9 , 0 );
setMoveKey( spep_0 + 859 + OFFSET_X, 1, -113.9, 78.9 , 0 );
setMoveKey( spep_0 + 860 + OFFSET_X, 1, -113.7, 59.2 , 0 );
setMoveKey( spep_0 + 861 + OFFSET_X, 1, -113.7, 59.2 , 0 );
setMoveKey( spep_0 + 862 + OFFSET_X, 1, -113.7, 42.7 , 0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, -113.7, 42.7 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, -113.7, 32.9 , 0 );
setMoveKey( spep_0 + 865 + OFFSET_X, 1, -113.7, 32.9 , 0 );
setMoveKey( spep_0 + 866 + OFFSET_X, 1, -113.7, 28.6 , 0 );
setMoveKey( spep_0 + 867 + OFFSET_X, 1, -113.7, 28.6 , 0 );
setMoveKey( spep_0 + 868 + OFFSET_X, 1, -113.7, 26.1 , 0 );
setMoveKey( spep_0 + 869 + OFFSET_X, 1, -113.7, 26.1 , 0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, -113.8, 24.8 , 0 );
setMoveKey( spep_0 + 871 + OFFSET_X, 1, -113.8, 24.8 , 0 );
setMoveKey( spep_0 + 872 + OFFSET_X, 1, -113.8, 24.2 , 0 );
setMoveKey( spep_0 + 873 + OFFSET_X, 1, -113.8, 24.2 , 0 );
setMoveKey( spep_0 + 874 + OFFSET_X, 1, -113.8, 23.7 , 0 );
setMoveKey( spep_0 + 875 + OFFSET_X, 1, -113.8, 23.7 , 0 );
setMoveKey( spep_0 + 876 + OFFSET_X, 1, -113.8, 23 , 0 );
setMoveKey( spep_0 + 877 + OFFSET_X, 1, -113.8, 23 , 0 );
setMoveKey( spep_0 + 878 + OFFSET_X, 1, -113.8, 21.6 , 0 );
setMoveKey( spep_0 + 879 + OFFSET_X, 1, -113.8, 21.6 , 0 );
setMoveKey( spep_0 + 880 + OFFSET_X, 1, -113.8, 19.1 , 0 );
setMoveKey( spep_0 + 881 + OFFSET_X, 1, -113.8, 19.1 , 0 );
setMoveKey( spep_0 + 882 + OFFSET_X, 1, -113.8, 15.2 , 0 );
setMoveKey( spep_0 + 883 + OFFSET_X, 1, -113.8, 15.2 , 0 );
setMoveKey( spep_0 + 884 + OFFSET_X, 1, -113.7, 9.3 , 0 );
setMoveKey( spep_0 + 885 + OFFSET_X, 1, -113.7, 9.3 , 0 );
setMoveKey( spep_0 + 886 + OFFSET_X, 1, -113.8, 6.4 , 0 );
setMoveKey( spep_0 + 887 + OFFSET_X, 1, -113.8, 6.4 , 0 );
setMoveKey( spep_0 + 888 + OFFSET_X, 1, -113.8, 3.6 , 0 );
setMoveKey( spep_0 + 889 + OFFSET_X, 1, -113.8, 3.6 , 0 );
setMoveKey( spep_0 + 890 + OFFSET_X, 1, -113.7, -11.8 , 0 );
setMoveKey( spep_0 + 891 + OFFSET_X, 1, -113.7, -11.8 , 0 );
setMoveKey( spep_0 + 892 + OFFSET_X, 1, -113.8, -31 , 0 );
setMoveKey( spep_0 + 894 + OFFSET_X, 1, -113.8, -31 , 0 );

setScaleKey( spep_0 + 826 + OFFSET_X, 1, 0.01, 0.01 );
setScaleKey( spep_0 + 831 + OFFSET_X, 1, 0.01, 0.01 );
setScaleKey( spep_0 + 832 + OFFSET_X, 1, 0.02, 0.02 );
setScaleKey( spep_0 + 835 + OFFSET_X, 1, 0.02, 0.02 );
setScaleKey( spep_0 + 836 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_0 + 839 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_0 + 840 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_0 + 843 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_0 + 844 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 847 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 848 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 849 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 850 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 853 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 854 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 855 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 856 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 857 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 858 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 859 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 860 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 861 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 862 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 863 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 864 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 865 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 866 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 867 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 868 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 869 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 870 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 871 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 872 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 873 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 874 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 875 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 876 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 877 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 878 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 879 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 880 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 881 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 882 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 883 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 884 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 885 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 886 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 887 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 888 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 889 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 890 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 891 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 892 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 894 + OFFSET_X, 1, 4.5, 4.5 );

setRotateKey( spep_0 + 826 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_0 + 827 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_0 + 828 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 829 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 830 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_0 + 831 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_0 + 832 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 857 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 858 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 861 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 862 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_0 + 863 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_0 + 864 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_0 + 865 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_0 + 866 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 867 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 868 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_0 + 869 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_0 + 870 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_0 + 871 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_0 + 872 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_0 + 873 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_0 + 874 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_0 + 875 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_0 + 876 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 877 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 878 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_0 + 879 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_0 + 880 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_0 + 881 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_0 + 882 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_0 + 883 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_0 + 884 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_0 + 885 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_0 + 886 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_0 + 887 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_0 + 888 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_0 + 889 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_0 + 890 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_0 + 891 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_0 + 892 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 894 + OFFSET_X, 1, 11 );

setBlendColor( spep_0 + 826 + OFFSET_X, 1, 2, 0, 0.04, 1, 0.38 );
setBlendColor( spep_0 + 868 + OFFSET_X, 1, 2, 0, 0.05, 1, 0.38 );
setBlendColor( spep_0 + 870 + OFFSET_X, 1, 2, 0, 0.06, 1, 0.38 );
setBlendColor( spep_0 + 872 + OFFSET_X, 1, 2, 0, 0.07, 1, 0.38 );
setBlendColor( spep_0 + 874 + OFFSET_X, 1, 2, 0, 0.08, 1, 0.38 );
setBlendColor( spep_0 + 878 + OFFSET_X, 1, 2, 0, 0.09, 1, 0.38 );
setBlendColor( spep_0 + 880 + OFFSET_X, 1, 3, 0.1, 0.1, 1, 0.2 );
setBlendColor( spep_0 + 882 + OFFSET_X, 1, 3, 0.2, 0.2, 1, 0.2 );
setBlendColor( spep_0 + 884 + OFFSET_X, 1, 3, 0.4, 0.4, 1, 0.2 );
setBlendColor( spep_0 + 886 + OFFSET_X, 1, 3, 0.8, 0.8, 1, 0.2 );
setBlendColor( spep_0 + 888 + OFFSET_X, 1, 3, 0.8, 0.8, 1, 0.4 );
setBlendColor( spep_0 + 890 + OFFSET_X, 1, 3, 0.8, 0.8, 1, 0.5 );
setBlendColor( spep_0 + 892 + OFFSET_X, 1, 3, 0.8, 0.8, 1, 0.7 );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 171, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 7, 1491, "", 0, 0, 0, -1);

--気ダメ
SE004 = playSeVer2( spep_0 + 66, 1035, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 66, 1503, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 66, 1504, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 66, 1513, "",spep_0 + 153, 0, 16, -1);
SE008 = playSeVer2( spep_0 + 66, 1176, "",spep_0 + 153, 0, 17, -1);



--気が集まる
SE009 = playSeVer2( spep_0 + 131, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 131, SE009, 151 );
SE010 = playSeVer2( spep_0 + 139, 1252, "",spep_0 + 265, 0, 29, -1);
setSeVolumeByWorkId( spep_0 + 139, SE010, 130 );
SE011 = playSeVer2( spep_0 + 147, 1216, "",spep_0 + 284, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 147, SE011, 140 );
setTimeStretch( SE011, 1.43, 30, 4 );
SE012 = playSeVer2( spep_0 + 147, 1215, "",spep_0 + 284, 0, 19, -1);
SE003 = playSeVer2( spep_0 + 151, 1266, "",spep_0 + 330, 26, 30, -1);
setStartTimeMs( SE003,  2183 );

--画面遷移
SE013 = playSeVer2( spep_0 + 249, 8, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 256, 1072, "", 0, 0, 0, -1);

--オーラ
SE015 = playSeVer2( spep_0 + 256, 1176, "",spep_0 + 490, 15, 10, -1);
setSeVolumeByWorkId( spep_0 + 256, SE015, 60 );
SE016 = playSeVer2( spep_0 + 256, 1513, "",spep_0 + 490, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 256, SE016, 85 );

--セリフカットイン
SE017 = playSeVer2( spep_0 + 275, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 275, SE017, 63 );

--画面遷移
SE018 = playSeVer2( spep_0 + 282, 44, "", 0, 0, 0, -1);

--気弾溜め
SE019 = playSeVer2( spep_0 + 363, 1200, "",spep_0 + 499, 26, 26, -1);
setStartTimeMs( SE019,  1167 );
SE020 = playSeVer2( spep_0 + 363, 1210, "",spep_0 + 699, 0, 23, -1);
setSeVolumeByWorkId( spep_0 + 363, SE020, 67 );

--爆発
SE021 = playSeVer2( spep_0 + 368, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 368, SE021, 70 );

--気弾溜め
SE022 = playSeVer2( spep_0 + 368, 1204, "",spep_0 + 513, 0, 25, -1);
setPitch( spep_0 + 368, SE022, 700 );
setTimeStretch( SE022, 1.47, 30, 4 );
SE023 = playSeVer2( spep_0 + 368, 1043, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 395, 1147, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 454, 1200, "",spep_0 + 590, 26, 26, -1);
setStartTimeMs( SE024,  1167 );
SE026 = playSeVer2( spep_0 + 474, 1204, "",spep_0 + 671, 0, 27, -1);
SE027 = playSeVer2( spep_0 + 551, 1200, "",spep_0 + 687, 26, 26, -1);
setStartTimeMs( SE027,  1167 );
SE029 = playSeVer2( spep_0 + 577, 1147, "",spep_0 + 678, 0, 23, -1);

--爆発２
SE028 = playSeVer2( spep_0 + 482, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE028, 70 );

--発射前予兆
SE030 = playSeVer2( spep_0 + 628, 1296, "",spep_0 + 703, 16, 27, -1);
setPitch( spep_0 + 628, SE030, 500 );
setTimeStretch( SE030, 1.33, 30, 4 );
SE031 = playSeVer2( spep_0 + 636, 1360, "",spep_0 + 699, 0, 23, -1);

--気弾発射
SE032 = playSeVer2( spep_0 + 675, 1256, "", 0, 0, 0, -1);
setPitch( spep_0 + 675, SE032, 200 );
setTimeStretch( SE032, 1.13, 30, 4 );
SE033 = playSeVer2( spep_0 + 675, 1145, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 675, 1264, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 675, 1512, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 675, SE035, 76 );
SE036 = playSeVer2( spep_0 + 675, 1027, "", 0, 0, 0, -1);

--気弾飛んでいく
SE037 = playSeVer2( spep_0 + 760, 1213, "", 0, 35, 0, -1);
SE038 = playSeVer2( spep_0 + 760, 1044, "",spep_0 + 911, 0, 18, -1);
SE039 = playSeVer2( spep_0 + 760, 1304, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 760, 1122, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 765, 1211, "",spep_0 + 1137, 0, 35, -1);
setSeVolumeByWorkId( spep_0 + 765, SE041, 200 );

-- ** ボイス ** --
--「終わりにしてやる!!」
playVoice( spep_0 + 271, 1218 );
setVoiceVolume( spep_0 + 271, 1218, 120 );

--「魔貫光、殺砲ぉぉーーーーーーー!!」
playVoice( spep_0 + 411, 1219 );
setVoiceVolume( spep_0 + 411, 1219, 120 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 880; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE034, 0);
stopSe( SP_dodge - 12, SE035, 0);
stopSe( SP_dodge - 12, SE037, 0);
stopSe( SP_dodge - 12, SE038, 0);
stopSe( SP_dodge - 12, SE039, 0);
stopSe( SP_dodge - 12, SE040, 0);
stopSe( SP_dodge - 12, SE041, 0);
pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0 );

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--敵ヒット
SE042 = playSeVer2( spep_0 + 889, 1011, "", 0, 0, 0, -1);				
SE043 = playSeVer2( spep_0 + 889, 1126, "", 0, 0, 0, -1);				
SE044 = playSeVer2( spep_0 + 919, 1161, "",spep_0 + 1129, 0, 39, -1);
setSeVolumeByWorkId( spep_0 + 919, SE044, 72 );
SE045 = playSeVer2( spep_0 + 919, 1278, "",spep_0 + 1084, 0, 79, -1);
SE046 = playSeVer2( spep_0 + 931, 1145, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 951, 1121, "",spep_0 + 1121, 0, 29, -1);
setSeVolumeByWorkId( spep_0 + 951, SE047, 80 );
setPitch( spep_0 + 951, SE047, 400 );
setTimeStretch( SE047, 1.27, 30, 4 );

--気弾飛んでく２
SE048 = playSeVer2( spep_0 + 1008, 1423, "",spep_0 + 1133, 0, 26, -1);
SE049 = playSeVer2( spep_0 + 1017, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1017, SE049, 80 );
setTimeStretch( SE049, 1.67, 30, 4 );

--地面抉れる
SE050 = playSeVer2( spep_0 + 1090, 1044, "",spep_0 + 1199, 78, 18, -1);
setSeVolumeByWorkId( spep_0 + 1090, SE050, 224 );
setStartTimeMs( SE050,  83 );

--爆発
SE051 = playSeVer2( spep_0 + 1093, 1159, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_0 + 1113, 1024, "", 0, 0, 0, -1);

--爆発予兆
SE053 = playSeVer2( spep_0 + 1185, 1157, "",spep_0 + 1284, 0, 26, -1);

--爆発
SE054 = playSeVer2( spep_0 + 1222, 1069, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1222, SE054, 130 );
SE055 = playSeVer2( spep_0 + 1257, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1257, SE055, 130 );

-----------------------------
-- 終了
-----------------------------
hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_0 + 1230); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 1336F