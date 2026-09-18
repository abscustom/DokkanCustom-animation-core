--1028550:LR_ビルス(パジャマ)_アクティブ変身：破壊神の寝覚め
--battle_301281
--tf0067
  
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
  
--エフェクト(味方)
SP_01 = 3219; --ef_001 アクティブ変身
 
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
 
setVisibleUI( 0, 0);
 
setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);
 
setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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
 
setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );
 
setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
 
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
-- 味方側
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 0;
  
  
-------------------------------------------------
-- アクティブ変身
-------------------------------------------------
 
MAX_FRAME_0 = 460;
 
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--セリフカットイン
SE002 = playSeVer2( spep_0 + 6, 1018, "", 0, 0, 0, -1);
--あくび
SE003 = playSeVer2( spep_0 + 58, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE003, 65 );
setPitch( spep_0 + 58, SE003, -600 );
setTimeStretch( SE003, 0.6, 30, 4 );
--顔こする
SE004 = playSeVer2( spep_0 + 166, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE004, 79 );
SE005 = playSeVer2( spep_0 + 168, 1310, "",spep_0 + 192, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 168, SE005, 71 );
SE006 = playSeVer2( spep_0 + 208, 1310, "",spep_0 + 232, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 208, SE006, 54 );
SE007 = playSeVer2( spep_0 + 208, 1189, "", 0, 0, 0, -1);
--オーラ
SE008 = playSeVer2( spep_0 + 288, 1228, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE008, 42 );
setPitch( spep_0 + 292, SE008, -600 );
setTimeStretch( SE008, 0.73, 30, 4 );
SE009 = playSeVer2( spep_0 + 288, 1227, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 288, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE010, 59 );
SE011 = playSeVer2( spep_0 + 288, 1157, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 288, 1002, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE012, 76 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);--460F

else end