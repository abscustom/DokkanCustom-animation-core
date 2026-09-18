--1027120：LR_超サイヤ人ゴッドSS孫悟空&超サイヤ人ゴッドSSベジータ_アクティブ合体
--sp_effect_b4_00299
--tf0061

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162118;	 --ポタラ差し出す〜「だぁー」と叫ぶ	 ef_001
SP_01b = 162119;  --ポタラ差し出す〜「だぁー」と叫ぶ　ef_001b

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

OFFSET_X = -3; --通常-1ですが、例外処理で-3にしています。

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- ポタラ差し出す〜「だぁー」と叫ぶ
-------------------------------------------------

MAX_FRAME_0 = 1364;


-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 984 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1053 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 984 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 984 + OFFSET_X, 1, 973.4, 1517.8 , 0 );
setMoveKey( spep_0 + 985 + OFFSET_X, 1, 973.4, 1517.8 , 0 );
setMoveKey( spep_0 + 986 + OFFSET_X, 1, 967.1, 1506.8 , 0 );
setMoveKey( spep_0 + 987 + OFFSET_X, 1, 967.1, 1506.8 , 0 );
setMoveKey( spep_0 + 988 + OFFSET_X, 1, 960.9, 1495.7 , 0 );
setMoveKey( spep_0 + 989 + OFFSET_X, 1, 960.9, 1495.7 , 0 );
setMoveKey( spep_0 + 990 + OFFSET_X, 1, 954.6, 1484.6 , 0 );
setMoveKey( spep_0 + 991 + OFFSET_X, 1, 954.6, 1484.6 , 0 );
setMoveKey( spep_0 + 992 + OFFSET_X, 1, 948.2, 1473.3 , 0 );
setMoveKey( spep_0 + 993 + OFFSET_X, 1, 948.2, 1473.3 , 0 );
setMoveKey( spep_0 + 994 + OFFSET_X, 1, 941.7, 1461.8 , 0 );
setMoveKey( spep_0 + 995 + OFFSET_X, 1, 941.7, 1461.8 , 0 );
setMoveKey( spep_0 + 996 + OFFSET_X, 1, 935, 1450.1 , 0 );
setMoveKey( spep_0 + 997 + OFFSET_X, 1, 935, 1450.1 , 0 );
setMoveKey( spep_0 + 998 + OFFSET_X, 1, 928.2, 1438 , 0 );
setMoveKey( spep_0 + 999 + OFFSET_X, 1, 928.2, 1438 , 0 );
setMoveKey( spep_0 + 1000 + OFFSET_X, 1, 921.2, 1425.6 , 0 );
setMoveKey( spep_0 + 1001 + OFFSET_X, 1, 921.2, 1425.6 , 0 );
setMoveKey( spep_0 + 1002 + OFFSET_X, 1, 913.9, 1412.8 , 0 );
setMoveKey( spep_0 + 1003 + OFFSET_X, 1, 913.9, 1412.8 , 0 );
setMoveKey( spep_0 + 1004 + OFFSET_X, 1, 906.3, 1399.4 , 0 );
setMoveKey( spep_0 + 1005 + OFFSET_X, 1, 906.3, 1399.4 , 0 );
setMoveKey( spep_0 + 1006 + OFFSET_X, 1, 898.4, 1385.5 , 0 );
setMoveKey( spep_0 + 1007 + OFFSET_X, 1, 898.4, 1385.5 , 0 );
setMoveKey( spep_0 + 1008 + OFFSET_X, 1, 890.1, 1370.8 , 0 );
setMoveKey( spep_0 + 1009 + OFFSET_X, 1, 890.1, 1370.8 , 0 );
setMoveKey( spep_0 + 1010 + OFFSET_X, 1, 881.4, 1355.4 , 0 );
setMoveKey( spep_0 + 1011 + OFFSET_X, 1, 881.4, 1355.4 , 0 );
setMoveKey( spep_0 + 1012 + OFFSET_X, 1, 872.2, 1339.1 , 0 );
setMoveKey( spep_0 + 1013 + OFFSET_X, 1, 872.2, 1339.1 , 0 );
setMoveKey( spep_0 + 1014 + OFFSET_X, 1, 862.3, 1321.7 , 0 );
setMoveKey( spep_0 + 1015 + OFFSET_X, 1, 862.3, 1321.7 , 0 );
setMoveKey( spep_0 + 1016 + OFFSET_X, 1, 851.7, 1303 , 0 );
setMoveKey( spep_0 + 1017 + OFFSET_X, 1, 851.7, 1303 , 0 );
setMoveKey( spep_0 + 1018 + OFFSET_X, 1, 840.2, 1282.7 , 0 );
setMoveKey( spep_0 + 1019 + OFFSET_X, 1, 840.2, 1282.7 , 0 );
setMoveKey( spep_0 + 1020 + OFFSET_X, 1, 827.6, 1260.5 , 0 );
setMoveKey( spep_0 + 1021 + OFFSET_X, 1, 827.6, 1260.5 , 0 );
setMoveKey( spep_0 + 1022 + OFFSET_X, 1, 813.6, 1235.8 , 0 );
setMoveKey( spep_0 + 1023 + OFFSET_X, 1, 813.6, 1235.8 , 0 );
setMoveKey( spep_0 + 1024 + OFFSET_X, 1, 797.7, 1207.6 , 0 );
setMoveKey( spep_0 + 1025 + OFFSET_X, 1, 797.7, 1207.6 , 0 );
setMoveKey( spep_0 + 1026 + OFFSET_X, 1, 778.9, 1174.6 , 0 );
setMoveKey( spep_0 + 1027 + OFFSET_X, 1, 778.9, 1174.6 , 0 );
setMoveKey( spep_0 + 1028 + OFFSET_X, 1, 755.6, 1133.4 , 0 );
setMoveKey( spep_0 + 1029 + OFFSET_X, 1, 755.6, 1133.4 , 0 );
setMoveKey( spep_0 + 1030 + OFFSET_X, 1, 722.5, 1074.9 , 0 );
setMoveKey( spep_0 + 1031 + OFFSET_X, 1, 722.5, 1074.9 , 0 );
setMoveKey( spep_0 + 1032 + OFFSET_X, 1, 678.6, 997.4 , 0 );
setMoveKey( spep_0 + 1033 + OFFSET_X, 1, 678.6, 997.4 , 0 );
setMoveKey( spep_0 + 1034 + OFFSET_X, 1, 633.6, 918.1 , 0 );
setMoveKey( spep_0 + 1035 + OFFSET_X, 1, 633.6, 918.1 , 0 );
setMoveKey( spep_0 + 1036 + OFFSET_X, 1, 587.4, 836.6 , 0 );
setMoveKey( spep_0 + 1037 + OFFSET_X, 1, 587.4, 836.6 , 0 );
setMoveKey( spep_0 + 1038 + OFFSET_X, 1, 540, 752.8 , 0 );
setMoveKey( spep_0 + 1039 + OFFSET_X, 1, 540, 752.8 , 0 );
setMoveKey( spep_0 + 1040 + OFFSET_X, 1, 491.3, 666.9 , 0 );
setMoveKey( spep_0 + 1041 + OFFSET_X, 1, 491.3, 666.9 , 0 );
setMoveKey( spep_0 + 1042 + OFFSET_X, 1, 442.2, 580.3 , 0 );
setMoveKey( spep_0 + 1043 + OFFSET_X, 1, 442.2, 580.3 , 0 );
setMoveKey( spep_0 + 1044 + OFFSET_X, 1, 395.1, 497.2 , 0 );
setMoveKey( spep_0 + 1045 + OFFSET_X, 1, 395.1, 497.2 , 0 );
setMoveKey( spep_0 + 1046 + OFFSET_X, 1, 356, 428.1 , 0 );
setMoveKey( spep_0 + 1047 + OFFSET_X, 1, 356, 428.1 , 0 );
setMoveKey( spep_0 + 1048 + OFFSET_X, 1, 330.6, 383.2 , 0 );
setMoveKey( spep_0 + 1049 + OFFSET_X, 1, 330.6, 383.2 , 0 );
setMoveKey( spep_0 + 1050 + OFFSET_X, 1, 316.8, 359 , 0 );
setMoveKey( spep_0 + 1052 + OFFSET_X, 1, 316.8, 359 , 0 );
setMoveKey( spep_0 + 1053 + OFFSET_X, 1, 309.7, 345.9 , 0 );

