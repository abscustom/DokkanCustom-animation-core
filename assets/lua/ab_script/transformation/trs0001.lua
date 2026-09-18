--1032770:LR_孫悟空_パッシブ形態変化
--sp_effect_b4_00425
--trs0001

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164405;  -- パッシブ変身 ef_001


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
-- パッシブ形態変化
-------------------------------------------------
MAX_FRAME_0 = 1146;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- パッシブ変身(ef_001)
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

--背景音
SE001 = playSeVer2( spep_0 + 0, 1264, "",spep_0 + 198, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 2, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE002, 63 );

--爆発
SE003 = playSeVer2( spep_0 + 76, 1157, "",spep_0 + 178, 0, 40, -1);
SE004 = playSeVer2( spep_0 + 122, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE004, 83 );
SE005 = playSeVer2( spep_0 + 122, 1024, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 334, 1168, "", 0, 48, 0, -1);
setSeVolumeByWorkId( spep_0 + 334, SE006, 38 );
setStartTimeMs( SE006,  1133 );

--地響き
SE006 = playSeVer2( spep_0 + 340, 1168, "", 0, 48, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE006, 38 );
setStartTimeMs( SE006,  1133 );
SE007 = playSeVer2( spep_0 + 320, 1226, "", 0, 46, 0, -1);
setSeVolumeByWorkId( spep_0 + 320, SE007, 37 );

--雷
SE008 = playSeVer2( spep_0 + 342, 1230, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE008, 56 );

--地響き
SE009 = playSeVer2( spep_0 + 444, 1168, "", 0, 42, 0, -1);
setSeVolumeByWorkId( spep_0 + 444, SE009, 33 );
setStartTimeMs( SE009,  1133 );

--雷
SE010 = playSeVer2( spep_0 + 402, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE010, 56 );
SE011 = playSeVer2( spep_0 + 488, 1230, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 488, SE011, 63 );
SE012 = playSeVer2( spep_0 + 586, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 586, SE012, 60 );
SE013 = playSeVer2( spep_0 + 650, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 650, SE013, 58 );
SE014 = playSeVer2( spep_0 + 650, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 650, SE014, 63 );

--金髪に
SE015 = playSeVer2( spep_0 + 728, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 728, SE015, 71 );
setPitch( spep_0 + 728, SE015, -1200 );
setTimeStretch( SE015, 0.2, 30, 4 );

--ズーム
SE016 = playSeVer2( spep_0 + 774, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 774, SE016, 56 );

--覚醒
SE017 = playSeVer2( spep_0 + 800, 1475, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 800, SE017, 136 );

--気ダメ
SE018 = playSeVer2( spep_0 + 836, 1035, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 836, 1503, "", 0, 0, 0, -1);

--画面遷移
SE020 = playSeVer2( spep_0 + 914, 8, "", 0, 0, 0, -1);

--オーラ
SE021 = playSeVer2( spep_0 + 930, 1267, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 930, SE021, 119 );
SE022 = playSeVer2( spep_0 + 932, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 932, SE022, 79 );
SE023 = playSeVer2( spep_0 + 956, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 956, SE023, 79 );
SE024 = playSeVer2( spep_0 + 980, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 980, SE024, 79 );
SE025 = playSeVer2( spep_0 + 1004, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1004, SE025, 79 );
SE026 = playSeVer2( spep_0 + 1028, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1028, SE026, 79 );
SE027 = playSeVer2( spep_0 + 1052, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1052, SE027, 79 );

--ラスト決め
SE028 = playSeVer2( spep_0 + 1054, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1054, SE028, 65 );
SE029 = playSeVer2( spep_0 + 1054, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1054, SE029, 89 );

--オーラ
SE030 = playSeVer2( spep_0 + 1076, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1076, SE030, 79 );
SE031 = playSeVer2( spep_0 + 1096, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1096, SE031, 79 );


-- ** ボイス ** --

--「悟空ーーっ!!!!」
playVoice( spep_0 + 2, 1165 );
setVoiceVolume( spep_0 + 2, 1165, 126 );

--「ゆ…ゆ…ゆるさんぞ… よ…よくも…よくも…」
playVoice( spep_0 + 328, 1166 );
setVoiceVolume( spep_0 + 328, 1166, 126 );


endPhase( spep_0 + MAX_FRAME_0); -- 1146F

end
