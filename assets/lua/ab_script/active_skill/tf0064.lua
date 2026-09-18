--1028160:UR_ヒルデガーン_アクティブ変身
--battle_301278
--tf0064
  
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
  
--エフェクト(味方)
SP_01 = 3211; --アクティブ変身演出 ef_001
 
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
-- アクティブ変身演出
-------------------------------------------------
 
MAX_FRAME_0 = 690;
 
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
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1219, "",spep_0 + 158, 0, 78, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 80 );
SE002 = playSeVer2( spep_0 + 0, 1229, "",spep_0 + 156, 0, 74, -1);
SE003 = playSeVer2( spep_0 + 0, 1297, "", 0, 0, 0, -1);

--環境音
SE004 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 25 );

--光溢れる
SE005 = playSeVer2( spep_0 + 132, 1371, "",spep_0 + 446, 40, 84, -1);
setSeVolumeByWorkId( spep_0 + 132, SE005, 71 );
setStartTimeMs( SE005,  733 );

--から割れる
SE006 = playSeVer2( spep_0 + 104, 1333, "",spep_0 + 154, 0, 22, -1);
SE007 = playSeVer2( spep_0 + 120, 1294, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE007, 123 );

--光溢れる
SE008 = playSeVer2( spep_0 + 140, 1264, "", 0, 26, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE008, 50 );
setStartTimeMs( SE008,  100 );
setPitch( spep_0 + 140, SE008, 500 );
setTimeStretch( SE008, 1.66, 30, 4 );

--から割れる
SE009 = playSeVer2( spep_0 + 134, 1340, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 176, 1292, "",spep_0 + 354, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 176, SE010, 155 );

--中から新しい身体出る
SE011 = playSeVer2( spep_0 + 300, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE011, 68 );
SE012 = playSeVer2( spep_0 + 300, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE012, 77 );

--羽広げる
SE013 = playSeVer2( spep_0 + 430, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 430, SE013, 71 );
SE014 = playSeVer2( spep_0 + 458, 1373, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 458, SE014, 58 );
SE015 = playSeVer2( spep_0 + 464, 1332, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 464, 1116, "",spep_0 + 514, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 464, SE016, 78 );

--セリフカットイン
SE017 = playSeVer2( spep_0 + 492, 1018, "", 0, 0, 0, -1);

--ラスト決め
SE018 = playSeVer2( spep_0 + 498, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 498, SE018, 65 );
SE019 = playSeVer2( spep_0 + 498, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 498, SE019, 69 );
setBandpassFilter	( spep_0 + 498, SE019, 24, 840 );
SE020 = playSeVer2( spep_0 + 506, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 506, SE020, 70 );
SE021 = playSeVer2( spep_0 + 538, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 538, SE021, 68 );

-- ** ボイス ** --
--「グオオガアアー!!」
playVoice( spep_0 + 486, 744 );
setVoiceVolume( spep_0 + 486, 744, 130 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);--690F

else end