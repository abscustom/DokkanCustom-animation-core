--1026750：UR_ターレス_サイヤ人にふさわしい生き方をしろ！(アクティブ)
--sp_effect_b4_00292
--ut0054

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--エフェクト(味方)
SP_01 = 161930;	--球を生成するターレス～大猿が敵を平手打ち	ef_001	678	手前側　反転無し
SP_01b = 161931;	--球を生成するターレス～大猿が敵を平手打ち	ef_001b	678	敵側　反転無し
SP_02 = 161932;	--敵が地面に激突して砂煙	ef_002	90	反転無し　※敵の手前側

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.8);


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

if (_IS_PLAYER_SIDE_ == 1) then
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
        spep_1 = spep_0 + 1354;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 1150 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_1 + 1);  -- スキップ先フレーム指定

           --敵飛んでいく
           SE031 = playSeVer2( spep_1 + 1, 1121, "",spep_1 + 64, 0, 12, -1);

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 球を生成するターレス～大猿が敵を平手打ち
------------------------------------------------------

spep_0 = 0;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  -- ef_001 手前側　反転無し
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1354, base_0f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1354, base_0f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_0f, 0 );
setEffRotateKey( spep_0 + 1354, base_0f, 0 );
setEffAlphaKey( spep_0 + 0, base_0f, 255 );
setEffAlphaKey( spep_0 + 1354 -2, base_0f, 255);
setEffAlphaKey( spep_0 + 1354 -1, base_0f, 255);
setEffAlphaKey( spep_0 + 1354, base_0f, 0 );

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b	敵側　反転無し
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + 1354, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + 1354, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + 1354, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + 1354 -2, base_0b, 255);
setEffAlphaKey( spep_0 + 1354 -1, base_0b, 255);
setEffAlphaKey( spep_0 + 1354, base_0b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1354 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_0 -1 + 1084, 1, 1 );
-- setDisp( spep_0 -1 + 1354, 1, 0 );

changeAnime( spep_0 -1 + 1084, 1, 102 );
changeAnime( spep_0 -1 + 1144, 1, 118 );

setMoveKey( spep_0 -1 + 1084, 1, 218.1, -160.2 , 0 );
setMoveKey( spep_0 -1 + 1124, 1, 218.1, -160.2 , 0 );
setMoveKey( spep_0 -1 + 1126, 1, 215.2, -158.3 , 0 );
setMoveKey( spep_0 -1 + 1128, 1, 211.9, -156.2 , 0 );
setMoveKey( spep_0 -1 + 1130, 1, 208.1, -153.7 , 0 );
setMoveKey( spep_0 -1 + 1132, 1, 203.6, -150.7 , 0 );
setMoveKey( spep_0 -1 + 1134, 1, 196.9, -146.1 , 0 );
setMoveKey( spep_0 -1 + 1136, 1, 178.7, -134.3 , 0 );
setMoveKey( spep_0 -1 + 1138, 1, 156.6, -119.1 , 0 );
setMoveKey( spep_0 -1 + 1140, 1, 135.6, -103.9 , 0 );
setMoveKey( spep_0 -1 + 1142, 1, 117.8, -90.7 , 0 );
setMoveKey( spep_0 -1 + 1143, 1, 117.8, -90.7 , 0 );
setMoveKey( spep_0 -1 + 1144, 1, 119.8, -75.3 , 0 );
setMoveKey( spep_0 -1 + 1146, 1, 93.6, -97.3 , 0 );
setMoveKey( spep_0 -1 + 1148, 1, 112.5, -96.4 , 0 );
setMoveKey( spep_0 -1 + 1150, 1, 87.6, -64.6 , 0 );

setScaleKey( spep_0 -1 + 1084, 1, 0.99, 0.99 );
setScaleKey( spep_0 -1 + 1124, 1, 0.99, 0.99 );
setScaleKey( spep_0 -1 + 1126, 1, 0.98, 0.97 );
setScaleKey( spep_0 -1 + 1128, 1, 0.96, 0.96 )
setScaleKey( spep_0 -1 + 1130, 1, 0.95, 0.95 );
setScaleKey( spep_0 -1 + 1132, 1, 0.93, 0.93 );
setScaleKey( spep_0 -1 + 1134, 1, 0.9, 0.9 );
setScaleKey( spep_0 -1 + 1136, 1, 0.83, 0.83 );
setScaleKey( spep_0 -1 + 1138, 1, 0.74, 0.73 );
setScaleKey( spep_0 -1 + 1140, 1, 0.64, 0.64 );
setScaleKey( spep_0 -1 + 1142, 1, 0.56, 0.56 );
setScaleKey( spep_0 -1 + 1143, 1, 0.56, 0.56 );
setScaleKey( spep_0 -1 + 1144, 1, 0.513, 0.513 );
setScaleKey( spep_0 -1 + 1146, 1, 0.5, 0.5 );
setScaleKey( spep_0 -1 + 1148, 1, 0.5, 0.5 );
setScaleKey( spep_0 -1 + 1150, 1, 0.54, 0.54 );

