--1029820:UR_超サイヤ人バーダック_登場時演出
--battle_301307
--pse0076

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3243;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 1320;

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
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--顔アップ
SE002 = playSeVer2( spep_0 + 246, 1171, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE002, 68 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 544, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 544, SE003, 63 );

--覚醒
SE004 = playSeVer2( spep_0 + 870, 1126, "",spep_0 + 958, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 870, SE004, 71 );
setPitch( spep_0 + 870, SE004, 200 );
setTimeStretch( SE004, 1.13, 30, 4 );
SE005 = playSeVer2( spep_0 + 870, 1043, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 870, 1303, "",spep_0 + 970, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 870, SE006, 68 );

--気ダメ
SE007 = playSeVer2( spep_0 + 902, 1035, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 902, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 902, SE008, 79 );

--オーラ
SE009 = playSeVer2( spep_0 + 912, 1036, "", 0, 0, 0, -1);

--気ダメ
SE010 = playSeVer2( spep_0 + 912, 1258, "", 0, 0, 0, -1);

--オーラ
SE011 = playSeVer2( spep_0 + 936, 1036, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 960, 1036, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 984, 1036, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 1008, 1036, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 1032, 1036, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 1056, 1036, "", 0, 0, 0, -1);

--立ち上がる
SE017 = playSeVer2( spep_0 + 1058, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1058, SE017, 243 );

--オーラ
SE018 = playSeVer2( spep_0 + 1080, 1036, "", 0, 0, 0, -1);

--画面遷移
SE019 = playSeVer2( spep_0 + 1094, 8, "", 0, 0, 0, -1);

--オーラ
SE020 = playSeVer2( spep_0 + 1104, 1036, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 1128, 1036, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 1152, 1036, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 1176, 1036, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 1200, 1036, "", 0, 0, 0, -1);

--ラスト決め
SE025 = playSeVer2( spep_0 + 1216, 1233, "", 0, 0, 0, -1);

--オーラ
SE026 = playSeVer2( spep_0 + 1224, 1036, "", 0, 0, 0, -1);

--ラスト決め
SE027 = playSeVer2( spep_0 + 1230, 1062, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 1230, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1230, SE028, 82 );

--オーラ
SE029 = playSeVer2( spep_0 + 1248, 1036, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 1272, 1036, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 1296, 1036, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「なさけねえ……」
playVoice( spep_0 + 0, 865 );
setVoiceVolume( spep_0 + 0, 865, 110 );

--「二度もオレは…おまえを……！！」
playVoice( spep_0 + 154, 866 );
setVoiceVolume( spep_0 + 154, 866, 110 );

--「ちくしょう……！！」
playVoice( spep_0 + 396, 867 );
setVoiceVolume( spep_0 + 396, 867, 110 );

--「オレに もっと力があれば……！！」
playVoice( spep_0 + 542, 868 );
setVoiceVolume( spep_0 + 542, 868, 110 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); -- 1320f

else end