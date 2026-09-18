--1025110:UR_孫悟飯(幼年期)/孫悟空_魔閃光(極限)
--sp_effect_a1_00368
--sp2433

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
SP_01  = 160376;	--冒頭　上空の敵と向かい合う	ef_001	30	ef_001、ef_001_back　同時再生
SP_01b  = 160377;	--冒頭　上空の敵と向かい合う	ef_001_back	30	ef_001、ef_001_back　同時再生
SP_02  = 160378;	--セリフカットイン→ジャンプ	ef_002	60	反転なし
SP_03  = 160379;	--敵正面に飛ぶ	ef_003	25	ef_003、ef_003_back　同時再生
SP_03b  = 160380;	--敵正面に飛ぶ	ef_003_back	25	ef_003、ef_003_back　同時再生
SP_04  = 160381;	--正面攻撃	ef_004	56	反転なし
SP_05  = 160382;	--敵墜落→半回転しながら下に気弾を放つ	ef_005	75	ef_005、ef_005_back　同時再生
SP_05b  = 160383;	--敵墜落→半回転しながら下に気弾を放つ	ef_005_back	75	ef_005、ef_005_back　同時再生
SP_06  = 160384;	--フィニッシュ	ef_006	103	ef_006、ef_006_back　同時再生
SP_06b  = 160385;	--フィニッシュ	ef_006_back	103	ef_006、ef_006_back　同時再生

--エフェクト(てき)
SP_05r = 160425; -- 敵墜落→半回転しながら下に気弾を放つ	ef_005_r	75	反転用　ef_005_r、ef_005_r_back　同時再生
SP_05br = 160426; --敵墜落→半回転しながら下に気弾を放つ	ef_005_r_back	75	反転用　ef_005_r、ef_005_r_back　同時再生

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
-- changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
-- setDisp( 0, 1, 0);

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

-- setMoveKey(   0,   1,    0, -5136,   0);
-- setMoveKey(   1,   1,    0, -5136,   0);
-- setMoveKey(   2,   1,    0, -5136,   0);
-- setMoveKey(   3,   1,    0, -5136,   0);
-- setMoveKey(   4,   1,    0, -5136,   0);
-- setMoveKey(   5,   1,    0, -5136,   0);
-- setMoveKey(   6,   1,    0, -5136,   0);
-- setScaleKey(  0,   1,  1.6, 1.6);
-- setScaleKey(  1,   1,  1.6, 1.6);
-- setScaleKey(  2,   1,  1.6, 1.6);
-- setScaleKey(  3,   1,  1.6, 1.6);
-- setScaleKey(  4,   1,  1.6, 1.6);
-- setScaleKey(  5,   1,  1.6, 1.6);
-- setScaleKey(  6,   1,  1.6, 1.6);
-- setRotateKey( 0,   1,  0);
-- setRotateKey( 1,   1,  0);
-- setRotateKey( 2,   1,  0);
-- setRotateKey( 3,   1,  0);
-- setRotateKey( 4,   1,  0);
-- setRotateKey( 5,   1,  0);
-- setRotateKey( 6,   1,  0);

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭　上空の敵と向かい合う	
-------------------------------------------------
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001	30	ef_001、ef_001_back　同時再生
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + 60 -4, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + 60 -4, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + 60 -4, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + 60 -5, base_0f, 255);
setEffAlphaKey( spep_0 + 60 -4, base_0f, 0);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001_back	30	ef_001、ef_001_back　同時再生
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + 60 -4, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + 60 -4, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + 60 -4, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + 60 -5, base_0b, 255);
setEffAlphaKey( spep_0 + 60 -4, base_0b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 60 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 100 );

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 60 -4, 1, 0 );

