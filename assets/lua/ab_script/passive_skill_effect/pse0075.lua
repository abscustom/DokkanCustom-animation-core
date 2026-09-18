--1030830:UR_ビルス_登場時演出
--battle_301318
--pse0075

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3264;  -- 登場時演出 ef_001


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

-------------------------------------------------
-- 登場時演出
-------------------------------------------------
MAX_FRAME_0 = 584;

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

--集中線
SE001 = playSeVer2( spep_0 + 0, 20, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 48, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 31, "", 0, 0, 0, -1);

--環境音
SE004 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 312, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 25 );

--プリン消える
SE005 = playSeVer2( spep_0 + 64, 34, "",spep_0 + 92, 0, 14, -1);
SE006 = playSeVer2( spep_0 + 64, 1113, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 122, 34, "",spep_0 + 152, 0, 16, -1);
SE008 = playSeVer2( spep_0 + 122, 1113, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 184, 34, "",spep_0 + 214, 0, 16, -1);
SE010 = playSeVer2( spep_0 + 184, 1113, "", 0, 0, 0, -1);

--画面遷移
SE011 = playSeVer2( spep_0 + 238, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE011, 79 );

--地響き
SE012 = playSeVer2( spep_0 + 240, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE012, 79 );
SE013 = playSeVer2( spep_0 + 240, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE013, 60 );

--セリフカットイン
SE014 = playSeVer2( spep_0 + 274, 1018, "", 0, 0, 0, -1);

--気が爆発する
SE015 = playSeVer2( spep_0 + 438, 1022, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 438, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 438, SE016, 63 );
SE017 = playSeVer2( spep_0 + 438, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 438, SE017, 85 );
SE018 = playSeVer2( spep_0 + 438, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 438, SE018, 73 );
SE019 = playSeVer2( spep_0 + 438, 1228, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 438, SE019, 67 );
setPitch( spep_0 + 438, SE019, -600 );
setTimeStretch( SE019, 0.6, 30, 4 );

-- ** ボイス ** --

--「完全にキレたぞー」
playVoice( spep_0 + 276, 931 );
setVoiceVolume( spep_0 + 276, 931, 118 );

endPhase( spep_0 + MAX_FRAME_0); -- 584F

end
