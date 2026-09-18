--1024360:SSR_ベビー(幼生体)_リベンジブラスト
--sp_effect_a9_00091
--sp2373

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 9; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--エフェクト(味方)
SP_01 = 159748;	--セリフカットイン、左からin	ef_001		キャラ、エフェクト半透明黒込み
SP_02 = 159750;	--気をためて放出	ef_002		キャラ、背景、エフェクト※敵味方共通
SP_03 = 159751;	--気弾着弾、敵を画面外に飛ばす	ef_003		敵キャラより手前、エフェクト、文字込み
SP_03b = 159753;	--気弾着弾、敵を画面外に飛ばす	ef_004		敵キャラより背後、半透明黒

--エフェクト(てき)
SP_01r = 159749;	--セリフカットイン、右からin	ef_001_r		敵側エフェクト
SP_03r = 159752;	--気弾着弾、敵を画面外に飛ばす	ef_003_r		敵側エフェクト


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5136,   0);
setMoveKey(   1,   0,    0, -5136,   0);
setMoveKey(   2,   0,    0, -5136,   0);
setMoveKey(   3,   0,    0, -5136,   0);
setMoveKey(   4,   0,    0, -5136,   0);
setMoveKey(   5,   0,    0, -5136,   0);
setMoveKey(   6,   0,    0, -5136,   0);
setScaleKey(  0,   0,  1.6, 1.6);
setScaleKey(  1,   0,  1.6, 1.6);
setScaleKey(  2,   0,  1.6, 1.6);
setScaleKey(  3,   0,  1.6, 1.6);
setScaleKey(  4,   0,  1.6, 1.6);
setScaleKey(  5,   0,  1.6, 1.6);
setScaleKey(  6,   0,  1.6, 1.6);
setRotateKey( 0,   0,  0);
setRotateKey( 1,   0,  0);
setRotateKey( 2,   0,  0);
setRotateKey( 3,   0,  0);
setRotateKey( 4,   0,  0);
setRotateKey( 5,   0,  0);
setRotateKey( 6,   0,  0);

setMoveKey(   0,   1,    0, -5136,   0);
setMoveKey(   1,   1,    0, -5136,   0);
setMoveKey(   2,   1,    0, -5136,   0);
setMoveKey(   3,   1,    0, -5136,   0);
setMoveKey(   4,   1,    0, -5136,   0);
setMoveKey(   5,   1,    0, -5136,   0);
setMoveKey(   6,   1,    0, -5136,   0);
setScaleKey(  0,   1,  1.6, 1.6);
setScaleKey(  1,   1,  1.6, 1.6);
setScaleKey(  2,   1,  1.6, 1.6);
setScaleKey(  3,   1,  1.6, 1.6);
setScaleKey(  4,   1,  1.6, 1.6);
setScaleKey(  5,   1,  1.6, 1.6);
setScaleKey(  6,   1,  1.6, 1.6);
setRotateKey( 0,   1,  0);
setRotateKey( 1,   1,  0);
setRotateKey( 2,   1,  0);
setRotateKey( 3,   1,  0);
setRotateKey( 4,   1,  0);
setRotateKey( 5,   1,  0);
setRotateKey( 6,   1,  0);

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- セリフカットイン、左からin
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --セリフカットイン、左からin	ef_001		キャラ、エフェクト半透明黒込み
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 140 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, -1.0, 1.0);
setEffScaleKey( spep_1 + 140 -4, base_1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 140 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 140 -5, base_1, 255);
setEffAlphaKey( spep_1 + 140 -4, base_1, 0);


-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 140 -4 -18, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


---------------------------------------------------------------------------------------------------
-- 集中線
---------------------------------------------------------------------------------------------------
-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_1 + 64, 906, 140 -4 -64, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 64, shuchusen_1, 000, 20 );
setEffMoveKey( spep_1 + 64, shuchusen_1, 0, 0, 0 );
setEffMoveKey( spep_1 + 140 -4 -64, shuchusen_1, 0, 0, 0 );
setEffScaleKey( spep_1 + 64, shuchusen_1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 140 -4 -64, shuchusen_1, 1.6, 1.6 );
setEffRotateKey( spep_1 + 64, shuchusen_1, 0 );
setEffRotateKey( spep_1 + 140 -4 -64, shuchusen_1, 0 );
setEffAlphaKey( spep_1 + 64, shuchusen_1, 255 );
setEffAlphaKey( spep_1 + 140 -4 -64, shuchusen_1, 255 );


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 52;

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, 80, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--フレームイン
SE001 = playSeVer2( spep_1 + 16, 8, "", 0, 0, 0, -1);
--顔カットイン
SE002 = playSeVer2( spep_1 + 58, 1018, "", 0, 0, 0, -1);
--サングラス光る
SE003 = playSeVer2( spep_1 + 90, 1042, "", 0, 0, 0, -1);
--オーラ
SE005 = playSeVer2( spep_1 + 0, 1269, "",spep_1 + 150, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE005, 35 );
SE006 = playSeVer2( spep_1 + 0, 1227, "",spep_1 + 150, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE006, 73 );
SE007 = playSeVer2( spep_1 + 0, 1176, "",spep_1 + 150, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE007, 73 );


