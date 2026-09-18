--1025530:ガンマ2号_気弾無効
--sp_effect_b4_00261

setPhase(9);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

print("_SPECIAL_ENERGY_COLOR_");
print(_SPECIAL_ENERGY_COLOR_);

SP_01 = 160742;--自キャラ

-- ズーム許可
setEnvZoomEnable(0, 0);
setVisibleUI(0, 0);
removeAllEffect(2);--必要
ENABLE_AUTO_TIME_STRETCH(0.7);


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
-- 身構え～フィニッシュ
------------------------------------------------------
--flipAttackerSide(0)

spep_1 = 4;
-- ** エフェクト等 ** --
eff = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_1 + 150, eff, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_1 + 150, eff, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, eff, 0 );
setEffRotateKey( spep_1 + 150, eff, 0 );
setEffAlphaKey( spep_1 + 0, eff, 255 );
setEffAlphaKey( spep_1 + 150, eff, 255 );

--SE
--入り
SE001 = playSeVer2( spep_1 + 0, 1116, "",spep_1 + 44, 0, 16, -1);
SE002 = playSeVer2( spep_1 + 0, 1117, "",spep_1 + 36, 0, 8, -1);
SE003 = playSeVer2( spep_1 + 0, 1278, "",spep_1 + 48, 0, 18, -1);

--バリア張り始め
SE005 = playSeVer2( spep_1-8 + 34, 1313, "",spep_1-8 + 64, 0, 14, 0.6);
setSeVolumeByWorkId( spep_1-8 + 34, SE005, 139 );
SE006 = playSeVer2( spep_1-8 + 34, 1311, "",spep_1-8 + 64, 0, 14, 0.6);
setSeVolumeByWorkId( spep_1-8 + 34, SE006, 145 );

--バリア張る
SE004 = playSeVer2( spep_1-8 + 52, 1242, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_1-8 + 52, SE004, 122 );
setStartTimeMs( SE004,  600 );
SE008 = playSeVer2( spep_1-8 + 54, 1243, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1-8 + 54, SE008, 122 );
SE009 = playSeVer2( spep_1-8 + 54, 1252, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1-8 + 54, 1043, "",spep_1-8 + 98, 0, 20, -1);
SE011 = playSeVer2( spep_1-8 + 54, 1038, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1-8 + 54, SE011, 164 );
setPitch( spep_1-8 + 54, SE011, 200 );
setTimeStretch( SE011, 1.13, 30, 4 );

--気弾受ける
SE007 = playSeVer2( spep_1-8 + 68, 1180, "", 0, 4, 0, -1);
setStartTimeMs( SE007,  500 );
SE012 = playSeVer2( spep_1-8 + 70, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1-8 + 70, SE012, 112 );
setPitch( spep_1-8 + 70, SE012, 600 );
setTimeStretch( SE012, 1.4, 30, 4 );
SE013 = playSeVer2( spep_1-8 + 76, 1022, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1-8 + 78, 1024, "", 0, 0, 0, -1);

-- ** 背景 ** --
entryFadeBg( spep_1+0, 0, 150, 0, 0, 0, 0, 120);       --ベース暗め　背景

dealDamage( spep_1 + 72 );
endPhase(spep_1 + 140);