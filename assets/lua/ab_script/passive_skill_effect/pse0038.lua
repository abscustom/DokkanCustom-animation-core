--1027710：UR_超フルパワーサイヤ人4・限界突破ベジット(ゼノ)_登場時演出
--battle_301268
--pse0038

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3205;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 686;

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
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 1173, "",spep_0 + 158, 0, 122, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 67 );
SE003 = playSeVer2( spep_0 + 0, 1263, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 0, 1374, "", 0, 38, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 41, 1371, "", 301, 34, 50, -1);
setSeVolumeByWorkId( spep_0 + 41, SE004, 43 );
setStartTimeMs( SE004,  933 );
setPitch( spep_0 + 41, SE004, 400 );
setTimeStretch( SE004, 1.31, 30, 4 );
SE004_01 = playSeVer2( spep_0 + 241, 1371, "", 686, 50, 20, -1);
setSeVolumeByWorkId( spep_0 + 241, SE004_01, 43 );
setStartTimeMs( SE004_01,  933 );
setPitch( spep_0 + 241, SE004_01, 400 );
setTimeStretch( SE004_01, 1.31, 30, 4 );
SE006 = playSeVer2( spep_0 + 0, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE006, 48 );
setTimeStretch( SE006, 1.43, 30, 4 );

--画面遷移
SE007 = playSeVer2( spep_0 + 132, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE007, 69 );

--服はためく
SE008 = playSeVer2( spep_0 + 136, 1332, "", 0, 0, 0, -1);

--しっぽ揺れる
SE009 = playSeVer2( spep_0 + 203, 1331, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 203, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 203, SE010, 50 );

--腕アップ
SE011 = playSeVer2( spep_0 + 253, 1237, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 253, SE011, 65 );
setStartTimeMs( SE011,  200 );

--肩アップ
SE012 = playSeVer2( spep_0 + 301, 1237, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 301, SE012, 65 );
setStartTimeMs( SE012,  167 );
setPitch( spep_0 + 301, SE012, -500 );

--ポタラ揺れる
SE013 = playSeVer2( spep_0 + 372, 1372, "",spep_0 + 450, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 372, SE013, 316 );

--全身フレームイン
SE014 = playSeVer2( spep_0 + 434, 8, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 441, 1371, "",spep_0 + 598, 0, 86, -1);
setPitch( spep_0 + 441, SE015, 400 );
setTimeStretch( SE015, 1.27, 30, 4 );
SE016 = playSeVer2( spep_0 + 441, 1303, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 441, SE016, 57 );

--オーラ
SE017 = playSeVer2( spep_0 + 518, 1407, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 518, SE017, 186 );

--画面遷移
SE018 = playSeVer2( spep_0 + 526, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 526, SE018, 71 );

--セリフカットイン
SE019 = playSeVer2( spep_0 + 554, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 554, SE019, 63 );

--ラストきめ
SE020 = playSeVer2( spep_0 + 554, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 554, SE020, 55 );
SE021 = playSeVer2( spep_0 + 554, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 554, SE021, 63 );

-- ** ボイス ** --
--「遊びは終わりだ」
playVoice( spep_0 + 568, 718 );
setVoiceVolume( spep_0 + 568, 718, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --686

else end