-- ** 次の準備 ** --
spep_c = spep_1 + 140 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20);
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_c + 0, shuchusen, 0);
setEffRotateKey( spep_c + 90, shuchusen, 0);
setEffAlphaKey( spep_c + 0, shuchusen, 255);
setEffAlphaKey( spep_c + 90, shuchusen, 255);
-- ** 音 ** --
playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_2 = spep_c + 96;

-------------------------------------------------
-- 気をためて放出
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); --気をためて放出	ef_002		キャラ、背景、エフェクト※敵味方共通
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 140 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + 140 -4, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 140 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 140 -5, base_2, 255);
setEffAlphaKey( spep_2 + 140 -4, base_2, 0);


-- ** 音 ** --
--力貯める
SE008 = playSeVer2( spep_2 + 10, 1072, "", 0, 14, 0, 0.6);
setStartTimeMs( SE008,  217 );
SE009 = playSeVer2( spep_2 + 0, 1227, "",spep_2 + 94, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 0, SE009, 67 );
SE010 = playSeVer2( spep_2 + 0, 1176, "",spep_2 + 94, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 0, SE010, 68 );
SE011 = playSeVer2( spep_2 + 16, 1271, "",spep_2 + 94, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 16, SE011, 146 );
--エネルギー放出
SE012 = playSeVer2( spep_2 + 76, 1068, "", 0, 0, 0, 0.6);
SE013 = playSeVer2( spep_2 + 76, 1160, "", 0, 0, 0, 0.6);
SE014 = playSeVer2( spep_2 + 78, 1231, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 78, SE014, 216 );
--エネルギー敵に向かっていく
SE015 = playSeVer2( spep_2 + 114, 1258, "",spep_2 + 214, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 114, SE015, 62 );



-- ** 次の準備 ** --
spep_3 = spep_2 + 140 -4;

-------------------------------------------------
-- 気弾着弾、敵を画面外に飛ばす
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); --気弾着弾、敵を画面外に飛ばす	ef_003		敵キャラより手前、エフェクト、文字込み
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 80 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 80 -4, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 80 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 80 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 80 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_03b, 0x80, -1, 0, 0, 0); --気弾着弾、敵を画面外に飛ばす	ef_004		敵キャラより背後、半透明黒
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 80 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 80 -4, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 80 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 80 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 80 -4, base_3b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 104 );

--setMoveKey( spep_3 -3 + 0, 1, 388.2, -10 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 397.9, 4.2 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 378.4, -5.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 378.4, 0.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 363.7, -0.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 355.2, 1.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 334.5, 1.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 333.8, 1.7 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 321.8, 1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 315.5, 2.1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 298.6, 1.7 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 285.8, 3.2 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 261.7, 3.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 258.3, 3.2 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 242, 3.5 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 228.4, 4.4 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 204.2, 5.7 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 201, 4.4 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 185.4, 5.3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 171, 5.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 146.6, 7.6 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 143.8, 5.5 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 128.8, 7.1 , 0 );
setMoveKey( spep_3 -3 + 47, 1, 115.2, 6.1 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 142.1, 8.8 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 151.6, 21.9 , 0 );
setMoveKey( spep_3 -3 + 53, 1, 164.4, 0 , 0 );

--setScaleKey( spep_3 -3 + 0, 1, 1.04, 1.04 );
setScaleKey( spep_3 -2 + 2, 1, 1.06, 1.06 );
setScaleKey( spep_3 -3 + 4, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 6, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 8, 1, 1.16, 1.16 );
setScaleKey( spep_3 -3 + 10, 1, 1.21, 1.21 );
setScaleKey( spep_3 -3 + 12, 1, 1.25, 1.25 );
setScaleKey( spep_3 -3 + 14, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 16, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 18, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 20, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 22, 1, 1.44, 1.44 );
setScaleKey( spep_3 -3 + 24, 1, 1.48, 1.48 );
setScaleKey( spep_3 -3 + 26, 1, 1.52, 1.52 );
setScaleKey( spep_3 -3 + 28, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 30, 1, 1.61, 1.61 );
setScaleKey( spep_3 -3 + 32, 1, 1.65, 1.65 );
setScaleKey( spep_3 -3 + 34, 1, 1.69, 1.69 );
setScaleKey( spep_3 -3 + 36, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 38, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 40, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 42, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 44, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 47, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 49, 1, 2.75, 2.75 );
setScaleKey( spep_3 -3 + 50, 1, 2.26, 2.26 );
setScaleKey( spep_3 -3 + 53, 1, 2.71, 2.71 );

