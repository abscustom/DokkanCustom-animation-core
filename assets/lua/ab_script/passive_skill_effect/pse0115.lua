--1033550:UR_ベジータ+ナッパ_合流演出
--battle_301351
--pse0115

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3301;  -- 合流演出 ef_001

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

ENABLE_AUTO_TIME_STRETCH(0.76);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 登場時演出
-------------------------------------------------
MAX_FRAME_0 = 840;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); --合流演出(ef_001)
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
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1183, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
setPitch( spep_0 + 0, SE002, -200 );
setTimeStretch( SE002, 0.87, 30, 4 );

--大気圏突入
SE003 = playSeVer2( spep_0 + 48, 1068, "",spep_0 + 136, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 48, SE003, 61 );
SE004 = playSeVer2( spep_0 + 50, 1258, "",spep_0 + 134, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 50, SE004, 59 );

--飛んでくる
SE005 = playSeVer2( spep_0 + 52, 1019, "", 0, 0, 0, -1);
setPitch( spep_0 + 52, SE005, -200 );
setTimeStretch( SE005, 0.87, 30, 4 );
SE006 = playSeVer2( spep_0 + 116, 1019, "",spep_0 + 138, 0, 2, -1);
setPitch( spep_0 + 116, SE006, -200 );
setTimeStretch( SE006, 0.87, 30, 4 );

--落ちてくる
SE007 = playSeVer2( spep_0 + 116, 1121, "",spep_0 + 182, 24, 22, -1);
setSeVolumeByWorkId( spep_0 + 116, SE007, 78 );

--環境音
SE008 = playSeVer2( spep_0 + 130, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE008, 25 );

--落ちてくる２
SE009 = playSeVer2( spep_0 + 264, 1121, "",spep_0 + 338, 12, 22, -1);
setSeVolumeByWorkId( spep_0 + 264, SE009, 155 );
setStartTimeMs( SE009,  2233 );
SE012 = playSeVer2( spep_0 + 264, 44, "", 0, 0, 0, -1);

--ビル激突
SE010 = playSeVer2( spep_0 + 152, 1061, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 156, 1159, "", 0, 0, 0, -1);

--地面激突
SE013 = playSeVer2( spep_0 + 302, 1067, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 302, 1159, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 302, 1384, "",spep_0 + 470, 0, 104, -1);
SE016 = playSeVer2( spep_0 + 318, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE016, 76 );

--煙
SE017 = playSeVer2( spep_0 + 500, 1219, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE017, 135 );

--蓋開く
SE018 = playSeVer2( spep_0 + 522, 92, "", 0, 0, 0, -1);

--手でつかむ
SE019 = playSeVer2( spep_0 + 596, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 596, SE019, 133 );
SE020 = playSeVer2( spep_0 + 598, 1387, "",spep_0 + 610, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 598, SE020, 42 );

--踏み出す
SE021 = playSeVer2( spep_0 + 656, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 656, SE021, 174 );
SE022 = playSeVer2( spep_0 + 656, 1387, "",spep_0 + 676, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 656, SE022, 38 );
setPitch( spep_0 + 656, SE022, -1200 );
setTimeStretch( SE022, 0.2, 30, 4 );

--画面遷移
SE023 = playSeVer2( spep_0 + 694, 8, "", 0, 0, 0, -1);

--ラスト決め
SE024 = playSeVer2( spep_0 + 736, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 736, SE024, 66 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --840F

end