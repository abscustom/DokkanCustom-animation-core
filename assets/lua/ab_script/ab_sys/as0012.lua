--1024930:メタルクウラ_格闘無効
--sp_effect_b4_00249

setPhase(9);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

print("_SPECIAL_ENERGY_COLOR_");
print(_SPECIAL_ENERGY_COLOR_);

SP_01=	160404	;--	攻撃されて壊れた左腕が再生する354

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
-- 攻撃を受ける
------------------------------------------------------
flipAttackerSide(0)

spep_1 = 4;

-- ** エフェクト等 ** --
effect = entryEffect( spep_1 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, effect, 0, 0, 0 );
setEffMoveKey( spep_1 + 708, effect, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, effect, 1.0, 1.0 );
setEffScaleKey( spep_1 + 708, effect, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, effect, 0 );
setEffRotateKey( spep_1 + 708, effect, 0 );
setEffAlphaKey( spep_1 + 0, effect, 255 );
setEffAlphaKey( spep_1 + 708, effect, 255 );

--SE
--攻撃食らう
SE001 = playSeVer2( spep_1 + 0, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE001, 82 );
SE002 = playSeVer2( spep_1 + 14, 1027, "", 0, 0, 0, -1);

--腕壊れる
SE003 = playSeVer2( spep_1 + 32, 1384, "", 0, 0, 0, -1);

--環境音
SE004 = playSeVer2( spep_1 + 222, 1349, "", 0, 62, 0, -1);
setSeVolumeByWorkId( spep_1 + 222, SE004, 20 );

--腕再生する
SE005 = playSeVer2( spep_1 + 258, 1385, "",spep_1 + 490, 0, 26, -1);
SE006 = playSeVer2( spep_1 + 294, 1385, "",spep_1 + 490, 0, 26, -1);

--拳握る
SE007 = playSeVer2( spep_1 + 464, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 464, 1150, "",spep_1 + 498, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 464, SE008, 65 );

--ズーム
SE009 = playSeVer2( spep_1 + 528, 1072, "", 0, 0, 0, -1);

--振り向く
SE010 = playSeVer2( spep_1 + 596, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 596, SE010, 65 );
SE011 = playSeVer2( spep_1 + 596, 1383, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 596, SE011, 38 );

-- ダメージ表示
dealDamage(spep_1 + 598);

-- ** 背景 ** --
entryFadeBg( spep_1+0, 0, 710, 0, 0, 0, 0, 120);       --ベース暗め　背景

endPhase(spep_1 + 698);