setRotateKey( spep_3 -3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 49, 1, 0 );
setRotateKey( spep_3 -3 + 50, 1, -64.9 );
setRotateKey( spep_3 -3 + 53, 1, -50.2 );


-- ** 書き文字エントリー ** --
ctZud = entryEffectLife( spep_3 - 0, 10014, 48 -3, 0x100, -1, 0, 8.7, 363.2);	-- ズドドドッ

setEffMoveKey( spep_3 -3 + 0, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 2, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 4, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 6, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 8, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 10, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctZud, 48.7, 363.2 , 0 );

setEffScaleKey( spep_3 + 0, ctZud, 2.87, 3.72 );
setEffScaleKey( spep_3 -3 + 48, ctZud, 2.87, 3.72 );

setEffRotateKey( spep_3 + 0, ctZud, 80.1 );
setEffRotateKey( spep_3 -3 + 4, ctZud, 80.1 );

setEffAlphaKey( spep_3 + 0, ctZud, 255 );
setEffAlphaKey( spep_3 -3 + 48, ctZud, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 白フェード ** --
entryFade( spep_3 -3 + 48, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 240 );  --white fade

-- ** 音 ** --
--エネルギー敵に向かっていく
SE016 = playSeVer2( spep_3 + 0, 1226, "",spep_3 + 76, 0, 24, -1);
SE017 = playSeVer2( spep_3 + 0, 1021, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------


-- ** 敵キャラクター ** --
setDisp( spep_3 -4 + 80, 1, 0 );

changeAnime( spep_3 -3 + 48, 1, 108 );
changeAnime( spep_3 -3 + 50, 1, 106 );
changeAnime( spep_3 -3 + 54, 1, 108 );

setMoveKey( spep_3 -3 + 54, 1, 135.5, 17.4 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 154.4, -18 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 148.2, 5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 221.8, 1.1 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 298.7, 7.8 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 348.3, 1.5 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 403.9, 6.4 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 434.7, -1.1 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 465.9, -2.8 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 490.2, -4.4 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 508.3, -5.9 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 520.9, -7 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 528.3, -7.7 , 0 );
setMoveKey( spep_3 -4 + 80, 1, 528.3, -7.7 , 0 );

setScaleKey( spep_3 -3 + 54, 1, 2.47, 2.47 );
setScaleKey( spep_3 -3 + 56, 1, 3.02, 3.02 );
setScaleKey( spep_3 -3 + 58, 1, 2.75, 2.75 );
setScaleKey( spep_3 -3 + 60, 1, 2.35, 2.35 );
setScaleKey( spep_3 -3 + 62, 1, 1.99, 1.99 );
setScaleKey( spep_3 -3 + 64, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 66, 1, 1.39, 1.39 );
setScaleKey( spep_3 -3 + 68, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 70, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 72, 1, 0.76, 0.76 );
setScaleKey( spep_3 -3 + 74, 1, 0.63, 0.63 );
setScaleKey( spep_3 -3 + 76, 1, 0.53, 0.53 );
setScaleKey( spep_3 -3 + 78, 1, 0.48, 0.48 );
setScaleKey( spep_3 -4 + 80, 1, 0.48, 0.48 );

setRotateKey( spep_3 -3 + 54, 1, 0 );
setRotateKey( spep_3 -4 + 80, 1, 0 );


-- ** 音 ** --
--敵ヒット
SE018 = playSeVer2( spep_3 + 44, 1023, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 46, 1011, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 80 -4;

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 110, 0, 0, 0, 0, 150);  --黒　背景


-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 );
setEffMoveKey( spep_4 + 110, hibiware, 70, -60, 0 );
setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 110, hibiware, 1.0, 1.0 );
setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 110, hibiware, 0 );
setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 110, hibiware, 255 );

