-- 1027330: LR_超サイヤ人孫悟飯(未来)_登場時
-- sp_effect_b4_00304
-- pse0034

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162225;  -- 悟飯が飛んでくる～バストアップ ef_001
SP_01b = 162226;  -- 悟飯が飛んでくる～バストアップ ef_001b

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

OFFSET_X = -1

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 登場時演出 (558F)
------------------------------------------------------

spep_0 = 0;
MAX_FRAME_0 = 558;

-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001, 255 );
entry_SP_001b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 255 );

-- ** 敵キャラクター ** --
setDisp(spep_0 + 179, 1, 1);
setDisp(spep_0 + 260 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 180 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 180 + OFFSET_X, 1, 255.9, 151.2 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 255.9, 151.2 , 0 );

setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 0.24, 0.24 );

setRotateKey( spep_0 + 180 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1011, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 8, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE004, 83 );

--気収める
SE005 = playSeVer2( spep_0 + 62, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE005, 120 );
setPitch( spep_0 + 62, SE005, -400 );
setTimeStretch( SE005, 0.6, 30, 4 );

--飛んでくる
SE006 = playSeVer2( spep_0 + 64, 1019, "",spep_0 + 102, 0, 24, -1);

--気収める
SE007 = playSeVer2( spep_0 + 64, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE007, 86 );

--降り立つ
SE008 = playSeVer2( spep_0 + 102, 1119, "",spep_0 + 158, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 102, SE008, 37 );
setPitch( spep_0 + 102, SE008, -200 );
setTimeStretch( SE008, 0.87, 30, 4 );
SE009 = playSeVer2( spep_0 + 108, 44, "",spep_0 + 164, 0, 20, -1);
SE010 = playSeVer2( spep_0 + 142, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE010, 155 );
SE011 = playSeVer2( spep_0 + 142, 1192, "",spep_0 + 168, 0, 12, -1);
SE012 = playSeVer2( spep_0 + 144, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE012, 155 );

--拳にぎる
SE013 = playSeVer2( spep_0 + 188, 1348, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 188, SE013, 59 );
SE014 = playSeVer2( spep_0 + 188, 1330, "",spep_0 + 256, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 188, SE014, 56 );

--セリフカットイン
SE015 = playSeVer2( spep_0 + 214, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE015, 56 );

--気ダメ前空力音
SE016 = playSeVer2( spep_0 + 264, 1175, "",spep_0 + 492, 72, 86, -1);
setSeVolumeByWorkId( spep_0 + 264, SE016, 38 );
setStartTimeMs( SE016,  600 );
SE017 = playSeVer2( spep_0 + 272, 1066, "", 0, 42, 0, -1);
setSeVolumeByWorkId( spep_0 + 272, SE017, 78 );
setStartTimeMs( SE017,  367 );
setBandpassFilter( spep_0 + 272, SE017, 24, 935 );
SE018 = playSeVer2( spep_0 + 320, 1278, "",spep_0 + 494, 38, 82, -1);
setSeVolumeByWorkId( spep_0 + 320, SE018, 73 );
setStartTimeMs( SE018,  1033 );
setPitch( spep_0 + 320, SE018, 400 );
setTimeStretch( SE018, 1.27, 30, 4 );

--気ダメ
SE019 = playSeVer2( spep_0 + 400, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE019, 168 );
SE020 = playSeVer2( spep_0 + 400, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE020, 71 );

--オーラ
SE021 = playSeVer2( spep_0 + 400, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE021, 63 );
SE022 = playSeVer2( spep_0 + 424, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 424, SE022, 63 );
SE023 = playSeVer2( spep_0 + 448, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE023, 63 );
SE024 = playSeVer2( spep_0 + 472, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 472, SE024, 63 );

--ラスト決め
SE025 = playSeVer2( spep_0 + 482, 20, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 482, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE026, 116 );
SE027 = playSeVer2( spep_0 + 482, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE027, 74 );

--オーラ
SE028 = playSeVer2( spep_0 + 496, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 496, SE028, 63 );
SE029 = playSeVer2( spep_0 + 520, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 520, SE029, 63 );
SE030 = playSeVer2( spep_0 + 544, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 544, SE030, 63 );

--ボイス
--「地球はオレが守ってみせる！」
playVoice( spep_0 + 207, 688 );
setVoiceVolume( spep_0 + 207, 688, 120 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

--終わり
endPhase( spep_0 + MAX_FRAME_0 );--558

else end