-- setMoveKey( spep_0 -3 + 0, 1, 201.8, 356.5 , 0 );
setMoveKey( spep_0 + 0, 1, 202.3, 358.1 , 0 );
setMoveKey( spep_0 + 1, 1, 202.9, 359.8 , 0 );
setMoveKey( spep_0 + 2, 1, 202.9, 359.8 , 0 );
setMoveKey( spep_0 + 3, 1, 203.4, 361.5 , 0 );
setMoveKey( spep_0 + 4, 1, 203.4, 361.5 , 0 );
setMoveKey( spep_0 + 5, 1, 204, 363.2 , 0 );
setMoveKey( spep_0 + 6, 1, 204, 363.2 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 204.5, 364.8 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 205, 366.5 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 205.5, 368.2 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 206.1, 369.9 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 206.6, 371.5 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 207.1, 373.2 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 207.6, 374.9 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 208.2, 376.6 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 208.7, 378.2 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 209.1, 379.9 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 209.7, 381.6 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 210.2, 383.3 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 210.7, 385 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 211.1, 386.6 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 211.7, 388.3 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 212.1, 390 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 212.6, 391.7 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 213.1, 393.3 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 213.5, 395 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 214, 396.7 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 214.5, 398.4 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 214.9, 400 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 215.4, 401.7 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 215.9, 403.4 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 216.3, 405.1 , 0 );
setMoveKey( spep_0 -4 + 60, 1, 216.3, 405.1 , 0 );

-- setScaleKey( spep_0 -3 + 0, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 0, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 1, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 2, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 3, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 4, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 5, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 6, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 14, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 16, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 22, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 24, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 28, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 30, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 36, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 38, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 44, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 46, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 50, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 52, 1, 0.66, 0.66 );
setScaleKey( spep_0 -4 + 60, 1, 0.66, 0.66 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 +60 -4, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 60 -4;


-------------------------------------------------
-- セリフカットイン→ジャンプ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002	60	反転なし
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 118 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 118 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 118 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 118 -5, base_1, 255);
setEffAlphaKey( spep_1 + 118 -4, base_1, 0);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = 90;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, (cx+40), 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 118 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--顔カットイン
SE002 = playSeVer2( spep_1 + 0, 1018, "", 0, 0, 0, -1);

--飛び上がる
SE004 = playSeVer2( spep_1 + 90, 1117, "",spep_1 + 172, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 90, SE004, 83 );
SE005 = playSeVer2( spep_1 + 90, 1207, "",spep_1 + 172, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 90, SE005, 62 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 118 -4;


-------------------------------------------------
-- 敵正面に飛ぶ
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- --敵正面に飛ぶ	ef_003	25	ef_003、ef_003_back　同時再生
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 48 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 48 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 48 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 48 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 48 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- 敵正面に飛ぶ	ef_003_back	25	ef_003、ef_003_back　同時再生
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 48 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 48 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 48 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 48 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 48 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 48 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 48 -4, 1, 0 );

changeAnime( spep_2 + 0, 1, 118 );

-- setMoveKey( spep_2 -3 + 0, 1, -1.2, 5.3 , 0 );
setMoveKey( spep_2 -2 + 2, 1, -1.1, 1 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -1.1, -3.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -1, -7.5 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -1, -11.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -0.9, -16.2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -0.8, -20.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -0.8, -24.7 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -0.7, -29 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -0.7, -33.3 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -0.6, -37.6 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -0.6, -41.9 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -0.5, -46.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -0.4, -50.4 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -0.4, -54.7 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -0.3, -59 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -0.3, -63.3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -0.2, -67.6 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -0.1, -71.9 , 0 );

