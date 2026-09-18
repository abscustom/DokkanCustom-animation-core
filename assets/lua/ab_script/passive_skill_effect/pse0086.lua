--1031390:LR_超サイヤ人ゴッドSS孫悟空+超サイヤ人ゴッドSSベジータ_合流演出
--battle_301330
--pse0086

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3277;  -- 合流演出 ef_001

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
-- 合流演出
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 730;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 合流演出（ef_001）
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
SE012 = playSeVer2( spep_0 + 420, 1227, "",spep_0 + 696, 94, 52, -1);
setSeVolumeByWorkId( spep_0 + 420, SE012, 63 );

--飛んでくる
SE003 = playSeVer2( spep_0 + 0, 1452, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 78 );
SE004 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 58, 1019, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 122, 1019, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 186, 1019, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 250, 1019, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 314, 1019, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 378, 1019, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 442, 1019, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 506, 1019, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 570, 1019, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 634, 1019, "",spep_0 + 698, 0, 40, -1);

--セリフカットイン
SE006 = playSeVer2( spep_0 + 94, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE006, 63 );

--止まる
SE017 = playSeVer2( spep_0 + 628, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 628, SE017, 79 );
SE018 = playSeVer2( spep_0 + 628, 1479, "",spep_0 + 732, 0, 34, -1);
SE019 = playSeVer2( spep_0 + 652, 1479, "",spep_0 + 740, 0, 24, -1);


-- ** ボイス ** --
--「結局、無策で来てしまったな」
playVoice( spep_0 + 100, 1012 );
setVoiceVolume( spep_0 + 100, 1012, 130 );

--「なあに、手はあるさ！必ずな」
playVoice( spep_0 + 258, 1013 );
setVoiceVolume( spep_0 + 258, 1013, 130 );

--「キサマは楽天的すぎる！」
playVoice( spep_0 + 484, 1014 );
setVoiceVolume( spep_0 + 484, 1014, 130 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); -- 730f

else end
