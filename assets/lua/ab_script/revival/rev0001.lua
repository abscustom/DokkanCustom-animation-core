--1033820:UR_超サイヤ人ゴッド孫悟空_復活演出
--battle_301353
--rev0001

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3304;  -- 復活演出 ef_001

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

setupMovie(0 , SP_01, 0, 1);

MAX_FRAME_0 = 1022;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 復活演出（ef_001）
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
--悟空やられる
SE001 = playSeVer2( spep_0 + 0, 1315, "", spep_0 + 235, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 285 );
setStartTimeMs( SE001,  4850 );
SE002 = playSeVer2( spep_0 + 0, 1268, "",spep_0 + 159, 0, 139, -1);		
SE003 = playSeVer2( spep_0 + 0, 1288, "",spep_0 + 236, 0, 163, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );	
SE004 = playSeVer2( spep_0 + 0, 1173, "", 0, 0, 0, -1);		
SE005 = playSeVer2( spep_0 + 11, 1381, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 11, SE005, 72 );

--目にズーム
SE006 = playSeVer2( spep_0 + 86, 1072, "",spep_0 + 146, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 86, SE006, 69 );
setTimeStretch( SE006, 1.67, 30, 4 );
SE007 = playSeVer2( spep_0 + 137, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 137, SE007, 62 );

--味方のセリフ中背景
SE008 = playSeVer2( spep_0 + 145, 1308, "",spep_0 + 379, 79, 70, -1);
setSeVolumeByWorkId( spep_0 + 145, SE008, 48 );

--セリフカットイン
SE009 = playSeVer2( spep_0 + 226, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE009, 63 );

--気が集まる
SE010 = playSeVer2( spep_0 + 534, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 534, SE010, 52 );
SE011 = playSeVer2( spep_0 + 534, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 534, SE011, 56 );
SE012 = playSeVer2( spep_0 + 540, 1511, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 540, SE012, 65 );
SE013 = playSeVer2( spep_0 + 540, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 540, SE013, 63 );
SE014 = playSeVer2( spep_0 + 559, 1265, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 559, SE014, 52 );

--気ダメ
SE015 = playSeVer2( spep_0 + 762, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 762, SE015, 140 );
SE016 = playSeVer2( spep_0 + 762, 1503, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 768, 1504, "", 0, 0, 0, -1);

--オーラ
SE017 = playSeVer2( spep_0 + 763, 1477, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 763, SE017, 38 );
setTimeStretch( SE017, 2, 30, 4 );
SE018 = playSeVer2( spep_0 + 763, 1176, "",spep_0 + 1051, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 763, SE018, 65 );
SE020 = playSeVer2( spep_0 + 768, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 768, SE020, 52 );
SE021 = playSeVer2( spep_0 + 976, 1052, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 976, SE021, 86 );

-- ** ボイス ** --
--「悟空さ！！」
playVoice( spep_0 + 199, 1202 );
setVoiceVolume( spep_0 + 199, 1202, 100 );

--「悟空ーーっ！！」
playVoice( spep_0 + 287, 1203 );
setVoiceVolume( spep_0 + 287, 1203, 100 );

--「うおおおおーーーっ！！！！」
playVoice( spep_0 + 685, 1207 );
setVoiceVolume( spep_0 + 685, 1207, 100 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1022F

else end
