-- 1027650 : UR_人造人間21号(通常)_アクティブ変身
-- battle_301269
-- tf0063

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 4012;  -- UR_人造人間21号・アクティブ変身 ef_001

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
-- 素材が１つのみのシーン
-------------------------------------------------
 
MAX_FRAME_0 = 828;
 
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
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--歩く音
SE002 = playSeVer2( spep_0 + 16, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE002, 83 );
SE003 = playSeVer2( spep_0 + 16, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 126 );
SE004 = playSeVer2( spep_0 + 44, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE004, 78 );
SE005 = playSeVer2( spep_0 + 44, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE005, 104 );
SE006 = playSeVer2( spep_0 + 66, 1106, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 70, 1301, "", 0, 0, 0, -1);
--空気音
SE008 = playSeVer2( spep_0 + 100, 1175, "",spep_0 + 304, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 100, SE008, 25 );
--カメラチルトアップ
SE009 = playSeVer2( spep_0 + 100, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE009, 54 );
--服はためく
SE010 = playSeVer2( spep_0 + 116, 1332, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 146, 1331, "", 0, 0, 0, -1);
--画面遷移
SE012 = playSeVer2( spep_0 + 162, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE012, 66 );
SE013 = playSeVer2( spep_0 + 224, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE013, 54 );
--気ダメ
SE014 = playSeVer2( spep_0 + 250, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250, SE014, 67 );
SE015 = playSeVer2( spep_0 + 250, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250, SE015, 79 );
--オーラ
SE016 = playSeVer2( spep_0 + 270, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE016, 40 );
SE017 = playSeVer2( spep_0 + 294, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 294, SE017, 40 );
SE018 = playSeVer2( spep_0 + 318, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE018, 40 );
--セリフカットイン
SE019 = playSeVer2( spep_0 + 326, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE019, 79 );
--オーラ
SE020 = playSeVer2( spep_0 + 342, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE020, 40 );
SE021 = playSeVer2( spep_0 + 366, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 366, SE021, 50 );
--電撃
SE022 = playSeVer2( spep_0 + 372, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 372, SE022, 50 );
--オーラ
SE023 = playSeVer2( spep_0 + 384, 1181, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 384, 1407, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE024, 73 );
--オーラ
SE025 = playSeVer2( spep_0 + 390, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 390, SE025, 50 );
SE026 = playSeVer2( spep_0 + 414, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 414, SE026, 50 );
SE027 = playSeVer2( spep_0 + 438, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 438, SE027, 50 );
--服はためく
SE028 = playSeVer2( spep_0 + 430, 1332, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 444, 1333, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 444, SE029, 75 );
--オーラ
SE030 = playSeVer2( spep_0 + 462, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 462, SE030, 50 );
SE031 = playSeVer2( spep_0 + 486, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 486, SE031, 50 );
SE032 = playSeVer2( spep_0 + 510, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 510, SE032, 50 );
SE033 = playSeVer2( spep_0 + 534, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 534, SE033, 50 );
SE034 = playSeVer2( spep_0 + 558, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 558, SE034, 50 );
SE035 = playSeVer2( spep_0 + 582, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 582, SE035, 50 );
--電撃
SE036 = playSeVer2( spep_0 + 580, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 580, SE036, 50 );
--画面遷移
SE037 = playSeVer2( spep_0 + 580, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 580, SE037, 71 );
--オーラ
SE038 = playSeVer2( spep_0 + 606, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 606, SE038, 50 );
SE039 = playSeVer2( spep_0 + 630, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 630, SE039, 50 );
SE040 = playSeVer2( spep_0 + 654, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 654, SE040, 50 );
SE041 = playSeVer2( spep_0 + 678, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 678, SE041, 50 );
--ラストきめ
SE042 = playSeVer2( spep_0 + 684, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 684, SE042, 79 );
SE043 = playSeVer2( spep_0 + 684, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 684, SE043, 63 );
--オーラ
SE044 = playSeVer2( spep_0 + 702, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 702, SE044, 50 );
--電撃
SE045 = playSeVer2( spep_0 + 722, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 722, SE045, 50 );
--オーラ
SE046 = playSeVer2( spep_0 + 726, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 726, SE046, 50 );
SE047 = playSeVer2( spep_0 + 750, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 750, SE047, 50 );
SE048 = playSeVer2( spep_0 + 774, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 774, SE048, 50 );
SE049 = playSeVer2( spep_0 + 798, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 798, SE049, 50 );

-- ** ボイス ** --
--「はあぁーっ!!」
playVoice( spep_0 + 246, 726 );
setVoiceVolume( spep_0 + 246, 726, 138 );
--「わたしは、 大切な人たちが傷つくのを見たくない!」
playVoice( spep_0 + 514, 727 );
setVoiceVolume( spep_0 + 514, 727, 126 );

--終わり
endPhase( spep_0 + MAX_FRAME_0); --828F
 
else end