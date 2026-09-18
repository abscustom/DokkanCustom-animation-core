-- 1028570: UR_フリーザ（第一形態）_登場時演出
-- sp_effect_b4_00317
-- pse0045

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162731;  -- 宇宙船からフリーザが登場 ef_001

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

MAX_FRAME_0 = 886;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 宇宙船からフリーザが登場 ef_001
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
--セリフカットイン
SE001 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--フリーザ腕おろす
SE003 = playSeVer2( spep_0 + 262, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE003, 61 );

--気づく
SE004 = playSeVer2( spep_0 + 342, 1048, "", 0, 0, 0, -1);
setPitch( spep_0 + 342, SE004, -500 );
setTimeStretch( SE004, 0.67, 30, 4 );

--ザーボン走り出す
SE005 = playSeVer2( spep_0 + 424, 1108, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 442, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 442, SE007, 56 );
SE008 = playSeVer2( spep_0 + 454, 1108, "", 0, 0, 0, -1);
setPitch( spep_0 + 454, SE008, 200 );
setTimeStretch( SE008, 1.13, 30, 4 );

--画面遷移
SE007 = playSeVer2( spep_0 + 446, 1232, "", 0, 0, 0, -1);

--ハッチ開く
SE009 = playSeVer2( spep_0 + 510, 1150, "",spep_0 + 554, 0, 16, -1);
setPitch( spep_0 + 510, SE009, -600 );
setTimeStretch( SE009, 0.6, 30, 4 );
SE010 = playSeVer2( spep_0 + 510, 1326, "",spep_0 + 818, 0, 120, -1);
setPitch( spep_0 + 510, SE010, -800 );
setTimeStretch( SE010, 0.47, 30, 4 );
SE011 = playSeVer2( spep_0 + 510, 1203, "",spep_0 + 718, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 510, SE011, 73 );
setTimeStretch( SE011, 1.66, 30, 4 );
SE012 = playSeVer2( spep_0 + 510, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 510, SE012, 37 );

--フリーザ上がってくる
SE013 = playSeVer2( spep_0 + 598, 1239, "",spep_0 + 832, 0, 90, -1);
setPitch( spep_0 + 598, SE013, -1200 );
setTimeStretch( SE013, 0.21, 30, 4 );
SE014 = playSeVer2( spep_0 + 598, 1449, "",spep_0 + 796, 0, 86, -1);
setSeVolumeByWorkId( spep_0 + 598, SE014, 158 );

--ラスト決め
SE015 = playSeVer2( spep_0 + 820, 20, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 820, 1062, "", 0, 0, 0, -1);
setPitch( spep_0 + 820, SE016, -600 );
setTimeStretch( SE016, 0.6, 30, 4 );

-- ** ボイス ** --
--「ザーボンさん、上部ハッチを開けなさい」
playVoice( spep_0 + 0, 760 );
setVoiceVolume( spep_0 + 0, 760, 100 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0 ); -- 886

else end
