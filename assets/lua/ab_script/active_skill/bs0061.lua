-- 4033560:UR_ナッパ+ベジータ_アクティブバフ：ゲームの終わり
-- sp_effect_b4_00422
-- bs0061

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164441; -- アクティブバフ演出 ef_001

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

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- アクティブバフ演出
-------------------------------------------------

MAX_FRAME_0 = 760+8;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- アクティブバフ演出 (ef_001)
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 372 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 462 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 372 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 372 + OFFSET_X, 1, 179.8, -73.8 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 179.8, -73.8 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 188.8, -89.8 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 188.8, -89.8 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 179.8, -64.1 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 179.8, -64.1 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 179.8, -79.7 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 179.8, -79.7 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 179.8, -73.8 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 179.8, -73.8 , 0 );

setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 1.35, 1.35 );

setRotateKey( spep_0 + 372 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, -4.9 );

-- ** 音 ** --
--気弾飛んでいくる
SE001 = playSeVer2( spep_0 + 0, 1022, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1215, "",spep_0 + 190, 0, 94, -1);

--爆発
SE003 = playSeVer2( spep_0 + 72, 1159, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 72, 1024, "", 0, 0, 0, -1);

--二人歩いてくる
SE005 = playSeVer2( spep_0 + 170, 1106, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 178, 1106, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 234, 1107, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 238, 1108, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 288, 1106, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 292, 1107, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 330, 1107, "", 0, 0, 0, -1);

--セリフカットイン
SE012 = playSeVer2( spep_0 + 370, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 370, SE012, 63 );

--二人歩いてくる
SE013 = playSeVer2( spep_0 + 372, 1106, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 418, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 418, SE014, 120 );
SE015 = playSeVer2( spep_0 + 418, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 418, SE015, 148 );
SE016 = playSeVer2( spep_0 + 420, 1014, "",spep_0 + 488, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 420, SE016, 71 );

--背景音
SE017 = playSeVer2( spep_0 + 462, 1350, "", 0, 0, 0, -1);

--腕動かす
SE018 = playSeVer2( spep_0 + 474, 1004, "", 0, 0, 0, -1);
setTimeStretch( SE018, 1.39, 30, 4 );

--背景音
SE019 = playSeVer2( spep_0 + 518, 1229, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 524, 1418, "", 0, 0, 0, -1);
setPitch( spep_0 + 524, SE022, -400 );
setTimeStretch( SE022, 0.73, 30, 4 );

--構える
SE020 = playSeVer2( spep_0 + 520, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 520, SE020, 133 );
SE021 = playSeVer2( spep_0 + 520, 1233, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 528, 1010, "",spep_0 + 556, 0, 12, -1);

--ラスト決め
SE024 = playSeVer2( spep_0 + 716, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 716, SE024, 70 );

-- ** ボイス ** --
--「オレにやらせてくれ」
playVoice( spep_0 + 362, 1180 );
setVoiceVolume( spep_0 + 362, 1180, 112 );

--「へっへっへ…せいぜい楽しませてくれよ…」
playVoice( spep_0 + 494, 1181 );
setVoiceVolume( spep_0 + 494, 1181, 112 );

--終わり
endPhase( spep_0 + MAX_FRAME_0); -- 760f

else end