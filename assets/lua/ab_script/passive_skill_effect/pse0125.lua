--1034070:LR_超サイヤ人孫悟飯(少年期)_登場時演出
--battle_301367
--pse0125

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 3318 --登場時演出 ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);

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

--setAlphaKey( 0, 1, 255 );

ENABLE_AUTO_TIME_STRETCH(0.9);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
-- 登場時演出
------------------------------------------------------
MAX_FRAME_0 = 1146;

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
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--ベジータ着地
SE002 = playSeVer2( spep_0 + 0, 63, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 60 );
SE003 = playSeVer2( spep_0 + 0, 1508, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 18, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE006, 170 );
SE010 = playSeVer2( spep_0 + 64, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE010, 245 );

--オーラ
SE004 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 55 );
SE005 = playSeVer2( spep_0 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE005, 76 );
SE008 = playSeVer2( spep_0 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE008, 54 );
SE009 = playSeVer2( spep_0 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE009, 61 );
SE011 = playSeVer2( spep_0 + 73, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 73, SE011, 61 );
SE012 = playSeVer2( spep_0 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE012, 50 );

--トランクス着地
SE007 = playSeVer2( spep_0 + 87, 1508, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 87, SE007, 155 );
setStartTimeMs( SE007,  850 );
SE013 = playSeVer2( spep_0 + 115, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 115, SE013, 172 );
SE014 = playSeVer2( spep_0 + 115, 1192, "",spep_0 + 136, 0, 12, -1);

--悟空着地
SE015 = playSeVer2( spep_0 + 131, 1508, "",spep_0 + 169, 0, 11, -1);
setSeVolumeByWorkId( spep_0 + 131, SE015, 45 );
SE016 = playSeVer2( spep_0 + 153, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 153, SE016, 172 );
SE017 = playSeVer2( spep_0 + 156, 1192, "",spep_0 + 179, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 156, SE017, 135 );

--ピッコロ着地
SE018 = playSeVer2( spep_0 + 184, 1508, "",spep_0 + 222, 0, 11, -1);
setSeVolumeByWorkId( spep_0 + 184, SE018, 55 );
setPitch( spep_0 + 184, SE018, -400 );
setTimeStretch( SE018, 0.73, 30, 4 );
SE019 = playSeVer2( spep_0 + 209, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 209, SE019, 200 );
SE020 = playSeVer2( spep_0 + 216, 1192, "",spep_0 + 239, 0, 12, -1);

--環境音
SE021 = playSeVer2( spep_0 + 239, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 239, SE021, 25 );

--悟飯歩く
SE022 = playSeVer2( spep_0 + 491, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 491, SE022, 164 );
SE023 = playSeVer2( spep_0 + 545, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 545, SE023, 172 );
SE024 = playSeVer2( spep_0 + 586, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 586, SE024, 178 );
SE025 = playSeVer2( spep_0 + 628, 1333, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 632, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 632, SE026, 174 );
SE027 = playSeVer2( spep_0 + 653, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 653, SE027, 168 );
SE028 = playSeVer2( spep_0 + 653, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 653, SE028, 168 );

--セリフカットイン
SE029 = playSeVer2( spep_0 + 711, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 711, SE029, 63 );

--マントつかむ
SE030 = playSeVer2( spep_0 + 801, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 801, SE030, 74 );

--マント投げる
SE031 = playSeVer2( spep_0 + 836, 1027, "",spep_0 + 873, 0, 17, -1);
setSeVolumeByWorkId( spep_0 + 836, SE031, 55 );
SE032 = playSeVer2( spep_0 + 838, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 838, SE032, 88 );
SE033 = playSeVer2( spep_0 + 846, 1332, "", 0, 0, 0, -1);

--カメラパン
SE034 = playSeVer2( spep_0 + 894, 44, "", 0, 0, 0, -1);

--ラスト決め
SE035 = playSeVer2( spep_0 + 930, 1062, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 930, 20, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「ボクがやります！」
playVoice( spep_0 + 711, 1239 );
setVoiceVolume( spep_0 + 711, 1239, 112 );

-----------------------------
-- 終了
-----------------------------
endPhase( spep_0 + MAX_FRAME_0); -- 1146f

end