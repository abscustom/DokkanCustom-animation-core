--1025560:アルティメット孫悟飯_気弾無効演出
--sp_effect_a9_00098

setPhase(9);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

print("_SPECIAL_ENERGY_COLOR_");
print(_SPECIAL_ENERGY_COLOR_);

SP_01 = 161102;--自キャラ

-- ズーム許可
setEnvZoomEnable(0, 0);
setVisibleUI(0, 0);
removeAllEffect(2);--必要
ENABLE_AUTO_TIME_STRETCH(0.9);


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
flipAttackerSide(0)

spep_1 = 4;
-- ** エフェクト等 ** --
eff = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_1 + 194, eff, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_1 + 194, eff, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, eff, 0 );
setEffRotateKey( spep_1 + 194, eff, 0 );
setEffAlphaKey( spep_1 + 0, eff, 255 );
setEffAlphaKey( spep_1 + 194, eff, 255 );

--SE
--敵気弾
SE001 = playSeVer2( spep_1 + 0, 1027, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_1 + 0, 1145, "",spep_1 + 60, 0, 8, -1);
SE003 = playSeVer2( spep_1 + 0, 1312, "",spep_1 + 60, 0, 8, -1);

--腕振る
SE004 = playSeVer2( spep_1 + 12, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 12, SE004, 141 );

--気弾弾く
SE005 = playSeVer2( spep_1 + 42, 1110, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 42, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 42, SE006, 63 );
SE007 = playSeVer2( spep_1 + 42, 1312, "",spep_1 + 120, 0, 38, -1);
SE008 = playSeVer2( spep_1 + 42, 1026, "",spep_1 + 102, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 42, SE008, 85 );
SE009 = playSeVer2( spep_1 + 42, 1338, "",spep_1 + 102, 0, 30, -1);

--気弾降り注ぐ
SE010 = playSeVer2( spep_1 + 82, 1121, "",spep_1 + 144, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 82, SE010, 74 );
SE011 = playSeVer2( spep_1 + 98, 1016, "", 0, 0, 0, -1);

--爆発
SE012 = playSeVer2( spep_1 + 100, 1021, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 104, 1024, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 120, 1068, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 126, 1159, "", 0, 0, 0, -1);

--気弾降り注ぐ
SE014 = playSeVer2( spep_1 + 110, 1016, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 122, 1016, "", 0, 0, 0, -1);

-- ** 背景 ** --
entryFadeBg( spep_1+0, 0, 194, 0, 0, 0, 0, 120);       --ベース暗め　背景

dealDamage( spep_1 + 56 );
endPhase(spep_1 + 184);