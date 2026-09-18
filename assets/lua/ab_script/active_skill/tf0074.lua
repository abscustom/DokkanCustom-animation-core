--1030480:LR_超サイヤ人ベジータ(天使)+超サイヤ人孫悟空(天使)_アクティブ合体
--battle_301311
--tf0074

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;


--エフェクト(味方)
SP_01 = 3256;  --アクティブ合体演出 ef_001

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
-- 味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- アクティブ合体演出
-------------------------------------------------
MAX_FRAME_0 = 1226;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 374, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--悟空腕回す
SE002 = playSeVer2( spep_0 + 2, 1004, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 2, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 62 );

--ベジータ踏み出す
SE004 = playSeVer2( spep_0 + 74, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE004, 141 );
SE005 = playSeVer2( spep_0 + 74, 1192, "",spep_0 + 100, 0, 8, -1);
SE006 = playSeVer2( spep_0 + 100, 1301, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 106, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE007, 141 );

--二人歩み寄る
SE008 = playSeVer2( spep_0 + 122, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE008, 129 );
SE009 = playSeVer2( spep_0 + 122, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE009, 127 );
SE010 = playSeVer2( spep_0 + 132, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE010, 130 );
SE011 = playSeVer2( spep_0 + 132, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE011, 148 );
SE012 = playSeVer2( spep_0 + 142, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE012, 140 );
SE013 = playSeVer2( spep_0 + 144, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE013, 158 );
SE014 = playSeVer2( spep_0 + 150, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE014, 160 );
SE015 = playSeVer2( spep_0 + 152, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE015, 130 );

--足を上げる
SE016 = playSeVer2( spep_0 + 186, 1189, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 186, 1003, "", 0, 0, 0, -1);

--二人体を寄せる
SE018 = playSeVer2( spep_0 + 218, 1004, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 218, 1117, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 248, 1004, "", 0, 0, 0, -1);

--指合わせる
SE021 = playSeVer2( spep_0 + 298, 1233, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 298, SE021, 72 );
setStartTimeMs( SE021,  167 );
SE022 = playSeVer2( spep_0 + 294, 1189, "", 0, 0, 0, -1);

--手光る
SE023 = playSeVer2( spep_0 + 328, 1145, "",spep_0 + 412, 10, 32, -1);
setStartTimeMs( SE023,  400 );
setPitch( spep_0 + 328, SE023, 500 );
setTimeStretch( SE023, 1.33, 30, 4 );
SE024 = playSeVer2( spep_0 + 330, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE024, 101 );
setPitch( spep_0 + 330, SE024, 200 );
setTimeStretch( SE024, 1.13, 30, 4 );
SE025 = playSeVer2( spep_0 + 330, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE025, 130 );
setPitch( spep_0 + 330, SE025, 300 );
setTimeStretch( SE025, 1.2, 30, 4 );

--光溢れる
SE026 = playSeVer2( spep_0 + 374, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 374, SE026, 150 );
setTimeStretch( SE026, 1.14, 30, 4 );
SE027 = playSeVer2( spep_0 + 378, 1311, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 378, SE027, 134 );
setTimeStretch( SE027, 1.14, 30, 4 );
SE028 = playSeVer2( spep_0 + 378, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 378, SE028, 127 );
setTimeStretch( SE028, 1.14, 30, 4 );
SE029 = playSeVer2( spep_0 + 378, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 378, SE029, 134 );
setTimeStretch( SE029, 1.14, 30, 4 );

--宇宙で光溢れる
SE030 = playSeVer2( spep_0 + 472, 1437, "",spep_0 + 780, 0, 112, -1);
setSeVolumeByWorkId( spep_0 + 472, SE030, 75 );
SE034 = playSeVer2( spep_0 + 518, 1175, "",spep_0 + 798, 0, 78, -1);
setSeVolumeByWorkId( spep_0 + 518, SE034, 54 );
SE035 = playSeVer2( spep_0 + 536, 1305, "",spep_0 + 740, 0, 72, -1);
SE036 = playSeVer2( spep_0 + 616, 1289, "", 0, 0, 0, -1);

