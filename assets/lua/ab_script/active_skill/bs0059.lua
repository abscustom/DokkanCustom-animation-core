-- 1032360:UR_アルティメット孫悟飯+ガンマ1号_アクティブバフ：仙豆
-- battle_301345
-- bs0059

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 3295; -- アクティブバフ演出 ef_001

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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- アクティブバフ演出
-------------------------------------------------

MAX_FRAME_0 = 620;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- アクティブバフ演出 (ef_001)
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_0 + 0, base_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 342, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--仙豆食べる
SE002 = playSeVer2( spep_0 + 36, 1070, "",spep_0 + 48, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 64, 1071, "",spep_0 + 84, 0, 2, -1);
SE004 = playSeVer2( spep_0 + 98, 1071, "",spep_0 + 116, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 132, 1071, "",spep_0 + 152, 0, 2, -1);
SE006 = playSeVer2( spep_0 + 166, 1134, "",spep_0 + 190, 2, 12, -1);
setStartTimeMs( SE006, 133 );
setBandpassFilter	( spep_0 + 166, SE006, 570, 24000 );

--セリフカットイン
SE007 = playSeVer2( spep_0 + 202, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE007, 63 );

--気ダメ
SE008 = playSeVer2( spep_0 + 202, 1356, "",spep_0 + 326, 0, 78, -1);
SE009 = playSeVer2( spep_0 + 236, 1035, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 236, 1503, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 244, 1504, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 266, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE012, 59 );

--気が弾ける
SE013 = playSeVer2( spep_0 + 314, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE013, 153 );
SE014 = playSeVer2( spep_0 + 322, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE014, 53 );
SE015 = playSeVer2( spep_0 + 322, 1043, "", 0, 0, 0, -1);

--オーラ
SE016 = playSeVer2( spep_0 + 338, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 338, SE016, 50 );
SE017 = playSeVer2( spep_0 + 356, 1513, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 356, SE017, 68 );
SE018 = playSeVer2( spep_0 + 362, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE018, 50 );

--画面遷移
SE019 = playSeVer2( spep_0 + 370, 1072, "", 0, 0, 0, -1);

--オーラ
SE020 = playSeVer2( spep_0 + 386, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE020, 50 );
SE021 = playSeVer2( spep_0 + 410, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE021, 50 );
SE022 = playSeVer2( spep_0 + 434, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 434, SE022, 50 );
SE023 = playSeVer2( spep_0 + 458, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 458, SE023, 50 );
SE024 = playSeVer2( spep_0 + 482, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE024, 50 );

--ラスト決め
SE025 = playSeVer2( spep_0 + 494, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 494, SE025, 52 );
SE026 = playSeVer2( spep_0 + 494, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 494, SE026, 81 );

--オーラ
SE027 = playSeVer2( spep_0 + 506, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 506, SE027, 50 );
SE028 = playSeVer2( spep_0 + 530, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 530, SE028, 50 );
SE029 = playSeVer2( spep_0 + 554, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 554, SE029, 50 );
SE030 = playSeVer2( spep_0 + 578, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 578, SE030, 50 );


-- ** ボイス ** --

--「はあっ！！」
playVoice( spep_0 + 180, 1128 );
setVoiceVolume( spep_0 + 180, 1128, 140 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 620f

else end