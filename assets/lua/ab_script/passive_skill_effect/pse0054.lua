--1029000:UR_クリリン_登場時演出
--battle_301292
--pse0054

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3231;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 630;

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

-- ** 白フェード ** --
entryFade( spep_0 + 458, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--帯しめる
SE002 = playSeVer2( spep_0 + 30, 1333, "",spep_0 + 60, 6, 12, -1);
setStartTimeMs( SE002,  400 );
SE003 = playSeVer2( spep_0 + 34, 1189, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 44, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE004, 52 );

--画面遷移
SE005 = playSeVer2( spep_0 + 106, 1048, "", 0, 0, 0, -1);

--髪をそる
SE006 = playSeVer2( spep_0 + 198, 1464, "",spep_0 + 342, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 198, SE006, 200 );

--画面遷移
SE007 = playSeVer2( spep_0 + 318, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE007, 79 );

--気を高める
SE008 = playSeVer2( spep_0 + 380, 1035, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 380, 1036, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 404, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 428, 1036, "", 0, 0, 0, -1);

--飛び立つ
SE012 = playSeVer2( spep_0 + 446, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 446, SE012, 50 );
SE013 = playSeVer2( spep_0 + 446, 1182, "", 0, 0, 0, -1);

--気を高める
SE014 = playSeVer2( spep_0 + 448, 1036, "", 0, 0, 0, -1);

--飛び立つ
SE015 = playSeVer2( spep_0 + 456, 44, "", 0, 0, 0, -1);

--加速する
SE016 = playSeVer2( spep_0 + 498, 1182, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 498, 1011, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 506, 1117, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 506, 1019, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 510, 1277, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 570, 1019, "", 0, 0, 0, -1);

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --630

else end
