--1026530：孫悟空_気弾無効(敵側)
--battle_301254
--as0018

setPhase(9);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

print("_SPECIAL_ENERGY_COLOR_");
print(_SPECIAL_ENERGY_COLOR_);

--エフェクト(味方)
SP_01r = 3189;   --孫悟空_気弾無効 ef_001r

-- ズーム許可
setEnvZoomEnable(0, 0);
setVisibleUI(0, 0);
removeAllEffect(2);--必要

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

-- ** 冒頭に白フェードを出す ** --
entryFade(4, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fadeシーン切り替わり予定

------------------------------------------------------
--孫悟空_気弾無効
------------------------------------------------------
--flipAttackerSide(0)

spep_1 = 4;

-- ** エフェクト等 ** --
eff = entryEffect( spep_1 + 0, SP_01r, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_1 + 356, eff, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, eff, -1.0, 1.0 );
setEffScaleKey( spep_1 + 356, eff, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, eff, 0 );
setEffRotateKey( spep_1 + 356, eff, 0 );
setEffAlphaKey( spep_1 + 0, eff, 255 );
setEffAlphaKey( spep_1 + 356, eff, 255 );

-- ** 音 ** --
--腕上げる
SE001 = playSeVer2( spep_1 + 16, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 16, SE001, 82 );
SE002 = playSeVer2( spep_1 + 16, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 16, SE002, 141 );
SE003 = playSeVer2( spep_1 + 20, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 20, SE003, 79 );

--踏ん張る
SE004 = playSeVer2( spep_1 + 70, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 70, SE004, 207 );
SE005 = playSeVer2( spep_1 + 70, 1007, "", 0, 0, 0, -1);

--気弾飛んでくる
SE006 = playSeVer2( spep_1 + 118, 1215, "",spep_1 + 302, 94, 86, -1);
setStartTimeMs( SE006,  467 );

--うでクロスに
SE007 = playSeVer2( spep_1 + 104, 1004, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 104, 1233, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 104, 1330, "",spep_1 + 166, 0, 32, -1);
SE010 = playSeVer2( spep_1 + 116, 1006, "", 0, 0, 0, -1);

--気弾受ける
SE011 = playSeVer2( spep_1 + 176, 1168, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_1 + 176, SE011, 79 );
setStartTimeMs( SE011,  717 );

--気弾飛んでくる
SE012 = playSeVer2( spep_1 + 146, 1145, "", 0, 0, 0, -1);

--気弾受ける
SE013 = playSeVer2( spep_1 + 178, 1023, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 178, 1156, "", 0, 0, 0, -1);

--最後決め
SE015 = playSeVer2( spep_1 + 274, 1072, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 296, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 356 + 2, 0, 0, 0, 0, 255 );  --黒　背景

dealDamage( spep_1 + 256 );
endPhase( spep_1 + 356 );
