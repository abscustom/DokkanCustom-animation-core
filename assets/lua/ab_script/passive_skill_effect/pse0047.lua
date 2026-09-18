--1028720:LR_ギニュー特戦隊_登場時演出
--battle_301290
--pse0047

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3229;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 818;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
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
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 1263, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 88 );
SE003 = playSeVer2( spep_0 + 8, 8, "", 0, 0, 0, -1);

--リクーム決め
SE004 = playSeVer2( spep_0 + 86, 1237, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE004, 63 );
setStartTimeMs( SE004,  133 );
SE005 = playSeVer2( spep_0 + 90, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE005, 141 );
setPitch( spep_0 + 90, SE005, 200 );
setTimeStretch( SE005, 1.13, 30, 4 );
SE006 = playSeVer2( spep_0 + 90, 1133, "",spep_0 + 128, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 90, SE006, 45 );
setPitch( spep_0 + 90, SE006, 400 );
setTimeStretch( SE006, 1.27, 30, 4 );
SE007 = playSeVer2( spep_0 + 90, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE007, 45 );
setPitch( spep_0 + 90, SE007, -300 );
setTimeStretch( SE007, 0.8, 30, 4 );

--バータ決め
SE008 = playSeVer2( spep_0 + 182, 1237, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE008, 63 );
setStartTimeMs( SE008,  133 );
SE009 = playSeVer2( spep_0 + 186, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE009, 141 );
setPitch( spep_0 + 186, SE009, 200 );
setTimeStretch( SE009, 1.13, 30, 4 );
SE010 = playSeVer2( spep_0 + 186, 1133, "",spep_0 + 224, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 186, SE010, 45 );
setPitch( spep_0 + 186, SE010, 400 );
setTimeStretch( SE010, 1.27, 30, 4 );
SE011 = playSeVer2( spep_0 + 186, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE011, 45 );
setPitch( spep_0 + 186, SE011, -300 );
setTimeStretch( SE011, 0.8, 30, 4 );

--ジース決め
SE012 = playSeVer2( spep_0 + 302, 1237, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 302, SE012, 63 );
setStartTimeMs( SE012,  167 );
SE013 = playSeVer2( spep_0 + 304, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE013, 141 );
setPitch( spep_0 + 304, SE013, 200 );
setTimeStretch( SE013, 1.13, 30, 4 );
SE014 = playSeVer2( spep_0 + 304, 1133, "",spep_0 + 342, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 304, SE014, 45 );
setPitch( spep_0 + 304, SE014, 400 );
setTimeStretch( SE014, 1.27, 30, 4 );
SE015 = playSeVer2( spep_0 + 304, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE015, 45 );
setPitch( spep_0 + 304, SE015, -300 );
setTimeStretch( SE015, 0.8, 30, 4 );

--グルド決め
SE016 = playSeVer2( spep_0 + 398, 1237, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 398, SE016, 63 );
setStartTimeMs( SE016,  133 );
SE017 = playSeVer2( spep_0 + 402, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE017, 141 );
setPitch( spep_0 + 402, SE017, 200 );
setTimeStretch( SE017, 1.13, 30, 4 );
SE018 = playSeVer2( spep_0 + 402, 1133, "",spep_0 + 440, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 402, SE018, 45 );
setPitch( spep_0 + 402, SE018, 400 );
setTimeStretch( SE018, 1.27, 30, 4 );
SE019 = playSeVer2( spep_0 + 402, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE019, 45 );
setPitch( spep_0 + 402, SE019, -300 );
setTimeStretch( SE019, 0.8, 30, 4 );

--ギニュー決め
SE020 = playSeVer2( spep_0 + 482, 1237, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE020, 63 );
setStartTimeMs( SE020,  133 );
SE021 = playSeVer2( spep_0 + 486, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 486, SE021, 141 );
setPitch( spep_0 + 486, SE021, 200 );
setTimeStretch( SE021, 1.13, 30, 4 );
SE022 = playSeVer2( spep_0 + 486, 1133, "",spep_0 + 524, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 486, SE022, 45 );
setPitch( spep_0 + 486, SE022, 400 );
setTimeStretch( SE022, 1.27, 30, 4 );
SE023 = playSeVer2( spep_0 + 486, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 486, SE023, 45 );
setPitch( spep_0 + 486, SE023, -300 );
setTimeStretch( SE023, 0.8, 30, 4 );

--連続顔アップ
SE024 = playSeVer2( spep_0 + 580, 1237, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 580, SE024, 71 );
setStartTimeMs( SE024,  167 );

--セリフカットイン
SE025 = playSeVer2( spep_0 + 578, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 578, SE025, 63 );

--連続顔アップ
SE026 = playSeVer2( spep_0 + 596, 1237, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 596, SE026, 71 );
setStartTimeMs( SE026,  167 );
SE027 = playSeVer2( spep_0 + 610, 1237, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 610, SE027, 71 );
setStartTimeMs( SE027,  133 );
SE028 = playSeVer2( spep_0 + 626, 1237, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 626, SE028, 71 );
setStartTimeMs( SE028,  133 );
SE029 = playSeVer2( spep_0 + 640, 1237, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 640, SE029, 71 );
setStartTimeMs( SE029,  133 );

--ラスト決め
SE030 = playSeVer2( spep_0 + 686, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 686, SE030, 164 );
SE031 = playSeVer2( spep_0 + 686, 1062, "", 0, 0, 0, -1);

--花咲く
SE032 = playSeVer2( spep_0 + 742, 1436, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_0 + 742, SE032, 158 );
setStartTimeMs( SE032,  433 );
SE033 = playSeVer2( spep_0 + 738, 1434, "", 0, 6, 0, -1);
setStartTimeMs( SE033,  200 );

-- ** ボイス ** --
--「リクーム!!!」
playVoice( spep_0 + 86, 775 );--98
setVoiceVolume( spep_0 + 86, 775, 100 );

--「バータ!!!」
playVoice( spep_0 + 182, 776 );
setVoiceVolume( spep_0 + 182, 776, 100 );

--「ジース!!!」
playVoice( spep_0 + 302, 777 );
setVoiceVolume( spep_0 + 302, 777, 100 );

--「グルド!!!」
playVoice( spep_0 + 398, 778 );
setVoiceVolume( spep_0 + 398, 778, 100 );

--「ギニュー!!!」
playVoice( spep_0 + 482, 779 );
setVoiceVolume( spep_0 + 482, 779, 100 );

--「みんなそろって……ギニュー特戦隊！」
playVoice( spep_0 + 580, 780 );
setVoiceVolume( spep_0 + 580, 780, 100 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --818

else end
