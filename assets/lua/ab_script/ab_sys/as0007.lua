--4022600:スーパージャネンバ _気弾系必殺技無効
--sp_effect_b4_00191

setPhase(9);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

print("_SPECIAL_ENERGY_COLOR_");
print(_SPECIAL_ENERGY_COLOR_);

SP_01 = 157557;--身構え～フィニッシュ

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
setEffMoveKey( spep_1 + 240, eff, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_1 + 240, eff, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, eff, 0 );
setEffRotateKey( spep_1 + 240, eff, 0 );
setEffAlphaKey( spep_1 + 0, eff, 255 );
setEffAlphaKey( spep_1 + 240, eff, 255 );

--SE
--入り
SE001 = playSe( spep_1 + 0, 8 );
SE002 = playSe( spep_1 + 0, 1145 );
setSeVolumeByWorkId( spep_1 + 0, SE002, 0 );
setSeVolumeByWorkId( spep_1 + 1, SE002, 12.5 );
setSeVolumeByWorkId( spep_1 + 2, SE002, 25 );
setSeVolumeByWorkId( spep_1 + 3, SE002, 37.5 );
setSeVolumeByWorkId( spep_1 + 4, SE002, 50 );
setSeVolumeByWorkId( spep_1 + 5, SE002, 62.5 );
setSeVolumeByWorkId( spep_1 + 6, SE002, 75 );
setSeVolumeByWorkId( spep_1 + 7, SE002, 87.5 );
setSeVolumeByWorkId( spep_1 + 8, SE002, 100 );

--低音
SE003 = playSe( spep_1 + 0, 1271 );
stopSe( spep_1 + 146, SE003, 50 );

--両手構える
SE004 = playSe( spep_1 + 34, 1013 );

--バリア貼る
SE005 = playSe( spep_1 + 50, 1240 );
stopSe( spep_1 + 122, SE005, 20 );
SE006 = playSe( spep_1 + 50, 1291 );
setSeVolumeByWorkId( spep_1 + 50, SE006, 120 );

--気弾吸収する
SE007 = playSe( spep_1 + 70, 1296 );
setSeVolumeByWorkId( spep_1 + 70, SE007, 120 );
stopSe( spep_1 + 140, SE007, 36 );
SE008 = playSe( spep_1 + 70, 1284 );
stopSe( spep_1 + 140, SE008, 36 );
SE009 = playSe( spep_1 + 70, 1258 );
setSeVolumeByWorkId( spep_1 + 70, SE009, 52 );

--吸収終わり
SE010 = playSe( spep_1 + 146, 1217 );
setSeVolumeByWorkId( spep_1 + 146, SE010, 54 );
setPitch( spep_1 + 146, SE010, -200 );
setTimeStretch( SE010, 0.87, 10, 1 );

-- ** 背景 ** --
entryFadeBg( spep_1+0, 0, 240, 0, 0, 0, 0, 120);       --ベース暗め　背景

dealDamage(spep_1+74);
endPhase(230);