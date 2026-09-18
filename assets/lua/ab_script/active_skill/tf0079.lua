--4031970:UR_スーパーベビー2(大猿ベビー)_アクティブ大猿化
--battle_301334
--tf0079

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3282;  -- 大猿化 ef_001


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 大猿化
-------------------------------------------------
MAX_FRAME_0 = 1148;

setupMovie(0 , SP_01, 0, 1); 

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 大猿化(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--塔光る
SE003 = playSeVer2( spep_0 + 30, 28, "", 0, 0, 0, -1);
setPitch( spep_0 + 30, SE003, 400 );
setTimeStretch( SE003, 1.27, 30, 4 );
SE004 = playSeVer2( spep_0 + 30, 21, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 74, 28, "", 0, 0, 0, -1);
setPitch( spep_0 + 74, SE005, 400 );
setTimeStretch( SE005, 1.27, 30, 4 );
SE006 = playSeVer2( spep_0 + 74, 21, "", 0, 0, 0, -1);

--アンテナ光る
SE007 = playSeVer2( spep_0 + 120, 1042, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 120, 23, "", 0, 0, 0, -1);

--画面遷移
SE009 = playSeVer2( spep_0 + 188, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 188, SE09, 56 );

--ブルマ乗り出す
SE010 = playSeVer2( spep_0 + 368, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 368, SE010, 89 );

--アンテナ発射前光る
SE011 = playSeVer2( spep_0 + 414, 1191, "",spep_0 + 486, 0, 32, -1);
SE012 = playSeVer2( spep_0 + 414, 1144, "",spep_0 + 486, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 414, SE012, 51 );

--ビーム発射
SE013 = playSeVer2( spep_0 + 452, 1184, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 452, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 452, SE014, 48 );
setTimeStretch( SE014, 1.54, 30, 4 );
SE015 = playSeVer2( spep_0 + 452, 1423, "", 0, 0, 0, -1);
setTimeStretch( SE015, 1.53, 30, 4 );
SE016 = playSeVer2( spep_0 + 452, 1424, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 452, 1497, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 452, 1286, "",spep_0 + 858, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 452, SE018, 78 );

--セリフカットイン
SE019 = playSeVer2( spep_0 + 532, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 532, SE019, 63 );

--光に打たれる
SE020 = playSeVer2( spep_0 + 532, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 532, SE020, 81 );

--大猿化
SE021 = playSeVer2( spep_0 + 636, 1457, "",spep_0 + 844, 0, 16, -1);
SE022 = playSeVer2( spep_0 + 636, 1469, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 636, 1125, "",spep_0 + 908, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 636, SE023, 81 );
SE024 = playSeVer2( spep_0 + 684, 1330, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 746, 1469, "", 0, 0, 0, -1);

--ビーム弾ける
SE026 = playSeVer2( spep_0 + 834, 1180, "",spep_0 + 926, 0, 58, -1);
SE027 = playSeVer2( spep_0 + 834, 1452, "",spep_0 + 936, 0, 64, -1);
SE028 = playSeVer2( spep_0 + 834, 1479, "",spep_0 + 910, 0, 42, -1);

--着地
SE029 = playSeVer2( spep_0 + 886, 1011, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 886, 1395, "", 0, 0, 0, -1);

--決め
SE031 = playSeVer2( spep_0 + 964, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 964, SE031, 81 );
SE032 = playSeVer2( spep_0 + 964, 1066, "", 0, 0, 0, -1);

--ドラミング
SE033 = playSeVer2( spep_0 + 1078, 1359, "",spep_0 + 1118, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 1078, SE033, 67 );
SE034 = playSeVer2( spep_0 + 1078, 1352, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 1096, 1359, "",spep_0 + 1122, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 1096, SE035, 58 );
SE036 = playSeVer2( spep_0 + 1096, 1352, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 1114, 1359, "",spep_0 + 1138, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 1114, SE037, 61 );
SE038 = playSeVer2( spep_0 + 1114, 1352, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 1128, 1359, "",spep_0 + 1152, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 1128, SE039, 59 );
SE040 = playSeVer2( spep_0 + 1128, 1352, "", 0, 0, 0, -1);

-- ** ボイス ** --

--「ベビー様!」「ブルーツ波増幅装置です!」
playVoice( spep_0 + 108, 1077 );
setVoiceVolume( spep_0 + 108, 1077, 124 );

--「今です!!」
playVoice( spep_0 + 364, 1078 );
setVoiceVolume( spep_0 + 364, 1078, 124 );

--「うおおおおお!!!」
playVoice( spep_0 + 960, 1079 );
setVoiceVolume( spep_0 + 960, 1079, 124 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1148F

end