--1032550:LR_超サイヤ人4孫悟空(DAIMA)_登場時演出
--battle_301349
--pse0108

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3297;  -- 登場時演出 ef_001


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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 登場時演出
-------------------------------------------------
MAX_FRAME_0 = 1558;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); --登場時演出(ef_001)
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

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );
SE002 = playSeVer2( spep_0 + 0, 1513, "",spep_0 + 708, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 45 );
SE003 = playSeVer2( spep_0 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 50 );
SE004 = playSeVer2( spep_0 + 38, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE004, 50 );
SE006 = playSeVer2( spep_0 + 62, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE006, 50 );
SE007 = playSeVer2( spep_0 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE007, 50 );
SE008 = playSeVer2( spep_0 + 110, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE008, 50 );
SE009 = playSeVer2( spep_0 + 134, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE009, 50 );
SE010 = playSeVer2( spep_0 + 158, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE010, 50 );
SE012 = playSeVer2( spep_0 + 182, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE012, 50 );
SE013 = playSeVer2( spep_0 + 206, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE013, 50 );
SE014 = playSeVer2( spep_0 + 230, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 230, SE014, 50 );
SE017 = playSeVer2( spep_0 + 254, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE017, 50 );
SE019 = playSeVer2( spep_0 + 278, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 278, SE019, 50 );
SE020 = playSeVer2( spep_0 + 302, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 302, SE020, 50 );
SE023 = playSeVer2( spep_0 + 326, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE023, 50 );
SE025 = playSeVer2( spep_0 + 350, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 350, SE025, 50 );
SE027 = playSeVer2( spep_0 + 374, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 374, SE027, 50 );
SE029 = playSeVer2( spep_0 + 398, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 398, SE029, 50 );
SE030 = playSeVer2( spep_0 + 422, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 422, SE030, 50 );
SE031 = playSeVer2( spep_0 + 446, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 446, SE031, 50 );
SE033 = playSeVer2( spep_0 + 470, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 470, SE033, 50 );
SE034 = playSeVer2( spep_0 + 494, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 494, SE034, 50 );
SE035 = playSeVer2( spep_0 + 518, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 518, SE035, 50 );
SE037 = playSeVer2( spep_0 + 542, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 542, SE037, 50 );
SE038 = playSeVer2( spep_0 + 566, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 566, SE038, 50 );
SE040 = playSeVer2( spep_0 + 590, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 590, SE040, 50 );
SE041 = playSeVer2( spep_0 + 614, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 614, SE041, 50 );
SE042 = playSeVer2( spep_0 + 638, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 638, SE042, 50 );
SE043 = playSeVer2( spep_0 + 662, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 662, SE043, 50 );
SE046 = playSeVer2( spep_0 + 686, 1036, "",spep_0 + 704, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 686, SE046, 50 );

--セリフカットイン
SE005 = playSeVer2( spep_0 + 58, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE005, 63 );

--電気走る
SE011 = playSeVer2( spep_0 + 170, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE011, 71 );
SE016 = playSeVer2( spep_0 + 236, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE016, 71 );
SE024 = playSeVer2( spep_0 + 336, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE024, 71 );
SE026 = playSeVer2( spep_0 + 362, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE026, 71 );
SE032 = playSeVer2( spep_0 + 450, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 450, SE032, 71 );
SE036 = playSeVer2( spep_0 + 522, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 522, SE036, 78 );
SE039 = playSeVer2( spep_0 + 574, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 574, SE039, 63 );

--力む
SE015 = playSeVer2( spep_0 + 230, 1233, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 254, 1330, "", 0, 0, 0, -1);

--地響き
SE021 = playSeVer2( spep_0 + 318, 1226, "",spep_0 + 716, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 318, SE021, 46 );

--雷落ちる
SE022 = playSeVer2( spep_0 + 318, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE022, 153 );
SE028 = playSeVer2( spep_0 + 378, 1230, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 378, SE028, 155 );

--服投げ飛ばす
SE044 = playSeVer2( spep_0 + 678, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 678, SE044, 158 );
SE045 = playSeVer2( spep_0 + 684, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 684, SE045, 50 );

--気ダメ
SE047 = playSeVer2( spep_0 + 730, 1035, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 730, 1503, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_0 + 738, 1504, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 738, 1513, "",spep_0 + 892, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 738, SE050, 79 );

--気が爆発する
SE051 = playSeVer2( spep_0 + 782, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 782, SE051, 67 );
SE052 = playSeVer2( spep_0 + 782, 1216, "",spep_0 + 890, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 782, SE052, 66 );

--気がたちのぼる
SE053 = playSeVer2( spep_0 + 846, 1258, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_0 + 852, 1159, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 864, 1423, "",spep_0 + 1156, 0, 152, -1);
setPitch( spep_0 + 864, SE055, -300 );
setTimeStretch( SE055, 0.8, 30, 4 );

--爆発する
SE056 = playSeVer2( spep_0 + 882, 1179, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_0 + 914, 1069, "", 0, 0, 0, -1);

--環境音
SE058 = playSeVer2( spep_0 + 936, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 936, SE058, 25 );
SE062 = playSeVer2( spep_0 + 1092, 1229, "", 0, 0, 0, -1);

--手をかける
SE059 = playSeVer2( spep_0 + 1022, 1377, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1022, SE059, 135 );
setPitch( spep_0 + 1022, SE059, 700 );
setTimeStretch( SE059, 1.47, 30, 4 );
SE060 = playSeVer2( spep_0 + 1026, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1026, SE060, 135 );
setPitch( spep_0 + 1026, SE060, 1200 );
setTimeStretch( SE060, 1.8, 30, 4 );

--画面遷移
SE061 = playSeVer2( spep_0 + 1062, 8, "", 0, 0, 0, -1);

--腕振り上げる
SE063 = playSeVer2( spep_0 + 1244, 1116, "",spep_0 + 1290, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 1244, SE063, 76 );
SE064 = playSeVer2( spep_0 + 1248, 1182, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_0 + 1248, SE064, 73 );
setStartTimeMs( SE064, 67 );

--拳握る
SE065 = playSeVer2( spep_0 + 1358, 1233, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_0 + 1372, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1372, SE066, 74 );

--ラスト決め
SE067 = playSeVer2( spep_0 + 1432, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1432, SE067, 79 );
SE068 = playSeVer2( spep_0 + 1432, 1052, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1432, SE068, 77 );

-- ** ボイス ** --

--「もうひとつ おまけ…」
playVoice( spep_0 + 54, 1132 );
setVoiceVolume( spep_0 + 54, 1132, 128 );

--「はああああ……！！」
playVoice( spep_0 + 434, 1133 );
setVoiceVolume( spep_0 + 434, 1133, 128 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1528F

end