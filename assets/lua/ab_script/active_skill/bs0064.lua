--1033940:LR_ターレス_アクティブフィールド展開：神精樹の種
--battle_301356
--bs0064

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3308;  -- 神精樹の種 ef_001

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

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);
-------------------------------------------------
-- アクティブバフ
-------------------------------------------------
MAX_FRAME_0 = 1374;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 神精樹の種(ef_001)
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
--タネ投げる
SE001 = playSeVer2( spep_0 + 24, 1106, "", 0, 0, 0, -1);
setPitch( spep_0 + 24, SE001, 1000 );
setTimeStretch( SE001, 1.67, 30, 4 );
SE002 = playSeVer2( spep_0 + 26, 37, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE002, 39 );
SE003 = playSeVer2( spep_0 + 28, 1189, "", 0, 0, 0, -1);

--タネ落ちていく
SE004 = playSeVer2( spep_0 + 59, 1118, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 59, SE004, 44 );

--芽がはえはじめる
SE005 = playSeVer2( spep_0 + 213, 1292, "",spep_0 + 481, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 213, SE005, 111 );
setPitch( spep_0 + 213, SE005, -400 );
setTimeStretch( SE005, 0.73, 30, 4 );
SE006 = playSeVer2( spep_0 + 213, 1294, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 213, SE006, 75 );

--幹爆発する
SE007 = playSeVer2( spep_0 + 444, 1226, "",spep_0 + 998, 0, 122, -1);
SE008 = playSeVer2( spep_0 + 447, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 447, SE008, 65 );
SE009 = playSeVer2( spep_0 + 447, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 447, SE009, 52 );
SE010 = playSeVer2( spep_0 + 447, 1292, "",spep_0 + 968, 0, 97, -1);
setSeVolumeByWorkId( spep_0 + 447, SE010, 176 );
SE011 = playSeVer2( spep_0 + 552, 1188, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 590, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 590, SE012, 94 );
SE013 = playSeVer2( spep_0 + 616, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 616, SE013, 58 );
SE014 = playSeVer2( spep_0 + 628, 1278, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 649, 1385, "",spep_0 + 981, 0, 98, -1);
SE016 = playSeVer2( spep_0 + 649, 1398, "", 970, 0, 20, -1);
SE017 = playSeVer2( spep_0 + 779, 1044, "",spep_0 + 959, 0, 43, -1);

--画面遷移
SE018 = playSeVer2( spep_0 + 928, 8, "", 0, 0, 0, -1);

--環境音
SE019 = playSeVer2( spep_0 + 975, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 975, SE019, 40 );
SE020 = playSeVer2( spep_0 + 982, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 982, SE020, 25 );

--画面遷移
SE021 = playSeVer2( spep_0 + 1225, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1225, SE021, 82 );

--ラスト決め
SE022 = playSeVer2( spep_0 + 1258, 1369, "", 0, 0, 0, -1);

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1374F

end
