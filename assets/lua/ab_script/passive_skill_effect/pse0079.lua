--1031060:UR_超サイヤ人3ベジータ(ミニ)(DAIMA)_登場時演出
--sp_effect_b4_00371
--pse0079

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 163703;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 808;

setupMovie( 0, SP_01, 0, 1 );

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
--セリフカットイン
SE001 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 73 );
SE003 = playSeVer2( spep_0 + 0, 1226, "", spep_0 + 646, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 56 );
SE004 = playSeVer2( spep_0 + 0, 1175, "", spep_0 + 340, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 35 );
--SE061 = playSeVer2( spep_0 + 288, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE061, 73 );
--SE062 = playSeVer2( spep_0 + 572, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 572, SE062, 73 );

--オーラ
SE005 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE005, 63 );
SE007 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE007, 63 );
SE009 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE009, 63 );
SE010 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE010, 63 );
SE011 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE011, 63 );
SE012 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE012, 63 );
SE014 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE014, 63 );
SE017 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE017, 63 );
SE018 = playSeVer2( spep_0 + 192, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE018, 63 );
SE019 = playSeVer2( spep_0 + 216, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE019, 63 );
SE021 = playSeVer2( spep_0 + 240, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE021, 63 );
SE022 = playSeVer2( spep_0 + 264, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE022, 63 );
SE025 = playSeVer2( spep_0 + 288, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE025, 63 );
SE026 = playSeVer2( spep_0 + 312, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 312, SE026, 63 );
SE027 = playSeVer2( spep_0 + 336, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE027, 63 );
SE029 = playSeVer2( spep_0 + 360, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE029, 63 );
SE030 = playSeVer2( spep_0 + 384, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE030, 63 );
SE031 = playSeVer2( spep_0 + 408, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE031, 63 );
SE033 = playSeVer2( spep_0 + 432, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE033, 63 );
SE035 = playSeVer2( spep_0 + 456, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 456, SE035, 63 );
SE037 = playSeVer2( spep_0 + 480, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE037, 63 );
SE038 = playSeVer2( spep_0 + 504, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 504, SE038, 63 );
SE039 = playSeVer2( spep_0 + 528, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE039, 63 );
SE040 = playSeVer2( spep_0 + 552, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE040, 63 );
SE043 = playSeVer2( spep_0 + 576, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE043, 63 );
SE044 = playSeVer2( spep_0 + 600, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 600, SE044, 63 );
SE045 = playSeVer2( spep_0 + 624, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 624, SE045, 63 );
SE047 = playSeVer2( spep_0 + 648, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 648, SE047, 63 );
SE049 = playSeVer2( spep_0 + 672, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 672, SE049, 63 );
SE050 = playSeVer2( spep_0 + 696, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 696, SE050, 63 );
SE051 = playSeVer2( spep_0 + 720, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 720, SE051, 63 );
SE052 = playSeVer2( spep_0 + 744, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 744, SE052, 63 );
SE055 = playSeVer2( spep_0 + 768, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 768, SE055, 63 );
SE056 = playSeVer2( spep_0 + 792, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 792, SE056, 63 );


--電気音
SE006 = playSeVer2( spep_0 + 4, 1491, "", 0, 0, 0, -1);

--電気音
SE008 = playSeVer2( spep_0 + 30, 1491, "", 0, 0, 0, -1);

--電気音
SE013 = playSeVer2( spep_0 + 126, 1491, "", 0, 0, 0, -1);

--髪伸びる
SE015 = playSeVer2( spep_0 + 138, 8, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 150, 1342, "", 0, 0, 0, -1);

--電気音
SE020 = playSeVer2( spep_0 + 208, 1491, "", spep_0 + 258, 0, 10, -1);

--髪伸びる
SE023 = playSeVer2( spep_0 + 256, 8, "", 0, 0, 0, -1);

--電気音
SE024 = playSeVer2( spep_0 + 262, 1491, "", 0, 0, 0, -1);

--電気音
SE028 = playSeVer2( spep_0 + 346, 1491, "", 0, 0, 0, -1);

--光あふれる
SE032 = playSeVer2( spep_0 + 548, 1437, "",spep_0 + 694, 4, 96, -1);
setSeVolumeByWorkId( spep_0 + 548, SE032, 110 );
setStartTimeMs( SE032,  2300 );

--電気音
SE034 = playSeVer2( spep_0 + 436, 1491, "", 0, 0, 0, -1);

--画面遷移
SE036 = playSeVer2( spep_0 + 456, 1072, "", 0, 0, 0, -1);

--光あふれる
SE041 = playSeVer2( spep_0 + 552, 1067, "",spep_0 + 668, 0, 58, -1);
SE042 = playSeVer2( spep_0 + 552, 1303, "",spep_0 + 718, 0, 120, -1);
setSeVolumeByWorkId( spep_0 + 552, SE042, 59 );

--電気音
SE046 = playSeVer2( spep_0 + 624, 1491, "", 0, 0, 0, -1);

--画面遷移
SE048 = playSeVer2( spep_0 + 652, 1232, "", 0, 0, 0, -1);

--電気音
SE053 = playSeVer2( spep_0 + 748, 1491, "", 0, 0, 0, -1);

--決め
SE054 = playSeVer2( spep_0 + 750, 1062, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「フン…なかなかやるな…」
playVoice( spep_0 + 0, 959 );
setVoiceVolume( spep_0 + 0, 959, 122 );

--「はあああ……！！！！」_a
playVoice( spep_0 + 334, 960 );
setVoiceVolume( spep_0 + 334, 960, 122 );

--「はあああ……！！！！」_c
playVoice( spep_0 + 518, 978 );
setVoiceVolume( spep_0 + 518, 978, 122 );


-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); -- 808f

else end