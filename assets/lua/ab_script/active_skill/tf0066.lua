--1028020:LR_超サイヤ人ブロリー_アクティブ変身＋フィールド展開
--battle_301279
--tf0066
  
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
  
--エフェクト(味方)
SP_01 = 3217; --ef_001 アクティブ変身＋フィールド展開
 
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

setupMovie(0, SP_01, 0, 0);

-------------------------------------------------
-- アクティブ変身演出
-------------------------------------------------

MAX_FRAME_0 = 676;

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
--地響き
SE001 = playSeVer2( spep_0 + 0, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
--力む
SE002 = playSeVer2( spep_0 + 6, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 69 );
setPitch( spep_0 + 6, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );
--叫ぶ
SE003 = playSeVer2( spep_0 + 86, 1137, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE003, 76 );
--画面割れる
SE004 = playSeVer2( spep_0 + 154, 1384, "", 0, 4, 0, -1);
setStartTimeMs( SE004,  833 );
SE007 = playSeVer2( spep_0 + 154, 1023, "", 0, 0, 0, -1);
--ヒビ入る
SE005 = playSeVer2( spep_0 + 124, 1041, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 136, 1041, "", 0, 0, 0, -1);
setPitch( spep_0 + 136, SE006, 300 );
setTimeStretch( SE006, 1.2, 30, 4 );
--気高める
SE008 = playSeVer2( spep_0 + 242, 1175, "",spep_0 + 544, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 242, SE008, 56 );
SE009 = playSeVer2( spep_0 + 242, 1407, "",spep_0 + 540, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 242, SE009, 251 );
SE011 = playSeVer2( spep_0 + 252, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE011, 50 );
SE012 = playSeVer2( spep_0 + 252, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE012, 59 );
--オーラ
SE010 = playSeVer2( spep_0 + 242, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE010, 50 );
SE013 = playSeVer2( spep_0 + 266, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE013, 50 );
SE014 = playSeVer2( spep_0 + 290, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 290, SE014, 50 );
SE015 = playSeVer2( spep_0 + 314, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE015, 50 );
--かがむ
SE016 = playSeVer2( spep_0 + 334, 1116, "",spep_0 + 384, 0, 18, -1);
--気爆発
SE017 = playSeVer2( spep_0 + 360, 1258, "", spep_0 + 486, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 360, SE017, 66 );
SE018 = playSeVer2( spep_0 + 364, 1188, "", spep_0 + 486, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 364, SE018, 60 );
--イナヅマ
SE019 = playSeVer2( spep_0 + 394, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 394, SE019, 56 );
--オーラ２
SE020 = playSeVer2( spep_0 + 418, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 418, SE020, 32 );
SE021 = playSeVer2( spep_0 + 442, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 442, SE021, 32 );
SE022 = playSeVer2( spep_0 + 466, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE022, 32 );
SE023 = playSeVer2( spep_0 + 490, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 490, SE023, 32 );
--気が溢れる
SE024 = playSeVer2( spep_0 + 494, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 949, SE024, 180 );
SE025 = playSeVer2( spep_0 + 494, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 494, SE025, 82 );
SE026 = playSeVer2( spep_0 + 494, 1264, "",spep_0 + 620, 0, 80, -1);
setSeVolumeByWorkId( spep_0 + 494, SE026, 110 );
setPitch( spep_0 + 494, SE026, 300 );
setTimeStretch( SE026, 1.2, 30, 4 );
SE027 = playSeVer2( spep_0 + 500, 1179, "", 0, 0, 0, -1)
--セリフカットイン	
SE028 = playSeVer2( spep_0 + 564, 1018, "", 0, 0, 0, -1);
--ラスト決め
SE029 = playSeVer2( spep_0 + 566, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 566, SE029, 86 );
SE030 = playSeVer2( spep_0 + 566, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 566, SE030, 79 );
SE033 = playSeVer2( spep_0 + 574, 1114, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 574, SE033, 83 );
--オーラ
SE031 = playSeVer2( spep_0 + 570, 1444, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 570, SE031, 216 );
SE032 = playSeVer2( spep_0 + 570, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 570, SE032, 72 );

-- ** ボイス ** --
--「ぐぅぅおおおおお!!」
playVoice( spep_0 + 248, 748 );
setVoiceVolume( spep_0 + 248, 748, 100 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);--676F

else end