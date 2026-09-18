--4030800:LR_ピッコロ大魔王(老)_フィニッシュ(成功)：大魔王みずからの制裁
--sp_effect_a1_00484
--fi0020

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163662 --登場〜フィニッシュ ef_001
SP_02 = 163663 --登場〜フィニッシュ(奥) ef_001b

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 740 -13 );        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 848 -1 );      -- スキップ先フレーム指定

           --気弾溜め
           SE022 = playSeVer2( spep_0 + 848, 1243, "",spep_0 + 892, 0, 32, -1);
           SE023 = playSeVer2( spep_0 + 848, 1056, "", 0, 0, 0, -1);

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

--はじめの準備
spep_0 = 0;

------------------------------------------------------
-- フィニッシュ(成功)
------------------------------------------------------
MAX_FRAME_0 = 1114;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --フィニッシュ(成功)(ef_001)
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_f, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0 );
setEffAlphaKey( spep_0 + 0, base_f, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255 );

base_0b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 奥(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 920 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 990 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 920 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 920 + OFFSET_X, 1, 55.1, 1976 , 0 );
setMoveKey( spep_0 + 921 + OFFSET_X, 1, 55.1, 1976 , 0 );
setMoveKey( spep_0 + 922 + OFFSET_X, 1, 54.9, 1959.4 , 0 );
setMoveKey( spep_0 + 923 + OFFSET_X, 1, 54.9, 1959.4 , 0 );
setMoveKey( spep_0 + 924 + OFFSET_X, 1, 54.6, 1935.8 , 0 );
setMoveKey( spep_0 + 925 + OFFSET_X, 1, 54.6, 1935.8 , 0 );
setMoveKey( spep_0 + 926 + OFFSET_X, 1, 54.1, 1904.3 , 0 );
setMoveKey( spep_0 + 927 + OFFSET_X, 1, 54.1, 1904.3 , 0 );
setMoveKey( spep_0 + 928 + OFFSET_X, 1, 53.6, 1864 , 0 );
setMoveKey( spep_0 + 929 + OFFSET_X, 1, 53.6, 1864 , 0 );
setMoveKey( spep_0 + 930 + OFFSET_X, 1, 52.9, 1813.8 , 0 );
setMoveKey( spep_0 + 931 + OFFSET_X, 1, 52.9, 1813.8 , 0 );
setMoveKey( spep_0 + 932 + OFFSET_X, 1, 52.1, 1752.5 , 0 );
setMoveKey( spep_0 + 933 + OFFSET_X, 1, 52.1, 1752.5 , 0 );
setMoveKey( spep_0 + 934 + OFFSET_X, 1, 51.1, 1678.7 , 0 );
setMoveKey( spep_0 + 935 + OFFSET_X, 1, 51.1, 1678.7 , 0 );
setMoveKey( spep_0 + 936 + OFFSET_X, 1, 49.9, 1590.8 , 0 );
setMoveKey( spep_0 + 937 + OFFSET_X, 1, 49.9, 1590.8 , 0 );
setMoveKey( spep_0 + 938 + OFFSET_X, 1, 48.5, 1487 , 0 );
setMoveKey( spep_0 + 939 + OFFSET_X, 1, 48.5, 1487 , 0 );
setMoveKey( spep_0 + 940 + OFFSET_X, 1, 46.8, 1365.6 , 0 );
setMoveKey( spep_0 + 941 + OFFSET_X, 1, 46.8, 1365.6 , 0 );
setMoveKey( spep_0 + 942 + OFFSET_X, 1, 45, 1225.6 , 0 );
setMoveKey( spep_0 + 943 + OFFSET_X, 1, 45, 1225.6 , 0 );
setMoveKey( spep_0 + 944 + OFFSET_X, 1, 42.7, 1066.7 , 0 );
setMoveKey( spep_0 + 945 + OFFSET_X, 1, 42.7, 1066.7 , 0 );
setMoveKey( spep_0 + 946 + OFFSET_X, 1, 40.4, 891.7 , 0 );
setMoveKey( spep_0 + 947 + OFFSET_X, 1, 40.4, 891.7 , 0 );
setMoveKey( spep_0 + 948 + OFFSET_X, 1, 37.9, 707.3 , 0 );
setMoveKey( spep_0 + 949 + OFFSET_X, 1, 37.9, 707.3 , 0 );
setMoveKey( spep_0 + 950 + OFFSET_X, 1, 35.4, 524.6 , 0 );
setMoveKey( spep_0 + 951 + OFFSET_X, 1, 35.4, 524.6 , 0 );
setMoveKey( spep_0 + 952 + OFFSET_X, 1, 33.2, 356.8 , 0 );
setMoveKey( spep_0 + 953 + OFFSET_X, 1, 33.2, 356.8 , 0 );
setMoveKey( spep_0 + 954 + OFFSET_X, 1, 31.3, 214.9 , 0 );
setMoveKey( spep_0 + 955 + OFFSET_X, 1, 31.3, 214.9 , 0 );
setMoveKey( spep_0 + 956 + OFFSET_X, 1, 29.8, 104.1 , 0 );
setMoveKey( spep_0 + 957 + OFFSET_X, 1, 29.8, 104.1 , 0 );
setMoveKey( spep_0 + 958 + OFFSET_X, 1, 28.5, 22 , 0 );
setMoveKey( spep_0 + 959 + OFFSET_X, 1, 28.5, 22 , 0 );
setMoveKey( spep_0 + 960 + OFFSET_X, 1, 28.5, 18.9 , 0 );
setMoveKey( spep_0 + 961 + OFFSET_X, 1, 28.5, 18.9 , 0 );
setMoveKey( spep_0 + 962 + OFFSET_X, 1, 26.5, 22.1 , 0 );
setMoveKey( spep_0 + 963 + OFFSET_X, 1, 26.5, 22.1 , 0 );
setMoveKey( spep_0 + 964 + OFFSET_X, 1, 32.5, 23.1 , 0 );
setMoveKey( spep_0 + 965 + OFFSET_X, 1, 32.5, 23.1 , 0 );
setMoveKey( spep_0 + 966 + OFFSET_X, 1, 30.5, 16.2 , 0 );
setMoveKey( spep_0 + 967 + OFFSET_X, 1, 30.5, 16.2 , 0 );
setMoveKey( spep_0 + 968 + OFFSET_X, 1, 26.5, 13.2 , 0 );
setMoveKey( spep_0 + 969 + OFFSET_X, 1, 26.5, 13.2 , 0 );
setMoveKey( spep_0 + 970 + OFFSET_X, 1, 26.5, 16 , 0 );
setMoveKey( spep_0 + 971 + OFFSET_X, 1, 26.5, 16 , 0 );
setMoveKey( spep_0 + 972 + OFFSET_X, 1, 32.6, 10.5 , 0 );
setMoveKey( spep_0 + 973 + OFFSET_X, 1, 32.6, 10.5 , 0 );
setMoveKey( spep_0 + 974 + OFFSET_X, 1, 22.5, 14.7 , 0 );
setMoveKey( spep_0 + 975 + OFFSET_X, 1, 22.5, 14.7 , 0 );
setMoveKey( spep_0 + 976 + OFFSET_X, 1, 32.5, 12.7 , 0 );
setMoveKey( spep_0 + 977 + OFFSET_X, 1, 32.5, 12.7 , 0 );
setMoveKey( spep_0 + 978 + OFFSET_X, 1, 30.5, 4.2 , 0 );
setMoveKey( spep_0 + 979 + OFFSET_X, 1, 30.5, 4.2 , 0 );
setMoveKey( spep_0 + 980 + OFFSET_X, 1, 26.5, 9.1 , 0 );
setMoveKey( spep_0 + 981 + OFFSET_X, 1, 26.5, 9.1 , 0 );
setMoveKey( spep_0 + 982 + OFFSET_X, 1, 24.5, -0.9 , 0 );
setMoveKey( spep_0 + 983 + OFFSET_X, 1, 24.5, -0.9 , 0 );
setMoveKey( spep_0 + 984 + OFFSET_X, 1, 24.5, -12.2 , 0 );
setMoveKey( spep_0 + 985 + OFFSET_X, 1, 24.5, -12.2 , 0 );
setMoveKey( spep_0 + 986 + OFFSET_X, 1, 32.5, -6 , 0 );
setMoveKey( spep_0 + 987 + OFFSET_X, 1, 32.5, -6 , 0 );
setMoveKey( spep_0 + 988 + OFFSET_X, 1, 30.4, -41.8 , 0 );
setMoveKey( spep_0 + 990 + OFFSET_X, 1, 30.4, -41.8 , 0 );

