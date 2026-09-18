-- 1027460: LR_リブリアン&カクンサ&ロージィ_アクティブ巨大化
-- battle_301267
-- tf0062

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3204;  -- リブリアン&カクンサ&ロージィ アクティブ巨大化  ef_001

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
setupMovie(0 , SP_01, 0, 1);
  
-------------------------------------------------
-- 素材が１つのみのシーン
-------------------------------------------------
 
MAX_FRAME_0 = 1138;
 
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
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
--歓声
SE001 = playSeVer2( spep_0 + 0, 39, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 92 );
setTimeStretch( SE001, 1.24, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 39, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 93 );
setPitch( spep_0 + 0, SE002, -800 );
setTimeStretch( SE002, 0.47, 30, 4 );

--腕上げる
SE003 = playSeVer2( spep_0 + 72, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE003, 124 );
setPitch( spep_0 + 72, SE003, 400 );
setTimeStretch( SE003, 1.27, 30, 4 );
SE004 = playSeVer2( spep_0 + 80, 1003, "", 0, 0, 0, -1);

--環境音
SE005 = playSeVer2( spep_0 + 108, 1269, "",spep_0 + 768, 0, 94, -1);
setSeVolumeByWorkId( spep_0 + 108, SE005, 25 );

--セリフカットイン
SE006 = playSeVer2( spep_0 + 122, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE006, 56 );

--オーラ
SE007 = playSeVer2( spep_0 + 128, 1227, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 128, 1407, "",spep_0 + 784, 0, 100, -1);
setSeVolumeByWorkId( spep_0 + 128, SE008, 243 );

--抱きしめるポーズ
SE009 = playSeVer2( spep_0 + 214, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE009, 100 );

--光に包まれて浮く
SE010 = playSeVer2( spep_0 + 404, 1241, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 404, 1265, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 404, 1266, "", 0, 0, 0, -1);

--ハート大きくなる
SE013 = playSeVer2( spep_0 + 688, 1435, "",spep_0 + 852, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 688, SE013, 178 );
SE014 = playSeVer2( spep_0 + 688, 1435, "",spep_0 + 856, 0, 74, -1);
setSeVolumeByWorkId( spep_0 + 688, SE014, 178 );
setPitch( spep_0 + 688, SE014, -1200 );
setTimeStretch( SE014, 0.2, 30, 4 );
SE015 = playSeVer2( spep_0 + 688, 1407, "",spep_0 + 1346, 0, 100, -1);
setSeVolumeByWorkId( spep_0 + 688, SE015, 164 );
SE016 = playSeVer2( spep_0 + 688, 1115, "",spep_0 + 946, 0, 78, -1);

--巨大化する
SE017 = playSeVer2( spep_0 + 796, 1436, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 796, SE017, 224 );
SE018 = playSeVer2( spep_0 + 848, 1436, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 848, SE018, 151 );

--羽が生える
SE019 = playSeVer2( spep_0 + 864, 1437, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 864, SE019, 145 );

--ラストきめ
SE020 = playSeVer2( spep_0 + 1008, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1008, SE020, 71 );
SE021 = playSeVer2( spep_0 + 1034, 8, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「ありがとう　みんなの熱い愛が伝わってくる」
playVoice( spep_0 + 144, 710 );
setVoiceVolume( spep_0 + 144, 710, 110 );

--「愛って、すてき」
playVoice( spep_0 + 478, 711 );
setVoiceVolume( spep_0 + 478, 711, 110 );

--「ラブリーラブラブ　リブリアン！」
playVoice( spep_0 + 772, 712 );
setVoiceVolume( spep_0 + 772, 712, 110 );

--「愛は、宇宙を救うのよ」
playVoice( spep_0 + 948, 713 );
setVoiceVolume( spep_0 + 948, 713, 110 );
 
--終わり
endPhase( spep_0 + MAX_FRAME_0); --1038
 
else end