-- ** 集中線 ** --
shuchusenf1 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusenf1, 32, 25 );
setEffMoveKey( spep_4 + 14, shuchusenf1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusenf1, 0, 0 , 0 );
setEffScaleKey( spep_4 + 14, shuchusenf1, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusenf1, 1, 1 );
setEffRotateKey( spep_4 + 14, shuchusenf1, 0 );
setEffRotateKey( spep_4 + 46, shuchusenf1, 0 );
setEffAlphaKey( spep_4 + 14, shuchusenf1, 255 );
setEffAlphaKey( spep_4 + 28, shuchusenf1, 255 );
setEffAlphaKey( spep_4 + 30, shuchusenf1, 252 );
setEffAlphaKey( spep_4 + 32, shuchusenf1, 242 );
setEffAlphaKey( spep_4 + 34, shuchusenf1, 227 );
setEffAlphaKey( spep_4 + 36, shuchusenf1, 205 );
setEffAlphaKey( spep_4 + 38, shuchusenf1, 176 );
setEffAlphaKey( spep_4 + 40, shuchusenf1, 142 );
setEffAlphaKey( spep_4 + 42, shuchusenf1, 101 );
setEffAlphaKey( spep_4 + 44, shuchusenf1, 54 );
setEffAlphaKey( spep_4 + 46, shuchusenf1, 0 );

-- ** 書き文字エントリー ** --
ctgaf = entryEffectLife( spep_4 + 14,  10005, 96, 0x100, -1, 0, 4, 310 );  --ガッ
setEffShake( spep_4 + 14, ctgaf, 14, 20 );
setEffMoveKey( spep_4 + 14, ctgaf, 4, 310 , 0 );
setEffMoveKey( spep_4 + 110, ctgaf, 4, 310 , 0 );
setEffScaleKey( spep_4 + 14, ctgaf, 3.5, 3.5 );
setEffScaleKey( spep_4 + 110, ctgaf, 3.5, 3.5 );
setEffRotateKey( spep_4 + 14, ctgaf, -10.9 );
setEffRotateKey( spep_4 + 15, ctgaf, -10.9 );
setEffRotateKey( spep_4 + 16, ctgaf, -14.9 );
setEffRotateKey( spep_4 + 17, ctgaf, -14.9 );
setEffRotateKey( spep_4 + 18, ctgaf, -10.9 );
setEffRotateKey( spep_4 + 19, ctgaf, -10.9 );
setEffRotateKey( spep_4 + 20, ctgaf, -14.9 );
setEffRotateKey( spep_4 + 21, ctgaf, -14.9 );
setEffRotateKey( spep_4 + 22, ctgaf, -10.9 );
setEffRotateKey( spep_4 + 23, ctgaf, -10.9 );
setEffRotateKey( spep_4 + 24, ctgaf, -14.9 );
setEffRotateKey( spep_4 + 25, ctgaf, -14.9 );
setEffRotateKey( spep_4 + 26, ctgaf, -10.9 );
setEffRotateKey( spep_4 + 27, ctgaf, -10.9 );
setEffRotateKey( spep_4 + 28, ctgaf, -14.9 );
setEffRotateKey( spep_4 + 110, ctgaf, -14.9 );
setEffAlphaKey( spep_4 + 14, ctgaf, 255 );
setEffAlphaKey( spep_4 + 110, ctgaf, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

mx_4 = 30;	--横位置補正
my_4 = 80;	--縦位置補正
setMoveKey( spep_4 + 0, 1, 36.2 +mx_4, 7.9 +my_4 , 0 );
setMoveKey( spep_4 + 1, 1, 36.2 +mx_4, 7.9 +my_4 , 0 );
setMoveKey( spep_4 + 2, 1, 31 +mx_4, -3.9 +my_4 , 0 );
setMoveKey( spep_4 + 3, 1, 31 +mx_4, -3.9 +my_4 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7 +mx_4, -21.4 +my_4 , 0 );
setMoveKey( spep_4 + 5, 1, 27.7 +mx_4, -21.4 +my_4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9 +mx_4, -41.6 +my_4 , 0 );
setMoveKey( spep_4 + 7, 1, 21.9 +mx_4, -41.6 +my_4 , 0 );
setMoveKey( spep_4 + 8, 1, 15 +mx_4, -65.4 +my_4 , 0 );
setMoveKey( spep_4 + 9, 1, 15 +mx_4, -65.4 +my_4 , 0 );
setMoveKey( spep_4 + 10, 1, 5.1 +mx_4, -74.9 +my_4 , 0 );
setMoveKey( spep_4 + 11, 1, 5.1 +mx_4, -74.9 +my_4 , 0 );
setMoveKey( spep_4 + 12, 1, -45.3 +mx_4, -142.1 +my_4 , 0 );  --画面にぶつかる
setMoveKey( spep_4 + 110, 1, -45.3 +mx_4, -142.1 +my_4 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 110, 1, 1.6, 1.6 );

r_4 = 42;	--角度補正
setRotateKey( spep_4 + 0, 1, -40 +r_4);
setRotateKey( spep_4 + 1, 1, -40 +r_4);
setRotateKey( spep_4 + 2, 1, 80 +r_4);
setRotateKey( spep_4 + 3, 1, 80 +r_4);
setRotateKey( spep_4 + 4, 1, 200 +r_4);
setRotateKey( spep_4 + 5, 1, 200 +r_4);
setRotateKey( spep_4 + 6, 1, 360 +r_4);
setRotateKey( spep_4 + 7, 1, 360 +r_4);
setRotateKey( spep_4 + 8, 1, 558 +r_4);
setRotateKey( spep_4 + 9, 1, 558 +r_4);
setRotateKey( spep_4 + 10, 1, 425 +r_4);
setRotateKey( spep_4 + 11, 1, 425 +r_4);
setRotateKey( spep_4 + 12, 1, -40 +r_4);
setRotateKey( spep_4 + 110, 1, -40 +r_4);


-- ** 音 ** --
--画面激突
SE020 = playSeVer2( spep_4 + 14, 1025, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 14, 1054, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 18);
endPhase( spep_4 + 110 -8);

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- セリフカットイン、左からin
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01r, 0x80, -1, 0, 0, 0); --セリフカットイン、右からin	ef_001_r		敵側エフェクト
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 140 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, -1.0, 1.0);
setEffScaleKey( spep_1 + 140 -4, base_1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 140 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 140 -5, base_1, 255);
setEffAlphaKey( spep_1 + 140 -4, base_1, 0);


