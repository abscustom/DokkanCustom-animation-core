--1033590:LR_超サイヤ人ゴッドベジータ(超極悪化)_登場時演出
--battle_301352
--pse0116

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3303;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 782;

setupMovie(0 , SP_01, 0, 1);

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
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 136, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 60 );
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 136, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );

--入り
SE003 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--フュー出現する
SE004 = playSeVer2( spep_0 + 22, 1222, "",spep_0 + 136, 0, 70, -1);
SE005 = playSeVer2( spep_0 + 38, 1291, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 44, 49, "", 0, 0, 0, -1);

--環境音
SE007 = playSeVer2( spep_0 + 102, 1269, "",spep_0 + 514, 14, 38, -1);
setSeVolumeByWorkId( spep_0 + 102, SE007, 25 );
setStartTimeMs( SE007,  600 );

--振りかぶる
SE008 = playSeVer2( spep_0 + 136, 1142, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 136, 1141, "", 0, 0, 0, -1);
setPitch( spep_0 + 136, SE009, -1000 );
setTimeStretch( SE009, 0.33, 30, 4 );
SE010 = playSeVer2( spep_0 + 138, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE010, 74 );

--斬撃放つ
SE011 = playSeVer2( spep_0 + 178, 1022, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 178, 1512, "",spep_0 + 334, 0, 100, -1);
setSeVolumeByWorkId( spep_0 + 178, SE012, 47 );
SE013 = playSeVer2( spep_0 + 178, 1329, "",spep_0 + 356, 0, 42, -1);
SE014 = playSeVer2( spep_0 + 180, 1215, "",spep_0 + 446, 0, 102, -1);

--ヒット
SE015 = playSeVer2( spep_0 + 326, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE015, 63 );

--セリフカットイン
SE016 = playSeVer2( spep_0 + 334, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334, SE016, 63 );

--気が溢れる
SE017 = playSeVer2( spep_0 + 376, 1427, "",spep_0 + 466, 0, 24, -1);
SE018 = playSeVer2( spep_0 + 384, 1368, "",spep_0 + 506, 0, 30, -1);

--気が爆発する
SE019 = playSeVer2( spep_0 + 452, 1035, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 452, 1503, "", 0, 0, 0, -1);

--オーラ
SE021 = playSeVer2( spep_0 + 468, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 468, SE021, 50 );
SE022 = playSeVer2( spep_0 + 492, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 492, SE022, 50 );

--光溢れる
SE023 = playSeVer2( spep_0 + 500, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE023, 68 );
SE024 = playSeVer2( spep_0 + 500, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE024, 243 );

--オーラ
SE025 = playSeVer2( spep_0 + 516, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 516, SE025, 50 );
SE026 = playSeVer2( spep_0 + 540, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 540, SE026, 50 );

--画面遷移
SE027 = playSeVer2( spep_0 + 546, 8, "", 0, 0, 0, -1);

--オーラ
SE028 = playSeVer2( spep_0 + 560, 1176, "", 0, 26, 0, -1);
setSeVolumeByWorkId( spep_0 + 560, SE028, 56 );
SE029 = playSeVer2( spep_0 + 564, 1513, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 564, SE029, 60 );

--ズーム
SE030 = playSeVer2( spep_0 + 650, 1072, "", 0, 0, 0, -1);

--ラスト決め
SE031 = playSeVer2( spep_0 + 690, 1369, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「がぁああっ！」
playVoice( spep_0 + 330, 1192 );
setVoiceVolume( spep_0 + 330, 1192, 124 );


-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --782f

else end