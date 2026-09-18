--1029090:LR_ジレン_スタンバイ
--battle_301293
--stb0009

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3233;  -- ef_001 スタンバイ演出

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
MAX_FRAME_0 = 614;

-- ** エフェクト等 ** --
standby_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );      -- ef_001 スタンバイ演出
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

--足踏み出す
SE002 = playSeVer2( spep_0 + 18, 1108, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 20, 1192, "",spep_0 + 52, 0, 10, -1);

--振り返る
SE004 = playSeVer2( spep_0 + 78, 1106, "", 0, 0, 0, -1);

--画面遷移
SE005 = playSeVer2( spep_0 + 88, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE005, 69 );

--腕組む
SE006 = playSeVer2( spep_0 + 174, 1233, "", 0, 0, 0, -1);
setPitch( spep_0 + 174, SE006, -400 );
setTimeStretch( SE006, 0.73, 30, 4 );

--セリフカットイン
SE007 = playSeVer2( spep_0 + 240, 1018, "", 0, 0, 0, -1);

--画面遷移
SE008 = playSeVer2( spep_0 + 344, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 344, SE008, 83 );

--眠る
SE009 = playSeVer2( spep_0 + 562, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 562, SE009, -600 );
setTimeStretch( SE009, 0.6, 30, 4 );

-- ** ボイス ** --
--「あとは任せる。オレが出るような強者はもはやいない」
playVoice( spep_0 + 244, 803 );
setVoiceVolume( spep_0 + 244, 803, 100 );

-- ** おわり ** --
endPhase( spep_0 + MAX_FRAME_0 ); -- 614

else end