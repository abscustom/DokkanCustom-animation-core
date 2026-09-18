--1032880:LR_超サイヤ人4べジータ+超サイヤ人4孫悟空_合流演出
--battle_301350
--pse0111

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3302;  -- 合流演出 ef_001


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

setupMovie(0 , SP_01, 0, 1);
-------------------------------------------------
-- 合流演出
-------------------------------------------------
MAX_FRAME_0 = 1136;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 合流演出(ef_001)
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

--爆発
SE001 = playSeVer2( spep_0 + 0, 1188, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1173, "",spep_0 + 124, 0, 52, -1);
SE003 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 468, 0, 114, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 56 );
SE004 = playSeVer2( spep_0 + 0, 1396, "",spep_0 + 468, 0, 114, -1);

--オーラ
SE005 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE005, 63 );
setPitch( spep_0 + 0, SE005, -1200 );
setTimeStretch( SE005, 0.2, 30, 4 );
SE006 = playSeVer2( spep_0 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE006, 63 );
setPitch( spep_0 + 14, SE006, -1200 );
setTimeStretch( SE006, 0.2, 30, 4 );
SE007 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE007, 63 );
setPitch( spep_0 + 38, SE007, -1200 );
setTimeStretch( SE007, 0.2, 30, 4 );
SE008 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE008, 63 );
setPitch( spep_0 + 62, SE008, -1200 );
setTimeStretch( SE008, 0.2, 30, 4 );
SE009 = playSeVer2( spep_0 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE009, 63 );
setPitch( spep_0 + 86, SE009, -1200 );
setTimeStretch( SE009, 0.2, 30, 4 );
SE010 = playSeVer2( spep_0 + 110, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE010, 63 );
setPitch( spep_0 + 110, SE010, -1200 );
setTimeStretch( SE010, 0.2, 30, 4 );
SE011 = playSeVer2( spep_0 + 134, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE011, 63 );
setPitch( spep_0 + 134, SE011, -1200 );
setTimeStretch( SE011, 0.2, 30, 4 );

--歩いてくる
SE012 = playSeVer2( spep_0 + 152, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE012, 158 );

--オーラ
SE013 = playSeVer2( spep_0 + 158, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE013, 63 );
setPitch( spep_0 + 158, SE013, -1200 );
setTimeStretch( SE013, 0.2, 30, 4 );

--歩いてくる
SE014 = playSeVer2( spep_0 + 178, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE014, 158 );

--オーラ
SE015 = playSeVer2( spep_0 + 182, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE015, 63 );
setPitch( spep_0 + 182, SE015, -1200 );
setTimeStretch( SE015, 0.2, 30, 4 );

--歩いてくる
SE016 = playSeVer2( spep_0 + 184, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 184, SE016, 158 );

--オーラ
SE017 = playSeVer2( spep_0 + 206, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE017, 63 );
setPitch( spep_0 + 206, SE017, -1200 );
setTimeStretch( SE017, 0.2, 30, 4 );

--歩いてくる
SE018 = playSeVer2( spep_0 + 206, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE018, 158 );
SE019 = playSeVer2( spep_0 + 210, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE019, 158 );

--オーラ
SE020 = playSeVer2( spep_0 + 230, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 230, SE020, 63 );
setPitch( spep_0 + 230, SE020, -1200 );
setTimeStretch( SE020, 0.2, 30, 4 );

--歩いてくる
SE021 = playSeVer2( spep_0 + 230, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 230, SE021, 158 );

--オーラ
SE022 = playSeVer2( spep_0 + 254, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE022, 63 );
setPitch( spep_0 + 254, SE022, -1200 );
setTimeStretch( SE022, 0.2, 30, 4 );

--歩いてくる
SE023 = playSeVer2( spep_0 + 254, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE023, 158 );
SE024 = playSeVer2( spep_0 + 260, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE024, 158 );

--オーラ
SE025 = playSeVer2( spep_0 + 278, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 278, SE025, 63 );
setPitch( spep_0 + 278, SE025, -1200 );
setTimeStretch( SE025, 0.2, 30, 4 );

--歩いてくる
SE026 = playSeVer2( spep_0 + 282, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 282, SE026, 158 );
SE027 = playSeVer2( spep_0 + 290, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 290, SE027, 158 );
SE028 = playSeVer2( spep_0 + 296, 1192, "",spep_0 + 318, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 296, SE028, 158 );

--オーラ
SE029 = playSeVer2( spep_0 + 302, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 302, SE029, 63 );
setPitch( spep_0 + 302, SE029, -1200 );
setTimeStretch( SE029, 0.2, 30, 4 );
SE030 = playSeVer2( spep_0 + 326, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE030, 63 );
setPitch( spep_0 + 326, SE030, -1200 );
setTimeStretch( SE030, 0.2, 30, 4 );
SE031 = playSeVer2( spep_0 + 350, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 350, SE031, 40 );
setPitch( spep_0 + 350, SE031, -1200 );
setTimeStretch( SE031, 0.2, 30, 4 );
SE032 = playSeVer2( spep_0 + 374, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 374, SE032, 25 );
setPitch( spep_0 + 374, SE032, -1200 );
setTimeStretch( SE032, 0.2, 30, 4 );

--環境音
SE033 = playSeVer2( spep_0 + 374, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 374, SE033, 25 );

--画面遷移
SE034 = playSeVer2( spep_0 + 392, 8, "", 0, 0, 0, -1);

--オーラ
SE035 = playSeVer2( spep_0 + 398, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 398, SE035, 13 );
setPitch( spep_0 + 398, SE035, -1200 );
setTimeStretch( SE035, 0.2, 30, 4 );

--セリフカットイン
SE036 = playSeVer2( spep_0 + 446, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 446, SE036, 63 );

--構える
SE037 = playSeVer2( spep_0 + 710, 1189, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 720, 1006, "", 0, 0, 0, -1);

--首ならす
SE039 = playSeVer2( spep_0 + 830, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 830, SE039, 50 );
setPitch( spep_0 + 830, SE039, 500 );
setTimeStretch( SE039, 1.33, 30, 4 );
SE040 = playSeVer2( spep_0 + 876, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 876, SE040, 56 );

--構える
SE041 = playSeVer2( spep_0 + 932, 1003, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 946, 1233, "", 0, 0, 0, -1);

--画面遷移
SE043 = playSeVer2( spep_0 + 1008, 1072, "", 0, 0, 0, -1);

--気ダメ
SE044 = playSeVer2( spep_0 + 1044, 1503, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 1044, 1035, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 1044, 1504, "", 0, 0, 0, -1);

--風圧
SE047 = playSeVer2( spep_0 + 1044, 1427, "", 0, 0, 0, -1);

--気ダメ
SE048 = playSeVer2( spep_0 + 1052, 1188, "", 0, 0, 0, -1);

--オーラ
SE049 = playSeVer2( spep_0 + 1056, 1036, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 1080, 1036, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_0 + 1104, 1036, "", 0, 0, 0, -1);

-- ** ボイス ** --

--「オレたちが負けるわけねえ！」
playVoice( spep_0 + 446, 1143 );
setVoiceVolume( spep_0 + 446, 1143, 100 );

--「だってオレたち戦闘民族サイヤ人だろ？」
playVoice( spep_0 + 582, 1144 );
setVoiceVolume( spep_0 + 582, 1144, 100 );

--「ふん！くさいセリフはきやがる...！」
playVoice( spep_0 + 840, 1145 );
setVoiceVolume( spep_0 + 840, 1145, 100 );
-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1136F

end
