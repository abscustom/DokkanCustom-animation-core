--1032260:UR_超サイヤ人4孫悟空(ミニ)(DAIMA)_登場時演出
--battle_301339
--pse0098

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3289;  -- 登場時演出 ef_001

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

setupMovie(0, SP_01, 0, 0);

MAX_FRAME_0 = 1218;

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
--気をわけあたえる
SE001 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 123, 6, 48, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 155 );
setStartTimeMs( SE001,  900 );
SE003 = playSeVer2( spep_0 + 32, 1335, "", 0, 0, 0, -1);
setPitch( spep_0 + 32, SE003, -800 );
setTimeStretch( SE003, 0.47, 30, 4 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 188, 0, 84, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
SE042 = playSeVer2( spep_0 + 1028, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1028, SE042, 25 );

--気が悟空に入る
SE004 = playSeVer2( spep_0 + 54, 1511, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE004, 71 );
setTimeStretch( SE004, 0.71, 30, 4 );

--気が悟空からあふれる
SE005 = playSeVer2( spep_0 + 92, 1512, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE005, 68 );
setTimeStretch( SE005, 0.71, 30, 4 );

--気がリズミカルに弾ける
SE006 = playSeVer2( spep_0 + 164, 1510, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE006, 126 );
SE007 = playSeVer2( spep_0 + 198, 1510, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE007, 126 );
setPitch( spep_0 + 198, SE007, -600 );
setTimeStretch( SE007, 0.6, 30, 4 );
SE008 = playSeVer2( spep_0 + 216, 1510, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE008, 126 );
setPitch( spep_0 + 216, SE008, -900 );
setTimeStretch( SE008, 0.4, 30, 4 );
SE012 = playSeVer2( spep_0 + 244, 1510, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE012, 126 );
setPitch( spep_0 + 244, SE012, -100 );
setTimeStretch( SE012, 0.93, 30, 4 );
SE013 = playSeVer2( spep_0 + 278, 1510, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 278, SE013, 126 );
setPitch( spep_0 + 278, SE013, -600 );
setTimeStretch( SE013, 0.6, 30, 4 );

--水平に赤く光る
SE009 = playSeVer2( spep_0 + 232, 1371, "",spep_0 + 358, 0, 68, -1);
setSeVolumeByWorkId( spep_0 + 232, SE009, 71 );
SE010 = playSeVer2( spep_0 + 232, 1265, "",spep_0 + 352, 0, 44, -1);
SE011 = playSeVer2( spep_0 + 232, 1274, "", 0, 0, 0, -1);
setPitch( spep_0 + 232, SE011, 400 );
setTimeStretch( SE011, 1.27, 30, 4 );

--手前にズーム
SE014 = playSeVer2( spep_0 + 316, 1332, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 322, 1117, "",spep_0 + 386, 0, 24, -1);
SE016 = playSeVer2( spep_0 + 328, 1179, "",spep_0 + 402, 0, 24, -1);

--気が流れていく
SE017 = playSeVer2( spep_0 + 356, 1183, "",spep_0 + 482, 0, 48, -1);

--水が弾けるような画面展開
SE018 = playSeVer2( spep_0 + 410, 8, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 410, 1117, "",spep_0 + 506, 0, 52, -1);

--水玉のようになる
SE020 = playSeVer2( spep_0 + 552, 1437, "",spep_0 + 624, 4, 48, -1);
setStartTimeMs( SE020,  2333 );
SE027 = playSeVer2( spep_0 + 552, 1434, "",spep_0 + 586, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 552, SE027, 234 );

--渦収縮する
SE021 = playSeVer2( spep_0 + 520, 1493, "",spep_0 + 588, 12, 20, -1);
setSeVolumeByWorkId( spep_0 + 520, SE021, 71 );
setStartTimeMs( SE021,  1567 );
SE026 = playSeVer2( spep_0 + 516, 1313, "",spep_0 + 574, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 516, SE026, 86 );

--手アップ
SE022 = playSeVer2( spep_0 + 448, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE022, 174 );
SE023 = playSeVer2( spep_0 + 448, 1153, "",spep_0 + 494, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 448, SE023, 56 );

--髪の色変わる
SE024 = playSeVer2( spep_0 + 470, 1130, "",spep_0 + 512, 4, 14, -1);
setStartTimeMs( SE024,  200 );
SE025 = playSeVer2( spep_0 + 478, 1143, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 478, SE025, 56 );

--尻尾アップ
SE028 = playSeVer2( spep_0 + 586, 1202, "",spep_0 + 638, 6, 18, -1);
setStartTimeMs( SE028,  467 );

--目開く
SE029 = playSeVer2( spep_0 + 610, 1473, "",spep_0 + 638, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 610, SE029, 145 );
SE030 = playSeVer2( spep_0 + 614, 1475, "", 0, 0, 0, -1);
setPitch( spep_0 + 614, SE030, 400 );
setTimeStretch( SE030, 1.27, 30, 4 );
setSeVolumeByWorkId( spep_0 + 614, SE030, 120 );

--炎と水立ち上がる
SE031 = playSeVer2( spep_0 + 652, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 652, SE031, 50 );
SE032 = playSeVer2( spep_0 + 652, 1156, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 652, SE032, 71 );
SE033 = playSeVer2( spep_0 + 680, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 680, SE033, 71 );
SE034 = playSeVer2( spep_0 + 680, 1213, "",spep_0 + 986, 0, 174, -1);
setSeVolumeByWorkId( spep_0 + 680, SE034, 50 );

--セリフカットイン
SE035 = playSeVer2( spep_0 + 692, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 692, SE035, 63 );

--水の音
SE036 = playSeVer2( spep_0 + 758, 1166, "",spep_0 + 1066, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 758, SE036, 60 );

--炎の音
SE037 = playSeVer2( spep_0 + 758, 1268, "",spep_0 + 1054, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 758, SE037, 100 );

--気が高まる
SE038 = playSeVer2( spep_0 + 966, 1503, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 966, 1478, "", 0, 0, 0, -1);

--気が弾ける
SE040 = playSeVer2( spep_0 + 1028, 1475, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1028, SE040, 74 );
SE041 = playSeVer2( spep_0 + 1028, 1479, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1028, SE041, 78 );
SE043 = playSeVer2( spep_0 + 1046, 1188, "", 0, 32, 0, -1);

--空気音
SE044 = playSeVer2( spep_0 + 1046, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1046, SE044, 66 );

-- ** ボイス ** --
--「うおおおおっ！！」
playVoice( spep_0 + 692, 1088 );
setVoiceVolume( spep_0 + 692, 1088, 100 );


-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1218f

else end