-- setScaleKey( spep_2 -3 + 0, 1, 2.2, 2.2 );
setScaleKey( spep_2 -2 + 2, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 4, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 6, 1, 2.28, 2.28 );
setScaleKey( spep_2 -3 + 8, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 10, 1, 2.32, 2.32 );
setScaleKey( spep_2 -3 + 12, 1, 2.35, 2.35 );
setScaleKey( spep_2 -3 + 14, 1, 2.37, 2.37 );
setScaleKey( spep_2 -3 + 16, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 18, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 20, 1, 2.45, 2.45 );
setScaleKey( spep_2 -3 + 22, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 24, 1, 2.49, 2.49 );
setScaleKey( spep_2 -3 + 26, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 28, 1, 2.54, 2.54 );
setScaleKey( spep_2 -3 + 30, 1, 2.57, 2.57 );
setScaleKey( spep_2 -3 + 32, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 34, 1, 2.62, 2.62 );
setScaleKey( spep_2 -3 + 36, 1, 2.64, 2.64 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 音 ** --
--飛び上がる
SE003 = playSeVer2( spep_2 + 0, 1119, "",spep_2 + 58, 2, 12, -1);
setSeVolumeByWorkId( spep_2 + 0, SE003, 166 );
setStartTimeMs( SE003,  767 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 34; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, -0.1, -71.9 , 0 );
setMoveKey( SP_dodge + 1, 1, -0.1, -76.2 , 0 );
setMoveKey( SP_dodge + 3, 1, 0, -80.5 , 0 );
setMoveKey( SP_dodge + 5, 1, 0, -84.8 , 0 );
setMoveKey( SP_dodge + 7, 1, 0, -89 , 0 );
setMoveKey( SP_dodge + 8, 1, 0, -89 , 0 );
setMoveKey( SP_dodge + 9, 1, 0.1, -354.8 , 0 );
setMoveKey( SP_dodge + 10, 1, 0.1, -620.6 , 0 );

setScaleKey( SP_dodge + 0, 1, 2.64, 2.64 );
setScaleKey( SP_dodge + 1, 1, 2.67, 2.67 );
setScaleKey( SP_dodge + 3, 1, 2.69, 2.69 );
setScaleKey( SP_dodge + 5, 1, 2.71, 2.71 );
setScaleKey( SP_dodge + 7, 1, 2.74, 2.74 );
setScaleKey( SP_dodge + 8, 1, 2.74, 2.74 );
setScaleKey( SP_dodge + 9, 1, 3.54, 3.54 );
setScaleKey( SP_dodge + 10, 1, 4.33, 4.33 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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
setMoveKey( spep_2 -3 + 38, 1, -0.1, -76.2 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 0, -80.5 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 0, -84.8 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 0, -89 , 0 );
setMoveKey( spep_2 -3 + 45, 1, 0, -89 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 0.1, -354.8 , 0 );
setMoveKey( spep_2 -4 + 48, 1, 0.1, -620.6 , 0 );

setScaleKey( spep_2 -3 + 38, 1, 2.67, 2.67 );
setScaleKey( spep_2 -3 + 40, 1, 2.69, 2.69 );
setScaleKey( spep_2 -3 + 42, 1, 2.71, 2.71 );
setScaleKey( spep_2 -3 + 44, 1, 2.74, 2.74 );
setScaleKey( spep_2 -3 + 45, 1, 2.74, 2.74 );
setScaleKey( spep_2 -3 + 46, 1, 3.54, 3.54 );
setScaleKey( spep_2 -4 + 48, 1, 4.33, 4.33 );

setRotateKey( spep_2 -4 + 48, 1, 0 );

-- ** 次の準備 ** --
spep_c = spep_2 + 48 -4;


-------------------------------------------------
--カードカットイン(94F)
-------------------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1);
-- setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

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
-- playSe( spep_c + 0, SE_05);

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade

-- ** 次の準備 ** --
spep_3 = spep_c + 94;


-------------------------------------------------
-- 正面攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0); -- ef_004	56	反転なし
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 112 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, 1.0, 1.0);
setEffScaleKey( spep_3 + 112 -4, base_3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 112 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 112 -5, base_3, 255);
setEffAlphaKey( spep_3 + 112 -4, base_3, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 112 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--手刀
SE007 = playSeVer2( spep_3 + 14, 1237, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_3 + 14, SE007, 76 );
setStartTimeMs( SE007,  150 );
SE008 = playSeVer2( spep_3 + 16, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 16, SE008, 79 );
SE009 = playSeVer2( spep_3 + 16, 1169, "", 0, 0, 0, -1);

--蹴り
SE010 = playSeVer2( spep_3 + 68, 1237, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_3 + 68, SE010, 72 );
setStartTimeMs( SE010,  150 );
SE011 = playSeVer2( spep_3 + 68, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 68, SE011, 75 );
SE012 = playSeVer2( spep_3 + 70, 1169, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_4 = spep_3 + 112 -4;


-------------------------------------------------
-- 敵墜落→半回転しながら下に気弾を放つ
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0); -- ef_005	75	ef_005、ef_005_back　同時再生
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 148 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 148 -4, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 148 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 148 -5, base_4f, 255);
setEffAlphaKey( spep_4 + 148 -4, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_05b, 0x80, -1, 0, 0, 0); -- ef_005_back	75	ef_005、ef_005_back　同時再生
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 148 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 148 -4, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 148 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 148 -5, base_4b, 255);
setEffAlphaKey( spep_4 + 148 -4, base_4b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 148 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4+ 42 -3 , 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );

