--1030660:UR_超サイヤ人孫悟空(ミニ)(DAIMA)_登場時演出
--battle_301312
--pse0073

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3261;  -- 登場時演出 ef_001


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
MAX_FRAME_0 = 1474;

setupMovie( spep_0+0, SP_01, 0, 1 );

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場時演出(ef_001)
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

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--手出す
SE002 = playSeVer2( spep_0 + 6, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 50 );

--オーラ出す
SE003 = playSeVer2( spep_0 + 48, 1265, "",spep_0 + 296, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 48, SE003, 72 );
SE004 = playSeVer2( spep_0 + 48, 1270, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE004, 68 );
SE005 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 25 );
SE006 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE006, 25 );
SE007 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE007, 25 );
SE008 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE008, 25 );
SE009 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE009, 25 );

--手握る
SE010 = playSeVer2( spep_0 + 146, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 146, SE010, 72 );

--セリフカットイン
SE011 = playSeVer2( spep_0 + 160, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE011, 63 );

--オーラ出す
SE012 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE012, 25 );
SE013 = playSeVer2( spep_0 + 192, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE013, 25 );
SE014 = playSeVer2( spep_0 + 216, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE014, 25 );
SE015 = playSeVer2( spep_0 + 240, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE015, 25 );

--画面遷移
SE016 = playSeVer2( spep_0 + 258, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 258, SE016, 54 );

--構える
SE017 = playSeVer2( spep_0 + 294, 1189, "", 0, 0, 0, -1);

--気を溜める
SE018 = playSeVer2( spep_0 + 306, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE018, 38 );
SE019 = playSeVer2( spep_0 + 320, 1356, "", 0, 56, 0, -1);
setSeVolumeByWorkId( spep_0 + 320, SE019, 60 );
SE020 = playSeVer2( spep_0 + 320, 1264, "", 0, 48, 0, -1);
setSeVolumeByWorkId( spep_0 + 320, SE020, 56 );
SE021 = playSeVer2( spep_0 + 320, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 320, SE021, 53 );

--地面ヒビ入る
SE022 = playSeVer2( spep_0 + 474, 1041, "", 0, 0, 0, -1);
setPitch( spep_0 + 474, SE022, -1000 );
setTimeStretch( SE022, 0.33, 30, 4 );
SE023 = playSeVer2( spep_0 + 488, 1041, "", 0, 0, 0, -1);
setPitch( spep_0 + 488, SE023, -1000 );
setTimeStretch( SE023, 0.33, 30, 4 );

--地面割れる
SE024 = playSeVer2( spep_0 + 520, 1061, "", 0, 0, 0, -1);
setPitch( spep_0 + 520, SE024, -1000 );
setTimeStretch( SE024, 0.33, 30, 4 );
SE025 = playSeVer2( spep_0 + 520, 1002, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 520, SE025, 79 );
SE026 = playSeVer2( spep_0 + 546, 1061, "", 0, 0, 0, -1);
setPitch( spep_0 + 546, SE026, -1000 );
setTimeStretch( SE026, 0.33, 30, 4 );
SE027 = playSeVer2( spep_0 + 552, 1014, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 562, 1061, "", 0, 0, 0, -1);
setPitch( spep_0 + 562, SE028, -1000 );
setTimeStretch( SE028, 0.33, 30, 4 );

--気を爆発させる
SE029 = playSeVer2( spep_0 + 626, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 626, SE029, 71 );
SE030 = playSeVer2( spep_0 + 628, 1068, "", 0, 0, 0, -1);

--気を溜める２
SE031 = playSeVer2( spep_0 + 628, 1176, "",spep_0 + 1324, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 628, SE031, 66 );

