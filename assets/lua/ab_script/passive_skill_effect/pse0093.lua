--1032010:LR_超サイヤ人孫悟飯(GT)(寄生)&超サイヤ人孫悟天(GT)(寄生)_登場時演出
--sp_effect_b4_00398
--pse0093

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 164182;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 1720;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出（ef_001）
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
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 344, 0, 82, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 24 );
--入り
SE003 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--画面遷移
SE004 = playSeVer2( spep_0 + 62, 1232, "", 0, 0, 0, -1);
--気ダメ
SE005 = playSeVer2( spep_0 + 132, 1035, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 132, 1503, "", 0, 0, 0, -1);
--オーラ
SE007 = playSeVer2( spep_0 + 148, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE007, 63 );
SE008 = playSeVer2( spep_0 + 172, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 172, SE008, 63 );
SE009 = playSeVer2( spep_0 + 196, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE009, 63 );
--目光る
SE010 = playSeVer2( spep_0 + 196, 1271, "",spep_0 + 326, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 196, SE010, 145 );
SE011 = playSeVer2( spep_0 + 210, 1198, "", 0, 0, 0, -1);
--オーラ
SE012 = playSeVer2( spep_0 + 220, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE012, 63 );
--目光る
SE013 = playSeVer2( spep_0 + 230, 1289, "",spep_0 + 314, 0, 52, -1);
--オーラ
SE014 = playSeVer2( spep_0 + 244, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE014, 63 );
SE015 = playSeVer2( spep_0 + 268, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE015, 63 );
--カメラズーム
SE016 = playSeVer2( spep_0 + 282, 1072, "", 0, 0, 0, -1);
--オーラ
SE017 = playSeVer2( spep_0 + 292, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE017, 63 );
SE018 = playSeVer2( spep_0 + 316, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE018, 63 );
SE019 = playSeVer2( spep_0 + 340, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE019, 63 );
--気が爆発する
SE020 = playSeVer2( spep_0 + 336, 1497, "",spep_0 + 396, 0, 24, -1);
SE021 = playSeVer2( spep_0 + 340, 1328, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 346, 1507, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 348, 1178, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 358, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 358, SE024, 146 );
SE025 = playSeVer2( spep_0 + 362, 1068, "", 0, 0, 0, -1);
--気が溢れていく
SE026 = playSeVer2( spep_0 + 362, 1177, "", 710, 0, 10, -1);
setTimeStretch( SE026, 2, 30, 4 );
SE027 = playSeVer2( spep_0 + 362, 1024, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 362, 1286, "",spep_0 + 768, 0, 58, -1);
SE029 = playSeVer2( spep_0 + 362, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE029, 63 );
--気を溜める
SE030 = playSeVer2( spep_0 + 474, 1215, "", 710, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 474, SE030, 79 );
SE031 = playSeVer2( spep_0 + 480, 1158, "", 730, 0, 10, -1);
SE032 = playSeVer2( spep_0 + 482, 1278, "", 730, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 482, SE032, 68 );
--ベビー移動する
SE033 = playSeVer2( spep_0 + 706, 1497, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 706, 1427, "", 900, 0, 10, -1);
SE035 = playSeVer2( spep_0 + 722, 1499, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 722, 1505, "",spep_0 + 930, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 722, SE036, 68 );
--セリフカットイン
SE037 = playSeVer2( spep_0 + 730, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 730, SE037, 63 );
--ベビー乗り移る
SE038 = playSeVer2( spep_0 + 876, 1312, "",spep_0 + 932, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 876, SE038, 130 );
SE039 = playSeVer2( spep_0 + 892, 1500, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 900, 1178, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 912, 15, "",spep_0 + 986, 0, 22, -1);
--光溢れる
SE042 = playSeVer2( spep_0 + 956, 1226, "",spep_0 + 1374, 0, 144, -1);
setSeVolumeByWorkId( spep_0 + 956, SE042, 58 );
SE043 = playSeVer2( spep_0 + 956, 1127, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 956, 1303, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 956, SE044, 71 );
setPitch( spep_0 + 956, SE044, -200 );
setTimeStretch( SE044, 0.87, 30, 4 );
SE045 = playSeVer2( spep_0 + 956, 1174, "",spep_0 + 1268, 0, 86, -1);
setSeVolumeByWorkId( spep_0 + 956, SE045, 170 );
--光立ち上がる
SE046 = playSeVer2( spep_0 + 1098, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1098, SE046, 191 );
SE047 = playSeVer2( spep_0 + 1098, 1374, "", 0, 0, 0, -1);
setPitch( spep_0 + 1098, SE047, 600 );
setTimeStretch( SE047, 1.4, 30, 4 );
--爆発する
SE048 = playSeVer2( spep_0 + 1170, 1159, "",spep_0 + 1492, 0, 246, -1);
SE049 = playSeVer2( spep_0 + 1170, 1156, "",spep_0 + 1566, 0, 312, -1);
--環境音
SE050 = playSeVer2( spep_0 + 1234, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1234, SE050, 25 );
--ラスト決め
SE051 = playSeVer2( spep_0 + 1628, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1628, SE051, 71 );

-- ** ボイス ** --
--「今だ！」
playVoice( spep_0 + 732, 1083 );
setVoiceVolume( spep_0 + 732, 1083, 132 );

--「これだ…！この強力なサイヤパワーこそオレが求めていたものだ…」
playVoice( spep_0 + 1264, 1084 );
setVoiceVolume( spep_0 + 1264, 1084, 132 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1720

else end
