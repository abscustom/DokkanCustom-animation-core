--1032460:LR_スーパーガーリックJr._登場時演出
--battle_301342
--pse0106

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3292;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 584;

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
--力む
SE001 = playSeVer2( spep_0 + 0, 1469, "", 0, 0, 0, -1);
--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
--セリフカットイン
SE003 = playSeVer2( spep_0 + 16, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 63 );

--力込める
SE004 = playSeVer2( spep_0 + 124, 1173, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 124, 1190, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE005, 126 );

--巨大化
SE006 = playSeVer2( spep_0 + 182, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE006, 73 );
SE007 = playSeVer2( spep_0 + 182, 1192, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 182, 1153, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 182, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE009, 60 );

--カット１
SE010 = playSeVer2( spep_0 + 260, 1232, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 260, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE011, 77 );
SE012 = playSeVer2( spep_0 + 260, 1483, "", 0, 0, 0, -1);
setPitch( spep_0 + 260, SE012, -300 );
setTimeStretch( SE012, 0.8, 30, 4 );

--カット２
SE013 = playSeVer2( spep_0 + 328, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE013, 79 );
SE014 = playSeVer2( spep_0 + 328, 1484, "", 0, 0, 0, -1);
setPitch( spep_0 + 328, SE014, -300 );
setTimeStretch( SE014, 0.8, 30, 4 );

--ラスト決め
SE015 = playSeVer2( spep_0 + 392, 8, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 404, 1369, "", 0, 0, 0, -1);

--マント落ちる
SE017 = playSeVer2( spep_0 + 508, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 508, SE017, 73 );


-- ** ボイス ** --
--「はぁぁぁ……」
playVoice( spep_0 + 4, 1106 );
setVoiceVolume( spep_0 + 4, 1106, 122 );
--「うああっ！！！」
playVoice( spep_0 + 158, 1107 );
setVoiceVolume( spep_0 + 158, 1107, 122 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --584

else end
