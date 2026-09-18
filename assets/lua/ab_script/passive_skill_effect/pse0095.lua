--1032070:UR_人造人間16号_登場時演出
--battle_301338
--pse0095

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3287;  -- 登場時演出 ef_001

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

setupMovie(0, SP_01, 0, 1);

MAX_FRAME_0 = 820;

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
--踏み出す
SE002 = playSeVer2( spep_0 + 12, 1192, "",spep_0 + 32, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 12, SE002, 85 );
SE003 = playSeVer2( spep_0 + 12, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE003, 158 );
SE004 = playSeVer2( spep_0 + 12, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE004, 126 );
SE005 = playSeVer2( spep_0 + 44, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE005, 166 );
SE006 = playSeVer2( spep_0 + 44, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE006, 191 );
SE007 = playSeVer2( spep_0 + 64, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE007, 85 );
SE008 = playSeVer2( spep_0 + 64, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE008, 87 );
--カメラパン
SE009 = playSeVer2( spep_0 + 74, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE009, 72 );
setTimeStretch( SE009, 1.41, 30, 4 );
--向き直る
SE010 = playSeVer2( spep_0 + 232, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE010, 75 );
--環境音
SE011 = playSeVer2( spep_0 + 234, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE011, 32 );
--向き直る
SE012 = playSeVer2( spep_0 + 236, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE012, 61 );
--セリフカットイン
SE013 = playSeVer2( spep_0 + 410, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE013, 63 );
--振り返る
SE014 = playSeVer2( spep_0 + 684, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 684, SE014, 77 );
setPitch( spep_0 + 684, SE014, -1000 );
setTimeStretch( SE014, 0.33, 30, 4 );

-- ** ボイス ** --
--「おまえももともと孫悟空を殺すためにつくられたんだろ?」
playVoice( spep_0 + 408, 1096 );
setVoiceVolume( spep_0 + 408, 1096, 118 );
--「そうだ」
playVoice( spep_0 + 728, 1097 );
setVoiceVolume( spep_0 + 728, 1097, 118 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --820

end