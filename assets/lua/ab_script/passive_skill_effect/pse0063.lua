--1029550:LR_アニラーザ_登場時演出
--battle_301305
--pse0063

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3254;  -- 登場時演出 ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

------------------------------------------------------
-- 登場時演出
------------------------------------------------------

spep_0 = 0;


MAX_FRAME_0 = 846;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出（ef_001）
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 334, 0, 122, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--杖光る
SE002 = playSeVer2( spep_0 + 12, 1263, "", 0, 10, 0, -1);
setStartTimeMs( SE002,  333 );
SE003 = playSeVer2( spep_0 + 12, 1222, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 12, 1371, "",spep_0 + 404, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 12, SE004, 79 );

--光につつまれる
SE005 = playSeVer2( spep_0 + 176, 1228, "",spep_0 + 380, 54, 28, -1);
setSeVolumeByWorkId( spep_0 + 176, SE005, 69 );
setStartTimeMs( SE005,  1167 );

--腕さげる
SE006 = playSeVer2( spep_0 + 116, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE006, 79 );

--ジャンプ
SE007 = playSeVer2( spep_0 + 150, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE007, 82 );
SE008 = playSeVer2( spep_0 + 150, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE008, 79 );

--光につつまれる
SE009 = playSeVer2( spep_0 + 198, 1374, "", 0, 20, 0, -1);
setStartTimeMs( SE009,  500 );
setTimeStretch( SE009, 1.43, 30, 4 );
SE010 = playSeVer2( spep_0 + 206, 1214, "", 0, 0, 0, -1);
setTimeStretch( SE010, 0.77, 30, 4 );
SE011 = playSeVer2( spep_0 + 206, 1203, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE011, 115 );
setTimeStretch( SE011, 1.24, 30, 4 );

--背景音
SE012 = playSeVer2( spep_0 + 320, 1371, "",spep_0 + 646, 26, 38, -1);
setSeVolumeByWorkId( spep_0 + 320, SE012, 62 );
setStartTimeMs( SE012,  867 );
SE013 = playSeVer2( spep_0 + 322, 1269, "",spep_0 + 646, 34, 42, -1);
setSeVolumeByWorkId( spep_0 + 322, SE013, 50 );

--腕出現
SE014 = playSeVer2( spep_0 + 344, 1178, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 348, 1190, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 350, 1179, "", 0, 0, 0, -1);

--目光る
SE017 = playSeVer2( spep_0 + 464, 1184, "",spep_0 + 572, 0, 64, -1);
SE018 = playSeVer2( spep_0 + 472, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 472, SE018, 51 );
setPitch( spep_0 + 472, SE018, 200 );
setTimeStretch( SE018, 1.13, 30, 4 );
SE019 = playSeVer2( spep_0 + 472, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 472, SE019, 211 );
setPitch( spep_0 + 472, SE019, -300 );
setTimeStretch( SE019, 0.8, 30, 4 );

--目から光あふれる
SE020 = playSeVer2( spep_0 + 514, 1264, "",spep_0 + 652, 30, 70, -1);
setSeVolumeByWorkId( spep_0 + 514, SE020, 62 );
SE021 = playSeVer2( spep_0 + 514, 1145, "", 0, 22, 0, -1);

--画面遷移
SE022 = playSeVer2( spep_0 + 590, 8, "", 0, 0, 0, -1);

--セリフカットイン
SE023 = playSeVer2( spep_0 + 600, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 600, SE023, 63 );

--オーラ
SE024 = playSeVer2( spep_0 + 610, 1176, "", 0, 0, 0, -1);
setPitch( spep_0 + 610, SE024, -600 );
setTimeStretch( SE024, 0.6, 30, 4 );
SE025 = playSeVer2( spep_0 + 610, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 610, SE025, 43 );
SE026 = playSeVer2( spep_0 + 610, 1267, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 610, SE026, 86 );

--ラスト決め
SE027 = playSeVer2( spep_0 + 720, 1369, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「グオオォォォ」
playVoice( spep_0 + 598, 882 );
setVoiceVolume( spep_0 + 598, 882, 122 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); -- 846f

else end
