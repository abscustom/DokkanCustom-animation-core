--1031590:LR_超サイヤ人孫悟飯(青年期)+超サイヤ人トランクス(幼年期)&超サイヤ人孫悟天(幼年期)_アクティブ必殺：トリプルかめはめ波
--sp_effect_a1_00500
--ut0107

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164028; --登場〜タメ〜攻撃〜ヒット ef_001
--SP_02 = 164029; --背景 ef_001b

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
           skipFrame(0, spep_0 + 1000 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 1000 -13, SP_01, spep_0 + 1000 -13 + 2, 1);
       else
           skipFrame(0, spep_0 + 890 );  -- スキップ先フレーム指定
           setupMovie(spep_0 + 890 , SP_01, spep_0 + 890 - 1 + 2, 1);

           --かめはめ波発射
           SE016 = playSeVer2( spep_0 + 890, 1145, "", 0, 0, 0, -1);
       end
    else 
        setupMovie(0, SP_01, 0, 1);

    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場〜タメ〜攻撃〜ヒット
-------------------------------------------------

MAX_FRAME_0 = 1234;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場〜タメ〜攻撃〜ヒット前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);
--[[
start_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 背景(ef_001b)
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
--敵の動き
setDisp( spep_0 + 978 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1086 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 978 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 1082 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 978 + OFFSET_X, 1, 462.8, -787.8 , 0 );
setMoveKey( spep_0 + 979 + OFFSET_X, 1, 462.8, -787.8 , 0 );
setMoveKey( spep_0 + 980 + OFFSET_X, 1, 436.7, -736.7 , 0 );
setMoveKey( spep_0 + 981 + OFFSET_X, 1, 436.7, -736.7 , 0 );
setMoveKey( spep_0 + 982 + OFFSET_X, 1, 410.4, -710.2 , 0 );
setMoveKey( spep_0 + 983 + OFFSET_X, 1, 410.4, -710.2 , 0 );
setMoveKey( spep_0 + 984 + OFFSET_X, 1, 390.9, -672.4 , 0 );
setMoveKey( spep_0 + 985 + OFFSET_X, 1, 390.9, -672.4 , 0 );
setMoveKey( spep_0 + 986 + OFFSET_X, 1, 375.2, -656.2 , 0 );
setMoveKey( spep_0 + 987 + OFFSET_X, 1, 375.2, -656.2 , 0 );
setMoveKey( spep_0 + 988 + OFFSET_X, 1, 360.3, -623.8 , 0 );
setMoveKey( spep_0 + 989 + OFFSET_X, 1, 360.3, -623.8 , 0 );
setMoveKey( spep_0 + 990 + OFFSET_X, 1, 347.2, -614 , 0 );
setMoveKey( spep_0 + 991 + OFFSET_X, 1, 347.2, -614 , 0 );
setMoveKey( spep_0 + 992 + OFFSET_X, 1, 334.9, -585.1 , 0 );
setMoveKey( spep_0 + 993 + OFFSET_X, 1, 334.9, -585.1 , 0 );
setMoveKey( spep_0 + 994 + OFFSET_X, 1, 324.3, -576.5 , 0 );
setMoveKey( spep_0 + 995 + OFFSET_X, 1, 324.3, -576.5 , 0 );
setMoveKey( spep_0 + 996 + OFFSET_X, 1, 314.6, -551.9 , 0 );
setMoveKey( spep_0 + 997 + OFFSET_X, 1, 314.6, -551.9 , 0 );
setMoveKey( spep_0 + 998 + OFFSET_X, 1, 304.6, -547.9 , 0 );
setMoveKey( spep_0 + 999 + OFFSET_X, 1, 304.6, -547.9 , 0 );
setMoveKey( spep_0 + 1000 + OFFSET_X, 1, 295.7, -523.7 , 0 );
setMoveKey( spep_0 + 1001 + OFFSET_X, 1, 295.7, -523.7 , 0 );
setMoveKey( spep_0 + 1002 + OFFSET_X, 1, 287.4, -520.1 , 0 );
setMoveKey( spep_0 + 1003 + OFFSET_X, 1, 287.4, -520.1 , 0 );
setMoveKey( spep_0 + 1004 + OFFSET_X, 1, 278.2, -497.9 , 0 );
setMoveKey( spep_0 + 1005 + OFFSET_X, 1, 278.2, -497.9 , 0 );
setMoveKey( spep_0 + 1006 + OFFSET_X, 1, 273.2, -495.8 , 0 );
setMoveKey( spep_0 + 1007 + OFFSET_X, 1, 273.2, -495.8 , 0 );
setMoveKey( spep_0 + 1008 + OFFSET_X, 1, 266.1, -476.8 , 0 );
setMoveKey( spep_0 + 1009 + OFFSET_X, 1, 266.1, -476.8 , 0 );
setMoveKey( spep_0 + 1010 + OFFSET_X, 1, 260.6, -478.3 , 0 );
setMoveKey( spep_0 + 1011 + OFFSET_X, 1, 260.6, -478.3 , 0 );
setMoveKey( spep_0 + 1012 + OFFSET_X, 1, 255.6, -458.4 , 0 );
setMoveKey( spep_0 + 1013 + OFFSET_X, 1, 255.6, -458.4 , 0 );
setMoveKey( spep_0 + 1014 + OFFSET_X, 1, 249.4, -459.3 , 0 );
setMoveKey( spep_0 + 1015 + OFFSET_X, 1, 249.4, -459.3 , 0 );
setMoveKey( spep_0 + 1016 + OFFSET_X, 1, 244.4, -439.3 , 0 );
setMoveKey( spep_0 + 1017 + OFFSET_X, 1, 244.4, -439.3 , 0 );
setMoveKey( spep_0 + 1018 + OFFSET_X, 1, 240.3, -442.2 , 0 );
setMoveKey( spep_0 + 1019 + OFFSET_X, 1, 240.3, -442.2 , 0 );
setMoveKey( spep_0 + 1020 + OFFSET_X, 1, 235.2, -424.1 , 0 );
setMoveKey( spep_0 + 1021 + OFFSET_X, 1, 235.2, -424.1 , 0 );
setMoveKey( spep_0 + 1022 + OFFSET_X, 1, 230.2, -425 , 0 );
setMoveKey( spep_0 + 1023 + OFFSET_X, 1, 230.2, -425 , 0 );
setMoveKey( spep_0 + 1024 + OFFSET_X, 1, 225.5, -407.5 , 0 );
setMoveKey( spep_0 + 1025 + OFFSET_X, 1, 225.5, -407.5 , 0 );
setMoveKey( spep_0 + 1026 + OFFSET_X, 1, 220.3, -409.5 , 0 );
setMoveKey( spep_0 + 1027 + OFFSET_X, 1, 220.3, -409.5 , 0 );
setMoveKey( spep_0 + 1028 + OFFSET_X, 1, 216.2, -391.3 , 0 );
setMoveKey( spep_0 + 1029 + OFFSET_X, 1, 216.2, -391.3 , 0 );
setMoveKey( spep_0 + 1030 + OFFSET_X, 1, 212.2, -394.2 , 0 );
setMoveKey( spep_0 + 1031 + OFFSET_X, 1, 212.2, -394.2 , 0 );
setMoveKey( spep_0 + 1032 + OFFSET_X, 1, 207, -376.1 , 0 );
setMoveKey( spep_0 + 1033 + OFFSET_X, 1, 207, -376.1 , 0 );
setMoveKey( spep_0 + 1034 + OFFSET_X, 1, 202.9, -379 , 0 );
setMoveKey( spep_0 + 1035 + OFFSET_X, 1, 202.9, -379 , 0 );
setMoveKey( spep_0 + 1036 + OFFSET_X, 1, 198.8, -360.9 , 0 );
setMoveKey( spep_0 + 1037 + OFFSET_X, 1, 198.8, -360.9 , 0 );
setMoveKey( spep_0 + 1038 + OFFSET_X, 1, 194.6, -363.8 , 0 );
setMoveKey( spep_0 + 1039 + OFFSET_X, 1, 194.6, -363.8 , 0 );
setMoveKey( spep_0 + 1040 + OFFSET_X, 1, 189.4, -346.8 , 0 );
setMoveKey( spep_0 + 1041 + OFFSET_X, 1, 189.4, -346.8 , 0 );
setMoveKey( spep_0 + 1042 + OFFSET_X, 1, 185.2, -349.7 , 0 );
setMoveKey( spep_0 + 1043 + OFFSET_X, 1, 185.2, -349.7 , 0 );
setMoveKey( spep_0 + 1044 + OFFSET_X, 1, 181.1, -332.5 , 0 );
setMoveKey( spep_0 + 1045 + OFFSET_X, 1, 181.1, -332.5 , 0 );
setMoveKey( spep_0 + 1046 + OFFSET_X, 1, 177, -333.3 , 0 );
setMoveKey( spep_0 + 1047 + OFFSET_X, 1, 177, -333.3 , 0 );
setMoveKey( spep_0 + 1048 + OFFSET_X, 1, 172.8, -317.3 , 0 );
setMoveKey( spep_0 + 1049 + OFFSET_X, 1, 172.8, -317.3 , 0 );
setMoveKey( spep_0 + 1050 + OFFSET_X, 1, 166.7, -320 , 0 );
setMoveKey( spep_0 + 1051 + OFFSET_X, 1, 166.7, -320 , 0 );
setMoveKey( spep_0 + 1052 + OFFSET_X, 1, 162.4, -302.9 , 0 );
setMoveKey( spep_0 + 1053 + OFFSET_X, 1, 162.4, -302.9 , 0 );
setMoveKey( spep_0 + 1054 + OFFSET_X, 1, 157.1, -304.6 , 0 );
setMoveKey( spep_0 + 1055 + OFFSET_X, 1, 157.1, -304.6 , 0 );
setMoveKey( spep_0 + 1056 + OFFSET_X, 1, 152.8, -288.5 , 0 );
setMoveKey( spep_0 + 1057 + OFFSET_X, 1, 152.8, -288.5 , 0 );
setMoveKey( spep_0 + 1058 + OFFSET_X, 1, 148.5, -291.1 , 0 );
setMoveKey( spep_0 + 1059 + OFFSET_X, 1, 148.5, -291.1 , 0 );
setMoveKey( spep_0 + 1060 + OFFSET_X, 1, 143, -272.9 , 0 );
setMoveKey( spep_0 + 1061 + OFFSET_X, 1, 143, -272.9 , 0 );
setMoveKey( spep_0 + 1062 + OFFSET_X, 1, 138.5, -275.4 , 0 );
setMoveKey( spep_0 + 1063 + OFFSET_X, 1, 138.5, -275.4 , 0 );
setMoveKey( spep_0 + 1064 + OFFSET_X, 1, 133, -258 , 0 );
setMoveKey( spep_0 + 1065 + OFFSET_X, 1, 133, -258 , 0 );
setMoveKey( spep_0 + 1066 + OFFSET_X, 1, 127.1, -257.1 , 0 );
setMoveKey( spep_0 + 1067 + OFFSET_X, 1, 127.1, -257.1 , 0 );
setMoveKey( spep_0 + 1068 + OFFSET_X, 1, 119.3, -238.5 , 0 );
setMoveKey( spep_0 + 1069 + OFFSET_X, 1, 119.3, -238.5 , 0 );
setMoveKey( spep_0 + 1070 + OFFSET_X, 1, 111.3, -234.6 , 0 );
setMoveKey( spep_0 + 1071 + OFFSET_X, 1, 111.3, -234.6 , 0 );
setMoveKey( spep_0 + 1072 + OFFSET_X, 1, 99.2, -206.7 , 0 );
setMoveKey( spep_0 + 1073 + OFFSET_X, 1, 99.2, -206.7 , 0 );
setMoveKey( spep_0 + 1074 + OFFSET_X, 1, 85.8, -197.8 , 0 );
setMoveKey( spep_0 + 1075 + OFFSET_X, 1, 85.8, -197.8 , 0 );
setMoveKey( spep_0 + 1076 + OFFSET_X, 1, 73.6, -159 , 0 );
setMoveKey( spep_0 + 1081 + OFFSET_X, 1, 73.6, -159 , 0 );
setMoveKey( spep_0 + 1082 + OFFSET_X, 1, 38.7, -5 , 0 );
setMoveKey( spep_0 + 1083 + OFFSET_X, 1, 38.7, -5 , 0 );
setMoveKey( spep_0 + 1084 + OFFSET_X, 1, 37.1, 5.1 , 0 );
setMoveKey( spep_0 + 1086 + OFFSET_X, 1, 37.1, 5.1 , 0 );

setScaleKey( spep_0 + 978 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 985 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 986 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 989 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 990 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 991 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 992 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 997 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 998 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 1001 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 1002 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 1005 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 1006 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 1007 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 1008 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 1013 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 1014 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 1017 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 1018 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 1019 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 1020 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 1021 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 1022 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 1023 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 1024 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 1025 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 1026 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 1027 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 1028 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 1029 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 1030 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 1031 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 1032 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 1033 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 1034 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 1035 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 1036 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 1037 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 1038 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 1039 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 1040 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 1041 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 1042 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 1043 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 1044 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 1045 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 1046 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 1047 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 1048 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 1049 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 1050 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 1051 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 1052 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 1053 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 1054 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 1055 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 1056 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 1057 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 1058 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 1059 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 1060 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 1061 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 1062 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 1063 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 1064 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 1065 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 1066 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 1067 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 1068 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 1069 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 1070 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 1071 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 1072 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 1073 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 1074 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 1075 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 1076 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 1081 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 1082 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 1083 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 1084 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 1086 + OFFSET_X, 1, 2.84, 2.84 );

setRotateKey( spep_0 + 978 + OFFSET_X, 1, 25 );
setRotateKey( spep_0 + 985 + OFFSET_X, 1, 25 );
setRotateKey( spep_0 + 986 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_0 + 989 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_0 + 990 + OFFSET_X, 1, 24.8 );
setRotateKey( spep_0 + 993 + OFFSET_X, 1, 24.8 );
setRotateKey( spep_0 + 994 + OFFSET_X, 1, 24.6 );
setRotateKey( spep_0 + 995 + OFFSET_X, 1, 24.6 );
setRotateKey( spep_0 + 996 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_0 + 997 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_0 + 998 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_0 + 1001 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_0 + 1002 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_0 + 1003 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_0 + 1004 + OFFSET_X, 1, 22 );
setRotateKey( spep_0 + 1005 + OFFSET_X, 1, 22 );
setRotateKey( spep_0 + 1006 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 1007 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 1008 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_0 + 1009 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_0 + 1010 + OFFSET_X, 1, 19 );
setRotateKey( spep_0 + 1011 + OFFSET_X, 1, 19 );
setRotateKey( spep_0 + 1012 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_0 + 1013 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_0 + 1014 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 1017 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 1018 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 1019 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 1020 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 1021 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 1022 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 1025 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 1026 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 1033 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 1034 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_0 + 1037 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_0 + 1038 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 1039 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 1040 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 1045 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 1046 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 1051 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 1052 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 1053 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 1054 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_0 + 1063 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_0 + 1064 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 1081 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 1082 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_0 + 1083 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_0 + 1084 + OFFSET_X, 1, 19 );
setRotateKey( spep_0 + 1086 + OFFSET_X, 1, 19 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 712, 0, 142, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
setTimeStretch( SE002, 1.67, 30, 4 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 4, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 63 );

--構える
SE004 = playSeVer2( spep_0 + 276, 1004, "", 0, 0, 0, -1);

--かめはめ波溜め
SE005 = playSeVer2( spep_0 + 310, 1209, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 332, 1210, "",spep_0 + 852, 0, 62, -1);
SE007 = playSeVer2( spep_0 + 346, 1328, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 356, 1405, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 356, 1356, "",spep_0 + 832, 0, 40, -1);

--顔アップ
SE010 = playSeVer2( spep_0 + 564, 1215, "",spep_0 + 846, 0, 46, -1);
SE011 = playSeVer2( spep_0 + 626, 8, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 630, 1132, "", 0, 0, 0, -1);

--かめはめ波発射
SE013 = playSeVer2( spep_0 + 776, 1133, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 776, SE013, 90 );
SE014 = playSeVer2( spep_0 + 776, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 776, SE014, 76 );
SE015 = playSeVer2( spep_0 + 776, 1423, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 776, SE015, 90 );
SE016 = playSeVer2( spep_0 + 814, 1145, "", 0, 0, 0, -1);

--正面発射
SE017 = playSeVer2( spep_0 + 896, 1284, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 896, 1193, "",spep_0 + 1118, 0, 32, -1);

--かめはめ波飛んでいく
SE019 = playSeVer2( spep_0 + 974, 1390, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「全力でいくぞ！悟天！トランクス！」
playVoice( spep_0 + 10, 1050 );
setVoiceVolume( spep_0 + 12, 1050, 120 );

--「うん！」
playVoice( spep_0 + 200, 1051 );
setVoiceVolume( spep_0 + 206, 1051, 120 );

--「はい！」
playVoice( spep_0 + 208, 1052 );
setVoiceVolume( spep_0 + 214, 1052, 120 );

--「か…」
playVoice( spep_0 + 394, 1053 );
setVoiceVolume( spep_0 + 398, 1053, 120 );

--「め…」
playVoice( spep_0 + 454, 1054 );
setVoiceVolume( spep_0 + 458, 1054, 120 );

--「は…」
playVoice( spep_0 + 516, 1055 );
setVoiceVolume( spep_0 + 520, 1055, 120 );

--「め…」
playVoice( spep_0 + 580, 1056 );
setVoiceVolume( spep_0 + 584, 1056, 120 );

--「波ーーッ！！」
playVoice( spep_0 + 768, 1057 );
setVoiceVolume( spep_0 + 772, 1057, 160 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 1000; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
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
--かめはめ波飛んでいく
SE020 = playSeVer2( spep_0 + 1016, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1016, SE020, 178 );

--爆発
SE021 = playSeVer2( spep_0 + 1078, 1159, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 1078, 1156, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 1116, 1067, "", 0, 0, 0, -1);


--終わり
hideKoScreen();
dealDamage( spep_0 + 1124);
endPhase( spep_0 + MAX_FRAME_0); -- 1234f (KO時 1416f)


else end