-- setMoveKey( spep_4 -3 + 0, 1, -448.1, 376.2 , 0 );
setMoveKey( spep_4 -2 + 2, 1, -366, 302.3 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -304.9, 274.5 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -235.8, 184.7 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -137.7, 151.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -69.6, 59.1 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -8.4, 31.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 60.7, -58.6 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 87.3, -30.7 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 75.9, -49.9 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 78.5, -50.1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 81.2, -50.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 83.8, -50.5 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 86.4, -50.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 89, -50.8 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 91.6, -51 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 94.3, -51.2 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 96.9, -51.3 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 99.5, -51.5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 102.1, -51.7 , 0 );
setMoveKey( spep_4 -3 + 39, 1, 102.1, -51.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 448.2, -297.2 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 794.3, -542.6 , 0 );

setScaleKey( spep_4 -3 + 0, 1, 1.66, 1.66 );
setScaleKey( spep_4 -3 + 42, 1, 1.66, 1.66 );

setRotateKey( spep_4 -3 + 0, 1, 60.9 );
setRotateKey( spep_4 -3 + 42, 1, 60.9 );

-- ** 音 ** --
--敵吹っ飛ぶ
SE013 = playSeVer2( spep_4 + 0, 1027, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_4 + 0, 1009, "", 0, 0, 0, -1);

--敵飛んでいく
SE015 = playSeVer2( spep_4 + 0, 1121, "",spep_4 + 124, 0, 74, -1);

--回転して飛んでくる
SE016 = playSeVer2( spep_4 + 50, 1117, "",spep_4 + 124, 0, 54, -1);
SE017 = playSeVer2( spep_4 + 50, 1151, "", 0, 0, 0, -1);

--気弾溜め
SE018 = playSeVer2( spep_4 + 72, 1296, "",spep_4 + 108, 0, 10, -1);

--気弾発射
SE019 = playSeVer2( spep_4 + 96, 1177, "",spep_4 + 224, 0, 8, -1);
SE020 = playSeVer2( spep_4 + 96, 1145, "",spep_4 + 224, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 96, SE020, 80 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 148 -4;


-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_5f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0); -- ef_006	103	ef_006、ef_006_back　同時再生
setEffMoveKey( spep_5 + 0, base_5f, 0, 0 , 0);
setEffMoveKey( spep_5 + 204 -4, base_5f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5f, 1.0, 1.0);
setEffScaleKey( spep_5 + 204 -4, base_5f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5f, 0);
setEffRotateKey( spep_5 + 204 -4, base_5f, 0);
setEffAlphaKey( spep_5 + 0, base_5f, 255);
setEffAlphaKey( spep_5 + 204 -4, base_5f, 255);

base_5b = entryEffect( spep_5 + 0, SP_06b, 0x80, -1, 0, 0, 0); -- フィニッシュ	ef_006_back	103	ef_006、ef_006_back　同時再生
setEffMoveKey( spep_5 + 0, base_5b, 0, 0 , 0);
setEffMoveKey( spep_5 + 204 -4, base_5b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5b, 1.0, 1.0);
setEffScaleKey( spep_5 + 204 -4, base_5b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5b, 0);
setEffRotateKey( spep_5 + 204 -4, base_5b, 0);
setEffAlphaKey( spep_5 + 0, base_5b, 255);
setEffAlphaKey( spep_5 + 204 -4, base_5b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 204 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 58 -3, 1, 0 );

changeAnime( spep_5 + 0, 1, 105 );

-- setMoveKey( spep_5 -3 + 0, 1, 602.6, -128 , 0 );
setMoveKey( spep_5 -2 + 2, 1, 542, -106.5 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 481.4, -85 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 420.9, -63.4 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 360.2, -41.9 , 0 );
setMoveKey( spep_5 -3 + 9, 1, 360.2, -41.9 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 299.6, -20.4 , 0 );
setMoveKey( spep_5 -3 + 11, 1, 299.6, -20.4 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 239.1, 1.1 , 0 );
setMoveKey( spep_5 -3 + 13, 1, 239.1, 1.1 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 178.5, 22.6 , 0 );
setMoveKey( spep_5 -3 + 15, 1, 178.5, 22.6 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 117.9, 44.2 , 0 );
setMoveKey( spep_5 -3 + 17, 1, 117.9, 44.2 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 157.5, 25.3 , 0 );
setMoveKey( spep_5 -3 + 19, 1, 157.5, 25.3 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 138.5, 19.1 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 137.6, 36.1 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 113.6, 47.8 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 113.8, 37.3 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 96.8, 48 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 93, 38.6 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 116.5, 32.8 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 106.5, 34 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 96.4, 35.1 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 86.4, 36.3 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 67.1, 22.1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 67.8, 36 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 47.4, 43.8 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 47.3, 30.4 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 43.9, 26 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 44.8, 40 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 24.5, 47.7 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 24.3, 34.4 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 21.1, 30 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 22, 43.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.19, 1.19 );
setScaleKey( spep_5 -3 + 10, 1, 1.19, 1.19 );
setScaleKey( spep_5 -3 + 11, 1, 1.19, 1.19 );
setScaleKey( spep_5 -3 + 12, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 16, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 17, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 18, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 36, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 38, 1, 0.29, 0.29 );
setScaleKey( spep_5 -3 + 40, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 58, 1, 0.28, 0.28 );