--爆発する
SE031 = playSeVer2( spep_0 + 484, 1284, "",spep_0 + 694, 0, 62, -1);
SE032 = playSeVer2( spep_0 + 484, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 484, SE032, 126 );
SE033 = playSeVer2( spep_0 + 484, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 484, SE033, 79 );

--風強まる
SE037 = playSeVer2( spep_0 + 710, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 710, SE037, 71 );
SE038 = playSeVer2( spep_0 + 710, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 710, SE038, 68 );
SE040 = playSeVer2( spep_0 + 750, 1427, "", 0, 0, 0, -1);

--オーラ
SE039 = playSeVer2( spep_0 + 710, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 710, SE039, 60 );
SE041 = playSeVer2( spep_0 + 786, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 786, SE041, 79 );
SE042 = playSeVer2( spep_0 + 810, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 810, SE042, 79 );
SE043 = playSeVer2( spep_0 + 834, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 834, SE043, 79 );
SE046 = playSeVer2( spep_0 + 858, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 858, SE046, 79 );
SE047 = playSeVer2( spep_0 + 870, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 870, SE047, 59 );
SE048 = playSeVer2( spep_0 + 882, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 882, SE048, 63 );
SE050 = playSeVer2( spep_0 + 906, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 906, SE050, 63 );
SE051 = playSeVer2( spep_0 + 930, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 930, SE051, 63 );
SE052 = playSeVer2( spep_0 + 954, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 954, SE052, 63 );
SE054 = playSeVer2( spep_0 + 978, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 978, SE054, 63 );
SE055 = playSeVer2( spep_0 + 1002, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1002, SE055, 63 );
SE056 = playSeVer2( spep_0 + 1026, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1026, SE056, 63 );
SE057 = playSeVer2( spep_0 + 1050, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1050, SE057, 63 );
SE060 = playSeVer2( spep_0 + 1074, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1074, SE060, 63 );
SE061 = playSeVer2( spep_0 + 1098, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1098, SE061, 63 );
SE062 = playSeVer2( spep_0 + 1122, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1122, SE062, 63 );
SE063 = playSeVer2( spep_0 + 1146, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1146, SE063, 63 );
SE064 = playSeVer2( spep_0 + 1170, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1170, SE064, 63 );
SE065 = playSeVer2( spep_0 + 1194, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1194, SE065, 63 );

---風圧
SE044 = playSeVer2( spep_0 + 840, 1258, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 850, 1024, "", 0, 0, 0, -1);

--セリフカットイン
SE049 = playSeVer2( spep_0 + 892, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 892, SE049, 63 );

--腕おろす
SE053 = playSeVer2( spep_0 + 958, 1004, "", 0, 0, 0, -1);

--最後決め
SE058 = playSeVer2( spep_0 + 1060, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1060, SE058, 145 );
SE059 = playSeVer2( spep_0 + 1060, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1060, SE059, 78 );

-- ** ボイス ** --
--「フュー…ジョン！！」
playVoice( spep_0 + 108, 924 );
setVoiceVolume( spep_0 + 108, 924, 124 );

--「はっ！！」
playVoice( spep_0 + 236, 925 );
setVoiceVolume( spep_0 + 236, 925, 124 );

--「オレは悟空でもベジータでもない…」
playVoice( spep_0 + 902, 926 );
setVoiceVolume( spep_0 + 902, 926, 124 );

--「オレはキサマを倒すものだ！！」
playVoice( spep_0 + 1066, 927 );
setVoiceVolume( spep_0 + 1066, 927, 124 );

-- ** 終了 ** --
endPhase( spep_0 + MAX_FRAME_0 );  -- 1226f

else end