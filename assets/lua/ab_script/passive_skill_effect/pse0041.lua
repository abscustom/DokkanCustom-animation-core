--1028060：LR_超サイヤ人孫悟空&超サイヤ人ベジータ&超サイヤ人トランクス(青年期)_登場時演出
--battle_301273
--pse0041

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3210;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 1100;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出 ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 音 ** --
--崖崩れて光立ち上る
SE001 = playSeVer2( spep_0 + 0, 1336, "",spep_0 + 208, 2, 100, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 68 );
setStartTimeMs( SE001,  1533 );
SE002 = playSeVer2( spep_0 + 0, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 59 );
SE003 = playSeVer2( spep_0 + 0, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 54 );
SE004 = playSeVer2( spep_0 + 0, 1215, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 63 );
SE005 = playSeVer2( spep_0 + 6, 1067, "", 0, 0, 0, -1);
--環境音
SE006 = playSeVer2( spep_0 + 36, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE006, 40 );
--ベジータ気ダメ前予兆
SE007 = playSeVer2( spep_0 + 238, 1148, "",spep_0 + 296, 0, 22, -1);
SE008 = playSeVer2( spep_0 + 238, 1116, "",spep_0 + 296, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 238, SE008, 81 );
--セリフカットイン	
SE009 = playSeVer2( spep_0 + 244, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE009, 63 );
--ベジータ気ダメ
SE010 = playSeVer2( spep_0 + 268, 1035, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 268, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE011, 81 );
--オーラ
SE012 = playSeVer2( spep_0 + 280, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE012, 71 );
SE013 = playSeVer2( spep_0 + 304, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE013, 71 );
SE014 = playSeVer2( spep_0 + 328, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE014, 71 );
SE015 = playSeVer2( spep_0 + 352, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE015, 40 );
SE017 = playSeVer2( spep_0 + 376, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE017, 40 );
SE018 = playSeVer2( spep_0 + 400, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE018, 40 );
SE025 = playSeVer2( spep_0 + 510, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 510, SE025, 71 );
SE026 = playSeVer2( spep_0 + 534, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 534, SE026, 71 );
SE027 = playSeVer2( spep_0 + 558, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 558, SE027, 71 );
SE028 = playSeVer2( spep_0 + 582, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 582, SE028, 71 );
SE029 = playSeVer2( spep_0 + 606, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 606, SE029, 71 );
SE034 = playSeVer2( spep_0 + 696, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 696, SE034, 71 );
SE035 = playSeVer2( spep_0 + 720, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 720, SE035, 71 );
SE036 = playSeVer2( spep_0 + 744, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 744, SE036, 71 );
SE037 = playSeVer2( spep_0 + 768, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 768, SE037, 71 );
--画面遷移
SE016 = playSeVer2( spep_0 + 360, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE016, 58 );
--トランクス飛び上がる
SE019 = playSeVer2( spep_0 + 424, 63, "",spep_0 + 502, 0, 28, -1);
SE020 = playSeVer2( spep_0 + 424, 1207, "",spep_0 + 488, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 424, SE020, 54 );
SE021 = playSeVer2( spep_0 + 432, 44, "", 0, 0, 0, -1);
--トランクス気ダメ	
SE022 = playSeVer2( spep_0 + 484, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 484, SE022, 79 );
SE023 = playSeVer2( spep_0 + 492, 1014, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 492, 1035, "", 0, 0, 0, -1);
--画面遷移
SE030 = playSeVer2( spep_0 + 626, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 626, SE030, 76 );
--悟空気ダメ前予兆	
SE031 = playSeVer2( spep_0 + 656, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 656, SE031, 67 );
SE032 = playSeVer2( spep_0 + 656, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 656, SE032, 36 );
SE033 = playSeVer2( spep_0 + 676, 1035, "", 0, 0, 0, -1);
--気を爆発させる
SE038 = playSeVer2( spep_0 + 766, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 766, SE038, 80 );
SE039 = playSeVer2( spep_0 + 766, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 766, SE039, 80 );
SE041 = playSeVer2( spep_0 + 778, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 778, SE041, 80 );
--オーラ
SE042 = playSeVer2( spep_0 + 810, 1036, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 834, 1036, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 858, 1036, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 882, 1036, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 906, 1036, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 930, 1036, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_0 + 954, 1036, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 978, 1036, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_0 + 1002, 1036, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 1026, 1036, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_0 + 1050, 1036, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_0 + 1074, 1036, "", 0, 0, 0, -1);
--光あふれる
SE040 = playSeVer2( spep_0 + 858, 1371, "", 0, 16, 0, -1);
setStartTimeMs( SE040,  1500 );
setPitch( spep_0 + 858, SE040, 600 );
setTimeStretch( SE040, 1.4, 30, 4 );
SE044 = playSeVer2( spep_0 + 858, 1303, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_0 + 858, SE044, 53 );
setStartTimeMs( SE044,  133 );
--岩崩れる
SE049 = playSeVer2( spep_0 + 932, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 932, SE049, 62 );
SE050 = playSeVer2( spep_0 + 932, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 932, SE050, 54 );
SE052 = playSeVer2( spep_0 + 932, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 932, SE052, 64 );

-- ** ボイス ** --
--ベジータ「はああーーっ！！」
playVoice( spep_0 + 247, 731 );
setVoiceVolume( spep_0 + 247, 731, 126 );

--トランクス「はああああっ！！」	
playVoice( spep_0 + 472, 732 );
setVoiceVolume( spep_0 + 472, 732, 126 );

--孫悟空「はああ……」
playVoice( spep_0 + 645, 733 );
setVoiceVolume( spep_0 + 645, 733, 126 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1100

else end
