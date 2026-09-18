--1032330:UR_ガンマ2号+ピッコロ(潜在能力解放)_アクティブバフ：スーパーヒーローポーズ
--battle_301346
--bs0058

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3293; -- アクティブバフ演出 ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

ENABLE_AUTO_TIME_STRETCH(0.9);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- アクティブバフ演出
-------------------------------------------------

MAX_FRAME_0 = 412;

-- ** エフェクト等 ** --
base = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- アクティブバフ演出(ef_001)
setEffMoveKey( spep_0 + 0, base, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base, 0);
setEffAlphaKey( spep_0 + 0, base, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--回転する
SE001 = playSeVer2( spep_0 + 14, 1388, "",spep_0 + 110, 0, 32, -1);
setPitch( spep_0 + 14, SE001, -600 );
setTimeStretch( SE001, 0.6, 30, 4 );
SE002 = playSeVer2( spep_0 + 14, 1116, "",spep_0 + 126, 0, 56, -1);
SE003 = playSeVer2( spep_0 + 14, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 71 );

--足踏み出す
SE004 = playSeVer2( spep_0 + 98, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE004, 76 );
SE005 = playSeVer2( spep_0 + 124, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE005, 130 );
SE006 = playSeVer2( spep_0 + 128, 1012, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 132, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE007, 79 );

--ポーズ
SE008 = playSeVer2( spep_0 + 160, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE008, 153 );
SE009 = playSeVer2( spep_0 + 170, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE009, 122 );
SE010 = playSeVer2( spep_0 + 170, 1387, "",spep_0 + 222, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 170, SE010, 54 );

--セリフカットイン
SE011 = playSeVer2( spep_0 + 180, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE011, 63 );

--ラスト決めポーズ
SE012 = playSeVer2( spep_0 + 282, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 282, SE012, 75 );
SE013 = playSeVer2( spep_0 + 298, 1452, "",spep_0 + 376, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 298, SE013, 78 );
SE014 = playSeVer2( spep_0 + 298, 1222, "",spep_0 + 362, 0, 18, -1);
SE015 = playSeVer2( spep_0 + 298, 1254, "",spep_0 + 362, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 298, SE015, 55 );

--集中線
SE016 = playSeVer2( spep_0 + 326, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE016, 78 );
SE017 = playSeVer2( spep_0 + 326, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE017, 71 );


-- ** ボイス ** --
--「スーパーヒーローの力」
playVoice( spep_0 + 182, 1121 );
setVoiceVolume( spep_0 + 182, 1121, 128 );

--「みせてやろう！」
playVoice( spep_0 + 292, 1122 );
setVoiceVolume( spep_0 + 292, 1122, 128 );


--終わり
endPhase( spep_0 + MAX_FRAME_0); -- 412f

else end