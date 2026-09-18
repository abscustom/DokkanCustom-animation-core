--1025590：LR_ピッコロ(潜在能力解放)_アクティブ巨大化
--battle_301240
--tf0053

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
SP_01 = 3172;	--巨大化　ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.85);

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--力溜め、白発光、巨大化、煽りアングル
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 1006, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1006, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 1006, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 1006, eff, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1006 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--サークルできる
SE001 = playSeVer2( spep_0 + 0, 1374, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 83 );
setStartTimeMs( SE001,  67 );
setPitch( spep_0 + 0, SE001, 600 );
setTimeStretch( SE001, 1.4, 30, 4 );

SE002 = playSeVer2( spep_0 + 0, 1265, "",spep_0 + 78, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 66 );

--ピッコロの背中
SE003 = playSeVer2( spep_0 + 42, 1371, "",spep_0 + 202, 0, 108, -1);
setSeVolumeByWorkId( spep_0 + 42, SE003, 69 );
SE004 = playSeVer2( spep_0 + 42, 1296, "",spep_0 + 160, 0, 86, -1);
setPitch( spep_0 + 42, SE004, 300 );
setTimeStretch( SE004, 1.2, 30, 4 );

--風音
SE005 = playSeVer2( spep_0 + 64, 1175, "", spep_0 + 382, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 64, SE005, 43 );

--服なびく
SE006 = playSeVer2( spep_0 + 76, 1332, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 116, 1333, "", 0, 0, 0, -1);

--神龍力使う
SE008 = playSeVer2( spep_0 + 212, 1157, "", spep_0 + 382, 0, 10, -1);
SE009 = playSeVer2( spep_0 + 212, 33, "",spep_0 + 256, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 212, 1127, "", spep_0 + 382, 0, 10, -1);

--力溢れる
SE011 = playSeVer2( spep_0 + 306, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE011, 71 );
SE014 = playSeVer2( spep_0 + 308, 1277, "", spep_0 + 382, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 308, SE014, 136 );
SE015 = playSeVer2( spep_0 + 308, 1360, "", spep_0 + 382, 0, 10, -1);
SE012 = playSeVer2( spep_0 + 308, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE012, 80 );
SE013 = playSeVer2( spep_0 + 308, 1265, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE013, 86 );


--画面遷移
SE016 = playSeVer2( spep_0 + 376, 1232, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 800, 1182, "", 0, 12, 0, -1);
setStartTimeMs( SE031,  83 );
SE032 = playSeVer2( spep_0 + 802, 1116, "",spep_0 + 842, 0, 20, -1);
SE033 = playSeVer2( spep_0 + 818, 1072, "", 0, 0, 0, -1);


--巨大化で登場する
SE017 = playSeVer2( spep_0 + 384, 1268, "",spep_0 + 678, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 384, SE017, 130 );
SE018 = playSeVer2( spep_0 + 384, 1226, "",spep_0 + 738, 0, 94, -1);
setSeVolumeByWorkId( spep_0 + 384, SE018, 50 );
SE019 = playSeVer2( spep_0 + 384, 1269, "",spep_0 + 698, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 384, SE019, 53 );
SE020 = playSeVer2( spep_0 + 384, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE020, 47 );
setPitch( spep_0 + 384, SE020, -800 );
setTimeStretch( SE020, 0.47, 30, 4 );
SE021 = playSeVer2( spep_0 + 384, 1044, "",spep_0 + 672, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 384, SE021, 58 );
SE023 = playSeVer2( spep_0 + 590, 1148, "",spep_0 + 672, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 590, SE023, 48 );
setPitch( spep_0 + 590, SE023, -80 );
setTimeStretch( SE023, 0.95, 30, 4 );

--セリフカットイン
SE022 = playSeVer2( spep_0 + 482, 1018, "", 0, 0, 0, -1);

--土煙
SE024 = playSeVer2( spep_0 + 640, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 640, SE024, 77 );
SE026 = playSeVer2( spep_0 + 640, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 640, SE026, 79 );

--環境音
SE025 = playSeVer2( spep_0 + 640, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 640, SE025, 24 );

--足踏み出す
SE027 = playSeVer2( spep_0 + 730, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 730, SE027, 86 );
SE028 = playSeVer2( spep_0 + 732, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 732, SE028, 79 );
SE029 = playSeVer2( spep_0 + 732, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 732, SE029, 60 );

--力む
SE030 = playSeVer2( spep_0 + 770, 1330, "", 0, 0, 0, -1);

--最後決め
SE034 = playSeVer2( spep_0 + 912, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 912, SE034, 84 );
SE035 = playSeVer2( spep_0 + 914, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 914, SE035, 69 );
SE036 = playSeVer2( spep_0 + 914, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 914, SE036, 82 );

--ボイス
-- 「少しおまけをしておきました」
playVoice( spep_0 + 9, 556 );
setVoiceVolume( spep_0 + 9, 556, 100 );

-- 「ぐおあああああ！」
playVoice( spep_0 + 214, 557 );
setVoiceVolume( spep_0 + 214, 557, 100 );

-- 「神龍のやつ、ずいぶんおまけしやがったな」
playVoice( spep_0 + 484, 558 );
setVoiceVolume( spep_0 + 484, 558, 100 );

-- 「ここからが、本気の闘いだ」
playVoice( spep_0 + 767, 559 );
setVoiceVolume( spep_0 + 767, 559, 100 );

endPhase( spep_0 + 1006 );
else end