setScaleKey( spep_0 + 984 + OFFSET_X, 1, 9.99, 9.99 );
setScaleKey( spep_0 + 985 + OFFSET_X, 1, 9.99, 9.99 );
setScaleKey( spep_0 + 986 + OFFSET_X, 1, 9.93, 9.93 );
setScaleKey( spep_0 + 987 + OFFSET_X, 1, 9.93, 9.93 );
setScaleKey( spep_0 + 988 + OFFSET_X, 1, 9.87, 9.87 );
setScaleKey( spep_0 + 989 + OFFSET_X, 1, 9.87, 9.87 );
setScaleKey( spep_0 + 990 + OFFSET_X, 1, 9.81, 9.81 );
setScaleKey( spep_0 + 991 + OFFSET_X, 1, 9.81, 9.81 );
setScaleKey( spep_0 + 992 + OFFSET_X, 1, 9.75, 9.75 );
setScaleKey( spep_0 + 993 + OFFSET_X, 1, 9.75, 9.75 );
setScaleKey( spep_0 + 994 + OFFSET_X, 1, 9.69, 9.69 );
setScaleKey( spep_0 + 995 + OFFSET_X, 1, 9.69, 9.69 );
setScaleKey( spep_0 + 996 + OFFSET_X, 1, 9.63, 9.63 );
setScaleKey( spep_0 + 997 + OFFSET_X, 1, 9.63, 9.63 );
setScaleKey( spep_0 + 998 + OFFSET_X, 1, 9.56, 9.56 );
setScaleKey( spep_0 + 999 + OFFSET_X, 1, 9.56, 9.56 );
setScaleKey( spep_0 + 1000 + OFFSET_X, 1, 9.5, 9.5 );
setScaleKey( spep_0 + 1001 + OFFSET_X, 1, 9.5, 9.5 );
setScaleKey( spep_0 + 1002 + OFFSET_X, 1, 9.43, 9.43 );
setScaleKey( spep_0 + 1003 + OFFSET_X, 1, 9.43, 9.43 );
setScaleKey( spep_0 + 1004 + OFFSET_X, 1, 9.36, 9.36 );
setScaleKey( spep_0 + 1005 + OFFSET_X, 1, 9.36, 9.36 );
setScaleKey( spep_0 + 1006 + OFFSET_X, 1, 9.28, 9.28 );
setScaleKey( spep_0 + 1007 + OFFSET_X, 1, 9.28, 9.28 );
setScaleKey( spep_0 + 1008 + OFFSET_X, 1, 9.2, 9.2 );
setScaleKey( spep_0 + 1009 + OFFSET_X, 1, 9.2, 9.2 );
setScaleKey( spep_0 + 1010 + OFFSET_X, 1, 9.12, 9.12 );
setScaleKey( spep_0 + 1011 + OFFSET_X, 1, 9.12, 9.12 );
setScaleKey( spep_0 + 1012 + OFFSET_X, 1, 9.03, 9.03 );
setScaleKey( spep_0 + 1013 + OFFSET_X, 1, 9.03, 9.03 );
setScaleKey( spep_0 + 1014 + OFFSET_X, 1, 8.94, 8.94 );
setScaleKey( spep_0 + 1015 + OFFSET_X, 1, 8.94, 8.94 );
setScaleKey( spep_0 + 1016 + OFFSET_X, 1, 8.84, 8.84 );
setScaleKey( spep_0 + 1017 + OFFSET_X, 1, 8.84, 8.84 );
setScaleKey( spep_0 + 1018 + OFFSET_X, 1, 8.73, 8.73 );
setScaleKey( spep_0 + 1019 + OFFSET_X, 1, 8.73, 8.73 );
setScaleKey( spep_0 + 1020 + OFFSET_X, 1, 8.62, 8.62 );
setScaleKey( spep_0 + 1021 + OFFSET_X, 1, 8.62, 8.62 );
setScaleKey( spep_0 + 1022 + OFFSET_X, 1, 8.48, 8.48 );
setScaleKey( spep_0 + 1023 + OFFSET_X, 1, 8.48, 8.48 );
setScaleKey( spep_0 + 1024 + OFFSET_X, 1, 8.33, 8.33 );
setScaleKey( spep_0 + 1025 + OFFSET_X, 1, 8.33, 8.33 );
setScaleKey( spep_0 + 1026 + OFFSET_X, 1, 8.16, 8.16 );
setScaleKey( spep_0 + 1027 + OFFSET_X, 1, 8.16, 8.16 );
setScaleKey( spep_0 + 1028 + OFFSET_X, 1, 7.94, 7.94 );
setScaleKey( spep_0 + 1029 + OFFSET_X, 1, 7.94, 7.94 );
setScaleKey( spep_0 + 1030 + OFFSET_X, 1, 7.63, 7.63 );
setScaleKey( spep_0 + 1031 + OFFSET_X, 1, 7.63, 7.63 );
setScaleKey( spep_0 + 1032 + OFFSET_X, 1, 7.21, 7.21 );
setScaleKey( spep_0 + 1033 + OFFSET_X, 1, 7.21, 7.21 );
setScaleKey( spep_0 + 1034 + OFFSET_X, 1, 6.79, 6.79 );
setScaleKey( spep_0 + 1035 + OFFSET_X, 1, 6.79, 6.79 );
setScaleKey( spep_0 + 1036 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_0 + 1037 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_0 + 1038 + OFFSET_X, 1, 5.91, 5.91 );
setScaleKey( spep_0 + 1039 + OFFSET_X, 1, 5.91, 5.91 );
setScaleKey( spep_0 + 1040 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_0 + 1041 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_0 + 1042 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 1043 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 1044 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 1045 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 1046 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 1047 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 1048 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 1049 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 1050 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 1052 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 1053 + OFFSET_X, 1, 3.74, 3.74 );