setScaleKey( spep_0 + 920 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 921 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 922 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 923 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 924 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 925 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 926 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 927 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 928 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 929 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 930 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 931 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 932 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 933 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 934 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 935 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 936 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 937 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 938 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 939 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 940 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 941 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 942 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 943 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 944 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 945 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 946 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 947 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 948 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 949 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 950 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 951 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 952 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 953 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 954 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 955 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 956 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 957 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 958 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 959 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 960 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 961 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 962 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 963 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 964 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 965 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 966 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 967 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 968 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 969 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 970 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 971 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 972 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 973 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 974 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 975 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 976 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 977 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 978 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 979 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 980 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 981 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 982 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 983 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 984 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 985 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 986 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_0 + 987 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_0 + 988 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 990 + OFFSET_X, 1, 5.1, 5.1 );

setRotateKey( spep_0 + 920 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 990 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 920 + OFFSET_X, 1, 3, 1.0, 0.6, 1.0, 0.6 );
setBlendColor( spep_0 + 990 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

--敵の動き2
setDisp( spep_0 + 994 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1152 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 994 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 994 + OFFSET_X, 1, -244.8, -482.8 , 0 );
setMoveKey( spep_0 + 997 + OFFSET_X, 1, -244.8, -482.8 , 0 );
setMoveKey( spep_0 + 998 + OFFSET_X, 1, -149.6, -408.1 , 0 );
setMoveKey( spep_0 + 999 + OFFSET_X, 1, -149.6, -408.1 , 0 );
setMoveKey( spep_0 + 1000 + OFFSET_X, 1, -155.9, -194 , 0 );
setMoveKey( spep_0 + 1001 + OFFSET_X, 1, -155.9, -194 , 0 );
setMoveKey( spep_0 + 1002 + OFFSET_X, 1, -32.2, -156.9 , 0 );
setMoveKey( spep_0 + 1003 + OFFSET_X, 1, -32.2, -156.9 , 0 );
setMoveKey( spep_0 + 1004 + OFFSET_X, 1, -68.2, -140.9 , 0 );
setMoveKey( spep_0 + 1005 + OFFSET_X, 1, -68.2, -140.9 , 0 );
setMoveKey( spep_0 + 1006 + OFFSET_X, 1, -11.2, -69.9 , 0 );
setMoveKey( spep_0 + 1007 + OFFSET_X, 1, -11.2, -69.9 , 0 );
setMoveKey( spep_0 + 1008 + OFFSET_X, 1, -10.7, -99.1 , 0 );
setMoveKey( spep_0 + 1009 + OFFSET_X, 1, -10.7, -99.1 , 0 );
setMoveKey( spep_0 + 1010 + OFFSET_X, 1, -30.9, -55.1 , 0 );
setMoveKey( spep_0 + 1011 + OFFSET_X, 1, -30.9, -55.1 , 0 );
setMoveKey( spep_0 + 1012 + OFFSET_X, 1, 1.3, -18.1 , 0 );
setMoveKey( spep_0 + 1013 + OFFSET_X, 1, 1.3, -18.1 , 0 );
setMoveKey( spep_0 + 1014 + OFFSET_X, 1, -9.4, -50.9 , 0 );
setMoveKey( spep_0 + 1015 + OFFSET_X, 1, -9.4, -50.9 , 0 );
setMoveKey( spep_0 + 1016 + OFFSET_X, 1, 27.3, -14.6 , 0 );
setMoveKey( spep_0 + 1017 + OFFSET_X, 1, 27.3, -14.6 , 0 );
setMoveKey( spep_0 + 1018 + OFFSET_X, 1, 15.8, -6.7 , 0 );
setMoveKey( spep_0 + 1019 + OFFSET_X, 1, 15.8, -6.7 , 0 );
setMoveKey( spep_0 + 1020 + OFFSET_X, 1, 18.3, -28.9 , 0 );
setMoveKey( spep_0 + 1021 + OFFSET_X, 1, 18.3, -28.9 , 0 );
setMoveKey( spep_0 + 1022 + OFFSET_X, 1, 6.9, 39.2 , 0 );
setMoveKey( spep_0 + 1023 + OFFSET_X, 1, 6.9, 39.2 , 0 );
setMoveKey( spep_0 + 1024 + OFFSET_X, 1, 51.7, 47.6 , 0 );
setMoveKey( spep_0 + 1025 + OFFSET_X, 1, 51.7, 47.6 , 0 );
setMoveKey( spep_0 + 1026 + OFFSET_X, 1, 26.8, 58.5 , 0 );
setMoveKey( spep_0 + 1027 + OFFSET_X, 1, 26.8, 58.5 , 0 );
setMoveKey( spep_0 + 1028 + OFFSET_X, 1, 28, 53.9 , 0 );
setMoveKey( spep_0 + 1029 + OFFSET_X, 1, 28, 53.9 , 0 );
setMoveKey( spep_0 + 1030 + OFFSET_X, 1, 85, 26.4 , 0 );
setMoveKey( spep_0 + 1031 + OFFSET_X, 1, 85, 26.4 , 0 );
setMoveKey( spep_0 + 1032 + OFFSET_X, 1, 82.8, 43.2 , 0 );
setMoveKey( spep_0 + 1033 + OFFSET_X, 1, 82.8, 43.2 , 0 );
setMoveKey( spep_0 + 1034 + OFFSET_X, 1, 140.7, 54 , 0 );
setMoveKey( spep_0 + 1035 + OFFSET_X, 1, 140.7, 54 , 0 );
setMoveKey( spep_0 + 1036 + OFFSET_X, 1, 164.7, -5.8 , 0 );
setMoveKey( spep_0 + 1037 + OFFSET_X, 1, 164.7, -5.8 , 0 );
setMoveKey( spep_0 + 1038 + OFFSET_X, 1, 247.9, 0.7 , 0 );
setMoveKey( spep_0 + 1039 + OFFSET_X, 1, 247.9, 0.7 , 0 );
setMoveKey( spep_0 + 1040 + OFFSET_X, 1, 299.2, -26.1 , 0 );
setMoveKey( spep_0 + 1041 + OFFSET_X, 1, 299.2, -26.1 , 0 );
setMoveKey( spep_0 + 1042 + OFFSET_X, 1, 388.8, -90.9 , 0 );
setMoveKey( spep_0 + 1043 + OFFSET_X, 1, 388.8, -90.9 , 0 );
setMoveKey( spep_0 + 1044 + OFFSET_X, 1, 503.2, -78.5 , 0 );
setMoveKey( spep_0 + 1045 + OFFSET_X, 1, 503.2, -78.5 , 0 );
setMoveKey( spep_0 + 1046 + OFFSET_X, 1, 733.3, -145.8 , 0 );
setMoveKey( spep_0 + 1047 + OFFSET_X, 1, 733.3, -145.8 , 0 );
setMoveKey( spep_0 + 1048 + OFFSET_X, 1, 957, -232 , 0 );
setMoveKey( spep_0 + 1049 + OFFSET_X, 1, 957, -232 , 0 );
setMoveKey( spep_0 + 1050 + OFFSET_X, 1, 1221.2, -338.9 , 0 );
setMoveKey( spep_0 + 1052 + OFFSET_X, 1, 1221.2, -338.9 , 0 );

setScaleKey( spep_0 + 994 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 997 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 998 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 999 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 1000 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 1001 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 1002 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 1003 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 1004 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 1005 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 1006 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 1007 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 1008 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 1009 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 1010 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 1011 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 1012 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 1013 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 1014 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 1015 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 1016 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 1017 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 1018 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 1019 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 1020 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 1021 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 1022 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 1023 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 1024 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 1025 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 1026 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 1027 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 1028 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 1029 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 1030 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 1031 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 1032 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 1033 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 1034 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 1035 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 1036 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 1037 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 1038 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 1039 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 1040 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 1041 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 1042 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 1043 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 1044 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 1045 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 1046 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 1047 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 1048 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 1049 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 1050 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 1052 + OFFSET_X, 1, 2.95, 2.95 );

setRotateKey( spep_0 + 994 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 997 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 998 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_0 + 999 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_0 + 1000 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_0 + 1001 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_0 + 1002 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 1003 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 1004 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 1005 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 1006 + OFFSET_X, 1, -5.9 );
setRotateKey( spep_0 + 1007 + OFFSET_X, 1, -5.9 );
setRotateKey( spep_0 + 1008 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_0 + 1009 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_0 + 1010 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 1011 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 1012 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_0 + 1013 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_0 + 1014 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 1015 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 1016 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 1017 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 1018 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_0 + 1019 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_0 + 1020 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 1021 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 1022 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_0 + 1023 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_0 + 1024 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_0 + 1025 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_0 + 1026 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_0 + 1027 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_0 + 1028 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 1029 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 1030 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_0 + 1031 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_0 + 1032 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 1033 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 1034 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 1035 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 1036 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 1037 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 1038 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_0 + 1039 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_0 + 1040 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_0 + 1041 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_0 + 1042 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_0 + 1043 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_0 + 1044 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_0 + 1045 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_0 + 1046 + OFFSET_X, 1, 20.2 );
setRotateKey( spep_0 + 1047 + OFFSET_X, 1, 20.2 );
setRotateKey( spep_0 + 1048 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_0 + 1049 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_0 + 1050 + OFFSET_X, 1, 37.8 );
setRotateKey( spep_0 + 1052 + OFFSET_X, 1, 37.8 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1173, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 59 );

--環境音
SE003 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 25 );

