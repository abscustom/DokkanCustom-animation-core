-- 1027620: UR_超サイヤ人3孫悟空_スタンバイ
-- battle_301274
-- stb0007

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3208;  -- ef_001 

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
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- スタンバイ演出
------------------------------------------------------
MAX_FRAME_0 = 720;

-- ** エフェクト等 ** --
standby_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, standby_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, standby_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, standby_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, standby_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, standby_f, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, standby_f, 0 );
setEffAlphaKey( spep_0 + 0, standby_f, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, standby_f, 255 );

-- ** 音 ** --
--ビル崩れる
SE001 = playSeVer2( spep_0 + 18, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE001, 80 );
SE002 = playSeVer2( spep_0 + 18, 1044, "",spep_0 + 376, 0, 112, -1);
setSeVolumeByWorkId( spep_0 + 18, SE002, 61 );
SE003 = playSeVer2( spep_0 + 46, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE003, 74 );
SE004 = playSeVer2( spep_0 + 72, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE004, 81 );
SE005 = playSeVer2( spep_0 + 88, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE005, 88 );
SE006 = playSeVer2( spep_0 + 194, 1168, "", 0, 92, 0, -1);
setSeVolumeByWorkId( spep_0 + 194, SE006, 58 );
setStartTimeMs( SE006,  567 );

--セリフカットイン
SE007 = playSeVer2( spep_0 + 206, 1018, "", 0, 0, 0, -1);

--環境音
SE008 = playSeVer2( spep_0 + 216, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE008, 25 );

--画面遷移
SE009 = playSeVer2( spep_0 + 404, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 404, SE009, 81 );

--構える
SE010 = playSeVer2( spep_0 + 600, 1233, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 604, 1189, "", 0, 0, 0, -1);

--「うあああああ！！」
playVoice( spep_0 + 6, 738 );
setVoiceVolume( spep_0 + 6, 738, 120 );

--「貴様だけは絶対に許せねぇ！」
playVoice( spep_0 + 200, 739 );
setVoiceVolume( spep_0 + 200, 739, 100 );

--「勝負はやつが攻撃してくる一瞬のみ！」
playVoice( spep_0 + 404, 740 );
setVoiceVolume( spep_0 + 404, 740, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
endPhase( spep_0 + MAX_FRAME_0 ); -- 720F

else end