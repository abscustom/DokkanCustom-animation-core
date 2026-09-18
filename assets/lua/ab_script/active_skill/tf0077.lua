-- 1030970:LR_パイクーハン_アクティブ変身
-- sp_effect_a9_00142
-- tf0077
  
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
  
-- エフェクト(味方)
SP_01 = 163731; -- ef_001 登場
 
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
-- 登場
-------------------------------------------------
 
MAX_FRAME_0 = 614;
 
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001 登場
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 12, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE002, 63 );

--拳ならす
SE003 = playSeVer2( spep_0 + 12, 1233, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 22, 1414, "",spep_0 + 40, 0, 4, -1);

--ベルト外す
SE005 = playSeVer2( spep_0 + 110, 21, "",spep_0 + 138, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 110, SE005, 126 );
SE006 = playSeVer2( spep_0 + 110, 28, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE006, 71 );
SE007 = playSeVer2( spep_0 + 110, 1331, "",spep_0 + 156, 0, 12, -1);

--帽子はずす
SE008 = playSeVer2( spep_0 + 184, 1333, "", 0, 8, 0, -1);
setStartTimeMs( SE008,  267 );

--画面遷移
SE009 = playSeVer2( spep_0 + 200, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE009, 63 );

--衣服投げる
SE010 = playSeVer2( spep_0 + 286, 1319, "",spep_0 + 432, 0, 54, -1);
setPitch( spep_0 + 286, SE010, 1200 );
setTimeStretch( SE010, 1.8, 30, 4 );
SE011 = playSeVer2( spep_0 + 296, 1027, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 296, 1117, "", 0, 0, 0, -1);

--地面落ちる
SE013 = playSeVer2( spep_0 + 362, 1395, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 364, 1159, "",spep_0 + 452, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 364, SE014, 79 );

--画面遷移
SE015 = playSeVer2( spep_0 + 398, 8, "", 0, 0, 0, -1);

--環境音
SE016 = playSeVer2( spep_0 + 432, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE016, 25 );

--ラスト決め
SE017 = playSeVer2( spep_0 + 532, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 532, SE017, 75 );
SE018 = playSeVer2( spep_0 + 532, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 532, SE018, 77 );

-- ** ボイス ** --
--「おまえの強さはわかった」
playVoice( spep_0 + 12, 973 );
setVoiceVolume( spep_0 + 12, 973, 122 );

--「ここからが本番だ!」
playVoice( spep_0 + 426, 974 );
setVoiceVolume( spep_0 + 426, 974, 122 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 614f

else end