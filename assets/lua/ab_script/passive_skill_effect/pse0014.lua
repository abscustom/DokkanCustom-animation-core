--1025530：UR_ガンマ2号_登場時演出_pse0014
--battle_301239

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
SP_01 = 3169; -- ef_001

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
--ガンマ2号_登場演出
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, eff, 0, 0 , 0);
setEffMoveKey( spep_0 + 552 +4, eff, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0);
setEffScaleKey( spep_0 + 552 +4, eff, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, eff, 0);
setEffRotateKey( spep_0 + 552 +4, eff, 0);
setEffAlphaKey( spep_0 + 0, eff, 255);
setEffAlphaKey( spep_0 + 552 +4, eff, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 552 +8, 0, 0, 0, 0, 255);  --黒 背景

--SE
--銃を回す
SE001 = playSeVer2( spep_0 + 0, 1388, "",spep_0 + 114, 0, 10, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 20 );

--マント翻る
SE005 = playSeVer2( spep_0 + 146, 1332, "", 0, 0, 0, -1);

--銃をしまう
SE003 = playSeVer2( spep_0 + 102, 1389, "", 0, 0, 0, -1);

--セリフカットイン
SE004 = playSeVer2( spep_0 + 124, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE004, 63 );

--マント翻る
SE006 = playSeVer2( spep_0 + 204, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE006, 72 );
setPitch( spep_0 + 204, SE006, -300 );
setTimeStretch( SE006, 0.8, 30, 4 );
SE007 = playSeVer2( spep_0 + 228, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE007, 68 );
SE008 = playSeVer2( spep_0 + 256, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE008, 61 );
setPitch( spep_0 + 256, SE008, -300 );
setTimeStretch( SE008, 0.8, 30, 4 );
SE009 = playSeVer2( spep_0 + 304, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE009, 65 );

--腕をあげる
SE010 = playSeVer2( spep_0 + 316, 1003, "", 0, 0, 0, -1);

--ポーズとる
SE011 = playSeVer2( spep_0 + 352, 1189, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 352, 1233, "", 0, 0, 0, -1);

--爆発
SE013 = playSeVer2( spep_0 + 360, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE013, 80 );
SE014 = playSeVer2( spep_0 + 360, 1180, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE014, 80 );
SE015 = playSeVer2( spep_0 + 366, 1120, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 366, SE015, 80 );
setStartTimeMs( SE015,  50 );

--ズーム
SE016 = playSeVer2( spep_0 + 410, 1232, "", 0, 0, 0, -1);

--ラスト決め
SE017 = playSeVer2( spep_0 + 450, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 450, SE017, 69 );
SE018 = playSeVer2( spep_0 + 450, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 450, SE018, 67 );

--ボイス
-- ボクはヘド博士の最高傑作
playVoice( spep_0 + 124, 509 );
setVoiceVolume( spep_0 + 124, 509, 112 );

-- そ し て！
playVoice( spep_0 + 300, 510 );
setVoiceVolume( spep_0 + 300, 510, 112 );

-- スーパーヒーローだ！
playVoice( spep_0 + 438, 511 );
setVoiceVolume( spep_0 + 438, 511, 112 );

endPhase( spep_0 + 552 +4 );

else end