-- 1027580: LR_ピラフ＆シュウ＆マイ_登場時演出
-- sp_effect_a9_00114
-- pse0037

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162323;  -- 登場、カプセル投げ、メカ、セリフ ef_001

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
-- 登場、カプセル投げ、メカ、セリフ ef_001
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 778;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 320, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--３人構える
SE002 = playSeVer2( spep_0 + 36, 1189, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 50, 1007, "", 0, 0, 0, -1);

--カプセル投げる１
SE004 = playSeVer2( spep_0 + 84, 37, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE004, 135 );
SE005 = playSeVer2( spep_0 + 84, 1151, "", 0, 0, 0, -1);

--カプセル投げるベース
SE006 = playSeVer2( spep_0 + 88, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE006, 76 );
setTimeStretch( SE006, 1.25, 30, 4 );
SE007 = playSeVer2( spep_0 + 88, 1119, "", 0, 0, 0, -1);
setTimeStretch( SE007, 1.42, 30, 4 );

--カプセル投げる２
SE008 = playSeVer2( spep_0 + 114, 37, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE008, 132 );
SE009 = playSeVer2( spep_0 + 114, 1151, "", 0, 0, 0, -1);

--カプセル投げる３
SE010 = playSeVer2( spep_0 + 138, 37, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE010, 141 );
SE011 = playSeVer2( spep_0 + 138, 1151, "", 0, 0, 0, -1);

--BOM
SE012 = playSeVer2( spep_0 + 206, 1188, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 210, 31, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 210, 1008, "", 0, 0, 0, -1);

--シュウ決め前
SE015 = playSeVer2( spep_0 + 262, 37, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE015, 178 );
setPitch( spep_0 + 262, SE015, -200 );
setTimeStretch( SE015, 0.87, 30, 4 );
SE016 = playSeVer2( spep_0 + 262, 1281, "",spep_0 + 292, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 262, SE016, 71 );
setPitch( spep_0 + 262, SE016, -200 );
setTimeStretch( SE016, 0.87, 30, 4 );

--シュウマシン決め
SE017 = playSeVer2( spep_0 + 288, 1180, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE017, 75 );
setStartTimeMs( SE017,  267 );
setPitch( spep_0 + 288, SE017, -300 );
setTimeStretch( SE017, 0.8, 30, 4 );
SE018 = playSeVer2( spep_0 + 282, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 282, SE018, 251 );
SE019 = playSeVer2( spep_0 + 282, 1170, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 282, SE019, 68 );

--マイ決め前
SE020 = playSeVer2( spep_0 + 324, 37, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 324, SE020, 162 );
setPitch( spep_0 + 324, SE020, -200 );
setTimeStretch( SE020, 0.87, 30, 4 );
SE021 = playSeVer2( spep_0 + 324, 1281, "",spep_0 + 354, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 324, SE021, 68 );
setPitch( spep_0 + 324, SE021, -200 );
setTimeStretch( SE021, 0.87, 30, 4 );

--マイマシン決め
SE022 = playSeVer2( spep_0 + 352, 1180, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE022, 74 );
setStartTimeMs( SE022,  267 );
setPitch( spep_0 + 352, SE022, -300 );
setTimeStretch( SE022, 0.8, 30, 4 );
SE023 = playSeVer2( spep_0 + 346, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 346, SE023, 251 );
SE024 = playSeVer2( spep_0 + 346, 1170, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 346, SE024, 69 );

--ピラフ決め前
SE025 = playSeVer2( spep_0 + 388, 37, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 388, SE025, 168 );
setPitch( spep_0 + 388, SE025, -200 );
setTimeStretch( SE025, 0.87, 30, 4 );
SE026 = playSeVer2( spep_0 + 388, 1281, "",spep_0 + 430, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 388, SE026, 65 );
setPitch( spep_0 + 388, SE026, -200 );
setTimeStretch( SE026, 0.87, 30, 4 );

--ピラフマシン決め
SE027 = playSeVer2( spep_0 + 420, 1180, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 420, SE027, 75 );
setStartTimeMs( SE027,  267 );
setPitch( spep_0 + 420, SE027, -300 );
setTimeStretch( SE027, 0.8, 30, 4 );
SE028 = playSeVer2( spep_0 + 414, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 414, SE028, 251 );
SE029 = playSeVer2( spep_0 + 414, 1170, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 414, SE029, 68 );

--環境音
SE030 = playSeVer2( spep_0 + 444, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 444, SE030, 25 );

--セリフカットイン
SE031 = playSeVer2( spep_0 + 492, 1018, "", 0, 0, 0, -1);

--構える
SE032 = playSeVer2( spep_0 + 680, 1150, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 680, SE032, 76 );
setStartTimeMs( SE032,  367 );
SE033 = playSeVer2( spep_0 + 688, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 688, SE033, 82 );
SE034 = playSeVer2( spep_0 + 688, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 688, SE034, 77 );

--ラストきめ
SE035 = playSeVer2( spep_0 + 728, 1170, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 728, SE035, 66 );
SE036 = playSeVer2( spep_0 + 728, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 728, SE036, 76 );
SE037 = playSeVer2( spep_0 + 728, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 728, SE037, 158 );

-- ** ボイス ** --
--「天才ピラフ様が作ったこのマシンの力思い知るがいい」
playVoice( spep_0 + 510, 697 );
setVoiceVolume( spep_0 + 510, 697, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --778

else end
