--1033840:UR_メタルクウラ軍団_登場時演出
--sp_effect_b4_00434
--pse0120

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 164481;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 838;

setupMovie(0 , SP_01, 0, 1);

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
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 1158, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--画面遷移
SE003 = playSeVer2( spep_0 + 58, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE003, 73 );
--大量に歩いてくる
SE004 = playSeVer2( spep_0 + 123, 1044, "",spep_0 + 355, 35, 28, -1);
setSeVolumeByWorkId( spep_0 + 123, SE004, 58 );
SE005 = playSeVer2( spep_0 + 147, 1135, "",spep_0 + 159, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 147, SE005, 39 );
SE006 = playSeVer2( spep_0 + 161, 1472, "",spep_0 + 177, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 161, SE006, 47 );
SE007 = playSeVer2( spep_0 + 161, 1135, "",spep_0 + 173, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 161, SE007, 36 );
setPitch( spep_0 + 161, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );
SE008 = playSeVer2( spep_0 + 173, 1135, "",spep_0 + 185, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 173, SE008, 49 );
setPitch( spep_0 + 173, SE008, -200 );
setTimeStretch( SE008, 0.87, 30, 4 );
SE009 = playSeVer2( spep_0 + 180, 1472, "",spep_0 + 196, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 180, SE009, 52 );
SE010 = playSeVer2( spep_0 + 192, 1472, "",spep_0 + 208, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 192, SE010, 50 );
--セリフカットイン
SE011 = playSeVer2( spep_0 + 198, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE011, 63 );
--大量に歩いてくる
SE012 = playSeVer2( spep_0 + 206, 1472, "",spep_0 + 222, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 206, SE012, 51 );
SE013 = playSeVer2( spep_0 + 211, 1135, "",spep_0 + 223, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 211, SE013, 45 );
SE014 = playSeVer2( spep_0 + 214, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE014, 50 );
SE015 = playSeVer2( spep_0 + 226, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE015, 50 );
SE016 = playSeVer2( spep_0 + 233, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 233, SE016, 54 );
setPitch( spep_0 + 233, SE016, -600 );
setTimeStretch( SE016, 0.6, 30, 4 );
SE017 = playSeVer2( spep_0 + 251, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 251, SE017, 46 );
SE018 = playSeVer2( spep_0 + 259, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 259, SE018, 57 );
SE019 = playSeVer2( spep_0 + 271, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 271, SE019, 59 );
setPitch( spep_0 + 271, SE019, -900 );
setTimeStretch( SE019, 0.4, 30, 4 );
SE020 = playSeVer2( spep_0 + 277, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 277, SE020, 68 );
SE021 = playSeVer2( spep_0 + 296, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE021, 50 );
SE022 = playSeVer2( spep_0 + 312, 1472, "", 0, 0, 0, -1);
--空気音
SE023 = playSeVer2( spep_0 + 337, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 337, SE023, 39 );
--ラスト決め
SE024 = playSeVer2( spep_0 + 730, 1369, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「これだけのメタルクウラを敵に回して闘える力が…」
playVoice( spep_0 + 206, 1212 );
setVoiceVolume( spep_0 + 206, 1212, 106 );
--「おまえたちにまだ残っているかな？」
playVoice( spep_0 + 483, 1213 );
setVoiceVolume( spep_0 + 483, 1213, 106 );


-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --838

else end
