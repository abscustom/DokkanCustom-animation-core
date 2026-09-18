--1028160：UR_ヒルデガーン_登場時演出
--battle_301276
--pse0042

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3214;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 754;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出 ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 音 ** --
--空にサークルできる
SE001 = playSeVer2( spep_0 + 0, 1240, "",spep_0 + 94, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 136 );
setPitch( spep_0 + 0, SE001, -500 );
setTimeStretch( SE001, 0.67, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1334, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 150 );
setTimeStretch( SE002, 0.71, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1241, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 62 );
--稲光走る
SE004 = playSeVer2( spep_0 + 56, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE004, 141 );
SE005 = playSeVer2( spep_0 + 76, 1342, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 90, 1230, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE006, 158 );
SE007 = playSeVer2( spep_0 + 104, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE007, 50 );
SE008 = playSeVer2( spep_0 + 114, 1226, "",spep_0 + 418, 0, 70, -1);
SE009 = playSeVer2( spep_0 + 180, 1231, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 234, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE010, 54 );
SE011 = playSeVer2( spep_0 + 238, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE011, 65 );
setPitch( spep_0 + 238, SE011, -400 );
setTimeStretch( SE011, 0.73, 30, 4 );
SE012 = playSeVer2( spep_0 + 266, 1231, "", 0, 0, 0, -1);
setPitch( spep_0 + 266, SE012, 300 );
setTimeStretch( SE012, 1.2, 30, 4 );
--下半身に落ちる
SE013 = playSeVer2( spep_0 + 330, 1068, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 330, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE014, 141 );
SE015 = playSeVer2( spep_0 + 344, 1181, "",spep_0 + 526, 0, 78, -1);
--光あふれる
SE016 = playSeVer2( spep_0 + 434, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 434, SE016, 86 );
SE017 = playSeVer2( spep_0 + 434, 1127, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 434, SE017, 74 );
--環境音
SE018 = playSeVer2( spep_0 + 518, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 518, SE018, 25 );
--身体起き上がる
SE019 = playSeVer2( spep_0 + 530, 1190, "", 0, 18, 0, -1);
SE021 = playSeVer2( spep_0 + 552, 1153, "", 0, 16, 0, -1);
--セリフカットイン	
SE020 = playSeVer2( spep_0 + 536, 1018, "", 0, 0, 0, -1);
--ラスト動く
SE022 = playSeVer2( spep_0 + 638, 1188, "", 0, 20, 0, -1);
setStartTimeMs( SE022,  133 );
SE023 = playSeVer2( spep_0 + 648, 1182, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 648, SE023, 73 );
setStartTimeMs( SE023,  100 );
SE024 = playSeVer2( spep_0 + 646, 1116, "",spep_0 + 692, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 646, SE024, 76 );

-- ** ボイス ** --
--「ゴオオオ――!!」
playVoice( spep_0 + 548, 743 );
setVoiceVolume( spep_0 + 548, 743, 140 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --754

else end
