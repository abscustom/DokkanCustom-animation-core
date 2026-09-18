--4031440:LR_ザマス+ゴクウブラック(超サイヤ人ロゼ)_アクティブ必殺技：合体ザマス爆誕!!
--sp_effect_a3_00119
--ut0103

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 163889;  -- 開始〜フィニッシュまで：手前 ef_001
--SP_01b = 163890;  -- 開始〜フィニッシュまで：奥 ef_001b


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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
           skipFrame(0, spep_0 + 950 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 950 -13, SP_01, spep_0 + 950 -13 + 2, 1);
       else
           skipFrame(0, spep_0 + 1112 );  -- スキップ先フレーム指定
           setupMovie(spep_0 + 1112, SP_01, spep_0 + 1112 -1 + 2, 1);

           --爆発
           SE042 = playSeVer2( spep_0 + 1112, 1159, "", 0, 0, 0, -1);
           SE043 = playSeVer2( spep_0 + 1112, 1024, "", 0, 0, 0, -1);

           --光立ち上がる
           SE044 = playSeVer2( spep_0 + 1112, 1302, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 1112, SE044, 79 );
           SE045 = playSeVer2( spep_0 + 1112, 1179, "", 0, 0, 0, -1);
           

       end
    else 
            setupMovie(0, SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開始〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_0 = 1256;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 2, SP_01, 0x100, -1, 0, 0, 0); -- 開始〜フィニッシュまで：手前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);