setRotateKey( spep_5 + 0, 1, 10.9 );
setRotateKey( spep_5 -3 + 16, 1, 10.9 );
setRotateKey( spep_5 -3 + 17, 1, 10.9 );
setRotateKey( spep_5 -3 + 18, 1, 8.5 );
setRotateKey( spep_5 -3 + 58, 1, 8.5 );

-- ** 音 ** --
--気弾飛んでいく
SE021 = playSeVer2( spep_5 + 0, 1021, "", 0, 0, 0, -1);

--気弾ヒット
SE022 = playSeVer2( spep_5 + 18, 1011, "", 0, 0, 0, -1);

--爆発
SE023 = playSeVer2( spep_5 + 68, 1023, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_5 + 72, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 72 -3); -- ダメージ表示フレーム
endPhase( spep_5 + 204 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭　上空の敵と向かい合う	
-------------------------------------------------
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001	30	ef_001、ef_001_back　同時再生
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + 60 -4, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + 60 -4, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + 60 -4, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + 60 -5, base_0f, 255);
setEffAlphaKey( spep_0 + 60 -4, base_0f, 0);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001_back	30	ef_001、ef_001_back　同時再生
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + 60 -4, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + 60 -4, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + 60 -4, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + 60 -5, base_0b, 255);
setEffAlphaKey( spep_0 + 60 -4, base_0b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 60 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 100 );

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 60 -4, 1, 0 );

-- setMoveKey( spep_0 -3 + 0, 1, 201.8, 356.5 , 0 );
setMoveKey( spep_0 + 0, 1, 202.3, 358.1 , 0 );
setMoveKey( spep_0 + 1, 1, 202.9, 359.8 , 0 );
setMoveKey( spep_0 + 2, 1, 202.9, 359.8 , 0 );
setMoveKey( spep_0 + 3, 1, 203.4, 361.5 , 0 );
setMoveKey( spep_0 + 4, 1, 203.4, 361.5 , 0 );
setMoveKey( spep_0 + 5, 1, 204, 363.2 , 0 );
setMoveKey( spep_0 + 6, 1, 204, 363.2 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 204.5, 364.8 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 205, 366.5 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 205.5, 368.2 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 206.1, 369.9 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 206.6, 371.5 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 207.1, 373.2 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 207.6, 374.9 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 208.2, 376.6 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 208.7, 378.2 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 209.1, 379.9 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 209.7, 381.6 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 210.2, 383.3 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 210.7, 385 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 211.1, 386.6 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 211.7, 388.3 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 212.1, 390 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 212.6, 391.7 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 213.1, 393.3 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 213.5, 395 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 214, 396.7 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 214.5, 398.4 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 214.9, 400 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 215.4, 401.7 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 215.9, 403.4 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 216.3, 405.1 , 0 );
setMoveKey( spep_0 -4 + 60, 1, 216.3, 405.1 , 0 );

-- setScaleKey( spep_0 -3 + 0, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 0, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 1, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 2, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 3, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 4, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 5, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 6, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 14, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 16, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 22, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 24, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 28, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 30, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 36, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 38, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 44, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 46, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 50, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 52, 1, 0.66, 0.66 );
setScaleKey( spep_0 -4 + 60, 1, 0.66, 0.66 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 +60 -4, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 60 -4;


-------------------------------------------------
-- セリフカットイン→ジャンプ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002	60	反転なし
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 118 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 118 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 118 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 118 -5, base_1, 255);
setEffAlphaKey( spep_1 + 118 -4, base_1, 0);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 0;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = 40;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, (cx+40), 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 118 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--顔カットイン
SE002 = playSeVer2( spep_1 + 0, 1018, "", 0, 0, 0, -1);

