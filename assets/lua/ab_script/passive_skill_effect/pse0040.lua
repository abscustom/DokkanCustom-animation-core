--1027680：UR_人造人間21号(変身・悪)_登場時演出
--battle_301271
--pse0040

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3207;  -- 登場時演出 ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
--changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
--setDisp( 0, 1, 0 );

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

-- setMoveKey(   0,   1,    0, -5000,   0 );
-- setMoveKey(   1,   1,    0, -5000,   0 );
-- setMoveKey(   2,   1,    0, -5000,   0 );
-- setMoveKey(   3,   1,    0, -5000,   0 );
-- setMoveKey(   4,   1,    0, -5000,   0 );
-- setMoveKey(   5,   1,    0, -5000,   0 );
-- setMoveKey(   6,   1,    0, -5000,   0 );
-- setScaleKey(  0,   1,  1.6, 1.6 );
-- setScaleKey(  1,   1,  1.6, 1.6 );
-- setScaleKey(  2,   1,  1.6, 1.6 );
-- setScaleKey(  3,   1,  1.6, 1.6 );
-- setScaleKey(  4,   1,  1.6, 1.6 );
-- setScaleKey(  5,   1,  1.6, 1.6 );
-- setScaleKey(  6,   1,  1.6, 1.6 );
-- setRotateKey( 0,   1,  0 );
-- setRotateKey( 1,   1,  0 );
-- setRotateKey( 2,   1,  0 );
-- setRotateKey( 3,   1,  0 );
-- setRotateKey( 4,   1,  0 );
-- setRotateKey( 5,   1,  0 );
-- setRotateKey( 6,   1,  0 );

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 登場時演出
------------------------------------------------------
spep_0 = 0;


MAX_FRAME_0 = 358;

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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 40 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 328.2, -177.2 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 328.2, -177.2 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 328.2, -177.2 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 328.2, -177.2 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 328.2, -177.2 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 328.2, -177.2 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 328.2, -177.2 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 328.2, -177.2 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 337.9, -179.2 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 337.9, -179.2 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 366.8, -185.4 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 366.8, -185.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 415.1, -195.6 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 415.1, -195.6 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 482.7, -209.9 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 482.7, -209.9 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 569.6, -228.2 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 569.6, -228.2 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 675.8, -250.7 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 675.8, -250.7 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 801.4, -277.2 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 801.4, -277.2 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 926.9, -303.7 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 926.9, -303.7 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 1033.1, -326.2 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 1033.1, -326.2 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 1120, -344.5 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 1120, -344.5 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 1187.6, -358.8 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 1187.6, -358.8 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 1235.9, -369 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 1235.9, -369 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 1264.9, -375.2 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 1264.9, -375.2 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 1274.6, -377.2 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 1274.6, -377.2 , 0 );

setScaleKey( spep_0 + 0, 1, 4, 4 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 6.13, 6.13 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 6.13, 6.13 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 6.9, 6.9 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 6.9, 6.9 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 7.67, 7.67 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 7.67, 7.67 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 8.32, 8.32 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 8.32, 8.32 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 8.85, 8.85 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 8.85, 8.85 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 9.26, 9.26 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 9.26, 9.26 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 9.56, 9.56 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 9.56, 9.56 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 9.74, 9.74 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 9.74, 9.74 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 9.8, 9.8 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 9.8, 9.8 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 40 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 6, 1072, "", 0, 10, 0, -1);
setStartTimeMs( SE001,  233 );
SE003 = playSeVer2( spep_0 + 20, 1235, "",spep_0 + 74, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 86 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--セリフカットイン
SE004 = playSeVer2( spep_0 + 64, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE004, 79 );

--腕ひらく
SE005 = playSeVer2( spep_0 + 108, 1116, "",spep_0 + 160, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 108, SE005, 91 );

--集中線
SE006 = playSeVer2( spep_0 + 220, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE006, 46 );
SE007 = playSeVer2( spep_0 + 220, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE007, 82 );

--気ダメ
SE008 = playSeVer2( spep_0 + 244, 1035, "", 0, 0, 0, -1);

--電撃
SE009 = playSeVer2( spep_0 + 244, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE009, 35 );

--オーラ
SE010 = playSeVer2( spep_0 + 250, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250, SE010, 56 );
SE011 = playSeVer2( spep_0 + 274, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 274, SE011, 56 );
SE012 = playSeVer2( spep_0 + 298, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 298, SE012, 56 );
SE013 = playSeVer2( spep_0 + 322, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE013, 56 );

-- ** ボイス ** --
--「さあ、ティータイムを始めましょう……！」
playVoice( spep_0 + 70, 725 );
setVoiceVolume( spep_0 + 80, 725, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --358

else end