--[[
start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開始〜フィニッシュまで：奥(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 930 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1030 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 930 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 972 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 930 + OFFSET_X, 1, 47.8, -243.8 , 0 );
setMoveKey( spep_0 + 939 + OFFSET_X, 1, 47.8, -243.8 , 0 );
setMoveKey( spep_0 + 940 + OFFSET_X, 1, 47.8, -248.8 , 0 );
setMoveKey( spep_0 + 941 + OFFSET_X, 1, 47.8, -248.8 , 0 );
setMoveKey( spep_0 + 942 + OFFSET_X, 1, 47.8, -253.8 , 0 );
setMoveKey( spep_0 + 943 + OFFSET_X, 1, 47.8, -253.8 , 0 );
setMoveKey( spep_0 + 944 + OFFSET_X, 1, 47.8, -248.8 , 0 );
setMoveKey( spep_0 + 945 + OFFSET_X, 1, 47.8, -248.8 , 0 );
setMoveKey( spep_0 + 946 + OFFSET_X, 1, 47.8, -243.8 , 0 );
setMoveKey( spep_0 + 947 + OFFSET_X, 1, 47.8, -243.8 , 0 );
setMoveKey( spep_0 + 948 + OFFSET_X, 1, 47.8, -248.8 , 0 );
setMoveKey( spep_0 + 949 + OFFSET_X, 1, 47.8, -248.8 , 0 );
setMoveKey( spep_0 + 950 + OFFSET_X, 1, 47.8, -253.8 , 0 );
setMoveKey( spep_0 + 951 + OFFSET_X, 1, 47.8, -253.8 , 0 );
setMoveKey( spep_0 + 952 + OFFSET_X, 1, 47.8, -248.8 , 0 );
setMoveKey( spep_0 + 953 + OFFSET_X, 1, 47.8, -248.8 , 0 );
setMoveKey( spep_0 + 954 + OFFSET_X, 1, 47.8, -243.8 , 0 );
setMoveKey( spep_0 + 955 + OFFSET_X, 1, 47.8, -243.8 , 0 );
setMoveKey( spep_0 + 956 + OFFSET_X, 1, 47.8, -248.8 , 0 );
setMoveKey( spep_0 + 957 + OFFSET_X, 1, 47.8, -248.8 , 0 );
setMoveKey( spep_0 + 958 + OFFSET_X, 1, 47.8, -253.8 , 0 );
setMoveKey( spep_0 + 959 + OFFSET_X, 1, 47.8, -253.8 , 0 );
setMoveKey( spep_0 + 960 + OFFSET_X, 1, 47.8, -248.8 , 0 );
setMoveKey( spep_0 + 961 + OFFSET_X, 1, 47.8, -248.8 , 0 );
setMoveKey( spep_0 + 962 + OFFSET_X, 1, 47.8, -243.8 , 0 );
setMoveKey( spep_0 + 963 + OFFSET_X, 1, 47.8, -243.8 , 0 );
setMoveKey( spep_0 + 964 + OFFSET_X, 1, 47.8, -248.8 , 0 );
setMoveKey( spep_0 + 965 + OFFSET_X, 1, 47.8, -248.8 , 0 );
setMoveKey( spep_0 + 966 + OFFSET_X, 1, 47.8, -253.8 , 0 );
setMoveKey( spep_0 + 967 + OFFSET_X, 1, 47.8, -253.8 , 0 );
setMoveKey( spep_0 + 968 + OFFSET_X, 1, 47.8, -248.8 , 0 );
setMoveKey( spep_0 + 969 + OFFSET_X, 1, 47.8, -248.8 , 0 );
setMoveKey( spep_0 + 970 + OFFSET_X, 1, 47.8, -243.8 , 0 );
setMoveKey( spep_0 + 971 + OFFSET_X, 1, 47.8, -243.8 , 0 );
setMoveKey( spep_0 + 972 + OFFSET_X, 1, 87.7, -270.6 , 0 );
setMoveKey( spep_0 + 973 + OFFSET_X, 1, 87.7, -270.6 , 0 );
setMoveKey( spep_0 + 974 + OFFSET_X, 1, 89.2, -280.1 , 0 );
setMoveKey( spep_0 + 975 + OFFSET_X, 1, 89.2, -280.1 , 0 );
setMoveKey( spep_0 + 976 + OFFSET_X, 1, 90.7, -275.6 , 0 );
setMoveKey( spep_0 + 977 + OFFSET_X, 1, 90.7, -275.6 , 0 );
setMoveKey( spep_0 + 978 + OFFSET_X, 1, 86.7, -266.1 , 0 );
setMoveKey( spep_0 + 979 + OFFSET_X, 1, 86.7, -266.1 , 0 );
setMoveKey( spep_0 + 980 + OFFSET_X, 1, 82.7, -271.6 , 0 );
setMoveKey( spep_0 + 981 + OFFSET_X, 1, 82.7, -271.6 , 0 );
setMoveKey( spep_0 + 982 + OFFSET_X, 1, 87.7, -279.6 , 0 );
setMoveKey( spep_0 + 983 + OFFSET_X, 1, 87.7, -279.6 , 0 );
setMoveKey( spep_0 + 984 + OFFSET_X, 1, 92.7, -271.6 , 0 );
setMoveKey( spep_0 + 985 + OFFSET_X, 1, 92.7, -271.6 , 0 );
setMoveKey( spep_0 + 986 + OFFSET_X, 1, 88.7, -266.1 , 0 );
setMoveKey( spep_0 + 987 + OFFSET_X, 1, 88.7, -266.1 , 0 );
setMoveKey( spep_0 + 988 + OFFSET_X, 1, 84.7, -277.6 , 0 );
setMoveKey( spep_0 + 989 + OFFSET_X, 1, 84.7, -277.6 , 0 );
setMoveKey( spep_0 + 990 + OFFSET_X, 1, 86.2, -284.1 , 0 );
setMoveKey( spep_0 + 991 + OFFSET_X, 1, 86.2, -284.1 , 0 );
setMoveKey( spep_0 + 992 + OFFSET_X, 1, 87.7, -272.6 , 0 );
setMoveKey( spep_0 + 993 + OFFSET_X, 1, 87.7, -272.6 , 0 );
setMoveKey( spep_0 + 994 + OFFSET_X, 1, 89.2, -266.1 , 0 );
setMoveKey( spep_0 + 995 + OFFSET_X, 1, 89.2, -266.1 , 0 );
setMoveKey( spep_0 + 996 + OFFSET_X, 1, 90.7, -277.6 , 0 );
setMoveKey( spep_0 + 997 + OFFSET_X, 1, 90.7, -277.6 , 0 );
setMoveKey( spep_0 + 998 + OFFSET_X, 1, 86.7, -284.1 , 0 );
setMoveKey( spep_0 + 999 + OFFSET_X, 1, 86.7, -284.1 , 0 );
setMoveKey( spep_0 + 1000 + OFFSET_X, 1, 82.7, -272.6 , 0 );
setMoveKey( spep_0 + 1001 + OFFSET_X, 1, 82.7, -272.6 , 0 );
setMoveKey( spep_0 + 1002 + OFFSET_X, 1, 87.7, -263.6 , 0 );
setMoveKey( spep_0 + 1003 + OFFSET_X, 1, 87.7, -263.6 , 0 );
setMoveKey( spep_0 + 1004 + OFFSET_X, 1, 92.7, -272.6 , 0 );
setMoveKey( spep_0 + 1005 + OFFSET_X, 1, 92.7, -272.6 , 0 );
setMoveKey( spep_0 + 1006 + OFFSET_X, 1, 88.7, -284.1 , 0 );
setMoveKey( spep_0 + 1007 + OFFSET_X, 1, 88.7, -284.1 , 0 );
setMoveKey( spep_0 + 1008 + OFFSET_X, 1, 84.7, -277.6 , 0 );
setMoveKey( spep_0 + 1009 + OFFSET_X, 1, 84.7, -277.6 , 0 );
setMoveKey( spep_0 + 1010 + OFFSET_X, 1, 86.2, -266.1 , 0 );
setMoveKey( spep_0 + 1011 + OFFSET_X, 1, 86.2, -266.1 , 0 );
setMoveKey( spep_0 + 1012 + OFFSET_X, 1, 87.7, -272.6 , 0 );
setMoveKey( spep_0 + 1013 + OFFSET_X, 1, 87.7, -272.6 , 0 );
setMoveKey( spep_0 + 1014 + OFFSET_X, 1, 89.2, -284.1 , 0 );
setMoveKey( spep_0 + 1015 + OFFSET_X, 1, 89.2, -284.1 , 0 );
setMoveKey( spep_0 + 1016 + OFFSET_X, 1, 90.7, -277.6 , 0 );
setMoveKey( spep_0 + 1017 + OFFSET_X, 1, 90.7, -277.6 , 0 );
setMoveKey( spep_0 + 1018 + OFFSET_X, 1, 86.7, -266.1 , 0 );
setMoveKey( spep_0 + 1019 + OFFSET_X, 1, 86.7, -266.1 , 0 );
setMoveKey( spep_0 + 1020 + OFFSET_X, 1, 82.7, -272.6 , 0 );
setMoveKey( spep_0 + 1021 + OFFSET_X, 1, 82.7, -272.6 , 0 );
setMoveKey( spep_0 + 1022 + OFFSET_X, 1, 87.7, -281.6 , 0 );
setMoveKey( spep_0 + 1023 + OFFSET_X, 1, 87.7, -281.6 , 0 );
setMoveKey( spep_0 + 1024 + OFFSET_X, 1, 92.7, -272.6 , 0 );
setMoveKey( spep_0 + 1025 + OFFSET_X, 1, 92.7, -272.6 , 0 );
setMoveKey( spep_0 + 1026 + OFFSET_X, 1, 88.7, -266.1 , 0 );
setMoveKey( spep_0 + 1027 + OFFSET_X, 1, 88.7, -266.1 , 0 );
setMoveKey( spep_0 + 1028 + OFFSET_X, 1, 84.7, -286.6 , 0 );
setMoveKey( spep_0 + 1030 + OFFSET_X, 1, 84.7, -286.6 , 0 );

setScaleKey( spep_0 + 930 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 971 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 972 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 1030 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_0 + 930 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 971 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 972 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1030 + OFFSET_X, 1, 0 );

--敵の動き2

setDisp( spep_0 + 1034 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1110 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1072 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 1034 + OFFSET_X, 1, -363.1, -220.8 , 0 );
setMoveKey( spep_0 + 1035 + OFFSET_X, 1, -363.1, -220.8 , 0 );
setMoveKey( spep_0 + 1036 + OFFSET_X, 1, -200.1, -128.8 , 0 );
setMoveKey( spep_0 + 1037 + OFFSET_X, 1, -200.1, -128.8 , 0 );
setMoveKey( spep_0 + 1038 + OFFSET_X, 1, -38.6, -31.3 , 0 );
setMoveKey( spep_0 + 1039 + OFFSET_X, 1, -38.6, -31.3 , 0 );
setMoveKey( spep_0 + 1040 + OFFSET_X, 1, -35.5, -1.9 , 0 );
setMoveKey( spep_0 + 1041 + OFFSET_X, 1, -35.5, -1.9 , 0 );
setMoveKey( spep_0 + 1042 + OFFSET_X, 1, -1.4, -32.4 , 0 );
setMoveKey( spep_0 + 1043 + OFFSET_X, 1, -1.4, -32.4 , 0 );
setMoveKey( spep_0 + 1044 + OFFSET_X, 1, -4, -16 , 0 );
setMoveKey( spep_0 + 1045 + OFFSET_X, 1, -4, -16 , 0 );
setMoveKey( spep_0 + 1046 + OFFSET_X, 1, -2.2, -21.7 , 0 );
setMoveKey( spep_0 + 1047 + OFFSET_X, 1, -2.2, -21.7 , 0 );
setMoveKey( spep_0 + 1048 + OFFSET_X, 1, 6.7, -6 , 0 );
setMoveKey( spep_0 + 1049 + OFFSET_X, 1, 6.7, -6 , 0 );
setMoveKey( spep_0 + 1050 + OFFSET_X, 1, 3.3, -25.8 , 0 );
setMoveKey( spep_0 + 1051 + OFFSET_X, 1, 3.3, -25.8 , 0 );
setMoveKey( spep_0 + 1052 + OFFSET_X, 1, 12.3, -20.9 , 0 );
setMoveKey( spep_0 + 1053 + OFFSET_X, 1, 12.3, -20.9 , 0 );
setMoveKey( spep_0 + 1054 + OFFSET_X, 1, 17.4, -38.1 , 0 );
setMoveKey( spep_0 + 1055 + OFFSET_X, 1, 17.4, -38.1 , 0 );
setMoveKey( spep_0 + 1056 + OFFSET_X, 1, 13.9, 2.7 , 0 );
setMoveKey( spep_0 + 1057 + OFFSET_X, 1, 13.9, 2.7 , 0 );
setMoveKey( spep_0 + 1058 + OFFSET_X, 1, 0.4, -18.5 , 0 );
setMoveKey( spep_0 + 1059 + OFFSET_X, 1, 0.4, -18.5 , 0 );
setMoveKey( spep_0 + 1060 + OFFSET_X, 1, -32.1, -27.8 , 0 );
setMoveKey( spep_0 + 1061 + OFFSET_X, 1, -32.1, -27.8 , 0 );
setMoveKey( spep_0 + 1062 + OFFSET_X, 1, -13, -40.8 , 0 );
setMoveKey( spep_0 + 1063 + OFFSET_X, 1, -13, -40.8 , 0 );
setMoveKey( spep_0 + 1064 + OFFSET_X, 1, -6.4, -16.2 , 0 );
setMoveKey( spep_0 + 1065 + OFFSET_X, 1, -6.4, -16.2 , 0 );
setMoveKey( spep_0 + 1066 + OFFSET_X, 1, 26.2, -21.7 , 0 );
setMoveKey( spep_0 + 1067 + OFFSET_X, 1, 26.2, -21.7 , 0 );
setMoveKey( spep_0 + 1068 + OFFSET_X, 1, 57.9, 7.8 , 0 );
setMoveKey( spep_0 + 1069 + OFFSET_X, 1, 57.9, 7.8 , 0 );
setMoveKey( spep_0 + 1070 + OFFSET_X, 1, 57.7, 7 , 0 );
setMoveKey( spep_0 + 1071 + OFFSET_X, 1, 57.7, 7 , 0 );
setMoveKey( spep_0 + 1072 + OFFSET_X, 1, -26.3, 50.1 , 0 );
setMoveKey( spep_0 + 1073 + OFFSET_X, 1, -26.3, 50.1 , 0 );
setMoveKey( spep_0 + 1074 + OFFSET_X, 1, -36.1, 23.4 , 0 );
setMoveKey( spep_0 + 1075 + OFFSET_X, 1, -36.1, 23.4 , 0 );
setMoveKey( spep_0 + 1076 + OFFSET_X, 1, -10.2, 46.7 , 0 );
setMoveKey( spep_0 + 1077 + OFFSET_X, 1, -10.2, 46.7 , 0 );
setMoveKey( spep_0 + 1078 + OFFSET_X, 1, 11.9, 23.1 , 0 );
setMoveKey( spep_0 + 1079 + OFFSET_X, 1, 11.9, 23.1 , 0 );
setMoveKey( spep_0 + 1080 + OFFSET_X, 1, 8.8, 27.1 , 0 );
setMoveKey( spep_0 + 1081 + OFFSET_X, 1, 8.8, 27.1 , 0 );
setMoveKey( spep_0 + 1082 + OFFSET_X, 1, 24, 2.8 , 0 );
setMoveKey( spep_0 + 1083 + OFFSET_X, 1, 24, 2.8 , 0 );
setMoveKey( spep_0 + 1084 + OFFSET_X, 1, 4.2, 17.5 , 0 );
setMoveKey( spep_0 + 1085 + OFFSET_X, 1, 4.2, 17.5 , 0 );
setMoveKey( spep_0 + 1086 + OFFSET_X, 1, 30.5, 19.3 , 0 );
setMoveKey( spep_0 + 1087 + OFFSET_X, 1, 30.5, 19.3 , 0 );
setMoveKey( spep_0 + 1088 + OFFSET_X, 1, 51.8, 31.1 , 0 );
setMoveKey( spep_0 + 1089 + OFFSET_X, 1, 51.8, 31.1 , 0 );
setMoveKey( spep_0 + 1090 + OFFSET_X, 1, 41, 5.9 , 0 );
setMoveKey( spep_0 + 1091 + OFFSET_X, 1, 41, 5.9 , 0 );
setMoveKey( spep_0 + 1092 + OFFSET_X, 1, 38.5, 39.4 , 0 );
setMoveKey( spep_0 + 1093 + OFFSET_X, 1, 38.5, 39.4 , 0 );
setMoveKey( spep_0 + 1094 + OFFSET_X, 1, 40.6, 19.1 , 0 );
setMoveKey( spep_0 + 1095 + OFFSET_X, 1, 40.6, 19.1 , 0 );
setMoveKey( spep_0 + 1096 + OFFSET_X, 1, 39.7, 48.7 , 0 );
setMoveKey( spep_0 + 1097 + OFFSET_X, 1, 39.7, 48.7 , 0 );
setMoveKey( spep_0 + 1098 + OFFSET_X, 1, 42.2, 40.8 , 0 );
setMoveKey( spep_0 + 1099 + OFFSET_X, 1, 42.2, 40.8 , 0 );
setMoveKey( spep_0 + 1100 + OFFSET_X, 1, 45.8, 51.2 , 0 );
setMoveKey( spep_0 + 1101 + OFFSET_X, 1, 45.8, 51.2 , 0 );
setMoveKey( spep_0 + 1102 + OFFSET_X, 1, 44, 17.8 , 0 );
setMoveKey( spep_0 + 1103 + OFFSET_X, 1, 44, 17.8 , 0 );
setMoveKey( spep_0 + 1104 + OFFSET_X, 1, 42.4, 17.4 , 0 );
setMoveKey( spep_0 + 1105 + OFFSET_X, 1, 42.4, 17.4 , 0 );
setMoveKey( spep_0 + 1106 + OFFSET_X, 1, 44.4, 26.5 , 0 );
setMoveKey( spep_0 + 1107 + OFFSET_X, 1, 44.4, 26.5 , 0 );
setMoveKey( spep_0 + 1108 + OFFSET_X, 1, 54.5, 37.3 , 0 );
setMoveKey( spep_0 + 1110 + OFFSET_X, 1, 54.5, 37.3 , 0 );

setScaleKey( spep_0 + 1034 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 1047 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 1048 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 1071 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 1072 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 1110 + OFFSET_X, 1, 2.6, 2.6 );

setRotateKey( spep_0 + 1034 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 1047 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 1048 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 1063 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 1064 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 1065 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 1066 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 1067 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 1068 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 1069 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 1070 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 1071 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 1072 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 1073 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 1074 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 1075 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 1076 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 1077 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 1078 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 1079 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 1080 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 1081 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 1082 + OFFSET_X, 1, -17.7 );
setRotateKey( spep_0 + 1083 + OFFSET_X, 1, -17.7 );
setRotateKey( spep_0 + 1084 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 1085 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 1086 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_0 + 1087 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_0 + 1088 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 1110 + OFFSET_X, 1, -14 );

-- ** 音 ** --

--ポタラひかる
SE001 = playSeVer2( spep_0 + 0, 1263, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 116 );
SE002 = playSeVer2( spep_0 + 0, 1371, "",spep_0 + 248, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 126 );
SE003 = playSeVer2( spep_0 + 0, 1288, "",spep_0 + 142, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 158 );

--二人引き合う
SE004 = playSeVer2( spep_0 + 70, 1175, "",spep_0 + 254, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 70, SE004, 34 );
SE005 = playSeVer2( spep_0 + 70, 1022, "",spep_0 + 148, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 70, SE005, 60 );
SE006 = playSeVer2( spep_0 + 70, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE006, 138 );
SE007 = playSeVer2( spep_0 + 74, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE007, 58 );

--二人回転する
SE008 = playSeVer2( spep_0 + 90, 1388, "",spep_0 + 240, 0, 34, -1);
SE009 = playSeVer2( spep_0 + 94, 1124, "",spep_0 + 238, 42, 44, -1);
setSeVolumeByWorkId( spep_0 + 94, SE009, 82 );

--合体ザマス降臨
SE010 = playSeVer2( spep_0 + 276, 1437, "", 0, 18, 0, -1);
setStartTimeMs( SE010,  2033 );

--光あふれる
SE011 = playSeVer2( spep_0 + 198, 1052, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 198, 1264, "",spep_0 + 356, 0, 74, -1);
SE013 = playSeVer2( spep_0 + 198, 1214, "",spep_0 + 342, 0, 36, -1);

--合体ザマス降臨
SE014 = playSeVer2( spep_0 + 282, 1475, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 288, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE015, 75 );
SE016 = playSeVer2( spep_0 + 294, 1373, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 326, 1332, "", 0, 0, 0, -1);

--紋章光る
SE018 = playSeVer2( spep_0 + 390, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 390, SE018, 72 );
SE019 = playSeVer2( spep_0 + 390, 20, "", 0, 0, 0, -1);

--上昇して手広げる
SE020 = playSeVer2( spep_0 + 426, 1116, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 426, SE020, 87 );
SE021 = playSeVer2( spep_0 + 460, 1119, "", 0, 0, 0, -1);
setPitch( spep_0 + 460, SE021, -600 );
setTimeStretch( SE021, 0.6, 30, 4 );
SE022 = playSeVer2( spep_0 + 470, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 470, SE022, 119 );

--環境音
SE023 = playSeVer2( spep_0 + 502, 1269, "",spep_0 + 886, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 502, SE023, 25 );

--上昇して手広げる
SE024 = playSeVer2( spep_0 + 526, 1004, "", 0, 0, 0, -1);

--セリフカットイン
SE025 = playSeVer2( spep_0 + 576, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE025, 63 );

--赤く光る
SE026 = playSeVer2( spep_0 + 698, 1178, "",spep_0 + 742, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 698, SE026, 77 );
setPitch( spep_0 + 698, SE026, 500 );
setTimeStretch( SE026, 1.33, 30, 4 );
SE027 = playSeVer2( spep_0 + 698, 1015, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 698, SE027, 65 );
SE028 = playSeVer2( spep_0 + 726, 1178, "",spep_0 + 768, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 726, SE028, 76 );
setPitch( spep_0 + 726, SE028, 500 );
setTimeStretch( SE028, 1.33, 30, 4 );
SE029 = playSeVer2( spep_0 + 726, 1015, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 726, SE029, 63 );
SE030 = playSeVer2( spep_0 + 748, 1178, "",spep_0 + 790, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 748, SE030, 81 );
setPitch( spep_0 + 748, SE030, 500 );
setTimeStretch( SE030, 1.33, 30, 4 );
SE031 = playSeVer2( spep_0 + 748, 1015, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 748, SE031, 68 );
SE032 = playSeVer2( spep_0 + 762, 1178, "",spep_0 + 804, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 762, SE032, 63 );
setPitch( spep_0 + 762, SE032, 500 );
setTimeStretch( SE032, 1.33, 30, 4 );
SE033 = playSeVer2( spep_0 + 762, 1015, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 762, SE033, 61 );

--赤い光広がる
SE034 = playSeVer2( spep_0 + 788, 1371, "",spep_0 + 918, 0, 58, -1);
SE035 = playSeVer2( spep_0 + 788, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 788, SE035, 174 );
SE036 = playSeVer2( spep_0 + 788, 1466, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 788, SE036, 116 );

--刃飛んでくる
SE037 = playSeVer2( spep_0 + 840, 1255, "",spep_0 + 1028, 0, 22, -1);
SE038 = playSeVer2( spep_0 + 856, 1357, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 856, 1403, "",spep_0 + 1026, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 856, SE039, 145 );
SE040 = playSeVer2( spep_0 + 926, 1406, "",spep_0 + 1028, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 926, SE040, 136 );

-- ** ボイス ** --

--「神の光の力をみせてくれる! 」
playVoice( spep_0 + 574, 1027 );
setVoiceVolume( spep_0 + 574, 1027, 122 );

--「裁きの刃 」
playVoice( spep_0 + 784, 1028 );
setVoiceVolume( spep_0 + 784, 1028, 122 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 950; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);

stopSe( SP_dodge - 12, SE037, 0);
stopSe( SP_dodge - 12, SE038, 0);
stopSe( SP_dodge - 12, SE039, 0);
stopSe( SP_dodge - 12, SE040, 0);

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

--刃光る
SE041 = playSeVer2( spep_0 + 990, 1374, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 990, SE041, 126 );

--爆発
SE042 = playSeVer2( spep_0 + 1036, 1159, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 1046, 1024, "", 0, 0, 0, -1);

--光立ち上がる
SE044 = playSeVer2( spep_0 + 1110, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1110, SE044, 79 );
SE045 = playSeVer2( spep_0 + 1110, 1179, "", 0, 0, 0, -1);

--爆発
SE046 = playSeVer2( spep_0 + 1144, 1188, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 1148, 1068, "", 0, 0, 0, -1);

--地響き
SE048 = playSeVer2( spep_0 + 1158, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1158, SE048, 48 );

--風圧
SE049 = playSeVer2( spep_0 + 1182, 1427, "",spep_0 + 1318, 0, 64, -1);

-- ** おわり ** --
fadeKoLabel(1,0.5)
hideKoScreen();
dealDamage( spep_0 + 1146); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 ); -- 1256F(KO時 1396F)

else end