--飛び上がる
SE004 = playSeVer2( spep_1 + 90, 1117, "",spep_1 + 172, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 90, SE004, 83 );
SE005 = playSeVer2( spep_1 + 90, 1207, "",spep_1 + 172, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 90, SE005, 62 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 118 -4;


-------------------------------------------------
-- 敵正面に飛ぶ
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- --敵正面に飛ぶ	ef_003	25	ef_003、ef_003_back　同時再生
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 48 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, -1.0, 1.0);
setEffScaleKey( spep_2 + 48 -4, base_2f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 48 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 48 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 48 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- 敵正面に飛ぶ	ef_003_back	25	ef_003、ef_003_back　同時再生
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 48 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, -1.0, 1.0);
setEffScaleKey( spep_2 + 48 -4, base_2b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 48 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 48 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 48 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 48 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 48 -4, 1, 0 );

changeAnime( spep_2 + 0, 1, 118 );

-- setMoveKey( spep_2 -3 + 0, 1, -1.2, 5.3 , 0 );
setMoveKey( spep_2 -2 + 2, 1, -1.1, 1 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -1.1, -3.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -1, -7.5 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -1, -11.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -0.9, -16.2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -0.8, -20.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -0.8, -24.7 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -0.7, -29 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -0.7, -33.3 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -0.6, -37.6 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -0.6, -41.9 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -0.5, -46.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -0.4, -50.4 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -0.4, -54.7 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -0.3, -59 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -0.3, -63.3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -0.2, -67.6 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -0.1, -71.9 , 0 );

-- setScaleKey( spep_2 -3 + 0, 1, 2.2, 2.2 );
setScaleKey( spep_2 -2 + 2, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 4, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 6, 1, 2.28, 2.28 );
setScaleKey( spep_2 -3 + 8, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 10, 1, 2.32, 2.32 );
setScaleKey( spep_2 -3 + 12, 1, 2.35, 2.35 );
setScaleKey( spep_2 -3 + 14, 1, 2.37, 2.37 );
setScaleKey( spep_2 -3 + 16, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 18, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 20, 1, 2.45, 2.45 );
setScaleKey( spep_2 -3 + 22, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 24, 1, 2.49, 2.49 );
setScaleKey( spep_2 -3 + 26, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 28, 1, 2.54, 2.54 );
setScaleKey( spep_2 -3 + 30, 1, 2.57, 2.57 );
setScaleKey( spep_2 -3 + 32, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 34, 1, 2.62, 2.62 );
setScaleKey( spep_2 -3 + 36, 1, 2.64, 2.64 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 音 ** --
--飛び上がる
SE003 = playSeVer2( spep_2 + 0, 1119, "",spep_2 + 58, 2, 12, -1);
setSeVolumeByWorkId( spep_2 + 0, SE003, 166 );
setStartTimeMs( SE003,  767 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 34; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, -0.1, -71.9 , 0 );
setMoveKey( SP_dodge + 1, 1, -0.1, -76.2 , 0 );
setMoveKey( SP_dodge + 3, 1, 0, -80.5 , 0 );
setMoveKey( SP_dodge + 5, 1, 0, -84.8 , 0 );
setMoveKey( SP_dodge + 7, 1, 0, -89 , 0 );
setMoveKey( SP_dodge + 8, 1, 0, -89 , 0 );
setMoveKey( SP_dodge + 9, 1, 0.1, -354.8 , 0 );
setMoveKey( SP_dodge + 10, 1, 0.1, -620.6 , 0 );

setScaleKey( SP_dodge + 0, 1, 2.64, 2.64 );
setScaleKey( SP_dodge + 1, 1, 2.67, 2.67 );
setScaleKey( SP_dodge + 3, 1, 2.69, 2.69 );
setScaleKey( SP_dodge + 5, 1, 2.71, 2.71 );
setScaleKey( SP_dodge + 7, 1, 2.74, 2.74 );
setScaleKey( SP_dodge + 8, 1, 2.74, 2.74 );
setScaleKey( SP_dodge + 9, 1, 3.54, 3.54 );
setScaleKey( SP_dodge + 10, 1, 4.33, 4.33 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

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
setMoveKey( spep_2 -3 + 38, 1, -0.1, -76.2 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 0, -80.5 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 0, -84.8 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 0, -89 , 0 );
setMoveKey( spep_2 -3 + 45, 1, 0, -89 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 0.1, -354.8 , 0 );
setMoveKey( spep_2 -4 + 48, 1, 0.1, -620.6 , 0 );

setScaleKey( spep_2 -3 + 38, 1, 2.67, 2.67 );
setScaleKey( spep_2 -3 + 40, 1, 2.69, 2.69 );
setScaleKey( spep_2 -3 + 42, 1, 2.71, 2.71 );
setScaleKey( spep_2 -3 + 44, 1, 2.74, 2.74 );
setScaleKey( spep_2 -3 + 45, 1, 2.74, 2.74 );
setScaleKey( spep_2 -3 + 46, 1, 3.54, 3.54 );
setScaleKey( spep_2 -4 + 48, 1, 4.33, 4.33 );

setRotateKey( spep_2 -4 + 48, 1, 0 );

-- ** 次の準備 ** --
spep_c = spep_2 + 48 -4;


-------------------------------------------------
--カードカットイン(94F)
-------------------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
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
spep_3 = spep_c + 94;


-------------------------------------------------
-- 正面攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0); -- ef_004	56	反転なし
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 112 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, -1.0, 1.0);
setEffScaleKey( spep_3 + 112 -4, base_3, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 112 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 112 -5, base_3, 255);
setEffAlphaKey( spep_3 + 112 -4, base_3, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 112 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--手刀
SE007 = playSeVer2( spep_3 + 14, 1237, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_3 + 14, SE007, 76 );
setStartTimeMs( SE007,  150 );
SE008 = playSeVer2( spep_3 + 16, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 16, SE008, 79 );
SE009 = playSeVer2( spep_3 + 16, 1169, "", 0, 0, 0, -1);

--蹴り
SE010 = playSeVer2( spep_3 + 68, 1237, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_3 + 68, SE010, 72 );
setStartTimeMs( SE010,  150 );
SE011 = playSeVer2( spep_3 + 68, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 68, SE011, 75 );
SE012 = playSeVer2( spep_3 + 70, 1169, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_4 = spep_3 + 112 -4;


-------------------------------------------------
-- 敵墜落→半回転しながら下に気弾を放つ
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_05r, 0x100, -1, 0, 0, 0); -- ef_005	75	ef_005、ef_005_back　同時再生
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 148 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 148 -4, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 148 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 148 -5, base_4f, 255);
setEffAlphaKey( spep_4 + 148 -4, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_05br, 0x80, -1, 0, 0, 0); -- ef_005_back	75	ef_005、ef_005_back　同時再生
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 148 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 148 -4, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 148 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 148 -5, base_4b, 255);
setEffAlphaKey( spep_4 + 148 -4, base_4b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 148 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4+ 42 -3 , 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );

