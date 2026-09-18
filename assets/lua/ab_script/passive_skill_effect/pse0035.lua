-- 1027430：UR_人造人間17号&18号_登場時演出
-- battle_301265
-- pse0035

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3202;  -- 登場時演出	ef_001

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
-- 登場時演出	ef_001 (1022F)
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 1022;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 85 );
--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
--首を振る
SE003 = playSeVer2( spep_0 + 84, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE003, 65 );
setBandpassFilter	( spep_0 + 84, SE003, 24, 1090 );
--セリフカットイン	
SE004 = playSeVer2( spep_0 + 120, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE004, 56 );
--17号腕を前に出す
SE005 = playSeVer2( spep_0 + 430, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 430, SE005, 141 );
SE006 = playSeVer2( spep_0 + 438, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 438, SE006, 77 );
SE007 = playSeVer2( spep_0 + 438, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 438, SE007, 71 );
--17号集中線
SE008 = playSeVer2( spep_0 + 472, 1237, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 472, SE008, 49 );
setBandpassFilter( spep_0 + 472, SE008, 600, 24000 );
SE009 = playSeVer2( spep_0 + 474, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 474, SE009, 59 );
SE010 = playSeVer2( spep_0 + 474, 1289, "",spep_0 + 570, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 474, SE010, 79 );
setPitch( spep_0 + 474, SE010, 200 );
setTimeStretch( SE010, 1.13, 30, 4 );
--18号アップ
SE011 = playSeVer2( spep_0 + 552, 44, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 554, 1264, "",spep_0 + 698, 0, 104, -1);
setSeVolumeByWorkId( spep_0 + 554, SE012, 65 );
--18号腕前に出す
SE013 = playSeVer2( spep_0 + 738, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 746, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 746, SE014, 71 );
SE015 = playSeVer2( spep_0 + 746, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 746, SE015, 71 );
--18号集中線
SE016 = playSeVer2( spep_0 + 892, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 892, SE016, 64 );
SE017 = playSeVer2( spep_0 + 892, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 892, SE017, 64 );
SE018 = playSeVer2( spep_0 + 892, 1289, "",spep_0 + 990, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 892, SE018, 59 );
setPitch( spep_0 + 892, SE018, 400 );
setTimeStretch( SE018, 1.27, 30, 4 );
--最後きめ
SE019 = playSeVer2( spep_0 + 968, 1068, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_0 + 968, SE019, 68 );
SE020 = playSeVer2( spep_0 + 972, 1116, "",spep_0 + 1014, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 972, SE020, 87 );

-- ** ボイス ** --
--「我が名は人造人間17号」
playVoice( spep_0 + 118, 698 );
setVoiceVolume( spep_0 + 118, 698, 100 );

--「どちらが強いか　決着をつけよう！」
playVoice( spep_0 + 312, 699 );
setVoiceVolume( spep_0 + 312, 699, 100 );

--「そして我が名は人造人間18号」
playVoice( spep_0 + 550, 700 );
setVoiceVolume( spep_0 + 550, 700, 100 );

--「第7宇宙の女神！」
playVoice( spep_0 + 791, 701 );
setVoiceVolume( spep_0 + 791, 701, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1042

else end