-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 140 -4 -18, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


---------------------------------------------------------------------------------------------------
-- 集中線
---------------------------------------------------------------------------------------------------
-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_1 + 64, 906, 140 -4 -64, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 64, shuchusen_1, 000, 20 );
setEffMoveKey( spep_1 + 64, shuchusen_1, 0, 0, 0 );
setEffMoveKey( spep_1 + 140 -4 -64, shuchusen_1, 0, 0, 0 );
setEffScaleKey( spep_1 + 64, shuchusen_1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 140 -4 -64, shuchusen_1, 1.6, 1.6 );
setEffRotateKey( spep_1 + 64, shuchusen_1, 0 );
setEffRotateKey( spep_1 + 140 -4 -64, shuchusen_1, 0 );
setEffAlphaKey( spep_1 + 64, shuchusen_1, 255 );
setEffAlphaKey( spep_1 + 140 -4 -64, shuchusen_1, 255 );


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 52;

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, -40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, -40, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, -40, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, -80, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--フレームイン
SE001 = playSeVer2( spep_1 + 16, 8, "", 0, 0, 0, -1);
--顔カットイン
SE002 = playSeVer2( spep_1 + 58, 1018, "", 0, 0, 0, -1);
--サングラス光る
SE003 = playSeVer2( spep_1 + 90, 1042, "", 0, 0, 0, -1);
--オーラ
SE005 = playSeVer2( spep_1 + 0, 1269, "",spep_1 + 150, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE005, 35 );
SE006 = playSeVer2( spep_1 + 0, 1227, "",spep_1 + 150, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE006, 73 );
SE007 = playSeVer2( spep_1 + 0, 1176, "",spep_1 + 150, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE007, 73 );


-- ** 次の準備 ** --
spep_c = spep_1 + 140 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20);
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_c + 0, shuchusen, 0);
setEffRotateKey( spep_c + 90, shuchusen, 0);
setEffAlphaKey( spep_c + 0, shuchusen, 255);
setEffAlphaKey( spep_c + 90, shuchusen, 255);
-- ** 音 ** --
playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_2 = spep_c + 96;

-------------------------------------------------
-- 気をためて放出
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); --気をためて放出	ef_002		キャラ、背景、エフェクト※敵味方共通
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 140 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, -1.0, 1.0);
setEffScaleKey( spep_2 + 140 -4, base_2, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 140 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 140 -5, base_2, 255);
setEffAlphaKey( spep_2 + 140 -4, base_2, 0);


