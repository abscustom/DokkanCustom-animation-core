--1031500:LR_超一星龍_登場時演出
--battle_301331
--pse0089

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3276;  -- 登場時演出 ef_001


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 登場時演出
-------------------------------------------------
MAX_FRAME_0 = 1264;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --

--爆発予兆
SE001 = playSeVer2( spep_0 + 0, 1179, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1128, "",spep_0 + 180, 0, 128, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 74 );

--爆発
SE003 = playSeVer2( spep_0 + 42, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE003, 75 );

--風圧
SE004 = playSeVer2( spep_0 + 90, 1427, "", 0, 0, 0, -1);

--水飛沫あがる
SE005 = playSeVer2( spep_0 + 194, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 194, SE005, 251 );
SE006 = playSeVer2( spep_0 + 202, 1164, "",spep_0 + 498, 0, 142, -1);
SE007 = playSeVer2( spep_0 + 222, 1024, "", 0, 0, 0, -1);

--暴風
SE008 = playSeVer2( spep_0 + 276, 1278, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 276, 1258, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 292, 1314, "",spep_0 + 756, 0, 236, -1);

--収束させる
SE011 = playSeVer2( spep_0 + 494, 1507, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 494, SE011, 112 );
SE012 = playSeVer2( spep_0 + 524, 1506, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 524, SE012, 105 );

--環境音
SE013 = playSeVer2( spep_0 + 504, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 504, SE013, 25 );

--収束する
SE014 = playSeVer2( spep_0 + 550, 1168, "", 0, 106, 0, -1);
setSeVolumeByWorkId( spep_0 + 550, SE014, 37 );
setStartTimeMs( SE014,  67 );

--おりてくる
SE015 = playSeVer2( spep_0 + 708, 63, "",spep_0 + 788, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 708, SE015, 73 );
SE016 = playSeVer2( spep_0 + 708, 1508, "",spep_0 + 798, 0, 26, -1);
SE017 = playSeVer2( spep_0 + 766, 1472, "", 0, 0, 0, -1);

--セリフカットイン
SE018 = playSeVer2( spep_0 + 804, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 804, SE018, 63 );

--握る
SE019 = playSeVer2( spep_0 + 1006, 1472, "",spep_0 + 1036, 0, 8, -1);
SE020 = playSeVer2( spep_0 + 1006, 1006, "", 0, 0, 0, -1);

--ラスト決め
SE021 = playSeVer2( spep_0 + 1152, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1152, SE021, 56 );

-- ** ボイス ** --

--「全宇宙をこのオレのマイナスパワーで破壊しつくしてやる！」
playVoice( spep_0 + 804, 1044 );
setVoiceVolume( spep_0 + 804, 1044, 118 );

--「フハハハ！」
playVoice( spep_0 + 1140, 1045 );
setVoiceVolume( spep_0 + 1140, 1045, 118 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1270F

end