--1033590:LR_超サイヤ人ゴッドベジータ(超極悪化)_アクティブ変身
--sp_effect_a1_00536
--tf0086

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- エフェクト(味方)
SP_01 = 164475; -- ef_001 正面構え口上から結晶砕け散ってゴッドに変身

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
-- アクティブバフ演出
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 正面構え口上から結晶砕け散ってゴッドに変身
-------------------------------------------------

MAX_FRAME_0 = 1048;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001 正面構え口上から結晶砕け散ってゴッドに変身
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
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 242, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE002 = playSeVer2( spep_0 + 0, 1513, "",spep_0 + 230, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 65 );

--目と口光る
SE003 = playSeVer2( spep_0 + 158, 1215, "",spep_0 + 362, 34, 104, -1);
setStartTimeMs( SE003,  567 );
SE004 = playSeVer2( spep_0 + 158, 1275, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 158, 1271, "",spep_0 + 346, 0, 58, -1);
SE006 = playSeVer2( spep_0 + 158, 1270, "", 0, 0, 0, -1);
--SE007 = playSeVer2( spep_0 + 228, 1381, "", 0, 0, 0, -1);


--結晶割れる
SE009 = playSeVer2( spep_0 + 290, 1041, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 312, 1054, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 314, 1384, "",spep_0 + 526, 6, 160, -1);
setStartTimeMs( SE008,  667 );

--水紋広がる
SE011 = playSeVer2( spep_0 + 422, 1473, "",spep_0 + 496, 4, 10, -1);
setStartTimeMs( SE011,  333 );
SE012 = playSeVer2( spep_0 + 422, 1221, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 426, 1510, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 426, SE013, 178 );
SE014 = playSeVer2( spep_0 + 426, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 426, SE014, 41 );	
setPitch( spep_0 + 426, SE014, -700 );
setTimeStretch( SE014, 0.53, 30, 4 );

--気が高まっていく
SE015 = playSeVer2( spep_0 + 446, 1356, "",spep_0 + 674, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 446, SE015, 71 );
SE016 = playSeVer2( spep_0 + 516, 1176, "",spep_0 + 668, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 516, SE016, 58 );

--目線カットイン
SE017 = playSeVer2( spep_0 + 524, 1018, "", 0, 0, 0, -1);

--気が爆発する
SE018 = playSeVer2( spep_0 + 610, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 610, SE018, 63 );
SE019 = playSeVer2( spep_0 + 620, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 620, SE019, 135 );
SE020 = playSeVer2( spep_0 + 620, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 620, SE020, 84 );

--オーラ
SE021 = playSeVer2( spep_0 + 636, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 636, SE021, 56 );
SE022 = playSeVer2( spep_0 + 636, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 636, SE022, 50 );
SE023 = playSeVer2( spep_0 + 660, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 660, SE023, 50 );
SE024 = playSeVer2( spep_0 + 684, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 684, SE024, 50 );
SE025 = playSeVer2( spep_0 + 708, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 708, SE025, 50 );
SE026 = playSeVer2( spep_0 + 732, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 732, SE026, 50 );
SE027 = playSeVer2( spep_0 + 756, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 756, SE027, 50 );
SE028 = playSeVer2( spep_0 + 780, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 780, SE028, 50 );
SE029 = playSeVer2( spep_0 + 804, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 804, SE029, 50 );
SE030 = playSeVer2( spep_0 + 828, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 828, SE030, 50 );
SE031 = playSeVer2( spep_0 + 852, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 852, SE031, 50 );
SE032 = playSeVer2( spep_0 + 876, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 876, SE032, 50 );
SE033 = playSeVer2( spep_0 + 900, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 900, SE033, 50 );
SE034 = playSeVer2( spep_0 + 924, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 924, SE034, 50 );
SE036 = playSeVer2( spep_0 + 948, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 948, SE036, 50 );
SE040 = playSeVer2( spep_0 + 972, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 972, SE040, 50 );
SE041 = playSeVer2( spep_0 + 996, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 996, SE041, 50 );
SE042 = playSeVer2( spep_0 + 1020, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1020, SE042, 50 );
SE043 = playSeVer2( spep_0 + 1044, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1044, SE043, 50 );

--構える
SE035 = playSeVer2( spep_0 + 942, 1189, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 944, 1233, "", 0, 0, 0, -1);

--ラスト決め
SE038 = playSeVer2( spep_0 + 950, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 950, SE038, 75 );
SE039 = playSeVer2( spep_0 + 950, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 950, SE039, 78 );


-- ** ボイス ** --
--「オレ以外の力など必要ない！」
playVoice( spep_0 + 0, 1193 );
setVoiceVolume( spep_0 + 0, 1193, 128 );

--「はあああああああ！」
playVoice( spep_0 + 604, 1194 );
setVoiceVolume( spep_0 + 604, 1194, 128 );

--「仕切り直しだ」
playVoice( spep_0 + 898, 1195 );
setVoiceVolume( spep_0 + 898, 1195, 128 );


-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0);    -- 1048f

else end