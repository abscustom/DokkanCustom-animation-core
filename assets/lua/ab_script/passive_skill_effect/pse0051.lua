--1028890:LR_アルティメット孫悟飯_登場時演出
--battle_301289
--pse0051

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3230;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 782;

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
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 500, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--環境音2
SE031 = playSeVer2( spep_0 + 470, 1269, "",spep_0 + 0, 30, 0, -1);
setSeVolumeByWorkId( spep_0 + 470, SE031, 25 );

--ピッコロ気づく
SE002 = playSeVer2( spep_0 + 8, 48, "", 0, 0, 0, -1);

--集中線
SE003 = playSeVer2( spep_0 + 48, 1227, "",spep_0 + 210, 10, 16, -1);
setSeVolumeByWorkId( spep_0 + 48, SE003, 132 );
setStartTimeMs( SE003,  300 );
SE004 = playSeVer2( spep_0 + 54, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE004, 61 );
SE005 = playSeVer2( spep_0 + 54, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE005, 68 );

--悟飯飛んでくる
SE006 = playSeVer2( spep_0 + 192, 1258, "",spep_0 + 310, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 192, SE006, 65 );
SE007 = playSeVer2( spep_0 + 198, 1183, "",spep_0 + 310, 0, 26, -1);
SE008 = playSeVer2( spep_0 + 198, 1033, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 198, 1019, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 198, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE010, 85 );
SE011 = playSeVer2( spep_0 + 262, 1019, "",spep_0 + 306, 0, 12, -1);

--画面遷移
SE012 = playSeVer2( spep_0 + 290, 1232, "", 0, 0, 0, -1);

--悟飯着地
SE013 = playSeVer2( spep_0 + 452, 1197, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 452, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 452, SE014, 65 );
SE015 = playSeVer2( spep_0 + 452, 1168, "",spep_0 + 598, 0, 86, -1);
setSeVolumeByWorkId( spep_0 + 452, SE015, 41 );
SE016 = playSeVer2( spep_0 + 458, 1197, "",spep_0 + 468, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 458, SE016, 91 );
setPitch( spep_0 + 458, SE016, -400 );
setTimeStretch( SE016, 0.73, 30, 4 );
SE017 = playSeVer2( spep_0 + 458, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 458, SE017, 309 );
SE018 = playSeVer2( spep_0 + 464, 1197, "",spep_0 + 474, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 464, SE018, 72 );
setPitch( spep_0 + 464, SE018, -400 );
setTimeStretch( SE018, 0.73, 30, 4 );
SE019 = playSeVer2( spep_0 + 466, 1044, "",spep_0 + 526, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 466, SE019, 59 );
SE020 = playSeVer2( spep_0 + 470, 1197, "",spep_0 + 480, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 470, SE020, 62 );
setPitch( spep_0 + 470, SE020, -400 );
setTimeStretch( SE020, 0.73, 30, 4 );
SE021 = playSeVer2( spep_0 + 474, 1197, "",spep_0 + 486, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 474, SE021, 49 );
setPitch( spep_0 + 474, SE021, -400 );
setTimeStretch( SE021, 0.73, 30, 4 );
SE022 = playSeVer2( spep_0 + 480, 1197, "",spep_0 + 490, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 480, SE022, 42 );
setPitch( spep_0 + 480, SE022, -400 );
setTimeStretch( SE022, 0.73, 30, 4 );
SE023 = playSeVer2( spep_0 + 486, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 486, SE023, 42 );
setPitch( spep_0 + 486, SE023, -400 );
setTimeStretch( SE023, 0.73, 30, 4 );

--画面遷移
SE024 = playSeVer2( spep_0 + 574, 1072, "", 0, 16, 0, -1);
setStartTimeMs( SE024,  233 );

--セリフカットイン
SE025 = playSeVer2( spep_0 + 614, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 614, SE025, 63 );

-- ** ボイス ** --
--「な……なんだ！？　こ……この気は……！？ 」
playVoice( spep_0 + 58, 793 );
setVoiceVolume( spep_0 + 58, 793, 100 );

--「にいちゃん……にいちゃんだ！！！」
playVoice( spep_0 + 314, 794 );
setVoiceVolume( spep_0 + 314, 794, 100 );

--「よかった。」
playVoice( spep_0 + 622, 795 );
setVoiceVolume( spep_0 + 622, 795, 100 );

--「まにあって……」
playVoice( spep_0 + 696, 796 );
setVoiceVolume( spep_0 + 696, 796, 100 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --782

else end