-- ** 音 ** --
--力貯める
SE008 = playSeVer2( spep_2 + 10, 1072, "", 0, 14, 0, 0.6);
setStartTimeMs( SE008,  217 );
SE009 = playSeVer2( spep_2 + 0, 1227, "",spep_2 + 94, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 0, SE009, 67 );
SE010 = playSeVer2( spep_2 + 0, 1176, "",spep_2 + 94, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 0, SE010, 68 );
SE011 = playSeVer2( spep_2 + 16, 1271, "",spep_2 + 94, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 16, SE011, 146 );
--エネルギー放出
SE012 = playSeVer2( spep_2 + 76, 1068, "", 0, 0, 0, 0.6);
SE013 = playSeVer2( spep_2 + 76, 1160, "", 0, 0, 0, 0.6);
SE014 = playSeVer2( spep_2 + 78, 1231, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 78, SE014, 216 );
--エネルギー敵に向かっていく
SE015 = playSeVer2( spep_2 + 114, 1258, "",spep_2 + 214, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 114, SE015, 62 );



-- ** 次の準備 ** --
spep_3 = spep_2 + 140 -4;

-------------------------------------------------
-- 気弾着弾、敵を画面外に飛ばす
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0);	--気弾着弾、敵を画面外に飛ばす	ef_003_r		敵側エフェクト
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 80 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 80 -4, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 80 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 80 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 80 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_03b, 0x80, -1, 0, 0, 0); --気弾着弾、敵を画面外に飛ばす	ef_004		敵キャラより背後、半透明黒
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 80 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 80 -4, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 80 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 80 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 80 -4, base_3b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 104 );

--setMoveKey( spep_3 -3 + 0, 1, 388.2, -10 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 397.9, 4.2 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 378.4, -5.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 378.4, 0.5 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 363.7, -0.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 355.2, 1.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 334.5, 1.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 333.8, 1.7 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 321.8, 1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 315.5, 2.1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 298.6, 1.7 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 285.8, 3.2 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 261.7, 3.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 258.3, 3.2 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 242, 3.5 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 228.4, 4.4 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 204.2, 5.7 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 201, 4.4 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 185.4, 5.3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 171, 5.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 146.6, 7.6 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 143.8, 5.5 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 128.8, 7.1 , 0 );
setMoveKey( spep_3 -3 + 47, 1, 115.2, 6.1 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 142.1, 8.8 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 151.6, 21.9 , 0 );
setMoveKey( spep_3 -3 + 53, 1, 164.4, 0 , 0 );

--setScaleKey( spep_3 -3 + 0, 1, 1.04, 1.04 );
setScaleKey( spep_3 -2 + 2, 1, 1.06, 1.06 );
setScaleKey( spep_3 -3 + 4, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 6, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 8, 1, 1.16, 1.16 );
setScaleKey( spep_3 -3 + 10, 1, 1.21, 1.21 );
setScaleKey( spep_3 -3 + 12, 1, 1.25, 1.25 );
setScaleKey( spep_3 -3 + 14, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 16, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 18, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 20, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 22, 1, 1.44, 1.44 );
setScaleKey( spep_3 -3 + 24, 1, 1.48, 1.48 );
setScaleKey( spep_3 -3 + 26, 1, 1.52, 1.52 );
setScaleKey( spep_3 -3 + 28, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 30, 1, 1.61, 1.61 );
setScaleKey( spep_3 -3 + 32, 1, 1.65, 1.65 );
setScaleKey( spep_3 -3 + 34, 1, 1.69, 1.69 );
setScaleKey( spep_3 -3 + 36, 1, 1.74, 1.74 );
setScaleKey( spep_3 -3 + 38, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 40, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 42, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 44, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 47, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 49, 1, 2.75, 2.75 );
setScaleKey( spep_3 -3 + 50, 1, 2.26, 2.26 );
setScaleKey( spep_3 -3 + 53, 1, 2.71, 2.71 );

setRotateKey( spep_3 -3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 49, 1, 0 );
setRotateKey( spep_3 -3 + 50, 1, -64.9 );
setRotateKey( spep_3 -3 + 53, 1, -50.2 );


-- ** 書き文字エントリー ** --
ctZud = entryEffectLife( spep_3 - 0, 10014, 48 -3, 0x100, -1, 0, 8.7, 363.2);	-- ズドドドッ

setEffMoveKey( spep_3 -3 + 0, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 2, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 4, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 6, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 8, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 10, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctZud, 48.7, 363.2 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctZud, 24.7, 347.2 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctZud, 48.7, 363.2 , 0 );

setEffScaleKey( spep_3 + 0, ctZud, 2.87, 3.72 );
setEffScaleKey( spep_3 -3 + 48, ctZud, 2.87, 3.72 );

