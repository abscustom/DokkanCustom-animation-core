--1029510:LR_孫悟飯(じいちゃん)_登場時演出
--sp_effect_b4_00352
--pse0059

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 163135;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 642;

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

--歩いてくる
SE002 = playSeVer2( spep_0 + 26, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE002, 126 );
SE003 = playSeVer2( spep_0 + 64, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE003, 126 );
SE004 = playSeVer2( spep_0 + 98, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE004, 126 );
SE005 = playSeVer2( spep_0 + 156, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE005, 126 );
SE006 = playSeVer2( spep_0 + 200, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE006, 126 );
SE007 = playSeVer2( spep_0 + 244, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE007, 126 );
SE008 = playSeVer2( spep_0 + 284, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE008, 126 );
SE009 = playSeVer2( spep_0 + 306, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE009, 126 );
SE010 = playSeVer2( spep_0 + 328, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE010, 126 );
SE011 = playSeVer2( spep_0 + 330, 1106, "", 0, 0, 0, -1);

--セリフカットイン
SE012 = playSeVer2( spep_0 + 374, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 374, SE012, 63 );

--手あわせる
SE013 = playSeVer2( spep_0 + 552, 1348, "",spep_0 + 576, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 552, SE013, 67 );

--礼
SE014 = playSeVer2( spep_0 + 586, 32, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 596, 38, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「こりゃ！ 試合前の一礼をせんか！」
playVoice( spep_0 + 360, 816 );
setVoiceVolume( spep_0 + 360, 816, 100 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --642F

else end