setRotateKey( spep_0 -1 + 1084, 1, 1.7 );
setRotateKey( spep_0 -1 + 1143, 1, 1.7 );
setRotateKey( spep_0 -1 + 1144, 1, 17.2 );
setRotateKey( spep_0 -1 + 1150, 1, 17.2 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--気玉作る
SE002 = playSeVer2( spep_0 + 28, 1400, "",spep_0 + 392, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 28, SE002, 120 );

--少し持ち上げる
SE003 = playSeVer2( spep_0 + 134, 1003, "", 0, 0, 0, -1);

--振りかぶる
SE004 = playSeVer2( spep_0 + 334, 1116, "",spep_0 + 370, 0, 16, -1);

--気弾投げる
SE005 = playSeVer2( spep_0 + 360, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE005, 112 );
SE006 = playSeVer2( spep_0 + 360, 1193, "",spep_0 + 436, 0, 42, -1);
SE007 = playSeVer2( spep_0 + 360, 1201, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 360, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE008, 74 );
SE009 = playSeVer2( spep_0 + 382, 1193, "",spep_0 + 594, 38, 30, -1);
setSeVolumeByWorkId( spep_0 + 382, SE009, 56 );
setStartTimeMs( SE009,  367 );

--セリフカットイン
SE010 = playSeVer2( spep_0 + 418, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 418, SE010, 56 );

--拳握る
SE011 = playSeVer2( spep_0 + 486, 1233, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 498, 1006, "", 0, 0, 0, -1);

--爆発
SE013 = playSeVer2( spep_0 + 554, 1069, "",spep_0 + 732, 0, 139, -1);
SE014 = playSeVer2( spep_0 + 572, 1024, "",spep_0 + 714, 0, 106, -1);

--持ち上げる
SE015 = playSeVer2( spep_0 + 928, 1004, "", 0, 0, 0, -1);

--大猿変身
SE016 = playSeVer2( spep_0 + 968, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 968, SE016, 74 );
SE017 = playSeVer2( spep_0 + 968, 1292, "",spep_0 + 1088, 0, 30, -1);
setPitch( spep_0 + 968, SE017, -800 );
setTimeStretch( SE017, 0.47, 30, 4 );
SE018 = playSeVer2( spep_0 + 968, 1294, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 968, 1044, "",spep_0 + 1194, 0, 106, -1);
setPitch( spep_0 + 968, SE019, -800 );
setTimeStretch( SE019, 0.47, 30, 4 );
SE020 = playSeVer2( spep_0 + 982, 1331, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 1036, 1072, "", 0, 0, 0, -1);

--ボイス
-- 「ふふ…これがなんだか分かるか…　お月さまさ」
playVoice( spep_0 + 0, 642 );
setVoiceVolume( spep_0 + 0, 642, 146 );

-- 「はじけてまざれ！」
playVoice( spep_0 + 412, 643 );
setVoiceVolume( spep_0 + 412, 643, 146 );

-- 「さあ、お前本来の姿をみせてみろ」
playVoice( spep_0 + 629, 644 );
setVoiceVolume( spep_0 + 629, 644, 146 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 1150; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE019, 0);
-- stopSe( SP_dodge - 12, SE020, 0);
-- stopSe( SP_dodge - 12, SE021, 0);
pauseAll( SP_dodge, 67);

setMoveKey( SP_dodge + 0, 1, 87.6, -64.6 , 0 );
setMoveKey( SP_dodge + 2, 1, 81.7, -87.3 , 0 );
setMoveKey( SP_dodge + 4, 1, 104.2, -96.2 , 0 );
setMoveKey( SP_dodge + 6, 1, 87.2, -57.2 , 0 );
setMoveKey( SP_dodge + 8, 1, 111.9, -69.4 , 0 );
setMoveKey( SP_dodge + 10, 1, 77.6, -99.7 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.54, 0.54 );
setScaleKey( SP_dodge + 2, 1, 0.54, 0.54 );
setScaleKey( SP_dodge + 4, 1, 0.53, 0.53 );
setScaleKey( SP_dodge + 6, 1, 0.53, 0.53 );
setScaleKey( SP_dodge + 8, 1, 0.52, 0.52 );
setScaleKey( SP_dodge + 10, 1, 0.52, 0.52 );

setRotateKey( SP_dodge + 0, 1, 17.2 );
setRotateKey( SP_dodge + 10, 1, 17.2 );

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

-- ** 敵キャラクター ** --
changeAnime( spep_0 -1 + 1306, 1, 104 );
changeAnime( spep_0 -1 + 1318, 1, 107 );

setMoveKey( spep_0 -1 + 1151, 1, 87.6, -64.6 , 0 );
setMoveKey( spep_0 -1 + 1152, 1, 81.7, -87.3 , 0 );
setMoveKey( spep_0 -1 + 1153, 1, 81.7, -87.3 , 0 );
setMoveKey( spep_0 -1 + 1154, 1, 104.2, -96.2 , 0 );
setMoveKey( spep_0 -1 + 1155, 1, 104.2, -96.2 , 0 );
setMoveKey( spep_0 -1 + 1156, 1, 87.2, -57.2 , 0 );
setMoveKey( spep_0 -1 + 1157, 1, 87.2, -57.2 , 0 );
setMoveKey( spep_0 -1 + 1158, 1, 111.9, -69.4 , 0 );
setMoveKey( spep_0 -1 + 1159, 1, 111.9, -69.4 , 0 );
setMoveKey( spep_0 -1 + 1160, 1, 77.6, -99.7 , 0 );
setMoveKey( spep_0 -1 + 1161, 1, 77.6, -99.7 , 0 );
setMoveKey( spep_0 -1 + 1162, 1, 105.3, -91.4 , 0 );
setMoveKey( spep_0 -1 + 1163, 1, 105.3, -91.4 , 0 );
setMoveKey( spep_0 -1 + 1164, 1, 81.1, -59.9 , 0 );
setMoveKey( spep_0 -1 + 1165, 1, 81.1, -59.9 , 0 );
setMoveKey( spep_0 -1 + 1166, 1, 76.3, -83.5 , 0 );
setMoveKey( spep_0 -1 + 1167, 1, 76.3, -83.5 , 0 );
setMoveKey( spep_0 -1 + 1168, 1, 107.9, -93.2 , 0 );
setMoveKey( spep_0 -1 + 1169, 1, 107.9, -93.2 , 0 );
setMoveKey( spep_0 -1 + 1170, 1, 83.8, -54.8 , 0 );
setMoveKey( spep_0 -1 + 1171, 1, 83.8, -54.8 , 0 );
setMoveKey( spep_0 -1 + 1172, 1, 107.9, -66.9 , 0 );
setMoveKey( spep_0 -1 + 1173, 1, 107.9, -66.9 , 0 );
setMoveKey( spep_0 -1 + 1174, 1, 84.1, -90.6 , 0 );
setMoveKey( spep_0 -1 + 1175, 1, 84.1, -90.6 , 0 );
setMoveKey( spep_0 -1 + 1176, 1, 104.6, -90.9 , 0 );
setMoveKey( spep_0 -1 + 1177, 1, 104.6, -90.9 , 0 );
setMoveKey( spep_0 -1 + 1178, 1, 81.1, -59.9 , 0 );
setMoveKey( spep_0 -1 + 1179, 1, 81.1, -59.9 , 0 );
setMoveKey( spep_0 -1 + 1180, 1, 76.3, -83.5 , 0 );
setMoveKey( spep_0 -1 + 1181, 1, 76.3, -83.5 , 0 );
setMoveKey( spep_0 -1 + 1182, 1, 99.9, -93.2 , 0 );
setMoveKey( spep_0 -1 + 1183, 1, 99.9, -93.2 , 0 );
setMoveKey( spep_0 -1 + 1184, 1, 83.8, -54.8 , 0 );
setMoveKey( spep_0 -1 + 1185, 1, 83.8, -54.8 , 0 );
setMoveKey( spep_0 -1 + 1186, 1, 109.5, -67.7 , 0 );
setMoveKey( spep_0 -1 + 1187, 1, 109.5, -67.7 , 0 );
setMoveKey( spep_0 -1 + 1188, 1, 76.1, -98.6 , 0 );
setMoveKey( spep_0 -1 + 1189, 1, 76.1, -98.6 , 0 );
setMoveKey( spep_0 -1 + 1190, 1, 104.6, -90.9 , 0 );
setMoveKey( spep_0 -1 + 1191, 1, 104.6, -90.9 , 0 );
setMoveKey( spep_0 -1 + 1192, 1, 81.1, -59.9 , 0 );
setMoveKey( spep_0 -1 + 1193, 1, 81.1, -59.9 , 0 );
setMoveKey( spep_0 -1 + 1194, 1, 76.3, -83.5 , 0 );
setMoveKey( spep_0 -1 + 1195, 1, 76.3, -83.5 , 0 );
setMoveKey( spep_0 -1 + 1196, 1, 107.9, -93.2 , 0 );
setMoveKey( spep_0 -1 + 1197, 1, 107.9, -93.2 , 0 );
setMoveKey( spep_0 -1 + 1198, 1, 83.8, -54.8 , 0 );
setMoveKey( spep_0 -1 + 1199, 1, 83.8, -54.8 , 0 );
setMoveKey( spep_0 -1 + 1200, 1, 109.5, -67.7 , 0 );
setMoveKey( spep_0 -1 + 1201, 1, 109.5, -67.7 , 0 );
setMoveKey( spep_0 -1 + 1202, 1, 95.4, -74.4 , 0 );
setMoveKey( spep_0 -1 + 1203, 1, 95.4, -74.4 , 0 );
setMoveKey( spep_0 -1 + 1204, 1, 284.7, -656.3 , 0 );
setMoveKey( spep_0 -1 + 1205, 1, 284.7, -656.3 , 0 );
setMoveKey( spep_0 -1 + 1206, 1, 278.4, -605.9 , 0 );
setMoveKey( spep_0 -1 + 1207, 1, 278.4, -605.9 , 0 );
setMoveKey( spep_0 -1 + 1208, 1, 272.7, -565.9 , 0 );
setMoveKey( spep_0 -1 + 1209, 1, 272.7, -565.9 , 0 );
setMoveKey( spep_0 -1 + 1210, 1, 267.4, -532.3 , 0 );
setMoveKey( spep_0 -1 + 1211, 1, 267.4, -532.3 , 0 );
setMoveKey( spep_0 -1 + 1212, 1, 262.3, -503.4 , 0 );
setMoveKey( spep_0 -1 + 1213, 1, 262.3, -503.4 , 0 );
setMoveKey( spep_0 -1 + 1214, 1, 257.5, -478.1 , 0 );
setMoveKey( spep_0 -1 + 1215, 1, 257.5, -478.1 , 0 );
setMoveKey( spep_0 -1 + 1216, 1, 252.9, -455.6 , 0 );
setMoveKey( spep_0 -1 + 1217, 1, 252.9, -455.6 , 0 );
setMoveKey( spep_0 -1 + 1218, 1, 248.4, -435.3 , 0 );
setMoveKey( spep_0 -1 + 1219, 1, 248.4, -435.3 , 0 );
setMoveKey( spep_0 -1 + 1220, 1, 244, -417.1 , 0 );
setMoveKey( spep_0 -1 + 1221, 1, 244, -417.1 , 0 );
setMoveKey( spep_0 -1 + 1222, 1, 239.8, -400.5 , 0 );
setMoveKey( spep_0 -1 + 1223, 1, 239.8, -400.5 , 0 );
setMoveKey( spep_0 -1 + 1224, 1, 235.6, -385.4 , 0 );
setMoveKey( spep_0 -1 + 1225, 1, 235.6, -385.4 , 0 );
setMoveKey( spep_0 -1 + 1226, 1, 231.5, -371.6 , 0 );
setMoveKey( spep_0 -1 + 1227, 1, 231.5, -371.6 , 0 );
setMoveKey( spep_0 -1 + 1228, 1, 227.4, -359 , 0 );
setMoveKey( spep_0 -1 + 1229, 1, 227.4, -359 , 0 );
setMoveKey( spep_0 -1 + 1230, 1, 223.5, -347.5 , 0 );
setMoveKey( spep_0 -1 + 1231, 1, 223.5, -347.5 , 0 );
setMoveKey( spep_0 -1 + 1232, 1, 219.6, -336.9 , 0 );
setMoveKey( spep_0 -1 + 1233, 1, 219.6, -336.9 , 0 );
setMoveKey( spep_0 -1 + 1234, 1, 215.8, -327.2 , 0 );
setMoveKey( spep_0 -1 + 1235, 1, 215.8, -327.2 , 0 );
setMoveKey( spep_0 -1 + 1236, 1, 212, -318.5 , 0 );
setMoveKey( spep_0 -1 + 1237, 1, 212, -318.5 , 0 );
setMoveKey( spep_0 -1 + 1238, 1, 208.2, -310.5 , 0 );
setMoveKey( spep_0 -1 + 1239, 1, 208.2, -310.5 , 0 );
setMoveKey( spep_0 -1 + 1240, 1, 204.5, -303.3 , 0 );
setMoveKey( spep_0 -1 + 1241, 1, 204.5, -303.3 , 0 );
setMoveKey( spep_0 -1 + 1242, 1, 200.8, -296.9 , 0 );
setMoveKey( spep_0 -1 + 1243, 1, 200.8, -296.9 , 0 );
setMoveKey( spep_0 -1 + 1244, 1, 197.2, -291.3 , 0 );
setMoveKey( spep_0 -1 + 1245, 1, 197.2, -291.3 , 0 );
setMoveKey( spep_0 -1 + 1246, 1, 193.7, -286.5 , 0 );
setMoveKey( spep_0 -1 + 1247, 1, 193.7, -286.5 , 0 );
setMoveKey( spep_0 -1 + 1248, 1, 190.2, -282.8 , 0 );
setMoveKey( spep_0 -1 + 1249, 1, 190.2, -282.8 , 0 );
setMoveKey( spep_0 -1 + 1250, 1, 190.5, -283 , 0 );
setMoveKey( spep_0 -1 + 1251, 1, 190.5, -283 , 0 );
setMoveKey( spep_0 -1 + 1252, 1, 190.7, -283.1 , 0 );
setMoveKey( spep_0 -1 + 1253, 1, 190.7, -283.1 , 0 );
setMoveKey( spep_0 -1 + 1254, 1, 190.9, -283.3 , 0 );
setMoveKey( spep_0 -1 + 1255, 1, 190.9, -283.3 , 0 );
setMoveKey( spep_0 -1 + 1256, 1, 191.1, -283.4 , 0 );
setMoveKey( spep_0 -1 + 1257, 1, 191.1, -283.4 , 0 );
setMoveKey( spep_0 -1 + 1258, 1, 191.3, -283.6 , 0 );
setMoveKey( spep_0 -1 + 1259, 1, 191.3, -283.6 , 0 );
setMoveKey( spep_0 -1 + 1260, 1, 191.5, -283.8 , 0 );
setMoveKey( spep_0 -1 + 1261, 1, 191.5, -283.8 , 0 );
setMoveKey( spep_0 -1 + 1262, 1, 191.7, -283.9 , 0 );
setMoveKey( spep_0 -1 + 1263, 1, 191.7, -283.9 , 0 );
setMoveKey( spep_0 -1 + 1264, 1, 191.9, -284.1 , 0 );
setMoveKey( spep_0 -1 + 1265, 1, 191.9, -284.1 , 0 );
setMoveKey( spep_0 -1 + 1266, 1, 192.1, -284.2 , 0 );
setMoveKey( spep_0 -1 + 1267, 1, 192.1, -284.2 , 0 );
setMoveKey( spep_0 -1 + 1268, 1, 192.3, -284.4 , 0 );
setMoveKey( spep_0 -1 + 1269, 1, 192.3, -284.4 , 0 );
setMoveKey( spep_0 -1 + 1270, 1, 192.5, -284.6 , 0 );
setMoveKey( spep_0 -1 + 1271, 1, 192.5, -284.6 , 0 );
setMoveKey( spep_0 -1 + 1272, 1, 192.7, -284.7 , 0 );
setMoveKey( spep_0 -1 + 1273, 1, 192.7, -284.7 , 0 );
setMoveKey( spep_0 -1 + 1274, 1, 192.9, -284.9 , 0 );
setMoveKey( spep_0 -1 + 1275, 1, 192.9, -284.9 , 0 );
setMoveKey( spep_0 -1 + 1276, 1, 193.1, -285 , 0 );
setMoveKey( spep_0 -1 + 1277, 1, 193.1, -285 , 0 );
setMoveKey( spep_0 -1 + 1278, 1, 193.4, -285.2 , 0 );
setMoveKey( spep_0 -1 + 1279, 1, 193.4, -285.2 , 0 );
setMoveKey( spep_0 -1 + 1280, 1, 193.6, -285.4 , 0 );
setMoveKey( spep_0 -1 + 1281, 1, 193.6, -285.4 , 0 );
setMoveKey( spep_0 -1 + 1282, 1, 193.8, -285.5 , 0 );
setMoveKey( spep_0 -1 + 1283, 1, 193.8, -285.5 , 0 );
setMoveKey( spep_0 -1 + 1284, 1, 194, -285.7 , 0 );
setMoveKey( spep_0 -1 + 1285, 1, 194, -285.7 , 0 );
setMoveKey( spep_0 -1 + 1286, 1, 194.2, -285.8 , 0 );
setMoveKey( spep_0 -1 + 1287, 1, 194.2, -285.8 , 0 );
setMoveKey( spep_0 -1 + 1288, 1, 194.4, -286 , 0 );
setMoveKey( spep_0 -1 + 1289, 1, 194.4, -286 , 0 );
setMoveKey( spep_0 -1 + 1290, 1, 194.6, -286.2 , 0 );
setMoveKey( spep_0 -1 + 1291, 1, 194.6, -286.2 , 0 );
setMoveKey( spep_0 -1 + 1292, 1, 194.8, -286.3 , 0 );
setMoveKey( spep_0 -1 + 1293, 1, 194.8, -286.3 , 0 );
setMoveKey( spep_0 -1 + 1294, 1, 195, -286.5 , 0 );
setMoveKey( spep_0 -1 + 1295, 1, 195, -286.5 , 0 );
setMoveKey( spep_0 -1 + 1296, 1, 195.2, -286.6 , 0 );
setMoveKey( spep_0 -1 + 1297, 1, 195.2, -286.6 , 0 );
setMoveKey( spep_0 -1 + 1298, 1, 195.4, -286.8 , 0 );
setMoveKey( spep_0 -1 + 1299, 1, 195.4, -286.8 , 0 );
setMoveKey( spep_0 -1 + 1300, 1, 195.6, -287 , 0 );
setMoveKey( spep_0 -1 + 1301, 1, 195.6, -287 , 0 );
setMoveKey( spep_0 -1 + 1302, 1, 195.8, -287.1 , 0 );
setMoveKey( spep_0 -1 + 1303, 1, 195.8, -287.1 , 0 );
setMoveKey( spep_0 -1 + 1304, 1, 196, -287.3 , 0 );
setMoveKey( spep_0 -1 + 1305, 1, 196, -287.3 , 0 );
setMoveKey( spep_0 -1 + 1306, 1, 165.6, -304.1 , 0 );
setMoveKey( spep_0 -1 + 1307, 1, 165.6, -304.1 , 0 );
setMoveKey( spep_0 -1 + 1308, 1, 168, -304.9 , 0 );
setMoveKey( spep_0 -1 + 1309, 1, 168, -304.9 , 0 );
setMoveKey( spep_0 -1 + 1310, 1, 170.4, -305.7 , 0 );
setMoveKey( spep_0 -1 + 1311, 1, 170.4, -305.7 , 0 );
setMoveKey( spep_0 -1 + 1312, 1, 172.8, -306.5 , 0 );
setMoveKey( spep_0 -1 + 1313, 1, 172.8, -306.5 , 0 );
setMoveKey( spep_0 -1 + 1314, 1, 175.2, -307.3 , 0 );
setMoveKey( spep_0 -1 + 1315, 1, 175.2, -307.3 , 0 );
setMoveKey( spep_0 -1 + 1316, 1, 177.6, -308.1 , 0 );
setMoveKey( spep_0 -1 + 1317, 1, 177.6, -308.1 , 0 );
setMoveKey( spep_0 -1 + 1318, 1, 143.2, -285.5 , 0 );
setMoveKey( spep_0 -1 + 1319, 1, 143.2, -285.5 , 0 );
setMoveKey( spep_0 -1 + 1320, 1, 74.3, -274 , 0 );
setMoveKey( spep_0 -1 + 1321, 1, 74.3, -274 , 0 );
setMoveKey( spep_0 -1 + 1322, 1, 150.8, -247.2 , 0 );
setMoveKey( spep_0 -1 + 1323, 1, 150.8, -247.2 , 0 );
setMoveKey( spep_0 -1 + 1324, 1, 116.4, -320 , 0 );
setMoveKey( spep_0 -1 + 1325, 1, 116.4, -320 , 0 );
setMoveKey( spep_0 -1 + 1326, 1, 187, -299.2 , 0 );
setMoveKey( spep_0 -1 + 1327, 1, 187, -299.2 , 0 );
setMoveKey( spep_0 -1 + 1328, 1, 69.2, -181.4 , 0 );
setMoveKey( spep_0 -1 + 1329, 1, 69.2, -181.4 , 0 );
setMoveKey( spep_0 -1 + 1330, 1, 209.2, -285.9 , 0 );
setMoveKey( spep_0 -1 + 1331, 1, 209.2, -285.9 , 0 );
setMoveKey( spep_0 -1 + 1332, 1, 265.9, -436.2 , 0 );
setMoveKey( spep_0 -1 + 1333, 1, 265.9, -436.2 , 0 );
setMoveKey( spep_0 -1 + 1334, 1, 384, -479.3 , 0 );
setMoveKey( spep_0 -1 + 1335, 1, 384, -479.3 , 0 );
setMoveKey( spep_0 -1 + 1336, 1, 475.2, -556.9 , 0 );
setMoveKey( spep_0 -1 + 1337, 1, 475.2, -556.9 , 0 );
setMoveKey( spep_0 -1 + 1338, 1, 566.4, -634.4 , 0 );
setMoveKey( spep_0 -1 + 1339, 1, 566.4, -634.4 , 0 );
setMoveKey( spep_0 -1 + 1340, 1, 657.7, -712 , 0 );
setMoveKey( spep_0 -1 + 1341, 1, 657.7, -712 , 0 );
setMoveKey( spep_0 -1 + 1342, 1, 748.9, -789.6 , 0 );
setMoveKey( spep_0 -1 + 1343, 1, 748.9, -789.6 , 0 );
setMoveKey( spep_0 -1 + 1344, 1, 840.1, -867.2 , 0 );
setMoveKey( spep_0 -1 + 1346, 1, 931.3, -944.8 , 0 );
setMoveKey( spep_0 -1 + 1348, 1, 1022.5, -1022.4 , 0 );
setMoveKey( spep_0 -1 + 1350, 1, 1113.7, -1100 , 0 );
setMoveKey( spep_0 -1 + 1352, 1, 1204.9, -1177.6 , 0 );
setMoveKey( spep_0 -1 + 1354, 1, 1296.1, -1255.2 , 0 );

setScaleKey( spep_0 -1 + 1151, 1, 0.54, 0.54 );
setScaleKey( spep_0 -1 + 1153, 1, 0.54, 0.54 );
setScaleKey( spep_0 -1 + 1154, 1, 0.53, 0.53 );
setScaleKey( spep_0 -1 + 1157, 1, 0.53, 0.53 );
setScaleKey( spep_0 -1 + 1158, 1, 0.52, 0.52 );
setScaleKey( spep_0 -1 + 1161, 1, 0.52, 0.52 );
setScaleKey( spep_0 -1 + 1162, 1, 0.51, 0.51 );
setScaleKey( spep_0 -1 + 1203, 1, 0.51, 0.51 );
setScaleKey( spep_0 -1 + 1204, 1, 1, 1 );
setScaleKey( spep_0 -1 + 1305, 1, 1, 1 );
setScaleKey( spep_0 -1 + 1306, 1, 1.09, 1.09 );
setScaleKey( spep_0 -1 + 1317, 1, 1.09, 1.09 );
setScaleKey( spep_0 -1 + 1318, 1, 0.65, 0.65 );
setScaleKey( spep_0 -1 + 1329, 1, 0.65, 0.65 );
setScaleKey( spep_0 -1 + 1330, 1, 0.91, 0.91 );
setScaleKey( spep_0 -1 + 1331, 1, 0.91, 0.91 );
setScaleKey( spep_0 -1 + 1332, 1, 1.16, 1.16 );
setScaleKey( spep_0 -1 + 1333, 1, 1.16, 1.16 );
setScaleKey( spep_0 -1 + 1334, 1, 1.42, 1.42 );
setScaleKey( spep_0 -1 + 1335, 1, 1.42, 1.42 );
setScaleKey( spep_0 -1 + 1336, 1, 1.67, 1.67 );
setScaleKey( spep_0 -1 + 1337, 1, 1.67, 1.67 );
setScaleKey( spep_0 -1 + 1338, 1, 1.93, 1.93 );
setScaleKey( spep_0 -1 + 1339, 1, 1.93, 1.93 );
setScaleKey( spep_0 -1 + 1340, 1, 2.19, 2.19 );
setScaleKey( spep_0 -1 + 1341, 1, 2.19, 2.19 );
setScaleKey( spep_0 -1 + 1342, 1, 2.44, 2.44 );
setScaleKey( spep_0 -1 + 1343, 1, 2.44, 2.44 );
setScaleKey( spep_0 -1 + 1345, 1, 2.69, 2.69 );
setScaleKey( spep_0 -1 + 1347, 1, 2.94, 2.94 );
setScaleKey( spep_0 -1 + 1349, 1, 3.19, 3.19 );
setScaleKey( spep_0 -1 + 1351, 1, 3.44, 3.44 );
setScaleKey( spep_0 -1 + 1353, 1, 3.69, 3.69 );
setScaleKey( spep_0 -1 + 1354, 1, 3.69, 3.69 );

setRotateKey( spep_0 -1 + 1151, 1, 17.2 );
setRotateKey( spep_0 -1 + 1203, 1, 17.2 );
setRotateKey( spep_0 -1 + 1204, 1, 2 );
setRotateKey( spep_0 -1 + 1205, 1, 2 );
setRotateKey( spep_0 -1 + 1206, 1, 2.1 );
setRotateKey( spep_0 -1 + 1207, 1, 2.1 );
setRotateKey( spep_0 -1 + 1208, 1, 2.3 );
setRotateKey( spep_0 -1 + 1209, 1, 2.3 );
setRotateKey( spep_0 -1 + 1210, 1, 2.4 );
setRotateKey( spep_0 -1 + 1211, 1, 2.4 );
setRotateKey( spep_0 -1 + 1212, 1, 2.5 );
setRotateKey( spep_0 -1 + 1213, 1, 2.5 );
setRotateKey( spep_0 -1 + 1214, 1, 2.7 );
setRotateKey( spep_0 -1 + 1215, 1, 2.7 );
setRotateKey( spep_0 -1 + 1216, 1, 2.8 );
setRotateKey( spep_0 -1 + 1217, 1, 2.8 );
setRotateKey( spep_0 -1 + 1218, 1, 2.9 );
setRotateKey( spep_0 -1 + 1219, 1, 2.9 );
setRotateKey( spep_0 -1 + 1220, 1, 3.1 );
setRotateKey( spep_0 -1 + 1221, 1, 3.1 );
setRotateKey( spep_0 -1 + 1222, 1, 3.2 );
setRotateKey( spep_0 -1 + 1223, 1, 3.2 );
setRotateKey( spep_0 -1 + 1224, 1, 3.4 );
setRotateKey( spep_0 -1 + 1225, 1, 3.4 );
setRotateKey( spep_0 -1 + 1226, 1, 3.5 );
setRotateKey( spep_0 -1 + 1227, 1, 3.5 );
setRotateKey( spep_0 -1 + 1228, 1, 3.6 );
setRotateKey( spep_0 -1 + 1229, 1, 3.6 );
setRotateKey( spep_0 -1 + 1230, 1, 3.8 );
setRotateKey( spep_0 -1 + 1231, 1, 3.8 );
setRotateKey( spep_0 -1 + 1232, 1, 3.9 );
setRotateKey( spep_0 -1 + 1233, 1, 3.9 );
setRotateKey( spep_0 -1 + 1234, 1, 4 );
setRotateKey( spep_0 -1 + 1235, 1, 4 );
setRotateKey( spep_0 -1 + 1236, 1, 4.2 );
setRotateKey( spep_0 -1 + 1237, 1, 4.2 );
setRotateKey( spep_0 -1 + 1238, 1, 4.3 );
setRotateKey( spep_0 -1 + 1239, 1, 4.3 );
setRotateKey( spep_0 -1 + 1240, 1, 4.4 );
setRotateKey( spep_0 -1 + 1241, 1, 4.4 );
setRotateKey( spep_0 -1 + 1242, 1, 4.6 );
setRotateKey( spep_0 -1 + 1243, 1, 4.6 );
setRotateKey( spep_0 -1 + 1244, 1, 4.7 );
setRotateKey( spep_0 -1 + 1245, 1, 4.7 );
setRotateKey( spep_0 -1 + 1246, 1, 4.8 );
setRotateKey( spep_0 -1 + 1247, 1, 4.8 );
setRotateKey( spep_0 -1 + 1248, 1, 5 );
setRotateKey( spep_0 -1 + 1249, 1, 5 );
setRotateKey( spep_0 -1 + 1250, 1, 5.1 );
setRotateKey( spep_0 -1 + 1251, 1, 5.1 );
setRotateKey( spep_0 -1 + 1252, 1, 5.2 );
setRotateKey( spep_0 -1 + 1253, 1, 5.2 );
setRotateKey( spep_0 -1 + 1254, 1, 5.4 );
setRotateKey( spep_0 -1 + 1255, 1, 5.4 );
setRotateKey( spep_0 -1 + 1256, 1, 5.5 );
setRotateKey( spep_0 -1 + 1257, 1, 5.5 );
setRotateKey( spep_0 -1 + 1258, 1, 5.6 );
setRotateKey( spep_0 -1 + 1259, 1, 5.6 );
setRotateKey( spep_0 -1 + 1260, 1, 5.8 );
setRotateKey( spep_0 -1 + 1261, 1, 5.8 );
setRotateKey( spep_0 -1 + 1262, 1, 5.9 );
setRotateKey( spep_0 -1 + 1263, 1, 5.9 );
setRotateKey( spep_0 -1 + 1264, 1, 6 );
setRotateKey( spep_0 -1 + 1265, 1, 6 );
setRotateKey( spep_0 -1 + 1266, 1, 6.2 );
setRotateKey( spep_0 -1 + 1267, 1, 6.2 );
setRotateKey( spep_0 -1 + 1268, 1, 6.3 );
setRotateKey( spep_0 -1 + 1269, 1, 6.3 );
setRotateKey( spep_0 -1 + 1270, 1, 6.5 );
setRotateKey( spep_0 -1 + 1271, 1, 6.5 );
setRotateKey( spep_0 -1 + 1272, 1, 6.6 );
setRotateKey( spep_0 -1 + 1273, 1, 6.6 );
setRotateKey( spep_0 -1 + 1274, 1, 6.7 );
setRotateKey( spep_0 -1 + 1275, 1, 6.7 );
setRotateKey( spep_0 -1 + 1276, 1, 6.9 );
setRotateKey( spep_0 -1 + 1277, 1, 6.9 );
setRotateKey( spep_0 -1 + 1278, 1, 7 );
setRotateKey( spep_0 -1 + 1279, 1, 7 );
setRotateKey( spep_0 -1 + 1280, 1, 7.1 );
setRotateKey( spep_0 -1 + 1281, 1, 7.1 );
setRotateKey( spep_0 -1 + 1282, 1, 7.3 );
setRotateKey( spep_0 -1 + 1283, 1, 7.3 );
setRotateKey( spep_0 -1 + 1284, 1, 7.4 );
setRotateKey( spep_0 -1 + 1285, 1, 7.4 );
setRotateKey( spep_0 -1 + 1286, 1, 7.5 );
setRotateKey( spep_0 -1 + 1287, 1, 7.5 );
setRotateKey( spep_0 -1 + 1288, 1, 7.7 );
setRotateKey( spep_0 -1 + 1289, 1, 7.7 );
setRotateKey( spep_0 -1 + 1290, 1, 7.8 );
setRotateKey( spep_0 -1 + 1291, 1, 7.8 );
setRotateKey( spep_0 -1 + 1292, 1, 7.9 );
setRotateKey( spep_0 -1 + 1293, 1, 7.9 );
setRotateKey( spep_0 -1 + 1294, 1, 8.1 );
setRotateKey( spep_0 -1 + 1295, 1, 8.1 );
setRotateKey( spep_0 -1 + 1296, 1, 8.2 );
setRotateKey( spep_0 -1 + 1297, 1, 8.2 );
setRotateKey( spep_0 -1 + 1298, 1, 8.3 );
setRotateKey( spep_0 -1 + 1299, 1, 8.3 );
setRotateKey( spep_0 -1 + 1300, 1, 8.5 );
setRotateKey( spep_0 -1 + 1301, 1, 8.5 );
setRotateKey( spep_0 -1 + 1302, 1, 8.6 );
setRotateKey( spep_0 -1 + 1303, 1, 8.6 );
setRotateKey( spep_0 -1 + 1304, 1, 8.7 );
setRotateKey( spep_0 -1 + 1305, 1, 8.7 );
setRotateKey( spep_0 -1 + 1306, 1, 13.3 );
setRotateKey( spep_0 -1 + 1317, 1, 13.3 );
setRotateKey( spep_0 -1 + 1318, 1, -25.7 );
setRotateKey( spep_0 -1 + 1354, 1, -25.7 );

-- ** 音 ** --
--大猿咆哮
SE022 = playSeVer2( spep_0 + 1139, 1011, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 1139, 1066, "",spep_0 + 1318, 0, 96, -1);

--振りかぶる
SE024 = playSeVer2( spep_0 + 1212, 1116, "",spep_0 + 1252, 0, 20, -1);
SE025 = playSeVer2( spep_0 + 1258, 1182, "",spep_0 + 1332, 10, 34, -1);
setStartTimeMs( SE025,  100 );
SE026 = playSeVer2( spep_0 + 1258, 1011, "",spep_0 + 1338, 22, 39, -1);
SE027 = playSeVer2( spep_0 + 1264, 1004, "", 0, 0, 0, -1);

--ビンタ
SE028 = playSeVer2( spep_0 + 1310, 1187, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 1310, 1359, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 1310, 1014, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 1354;

-------------------------------------------------
-- 敵が地面に激突して砂煙
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002	90	反転無し　※敵の手前側
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 178, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 178, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 178, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 178, base_1, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 178 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- setDisp( spep_1 -1 + 1, 1, 1 );
setDisp( spep_1 + 39, 1, 0 );

changeAnime( spep_1 -1 + 1, 1, 105 );

setMoveKey( spep_1 -1 + 1, 1, -1598.3, -70 , 0 );
setMoveKey( spep_1 -1 + 2, 1, -1515.9, -81.9 , 0 );
setMoveKey( spep_1 -1 + 4, 1, -1433.6, -93.8 , 0 );
setMoveKey( spep_1 -1 + 6, 1, -1351.3, -105.6 , 0 );
setMoveKey( spep_1 -1 + 8, 1, -1269, -117.5 , 0 );
setMoveKey( spep_1 -1 + 10, 1, -1186.7, -129.3 , 0 );
setMoveKey( spep_1 -1 + 12, 1, -1104.5, -141.1 , 0 );
setMoveKey( spep_1 -1 + 14, 1, -1022.3, -152.9 , 0 );
setMoveKey( spep_1 -1 + 16, 1, -939.1, -164.7 , 0 );
setMoveKey( spep_1 -1 + 18, 1, -857.9, -176.4 , 0 );
setMoveKey( spep_1 -1 + 20, 1, -775.7, -188.2 , 0 );
setMoveKey( spep_1 -1 + 22, 1, -693.6, -199.9 , 0 );
setMoveKey( spep_1 -1 + 24, 1, -611.4, -211.6 , 0 );
setMoveKey( spep_1 -1 + 26, 1, -529.3, -223.3 , 0 );
setMoveKey( spep_1 -1 + 28, 1, -447.3, -235 , 0 );
setMoveKey( spep_1 -1 + 30, 1, -365.2, -246.7 , 0 );
setMoveKey( spep_1 -1 + 32, 1, -283.2, -258.3 , 0 );
setMoveKey( spep_1 -1 + 34, 1, -201.1, -270 , 0 );
setMoveKey( spep_1 -1 + 36, 1, -119.2, -281.6 , 0 );
setMoveKey( spep_1 -1 + 38, 1, -37.2, -293.1 , 0 );
setMoveKey( spep_1 + 39, 1, -37.2, -293.1 , 0 );

setScaleKey( spep_1 -1 + 1, 1, 14.4, 14.4 );
setScaleKey( spep_1 -1 + 2, 1, 13.86, 13.86 );
setScaleKey( spep_1 -1 + 4, 1, 13.3, 13.3 );
setScaleKey( spep_1 -1 + 6, 1, 12.71, 12.71 );
setScaleKey( spep_1 -1 + 8, 1, 12.1, 12.1 );
setScaleKey( spep_1 -1 + 10, 1, 11.47, 11.47 );
setScaleKey( spep_1 -1 + 12, 1, 10.82, 10.82 );
setScaleKey( spep_1 -1 + 14, 1, 10.15, 10.15 );
setScaleKey( spep_1 -1 + 16, 1, 9.46, 9.46 );
setScaleKey( spep_1 -1 + 18, 1, 8.74, 8.74 );
setScaleKey( spep_1 -1 + 20, 1, 8.01, 8.01 );
setScaleKey( spep_1 -1 + 22, 1, 7.25, 7.25 );
setScaleKey( spep_1 -1 + 24, 1, 6.47, 6.47 );
setScaleKey( spep_1 -1 + 26, 1, 5.67, 5.67 );
setScaleKey( spep_1 -1 + 28, 1, 4.85, 4.85 );
setScaleKey( spep_1 -1 + 30, 1, 4, 4 );
setScaleKey( spep_1 -1 + 32, 1, 3.13, 3.13 );
setScaleKey( spep_1 -1 + 34, 1, 2.23, 2.23 );
setScaleKey( spep_1 -1 + 36, 1, 1.31, 1.31 );
setScaleKey( spep_1 -1 + 38, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 39, 1, 0.34, 0.34 );

setRotateKey( spep_1 -1 + 1, 1, 58 );
setRotateKey( spep_1 + 39, 1, 58 );

-- ** 音 ** --
--敵飛んでいく
SE031 = playSeVer2( spep_1 + 0 -6, 1121, "",spep_1 + 64, 0, 12, -1);

--爆発
SE032 = playSeVer2( spep_1 + 52 -6, 1023, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_1 + 52 -6, 1159, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_1 + 64 -6, 1024, "", 0, 0, 0, -1);

--終わり
-- hideKoScreen();
dealDamage( spep_1 + 68);
endPhase( spep_1 + 178 -10);

else end
