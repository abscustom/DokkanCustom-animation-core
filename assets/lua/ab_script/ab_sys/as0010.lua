--1023360:人造人間17号(未来)&18号(未来)_気弾無効_味方側
--sp_effect_b4_00205

setPhase(9);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

print("_SPECIAL_ENERGY_COLOR_");
print(_SPECIAL_ENERGY_COLOR_);

SP_01 = 158688;--自キャラ

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
-- 身構え～フィニッシュ
------------------------------------------------------
flipAttackerSide(0)

spep_1 = 4;
-- ** エフェクト等 ** --
eff = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_1 + 400, eff, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_1 + 400, eff, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, eff, 0 );
setEffRotateKey( spep_1 + 400, eff, 0 );
setEffAlphaKey( spep_1 + 0, eff, 255 );
setEffAlphaKey( spep_1 + 400, eff, 255 );

--SE
--気弾飛んでくる
SE001 = playSeVer2( spep_1 + 0, 1022, "",spep_1 + 90, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 0, SE001, 84 );
SE002 = playSeVer2( spep_1 + 0, 1177, "",spep_1 + 90, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 0, SE002, 79 );

--爆発
SE004 = playSeVer2( spep_1 + 74, 1024, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 74, 1023, "", 0, 0, 0, -1);

--煙
SE003 = playSeVer2( spep_1 + 110, 1159, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_1 + 110, SE003, 140 );
setStartTimeMs( SE003,  1450 );

--バリア
SE006 = playSeVer2( spep_1 + 174, 1295, "", 0, 36, 0, -1);
setSeVolumeByWorkId( spep_1 + 174, SE006, 295 );
setStartTimeMs( SE006,  350 );

--バリア終わり
SE007 = playSeVer2( spep_1 + 324, 1328, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_1 + 324, SE007, 68 );
setTimeStretch( SE007, 0.6, 30, 4 );
setPitch( spep_1 + 324, SE007, -600 );
setStartTimeMs( SE007,  167 );


-- ** 背景 ** --
--entryFadeBg( spep_1+0, 0, 400, 0, 0, 0, 0, 120);       --ベース暗め　背景

dealDamage(spep_1+74);
endPhase(390);