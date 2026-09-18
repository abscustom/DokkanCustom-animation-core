--1023380:ドクター・ゲロ&人造人間19号_気弾吸収_敵用
--sp_effect_a3_00087

setPhase(9);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

print("_SPECIAL_ENERGY_COLOR_");
print(_SPECIAL_ENERGY_COLOR_);

SP_01 = 158684;--気弾が迫る
SP_02 = 158686;--気弾を吸収する

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
-- 気弾が迫る
------------------------------------------------------
--flipAttackerSide(0)

spep_1 = 4;
-- ** エフェクト等 ** --
beam = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_1 + 86, beam, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, beam, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, beam, 0 );
setEffRotateKey( spep_1 + 86, beam, 0 );
setEffAlphaKey( spep_1 + 0, beam, 255 );
setEffAlphaKey( spep_1 + 86, beam, 255 );

--SE
--入り
SE001 = playSeVer2( spep_1 + 6, 1072, "", 0, 4, 0, -1);
setStartTimeMs( SE001,  333 );

--気弾飛んでくる
SE002 = playSeVer2( spep_1 + 14, 1022, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_1 + 14, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 14, SE003, 82 );

-- ** 背景 ** --
entryFadeBg( spep_1+0, 0, 90, 0, 0, 0, 0, 120);       --ベース暗め　背景

spep_2 =spep_1 + 86;
------------------------------------------------------
-- 気弾を吸収する
------------------------------------------------------
-- ** エフェクト等 ** --
absorption = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, absorption, 0, 0, 0 );
setEffMoveKey( spep_2 + 392, absorption, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, absorption, 1.0, 1.0 );
setEffScaleKey( spep_2 + 392, absorption, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, absorption, 0 );
setEffRotateKey( spep_2 + 392, absorption, 0 );
setEffAlphaKey( spep_2 + 0, absorption, 255 );
setEffAlphaKey( spep_2 + 392, absorption, 255 );

--SE
--二人手広げる
SE004 = playSeVer2( spep_2 + 4, 1233, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE004, 170 );
setStartTimeMs( SE004,  150 );
setPitch( spep_2 + 4, SE004, 300 );
setTimeStretch( SE004, 1.2, 30, 4 );
SE005 = playSeVer2( spep_2 + 0, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE005, 153 );

--気弾吸収
SE006 = playSeVer2( spep_2 + 60, 1321, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE006, 130 );
setStartTimeMs( SE006,  717 );
SE007 = playSeVer2( spep_2 + 62, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE007, 70 );

SE008 = playSeVer2( spep_2 + 66, 1214, "", 0, 0, 0, -1);
stopSe( spep_2 + 260, SE008, 10 );

SE009 = playSeVer2( spep_2 + 66, 1227, "", 0, 0, 0, -1);
stopSe( spep_2 + 260, SE009, 10 );

SE010 = playSeVer2( spep_2 + 66, 1158, "", 0, 0, 0, -1);
stopSe( spep_2 + 260, SE010, 10 );

SE011 = playSeVer2( spep_2 + 142, 15, "", 0, 0, 0, -1);
setTimeStretch( SE011, 1.54, 30, 4 );
stopSe( spep_2 + 260, SE011, 10 );

--吸収終わり
SE012 = playSeVer2( spep_2 + 252, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 252, SE012, 254 );
stopSe( spep_2 + 272, SE012, 18 );

-- ** 背景 ** --
entryFadeBg( spep_2+0, 0, 200, 0, 0, 0, 0, 120);       --ベース暗め　背景

recover(spep_2+138);
endPhase(spep_2 + 382);