-- setMoveKey( spep_4 -3 + 0, 1, -448.1, 376.2 , 0 );
setMoveKey( spep_4 -2 + 2, 1, -366, 302.3 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -304.9, 274.5 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -235.8, 184.7 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -137.7, 151.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -69.6, 59.1 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -8.4, 31.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 60.7, -58.6 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 87.3, -30.7 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 75.9, -49.9 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 78.5, -50.1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 81.2, -50.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 83.8, -50.5 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 86.4, -50.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 89, -50.8 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 91.6, -51 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 94.3, -51.2 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 96.9, -51.3 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 99.5, -51.5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 102.1, -51.7 , 0 );
setMoveKey( spep_4 -3 + 39, 1, 102.1, -51.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 448.2, -297.2 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 794.3, -542.6 , 0 );

setScaleKey( spep_4 -3 + 0, 1, 1.66, 1.66 );
setScaleKey( spep_4 -3 + 42, 1, 1.66, 1.66 );

setRotateKey( spep_4 -3 + 0, 1, 60.9 );
setRotateKey( spep_4 -3 + 42, 1, 60.9 );

-- ** 音 ** --
--敵吹っ飛ぶ
SE013 = playSeVer2( spep_4 + 0, 1027, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_4 + 0, 1009, "", 0, 0, 0, -1);

--敵飛んでいく
SE015 = playSeVer2( spep_4 + 0, 1121, "",spep_4 + 124, 0, 74, -1);

--回転して飛んでくる
SE016 = playSeVer2( spep_4 + 50, 1117, "",spep_4 + 124, 0, 54, -1);
SE017 = playSeVer2( spep_4 + 50, 1151, "", 0, 0, 0, -1);

--気弾溜め
SE018 = playSeVer2( spep_4 + 72, 1296, "",spep_4 + 108, 0, 10, -1);