setRotateKey( spep_0 + 984 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_0 + 998 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_0 + 999 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_0 + 1000 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_0 + 1042 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_0 + 1043 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_0 + 1044 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_0 + 1053 + OFFSET_X, 1, -25.5 );

-- 敵の動き2
setDisp( spep_0 + 1070 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1194 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1070 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 1070 + OFFSET_X, 1, 309.7, 345.9 , 0 );
setMoveKey( spep_0 + 1072 + OFFSET_X, 1, 309.7, 345.9 , 0 );
setMoveKey( spep_0 + 1073 + OFFSET_X, 1, 309.7, 345.9 , 0 );
setMoveKey( spep_0 + 1074 + OFFSET_X, 1, 329.7, 365.9 , 0 );
setMoveKey( spep_0 + 1075 + OFFSET_X, 1, 329.7, 365.9 , 0 );
setMoveKey( spep_0 + 1076 + OFFSET_X, 1, 309.5, 385.6 , 0 );
setMoveKey( spep_0 + 1077 + OFFSET_X, 1, 309.5, 385.6 , 0 );
setMoveKey( spep_0 + 1078 + OFFSET_X, 1, 289.5, 365 , 0 );
setMoveKey( spep_0 + 1079 + OFFSET_X, 1, 289.5, 365 , 0 );
setMoveKey( spep_0 + 1080 + OFFSET_X, 1, 309.7, 344.8 , 0 );
setMoveKey( spep_0 + 1081 + OFFSET_X, 1, 309.7, 344.8 , 0 );
setMoveKey( spep_0 + 1082 + OFFSET_X, 1, 329.7, 324.8 , 0 );
setMoveKey( spep_0 + 1083 + OFFSET_X, 1, 329.7, 324.8 , 0 );
setMoveKey( spep_0 + 1084 + OFFSET_X, 1, 309.5, 305.1 , 0 );
setMoveKey( spep_0 + 1085 + OFFSET_X, 1, 309.5, 305.1 , 0 );
setMoveKey( spep_0 + 1086 + OFFSET_X, 1, 289.5, 325.7 , 0 );
setMoveKey( spep_0 + 1087 + OFFSET_X, 1, 289.5, 325.7 , 0 );
setMoveKey( spep_0 + 1088 + OFFSET_X, 1, 309.7, 346 , 0 );
setMoveKey( spep_0 + 1089 + OFFSET_X, 1, 309.7, 346 , 0 );
setMoveKey( spep_0 + 1090 + OFFSET_X, 1, 329.7, 346 , 0 );
setMoveKey( spep_0 + 1091 + OFFSET_X, 1, 329.7, 346 , 0 );
setMoveKey( spep_0 + 1092 + OFFSET_X, 1, 329.4, 366 , 0 );
setMoveKey( spep_0 + 1093 + OFFSET_X, 1, 329.4, 366 , 0 );
setMoveKey( spep_0 + 1094 + OFFSET_X, 1, 309.2, 365.7 , 0 );
setMoveKey( spep_0 + 1095 + OFFSET_X, 1, 309.2, 365.7 , 0 );
setMoveKey( spep_0 + 1096 + OFFSET_X, 1, 309.2, 345.4 , 0 );
setMoveKey( spep_0 + 1097 + OFFSET_X, 1, 309.2, 345.4 , 0 );
setMoveKey( spep_0 + 1098 + OFFSET_X, 1, 309.2, 337.4 , 0 );
setMoveKey( spep_0 + 1099 + OFFSET_X, 1, 309.2, 337.4 , 0 );
setMoveKey( spep_0 + 1100 + OFFSET_X, 1, 299.2, 337.5 , 0 );
setMoveKey( spep_0 + 1101 + OFFSET_X, 1, 299.2, 337.5 , 0 );
setMoveKey( spep_0 + 1102 + OFFSET_X, 1, 299.4, 345.7 , 0 );
setMoveKey( spep_0 + 1103 + OFFSET_X, 1, 299.4, 345.7 , 0 );
setMoveKey( spep_0 + 1104 + OFFSET_X, 1, 307.5, 345.7 , 0 );
setMoveKey( spep_0 + 1105 + OFFSET_X, 1, 307.5, 345.7 , 0 );
setMoveKey( spep_0 + 1106 + OFFSET_X, 1, 297.6, 335.7 , 0 );
setMoveKey( spep_0 + 1107 + OFFSET_X, 1, 297.6, 335.7 , 0 );
setMoveKey( spep_0 + 1108 + OFFSET_X, 1, 287.8, 343.9 , 0 );
setMoveKey( spep_0 + 1109 + OFFSET_X, 1, 287.8, 343.9 , 0 );
setMoveKey( spep_0 + 1110 + OFFSET_X, 1, 296.2, 353.9 , 0 );
setMoveKey( spep_0 + 1111 + OFFSET_X, 1, 296.2, 353.9 , 0 );
setMoveKey( spep_0 + 1112 + OFFSET_X, 1, 302.4, 345.8 , 0 );
setMoveKey( spep_0 + 1113 + OFFSET_X, 1, 302.4, 345.8 , 0 );
setMoveKey( spep_0 + 1114 + OFFSET_X, 1, 302.6, 331.8 , 0 );
setMoveKey( spep_0 + 1115 + OFFSET_X, 1, 302.6, 331.8 , 0 );
setMoveKey( spep_0 + 1116 + OFFSET_X, 1, 310.7, 328 , 0 );
setMoveKey( spep_0 + 1117 + OFFSET_X, 1, 310.7, 328 , 0 );
setMoveKey( spep_0 + 1118 + OFFSET_X, 1, 320.7, 334.4 , 0 );
setMoveKey( spep_0 + 1119 + OFFSET_X, 1, 320.7, 334.4 , 0 );
setMoveKey( spep_0 + 1120 + OFFSET_X, 1, 312.4, 342.6 , 0 );
setMoveKey( spep_0 + 1121 + OFFSET_X, 1, 312.4, 342.6 , 0 );
setMoveKey( spep_0 + 1122 + OFFSET_X, 1, 313.1, 339.1 , 0 );
setMoveKey( spep_0 + 1123 + OFFSET_X, 1, 313.1, 339.1 , 0 );
setMoveKey( spep_0 + 1124 + OFFSET_X, 1, 309.8, 345.7 , 0 );
setMoveKey( spep_0 + 1125 + OFFSET_X, 1, 309.8, 345.7 , 0 );
setMoveKey( spep_0 + 1126 + OFFSET_X, 1, 302.9, 350.1 , 0 );
setMoveKey( spep_0 + 1127 + OFFSET_X, 1, 302.9, 350.1 , 0 );
setMoveKey( spep_0 + 1128 + OFFSET_X, 1, 308.4, 341.5 , 0 );
setMoveKey( spep_0 + 1129 + OFFSET_X, 1, 308.4, 341.5 , 0 );
setMoveKey( spep_0 + 1130 + OFFSET_X, 1, 310.9, 351.8 , 0 );
setMoveKey( spep_0 + 1131 + OFFSET_X, 1, 310.9, 351.8 , 0 );
setMoveKey( spep_0 + 1132 + OFFSET_X, 1, 309.8, 345.9 , 0 );
setMoveKey( spep_0 + 1133 + OFFSET_X, 1, 309.8, 345.9 , 0 );
setMoveKey( spep_0 + 1134 + OFFSET_X, 1, 309.8, 339.6 , 0 );
setMoveKey( spep_0 + 1135 + OFFSET_X, 1, 309.8, 339.6 , 0 );
setMoveKey( spep_0 + 1136 + OFFSET_X, 1, 315.1, 345.2 , 0 );
setMoveKey( spep_0 + 1137 + OFFSET_X, 1, 315.1, 345.2 , 0 );
setMoveKey( spep_0 + 1138 + OFFSET_X, 1, 316.4, 350.1 , 0 );
setMoveKey( spep_0 + 1139 + OFFSET_X, 1, 316.4, 350.1 , 0 );
setMoveKey( spep_0 + 1140 + OFFSET_X, 1, 316.5, 348.3 , 0 );
setMoveKey( spep_0 + 1141 + OFFSET_X, 1, 316.5, 348.3 , 0 );
setMoveKey( spep_0 + 1142 + OFFSET_X, 1, 311, 351.9 , 0 );
setMoveKey( spep_0 + 1143 + OFFSET_X, 1, 311, 351.9 , 0 );
setMoveKey( spep_0 + 1144 + OFFSET_X, 1, 305.9, 346 , 0 );
setMoveKey( spep_0 + 1145 + OFFSET_X, 1, 305.9, 346 , 0 );
setMoveKey( spep_0 + 1146 + OFFSET_X, 1, 305.4, 338.9 , 0 );
setMoveKey( spep_0 + 1147 + OFFSET_X, 1, 305.4, 338.9 , 0 );
setMoveKey( spep_0 + 1148 + OFFSET_X, 1, 316.4, 340.1 , 0 );
setMoveKey( spep_0 + 1149 + OFFSET_X, 1, 316.4, 340.1 , 0 );
setMoveKey( spep_0 + 1150 + OFFSET_X, 1, 313.5, 342.8 , 0 );
setMoveKey( spep_0 + 1151 + OFFSET_X, 1, 313.5, 342.8 , 0 );
setMoveKey( spep_0 + 1152 + OFFSET_X, 1, 301, 347.6 , 0 );
setMoveKey( spep_0 + 1153 + OFFSET_X, 1, 301, 347.6 , 0 );
setMoveKey( spep_0 + 1154 + OFFSET_X, 1, 314.1, 339.7 , 0 );
setMoveKey( spep_0 + 1155 + OFFSET_X, 1, 314.1, 339.7 , 0 );
setMoveKey( spep_0 + 1156 + OFFSET_X, 1, 309, 351.4 , 0 );
setMoveKey( spep_0 + 1157 + OFFSET_X, 1, 309, 351.4 , 0 );
setMoveKey( spep_0 + 1158 + OFFSET_X, 1, 307.5, 347.9 , 0 );
setMoveKey( spep_0 + 1159 + OFFSET_X, 1, 307.5, 347.9 , 0 );
setMoveKey( spep_0 + 1160 + OFFSET_X, 1, 310.5, 346.4 , 0 );
setMoveKey( spep_0 + 1161 + OFFSET_X, 1, 310.5, 346.4 , 0 );
setMoveKey( spep_0 + 1162 + OFFSET_X, 1, 304.4, 349.3 , 0 );
setMoveKey( spep_0 + 1163 + OFFSET_X, 1, 304.4, 349.3 , 0 );
setMoveKey( spep_0 + 1164 + OFFSET_X, 1, 309.9, 345.9 , 0 );
setMoveKey( spep_0 + 1165 + OFFSET_X, 1, 309.9, 345.9 , 0 );
setMoveKey( spep_0 + 1166 + OFFSET_X, 1, 313.8, 339.7 , 0 );
setMoveKey( spep_0 + 1167 + OFFSET_X, 1, 313.8, 339.7 , 0 );
setMoveKey( spep_0 + 1168 + OFFSET_X, 1, 319.3, 345 , 0 );
setMoveKey( spep_0 + 1169 + OFFSET_X, 1, 319.3, 345 , 0 );
setMoveKey( spep_0 + 1170 + OFFSET_X, 1, 306.7, 352 , 0 );
setMoveKey( spep_0 + 1171 + OFFSET_X, 1, 306.7, 352 , 0 );
setMoveKey( spep_0 + 1172 + OFFSET_X, 1, 309.8, 345.9 , 0 );
setMoveKey( spep_0 + 1173 + OFFSET_X, 1, 309.8, 345.9 , 0 );
setMoveKey( spep_0 + 1174 + OFFSET_X, 1, 319.5, 345.7 , 0 );
setMoveKey( spep_0 + 1175 + OFFSET_X, 1, 319.5, 345.7 , 0 );
setMoveKey( spep_0 + 1176 + OFFSET_X, 1, 309.7, 347 , 0 );
setMoveKey( spep_0 + 1177 + OFFSET_X, 1, 309.7, 347 , 0 );
setMoveKey( spep_0 + 1178 + OFFSET_X, 1, 303.2, 348.8 , 0 );
setMoveKey( spep_0 + 1179 + OFFSET_X, 1, 303.2, 348.8 , 0 );
setMoveKey( spep_0 + 1180 + OFFSET_X, 1, 309.1, 341.4 , 0 );
setMoveKey( spep_0 + 1181 + OFFSET_X, 1, 309.1, 341.4 , 0 );
setMoveKey( spep_0 + 1182 + OFFSET_X, 1, 318.3, 347 , 0 );
setMoveKey( spep_0 + 1183 + OFFSET_X, 1, 318.3, 347 , 0 );
setMoveKey( spep_0 + 1184 + OFFSET_X, 1, 309.9, 346.1 , 0 );
setMoveKey( spep_0 + 1185 + OFFSET_X, 1, 309.9, 346.1 , 0 );
setMoveKey( spep_0 + 1186 + OFFSET_X, 1, 314.3, 343.8 , 0 );
setMoveKey( spep_0 + 1187 + OFFSET_X, 1, 314.3, 343.8 , 0 );
setMoveKey( spep_0 + 1188 + OFFSET_X, 1, 317.1, 340.7 , 0 );
setMoveKey( spep_0 + 1189 + OFFSET_X, 1, 317.1, 340.7 , 0 );
setMoveKey( spep_0 + 1190 + OFFSET_X, 1, 311.9, 341 , 0 );
setMoveKey( spep_0 + 1191 + OFFSET_X, 1, 311.9, 341 , 0 );
setMoveKey( spep_0 + 1192 + OFFSET_X, 1, 309.7, 341.1 , 0 );
setMoveKey( spep_0 + 1194 + OFFSET_X, 1, 309.7, 341.1 , 0 );