--セリフカットイン
SE004 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 63 );

--炎立ち上がる
SE005 = playSeVer2( spep_0 + 182, 1391, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE005, 68 );
SE006 = playSeVer2( spep_0 + 182, 1129, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE006, 66 );
SE007 = playSeVer2( spep_0 + 228, 1268, "",spep_0 + 706, 0, 68, -1);
setSeVolumeByWorkId( spep_0 + 228, SE007, 120 );
SE008 = playSeVer2( spep_0 + 228, 1267, "",spep_0 + 712, 0, 72, -1);

--画面遷移
SE009 = playSeVer2( spep_0 + 312, 8, "", 0, 0, 0, -1);

--地響き
SE010 = playSeVer2( spep_0 + 312, 1226, "",spep_0 + 742, 0, 90, -1);
setSeVolumeByWorkId( spep_0 + 312, SE010, 76 );

--手に気を溜める
SE011 = playSeVer2( spep_0 + 646, 1252, "",spep_0 + 762, 0, 40, -1);
SE012 = playSeVer2( spep_0 + 646, 1131, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 646, 1362, "",spep_0 + 752, 0, 34, -1);
setPitch( spep_0 + 646, SE013, -1200 );
setTimeStretch( SE013, 0.2, 30, 4 );
SE014 = playSeVer2( spep_0 + 646, 1147, "",spep_0 + 756, 0, 26, -1);

