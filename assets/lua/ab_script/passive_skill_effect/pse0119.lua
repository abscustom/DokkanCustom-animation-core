--1034220:UR_ビルス_登場時演出
--sp_effect_b4_00433
--pse0119

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 164496;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 948;

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
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 22 );
--宇宙が広がる
SE002 = playSeVer2( spep_0 + 0, 1263, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 60 );
SE003 = playSeVer2( spep_0 + 0, 1371, "",spep_0 + 638, 46, 150, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 52 );
setPitch( spep_0 + 0, SE003, -600 );
setTimeStretch( SE003, 0.75, 30, 4 );
--セリフカットイン
SE004 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE004, 63 );
--宇宙が広がる
SE005 = playSeVer2( spep_0 + 10, 1184, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE005, 49 );
SE006 = playSeVer2( spep_0 + 25, 1288, "",spep_0 + 700, 0, 146, -1);
setSeVolumeByWorkId( spep_0 + 25, SE006, 52 );
SE007 = playSeVer2( spep_0 + 61, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 61, SE007, 37 );
SE008 = playSeVer2( spep_0 + 116, 1305, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 196, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE009, 38 );
setTimeStretch( SE009, 1.43, 30, 4 );
--塔に近づく
SE010 = playSeVer2( spep_0 + 314, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE010, 78 );
--ビルスに近づく
SE011 = playSeVer2( spep_0 + 646, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 646, SE011, 68 );
--尻尾動く
SE012 = playSeVer2( spep_0 + 660, 1385, "",spep_0 + 762, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 660, SE012, 65 );
setPitch( spep_0 + 660, SE012, -500 );
setTimeStretch( SE012, 0.5, 30, 4 );
--カメラパン
SE013 = playSeVer2( spep_0 + 746, 63, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 746, SE013, 58 );
SE014 = playSeVer2( spep_0 + 746, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 746, SE014, 72 );
--ラスト決め
SE015 = playSeVer2( spep_0 + 822, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 822, SE015, 63 );
SE016 = playSeVer2( spep_0 + 822, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 822, SE016, 63 );

-- ** ボイス ** --

--「今回は やけに早いお目覚めですね…」
playVoice( spep_0 + 9, 1208 );
setVoiceVolume( spep_0 + 9, 1208, 132 );

--「やれやれ…平和とは実に短いもんじゃのう…」
playVoice( spep_0 + 247, 1209 );
setVoiceVolume( spep_0 + 247, 1209, 132 );


-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --948

else end
