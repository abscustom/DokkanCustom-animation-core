--1027980:LR_超サイヤ人ゴジータ_アクティブ変身
--battle_301280
--tf0065
  
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
  
--エフェクト(味方)
SP_01 = 3218; --アクティブ変身 ef_001
 
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
 
MAX_FRAME_0 = 714;
 
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
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 96, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--瞬間移動
SE002 = playSeVer2( spep_0 + 0, 44, "",spep_0 + 42, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 88 );
SE003 = playSeVer2( spep_0 + 0, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 68 );
SE004 = playSeVer2( spep_0 + 4, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE004, 87 );

--向かっていく
SE005 = playSeVer2( spep_0 + 48, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 48, 1314, "",spep_0 + 160, 0, 44, -1);
SE007 = playSeVer2( spep_0 + 48, 1183, "",spep_0 + 160, 0, 40, -1);
SE008 = playSeVer2( spep_0 + 56, 1167, "",spep_0 + 114, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 56, SE008, 60 );
SE009 = playSeVer2( spep_0 + 82, 1116, "",spep_0 + 126, 0, 16, -1);

--飛び上がる
SE010 = playSeVer2( spep_0 + 138, 1013, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 138, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 138, 1047, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 140, 1277, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 140, 63, "",spep_0 + 218, 0, 28, -1);
SE015 = playSeVer2( spep_0 + 152, 44, "", 0, 0, 0, -1);

--空中静止環境音
SE016 = playSeVer2( spep_0 + 164, 1269, "",spep_0 + 332, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 164, SE016, 25 );
SE017 = playSeVer2( spep_0 + 178, 1350, "",spep_0 + 332, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 178, SE017, 51 );

--髪なびく
SE018 = playSeVer2( spep_0 + 202, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE018, 47 );
SE019 = playSeVer2( spep_0 + 230, 1332, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 230, SE019, 52 );
setStartTimeMs( SE019,  133 );
setPitch( spep_0 + 230, SE019, -400 );
setTimeStretch( SE019, 0.73, 30, 4 );

--腕をひく
SE020 = playSeVer2( spep_0 + 224, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE020, 79 );
setPitch( spep_0 + 224, SE020, -600 );
setTimeStretch( SE020, 0.6, 30, 4 );

--画面遷移
SE021 = playSeVer2( spep_0 + 256, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE021, 59 );

--力む
SE022 = playSeVer2( spep_0 + 268, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE022, 57 );

--気を溜める
SE023 = playSeVer2( spep_0 + 268, 1176, "",spep_0 + 486, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 268, SE023, 65 );

--気を高める
SE024 = playSeVer2( spep_0 + 308, 1219, "",spep_0 + 460, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 308, SE024, 178 );
SE026 = playSeVer2( spep_0 + 326, 1252, "",spep_0 + 466, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 326, SE026, 79 );

--イナヅマ走る
SE025 = playSeVer2( spep_0 + 326, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE025, 61 );

--気を高める
SE028 = playSeVer2( spep_0 + 354, 1278, "",spep_0 + 484, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 354, SE028, 65 );

--気を高める（後半）
SE027 = playSeVer2( spep_0 + 374, 1356, "",spep_0 + 612, 44, 16, -1);
setSeVolumeByWorkId( spep_0 + 374, SE027, 120 );
setStartTimeMs( SE027,  433 );
setPitch( spep_0 + 374, SE027, 400 );
setTimeStretch( SE027, 1.27, 30, 4 );
SE029 = playSeVer2( spep_0 + 412, 1258, "",spep_0 + 564, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 412, SE029, 74 );

--気が高まる
SE030 = playSeVer2( spep_0 + 436, 1157, "",spep_0 + 570, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 436, SE030, 73 );

--気を溜める
SE031 = playSeVer2( spep_0 + 478, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 478, SE031, 72 );

--気が弾ける
SE032 = playSeVer2( spep_0 + 484, 1427, "",spep_0 + 614, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 484, SE032, 80 );
SE033 = playSeVer2( spep_0 + 520, 1334, "",spep_0 + 616, 16, 18, -1);
setSeVolumeByWorkId( spep_0 + 520, SE033, 142 );
setStartTimeMs( SE033,  367 );
setPitch( spep_0 + 526, SE033, 800 );
setTimeStretch( SE033, 1.53, 30, 4 );
SE034 = playSeVer2( spep_0 + 508, 1008, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 508, SE034, 60 );

--目線カットイン
SE035 = playSeVer2( spep_0 + 512, 1018, "", 0, 0, 0, -1);

--ラスト気が爆発する
SE036 = playSeVer2( spep_0 + 588, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 588, SE036, 78 );
setPitch( spep_0 + 588, SE036, -400 );
setTimeStretch( SE036, 0.73, 30, 4 );
SE037 = playSeVer2( spep_0 + 588, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 588, SE037, 60 );
SE038 = playSeVer2( spep_0 + 592, 1384, "",spep_0 + 706, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 592, SE038, 100 );
setPitch( spep_0 + 592, SE038, -600 );
setTimeStretch( SE038, 0.6, 30, 4 );

--オーラ
SE039 = playSeVer2( spep_0 + 598, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 598, SE039, 50 );

--ラスト気が爆発する
SE040 = playSeVer2( spep_0 + 602, 1312, "", 0, 0, 0, -1);

--オーラ
SE041 = playSeVer2( spep_0 + 622, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 622, SE041, 50 );
SE042 = playSeVer2( spep_0 + 646, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 646, SE042, 50 );
SE043 = playSeVer2( spep_0 + 670, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 670, SE043, 50 );

-- ** ボイス ** --
--「はああああっ」
playVoice( spep_0 + 282, 745 );
setVoiceVolume( spep_0 + 282, 745, 100 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);--714F

else end