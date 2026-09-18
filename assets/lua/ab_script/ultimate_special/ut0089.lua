--1030730:UR_ミスター・サタン_アクティブ必殺技：夢の合体！？
--sp_effect_a2_00256
--ut0089

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163624;  -- フュージョン〜超元気玉〜爆発 敵より前 ef_001

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
           skipFrame(0, spep_0 + 1020 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 1020 -13, SP_01, spep_0 + 1020 -13 -2, 1);
       else
           skipFrame(0, spep_0 + 1098);  -- スキップ先フレーム指定
           setupMovie(spep_0 + 1098, SP_01, spep_0 + 1098-2, 1);
       end
    else
      setupMovie(0, SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- フュージョン〜超元気玉〜爆発
-------------------------------------------------
MAX_FRAME_0 = 1238;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- フュージョン〜超元気玉〜爆発 敵より前(ef_001)
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

setDisp( spep_0 + 1048 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1100 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1048 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 1048 + OFFSET_X, 1, 261.5, -272 , 0 );
setMoveKey( spep_0 + 1051 + OFFSET_X, 1, 261.5, -272 , 0 );
setMoveKey( spep_0 + 1052 + OFFSET_X, 1, 265.5, -268 , 0 );
setMoveKey( spep_0 + 1053 + OFFSET_X, 1, 265.5, -268 , 0 );
setMoveKey( spep_0 + 1054 + OFFSET_X, 1, 257.5, -276 , 0 );
setMoveKey( spep_0 + 1055 + OFFSET_X, 1, 257.5, -276 , 0 );
setMoveKey( spep_0 + 1056 + OFFSET_X, 1, 265.5, -276 , 0 );
setMoveKey( spep_0 + 1057 + OFFSET_X, 1, 265.5, -276 , 0 );
setMoveKey( spep_0 + 1058 + OFFSET_X, 1, 265.5, -292 , 0 );
setMoveKey( spep_0 + 1059 + OFFSET_X, 1, 265.5, -292 , 0 );
setMoveKey( spep_0 + 1060 + OFFSET_X, 1, 261.5, -272 , 0 );
setMoveKey( spep_0 + 1061 + OFFSET_X, 1, 261.5, -272 , 0 );
setMoveKey( spep_0 + 1062 + OFFSET_X, 1, 253.5, -276 , 0 );
setMoveKey( spep_0 + 1063 + OFFSET_X, 1, 253.5, -276 , 0 );
setMoveKey( spep_0 + 1064 + OFFSET_X, 1, 257.5, -260 , 0 );
setMoveKey( spep_0 + 1065 + OFFSET_X, 1, 257.5, -260 , 0 );
setMoveKey( spep_0 + 1066 + OFFSET_X, 1, 257.5, -268 , 0 );
setMoveKey( spep_0 + 1067 + OFFSET_X, 1, 257.5, -268 , 0 );
setMoveKey( spep_0 + 1068 + OFFSET_X, 1, 257.5, -256 , 0 );
setMoveKey( spep_0 + 1069 + OFFSET_X, 1, 257.5, -256 , 0 );
setMoveKey( spep_0 + 1070 + OFFSET_X, 1, 257.5, -268 , 0 );
setMoveKey( spep_0 + 1071 + OFFSET_X, 1, 257.5, -268 , 0 );
setMoveKey( spep_0 + 1072 + OFFSET_X, 1, 257.5, -248 , 0 );
setMoveKey( spep_0 + 1073 + OFFSET_X, 1, 257.5, -248 , 0 );
setMoveKey( spep_0 + 1074 + OFFSET_X, 1, 261.5, -280 , 0 );
setMoveKey( spep_0 + 1075 + OFFSET_X, 1, 261.5, -280 , 0 );
setMoveKey( spep_0 + 1076 + OFFSET_X, 1, 265.5, -268 , 0 );
setMoveKey( spep_0 + 1077 + OFFSET_X, 1, 265.5, -268 , 0 );
setMoveKey( spep_0 + 1078 + OFFSET_X, 1, 265.5, -280 , 0 );
setMoveKey( spep_0 + 1079 + OFFSET_X, 1, 265.5, -280 , 0 );
setMoveKey( spep_0 + 1080 + OFFSET_X, 1, 265.5, -252 , 0 );
setMoveKey( spep_0 + 1081 + OFFSET_X, 1, 265.5, -252 , 0 );
setMoveKey( spep_0 + 1082 + OFFSET_X, 1, 265.5, -284 , 0 );
setMoveKey( spep_0 + 1083 + OFFSET_X, 1, 265.5, -284 , 0 );
setMoveKey( spep_0 + 1084 + OFFSET_X, 1, 277.5, -252 , 0 );
setMoveKey( spep_0 + 1085 + OFFSET_X, 1, 277.5, -252 , 0 );
setMoveKey( spep_0 + 1086 + OFFSET_X, 1, 277.5, -280 , 0 );
setMoveKey( spep_0 + 1087 + OFFSET_X, 1, 277.5, -280 , 0 );
setMoveKey( spep_0 + 1088 + OFFSET_X, 1, 269.5, -251.9 , 0 );
setMoveKey( spep_0 + 1089 + OFFSET_X, 1, 269.5, -251.9 , 0 );
setMoveKey( spep_0 + 1090 + OFFSET_X, 1, 277.5, -284 , 0 );
setMoveKey( spep_0 + 1091 + OFFSET_X, 1, 277.5, -284 , 0 );
setMoveKey( spep_0 + 1092 + OFFSET_X, 1, 277.5, -248 , 0 );
setMoveKey( spep_0 + 1093 + OFFSET_X, 1, 277.5, -248 , 0 );
setMoveKey( spep_0 + 1094 + OFFSET_X, 1, 285.5, -292 , 0 );
setMoveKey( spep_0 + 1095 + OFFSET_X, 1, 285.5, -298 , 0 );
setMoveKey( spep_0 + 1096 + OFFSET_X, 1, 289.5, -239.9 , 0 );
setMoveKey( spep_0 + 1097 + OFFSET_X, 1, 289.5, -239.9 , 0 );
setMoveKey( spep_0 + 1100 + OFFSET_X, 1, 281.5, -291.9 , 0 );

setScaleKey( spep_0 + 1050 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 1100 + OFFSET_X, 1, 3.5, 3.5 );

setRotateKey( spep_0 + 1050 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1100 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);

--セリフカットイン
SE002 = playSeVer2( spep_0 + 12, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE002, 63 );

--流れ背景
SE003 = playSeVer2( spep_0 + 30, 1264, "",spep_0 + 162, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 30, SE003, 55 );

--ポタラ投げる
SE004 = playSeVer2( spep_0 + 108, 1119, "", 0, 6, 0, -1);
setStartTimeMs( SE004,  567 );
SE005 = playSeVer2( spep_0 + 104, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 112, 1117, "",spep_0 + 158, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 112, SE006, 79 );

--受け取る
SE007 = playSeVer2( spep_0 + 146, 411, "",spep_0 + 160, 0, 8, -1);
SE008 = playSeVer2( spep_0 + 152, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE008, 164 );

--画面遷移
SE009 = playSeVer2( spep_0 + 194, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 194, SE009, 77 );

--ポタラつける
SE010 = playSeVer2( spep_0 + 218, 1372, "",spep_0 + 282, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 218, SE010, 288 );
SE011 = playSeVer2( spep_0 + 254, 1273, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 254, 1274, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 260, 1275, "", 0, 0, 0, -1);

--体すいよせられる
SE014 = playSeVer2( spep_0 + 298, 1183, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 298, 1175, "",spep_0 + 450, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 298, SE015, 55 );
SE016 = playSeVer2( spep_0 + 298, 1278, "",spep_0 + 448, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 298, SE016, 84 );

--アップ決め
SE017 = playSeVer2( spep_0 + 510, 1437, "",spep_0 + 648, 8, 82, -1);
setSeVolumeByWorkId( spep_0 + 510, SE017, 52 );
setStartTimeMs( SE017,  2200 );

--合体する
SE018 = playSeVer2( spep_0 + 384, 1024, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 384, 1231, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 384, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE020, 79 );

--光あふれてシルエット出る
SE021 = playSeVer2( spep_0 + 440, 1306, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 440, 1263, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 440, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 440, SE023, 73 );

--アップ決め
SE024 = playSeVer2( spep_0 + 526, 1062, "", 0, 0, 0, -1);

--腕上げる
SE025 = playSeVer2( spep_0 + 576, 1189, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 588, 1012, "", 0, 0, 0, -1);

--集中線
SE027 = playSeVer2( spep_0 + 604, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 604, SE027, 76 );
SE028 = playSeVer2( spep_0 + 604, 1237, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 604, SE028, 64 );

--カメラひく
SE029 = playSeVer2( spep_0 + 758, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 758, SE029, 85 );

--気弾溜める
SE030 = playSeVer2( spep_0 + 798, 1191, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 798, 1158, "",spep_0 + 1036, 0, 40, -1);
SE032 = playSeVer2( spep_0 + 798, 1037, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 798, SE032, 71 );
SE033 = playSeVer2( spep_0 + 798, 1356, "",spep_0 + 1030, 0, 36, -1);
SE034 = playSeVer2( spep_0 + 798, 1396, "",spep_0 + 1030, 0, 38, -1);

--振りかぶる
SE035 = playSeVer2( spep_0 + 926, 1116, "",spep_0 + 990, 0, 28, -1);

--気弾発射
SE036 = playSeVer2( spep_0 + 984, 1027, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 984, 1193, "",spep_0 + 1164, 0, 34, -1);

-- ** ボイス ** --

--「サタン！！！うけとれっ！！」
playVoice( spep_0 + 2, 913 );
setVoiceVolume( spep_0 + 2, 913, 128 )

--「さあ！！おまえたちも力をかさんか！！」
playVoice( spep_0 + 578, 914 );
setVoiceVolume( spep_0 + 578, 914, 128 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 1020; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE031, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
stopSe( SP_dodge - 12, SE034, 0);
stopSe( SP_dodge - 12, SE035, 0);
stopSe( SP_dodge - 12, SE036, 0);
stopSe( SP_dodge - 12, SE037, 0);
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

--気弾飛んでいく
SE038 = playSeVer2( spep_0 + 1038, 1021, "", 0, 0, 0, -1);

--爆発
SE039 = playSeVer2( spep_0 + 1124, 1159, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 1124, 1114, "", 0, 0, 0, -1);

-- ** おわり ** --
-- hideKoScreen();
dealDamage( spep_0 + 1136); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 -2); -- 1236

else end