--1033940:LR_ターレス_登場時演出
--sp_effect_b4_00437
--pse0122

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 164503;  -- 最初〜最後まで ef_001

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
-- 最初〜最後まで
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 658;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初〜最後まで（ef_001）
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
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 23 );

--PC音
SE003 = playSeVer2( spep_0 + 0, 1244, "",spep_0 + 100, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 29 );
SE004 = playSeVer2( spep_0 + 18, 53, "",spep_0 + 92, 0, 11, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 18 );
SE005 = playSeVer2( spep_0 + 30, 1244, "",spep_0 + 91, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 30, SE005, 19 );
setPitch( spep_0 + 30, SE005, 400 );
setTimeStretch( SE005, 1.27, 30, 4 );
SE006 = playSeVer2( spep_0 + 52, 53, "",spep_0 + 101, 0, 13, -1);
setSeVolumeByWorkId( spep_0 + 52, SE006, 25 );
setPitch( spep_0 + 52, SE006, -800 );
setTimeStretch( SE006, 0.47, 30, 4 );
SE007 = playSeVer2( spep_0 + 71, 1244, "",spep_0 + 172, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 71, SE007, 22 );
setPitch( spep_0 + 71, SE007, 100 );
setTimeStretch( SE007, 1.07, 30, 4 );
SE008 = playSeVer2( spep_0 + 78, 53, "",spep_0 + 152, 0, 11, -1);
setSeVolumeByWorkId( spep_0 + 78, SE008, 15 );
setPitch( spep_0 + 78, SE008, -200 );
setTimeStretch( SE008, 0.87, 30, 4 );
SE009 = playSeVer2( spep_0 + 100, 53, "",spep_0 + 175, 0, 11, -1);
setSeVolumeByWorkId( spep_0 + 100, SE009, 25 );
SE010 = playSeVer2( spep_0 + 122, 1244, "",spep_0 + 219, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 122, SE010, 23 );
setPitch( spep_0 + 122, SE010, 200 );
setTimeStretch( SE010, 1.13, 30, 4 );

--歩いてくる
SE011 = playSeVer2( spep_0 + 132, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE011, 172 );
SE012 = playSeVer2( spep_0 + 160, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE012, 170 );
SE013 = playSeVer2( spep_0 + 166, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE013, 188 );

--環境音
SE014 = playSeVer2( spep_0 + 190, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 190, SE014, 29 );

--セリフカットイン
SE015 = playSeVer2( spep_0 + 212, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 212, SE015, 63 );

--ラスト決め
SE016 = playSeVer2( spep_0 + 610, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 610, SE016, 48 );
setPitch( spep_0 + 610, SE016, -300 );
setTimeStretch( SE016, 0.8, 30, 4 );


-- ** ボイス ** --
--「ふふ…」
playVoice( spep_0 + 203, 1216 );
setVoiceVolume( spep_0 + 203, 1216, 110 );

--「地球が神精樹の実を育てるのにもってこいの星だったとは…」
playVoice( spep_0 + 268, 1217 );
setVoiceVolume( spep_0 + 268, 1217, 110 );


-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); -- 658f

else end