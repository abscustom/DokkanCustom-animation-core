--1029730:UR_スラッグ_登場時演出
--battle_301302
--pse0065

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3242;  -- 登場時演出ef_001


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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 登場時演出
-------------------------------------------------
MAX_FRAME_0 = 1058;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 1229, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1349, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--マントなびく
SE003 = playSeVer2( spep_0 + 196, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE003, 79 );

--セリフカットイン
SE004 = playSeVer2( spep_0 + 202, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE004, 63 );
--マントなびく
SE005 = playSeVer2( spep_0 + 254, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE005, 78 );
SE006 = playSeVer2( spep_0 + 286, 1332, "", 0, 0, 0, -1);
setPitch( spep_0 + 286, SE006, -400 );
setTimeStretch( SE006, 0.73, 30, 4 );
SE007 = playSeVer2( spep_0 + 316, 1333, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE007, 71 );
SE008 = playSeVer2( spep_0 + 372, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 372, SE008, 63 );

--若返る
SE009 = playSeVer2( spep_0 + 424, 1227, "",spep_0 + 684, 0, 72, -1);
SE010 = playSeVer2( spep_0 + 424, 1265, "",spep_0 + 684, 0, 74, -1);
SE011 = playSeVer2( spep_0 + 466, 1271, "",spep_0 + 604, 0, 58, -1);

--神龍光る
SE012 = playSeVer2( spep_0 + 558, 1022, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 558, 1231, "", 0, 0, 0, -1);

--ドラゴンボールはじける
SE014 = playSeVer2( spep_0 + 634, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 634, SE014, 59 );
SE015 = playSeVer2( spep_0 + 634, 1026, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 634, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 634, SE016, 76 );

--暗雲広がる
SE017 = playSeVer2( spep_0 + 812, 1266, "", 0, 32, 0, -1);
setStartTimeMs( SE017,  833 );

--衛星起動
SE018 = playSeVer2( spep_0 + 782, 91, "",spep_0 + 836, 20, 14, -1);
setSeVolumeByWorkId( spep_0 + 782, SE018, 79 );

--暗雲広がる
SE019 = playSeVer2( spep_0 + 808, 1219, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_0 + 808, SE019, 188 );
setStartTimeMs( SE019,  267 );

--衛星起動
SE020 = playSeVer2( spep_0 + 802, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 802, SE020, 132 );
SE021 = playSeVer2( spep_0 + 802, 22, "", 0, 0, 0, -1);

--暗雲広がる
SE022 = playSeVer2( spep_0 + 816, 1214, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 816, 1311, "", 0, 0, 0, -1);
setTimeStretch( SE023, 1.66, 30, 4 );
SE024 = playSeVer2( spep_0 + 932, 1295, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「さあ願いをいえ」
playVoice( spep_0 + 0, 869 );
setVoiceVolume( spep_0 + 0, 869, 110 );

--「このわしに永遠の若さをくだされー！」
playVoice( spep_0 + 202, 870 );
setVoiceVolume( spep_0 + 206, 870, 110 );

--「地球改造を急がせろ！」
playVoice( spep_0 + 642, 872 );
setVoiceVolume( spep_0 + 646, 872, 110 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0 -0); -- 1058F

end
