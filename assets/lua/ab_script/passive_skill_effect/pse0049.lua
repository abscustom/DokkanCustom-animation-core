-- 1028810: UR_魔人ブウ(善)_登場時演出
-- battle_301288
-- pse0049

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3224;  -- 登場時演出 ef_001

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
-- 登場時演出 ef_001
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 704;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出 ef_001
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

--落ちてくる
SE002 = playSeVer2( spep_0 + 4, 1189, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 14, 1011, "", 0, 0, 0, -1);

--転がる
SE004 = playSeVer2( spep_0 + 100, 1457, "",spep_0 + 224, 0, 12, -1);

--開く
SE005 = playSeVer2( spep_0 + 216, 413, "", 0, 4, 0, -1);
setStartTimeMs( SE005,  333 );
setPitch( spep_0 + 216, SE005, -1200 );
setTimeStretch( SE005, 0.2, 30, 4 );
SE006 = playSeVer2( spep_0 + 220, 1274, "", 0, 14, 0, -1);
setStartTimeMs( SE006,  367 );
setPitch( spep_0 + 220, SE006, -800 );
setTimeStretch( SE006, 0.47, 30, 4 );
SE007 = playSeVer2( spep_0 + 218, 1313, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE007, 56 );
SE008 = playSeVer2( spep_0 + 252, 1219, "",spep_0 + 496, 20, 152, -1);
setStartTimeMs( SE008,  433 );

--画面遷移
SE009 = playSeVer2( spep_0 + 416, 8, "", 0, 0, 0, -1);

--雲動く
SE010 = playSeVer2( spep_0 + 470, 1455, "",spep_0 + 594, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 470, SE010, 50 );
SE011 = playSeVer2( spep_0 + 470, 1398, "",spep_0 + 598, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 470, SE011, 155 );
SE012 = playSeVer2( spep_0 + 470, 1229, "",spep_0 + 620, 0, 22, -1);

--セリフカットイン
SE013 = playSeVer2( spep_0 + 590, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 590, SE013, 63 );

--ブウ登場
SE014 = playSeVer2( spep_0 + 592, 31, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 592, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 592, SE015, 80 );

-- ** ボイス ** --
--「ブウーーッ！！」
playVoice( spep_0 + 586, 792 );
setVoiceVolume( spep_0 + 586, 792, 100 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); -- 704

else end
