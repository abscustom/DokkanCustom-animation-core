--1032710:LR_ルード_アクティブ：レベル3
--battle_301347
--tf0085

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3298;  -- アクティブバフ演出 ef_001

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
-- アクティブバフ演出
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- セリフ〜演武〜セリフ
-------------------------------------------------

MAX_FRAME_0 = 992;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- アクティブバフ演出（ef_001）
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--泡出る
SE002 = playSeVer2( spep_0 + 0, 1470, "",spep_0 + 302, 0, 82, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 65 );
SE003 = playSeVer2( spep_0 + 0, 1471, "", 0, 38, 0, -1);

--湯気でる
SE004 = playSeVer2( spep_0 + 68, 1247, "",spep_0 + 262, 20, 150, -1);
setSeVolumeByWorkId( spep_0 + 68, SE004, 60 );
setPitch( spep_0 + 68, SE004, 400 );
setTimeStretch( SE004, 1.8, 30, 4 );

--体赤くなる
SE005 = playSeVer2( spep_0 + 158, 1226, "",spep_0 + 740, 0, 126, -1);
setSeVolumeByWorkId( spep_0 + 158, SE005, 75 );
SE006 = playSeVer2( spep_0 + 158, 1371, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 234, 1158, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 240, 1127, "", 0, 0, 0, -1);
setPitch( spep_0 + 240, SE008, -1200 );
setTimeStretch( SE008, 0.2, 30, 4 );

--目線カットイン
SE009 = playSeVer2( spep_0 + 434, 1018, "", 0, 0, 0, -1);

--光に包まれる
SE010 = playSeVer2( spep_0 + 440, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 440, SE010, 65 );
SE011 = playSeVer2( spep_0 + 440, 1264, "", 0, 0, 0, -1);

--環境音
SE012 = playSeVer2( spep_0 + 478, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 478, SE012, 25 );

--ズームアウト
SE013 = playSeVer2( spep_0 + 574, 1278, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_0 + 574, SE013, 67 );
setStartTimeMs( SE013,  1033 );
SE014 = playSeVer2( spep_0 + 592, 1072, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 636, 1137, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 636, SE015, 63 );

--煙出る
SE016 = playSeVer2( spep_0 + 646, 1219, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 646, SE016, 126 );
SE017 = playSeVer2( spep_0 + 744, 1219, "", 0, 0, 0, -1);
setPitch( spep_0 + 744, SE017, -300 );
setTimeStretch( SE017, 0.8, 30, 4 );


-- ** ボイス ** --
--「ルウゥドオオォォォ！」
playVoice( spep_0 + 616, 1160 );
setVoiceVolume( spep_0 + 616, 1160, 100 );


-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); -- 992f

else end