setEffRotateKey( spep_3 + 0, ctZud, 80.1 -90 );
setEffRotateKey( spep_3 -3 + 4, ctZud, 80.1 -90 );

setEffAlphaKey( spep_3 + 0, ctZud, 255 );
setEffAlphaKey( spep_3 -3 + 48, ctZud, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 白フェード ** --
entryFade( spep_3 -3 + 48, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 240 );  --white fade

-- ** 音 ** --
--エネルギー敵に向かっていく
SE016 = playSeVer2( spep_3 + 0, 1226, "",spep_3 + 76, 0, 24, -1);
SE017 = playSeVer2( spep_3 + 0, 1021, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------


-- ** 敵キャラクター ** --
setDisp( spep_3 -4 + 80, 1, 0 );

changeAnime( spep_3 -3 + 48, 1, 108 );
changeAnime( spep_3 -3 + 50, 1, 106 );
changeAnime( spep_3 -3 + 54, 1, 108 );

setMoveKey( spep_3 -3 + 54, 1, 135.5, 17.4 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 154.4, -18 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 148.2, 5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 221.8, 1.1 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 298.7, 7.8 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 348.3, 1.5 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 403.9, 6.4 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 434.7, -1.1 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 465.9, -2.8 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 490.2, -4.4 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 508.3, -5.9 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 520.9, -7 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 528.3, -7.7 , 0 );
setMoveKey( spep_3 -4 + 80, 1, 528.3, -7.7 , 0 );

setScaleKey( spep_3 -3 + 54, 1, 2.47, 2.47 );
setScaleKey( spep_3 -3 + 56, 1, 3.02, 3.02 );
setScaleKey( spep_3 -3 + 58, 1, 2.75, 2.75 );
setScaleKey( spep_3 -3 + 60, 1, 2.35, 2.35 );
setScaleKey( spep_3 -3 + 62, 1, 1.99, 1.99 );
setScaleKey( spep_3 -3 + 64, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 66, 1, 1.39, 1.39 );
setScaleKey( spep_3 -3 + 68, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 70, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 72, 1, 0.76, 0.76 );
setScaleKey( spep_3 -3 + 74, 1, 0.63, 0.63 );
setScaleKey( spep_3 -3 + 76, 1, 0.53, 0.53 );
setScaleKey( spep_3 -3 + 78, 1, 0.48, 0.48 );
setScaleKey( spep_3 -4 + 80, 1, 0.48, 0.48 );

setRotateKey( spep_3 -3 + 54, 1, 0 );
setRotateKey( spep_3 -4 + 80, 1, 0 );


-- ** 音 ** --
--敵ヒット
SE018 = playSeVer2( spep_3 + 44, 1023, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 46, 1011, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 80 -4;

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 110, 0, 0, 0, 0, 150);  --黒　背景


-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 );
setEffMoveKey( spep_4 + 110, hibiware, 70, -60, 0 );
setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 110, hibiware, 1.0, 1.0 );
setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 110, hibiware, 0 );
setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 110, hibiware, 255 );

-- ** 集中線 ** --
shuchusenf1 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusenf1, 32, 25 );
setEffMoveKey( spep_4 + 14, shuchusenf1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusenf1, 0, 0 , 0 );
setEffScaleKey( spep_4 + 14, shuchusenf1, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusenf1, 1, 1 );
setEffRotateKey( spep_4 + 14, shuchusenf1, 0 );
setEffRotateKey( spep_4 + 46, shuchusenf1, 0 );
setEffAlphaKey( spep_4 + 14, shuchusenf1, 255 );
setEffAlphaKey( spep_4 + 28, shuchusenf1, 255 );
setEffAlphaKey( spep_4 + 30, shuchusenf1, 252 );
setEffAlphaKey( spep_4 + 32, shuchusenf1, 242 );
setEffAlphaKey( spep_4 + 34, shuchusenf1, 227 );
setEffAlphaKey( spep_4 + 36, shuchusenf1, 205 );
setEffAlphaKey( spep_4 + 38, shuchusenf1, 176 );
setEffAlphaKey( spep_4 + 40, shuchusenf1, 142 );
setEffAlphaKey( spep_4 + 42, shuchusenf1, 101 );
setEffAlphaKey( spep_4 + 44, shuchusenf1, 54 );
setEffAlphaKey( spep_4 + 46, shuchusenf1, 0 );

