-- 1027460: LR_リブリアン&カクンサ&ロージィ_登場時演出
-- sp_effect_b4_00305
-- pse0036

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162322;  -- 三人が映っている～変身後の三人が映っている ef_001

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
-- 三人が映っている～変身後の三人が映っている ef_001 (1190F)
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 1190;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 384, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
--SE002 = playSeVer2( spep_0 + 4, 1232, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_0 + 4, SE002, 71 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 12, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE003, 56 );

--足音
SE004 = playSeVer2( spep_0 + 21, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 21, SE004, 178 );
SE005 = playSeVer2( spep_0 + 23, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 23, SE005, 158 );

--ポーズとる
SE006 = playSeVer2( spep_0 + 166, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 172, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 172, SE007, 73 );

--手広げる
SE008 = playSeVer2( spep_0 + 262, 1003, "", 0, 0, 0, -1);

--リブリアンカットイン
SE009 = playSeVer2( spep_0 + 300, 1042, "", 0, 0, 0, -1);

--カクンサロージイカットイン
SE010 = playSeVer2( spep_0 + 318, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE010, 136 );
setPitch( spep_0 + 318, SE010, 1200 );
setTimeStretch( SE010, 1.8, 30, 4 );

--変身中
SE011 = playSeVer2( spep_0 + 356, 1115, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 376, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE013, 42 );
SE014 = playSeVer2( spep_0 + 376, 1265, "", 0, 0, 0, -1);

--腕あげる
SE012 = playSeVer2( spep_0 + 370, 1189, "", 0, 0, 0, -1);

--頭から星出る
SE015 = playSeVer2( spep_0 + 526, 1432, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 526, SE015, 130 );
setStartTimeMs( SE015,  233 );
SE016 = playSeVer2( spep_0 + 530, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 530, SE016, 130 );

--ハート飛んでくる
SE017 = playSeVer2( spep_0 + 622, 1431, "",spep_0 + 708, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 622, SE017, 300 );
setPitch( spep_0 + 622, SE017, 300 );
setTimeStretch( SE017, 1.2, 30, 4 );

--腕変身
SE018 = playSeVer2( spep_0 + 678, 1432, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 678, SE018, 176 );
setTimeStretch( SE018, 0.99, 30, 4 );

--足にハート飛んでくる
SE019 = playSeVer2( spep_0 + 716, 1431, "",spep_0 + 802, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 716, SE019, 300 );
setPitch( spep_0 + 716, SE019, 300 );
setTimeStretch( SE019, 1.2, 30, 4 );

--足変身
SE020 = playSeVer2( spep_0 + 772, 1432, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 772, SE020, 176 );
setTimeStretch( SE020, 0.99, 30, 4 );

--顔正面
SE021 = playSeVer2( spep_0 + 832, 1433, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 832, SE021, 162 );

--顔変身
SE022 = playSeVer2( spep_0 + 896, 1263, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 904, 1115, "", 0, 0, 0, -1);

--手でハート作る
SE024 = playSeVer2( spep_0 + 984, 1431, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 984, SE024, 224 );
setStartTimeMs( SE024,  1333 );
SE025 = playSeVer2( spep_0 + 994, 1434, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 994, SE025, 126 );

--仲間集まる
SE026 = playSeVer2( spep_0 + 1070, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1070, SE026, 63 );

--ラスト決め
SE027 = playSeVer2( spep_0 + 1134, 1115, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 1134, 1062, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「咲かせましょう　響かせましょう」
playVoice( spep_0 + 5, 707 );
setVoiceVolume( spep_0 + 5, 707, 100 );
--「愛と勝利の歌を！」
playVoice( spep_0 + 180, 708 );
setVoiceVolume( spep_0 + 180, 708, 100 );
--「フォーメーション！」
playVoice( spep_0 + 284, 709 );
setVoiceVolume( spep_0 + 284, 709, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1190

else end