--手握る
SE015 = playSeVer2( spep_0 + 702, 1233, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 712, 1010, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 720, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 720, SE017, 73 );
SE018 = playSeVer2( spep_0 + 720, 1261, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「どこのどいつかしらんがこのピッコロ大魔王さまにはむかうと…」
playVoice( spep_0 + 0, 956 );
setVoiceVolume( spep_0 + 0, 956, 100 );
--「どんなめにあうのかおもいしらせてくれるぞ……！」
playVoice( spep_0 + 352, 957 );
setVoiceVolume( spep_0 + 352, 957, 100 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 740 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    
    pauseAll( SP_dodge, 67);   
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
  do return end
  else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--指立てる
SE019 = playSeVer2( spep_0 + 784, 1189, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 784, 4, "", 0, 0, 0, -1);

--気弾溜め
SE021 = playSeVer2( spep_0 + 786, 1043, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 786, 1243, "",spep_0 + 892, 0, 32, -1);
SE023 = playSeVer2( spep_0 + 792, 1056, "", 0, 0, 0, -1);

--腕前に出す
SE024 = playSeVer2( spep_0 + 856, 1003, "", 0, 0, 0, -1);

--気弾発射
SE025 = playSeVer2( spep_0 + 872, 1177, "",spep_0 + 1030, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 872, SE025, 58 );
SE026 = playSeVer2( spep_0 + 872, 1215, "",spep_0 + 1036, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 872, SE026, 82 );
SE027 = playSeVer2( spep_0 + 872, 1338, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 872, SE027, 200 );
SE028 = playSeVer2( spep_0 + 872, 1213, "",spep_0 + 1016, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 872, SE028, 56 );
SE029 = playSeVer2( spep_0 + 872, 1027, "", 0, 0, 0, -1);

--爆発
SE030 = playSeVer2( spep_0 + 974, 1024, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 976, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_0 + 994 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 1114f

end