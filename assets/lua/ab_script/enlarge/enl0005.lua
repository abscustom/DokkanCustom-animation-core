--1033840:UR_メタルクウラ軍団_パッシブ巨大化
--battle_301354
--enl0005

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3305;  -- 増援演出 ef_001

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

ENABLE_AUTO_TIME_STRETCH(0.76);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- アクティブバフ演出
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 増援演出
-------------------------------------------------

MAX_FRAME_0 = 702;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 増援演出（ef_001）
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 101, 0, 21, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 46 );
SE002 = playSeVer2( spep_0 + 0, 1044, "",spep_0 + 97, 0, 21, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 31 );
SE003 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 100, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 42 );
--高速移動
SE004 = playSeVer2( spep_0 + 70, 1278, "",spep_0 + 253, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 70, SE004, 60 );
SE005 = playSeVer2( spep_0 + 70, 1304, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE005, 79 );
SE006 = playSeVer2( spep_0 + 74, 44, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 134, 1265, "",spep_0 + 328, 0, 101, -1);
SE008 = playSeVer2( spep_0 + 139, 1119, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 139, SE008, 67 );
SE009 = playSeVer2( spep_0 + 178, 8, "", 0, 0, 0, -1);
--大量に走ってくる
SE010 = playSeVer2( spep_0 + 265, 1226, "",spep_0 + 563, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 265, SE010, 63 );
SE011 = playSeVer2( spep_0 + 265, 1044, "",spep_0 + 566, 0, 47, -1);
setSeVolumeByWorkId( spep_0 + 265, SE011, 79 );
setPitch( spep_0 + 265, SE011, -1200 );
setTimeStretch( SE011, 0.2, 30, 4 );

SE012 = playSeVer2( spep_0 + 335, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 335, SE012, 65 );
setPitch( spep_0 + 335, SE012, -200 );
setTimeStretch( SE012, 0.87, 30, 4 );
SE013 = playSeVer2( spep_0 + 342, 1472, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 349, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 349, SE014, 67 );
setPitch( spep_0 + 349, SE014, -500 );
setTimeStretch( SE014, 0.67, 30, 4 );
SE015 = playSeVer2( spep_0 + 359, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 359, SE015, 56 );
setPitch( spep_0 + 359, SE015, -100 );
setTimeStretch( SE015, 0.93, 30, 4 );
SE016 = playSeVer2( spep_0 + 368, 1472, "",spep_0 + 398, 0, 12, -1);
stopSeIfDoubleSpeed( spep_0 + 368, SE016);
SE017 = playSeVer2( spep_0 + 380, 1472, "",spep_0 + 410, 0, 10, -1);
SE018 = playSeVer2( spep_0 + 387, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 387, SE018, 72 );
stopSeIfDoubleSpeed( spep_0 + 387, SE018);
SE019 = playSeVer2( spep_0 + 388, 1472, "",spep_0 + 418, 0, 9, -1);
stopSeIfDoubleSpeed( spep_0 + 388, SE019);
SE020 = playSeVer2( spep_0 + 402, 1472, "",spep_0 + 433, 0, 10, -1);
SE021 = playSeVer2( spep_0 + 403, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 403, SE021, 65 );
SE022 = playSeVer2( spep_0 + 421, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 421, SE022, 67 );
stopSeIfDoubleSpeed( spep_0 + 421, SE022);
SE023 = playSeVer2( spep_0 + 425, 1472, "",spep_0 + 456, 0, 11, -1);
SE024 = playSeVer2( spep_0 + 435, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 435, SE024, 58 );
stopSeIfDoubleSpeed( spep_0 + 445, SE024);
SE025 = playSeVer2( spep_0 + 445, 1472, "",spep_0 + 476, 0, 10, -1);
SE026 = playSeVer2( spep_0 + 450, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 450, SE026, 68 );
SE027 = playSeVer2( spep_0 + 464, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 464, SE027, 75 );
stopSeIfDoubleSpeed( spep_0 + 464, SE027);
SE028 = playSeVer2( spep_0 + 470, 1472, "",spep_0 + 504, 0, 12, -1);
SE029 = playSeVer2( spep_0 + 479, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 479, SE029, 55 );
SE030 = playSeVer2( spep_0 + 494, 1472, "",spep_0 + 531, 0, 16, -1);
SE031 = playSeVer2( spep_0 + 495, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 495, SE031, 64 );
setPitch( spep_0 + 495, SE031, 100 );
setTimeStretch( SE031, 1.07, 30, 4 );
SE032 = playSeVer2( spep_0 + 509, 1472, "",spep_0 + 537, 0, 8, -1);
SE033 = playSeVer2( spep_0 + 511, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 511, SE033, 61 );
SE034 = playSeVer2( spep_0 + 527, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 527, SE034, 71 );
SE035 = playSeVer2( spep_0 + 527, 1472, "",spep_0 + 556, 0, 12, -1);
--画面遷移
SE036 = playSeVer2( spep_0 + 523, 8, "", 0, 0, 0, -1);
--環境音
SE037 = playSeVer2( spep_0 + 539, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 539, SE037, 25 );
--ラスト決め
SE038 = playSeVer2( spep_0 + 607, 1369, "", 0, 0, 0, -1);

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); -- 702f

else end