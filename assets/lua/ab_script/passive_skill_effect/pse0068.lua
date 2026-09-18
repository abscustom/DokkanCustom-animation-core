--1030480:LR_超サイヤ人ベジータ(天使)+超サイヤ人孫悟空(天使)_合流演出
--battle_301309
--pse0068

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3260;  -- 合流演出 ef_001

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
-- 合流演出
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 1250;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 合流演出（ef_001）
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

--ベジータに追いつく
SE002 = playSeVer2( spep_0 + 4, 1117, "", 0, 0, 0, -1);

--ベジータ受ける
SE003 = playSeVer2( spep_0 + 80, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE003, 81 );

--二人おりていく
SE004 = playSeVer2( spep_0 + 110, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE004, 65 );
setBandpassFilter( spep_0 + 110, SE004, 500, 24000 );
SE005 = playSeVer2( spep_0 + 142, 63, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE005, 75 );
setTimeStretch( SE005, 2, 30, 4 );

--立ち上がる
SE006 = playSeVer2( spep_0 + 1084, 1192, "",spep_0 + 1108, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 1084, SE006, 71 );
SE007 = playSeVer2( spep_0 + 1084, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1084, SE007, 170 );

--セリフカットイン
SE008 = playSeVer2( spep_0 + 1116, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1116, SE008, 63 );

-- ** ボイス ** --
--「ベジータ！！」
playVoice( spep_0 + 0, 920 );
setVoiceVolume( spep_0 + 0, 920, 100 );

--「カ…カカロット…よけいなマネだぞ…！！」
playVoice( spep_0 + 526, 921 );
setVoiceVolume( spep_0 + 526, 921, 112 );

--「ああ わかってる… オラもあんな強えやつ初めてだ」
playVoice( spep_0 + 768, 922 );
setVoiceVolume( spep_0 + 768, 922, 112 );

--「武者震いしてきたぜ」
playVoice( spep_0 + 1118, 923 );
setVoiceVolume( spep_0 + 1118, 923, 112 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1250f

else end