--気弾発射
SE019 = playSeVer2( spep_4 + 96, 1177, "",spep_4 + 224, 0, 8, -1);
SE020 = playSeVer2( spep_4 + 96, 1145, "",spep_4 + 224, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 96, SE020, 80 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 148 -4;


-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_5f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0); -- ef_006	103	ef_006、ef_006_back　同時再生
setEffMoveKey( spep_5 + 0, base_5f, 0, 0 , 0);
setEffMoveKey( spep_5 + 204 -4, base_5f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5f, 1.0, 1.0);
setEffScaleKey( spep_5 + 204 -4, base_5f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5f, 0);
setEffRotateKey( spep_5 + 204 -4, base_5f, 0);
setEffAlphaKey( spep_5 + 0, base_5f, 255);
setEffAlphaKey( spep_5 + 204 -4, base_5f, 255);

base_5b = entryEffect( spep_5 + 0, SP_06b, 0x80, -1, 0, 0, 0); -- フィニッシュ	ef_006_back	103	ef_006、ef_006_back　同時再生
setEffMoveKey( spep_5 + 0, base_5b, 0, 0 , 0);
setEffMoveKey( spep_5 + 204 -4, base_5b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5b, 1.0, 1.0);
setEffScaleKey( spep_5 + 204 -4, base_5b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5b, 0);
setEffRotateKey( spep_5 + 204 -4, base_5b, 0);
setEffAlphaKey( spep_5 + 0, base_5b, 255);
setEffAlphaKey( spep_5 + 204 -4, base_5b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 204 -2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 58 -3, 1, 0 );

changeAnime( spep_5 + 0, 1, 105 );

-- setMoveKey( spep_5 -3 + 0, 1, 602.6, -128 , 0 );
setMoveKey( spep_5 -2 + 2, 1, 542, -106.5 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 481.4, -85 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 420.9, -63.4 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 360.2, -41.9 , 0 );
setMoveKey( spep_5 -3 + 9, 1, 360.2, -41.9 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 299.6, -20.4 , 0 );
setMoveKey( spep_5 -3 + 11, 1, 299.6, -20.4 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 239.1, 1.1 , 0 );
setMoveKey( spep_5 -3 + 13, 1, 239.1, 1.1 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 178.5, 22.6 , 0 );
setMoveKey( spep_5 -3 + 15, 1, 178.5, 22.6 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 117.9, 44.2 , 0 );
setMoveKey( spep_5 -3 + 17, 1, 117.9, 44.2 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 157.5, 25.3 , 0 );
setMoveKey( spep_5 -3 + 19, 1, 157.5, 25.3 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 138.5, 19.1 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 137.6, 36.1 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 113.6, 47.8 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 113.8, 37.3 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 96.8, 48 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 93, 38.6 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 116.5, 32.8 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 106.5, 34 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 96.4, 35.1 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 86.4, 36.3 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 67.1, 22.1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 67.8, 36 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 47.4, 43.8 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 47.3, 30.4 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 43.9, 26 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 44.8, 40 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 24.5, 47.7 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 24.3, 34.4 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 21.1, 30 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 22, 43.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.19, 1.19 );
setScaleKey( spep_5 -3 + 10, 1, 1.19, 1.19 );
setScaleKey( spep_5 -3 + 11, 1, 1.19, 1.19 );
setScaleKey( spep_5 -3 + 12, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 16, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 17, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 18, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 36, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 38, 1, 0.29, 0.29 );
setScaleKey( spep_5 -3 + 40, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 58, 1, 0.28, 0.28 );

setRotateKey( spep_5 + 0, 1, 10.9 );
setRotateKey( spep_5 -3 + 16, 1, 10.9 );
setRotateKey( spep_5 -3 + 17, 1, 10.9 );
setRotateKey( spep_5 -3 + 18, 1, 8.5 );
setRotateKey( spep_5 -3 + 58, 1, 8.5 );

-- ** 音 ** --
--気弾飛んでいく
SE021 = playSeVer2( spep_5 + 0, 1021, "", 0, 0, 0, -1);

--気弾ヒット
SE022 = playSeVer2( spep_5 + 18, 1011, "", 0, 0, 0, -1);

--爆発
SE023 = playSeVer2( spep_5 + 68, 1023, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_5 + 72, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 72 -3); -- ダメージ表示フレーム
endPhase( spep_5 + 204 -8); -- 終了フレーム

end
