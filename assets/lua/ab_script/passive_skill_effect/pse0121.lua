--1034380:LR_セルマックス_登場時演出
--battle_301357
--pse0121

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3309;  -- 登場時演出 ef_001


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);
-------------------------------------------------
-- 登場時演出
-------------------------------------------------
MAX_FRAME_0 = 674;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場時演出(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 236, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 53 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 6, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 63 );

--爆発
SE004 = playSeVer2( spep_0 + 192, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE004, 52 );
setPitch( spep_0 + 192, SE004, 300 );
setTimeStretch( SE004, 1.2, 30, 4 );
SE005 = playSeVer2( spep_0 + 192, 1024, "", 0, 0, 0, -1);

--飛び上がる
SE006 = playSeVer2( spep_0 + 235, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 235, SE006, 48 );
setPitch( spep_0 + 235, SE006, -1200 );
setTimeStretch( SE006, 0.4, 30, 4 );
SE007 = playSeVer2( spep_0 + 254, 44, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 254, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE008, 124 );
SE009 = playSeVer2( spep_0 + 254, 1121, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 314, 1183, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 314, 1452, "", 0, 0, 0, -1);

--空中で爆発
SE012 = playSeVer2( spep_0 + 462, 1313, "", 0, 7, 0, -1);
setStartTimeMs( SE012,  250 );
SE013 = playSeVer2( spep_0 + 458, 1387, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 458, SE013, 135 );
setPitch( spep_0 + 458, SE013, -400 );
setTimeStretch( SE013, 0.73, 30, 4 );
SE014 = playSeVer2( spep_0 + 461, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 461, SE014, 80 );
SE015 = playSeVer2( spep_0 + 461, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 461, SE015, 86 );

--環境音
SE016 = playSeVer2( spep_0 + 461, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 461, SE016, 25 );

--ラスト決め
SE017 = playSeVer2( spep_0 + 538, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 538, SE017, 60 );

-- ** ボイス ** --

--「セルが…セルマックスが起動した!」
playVoice( spep_0 + 5, 1220 );
setVoiceVolume( spep_0 + 5, 1220, 112 );

--ア
playVoice( spep_0 + 525, 1221 );
setVoiceVolume( spep_0 + 525, 1221, 112 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --674F

end
