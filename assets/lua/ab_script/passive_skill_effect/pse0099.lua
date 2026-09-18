--1032310:LR_サードアイゴマー_登場時演出
--sp_effect_a9_00161
--pse0099

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164269;  -- 登場時演出 ef_001


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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 登場時演出
-------------------------------------------------
MAX_FRAME_0 = 552;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出(ef_001)
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
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--目アップ
SE002 = playSeVer2( spep_0 + 0, 1292, "",spep_0 + 56, 0, 32, -1);
SE003 = playSeVer2( spep_0 + 0, 1294, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 0, 12, "", 0, 0, 0, -1);
setPitch( spep_0 + 0, SE004, -300 );
setTimeStretch( SE004, 0.8, 30, 4 );

--後ずさる
SE005 = playSeVer2( spep_0 + 58, 1106, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 80, 1107, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 100, 1106, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 108, 1108, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 112, 1108, "", 0, 0, 0, -1);

--苦しむ
SE011 = playSeVer2( spep_0 + 134, 1473, "",spep_0 + 158, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 134, SE011, 151 );
SE012 = playSeVer2( spep_0 + 140, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE012, 73 );
SE013 = playSeVer2( spep_0 + 176, 1473, "",spep_0 + 200, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 176, SE013, 150 );
SE014 = playSeVer2( spep_0 + 198, 1469, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE014, 76 );

--大きくなる
SE015 = playSeVer2( spep_0 + 228, 1374, "",spep_0 + 302, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 228, SE015, 69 );
SE016 = playSeVer2( spep_0 + 228, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE016, 69 );
SE017 = playSeVer2( spep_0 + 228, 1250, "",spep_0 + 402, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 228, SE017, 141 );
SE018 = playSeVer2( spep_0 + 228, 1311, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE018, 151 );
SE019 = playSeVer2( spep_0 + 244, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE019, 68 );
SE020 = playSeVer2( spep_0 + 280, 1190, "", 0, 0, 0, -1);

--起き上がる
SE021 = playSeVer2( spep_0 + 344, 1116, "",spep_0 + 396, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 344, SE021, 140 );
SE022 = playSeVer2( spep_0 + 350, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE022, 100 );

--画面遷移
SE023 = playSeVer2( spep_0 + 426, 1232, "", 0, 0, 0, -1);

--ラスト決め
SE024 = playSeVer2( spep_0 + 460, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE024, 74 );

-- ** ボイス ** --

--「う…ぐうう……！！」
playVoice( spep_0 + 120, 1091 );
setVoiceVolume( spep_0 + 120, 1091, 100 );

--「フフ……！」
playVoice( spep_0 + 468, 1092 );
setVoiceVolume( spep_0 + 468, 1092, 100 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --552f

end