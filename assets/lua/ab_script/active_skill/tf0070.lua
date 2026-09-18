-- 1029400: LR_ブロリー_アクティブ変身
-- sp_effect_a9_00133
-- tf0070
  
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
  
-- エフェクト(味方)
SP_01 = 163079; -- ef_001 ブロリー変身
 
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
 
MAX_FRAME_0 = 1248;

setupMovie(0, SP_01, 0, 1);
 
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001 ブロリー変身
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
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 228, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE002 = playSeVer2( spep_0 + 46, 1189, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 46, 1330, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 54, 1006, "", 0, 0, 0, -1);

--気を高める
SE005 = playSeVer2( spep_0 + 92, 1176, "",spep_0 + 484, 44, 66, -1);
setPitch( spep_0 + 92, SE005, -600 );
setTimeStretch( SE005, 0.6, 30, 4 );
SE006 = playSeVer2( spep_0 + 92, 1227, "",spep_0 + 486, 0, 70, -1);
SE007 = playSeVer2( spep_0 + 108, 1116, "",spep_0 + 170, 0, 40, -1);
SE008 = playSeVer2( spep_0 + 108, 1252, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE008, 73 );

--画面遷移
SE009 = playSeVer2( spep_0 + 198, 1232, "", 0, 0, 0, -1);

--地響き
SE010 = playSeVer2( spep_0 + 198, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE010, 69 );
SE011 = playSeVer2( spep_0 + 198, 1044, "",spep_0 + 556, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 198, SE011, 66 );

--目線カットイン
SE012 = playSeVer2( spep_0 + 232, 1018, "", 0, 0, 0, -1);

--落雷
SE013 = playSeVer2( spep_0 + 292, 1342, "",spep_0 + 468, 0, 48, -1);
SE014 = playSeVer2( spep_0 + 292, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE014, 155 );
SE015 = playSeVer2( spep_0 + 352, 1231, "", 0, 0, 0, -1);

--光溢れる
SE016 = playSeVer2( spep_0 + 474, 1371, "",spep_0 + 766, 14, 70, -1);
setSeVolumeByWorkId( spep_0 + 474, SE016, 158 );
setStartTimeMs( SE016,  1400 );
SE018 = playSeVer2( spep_0 + 430, 1336, "",spep_0 + 714, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 430, SE018, 158 );

--サークレット光る
SE017 = playSeVer2( spep_0 + 430, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 430, SE017, 186 );

--サークレット割れる
SE019 = playSeVer2( spep_0 + 568, 1040, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 568, 1197, "", 0, 0, 0, -1);

--爆発１
SE021 = playSeVer2( spep_0 + 676, 1160, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 688, 1188, "", 0, 0, 0, -1);

--爆発２
SE023 = playSeVer2( spep_0 + 734, 1159, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 738, 1067, "", 0, 0, 0, -1);

--輪広がる1
SE025 = playSeVer2( spep_0 + 798, 1179, "", 0, 0, 0, -1);

--輪広がる2
SE026 = playSeVer2( spep_0 + 822, 1274, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_0 + 822, SE026, 207 );
setStartTimeMs( SE026,  333 );

--輪広がる3
SE027 = playSeVer2( spep_0 + 856, 1274, "", 0, 14, 0, -1);
setStartTimeMs( SE027,  300 );
setPitch( spep_0 + 856, SE027, -300 );
setTimeStretch( SE027, 0.8, 30, 4 );
SE028 = playSeVer2( spep_0 + 854, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 854, SE028, 73 );

--光収まる
SE029 = playSeVer2( spep_0 + 898, 1305, "",spep_0 + 1030, 0, 46, -1);
setPitch( spep_0 + 898, SE029, 900 );
setTimeStretch( SE029, 1.6, 30, 4 );

--オーラ
SE030 = playSeVer2( spep_0 + 974, 1176, "", 0, 50, 0, -1);
setSeVolumeByWorkId( spep_0 + 974, SE030, 77 );
SE032 = playSeVer2( spep_0 + 1000, 1036, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 1024, 1036, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 1048, 1036, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 1072, 1036, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 1096, 1036, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 1120, 1036, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 1144, 1036, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 1168, 1036, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 1192, 1036, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 1216, 1036, "", 0, 0, 0, -1);

--画面遷移
SE031 = playSeVer2( spep_0 + 984, 8, "", 0, 0, 0, -1);

--ラスト決め
SE033 = playSeVer2( spep_0 + 1002, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1002, SE033, 72 );
SE034 = playSeVer2( spep_0 + 1002, 1062, "", 0, 0, 0, -1);
setPitch( spep_0 + 1002, SE034, -300 );
setTimeStretch( SE034, 0.8, 30, 4 );

-- ** ボイス ** --
--「うおおおお…」
playVoice( spep_0 + 494, 826 );
setVoiceVolume( spep_0 + 494, 826, 132 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 1248F

else end