-- ** 書き文字エントリー ** --
ctgaf = entryEffectLife( spep_4 + 14,  10005, 96, 0x100, -1, 0, 4, 310 );  --ガッ
setEffShake( spep_4 + 14, ctgaf, 14, 20 );
setEffMoveKey( spep_4 + 14, ctgaf, 4, 310 , 0 );
setEffMoveKey( spep_4 + 110, ctgaf, 4, 310 , 0 );
setEffScaleKey( spep_4 + 14, ctgaf, 3.5, 3.5 );
setEffScaleKey( spep_4 + 110, ctgaf, 3.5, 3.5 );
setEffRotateKey( spep_4 + 14, ctgaf, -10.9 );
setEffRotateKey( spep_4 + 15, ctgaf, -10.9 );
setEffRotateKey( spep_4 + 16, ctgaf, -14.9 );
setEffRotateKey( spep_4 + 17, ctgaf, -14.9 );
setEffRotateKey( spep_4 + 18, ctgaf, -10.9 );
setEffRotateKey( spep_4 + 19, ctgaf, -10.9 );
setEffRotateKey( spep_4 + 20, ctgaf, -14.9 );
setEffRotateKey( spep_4 + 21, ctgaf, -14.9 );
setEffRotateKey( spep_4 + 22, ctgaf, -10.9 );
setEffRotateKey( spep_4 + 23, ctgaf, -10.9 );
setEffRotateKey( spep_4 + 24, ctgaf, -14.9 );
setEffRotateKey( spep_4 + 25, ctgaf, -14.9 );
setEffRotateKey( spep_4 + 26, ctgaf, -10.9 );
setEffRotateKey( spep_4 + 27, ctgaf, -10.9 );
setEffRotateKey( spep_4 + 28, ctgaf, -14.9 );
setEffRotateKey( spep_4 + 110, ctgaf, -14.9 );
setEffAlphaKey( spep_4 + 14, ctgaf, 255 );
setEffAlphaKey( spep_4 + 110, ctgaf, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

mx_4 = 30;	--横位置補正
my_4 = 80;	--縦位置補正
setMoveKey( spep_4 + 0, 1, 36.2 +mx_4, 7.9 +my_4 , 0 );
setMoveKey( spep_4 + 1, 1, 36.2 +mx_4, 7.9 +my_4 , 0 );
setMoveKey( spep_4 + 2, 1, 31 +mx_4, -3.9 +my_4 , 0 );
setMoveKey( spep_4 + 3, 1, 31 +mx_4, -3.9 +my_4 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7 +mx_4, -21.4 +my_4 , 0 );
setMoveKey( spep_4 + 5, 1, 27.7 +mx_4, -21.4 +my_4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9 +mx_4, -41.6 +my_4 , 0 );
setMoveKey( spep_4 + 7, 1, 21.9 +mx_4, -41.6 +my_4 , 0 );
setMoveKey( spep_4 + 8, 1, 15 +mx_4, -65.4 +my_4 , 0 );
setMoveKey( spep_4 + 9, 1, 15 +mx_4, -65.4 +my_4 , 0 );
setMoveKey( spep_4 + 10, 1, 5.1 +mx_4, -74.9 +my_4 , 0 );
setMoveKey( spep_4 + 11, 1, 5.1 +mx_4, -74.9 +my_4 , 0 );
setMoveKey( spep_4 + 12, 1, -45.3 +mx_4, -142.1 +my_4 , 0 );  --画面にぶつかる
setMoveKey( spep_4 + 110, 1, -45.3 +mx_4, -142.1 +my_4 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 110, 1, 1.6, 1.6 );

r_4 = 42;	--角度補正
setRotateKey( spep_4 + 0, 1, -40 +r_4);
setRotateKey( spep_4 + 1, 1, -40 +r_4);
setRotateKey( spep_4 + 2, 1, 80 +r_4);
setRotateKey( spep_4 + 3, 1, 80 +r_4);
setRotateKey( spep_4 + 4, 1, 200 +r_4);
setRotateKey( spep_4 + 5, 1, 200 +r_4);
setRotateKey( spep_4 + 6, 1, 360 +r_4);
setRotateKey( spep_4 + 7, 1, 360 +r_4);
setRotateKey( spep_4 + 8, 1, 558 +r_4);
setRotateKey( spep_4 + 9, 1, 558 +r_4);
setRotateKey( spep_4 + 10, 1, 425 +r_4);
setRotateKey( spep_4 + 11, 1, 425 +r_4);
setRotateKey( spep_4 + 12, 1, -40 +r_4);
setRotateKey( spep_4 + 110, 1, -40 +r_4);


-- ** 音 ** --
--画面激突
SE020 = playSeVer2( spep_4 + 14, 1025, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 14, 1054, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 18);
endPhase( spep_4 + 110 -8);

end
