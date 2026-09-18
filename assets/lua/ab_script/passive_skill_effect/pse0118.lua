--1033820:UR_超サイヤ人ゴッド孫悟空_登場時演出
--sp_effect_b4_00429
--pse0118

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 164466;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 1044;

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
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 ); 

--セリフカットイン
SE002 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );

--炎にまみれる
SE003 = playSeVer2( spep_0 + 397, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 397, SE003, 40 );
SE004 = playSeVer2( spep_0 + 432, 1268, "",spep_0 + 804, 26, 121, -1);

--光奥に集まる
SE005 = playSeVer2( spep_0 + 580, 1265, "", 0, 0, 0, -1);
setPitch( spep_0 + 580, SE005, 500 );
setTimeStretch( SE005, 1.33, 30, 4 );
SE006 = playSeVer2( spep_0 + 581, 1127, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 581, SE006, 53 );
setPitch( spep_0 + 581, SE006, -300 );
setTimeStretch( SE006, 0.8, 30, 4 );
SE007 = playSeVer2( spep_0 + 621, 1241, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 675, 1303, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 675, SE008, 53 );

--画面遷移
SE009 = playSeVer2( spep_0 + 786, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 786, SE009, 84 );

--悟空近づく
SE010 = playSeVer2( spep_0 + 880, 44, "", 0, 0, 0, -1);

--服なびく
SE011 = playSeVer2( spep_0 + 907, 1331, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 981, 1332, "", 0, 0, 0, -1);

--ラスト決め
SE012 = playSeVer2( spep_0 + 938, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 938, SE012, 68 );
SE013 = playSeVer2( spep_0 + 938, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 938, SE013, 71 );

-- ** ボイス ** --
--「超サイヤ人ゴッドというのは その昔…」
playVoice( spep_0 + 0, 1196 );
setVoiceVolume( spep_0 + 0, 1196, 110 );

--「同じ仲間であるサイヤ人の悪業に疑問を感じ…」
playVoice( spep_0 + 239, 1197 );
setVoiceVolume( spep_0 + 239, 1197, 110 );

--「反乱を起こしたひと握りの正しいサイヤ人たちが偶然つくりだした救世主だ」
playVoice( spep_0 + 503, 1198 );
setVoiceVolume( spep_0 + 503, 1198, 110 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1044F

else end
