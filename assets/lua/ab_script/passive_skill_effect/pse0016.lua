--1025560：LR_アルティメット孫悟飯_登場時演出
--sp_effect_b4_00273
--pse0016

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
SP_01 = 161192	--アルティメット孫悟飯_登場	ef_001
SP_02 = 161193	--アルティメット孫悟飯_登場	ef_002

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
--アルティメット孫悟飯_登場
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); --ef_001
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 338, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 338, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 338, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 338, eff, 255 );

--SE
--気ダメ
SE001 = playSeVer2( spep_0 + 0, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 52 );
setTimeStretch( SE001, 1.25, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 426, 0, 106, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 45 );
SE005 = playSeVer2( spep_0 + 0, 1356, "",spep_0 + 214, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE005, 133 );
setPitch( spep_0 + 0, SE005, 200 );
setTimeStretch( SE005, 1.13, 30, 4 );
setBandpassFilter	( spep_0 + 0, SE005, 1640, 24000 );
SE003 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 214, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 81 );
SE004 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 214, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 63 );

--気を爆発させる
SE006 = playSeVer2( spep_0 + 170, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE006, 126 );
SE007 = playSeVer2( spep_0 + 170, 1188, "", 0, 0, 0, -1);

--気が立ち上がる
SE009 = playSeVer2( spep_0 + 228, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 228, 1145, "", 0, 0, 0, -1);
setPitch( spep_0 + 228, SE010, -400 );
setTimeStretch( SE010, 0.73, 30, 4 );
SE011 = playSeVer2( spep_0 + 228, 1022, "", 0, 0, 0, -1);

--晴れる
SE008 = playSeVer2( spep_0 + 306, 1278, "",spep_0 + 478, 16, 98, -1);
setStartTimeMs( SE008,  1317 );
SE012 = playSeVer2( spep_0 + 304, 1264, "",spep_0 + 478, 0, 98, -1);
setPitch( spep_0 + 304, SE012, -200 );
SE013 = playSeVer2( spep_0 + 304, 1306, "",spep_0 + 478, 0, 98, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + 338;

------------------------------------------------------
--アルティメット孫悟飯_登場
------------------------------------------------------
-- ** エフェクト等 ** --
eff2 = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); --ef_002
setEffMoveKey( spep_1 + 0, eff2, 0, 0, 0 );
setEffMoveKey( spep_1 + 276, eff2, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, eff2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 276, eff2, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, eff2, 0 );
setEffRotateKey( spep_1 + 276, eff2, 0 );
setEffAlphaKey( spep_1 + 0, eff2, 255 );
setEffAlphaKey( spep_1 + 276, eff2, 255 );

--SE
--オーラ
SE014 = playSeVer2( spep_1 + 85, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 85, SE014, 63 );
setPitch( spep_1 + 85, SE014, -300 );
setTimeStretch( SE014, 0.8, 30, 4 );
SE015 = playSeVer2( spep_1 + 85, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 85, SE015, 79 );
setPitch( spep_1 + 85, SE015, -400 );
setTimeStretch( SE015, 0.73, 30, 4 );
SE020 = playSeVer2( spep_1 + 219, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 219, SE020, 79 );
setPitch( spep_1 + 219, SE020, -400 );
setTimeStretch( SE020, 0.73, 30, 4 );

--セリフカットイン
SE016 = playSeVer2( spep_1 + 89, 1018, "", 0, 0, 0, -1);

--ズーム
SE017 = playSeVer2( spep_1 + 113, 1072, "", 0, 0, 0, -1);

--ラスト決め
SE018 = playSeVer2( spep_1 + 137, 1062, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 137, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 137, SE019, 71 );

--ボイス
-- 「ううう！うわわああーー！！」
playVoice( spep_0 + 34, 549 );
setVoiceVolume( spep_0 + 34, 549, 100 );

-- 「お前たちをぶっ倒す！」
playVoice( spep_1 + 79, 550 );
setVoiceVolume( spep_1 + 79, 550, 126 );

endPhase( spep_1 + 276 );

else end