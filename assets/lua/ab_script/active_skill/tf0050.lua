--1025410：UR_超ハーツ_アクティブ変身
--sp_effect_b4_00259
--tf0050

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 9; --気を貯める
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
SP_01 = 160838;	--　開幕〜フィニッシュ　ef_001


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5136,   0);
setMoveKey(   1,   0,    0, -5136,   0);
setMoveKey(   2,   0,    0, -5136,   0);
setMoveKey(   3,   0,    0, -5136,   0);
setMoveKey(   4,   0,    0, -5136,   0);
setMoveKey(   5,   0,    0, -5136,   0);
setMoveKey(   6,   0,    0, -5136,   0);
setScaleKey(  0,   0,  1.6, 1.6);
setScaleKey(  1,   0,  1.6, 1.6);
setScaleKey(  2,   0,  1.6, 1.6);
setScaleKey(  3,   0,  1.6, 1.6);
setScaleKey(  4,   0,  1.6, 1.6);
setScaleKey(  5,   0,  1.6, 1.6);
setScaleKey(  6,   0,  1.6, 1.6);
setRotateKey( 0,   0,  0);
setRotateKey( 1,   0,  0);
setRotateKey( 2,   0,  0);
setRotateKey( 3,   0,  0);
setRotateKey( 4,   0,  0);
setRotateKey( 5,   0,  0);
setRotateKey( 6,   0,  0);

setMoveKey(   0,   1,    0, -5136,   0);
setMoveKey(   1,   1,    0, -5136,   0);
setMoveKey(   2,   1,    0, -5136,   0);
setMoveKey(   3,   1,    0, -5136,   0);
setMoveKey(   4,   1,    0, -5136,   0);
setMoveKey(   5,   1,    0, -5136,   0);
setMoveKey(   6,   1,    0, -5136,   0);
setScaleKey(  0,   1,  1.6, 1.6);
setScaleKey(  1,   1,  1.6, 1.6);
setScaleKey(  2,   1,  1.6, 1.6);
setScaleKey(  3,   1,  1.6, 1.6);
setScaleKey(  4,   1,  1.6, 1.6);
setScaleKey(  5,   1,  1.6, 1.6);
setScaleKey(  6,   1,  1.6, 1.6);
setRotateKey( 0,   1,  0);
setRotateKey( 1,   1,  0);
setRotateKey( 2,   1,  0);
setRotateKey( 3,   1,  0);
setRotateKey( 4,   1,  0);
setRotateKey( 5,   1,  0);
setRotateKey( 6,   1,  0);

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 1170 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 1170 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 1170 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 1170 -4, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1170 -2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--気弾溜め
SE001 = playSeVer2( spep_0 + 0, 1263, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 172 );
SE002 = playSeVer2( spep_0 + 0, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 148 );

--気弾掲げる
SE005 = playSeVer2( spep_0 + 60, 1306, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE005, 79 );

--気弾溜め
SE003 = playSeVer2( spep_0 + 0, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 126 );

--気弾掲げる
SE004 = playSeVer2( spep_0 + 60, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE004, 60 );
setPitch( spep_0 + 60, SE004, 400 );
setTimeStretch( SE004, 1.27, 30, 4 );

--セリフカットイン
SE006 = playSeVer2( spep_0 + 70, 1018, "", 0, 0, 0, -1);

--暴風
SE007 = playSeVer2( spep_0 + 80, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE007, 63 );
SE008 = playSeVer2( spep_0 + 86, 1238, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE008, 61 );
SE009 = playSeVer2( spep_0 + 122, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE009, 85 );

--左色展開
SE010 = playSeVer2( spep_0 + 228, 1374, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE010, 84 );
setStartTimeMs( SE010,  800 );
SE011 = playSeVer2( spep_0 + 228, 1327, "",spep_0 + 302, 4, 26, -1);
setSeVolumeByWorkId( spep_0 + 228, SE011, 115 );
setStartTimeMs( SE011,  567 );
setPitch( spep_0 + 228, SE011, -100 );
setTimeStretch( SE011, 0.93, 30, 4 );
SE012 = playSeVer2( spep_0 + 222, 1371, "",spep_0 + 288, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 222, SE012, 85 );

--右色展開
SE013 = playSeVer2( spep_0 + 296, 1374, "", 0, 6, 0, -1);
setStartTimeMs( SE013,  767 );
SE014 = playSeVer2( spep_0 + 260, 1371, "",spep_0 + 324, 0, 42, -1);
SE015 = playSeVer2( spep_0 + 278, 1371, "",spep_0 + 398, 0, 18, -1);

--箱光る
SE016 = playSeVer2( spep_0 + 376, 1321, "", 0, 8, 0, -1);
setStartTimeMs( SE016,  750 );
SE017 = playSeVer2( spep_0 + 376, 1263, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE017, 141 );
SE018 = playSeVer2( spep_0 + 376, 1264, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 376, 1185, "", 0, 0, 0, -1);
setPitch( spep_0 + 376, SE019, -300 );
setTimeStretch( SE019, 0.8, 30, 4 );

--ヒビ入る
SE020 = playSeVer2( spep_0 + 424, 1041, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 444, 1041, "", 0, 0, 0, -1);

--玉アップ
SE022 = playSeVer2( spep_0 + 472, 1240, "",spep_0 + 570, 0, 36, -1);
SE023 = playSeVer2( spep_0 + 476, 1291, "", 0, 0, 0, -1);

--箱割れる
SE024 = playSeVer2( spep_0 + 512, 1011, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 514, 1126, "", 0, 0, 0, -1);
setPitch( spep_0 + 514, SE025, 200 );
setTimeStretch( SE025, 1.13, 30, 4 );
SE026 = playSeVer2( spep_0 + 524, 1384, "", 0, 0, 0, -1);
setPitch( spep_0 + 524, SE026, 300 );
setTimeStretch( SE026, 0.9, 30, 4 );

--環境音
SE027 = playSeVer2( spep_0 + 542, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 542, SE027, 25 );

--オーラ
SE028 = playSeVer2( spep_0 + 624, 1265, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_0 + 624, SE028, 81 );
setStartTimeMs( SE028,  517 );

--画面遷移
SE029 = playSeVer2( spep_0 + 646, 44, "", 0, 0, 0, -1);

--ズームアウト
SE030 = playSeVer2( spep_0 + 830, 1072, "", 0, 0, 0, -1);

--ラスト決め
SE031 = playSeVer2( spep_0 + 898, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 898, SE031, 68 );
SE032 = playSeVer2( spep_0 + 898, 1171, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 898, SE032, 61 );
SE033 = playSeVer2( spep_0 + 898, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 898, SE033, 63 );

--ボイス
-- ハーッハッハッハ！
playVoice( spep_0 + 62 +4, 521 );
setVoiceVolume( spep_0 + 74 +4, 521, 100 );

-- これが宇宙の種の力だ！
playVoice( spep_0 + 664 +4, 522 );
setVoiceVolume( spep_0 + 676 +4, 522, 112 );

-- さあ、新しい宇宙の幕開けだ！
playVoice( spep_0 + 888, 523 );
setVoiceVolume( spep_0 + 900, 523, 112 );

endPhase( spep_0 + 1170 -4); -- 終了フレーム

else end