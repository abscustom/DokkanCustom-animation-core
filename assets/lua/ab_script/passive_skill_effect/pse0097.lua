--1032360:UR_アルティメット孫悟飯+ガンマ1号_合流演出
--battle_301344
--pse0097

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3294;  -- 合流演出 ef_001


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
-- 合流演出
-------------------------------------------------
MAX_FRAME_0 = 468;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); --合流演出(ef_001)
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

--セリフカットイン
SE001 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--ガンマ手振り
SE003 = playSeVer2( spep_0 + 70, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE003, 52 );

--悟飯セリフカットイン
SE004 = playSeVer2( spep_0 + 114, 1189, "", 0, 0, 0, -1);

--悟飯振り返る
SE005 = playSeVer2( spep_0 + 182, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE005, 63 );

--悟飯踏み出す
SE006 = playSeVer2( spep_0 + 366, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 366, SE006, 166 );

--ガンマ踏み出す
SE007 = playSeVer2( spep_0 + 402, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE007, 178 );
SE008 = playSeVer2( spep_0 + 402, 1387, "",spep_0 + 434, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 402, SE008, 72 );
setPitch( spep_0 + 402, SE008, -500 );
setTimeStretch( SE008, 0.67, 30, 4 );


-- ** ボイス ** --

--「正義のためにわたしといっしょに闘ってくれ！」
playVoice( spep_0 + 0, 1126 );
setVoiceVolume( spep_0 + 0, 1126, 118 );

--「わかった！今は力を合わせよう！」
playVoice( spep_0 + 188, 1127 );
setVoiceVolume( spep_0 + 188, 1127, 118 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --468F

end