setScaleKey( spep_0 + 1070 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 1194 + OFFSET_X, 1, 3.74, 3.74 );

setRotateKey( spep_0 + 1070 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_0 + 1194 + OFFSET_X, 1, -25.5 );

setBlendColor( spep_0 + 1070 + OFFSET_X, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_0 + 1193 + OFFSET_X, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_0 + 1194 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--ポタラ渡す
SE001 = playSeVer2( spep_0 + 0, 1333, "",spep_0 + 30, 4, 8, -1);
setStartTimeMs( SE001,  450 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 544, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--ポタラ渡す
SE003 = playSeVer2( spep_0 + 4, 1003, "", 0, 0, 0, -1);

--ポタラ触る
SE004 = playSeVer2( spep_0 + 18, 1372, "",spep_0 + 100, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 200 );

--ベジータポタラつける
SE005 = playSeVer2( spep_0 + 286, 1372, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 286, SE005, 250 );

--二人光る
SE006 = playSeVer2( spep_0 + 432, 1371, "",spep_0 + 620, 18, 88, -1);
setSeVolumeByWorkId( spep_0 + 432, SE006, 100 );
setStartTimeMs( SE006,  900 );
setPitch( spep_0 + 432, SE006, -900 );
setTimeStretch( SE006, 0.4, 30, 4 );

--ベジータポタラつける
SE007 = playSeVer2( spep_0 + 382, 1372, "",spep_0 + 446, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 382, SE007, 250 );

--二人光る
SE008 = playSeVer2( spep_0 + 442, 1263, "",spep_0 + 580, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 442, SE008, 130 );
setPitch( spep_0 + 442, SE008, 200 );
setTimeStretch( SE008, 1.13, 30, 4 );
SE009 = playSeVer2( spep_0 + 442, 1265, "",spep_0 + 590, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 442, SE009, 85 );
SE010 = playSeVer2( spep_0 + 460, 1307, "",spep_0 + 590, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 460, SE010, 174 );

--二人引き寄せられる
SE011 = playSeVer2( spep_0 + 506, 1185, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 506, SE011, 162 );
setPitch( spep_0 + 506, SE011, -1100 );
setTimeStretch( SE011, 0.5, 30, 4 );
setStartTimeMs( SE011,  680 );
SE012 = playSeVer2( spep_0 + 530, 1184, "",spep_0 + 700, 0, 104, -1);

--光に包まれる
SE013 = playSeVer2( spep_0 + 560, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 560, SE013, 43 );
SE014 = playSeVer2( spep_0 + 596, 1371, "",spep_0 + 926, 36, 126, -1);
setSeVolumeByWorkId( spep_0 + 596, SE014, 47 );
setStartTimeMs( SE014,  600 );
SE015 = playSeVer2( spep_0 + 562, 1043, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 562, SE015, 52 );
SE016 = playSeVer2( spep_0 + 562, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 562, SE016, 56 );
SE017 = playSeVer2( spep_0 + 710, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 710, SE017, 25 );
SE018 = playSeVer2( spep_0 + 700, 1181, "",spep_0 + 928, 0, 122, -1);
setSeVolumeByWorkId( spep_0 + 700, SE018, 138 );

--セリフカットイン
SE019 = playSeVer2( spep_0 + 572, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 572, SE019, 56 );

--光に包まれる
SE020 = playSeVer2( spep_0 + 572, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 572, SE020, 38 );

--ポタラ光る
SE021 = playSeVer2( spep_0 + 630, 1303, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 630, SE021, 25 );

--構える
SE022 = playSeVer2( spep_0 + 866, 1233, "",spep_0 + 892, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 866, SE022, 78 );
SE023 = playSeVer2( spep_0 + 878, 1006, "",spep_0 + 892, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 878, SE023, 62 );

--カメラズーム
SE024 = playSeVer2( spep_0 + 978, 1072, "", 0, 0, 0, -1);
setTimeStretch( SE024, 1.32, 30, 4 );

--気ダメ第一段階
SE025 = playSeVer2( spep_0 + 1058, 1252, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1058, SE025, 73 );
SE026 = playSeVer2( spep_0 + 1058, 1289, "", spep_0 + 1190, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 1058, SE026, 43 );
SE027 = playSeVer2( spep_0 + 1058, 1258, "", spep_0 + 1190, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 1058, SE027, 34 );
SE028 = playSeVer2( spep_0 + 1058, 1338, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1058, SE028, 74 );

--オーラ
SE029 = playSeVer2( spep_0 + 1192, 1356, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 1192, SE029, 44 );
setStartTimeMs( SE029,  2133 );

--気ダメ第一段階
SE030 = playSeVer2( spep_0 + 1070, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1070, SE030, 55 );
setPitch( spep_0 + 1070, SE030, -400 );
setTimeStretch( SE030, 1.05, 30, 4 );
SE031 = playSeVer2( spep_0 + 1070, 1353, "", spep_0 + 1190, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 1070, SE031, 74 );

--オーラ
SE032 = playSeVer2( spep_0 + 1196, 1407, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1196, SE032, 562 );
SE033 = playSeVer2( spep_0 + 1194, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1194, SE033, 25 );
SE034 = playSeVer2( spep_0 + 1194, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1194, SE034, 52 );

--気ダメ第二段階
SE035 = playSeVer2( spep_0 + 1196, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1196, SE035, 33 );
SE036 = playSeVer2( spep_0 + 1196, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1196, SE036, 62 );
SE037 = playSeVer2( spep_0 + 1206, 1395, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1206, SE037, 42 );
SE038 = playSeVer2( spep_0 + 1206, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1206, SE038, 58 );

-- ** ボイス ** --
-- 「ほらよ、ベジータ！」
playVoice( spep_0 + 10, 667 );
setVoiceVolume( spep_0 + 10, 667, 100 );

-- 「くっ…」
playVoice( spep_0 + 112, 668 );
setVoiceVolume( spep_0 + 112, 668, 100 );

-- 「くそ…！　１時間耐えてやる…」
playVoice( spep_0 + 276, 669 );
setVoiceVolume( spep_0 + 276, 669, 100 );

-- 「オレはベジータとカカロットの合体…　ベジットだ！！」
playVoice( spep_0 + 566, 670 );
setVoiceVolume( spep_0 + 566, 670, 126 );

-- 「そしてこれが、」
playVoice( spep_0 + 884, 671 );
setVoiceVolume( spep_0 + 884, 671, 126 );

-- 「ベジットブルー！！」
playVoice( spep_0 + 984, 672 );
setVoiceVolume( spep_0 + 984, 672, 126 );

-- 「だあぁーーーっ！！！」
playVoice( spep_0 + 1184, 673 );
setVoiceVolume( spep_0 + 1184, 673, 126 );

endPhase( spep_0 + MAX_FRAME_0);
else end