--1030390:LR_超サイヤ人2孫悟飯(少年期)_登場時演出
--sp_effect_a9_00140
--pse0072

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 163555;  -- 登場演出 ef_001

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

MAX_FRAME_0 = 1876;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場時演出（ef_001）
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
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 1396, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 42, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE002, 63 );

--セルの足音
SE003 = playSeVer2( spep_0 + 786, 1135, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 828, 1135, "", 0, 0, 0, -1);

--16号踏みつける
SE005 = playSeVer2( spep_0 + 874, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 874, SE005, 79 );
SE006 = playSeVer2( spep_0 + 874, 1384, "",spep_0 + 1088, 0, 136, -1);
setSeVolumeByWorkId( spep_0 + 874, SE006, 68 );
SE007 = playSeVer2( spep_0 + 880, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 880, SE007, 68 );

--集中線
SE008 = playSeVer2( spep_0 + 1020, 1237, "", 0, 2, 0, -1);
setStartTimeMs( SE008,  133 );
SE009 = playSeVer2( spep_0 + 1022, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1022, SE009, 71 );

--フラッシュバック音
SE010 = playSeVer2( spep_0 + 1094, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1094, SE010, 94 );
setTimeStretch( SE010, 1.65, 30, 4 );
SE011 = playSeVer2( spep_0 + 1094, 1136, "",spep_0 + 1214, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 1094, SE011, 68 );
setPitch( spep_0 + 1094, SE011, 200 );
setTimeStretch( SE011, 1.13, 30, 4 );

--覚醒音
SE021 = playSeVer2( spep_0 + 1200, 1475, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1200, SE021, 158 );

--環境音
SE022 = playSeVer2( spep_0 + 1200, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1200, SE022, 62 );

--画面遷移
SE023 = playSeVer2( spep_0 + 1200, 8, "", 0, 0, 0, -1);

--環境音
SE024 = playSeVer2( spep_0 + 1202, 1226, "",spep_0 + 1596, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 1202, SE024, 65 );

--気が高まる
SE025 = playSeVer2( spep_0 + 1286, 1024, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 1298, 1035, "", 0, 0, 0, -1);

--大猿咆哮
SE027 = playSeVer2( spep_0 + 1304, 1125, "",spep_0 + 1602, 0, 116, -1);
setSeVolumeByWorkId( spep_0 + 1304, SE027, 119 );

--上から見下ろす
SE028 = playSeVer2( spep_0 + 1380, 1258, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 1384, 1044, "",spep_0 + 1562, 0, 36, -1);

--オーラ
SE030 = playSeVer2( spep_0 + 1538, 1036, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 1538, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1538, SE031, 82 );

--画面遷移
SE032 = playSeVer2( spep_0 + 1536, 8, "", 0, 0, 0, -1);

--オーラ
SE033 = playSeVer2( spep_0 + 1560, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE034 = playSeVer2( spep_0 + 1560, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1560, SE034, 65 );

--オーラ
SE035 = playSeVer2( spep_0 + 1586, 1036, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 1610, 1036, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 1634, 1036, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 1658, 1036, "", 0, 0, 0, -1);

--ラスト決め
SE039 = playSeVer2( spep_0 + 1668, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1668, SE039, 63 );
SE040 = playSeVer2( spep_0 + 1668, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1668, SE040, 82 );

--オーラ
SE041 = playSeVer2( spep_0 + 1680, 1036, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 1704, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1704, SE042, 79 );
SE043 = playSeVer2( spep_0 + 1728, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1728, SE043, 79 );
SE044 = playSeVer2( spep_0 + 1752, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1752, SE044, 79 );
SE045 = playSeVer2( spep_0 + 1776, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1776, SE045, 79 );

--イナヅマ
SE046 = playSeVer2( spep_0 + 1776, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1776, SE046, 66 );

--オーラ
SE047 = playSeVer2( spep_0 + 1800, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1800, SE047, 79 );
SE048 = playSeVer2( spep_0 + 1824, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1824, SE048, 79 );
SE049 = playSeVer2( spep_0 + 1848, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1848, SE049, 79 );


-- ** ボイス ** --
--「オ……オレのスキだった自然や動物たちを…… ま…… 守ってやってくれ…… 頼んだぞ……」
playVoice( spep_0 + 54, 932 );
setVoiceVolume( spep_0 + 56, 932, 124 );

--「うぉああああーーっ！！！！！」
playVoice( spep_0 + 1286, 933 );
setVoiceVolume( spep_0 + 1288, 933, 124 );

--「もうゆるさないぞ、おまえたち…………」
playVoice( spep_0 + 1672, 934 );
setVoiceVolume( spep_0 + 1674, 934, 154 );


-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1876f

else end