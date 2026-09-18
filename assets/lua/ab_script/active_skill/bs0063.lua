--1033840:UR_メタルクウラ軍団_アクティブバフ：生命エネルギー吸収
--sp_effect_a9_00171
--bs0063

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164500;  -- 書き文字 ef_001


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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);
-------------------------------------------------
-- アクティブバフ
-------------------------------------------------
MAX_FRAME_0 = 958;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 書き文字(ef_001)
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

--境界ひかる
SE001 = playSeVer2( spep_0 + 467, 1374, "", 0, 34, 0, -1);
setSeVolumeByWorkId( spep_0 + 467, SE001, 49 );
setStartTimeMs( SE001,  8083 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
SE003 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 25 );

--セリフカットイン
SE004 = playSeVer2( spep_0 + 16, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 63 );

--エネルギー吸収
SE005 = playSeVer2( spep_0 + 202, 1243, "",spep_0 + 476, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 202, SE005, 110 );
SE006 = playSeVer2( spep_0 + 202, 1513, "",spep_0 + 458, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE006, 70 );

--境界ひかる
SE007 = playSeVer2( spep_0 + 407, 1495, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 407, SE007, 30 );
setPitch( spep_0 + 407, SE007, 500 );
setTimeStretch( SE007, 1.33, 30, 4 );
SE008 = playSeVer2( spep_0 + 482, 1204, "", 0, 0, 0, -1);

--画面遷移
SE009 = playSeVer2( spep_0 + 564, 1232, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 573, 44, "", 0, 0, 0, -1);
setTimeStretch( SE010, 2, 30, 4 );

--ラスト決め
SE011 = playSeVer2( spep_0 + 872, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 872, SE011, 60 );
SE012 = playSeVer2( spep_0 + 872, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 872, SE012, 62 );
SE013 = playSeVer2( spep_0 + 873, 1467, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 873, SE013, 71 );

-- ** ボイス ** --

--「その桁外れな超サイヤ人の生命エネルギーを全てもらう！！」
playVoice( spep_0 + 20, 1214 );
setVoiceVolume( spep_0 + 20, 1214, 100 );

--「フハハハハハ…！さらに強くなったぞ！！」
playVoice( spep_0 + 562, 1215 );
setVoiceVolume( spep_0 + 562, 1215, 100 );
-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --958F

end
