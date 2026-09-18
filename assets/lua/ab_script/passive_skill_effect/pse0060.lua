--1029440:LR_伝説の超サイヤ人ブロリー_登場時演出
--battle_301299
--pse0060

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3239;  -- 登場時演出 ef_001

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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 登場時演出
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 1210;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出（ef_001）
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--ポッドシーン
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
SE003 = playSeVer2( spep_0 + 0, 1219, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 32, 1240, "",spep_0 + 246, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 32, SE004, 63 );
SE005 = playSeVer2( spep_0 + 32, 1271, "", 0, 0, 0, -1);
setPitch( spep_0 + 32, SE005, -200 );
setTimeStretch( SE005, 0.87, 30, 4 );

--水溜まっていく
SE006 = playSeVer2( spep_0 + 292, 1470, "",spep_0 + 470, 26, 12, -1);
setPitch( spep_0 + 292, SE006, -1200 );
setTimeStretch( SE006, 0.2, 30, 4 );

--凍る
SE007 = playSeVer2( spep_0 + 394, 1250, "",spep_0 + 466, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 394, SE007, 174 );
SE008 = playSeVer2( spep_0 + 394, 1292, "",spep_0 + 468, 0, 10, -1);

--画面遷移
SE009 = playSeVer2( spep_0 + 556, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 556, SE009, 65 );
SE010 = playSeVer2( spep_0 + 612, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 612, SE010, 59 );
setTimeStretch( SE010, 2, 14, 4 );

--ヒビ入る
SE011 = playSeVer2( spep_0 + 794, 1041, "",spep_0 + 818, 0, 14, -1);

--セリフカットイン
SE012 = playSeVer2( spep_0 + 826, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 826, SE012, 63 );

--ヒビ入る
SE013 = playSeVer2( spep_0 + 832, 1041, "", 0, 0, 0, -1);
setPitch( spep_0 + 832, SE013, 200 );
setTimeStretch( SE013, 1.13, 30, 4 );
SE014 = playSeVer2( spep_0 + 872, 1041, "", 0, 0, 0, -1);

--叫ぶ
SE015 = playSeVer2( spep_0 + 956, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 956, SE015, 61 );
SE016 = playSeVer2( spep_0 + 956, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 956, SE016, 71 );
setPitch( spep_0 + 956, SE016, -400 );
setTimeStretch( SE016, 0.73, 30, 4 );

--割れる
SE017 = playSeVer2( spep_0 + 1066, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1066, SE017, 73 );
SE018 = playSeVer2( spep_0 + 1066, 1384, "",spep_0 + 1204, 0, 78, -1);
SE019 = playSeVer2( spep_0 + 1066, 1067, "", 0, 0, 0, -1);

-- ** ボイス ** --
-- ブロリー「カカロット……」
playVoice( spep_0 + 820, 831 );
setVoiceVolume( spep_0 + 820, 831, 110 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1210f

else end