--1033700:UR_栽培マン_登場時演出
--sp_effect_b4_00431
--pse0117

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 164457;  -- 登場時演出 ef_001

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

setupMovie(0 , SP_01, 0, 1);

MAX_FRAME_0 = 658;

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
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--入り
SE002 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);
--地面なぞる
SE003 = playSeVer2( spep_0 + 88, 1294, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE003, 178 );
setStartTimeMs( SE003, 300 );
--タネおとす
SE004 = playSeVer2( spep_0 + 74, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE004, 224 );
setBandpassFilter	( spep_0 + 74, SE004, 3600, 24000 );
--液垂らす
SE005 = playSeVer2( spep_0 + 180, 27, "",spep_0 + 190, 0, 4, -1);
SE006 = playSeVer2( spep_0 + 180, 1113, "", 0, 0, 0, -1);
--土にしみこむ
SE007 = playSeVer2( spep_0 + 180, 1442, "",spep_0 + 298, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 180, SE007, 146 );
--液垂らす
SE008 = playSeVer2( spep_0 + 222, 27, "",spep_0 + 230, 0, 4, -1);
SE009 = playSeVer2( spep_0 + 222, 1113, "", 0, 0, 0, -1);
--土にしみこむ
SE010 = playSeVer2( spep_0 + 236, 1418, "",spep_0 + 318, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 236, SE010, 89 );
setBandpassFilter	( spep_0 + 236, SE010, 1100, 24000 );
SE011 = playSeVer2( spep_0 + 236, 1292, "",spep_0 + 314, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 236, SE011, 133 );
--地面から頭出す
SE012 = playSeVer2( spep_0 + 304, 1469, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 304, 1044, "",spep_0 + 362, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 304, SE013, 71 );
SE014 = playSeVer2( spep_0 + 350, 1008, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 350, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 350, SE015, 72 );
SE016 = playSeVer2( spep_0 + 350, 1044, "",spep_0 + 414, 0, 34, -1);
SE017 = playSeVer2( spep_0 + 398, 1044, "",spep_0 + 458, 0, 32, -1);
SE018 = playSeVer2( spep_0 + 402, 1153, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 424, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 424, SE019, 58 );
SE020 = playSeVer2( spep_0 + 424, 1044, "",spep_0 + 484, 0, 32, -1);
SE021 = playSeVer2( spep_0 + 468, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 468, SE021, 67 );
SE022 = playSeVer2( spep_0 + 468, 1044, "",spep_0 + 528, 0, 32, -1);
SE023 = playSeVer2( spep_0 + 468, 1008, "", 0, 0, 0, -1);
--画面遷移
SE024 = playSeVer2( spep_0 + 522, 44, "", 0, 0, 0, -1);
--セリフカットイン
SE025 = playSeVer2( spep_0 + 538, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 538, SE025, 63 );
--ラスト決め
SE026 = playSeVer2( spep_0 + 540, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 540, SE026, 63 );

-- ** ボイス ** --
--「ぎゃっぎゃっぎゃ。」
playVoice( spep_0 + 546, 1182 );
setVoiceVolume( spep_0 + 546, 1182, 112 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --658

else end
