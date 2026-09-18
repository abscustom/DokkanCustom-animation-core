-- 1028490: UR_べジータ_アクティブ変身：
-- sp_effect_b4_00316
-- tf0068
  
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
  
-- エフェクト(味方)
SP_01 = 162753; -- ef_001 ベジータ変身
 
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
 
MAX_FRAME_0 = 1118;
 
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001 ベジータ変身
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

--拳握る
SE002 = playSeVer2( spep_0 + 54, 1189, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 54, 1233, "", 0, 0, 0, -1);

--力む
SE004 = playSeVer2( spep_0 + 282, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 282, SE004, 74 );
SE005 = playSeVer2( spep_0 + 282, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 282, SE005, 50 );

--髪色変わる１
SE006 = playSeVer2( spep_0 + 414, 8, "",spep_0 + 486, 0, 36, -1);
SE007 = playSeVer2( spep_0 + 414, 1307, "", 0, 0, 0, -1);

--髪色変わる２
SE008 = playSeVer2( spep_0 + 498, 8, "",spep_0 + 566, 0, 32, -1);
SE009 = playSeVer2( spep_0 + 498, 1307, "", 0, 0, 0, -1);

--目線カットイン
SE010 = playSeVer2( spep_0 + 578, 1018, "", 0, 0, 0, -1);

--岩爆発
SE011 = playSeVer2( spep_0 + 638, 1011, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 638, 1047, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 638, 1159, "",spep_0 + 798, 0, 68, -1);

--パンアップ
SE014 = playSeVer2( spep_0 + 680, 44, "", 0, 0, 0, -1);

--気ダメ１
SE015 = playSeVer2( spep_0 + 702, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 702, SE015, 71 );
SE016 = playSeVer2( spep_0 + 706, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 706, SE016, 126 );

--気ダメ２
SE017 = playSeVer2( spep_0 + 774, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 774, SE017, 126 );
SE018 = playSeVer2( spep_0 + 774, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 774, SE018, 74 );

--気ダメ３
SE019 = playSeVer2( spep_0 + 820, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 820, SE019, 126 );

--気ダメ４
SE020 = playSeVer2( spep_0 + 856, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 856, SE020, 76 );
SE021 = playSeVer2( spep_0 + 856, 1035, "", 0, 0, 0, -1);

--オーラ
SE022 = playSeVer2( spep_0 + 876, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 876, SE022, 56 );
SE023 = playSeVer2( spep_0 + 876, 1036, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 900, 1036, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 924, 1036, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 948, 1036, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 972, 1036, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 996, 1036, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 1020, 1036, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 1044, 1036, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 1068, 1036, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 1092, 1036, "", 0, 0, 0, -1);

--ラストカメラアップ
SE025 = playSeVer2( spep_0 + 904, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 904, SE025, 40 );
SE027 = playSeVer2( spep_0 + 934, 8, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「計算だけで、わかるもんじゃない。オレたちサイヤ人はな……」
playVoice( spep_0 + 0, 763 );
setVoiceVolume( spep_0 + 2, 763, 100 );

--「はああーーっ！！」
playVoice( spep_0 + 684, 764 );
setVoiceVolume( spep_0 + 692, 764, 100 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 1118F

else end