--オーラ
SE032 = playSeVer2( spep_0 + 630, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 630, SE032, 63 );
SE033 = playSeVer2( spep_0 + 654, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 654, SE033, 63 );
SE034 = playSeVer2( spep_0 + 678, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 678, SE034, 63 );
SE035 = playSeVer2( spep_0 + 702, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 702, SE035, 63 );
SE036 = playSeVer2( spep_0 + 726, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 726, SE036, 63 );
SE037 = playSeVer2( spep_0 + 750, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 750, SE037, 63 );
SE038 = playSeVer2( spep_0 + 774, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 774, SE038, 63 );
SE039 = playSeVer2( spep_0 + 798, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 798, SE039, 63 );

--髪色変わる
SE040 = playSeVer2( spep_0 + 798, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 798, SE040, 84 );

--オーラ
SE041 = playSeVer2( spep_0 + 822, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 822, SE041, 63 );

--気を溜める
SE042 = playSeVer2( spep_0 + 846, 1226, "",spep_0 + 1322, 108, 32, -1);
setSeVolumeByWorkId( spep_0 + 846, SE042, 53 );

--オーラ
SE043 = playSeVer2( spep_0 + 846, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 846, SE043, 63 );
SE044 = playSeVer2( spep_0 + 870, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 870, SE044, 63 );
SE045 = playSeVer2( spep_0 + 894, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 894, SE045, 63 );
SE046 = playSeVer2( spep_0 + 918, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 918, SE046, 63 );
SE047 = playSeVer2( spep_0 + 942, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 942, SE047, 63 );
SE048 = playSeVer2( spep_0 + 966, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 966, SE048, 63 );

--岩持ち上がる
SE049 = playSeVer2( spep_0 + 992, 1168, "",spep_0 + 1166, 42, 98, -1);
setSeVolumeByWorkId( spep_0 + 992, SE049, 77 );
setStartTimeMs( SE049,  67 );

--オーラ
SE050 = playSeVer2( spep_0 + 990, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 990, SE050, 63 );
SE051 = playSeVer2( spep_0 + 1014, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1014, SE051, 63 );
SE052 = playSeVer2( spep_0 + 1038, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1038, SE052, 63 );
SE053 = playSeVer2( spep_0 + 1062, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1062, SE053, 63 );

--目が変わる
SE054 = playSeVer2( spep_0 + 1070, 1303, "",spep_0 + 1160, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 1070, SE054, 60 );

--オーラ
SE055 = playSeVer2( spep_0 + 1086, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1086, SE055, 63 );
SE056 = playSeVer2( spep_0 + 1110, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1110, SE056, 63 );
SE057 = playSeVer2( spep_0 + 1134, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1134, SE057, 63 );
SE058 = playSeVer2( spep_0 + 1158, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1158, SE058, 63 );
SE059 = playSeVer2( spep_0 + 1182, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1182, SE059, 63 );
SE060 = playSeVer2( spep_0 + 1206, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1206, SE060, 63 );
SE061 = playSeVer2( spep_0 + 1230, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1230, SE061, 63 );

--オーラ弾ける
SE062 = playSeVer2( spep_0 + 1372, 1168, "", 0, 16, 0, -1);
setStartTimeMs( SE062,  1933 );
setBandpassFilter( spep_0 + 1372, SE062, 1090, 24000 );

--オーラ
SE063 = playSeVer2( spep_0 + 1254, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1254, SE063, 63 );
SE064 = playSeVer2( spep_0 + 1278, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1278, SE064, 63 );

--オーラ弾ける
SE065 = playSeVer2( spep_0 + 1294, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1294, SE065, 79 );
SE066 = playSeVer2( spep_0 + 1294, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1294, SE066, 78 );

-- ** ボイス ** --

--「……いけそうだな……」
playVoice( spep_0 + 176, 891 );
setVoiceVolume( spep_0 + 176, 891, 120 );

--「はあ…！！はああああっっっ！！！！」
playVoice( spep_0 + 580, 892 );
setVoiceVolume( spep_0 + 580, 892, 132 );

endPhase( spep_0 + MAX_FRAME_0); -- 1444F

end
