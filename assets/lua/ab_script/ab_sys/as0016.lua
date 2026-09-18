--4026210：UR_超17号_気弾吸収演出
--sp_effect_b4_00275
--as0016

setPhase(9);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

print("_SPECIAL_ENERGY_COLOR_");
print(_SPECIAL_ENERGY_COLOR_);

SP_01 = 161585; --気弾吸収 ef_001

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
-- 気弾吸収
------------------------------------------------------
flipAttackerSide(0)

spep_1 = 4;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0 ); -- ef_001
setEffMoveKey( spep_1 + 0, base_0, 0, 0, 0 );
setEffMoveKey( spep_1 + 406, base_0, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, base_0, 1.0, 1.0 );
setEffScaleKey( spep_1 + 406, base_0, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, base_0, 0 );
setEffRotateKey( spep_1 + 406, base_0, 0 );
setEffAlphaKey( spep_1 + 0, base_0, 255 );
setEffAlphaKey( spep_1 + 406, base_0, 255 );

--SE
--気弾飛んでくる
SE001 = playSeVer2( spep_1 + 0, 1021, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_1 + 0, 1145, "", 0, 0, 0, -1);

--腕広げる
SE003 = playSeVer2( spep_1 + 18, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 18, SE003, 79 );

--気弾中
SE004 = playSeVer2( spep_1 + 44, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 44, SE004, 79 );
setTimeStretch( SE004, 1.17, 30, 4 );
SE005 = playSeVer2( spep_1 + 44, 1211, "",spep_1 + 342, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 44, SE005, 184 );

--気弾ヒット
SE006 = playSeVer2( spep_1 + 44, 1011, "", 0, 0, 0, -1);

--見開く
SE007 = playSeVer2( spep_1 + 132, 1198, "", 0, 4, 0, 0.6);
setStartTimeMs( SE007,  350 );
SE008 = playSeVer2( spep_1 + 134, 1046, "", 0, 0, 0, 0.6);

--腹盛られる
SE009 = playSeVer2( spep_1 + 182, 1190, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 182, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 182, SE010, 59 );

--気弾消失
SE011 = playSeVer2( spep_1 + 288, 1374, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_1 + 288, SE011, 63 );
setStartTimeMs( SE011,  933 );

--肩盛られる
SE012 = playSeVer2( spep_1 + 236, 1190, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 236, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 236, SE013, 59 );

--気弾消失
SE014 = playSeVer2( spep_1 + 298, 1313, "", 0, 8, 0, 0.6);
setStartTimeMs( SE014,  383 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 410, 0, 0, 0, 0, 120);       --ベース暗め　背景

recover(spep_1 + 306);
endPhase(spep_1 + 396);