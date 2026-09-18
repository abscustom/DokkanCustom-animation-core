-- 1029470:LR_超サイヤ人孫悟飯(青年期)_スタンバイ
-- sp_effect_b4_00350
-- stb0011

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 163111;  -- ef_001 スタンバイ演出

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
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- スタンバイ演出
------------------------------------------------------
MAX_FRAME_0 = 1006;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
standby_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );      -- ef_001 スタンバイ演出
setEffMoveKey( spep_0 + 0, standby_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, standby_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, standby_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, standby_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, standby_f, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, standby_f, 0 );
setEffAlphaKey( spep_0 + 0, standby_f, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, standby_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--ドラゴンボール落ちる1
SE002 = playSeVer2( spep_0 + 32, 1218, "",spep_0 + 50, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 32, SE002, 133 );
setPitch( spep_0 + 32, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );
SE003 = playSeVer2( spep_0 + 64, 413, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE003, 65 );
setStartTimeMs( SE003,  533 );
setPitch( spep_0 + 64, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
SE004 = playSeVer2( spep_0 + 42, 1220, "", 0, 2, 0, -1);
setStartTimeMs( SE004,  100 );

--ドラゴンボール落ちる2
SE005 = playSeVer2( spep_0 + 98, 413, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE005, 62 );
setStartTimeMs( SE005,  533 );
setPitch( spep_0 + 98, SE005, -400 );
setTimeStretch( SE005, 0.73, 30, 4 );
SE006 = playSeVer2( spep_0 + 72, 1218, "",spep_0 + 90, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 72, SE006, 136 );
setPitch( spep_0 + 72, SE006, -400 );
setTimeStretch( SE006, 0.73, 30, 4 );
SE007 = playSeVer2( spep_0 + 82, 1220, "", 0, 2, 0, -1);
setStartTimeMs( SE007,  100 );

--ドラゴンボール落ちる3
SE008 = playSeVer2( spep_0 + 180, 1218, "",spep_0 + 198, 0, 4, -1);
setPitch( spep_0 + 180, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );
SE009 = playSeVer2( spep_0 + 210, 413, "", 0, 2, 0, -1);
setStartTimeMs( SE009,  500 );
setPitch( spep_0 + 210, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );
SE010 = playSeVer2( spep_0 + 192, 1220, "", 0, 2, 0, -1);
setStartTimeMs( SE010,  100 );

--力入れる
SE011 = playSeVer2( spep_0 + 290, 1299, "",spep_0 + 368, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 290, SE011, 282 );
SE012 = playSeVer2( spep_0 + 294, 1301, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 294, SE012, 200 );
SE013 = playSeVer2( spep_0 + 296, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE013, 35 );

--画面遷移
SE014 = playSeVer2( spep_0 + 380, 8, "", 0, 0, 0, -1);

--よろめく
SE015 = playSeVer2( spep_0 + 478, 1331, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 524, 1116, "",spep_0 + 564, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 524, SE016, 71 );

--踏みとどまる
SE017 = playSeVer2( spep_0 + 554, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 554, SE017, 71 );
SE018 = playSeVer2( spep_0 + 556, 1107, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 556, 1192, "",spep_0 + 578, 0, 10, -1);
SE020 = playSeVer2( spep_0 + 566, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 566, SE020, 66 );

--セリフカットイン
SE021 = playSeVer2( spep_0 + 582, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 582, SE021, 63 );

--構える
SE023 = playSeVer2( spep_0 + 726, 1233, "", 0, 0, 0, -1);

--気を高める
SE024 = playSeVer2( spep_0 + 744, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 744, SE024, 25 );
SE025 = playSeVer2( spep_0 + 760, 1241, "",spep_0 + 860, 0, 26, -1);
SE022 = playSeVer2( spep_0 + 760, 1278, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_0 + 760, SE022, 61 );
setStartTimeMs( SE022,  1133 );

--気ダメ
SE026 = playSeVer2( spep_0 + 832, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 832, SE026, 170 );
SE027 = playSeVer2( spep_0 + 832, 1068, "", 0, 0, 0, -1);

--オーラ
SE028 = playSeVer2( spep_0 + 842, 1036, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 866, 1036, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 890, 1036, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 914, 1036, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 938, 1036, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 962, 1036, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 986, 1036, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 1010, 1036, "", 0, 0, 0, -1);

--ラスト決め
SE032 = playSeVer2( spep_0 + 928, 1062, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 928, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 928, SE033, 47 );
SE034 = playSeVer2( spep_0 + 928, 1137, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 928, SE034, 54 );

-- ** ボイス ** --
--「ボクがおまえを倒してやる!」
playVoice( spep_0 + 572, 834 );
setVoiceVolume( spep_0 + 572, 834, 110 );

-- ** おわり ** --
endPhase( spep_0 + MAX_FRAME_0 ); -- 1006

else end