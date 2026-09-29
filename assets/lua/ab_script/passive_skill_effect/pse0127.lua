--1034150:LR_魔人ブウ(純粋)_登場時演出
--battle_301366
--pse0127

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 3319; --登場時演出 ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);

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

--setAlphaKey( 0, 1, 255 );



ENABLE_AUTO_TIME_STRETCH(0.9);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
-- 登場時演出
------------------------------------------------------
MAX_FRAME_0 = 1240;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場時演出(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --

--セリフカットイン
SE001 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
SE003 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 25 );
setPitch( spep_0 + 0, SE003, -600 );
setTimeStretch( SE003, 0.6, 30, 4 );
--空あおぐ
SE004 = playSeVer2( spep_0 + 351, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 355, 1233, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 360, 1293, "", 0, 0, 0, -1);
--身体に異変が
SE007 = playSeVer2( spep_0 + 388, 1457, "",spep_0 + 560, 0, 31, -1);
SE008 = playSeVer2( spep_0 + 393, 1330, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 399, 1190, "", 0, 8, 0, -1);
setStartTimeMs( SE009,  17 );
SE010 = playSeVer2( spep_0 + 448, 1330, "", 0, 0, 0, -1);
setPitch( spep_0 + 448, SE010, -600 );
setTimeStretch( SE010, 0.6, 30, 4 );
SE011 = playSeVer2( spep_0 + 463, 1153, "", 0, 13, 0, -1);
setStartTimeMs( SE011,  50 );
--吐く
SE012 = playSeVer2( spep_0 + 558, 1134, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 558, SE012, 48 );
SE013 = playSeVer2( spep_0 + 567, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 567, SE013, 72 );
--集中線
SE014 = playSeVer2( spep_0 + 615, 48, "", 0, 0, 0, -1);
--画面遷移
SE015 = playSeVer2( spep_0 + 732, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 732, SE015, 79 );
SE016 = playSeVer2( spep_0 + 925, 8, "", 0, 0, 0, -1);
--ラスト決め
SE017 = playSeVer2( spep_0 + 1041, 1237, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1041, SE017, 72 );
SE018 = playSeVer2( spep_0 + 1041, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1041, SE018, 69 );

-- ** ボイス ** --
--「ウギャギャギャオーーー！！！」
playVoice( spep_0 + 1034, 1250 );
setVoiceVolume( spep_0 + 1034, 1250, 120 );

--「か…かかか……あ…あ…」
playVoice( spep_0 + 2, 1249 );
setVoiceVolume( spep_0 + 2, 1249, 128 );

-----------------------------
-- 終了
-----------------------------
endPhase( spep_0 + MAX_FRAME_0); -- 1240f

end