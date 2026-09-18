--1032220:LR_チチ_登場時演出
--sp_effect_b4_00403
--pse0094

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 164130;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 678;

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

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--入り
SE002 = playSeVer2( spep_0 + 0, 1434, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 120 );
--セリフカットイン
SE003 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE003, 63 );
--環境音
SE004 = playSeVer2( spep_0 + 6, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE004, 52 );
setTimeStretch( SE004, 2, 30, 4 );

--歩み寄る
SE005 = playSeVer2( spep_0 + 136, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE005, 168 );
SE006 = playSeVer2( spep_0 + 156, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE006, 85 );
SE007 = playSeVer2( spep_0 + 180, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE007, 162 );
--ドレスつかむ
SE008 = playSeVer2( spep_0 + 232, 1331, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 266, 1333, "", 0, 0, 0, -1);
--後ずさる
SE010 = playSeVer2( spep_0 + 374, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 374, SE010, 141 );
SE011 = playSeVer2( spep_0 + 388, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 388, SE011, 188 );
--ドレスさわる
SE012 = playSeVer2( spep_0 + 426, 1331, "",spep_0 + 482, 0, 28, -1);
SE013 = playSeVer2( spep_0 + 474, 1331, "",spep_0 + 536, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 474, SE013, 59 );
setPitch( spep_0 + 476, SE013, 300 );
setTimeStretch( SE013, 1.2, 30, 4 );
--ラスト決め
SE014 = playSeVer2( spep_0 + 532, 1436, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 532, SE014, 148 );
setStartTimeMs( SE014, 467 );
SE015 = playSeVer2( spep_0 + 534, 1288, "", 0, 0, 0, -1);

-- ** ボイス ** --

--「おっかあの形見の…ウェディングドレス……」
playVoice( spep_0 + 0, 1087 );
setVoiceVolume( spep_0 + 0, 1087, 114 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --678F

else end

