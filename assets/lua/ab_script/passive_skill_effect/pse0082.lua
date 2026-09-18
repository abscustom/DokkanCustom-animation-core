-- 1031180: UR_超サイヤ人ゴッドSS孫悟空(界王拳)_登場時演出
-- battle_301326
-- pse0082

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3272;  -- 登場時演出 ef_001

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

setupMovie(0, SP_01, 0, 1);

MAX_FRAME_0 = 1008;

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
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 332, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE002 = playSeVer2( spep_0 + 26, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE002, 71 );

--集中線
SE003 = playSeVer2( spep_0 + 106, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE003, 75 );
SE004 = playSeVer2( spep_0 + 106, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE004, 54 );

--気ダメ
SE005 = playSeVer2( spep_0 + 266, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE005, 129 );
SE006 = playSeVer2( spep_0 + 274, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 274, SE006, 127 );
SE007 = playSeVer2( spep_0 + 274, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 274, SE007, 65 );
SE008 = playSeVer2( spep_0 + 274, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 274, SE008, 71 );

--オーラ
SE009 = playSeVer2( spep_0 + 286, 1176, "",spep_0 + 644, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 286, SE009, 69 );
SE010 = playSeVer2( spep_0 + 290, 1227, "",spep_0 + 644, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 290, SE010, 79 );

--画面遷移
SE011 = playSeVer2( spep_0 + 380, 1232, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 436, 8, "", 0, 0, 0, -1);

--地響き
SE013 = playSeVer2( spep_0 + 518, 1226, "",spep_0 + 698, 0, 80, -1);

--気ダメ
SE014 = playSeVer2( spep_0 + 544, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 544, SE014, 88 );
SE015 = playSeVer2( spep_0 + 544, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 544, SE015, 82 );
setPitch( spep_0 + 544, SE015, 300 );
setTimeStretch( SE015, 1.2, 30, 4 );
SE016 = playSeVer2( spep_0 + 554, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 554, SE016, 84 );
SE017 = playSeVer2( spep_0 + 566, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 566, SE017, 141 );
setPitch( spep_0 + 566, SE017, -500 )
setTimeStretch( SE017, 0.67, 30, 4 );

--セリフカットイン
SE022 = playSeVer2( spep_0 + 616, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 616, SE022, 63 );

--オーラ
SE018 = playSeVer2( spep_0 + 584, 1181, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 584, SE018, 81 );
SE019 = playSeVer2( spep_0 + 584, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 584, SE019, 47 );
SE020 = playSeVer2( spep_0 + 584, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 584, SE020, 40 );
SE021 = playSeVer2( spep_0 + 608, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 608, SE021, 40 );
SE023 = playSeVer2( spep_0 + 632, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 632, SE023, 40 );
SE024 = playSeVer2( spep_0 + 656, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 656, SE024, 40 );
SE025 = playSeVer2( spep_0 + 680, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 680, SE025, 40 );
SE026 = playSeVer2( spep_0 + 704, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 704, SE026, 40 );
SE027 = playSeVer2( spep_0 + 728, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 728, SE027, 40 );
SE028 = playSeVer2( spep_0 + 752, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 752, SE028, 40 );
SE029 = playSeVer2( spep_0 + 776, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 776, SE029, 40 );
SE030 = playSeVer2( spep_0 + 800, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 800, SE030, 40 );
SE031 = playSeVer2( spep_0 + 824, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 824, SE031, 40 );
SE032 = playSeVer2( spep_0 + 848, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 848, SE032, 40 );
SE034 = playSeVer2( spep_0 + 872, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 872, SE034, 40 );
SE035 = playSeVer2( spep_0 + 896, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 896, SE035, 40 );
SE038 = playSeVer2( spep_0 + 920, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 920, SE038, 40 );
SE039 = playSeVer2( spep_0 + 944, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 944, SE039, 40 );
SE040 = playSeVer2( spep_0 + 968, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 968, SE040, 40 );
SE041 = playSeVer2( spep_0 + 992, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 992, SE041, 40 );

--ズーム
SE033 = playSeVer2( spep_0 + 866, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 866, SE033, 72 );

--ラスト決め
SE036 = playSeVer2( spep_0 + 906, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 906, SE036, 66 );
SE037 = playSeVer2( spep_0 + 906, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 906, SE037, 76 );

-- ** ボイス ** --
--「界王拳！！！」
playVoice( spep_0 + 90, 979 );
setVoiceVolume( spep_0 + 90, 979, 124 );

--「できたぜ…！超サイヤ人ブルーの力に界王拳の上乗せだ！！」
playVoice( spep_0 + 616, 980 );
setVoiceVolume( spep_0 + 616, 980, 124 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1008F

else end
