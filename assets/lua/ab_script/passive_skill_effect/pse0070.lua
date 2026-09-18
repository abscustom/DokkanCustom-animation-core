--1030640:UR_グロリオ_登場時演出
--sp_effect_b4_00366
--pse0070

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 163510;  -- 飛行船降下〜終わりまで ef_001

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
-- 飛行船降下〜終わりまで
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 1258;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 飛行船降下〜終わりまで（ef_001）
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
--空光る
SE002 = playSeVer2( spep_0 + 6, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 158 );
SE003 = playSeVer2( spep_0 + 6, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 56 );
SE004 = playSeVer2( spep_0 + 10, 1042, "", 0, 0, 0, -1);

--飛空挺おりてくる
SE005 = playSeVer2( spep_0 + 60, 1183, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 60, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE006, 79 );
SE007 = playSeVer2( spep_0 + 70, 1116, "",spep_0 + 142, 0, 40, -1);
SE008 = playSeVer2( spep_0 + 86, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE008, 46 );
SE009 = playSeVer2( spep_0 + 106, 1019, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 170, 1019, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 234, 1019, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 298, 1019, "", 0, 0, 0, -1);

--風圧
SE012 = playSeVer2( spep_0 + 270, 1188, "", 0, 24, 0, -1);
setStartTimeMs( SE012,  233 );
SE013 = playSeVer2( spep_0 + 256, 1427, "", 0, 0, 0, -1);

--着地
SE015 = playSeVer2( spep_0 + 324, 1392, "", 0, 0, 0, -1);

--環境音
SE016 = playSeVer2( spep_0 + 324, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 324, SE016, 25 );

--蓋開く
SE017 = playSeVer2( spep_0 + 434, 1219, "",spep_0 + 632, 0, 98, -1);
SE018 = playSeVer2( spep_0 + 450, 91, "", 0, 0, 0, -1);

--出てきて着地
SE019 = playSeVer2( spep_0 + 564, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 564, SE019, 290 );
setBandpassFilter( spep_0 + 564, SE019, 24, 870 );
SE020 = playSeVer2( spep_0 + 596, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 596, SE020, 301 );
setBandpassFilter( spep_0 + 596, SE020, 24, 870 );

--画面遷移
SE021 = playSeVer2( spep_0 + 628, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 628, SE021, 60 );
setTimeStretch( SE021, 1.23, 30, 4 );
SE022 = playSeVer2( spep_0 + 748, 1117, "", 0, 34, 0, -1);
setSeVolumeByWorkId( spep_0 + 748, SE022, 58 );

--セリフカットイン
SE023 = playSeVer2( spep_0 + 858, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 858, SE023, 63 );

--ラスト決め
SE024 = playSeVer2( spep_0 + 1036, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1036, SE024, 76 );
SE025 = playSeVer2( spep_0 + 1036, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1036, SE025, 79 );

-- ** ボイス ** --
--「オレは、グロリオ」
playVoice( spep_0 + 862, 895 );
setVoiceVolume( spep_0 + 862, 895, 114 );

--「第３魔界の王から命を受けてやってきた」
playVoice( spep_0 + 1028, 896 );
setVoiceVolume( spep_0 + 1028, 896, 114 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1258f

else end
