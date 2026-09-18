--1029270:LR_バイオブロリー_登場時演出
--sp_effect_b4_00355
--pse0064

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 163218;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 498;

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
--泡音
SE001 = playSeVer2( spep_0 + 0, 1471, "", 0, 12, 0, -1);
setStartTimeMs( SE001,  1000 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1396, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 38 );
setPitch( spep_0 + 0, SE002, -500 );
setTimeStretch( SE002, 0.67, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 25 );

--尻尾ゆれる
SE004 = playSeVer2( spep_0 + 10, 1116, "",spep_0 + 56, 0, 24, -1);
setBandpassFilter	( spep_0 + 10, SE004, 24, 750 );

--環境音
SE005 = playSeVer2( spep_0 + 34, 1397, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE005, 45 );

--泡音
SE006 = playSeVer2( spep_0 + 136, 1471, "", 0, 20, 0, -1);
setStartTimeMs( SE006,  1533 );

--ズーム
SE007 = playSeVer2( spep_0 + 54, 44, "", 0, 0, 0, -1);

--容器光る
SE008 = playSeVer2( spep_0 + 246, 1329, "",spep_0 + 362, 6, 30, -1);
setSeVolumeByWorkId( spep_0 + 246, SE008, 155 );
setStartTimeMs( SE008,  833 );
SE009 = playSeVer2( spep_0 + 240, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE009, 76 );
SE010 = playSeVer2( spep_0 + 246, 1204, "",spep_0 + 362, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 246, SE010, 145 );
setPitch( spep_0 + 246, SE010, 600 );
setTimeStretch( SE010, 1.4, 30, 4 );
SE011 = playSeVer2( spep_0 + 246, 1157, "",spep_0 + 364, 0, 28, -1);
SE012 = playSeVer2( spep_0 + 246, 1147, "",spep_0 + 356, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 246, SE012, 44 );

--爆発
SE013 = playSeVer2( spep_0 + 316, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE013, 54 );
SE014 = playSeVer2( spep_0 + 316, 1384, "",spep_0 + 460, 0, 98, -1);
setSeVolumeByWorkId( spep_0 + 316, SE014, 83 );

--環境音
SE015 = playSeVer2( spep_0 + 334, 1456, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 336, 1457, "", 0, 0, 0, -1);

--セリフカットイン
SE017 = playSeVer2( spep_0 + 358, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 358, SE017, 63 );

--ラスト決め
SE018 = playSeVer2( spep_0 + 430, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 430, SE018, 72 );
SE019 = playSeVer2( spep_0 + 430, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 430, SE019, 50 );

-- ** ボイス ** --
--「グオオォォァァ！」
playVoice( spep_0 + 350, 860 );
setVoiceVolume( spep_0 + 350, 860, 140 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); -- 498f

else end
