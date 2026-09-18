-- 1027390: URザマス_登場時演出
-- sp_effect_b4_00300
-- pse0032

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162150;  -- ザマス登場演出 ef_001

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
-- ザマス登場演出 ef_001 (640F)
------------------------------------------------------

spep_0 = 0;
MAX_FRAME_0 = 640;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 20 );
--マドラーまわす
SE002 = playSeVer2( spep_0 + 46, 1372, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE002, 178 );
setStartTimeMs( SE002,  567 );
setPitch( spep_0 + 46, SE002, 100 );
setTimeStretch( SE002, 1.07, 30, 4 );
SE003 = playSeVer2( spep_0 + 18, 1372, "",spep_0 + 74, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 178 );
setPitch( spep_0 + 18, SE003, 100 );
setTimeStretch( SE003, 1.07, 30, 4 );
SE004 = playSeVer2( spep_0 + 90, 1372, "",spep_0 + 146, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 90, SE004, 178 );
SE005 = playSeVer2( spep_0 + 128, 1372, "", 0, 0, 0, -1);
--セリフカットイン
SE006 = playSeVer2( spep_0 + 140, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE006, 56 );
--マドラーまわす
SE007 = playSeVer2( spep_0 + 208, 1372, "", 0, 0, 0, -1);
--水面にうつる
SE008 = playSeVer2( spep_0 + 366, 1271, "",spep_0 + 538, 0, 86, -1);
setSeVolumeByWorkId( spep_0 + 366, SE008, 211 );
setPitch( spep_0 + 366, SE008, -600 );
setTimeStretch( SE008, 0.77, 30, 4 );
SE009 = playSeVer2( spep_0 + 366, 1275, "", 0, 0, 0, -1);
setPitch( spep_0 + 366, SE009, -1200 );
setTimeStretch( SE009, 0.2, 30, 4 );
SE010 = playSeVer2( spep_0 + 376, 1292, "",spep_0 + 484, 0, 82, -1);
setSeVolumeByWorkId( spep_0 + 376, SE010, 50 );
--最後決め
SE011 = playSeVer2( spep_0 + 528, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE011, 79 );
SE012 = playSeVer2( spep_0 + 528, 1171, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE012, 50 );
setPitch( spep_0 + 528, SE012, 100 );
setTimeStretch( SE012, 1.07, 30, 4 );

-- ** ボイス ** --
-- 「やはり人間は危険な存在……」
playVoice( spep_0 + 120, 678 );
setVoiceVolume( spep_0 + 120, 678, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); -- 終了フレーム 640F

end
