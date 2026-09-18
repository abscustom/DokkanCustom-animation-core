--1026470:SSRケール(暴走)_ギガンティックインパクト
--sp_effect_b1_00245

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
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

--味方側
SP_01 = 161738;	--俯瞰歩き	ef_001
SP_02 = 161739;	--台詞カットイン	ef_002
SP_03 = 161740;	--ギガンティックインパクト	ef_003
SP_04 = 161742;	--ギガンティックインパクト	ef_004

--敵側
SP_01r = 161738;	--俯瞰歩き	ef_001
SP_02r = 161739;	--台詞カットイン	ef_002
SP_03r = 161741;	--ギガンティックインパクト	ef_003r
SP_04r = 161743;	--ギガンティックインパクト	ef_004r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
--俯瞰歩き (152F) 
------------------------------------------------------

spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  -- ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 152, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 152, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 152, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 152 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 152 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 152, first_f, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 158 + 2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--踏み出す１
SE001 = playSeVer2( spep_0 + 20, 1395, "",spep_0 + 56, 0, 18, -1);
SE002 = playSeVer2( spep_0 + 20, 1011, "",spep_0 + 78, 0, 40, -1);

--踏み出す２
SE003 = playSeVer2( spep_0 + 74, 1395, "",spep_0 + 108, 0, 16, -1);
SE004 = playSeVer2( spep_0 + 74, 1011, "",spep_0 + 134, 0, 40, -1);

--踏み出す３
SE005 = playSeVer2( spep_0 + 128, 1395, "",spep_0 + 152 + 8, 0, 16, -1);
SE006 = playSeVer2( spep_0 + 128, 1011, "",spep_0 + 152 + 34, 0, 40, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 152;


------------------------------------------------------
--台詞カットイン (112F) 
------------------------------------------------------
-- ** エフェクト等 ** --
first_f = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --ef_002
setEffMoveKey( spep_1 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 112, first_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 112, first_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, first_f, 0 );
setEffRotateKey( spep_1 + 112, first_f, 0 );
setEffAlphaKey( spep_1 + 0, first_f, 255 );
setEffAlphaKey( spep_1 + 112 -2, first_f, 255 );
setEffAlphaKey( spep_1 + 112 -1, first_f, 255 );
setEffAlphaKey( spep_1 + 112, first_f, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 110 + 2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 敵キャラクター ** --
n = 1;
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 102 );

setMoveKey( spep_1 + 0, 1, 394.22, -709.31 , 0 );
setMoveKey( spep_1 - n + 2, 1, 453.2, -763.2 , 0 );
setMoveKey( spep_1 - n + 3, 1, 453.2, -763.2 , 0 );
setMoveKey( spep_1 - n + 4, 1, 484.18, -839.09 , 0 );
setMoveKey( spep_1 - n + 5, 1, 484.18, -839.09 , 0 );
setMoveKey( spep_1 - n + 6, 1, 529.16, -858.98 , 0 );
setMoveKey( spep_1 - n + 7, 1, 529.16, -858.98 , 0 );
setMoveKey( spep_1 - n + 8, 1, 574.14, -928.87 , 0 );
setMoveKey( spep_1 - n + 9, 1, 574.14, -928.87 , 0 );
setMoveKey( spep_1 - n + 10, 1, 619.12, -958.76 , 0 );
setMoveKey( spep_1 - n + 11, 1, 619.12, -958.76 , 0 );
setMoveKey( spep_1 - n + 12, 1, 664.1, -1008.65 , 0 );
setMoveKey( spep_1 - n + 13, 1, 664.1, -1008.65 , 0 );
setMoveKey( spep_1 - n + 14, 1, 709.08, -1058.54 , 0 );
setMoveKey( spep_1 - n + 15, 1, 709.08, -1058.54 , 0 );
setMoveKey( spep_1 - n + 16, 1, 754.06, -1108.43 , 0 );

setScaleKey( spep_1 + 0, 1, 8.61, 8.61 );
setScaleKey( spep_1 - n + 2, 1, 9.07, 9.07 );
setScaleKey( spep_1 - n + 3, 1, 9.07, 9.07 );
setScaleKey( spep_1 - n + 4, 1, 9.53, 9.53 );
setScaleKey( spep_1 - n + 5, 1, 9.53, 9.53 );
setScaleKey( spep_1 - n + 6, 1, 9.99, 9.99 );
setScaleKey( spep_1 - n + 7, 1, 9.99, 9.99 );
setScaleKey( spep_1 - n + 8, 1, 10.45, 10.45 );
setScaleKey( spep_1 - n + 9, 1, 10.45, 10.45 );
setScaleKey( spep_1 - n + 10, 1, 10.91, 10.91 );
setScaleKey( spep_1 - n + 11, 1, 10.91, 10.91 );
setScaleKey( spep_1 - n + 12, 1, 11.37, 11.37 );
setScaleKey( spep_1 - n + 13, 1, 11.37, 11.37 );
setScaleKey( spep_1 - n + 14, 1, 11.83, 11.83 );
setScaleKey( spep_1 - n + 15, 1, 11.83, 11.83 );
setScaleKey( spep_1 - n + 16, 1, 12.29, 12.29 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 - n + 16, 1, 0 );

setAlphaKey( spep_1 + 0, 1, 255);
setAlphaKey( spep_1 - n + 16, 1, 255);

setBlendColor( spep_1 + 0 , 1, 2, 0.6, 0.6, 0.6, 0);
setBlendColor( spep_1 - n + 12 , 1, 2, 0.6, 0.6, 0.6, 0.03);
setBlendColor( spep_1 - n + 14 , 1, 2, 0.6, 0.6, 0.6, 0.07);
setBlendColor( spep_1 - n + 16 , 1, 2, 0.6, 0.6, 0.6, 0.10);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 16; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1,  754.06, -1108.43 , 0 );
	setMoveKey( SP_dodge + 1, 1, 799.04, -1158.32 , 0 );
	setMoveKey( SP_dodge + 2, 1, 799.04, -1158.32 , 0 );
	setMoveKey( SP_dodge + 3, 1, 844.02, -1208.21 , 0 );
	setMoveKey( SP_dodge + 4, 1, 844.02, -1208.21 , 0 );
	setMoveKey( SP_dodge + 5, 1, 889, -1258.1 , 0 );
	setMoveKey( SP_dodge + 6, 1, 889, -1258.1 , 0 );
	setMoveKey( SP_dodge + 7, 1, 933.98, -1307.99 , 0 );
	setMoveKey( SP_dodge + 8, 1, 933.98, -1307.99 , 0 );
	setMoveKey( SP_dodge + 9, 1, 978.96, -1357.88 , 0 );
	setMoveKey( SP_dodge + 10, 1, 978.96, -1357.88 , 0 );

	setScaleKey( SP_dodge + 0, 1, 12.29, 12.29 );
	setScaleKey( SP_dodge + 1, 1, 12.75, 12.75 );
	setScaleKey( SP_dodge + 2, 1, 12.75, 12.75 );
	setScaleKey( SP_dodge + 3, 1, 13.21, 13.21 );
	setScaleKey( SP_dodge + 4, 1, 13.21, 13.21 );
	setScaleKey( SP_dodge + 5, 1, 13.67, 13.67 );
	setScaleKey( SP_dodge + 6, 1, 13.67, 13.67 );
	setScaleKey( SP_dodge + 7, 1, 14.13, 14.13 );
	setScaleKey( SP_dodge + 8, 1, 14.13, 14.13 );
	setScaleKey( SP_dodge + 9, 1, 14.59, 14.59 );
	setScaleKey( SP_dodge + 10, 1, 14.59, 14.59 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );

    setAlphaKey( SP_dodge + 0, 1, 255);
    setAlphaKey( SP_dodge + 10, 1, 255);

	setBlendColor( SP_dodge + 0 , 1, 2, 0.6, 0.6, 0.6, 0.10);
	setBlendColor( SP_dodge + 1 , 1, 2, 0.6, 0.6, 0.6, 0.14);
	setBlendColor( SP_dodge + 3 , 1, 2, 0.6, 0.6, 0.6, 0.17);
	setBlendColor( SP_dodge + 5 , 1, 2, 0.6, 0.6, 0.6, 0.21);
	setBlendColor( SP_dodge + 7 , 1, 2, 0.6, 0.6, 0.6, 0.24);
	setBlendColor( SP_dodge + 9 , 1, 2, 0.6, 0.6, 0.6, 0.28);
	setBlendColor( SP_dodge + 10 , 1, 2, 0.6, 0.6, 0.6, 0);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

spep_x = spep_1 + 26;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
setDisp( spep_1 + 112, 1, 0 );
changeAnime( spep_1 + 0, 1, 102 );

setMoveKey( spep_1 - n + 17, 1, 754.06, -1108.43 , 0 );
setMoveKey( spep_1 - n + 18, 1, 799.04, -1158.32 , 0 );
setMoveKey( spep_1 - n + 19, 1, 799.04, -1158.32 , 0 );
setMoveKey( spep_1 - n + 20, 1, 844.02, -1208.21 , 0 );
setMoveKey( spep_1 - n + 21, 1, 844.02, -1208.21 , 0 );
setMoveKey( spep_1 - n + 22, 1, 889, -1258.1 , 0 );
setMoveKey( spep_1 - n + 23, 1, 889, -1258.1 , 0 );
setMoveKey( spep_1 - n + 24, 1, 933.98, -1307.99 , 0 );
setMoveKey( spep_1 - n + 25, 1, 933.98, -1307.99 , 0 );
setMoveKey( spep_1 - n + 26, 1, 978.96, -1357.88 , 0 );
setMoveKey( spep_1 - n + 27, 1, 978.96, -1357.88 , 0 );
setMoveKey( spep_1 - n + 28, 1, 1023.94, -1407.77 , 0 );
setMoveKey( spep_1 - n + 29, 1, 1023.94, -1407.77 , 0 );
setMoveKey( spep_1 - n + 30, 1, 1068.92, -1457.66 , 0 );
setMoveKey( spep_1 - n + 31, 1, 1068.92, -1457.66 , 0 );
setMoveKey( spep_1 - n + 32, 1, 1113.9, -1507.55 , 0 );
setMoveKey( spep_1 - n + 33, 1, 1113.9, -1507.55 , 0 );
setMoveKey( spep_1 - n + 34, 1, 1158.88, -1557.44 , 0 );
setMoveKey( spep_1 - n + 35, 1, 1158.88, -1557.44 , 0 );
setMoveKey( spep_1 - n + 36, 1, 1203.86, -1607.33 , 0 );
setMoveKey( spep_1 - n + 37, 1, 1203.86, -1607.33 , 0 );
setMoveKey( spep_1 - n + 38, 1, 1248.84, -1657.22 , 0 );
setMoveKey( spep_1 - n + 39, 1, 1248.84, -1657.22 , 0 );
setMoveKey( spep_1 - n + 40, 1, 1293.82, -1707.11 , 0 );
setMoveKey( spep_1 - n + 41, 1, 1293.82, -1707.11 , 0 );
setMoveKey( spep_1 - n + 42, 1, 1338.8, -1757 , 0 );
setMoveKey( spep_1 - n + 43, 1, 1338.8, -1757 , 0 );
setMoveKey( spep_1 - n + 44, 1, 1383.78, -1806.89 , 0 );
setMoveKey( spep_1 - n + 45, 1, 1383.78, -1806.89 , 0 );
setMoveKey( spep_1 - n + 46, 1, 1438.76, -1866.78 , 0 );
setMoveKey( spep_1 - n + 47, 1, 1438.76, -1866.78 , 0 );
setMoveKey( spep_1 - n + 48, 1, 1463.74, -1896.67 , 0 );
setMoveKey( spep_1 - n + 49, 1, 1463.74, -1896.67 , 0 );
setMoveKey( spep_1 - n + 50, 1, 1508.72, -1976.56 , 0 );
setMoveKey( spep_1 - n + 51, 1, 1508.72, -1976.56 , 0 );
setMoveKey( spep_1 - n + 52, 1, 1563.7, -1996.45 , 0 );
setMoveKey( spep_1 - n + 53, 1, 1563.7, -1996.45 , 0 );
setMoveKey( spep_1 - n + 54, 1, 1608.68, -2076.34 , 0 );
setMoveKey( spep_1 - n + 55, 1, 1608.68, -2076.34 , 0 );
setMoveKey( spep_1 - n + 56, 1, 1653.66, -2106.23 , 0 );
setMoveKey( spep_1 - n + 57, 1, 1653.66, -2106.23 , 0 );
setMoveKey( spep_1 - n + 58, 1, 1698.64, -2156.12 , 0 );
setMoveKey( spep_1 - n + 59, 1, 1698.64, -2156.12 , 0 );
setMoveKey( spep_1 - n + 60, 1, 1743.62, -2206.01 , 0 );
setMoveKey( spep_1 - n + 61, 1, 1743.62, -2206.01 , 0 );
setMoveKey( spep_1 - n + 62, 1, 1788.6, -2255.9 , 0 );
setMoveKey( spep_1 - n + 63, 1, 1788.6, -2255.9 , 0 );
setMoveKey( spep_1 - n + 64, 1, 1833.58, -2305.79 , 0 );
setMoveKey( spep_1 - n + 65, 1, 1833.58, -2305.79 , 0 );
setMoveKey( spep_1 - n + 66, 1, 1878.56, -2355.68 , 0 );
setMoveKey( spep_1 - n + 67, 1, 1878.56, -2355.68 , 0 );
setMoveKey( spep_1 - n + 68, 1, 1923.54, -2405.57 , 0 );
setMoveKey( spep_1 - n + 69, 1, 1923.54, -2405.57 , 0 );
setMoveKey( spep_1 - n + 70, 1, 1968.52, -2455.46 , 0 );
setMoveKey( spep_1 - n + 71, 1, 1968.52, -2455.46 , 0 );
setMoveKey( spep_1 - n + 72, 1, 2013.5, -2505.35 , 0 );
setMoveKey( spep_1 - n + 73, 1, 2013.5, -2505.35 , 0 );
setMoveKey( spep_1 - n + 74, 1, 2058.48, -2555.24 , 0 );
setMoveKey( spep_1 - n + 75, 1, 2058.48, -2555.24 , 0 );
setMoveKey( spep_1 - n + 76, 1, 2103.46, -2605.13 , 0 );
setMoveKey( spep_1 - n + 77, 1, 2103.46, -2605.13 , 0 );
setMoveKey( spep_1 - n + 78, 1, 2148.44, -2655.02 , 0 );
setMoveKey( spep_1 - n + 79, 1, 2148.44, -2655.02 , 0 );
setMoveKey( spep_1 - n + 80, 1, 2193.42, -2704.91 , 0 );
setMoveKey( spep_1 - n + 81, 1, 2193.42, -2704.91 , 0 );
setMoveKey( spep_1 - n + 82, 1, 2238.4, -2754.8 , 0 );
setMoveKey( spep_1 - n + 83, 1, 2238.4, -2754.8 , 0 );
setMoveKey( spep_1 - n + 84, 1, 2283.38, -2804.69 , 0 );
setMoveKey( spep_1 - n + 85, 1, 2283.38, -2804.69 , 0 );
setMoveKey( spep_1 - n + 86, 1, 2328, -2854.3 , 0 );
setMoveKey( spep_1 - n + 87, 1, 2328, -2854.3 , 0 );
setMoveKey( spep_1 - n + 88, 1, 2372.98, -2904.19 , 0 );
setMoveKey( spep_1 - n + 113, 1, 2372.98, -2904.19 , 0 );

setScaleKey( spep_1 - n + 17, 1, 12.29, 12.29 );
setScaleKey( spep_1 - n + 18, 1, 12.75, 12.75 );
setScaleKey( spep_1 - n + 19, 1, 12.75, 12.75 );
setScaleKey( spep_1 - n + 20, 1, 13.21, 13.21 );
setScaleKey( spep_1 - n + 21, 1, 13.21, 13.21 );
setScaleKey( spep_1 - n + 22, 1, 13.67, 13.67 );
setScaleKey( spep_1 - n + 23, 1, 13.67, 13.67 );
setScaleKey( spep_1 - n + 24, 1, 14.13, 14.13 );
setScaleKey( spep_1 - n + 25, 1, 14.13, 14.13 );
setScaleKey( spep_1 - n + 26, 1, 14.59, 14.59 );
setScaleKey( spep_1 - n + 27, 1, 14.59, 14.59 );
setScaleKey( spep_1 - n + 28, 1, 15.05, 15.05 );
setScaleKey( spep_1 - n + 29, 1, 15.05, 15.05 );
setScaleKey( spep_1 - n + 30, 1, 15.51, 15.51 );
setScaleKey( spep_1 - n + 31, 1, 15.51, 15.51 );
setScaleKey( spep_1 - n + 32, 1, 15.97, 15.97 );
setScaleKey( spep_1 - n + 33, 1, 15.97, 15.97 );
setScaleKey( spep_1 - n + 34, 1, 16.43, 16.43 );
setScaleKey( spep_1 - n + 35, 1, 16.43, 16.43 );
setScaleKey( spep_1 - n + 36, 1, 16.89, 16.89 );
setScaleKey( spep_1 - n + 37, 1, 16.89, 16.89 );
setScaleKey( spep_1 - n + 38, 1, 17.35, 17.35 );
setScaleKey( spep_1 - n + 39, 1, 17.35, 17.35 );
setScaleKey( spep_1 - n + 40, 1, 17.81, 17.81 );
setScaleKey( spep_1 - n + 41, 1, 17.81, 17.81 );
setScaleKey( spep_1 - n + 42, 1, 18.27, 18.27 );
setScaleKey( spep_1 - n + 43, 1, 18.27, 18.27 );
setScaleKey( spep_1 - n + 44, 1, 18.73, 18.73 );
setScaleKey( spep_1 - n + 45, 1, 18.73, 18.73 );
setScaleKey( spep_1 - n + 46, 1, 19.19, 19.19 );
setScaleKey( spep_1 - n + 47, 1, 19.19, 19.19 );
setScaleKey( spep_1 - n + 48, 1, 19.65, 19.65 );
setScaleKey( spep_1 - n + 49, 1, 19.65, 19.65 );
setScaleKey( spep_1 - n + 50, 1, 20.11, 20.11 );
setScaleKey( spep_1 - n + 51, 1, 20.11, 20.11 );
setScaleKey( spep_1 - n + 52, 1, 20.57, 20.57 );
setScaleKey( spep_1 - n + 53, 1, 20.57, 20.57 );
setScaleKey( spep_1 - n + 54, 1, 21.03, 21.03 );
setScaleKey( spep_1 - n + 55, 1, 21.03, 21.03 );
setScaleKey( spep_1 - n + 56, 1, 21.49, 21.49 );
setScaleKey( spep_1 - n + 57, 1, 21.49, 21.49 );
setScaleKey( spep_1 - n + 58, 1, 21.95, 21.95 );
setScaleKey( spep_1 - n + 59, 1, 21.95, 21.95 );
setScaleKey( spep_1 - n + 60, 1, 22.41, 22.41 );
setScaleKey( spep_1 - n + 61, 1, 22.41, 22.41 );
setScaleKey( spep_1 - n + 62, 1, 22.87, 22.87 );
setScaleKey( spep_1 - n + 63, 1, 22.87, 22.87 );
setScaleKey( spep_1 - n + 64, 1, 23.33, 23.33 );
setScaleKey( spep_1 - n + 65, 1, 23.33, 23.33 );
setScaleKey( spep_1 - n + 66, 1, 23.79, 23.79 );
setScaleKey( spep_1 - n + 67, 1, 23.79, 23.79 );
setScaleKey( spep_1 - n + 68, 1, 24.25, 24.25 );
setScaleKey( spep_1 - n + 69, 1, 24.25, 24.25 );
setScaleKey( spep_1 - n + 70, 1, 24.71, 24.71 );
setScaleKey( spep_1 - n + 71, 1, 24.71, 24.71 );
setScaleKey( spep_1 - n + 72, 1, 25.17, 25.17 );
setScaleKey( spep_1 - n + 73, 1, 25.17, 25.17 );
setScaleKey( spep_1 - n + 74, 1, 25.63, 25.63 );
setScaleKey( spep_1 - n + 75, 1, 25.63, 25.63 );
setScaleKey( spep_1 - n + 76, 1, 26.09, 26.09 );
setScaleKey( spep_1 - n + 77, 1, 26.09, 26.09 );
setScaleKey( spep_1 - n + 78, 1, 26.55, 26.55 );
setScaleKey( spep_1 - n + 79, 1, 26.55, 26.55 );
setScaleKey( spep_1 - n + 80, 1, 27.01, 27.01 );
setScaleKey( spep_1 - n + 81, 1, 27.01, 27.01 );
setScaleKey( spep_1 - n + 82, 1, 27.47, 27.47 );
setScaleKey( spep_1 - n + 83, 1, 27.47, 27.47 );
setScaleKey( spep_1 - n + 84, 1, 27.93, 27.93 );
setScaleKey( spep_1 - n + 85, 1, 27.93, 27.93 );
setScaleKey( spep_1 - n + 86, 1, 28.25, 28.25 );
setScaleKey( spep_1 - n + 113, 1, 28.25, 28.25 );

setRotateKey( spep_1 - n + 17, 1, 0 );
setRotateKey( spep_1 - n + 113, 1, 0 );

setAlphaKey( spep_1 - n + 17, 1, 255);
setAlphaKey( spep_1 - n + 113, 1, 255);

setBlendColor( spep_1 - n + 18 , 1, 2, 0.6, 0.6, 0.6, 0.14);
setBlendColor( spep_1 - n + 20 , 1, 2, 0.6, 0.6, 0.6, 0.17);
setBlendColor( spep_1 - n + 22 , 1, 2, 0.6, 0.6, 0.6, 0.21);
setBlendColor( spep_1 - n + 24 , 1, 2, 0.6, 0.6, 0.6, 0.24);
setBlendColor( spep_1 - n + 26 , 1, 2, 0.6, 0.6, 0.6, 0.28);
setBlendColor( spep_1 - n + 28 , 1, 2, 0.6, 0.6, 0.6, 0.31);
setBlendColor( spep_1 - n + 30 , 1, 2, 0.6, 0.6, 0.6, 0.35);
setBlendColor( spep_1 - n + 32 , 1, 2, 0.6, 0.6, 0.6, 0.38);
setBlendColor( spep_1 - n + 34 , 1, 2, 0.6, 0.6, 0.6, 0.42);
setBlendColor( spep_1 - n + 36 , 1, 2, 0.6, 0.6, 0.6, 0.45);
setBlendColor( spep_1 - n + 38 , 1, 2, 0.6, 0.6, 0.6, 0.49);
setBlendColor( spep_1 - n + 40 , 1, 2, 0.6, 0.6, 0.6, 0.52);
setBlendColor( spep_1 - n + 42 , 1, 2, 0.6, 0.6, 0.6, 0.56);
setBlendColor( spep_1 - n + 44 , 1, 2, 0.6, 0.6, 0.6, 0.59);
setBlendColor( spep_1 - n + 46 , 1, 2, 0.6, 0.6, 0.6, 0.63);
setBlendColor( spep_1 - n + 48 , 1, 2, 0.6, 0.6, 0.6, 0.66);
setBlendColor( spep_1 - n + 50 , 1, 2, 0.6, 0.6, 0.6, 0.70);
setBlendColor( spep_1 - n + 52 , 1, 2, 0.6, 0.6, 0.6, 0.73);
setBlendColor( spep_1 - n + 54 , 1, 2, 0.6, 0.6, 0.6, 0.77);
setBlendColor( spep_1 - n + 56 , 1, 2, 0.6, 0.6, 0.6, 0.80);
setBlendColor( spep_1 - n + 58 , 1, 2, 0.6, 0.6, 0.6, 0.84);
setBlendColor( spep_1 - n + 60 , 1, 2, 0.6, 0.6, 0.6, 0.87);
setBlendColor( spep_1 - n + 62 , 1, 2, 0.6, 0.6, 0.6, 0.91);
setBlendColor( spep_1 - n + 64 , 1, 2, 0.6, 0.6, 0.6, 0.94);
setBlendColor( spep_1 - n + 66 , 1, 2, 0.6, 0.6, 0.6, 0.98);
setBlendColor( spep_1 - n + 68 , 1, 2, 0.6, 0.6, 0.6, 1.0);
setBlendColor( spep_1 - n + 113 , 1, 2, 0.6, 0.6, 0.6, 0);

-- ** 音 ** --
--顔カットイン
SE007 = playSeVer2( spep_1 + 32, 1018, "", 0, 0, 0, -1);

--踏み出す４
SE008 = playSeVer2( spep_1 + 44, 1395, "",spep_1 + 78, 0, 16, -1);
SE009 = playSeVer2( spep_1 + 44, 1011, "",spep_1 + 98, 0, 40, -1);

--踏み出す５
SE010 = playSeVer2( spep_1 + 74, 1395, "",spep_1 + 104, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 74, SE010, 79 );
SE011 = playSeVer2( spep_1 + 74, 1011, "",spep_1 + 112 + 10, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 74, SE011, 86 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 112;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;



------------------------------------------------------
--ギガンティックインパクト (492F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ef_003
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 492, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 492, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 492, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 492, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ef_004
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 492, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 492, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 492, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 492, finish_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 492 + 2, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 敵キャラクター ** --
n = 3;
setDisp( spep_3 - n + 104, 1, 1 );
setDisp( spep_3 - n + 304, 1, 0 );
changeAnime( spep_3 - n + 104, 1, 100 );
changeAnime( spep_3 - n + 108, 1, 108 );
changeAnime( spep_3 - n + 164, 1, 106 );
changeAnime( spep_3 - n + 202, 1, 108 );
changeAnime( spep_3 - n + 238, 1, 100 );
changeAnime( spep_3 - n + 262, 1, 108 );
changeAnime( spep_3 - n + 278, 1, 106 );

setMoveKey( spep_3 - n + 104, 1, 1.8, -4.5 , 0 ); 
setMoveKey( spep_3 - n + 105, 1, 1.8, -4.5 , 0 ); 
setMoveKey( spep_3 - n + 105, 1, 1.8, -4.5 , 0 ); 
setMoveKey( spep_3 - n + 106, 1, 11.8, 5.5 , 0 );
setMoveKey( spep_3 - n + 107, 1, 11.8, 5.5 , 0 );
setMoveKey( spep_3 - n + 107, 1, 11.8, 5.5 , 0 );
setMoveKey( spep_3 - n + 108, 1, 56.7, -21.1 , 0 );
setMoveKey( spep_3 - n + 109, 1, 56.7, -21.1 , 0 );
setMoveKey( spep_3 - n + 110, 1, 32.5, -56.7 , 0 );
setMoveKey( spep_3 - n + 111, 1, 32.5, -56.7 , 0 );
setMoveKey( spep_3 - n + 112, 1, 82.3, -56.3 , 0 );
setMoveKey( spep_3 - n + 113, 1, 82.3, -56.3 , 0 );
setMoveKey( spep_3 - n + 114, 1, 56.2, -35.8 , 0 );
setMoveKey( spep_3 - n + 115, 1, 56.2, -35.8 , 0 );
setMoveKey( spep_3 - n + 116, 1, 94, -57.4 , 0 );
setMoveKey( spep_3 - n + 117, 1, 94, -57.4 , 0 );
setMoveKey( spep_3 - n + 118, 1, 119.9, -19 , 0 );
setMoveKey( spep_3 - n + 119, 1, 119.9, -19 , 0 );
setMoveKey( spep_3 - n + 120, 1, 133.7, -40.6 , 0 );
setMoveKey( spep_3 - n + 121, 1, 133.7, -40.6 , 0 );
setMoveKey( spep_3 - n + 122, 1, 133.5, -38.2 , 0 );
setMoveKey( spep_3 - n + 123, 1, 133.5, -38.2 , 0 );
setMoveKey( spep_3 - n + 124, 1, 137.4, -17.7 , 0 );
setMoveKey( spep_3 - n + 125, 1, 137.4, -17.7 , 0 );
setMoveKey( spep_3 - n + 126, 1, 161.2, -37.3 , 0 );
setMoveKey( spep_3 - n + 127, 1, 161.2, -37.3 , 0 );
setMoveKey( spep_3 - n + 128, 1, 150.1, -56.6 , 0 );
setMoveKey( spep_3 - n + 129, 1, 150.1, -56.6 , 0 );
setMoveKey( spep_3 - n + 130, 1, 170.8, -21.7 , 0 );
setMoveKey( spep_3 - n + 131, 1, 170.8, -21.7 , 0 );
setMoveKey( spep_3 - n + 132, 1, 174.5, -50.8 , 0 );
setMoveKey( spep_3 - n + 133, 1, 174.5, -50.8 , 0 );
setMoveKey( spep_3 - n + 134, 1, 140, -20.7 , 0 );
setMoveKey( spep_3 - n + 135, 1, 140, -20.7 , 0 );
setMoveKey( spep_3 - n + 136, 1, 170.4, -33.6 , 0 );
setMoveKey( spep_3 - n + 137, 1, 170.4, -33.6 , 0 );
setMoveKey( spep_3 - n + 138, 1, 152.6, -31.3 , 0 );
setMoveKey( spep_3 - n + 139, 1, 152.6, -31.3 , 0 );
setMoveKey( spep_3 - n + 140, 1, 150.6, -30 , 0 );
setMoveKey( spep_3 - n + 141, 1, 150.6, -30 , 0 );
setMoveKey( spep_3 - n + 142, 1, 148.5, -28.6 , 0 );
setMoveKey( spep_3 - n + 143, 1, 148.5, -28.6 , 0 );
setMoveKey( spep_3 - n + 144, 1, 146.2, -27 , 0 );
setMoveKey( spep_3 - n + 145, 1, 146.2, -27 , 0 );
setMoveKey( spep_3 - n + 146, 1, 143.7, -25.3 , 0 );
setMoveKey( spep_3 - n + 147, 1, 143.7, -25.3 , 0 );
setMoveKey( spep_3 - n + 148, 1, 141, -23.3 , 0 );
setMoveKey( spep_3 - n + 149, 1, 141, -23.3 , 0 );
setMoveKey( spep_3 - n + 150, 1, 138.2, -21.4 , 0 );
setMoveKey( spep_3 - n + 151, 1, 138.2, -21.4 , 0 );
setMoveKey( spep_3 - n + 152, 1, 135.2, -19.4 , 0 );
setMoveKey( spep_3 - n + 153, 1, 135.2, -19.4 , 0 );
setMoveKey( spep_3 - n + 154, 1, 132.3, -17.3 , 0 );
setMoveKey( spep_3 - n + 155, 1, 132.3, -17.3 , 0 );
setMoveKey( spep_3 - n + 156, 1, 129.4, -15.3 , 0 );
setMoveKey( spep_3 - n + 157, 1, 129.4, -15.3 , 0 );
setMoveKey( spep_3 - n + 158, 1, 126.6, -13.4 , 0 );
setMoveKey( spep_3 - n + 159, 1, 126.6, -13.4 , 0 );
setMoveKey( spep_3 - n + 160, 1, 124, -11.6 , 0 );
setMoveKey( spep_3 - n + 161, 1, 124, -11.6 , 0 );
setMoveKey( spep_3 - n + 162, 1, 121.5, -10 , 0 );
setMoveKey( spep_3 - n + 163, 1, 121.5, -10 , 0 );
setMoveKey( spep_3 - n + 164, 1, 84, 48 , 0 );
setMoveKey( spep_3 - n + 165, 1, 84, 48 , 0 );
setMoveKey( spep_3 - n + 166, 1, 92.2, 23.3 , 0 );
setMoveKey( spep_3 - n + 167, 1, 92.2, 23.3 , 0 );
setMoveKey( spep_3 - n + 168, 1, 138.3, 57.6 , 0 );
setMoveKey( spep_3 - n + 169, 1, 138.3, 57.6 , 0 );
setMoveKey( spep_3 - n + 170, 1, 124.5, 50.9 , 0 );
setMoveKey( spep_3 - n + 171, 1, 124.5, 50.9 , 0 );
setMoveKey( spep_3 - n + 172, 1, 157.5, 18.6 , 0 );
setMoveKey( spep_3 - n + 173, 1, 157.5, 18.6 , 0 );
setMoveKey( spep_3 - n + 174, 1, 130.5, 14.3 , 0 );
setMoveKey( spep_3 - n + 175, 1, 130.5, 14.3 , 0 );
setMoveKey( spep_3 - n + 176, 1, 161.5, 48 , 0 );
setMoveKey( spep_3 - n + 177, 1, 161.5, 48 , 0 );
setMoveKey( spep_3 - n + 178, 1, 130.6, 44.7 , 0 );
setMoveKey( spep_3 - n + 179, 1, 130.6, 44.7 , 0 );
setMoveKey( spep_3 - n + 180, 1, 158.6, 17.4 , 0 );
setMoveKey( spep_3 - n + 181, 1, 158.6, 17.4 , 0 );
setMoveKey( spep_3 - n + 182, 1, 135.6, 39.1 , 0 );
setMoveKey( spep_3 - n + 183, 1, 135.6, 39.1 , 0 );
setMoveKey( spep_3 - n + 184, 1, 162.6, 39.8 , 0 );
setMoveKey( spep_3 - n + 185, 1, 162.6, 39.8 , 0 );
setMoveKey( spep_3 - n + 186, 1, 154.6, 23.5 , 0 );
setMoveKey( spep_3 - n + 187, 1, 154.6, 23.5 , 0 );
setMoveKey( spep_3 - n + 188, 1, 151.9, 23.5 , 0 );
setMoveKey( spep_3 - n + 189, 1, 151.9, 23.5 , 0 );
setMoveKey( spep_3 - n + 190, 1, 148.4, 23.5 , 0 );
setMoveKey( spep_3 - n + 191, 1, 148.4, 23.5 , 0 );
setMoveKey( spep_3 - n + 192, 1, 144, 23.5 , 0 );
setMoveKey( spep_3 - n + 193, 1, 144, 23.5 , 0 );
setMoveKey( spep_3 - n + 194, 1, 138.8, 23.6 , 0 );
setMoveKey( spep_3 - n + 195, 1, 138.8, 23.6 , 0 );
setMoveKey( spep_3 - n + 196, 1, 133.1, 23.6 , 0 );
setMoveKey( spep_3 - n + 197, 1, 133.1, 23.6 , 0 );
setMoveKey( spep_3 - n + 198, 1, 127.3, 23.6 , 0 );
setMoveKey( spep_3 - n + 199, 1, 127.3, 23.6 , 0 );
setMoveKey( spep_3 - n + 200, 1, 122.3, 23.5 , 0 );
setMoveKey( spep_3 - n + 201, 1, 122.3, 23.5 , 0 );
setMoveKey( spep_3 - n + 202, 1, 92.6, 7.5 , 0 );
setMoveKey( spep_3 - n + 203, 1, 92.6, 7.5 , 0 );
setMoveKey( spep_3 - n + 204, 1, 148.3, -2.8 , 0 );
setMoveKey( spep_3 - n + 205, 1, 148.3, -2.8 , 0 );
setMoveKey( spep_3 - n + 206, 1, 216.9, -24.2 , 0 );
setMoveKey( spep_3 - n + 207, 1, 216.9, -24.2 , 0 );
setMoveKey( spep_3 - n + 208, 1, 248.6, -10.5 , 0 );
setMoveKey( spep_3 - n + 209, 1, 248.6, -10.5 , 0 );
setMoveKey( spep_3 - n + 210, 1, 286.9, -10.6 , 0 );
setMoveKey( spep_3 - n + 211, 1, 286.9, -10.6 , 0 );
setMoveKey( spep_3 - n + 212, 1, 273.1, -42.7 , 0 );
setMoveKey( spep_3 - n + 213, 1, 273.1, -42.7 , 0 );
setMoveKey( spep_3 - n + 214, 1, 312.4, -39.8 , 0 );
setMoveKey( spep_3 - n + 215, 1, 312.4, -39.8 , 0 );
setMoveKey( spep_3 - n + 216, 1, 325.6, -18.9 , 0 );
setMoveKey( spep_3 - n + 217, 1, 325.6, -18.9 , 0 );
setMoveKey( spep_3 - n + 218, 1, 320.9, -43 , 0 );
setMoveKey( spep_3 - n + 219, 1, 320.9, -43 , 0 );
setMoveKey( spep_3 - n + 220, 1, 335.1, -22.1 , 0 );
setMoveKey( spep_3 - n + 221, 1, 335.1, -22.1 , 0 );
setMoveKey( spep_3 - n + 222, 1, 371.3, -49.2 , 0 );
setMoveKey( spep_3 - n + 223, 1, 371.3, -49.2 , 0 );
setMoveKey( spep_3 - n + 224, 1, 373.6, -40.3 , 0 );
setMoveKey( spep_3 - n + 225, 1, 373.6, -40.3 , 0 );
setMoveKey( spep_3 - n + 226, 1, 387.8, -42.4 , 0 );
setMoveKey( spep_3 - n + 227, 1, 387.8, -42.4 , 0 );
setMoveKey( spep_3 - n + 228, 1, 402.1, -44.5 , 0 );
setMoveKey( spep_3 - n + 229, 1, 402.1, -44.5 , 0 );
setMoveKey( spep_3 - n + 230, 1, 503.6, -32.1 , 0 );
setMoveKey( spep_3 - n + 231, 1, 503.6, -32.1 , 0 );
setMoveKey( spep_3 - n + 232, 1, 608.3, -20.2 , 0 );
setMoveKey( spep_3 - n + 233, 1, 608.3, -20.2 , 0 );
setMoveKey( spep_3 - n + 234, 1, 716.2, -8.8 , 0 );
setMoveKey( spep_3 - n + 235, 1, 716.2, -8.8 , 0 );
setMoveKey( spep_3 - n + 236, 1, 827.3, 2.2 , 0 );
setMoveKey( spep_3 - n + 261, 1, 827.3, 2.2 , 0 );
setMoveKey( spep_3 - n + 261, 1, 827.3, 2.2 , 0 );
setMoveKey( spep_3 - n + 262, 1, 447.3, -72 , 0 ); --気弾
setMoveKey( spep_3 - n + 263, 1, 447.3, -72 , 0 );
setMoveKey( spep_3 - n + 264, 1, 411.4, -57.6 , 0 );
setMoveKey( spep_3 - n + 265, 1, 411.4, -57.6 , 0 );
setMoveKey( spep_3 - n + 266, 1, 375.5, -43.3 , 0 );
setMoveKey( spep_3 - n + 267, 1, 375.5, -43.3 , 0 );
setMoveKey( spep_3 - n + 268, 1, 339.6, -28.9 , 0 );
setMoveKey( spep_3 - n + 269, 1, 339.6, -28.9 , 0 );
setMoveKey( spep_3 - n + 270, 1, 334.2, -28.9 , 0 );
setMoveKey( spep_3 - n + 271, 1, 334.2, -28.9 , 0 );
setMoveKey( spep_3 - n + 272, 1, 328.9, -28.9 , 0 );
setMoveKey( spep_3 - n + 273, 1, 328.9, -28.9 , 0 );
setMoveKey( spep_3 - n + 274, 1, 323.5, -28.9 , 0 );
setMoveKey( spep_3 - n + 275, 1, 323.5, -28.9 , 0 );
setMoveKey( spep_3 - n + 276, 1, 318.1, -28.9 , 0 );
setMoveKey( spep_3 - n + 277, 1, 318.1, -28.9 , 0 );
setMoveKey( spep_3 - n + 278, 1, 236.2, -23.9 , 0 );
setMoveKey( spep_3 - n + 279, 1, 236.2, -23.9 , 0 );
setMoveKey( spep_3 - n + 280, 1, 236.4, -12.2 , 0 );
setMoveKey( spep_3 - n + 281, 1, 236.4, -12.2 , 0 );
setMoveKey( spep_3 - n + 282, 1, 256.2, -37.5 , 0 );
setMoveKey( spep_3 - n + 283, 1, 256.2, -37.5 , 0 );
setMoveKey( spep_3 - n + 284, 1, 237, -23.9 , 0 );
setMoveKey( spep_3 - n + 285, 1, 237, -23.9 , 0 );
setMoveKey( spep_3 - n + 286, 1, 280.2, -23.8 , 0 );
setMoveKey( spep_3 - n + 287, 1, 280.2, -23.8 , 0 );
setMoveKey( spep_3 - n + 288, 1, 249.3, -39.4 , 0 );
setMoveKey( spep_3 - n + 289, 1, 249.3, -39.4 , 0 );
setMoveKey( spep_3 - n + 290, 1, 282.7, -16 , 0 );
setMoveKey( spep_3 - n + 291, 1, 282.7, -16 , 0 );
setMoveKey( spep_3 - n + 292, 1, 290.8, -43.2 , 0 );
setMoveKey( spep_3 - n + 293, 1, 290.8, -43.2 , 0 );
setMoveKey( spep_3 - n + 294, 1, 272.8, -13.8 , 0 );
setMoveKey( spep_3 - n + 295, 1, 272.8, -13.8 , 0 );
setMoveKey( spep_3 - n + 296, 1, 274.3, -44.9 , 0 );
setMoveKey( spep_3 - n + 297, 1, 274.3, -44.9 , 0 );
setMoveKey( spep_3 - n + 298, 1, 295.3, -29.1 , 0 );
setMoveKey( spep_3 - n + 299, 1, 295.3, -29.1 , 0 );
setMoveKey( spep_3 - n + 300, 1, 300.7, -30.9 , 0 );
setMoveKey( spep_3 - n + 304, 1, 300.7, -30.9 , 0 );

setScaleKey( spep_3 - n + 104, 1, 1.8, 1.8 );
setScaleKey( spep_3 - n + 107, 1, 1.8, 1.8 );
setScaleKey( spep_3 - n + 108, 1, 2, 2 );
setScaleKey( spep_3 - n + 109, 1, 2, 2 );
setScaleKey( spep_3 - n + 110, 1, 1.98, 1.98 );
setScaleKey( spep_3 - n + 111, 1, 1.98, 1.98 );
setScaleKey( spep_3 - n + 112, 1, 1.97, 1.97 );
setScaleKey( spep_3 - n + 113, 1, 1.97, 1.97 );
setScaleKey( spep_3 - n + 114, 1, 1.95, 1.95 );
setScaleKey( spep_3 - n + 115, 1, 1.95, 1.95 );
setScaleKey( spep_3 - n + 116, 1, 1.93, 1.93 );
setScaleKey( spep_3 - n + 117, 1, 1.93, 1.93 );
setScaleKey( spep_3 - n + 118, 1, 1.92, 1.92 );
setScaleKey( spep_3 - n + 119, 1, 1.92, 1.92 );
setScaleKey( spep_3 - n + 120, 1, 1.9, 1.9 );
setScaleKey( spep_3 - n + 121, 1, 1.9, 1.9 );
setScaleKey( spep_3 - n + 122, 1, 1.88, 1.88 );
setScaleKey( spep_3 - n + 123, 1, 1.88, 1.88 );
setScaleKey( spep_3 - n + 124, 1, 1.87, 1.87 );
setScaleKey( spep_3 - n + 125, 1, 1.87, 1.87 );
setScaleKey( spep_3 - n + 126, 1, 1.85, 1.85 );
setScaleKey( spep_3 - n + 163, 1, 1.85, 1.85 );
setScaleKey( spep_3 - n + 164, 1, 1.9, 1.9 );
setScaleKey( spep_3 - n + 165, 1, 1.9, 1.9 );
setScaleKey( spep_3 - n + 166, 1, 1.88, 1.88 );
setScaleKey( spep_3 - n + 167, 1, 1.88, 1.88 );
setScaleKey( spep_3 - n + 168, 1, 1.86, 1.86 );
setScaleKey( spep_3 - n + 169, 1, 1.86, 1.86 );
setScaleKey( spep_3 - n + 170, 1, 1.85, 1.85 );
setScaleKey( spep_3 - n + 171, 1, 1.85, 1.85 );
setScaleKey( spep_3 - n + 172, 1, 1.84, 1.84 );
setScaleKey( spep_3 - n + 173, 1, 1.84, 1.84 );
setScaleKey( spep_3 - n + 174, 1, 1.83, 1.83 );
setScaleKey( spep_3 - n + 177, 1, 1.83, 1.83 );
setScaleKey( spep_3 - n + 178, 1, 1.82, 1.82 );
setScaleKey( spep_3 - n + 181, 1, 1.82, 1.82 );
setScaleKey( spep_3 - n + 182, 1, 1.81, 1.81 );
setScaleKey( spep_3 - n + 183, 1, 1.81, 1.81 );
setScaleKey( spep_3 - n + 184, 1, 1.8, 1.8 );
setScaleKey( spep_3 - n + 189, 1, 1.8, 1.8 );
setScaleKey( spep_3 - n + 190, 1, 1.81, 1.81 );
setScaleKey( spep_3 - n + 193, 1, 1.81, 1.81 );
setScaleKey( spep_3 - n + 194, 1, 1.82, 1.82 );
setScaleKey( spep_3 - n + 195, 1, 1.82, 1.82 );
setScaleKey( spep_3 - n + 196, 1, 1.83, 1.83 );
setScaleKey( spep_3 - n + 197, 1, 1.83, 1.83 );
setScaleKey( spep_3 - n + 198, 1, 1.84, 1.84 );
setScaleKey( spep_3 - n + 199, 1, 1.84, 1.84 );
setScaleKey( spep_3 - n + 200, 1, 1.85, 1.85 );
setScaleKey( spep_3 - n + 201, 1, 1.85, 1.85 );
setScaleKey( spep_3 - n + 202, 1, 2, 2 );
setScaleKey( spep_3 - n + 203, 1, 2, 2 );
setScaleKey( spep_3 - n + 204, 1, 1.97, 1.97 );
setScaleKey( spep_3 - n + 205, 1, 1.97, 1.97 );
setScaleKey( spep_3 - n + 206, 1, 1.93, 1.93 );
setScaleKey( spep_3 - n + 207, 1, 1.93, 1.93 );
setScaleKey( spep_3 - n + 208, 1, 1.9, 1.9 );
setScaleKey( spep_3 - n + 209, 1, 1.9, 1.9 );
setScaleKey( spep_3 - n + 210, 1, 1.91, 1.91 );
setScaleKey( spep_3 - n + 212, 1, 1.91, 1.91 );
setScaleKey( spep_3 - n + 213, 1, 1.91, 1.91 );
setScaleKey( spep_3 - n + 214, 1, 1.92, 1.92 );
setScaleKey( spep_3 - n + 215, 1, 1.92, 1.92 );
setScaleKey( spep_3 - n + 216, 1, 1.93, 1.93 );
setScaleKey( spep_3 - n + 217, 1, 1.93, 1.93 );
setScaleKey( spep_3 - n + 218, 1, 1.94, 1.94 );
setScaleKey( spep_3 - n + 221, 1, 1.94, 1.94 );
setScaleKey( spep_3 - n + 222, 1, 1.95, 1.95 );
setScaleKey( spep_3 - n + 223, 1, 1.95, 1.95 );
setScaleKey( spep_3 - n + 224, 1, 1.96, 1.96 );
setScaleKey( spep_3 - n + 227, 1, 1.96, 1.96 );
setScaleKey( spep_3 - n + 228, 1, 1.97, 1.97 );
setScaleKey( spep_3 - n + 229, 1, 1.97, 1.97 );
setScaleKey( spep_3 - n + 230, 1, 2.2, 2.2 );
setScaleKey( spep_3 - n + 231, 1, 2.2, 2.2 );
setScaleKey( spep_3 - n + 232, 1, 2.43, 2.43 );
setScaleKey( spep_3 - n + 233, 1, 2.43, 2.43 );
setScaleKey( spep_3 - n + 234, 1, 2.66, 2.66 );
setScaleKey( spep_3 - n + 235, 1, 2.66, 2.66 );
setScaleKey( spep_3 - n + 236, 1, 2.9, 2.9 );
setScaleKey( spep_3 - n + 261, 1, 2.9, 2.9 );
setScaleKey( spep_3 - n + 262, 1, 3.19, 3.19 ); --気弾
setScaleKey( spep_3 - n + 277, 1, 3.19, 3.19 );
setScaleKey( spep_3 - n + 278, 1, 2.76, 2.76 );
setScaleKey( spep_3 - n + 301, 1, 2.76, 2.76 );
setScaleKey( spep_3 - n + 304, 1, 2.76, 2.76 );

setRotateKey( spep_3 - n + 104, 1, 0 );
setRotateKey( spep_3 - n + 109, 1, 0 );
setRotateKey( spep_3 - n + 110, 1, 0.1 );
setRotateKey( spep_3 - n + 113, 1, 0.1 );
setRotateKey( spep_3 - n + 114, 1, 0.2 );
setRotateKey( spep_3 - n + 117, 1, 0.2 );
setRotateKey( spep_3 - n + 118, 1, 0.3 );
setRotateKey( spep_3 - n + 121, 1, 0.3 );
setRotateKey( spep_3 - n + 122, 1, 0.4 );
setRotateKey( spep_3 - n + 125, 1, 0.4 );
setRotateKey( spep_3 - n + 126, 1, 0.5 );
setRotateKey( spep_3 - n + 129, 1, 0.5 );
setRotateKey( spep_3 - n + 130, 1, 0.6 );
setRotateKey( spep_3 - n + 135, 1, 0.6 );
setRotateKey( spep_3 - n + 136, 1, 0.7 );
setRotateKey( spep_3 - n + 139, 1, 0.7 );
setRotateKey( spep_3 - n + 140, 1, 0.8 );
setRotateKey( spep_3 - n + 143, 1, 0.8 );
setRotateKey( spep_3 - n + 144, 1, 0.9 );
setRotateKey( spep_3 - n + 145, 1, 0.9 );
setRotateKey( spep_3 - n + 146, 1, 1 );
setRotateKey( spep_3 - n + 149, 1, 1 );
setRotateKey( spep_3 - n + 150, 1, 1.1 );
setRotateKey( spep_3 - n + 151, 1, 1.1 );
setRotateKey( spep_3 - n + 152, 1, 1.2 );
setRotateKey( spep_3 - n + 153, 1, 1.2 );
setRotateKey( spep_3 - n + 154, 1, 1.3 );
setRotateKey( spep_3 - n + 157, 1, 1.3 );
setRotateKey( spep_3 - n + 158, 1, 1.4 );
setRotateKey( spep_3 - n + 159, 1, 1.4 );
setRotateKey( spep_3 - n + 160, 1, 1.5 );
setRotateKey( spep_3 - n + 161, 1, 1.5 );
setRotateKey( spep_3 - n + 162, 1, 1.6 );
setRotateKey( spep_3 - n + 163, 1, 1.6 );
setRotateKey( spep_3 - n + 164, 1, -32.1 );
setRotateKey( spep_3 - n + 171, 1, -32.1 );
setRotateKey( spep_3 - n + 172, 1, -31.9 );
setRotateKey( spep_3 - n + 173, 1, -31.9 );
setRotateKey( spep_3 - n + 174, 1, -31.7 );
setRotateKey( spep_3 - n + 175, 1, -31.7 );
setRotateKey( spep_3 - n + 176, 1, -31.4 );
setRotateKey( spep_3 - n + 177, 1, -31.4 );
setRotateKey( spep_3 - n + 178, 1, -31.2 );
setRotateKey( spep_3 - n + 179, 1, -31.2 );
setRotateKey( spep_3 - n + 180, 1, -31 );
setRotateKey( spep_3 - n + 181, 1, -31 );
setRotateKey( spep_3 - n + 182, 1, -30.8 );
setRotateKey( spep_3 - n + 183, 1, -30.8 );
setRotateKey( spep_3 - n + 184, 1, -30.5 );
setRotateKey( spep_3 - n + 185, 1, -30.5 );
setRotateKey( spep_3 - n + 186, 1, -30.3 );
setRotateKey( spep_3 - n + 187, 1, -30.3 );
setRotateKey( spep_3 - n + 188, 1, -30.8 );
setRotateKey( spep_3 - n + 189, 1, -30.8 );
setRotateKey( spep_3 - n + 190, 1, -31.3 );
setRotateKey( spep_3 - n + 191, 1, -31.3 );
setRotateKey( spep_3 - n + 192, 1, -32.1 );
setRotateKey( spep_3 - n + 193, 1, -32.1 );
setRotateKey( spep_3 - n + 194, 1, -32.9 );
setRotateKey( spep_3 - n + 195, 1, -32.9 );
setRotateKey( spep_3 - n + 196, 1, -33.8 );
setRotateKey( spep_3 - n + 199, 1, -34.8 );
setRotateKey( spep_3 - n + 200, 1, -35.6 );
setRotateKey( spep_3 - n + 201, 1, -35.6 );
setRotateKey( spep_3 - n + 202, 1, 6 );
setRotateKey( spep_3 - n + 203, 1, 6 );
setRotateKey( spep_3 - n + 204, 1, 5.3 );
setRotateKey( spep_3 - n + 205, 1, 5.3 );
setRotateKey( spep_3 - n + 206, 1, 4.5 );
setRotateKey( spep_3 - n + 207, 1, 4.5 );
setRotateKey( spep_3 - n + 208, 1, 3.8 );
setRotateKey( spep_3 - n + 261, 1, 3.8 );
setRotateKey( spep_3 - n + 262, 1, 4 ); --気弾
setRotateKey( spep_3 - n + 263, 1, 4 );
setRotateKey( spep_3 - n + 264, 1, 2.7 );
setRotateKey( spep_3 - n + 265, 1, 2.7 );
setRotateKey( spep_3 - n + 266, 1, 1.5 );
setRotateKey( spep_3 - n + 267, 1, 1.5 );
setRotateKey( spep_3 - n + 268, 1, 0.3 );
setRotateKey( spep_3 - n + 277, 1, 0.3 );
setRotateKey( spep_3 - n + 278, 1, -35.6 );
setRotateKey( spep_3 - n + 279, 1, -35.6 );
setRotateKey( spep_3 - n + 280, 1, -34.6 );
setRotateKey( spep_3 - n + 281, 1, -34.6 );
setRotateKey( spep_3 - n + 282, 1, -33.6 );
setRotateKey( spep_3 - n + 283, 1, -33.6 );
setRotateKey( spep_3 - n + 284, 1, -32.5 );
setRotateKey( spep_3 - n + 285, 1, -32.5 );
setRotateKey( spep_3 - n + 286, 1, -31.5 );
setRotateKey( spep_3 - n + 287, 1, -31.5 );
setRotateKey( spep_3 - n + 288, 1, -30.4 );
setRotateKey( spep_3 - n + 289, 1, -30.4 );
setRotateKey( spep_3 - n + 290, 1, -29.4 );
setRotateKey( spep_3 - n + 291, 1, -29.4 );
setRotateKey( spep_3 - n + 292, 1, -28.4 );
setRotateKey( spep_3 - n + 304, 1, -28.4 );

setAlphaKey( spep_3 - n + 104, 1, 255);
setAlphaKey( spep_3 - n + 237, 1, 255);
setAlphaKey( spep_3 - n + 238, 1, 0);
setAlphaKey( spep_3 - n + 261, 1, 0);
setAlphaKey( spep_3 - n + 262, 1, 64);
setAlphaKey( spep_3 - n + 263, 1, 64);
setAlphaKey( spep_3 - n + 264, 1, 128);
setAlphaKey( spep_3 - n + 265, 1, 128);
setAlphaKey( spep_3 - n + 266, 1, 192);
setAlphaKey( spep_3 - n + 267, 1, 192);
setAlphaKey( spep_3 - n + 268, 1, 255);
setAlphaKey( spep_3 - n + 297, 1, 255);
setAlphaKey( spep_3 - n + 298, 1, 170);
setAlphaKey( spep_3 - n + 299, 1, 170);
setAlphaKey( spep_3 - n + 300, 1, 85);
setAlphaKey( spep_3 - n + 301, 1, 85);
setAlphaKey( spep_3 - n + 302, 1, 0);
setAlphaKey( spep_3 - n + 304, 1, 0);

setBlendColor( spep_3 - n + 104 , 1, 2, 0.6, 0.6, 0.6, 0);
setBlendColor( spep_3 - n + 304 , 1, 2, 0.6, 0.6, 0.6, 0);

-- ** 音 ** --
--振りかぶる
SE013 = playSeVer2( spep_2 + 86, 8, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 30, 1182, "", 0, 12, 0, -1);
setStartTimeMs( SE014,  100 );
SE015 = playSeVer2( spep_3 + 26, 1116, "",spep_3 + 70, 0, 18, -1);
SE016 = playSeVer2( spep_3 + 28, 1278, "",spep_3 + 118, 0, 24, -1);

--振りかぶる2
SE017 = playSeVer2( spep_3 + 66, 1004, "", 0, 0, 0, -1);

--パンチ
SE018 = playSeVer2( spep_3 + 96, 1359, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 96, 1061, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_3 + 98, 1187, "", 0, 0, 0, -1);

--パンチ2
SE021 = playSeVer2( spep_3 + 146, 1189, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_3 + 154, 1359, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_3 + 154, 1061, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_3 + 156, 1187, "", 0, 0, 0, -1);

--パンチ3
SE025 = playSeVer2( spep_3 + 190, 1359, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_3 + 190, 1061, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_3 + 192, 1187, "", 0, 0, 0, -1);
setPitch( spep_3 + 192, SE027, -100 );
setTimeStretch( SE027, 0.93, 30, 4 );

--気弾溜め
SE028 = playSeVer2( spep_3 + 254, 63, "",spep_3 + 318, 0, 28, 0.6);
SE029 = playSeVer2( spep_3 + 254, 1312, "",spep_3 + 310, 0, 24, 0.6);
SE030 = playSeVer2( spep_3 + 254, 1254, "",spep_3 + 306, 0, 20, 0.6);
setSeVolumeByWorkId( spep_3 + 254, SE030, 100 );
SE031 = playSeVer2( spep_3 + 254, 1252, "",spep_3 + 306, 0, 20, 0.6);
setSeVolumeByWorkId( spep_3 + 254, SE031, 126 );

--爆発
SE032 = playSeVer2( spep_3 + 276, 1011, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_3 + 276, 1023, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_3 + 276, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 276, SE034, 68 );

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 300 ); -- ダメージ表示フレーム
endPhase( spep_3 + 492 - 10 ); -- 終了フレーム



else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
--俯瞰歩き (152F) 
------------------------------------------------------

spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  -- ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 152, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 152, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 152, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 152 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 152 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 152, first_f, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 158 + 2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--踏み出す１
SE001 = playSeVer2( spep_0 + 20, 1395, "",spep_0 + 56, 0, 18, -1);
SE002 = playSeVer2( spep_0 + 20, 1011, "",spep_0 + 78, 0, 40, -1);

--踏み出す２
SE003 = playSeVer2( spep_0 + 74, 1395, "",spep_0 + 108, 0, 16, -1);
SE004 = playSeVer2( spep_0 + 74, 1011, "",spep_0 + 134, 0, 40, -1);

--踏み出す３
SE005 = playSeVer2( spep_0 + 128, 1395, "",spep_0 + 152 + 8, 0, 16, -1);
SE006 = playSeVer2( spep_0 + 128, 1011, "",spep_0 + 152 + 34, 0, 40, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 152;


------------------------------------------------------
--台詞カットイン (112F) 
------------------------------------------------------
-- ** エフェクト等 ** --
first_f = entryEffect( spep_1 + 0, SP_02r, 0x80, -1, 0, 0, 0 );  --ef_002
setEffMoveKey( spep_1 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 112, first_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 112, first_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, first_f, 0 );
setEffRotateKey( spep_1 + 112, first_f, 0 );
setEffAlphaKey( spep_1 + 0, first_f, 255 );
setEffAlphaKey( spep_1 + 112 -2, first_f, 255 );
setEffAlphaKey( spep_1 + 112 -1, first_f, 255 );
setEffAlphaKey( spep_1 + 112, first_f, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 110 + 2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 敵キャラクター ** --
n = 1;
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 102 );

setMoveKey( spep_1 + 0, 1, 394.22, -709.31 , 0 );
setMoveKey( spep_1 - n + 2, 1, 453.2, -763.2 , 0 );
setMoveKey( spep_1 - n + 3, 1, 453.2, -763.2 , 0 );
setMoveKey( spep_1 - n + 4, 1, 484.18, -839.09 , 0 );
setMoveKey( spep_1 - n + 5, 1, 484.18, -839.09 , 0 );
setMoveKey( spep_1 - n + 6, 1, 529.16, -858.98 , 0 );
setMoveKey( spep_1 - n + 7, 1, 529.16, -858.98 , 0 );
setMoveKey( spep_1 - n + 8, 1, 574.14, -928.87 , 0 );
setMoveKey( spep_1 - n + 9, 1, 574.14, -928.87 , 0 );
setMoveKey( spep_1 - n + 10, 1, 619.12, -958.76 , 0 );
setMoveKey( spep_1 - n + 11, 1, 619.12, -958.76 , 0 );
setMoveKey( spep_1 - n + 12, 1, 664.1, -1008.65 , 0 );
setMoveKey( spep_1 - n + 13, 1, 664.1, -1008.65 , 0 );
setMoveKey( spep_1 - n + 14, 1, 709.08, -1058.54 , 0 );
setMoveKey( spep_1 - n + 15, 1, 709.08, -1058.54 , 0 );
setMoveKey( spep_1 - n + 16, 1, 754.06, -1108.43 , 0 );

setScaleKey( spep_1 + 0, 1, 8.61, 8.61 );
setScaleKey( spep_1 - n + 2, 1, 9.07, 9.07 );
setScaleKey( spep_1 - n + 3, 1, 9.07, 9.07 );
setScaleKey( spep_1 - n + 4, 1, 9.53, 9.53 );
setScaleKey( spep_1 - n + 5, 1, 9.53, 9.53 );
setScaleKey( spep_1 - n + 6, 1, 9.99, 9.99 );
setScaleKey( spep_1 - n + 7, 1, 9.99, 9.99 );
setScaleKey( spep_1 - n + 8, 1, 10.45, 10.45 );
setScaleKey( spep_1 - n + 9, 1, 10.45, 10.45 );
setScaleKey( spep_1 - n + 10, 1, 10.91, 10.91 );
setScaleKey( spep_1 - n + 11, 1, 10.91, 10.91 );
setScaleKey( spep_1 - n + 12, 1, 11.37, 11.37 );
setScaleKey( spep_1 - n + 13, 1, 11.37, 11.37 );
setScaleKey( spep_1 - n + 14, 1, 11.83, 11.83 );
setScaleKey( spep_1 - n + 15, 1, 11.83, 11.83 );
setScaleKey( spep_1 - n + 16, 1, 12.29, 12.29 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 - n + 16, 1, 0 );

setAlphaKey( spep_1 + 0, 1, 255);
setAlphaKey( spep_1 - n + 16, 1, 255);

setBlendColor( spep_1 + 0 , 1, 2, 0.6, 0.6, 0.6, 0);
setBlendColor( spep_1 - n + 12 , 1, 2, 0.6, 0.6, 0.6, 0.03);
setBlendColor( spep_1 - n + 14 , 1, 2, 0.6, 0.6, 0.6, 0.07);
setBlendColor( spep_1 - n + 16 , 1, 2, 0.6, 0.6, 0.6, 0.10);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 16; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1,  754.06, -1108.43 , 0 );
	setMoveKey( SP_dodge + 1, 1, 799.04, -1158.32 , 0 );
	setMoveKey( SP_dodge + 2, 1, 799.04, -1158.32 , 0 );
	setMoveKey( SP_dodge + 3, 1, 844.02, -1208.21 , 0 );
	setMoveKey( SP_dodge + 4, 1, 844.02, -1208.21 , 0 );
	setMoveKey( SP_dodge + 5, 1, 889, -1258.1 , 0 );
	setMoveKey( SP_dodge + 6, 1, 889, -1258.1 , 0 );
	setMoveKey( SP_dodge + 7, 1, 933.98, -1307.99 , 0 );
	setMoveKey( SP_dodge + 8, 1, 933.98, -1307.99 , 0 );
	setMoveKey( SP_dodge + 9, 1, 978.96, -1357.88 , 0 );
	setMoveKey( SP_dodge + 10, 1, 978.96, -1357.88 , 0 );

	setScaleKey( SP_dodge + 0, 1, 12.29, 12.29 );
	setScaleKey( SP_dodge + 1, 1, 12.75, 12.75 );
	setScaleKey( SP_dodge + 2, 1, 12.75, 12.75 );
	setScaleKey( SP_dodge + 3, 1, 13.21, 13.21 );
	setScaleKey( SP_dodge + 4, 1, 13.21, 13.21 );
	setScaleKey( SP_dodge + 5, 1, 13.67, 13.67 );
	setScaleKey( SP_dodge + 6, 1, 13.67, 13.67 );
	setScaleKey( SP_dodge + 7, 1, 14.13, 14.13 );
	setScaleKey( SP_dodge + 8, 1, 14.13, 14.13 );
	setScaleKey( SP_dodge + 9, 1, 14.59, 14.59 );
	setScaleKey( SP_dodge + 10, 1, 14.59, 14.59 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );

    setAlphaKey( SP_dodge + 0, 1, 255);
    setAlphaKey( SP_dodge + 10, 1, 255);

	setBlendColor( SP_dodge + 0 , 1, 2, 0.6, 0.6, 0.6, 0.10);
	setBlendColor( SP_dodge + 1 , 1, 2, 0.6, 0.6, 0.6, 0.14);
	setBlendColor( SP_dodge + 3 , 1, 2, 0.6, 0.6, 0.6, 0.17);
	setBlendColor( SP_dodge + 5 , 1, 2, 0.6, 0.6, 0.6, 0.21);
	setBlendColor( SP_dodge + 7 , 1, 2, 0.6, 0.6, 0.6, 0.24);
	setBlendColor( SP_dodge + 9 , 1, 2, 0.6, 0.6, 0.6, 0.28);
	setBlendColor( SP_dodge + 10 , 1, 2, 0.6, 0.6, 0.6, 0);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

spep_x = spep_1 + 26;

-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
setDisp( spep_1 + 112, 1, 0 );
changeAnime( spep_1 + 0, 1, 102 );

setMoveKey( spep_1 - n + 17, 1, 754.06, -1108.43 , 0 );
setMoveKey( spep_1 - n + 18, 1, 799.04, -1158.32 , 0 );
setMoveKey( spep_1 - n + 19, 1, 799.04, -1158.32 , 0 );
setMoveKey( spep_1 - n + 20, 1, 844.02, -1208.21 , 0 );
setMoveKey( spep_1 - n + 21, 1, 844.02, -1208.21 , 0 );
setMoveKey( spep_1 - n + 22, 1, 889, -1258.1 , 0 );
setMoveKey( spep_1 - n + 23, 1, 889, -1258.1 , 0 );
setMoveKey( spep_1 - n + 24, 1, 933.98, -1307.99 , 0 );
setMoveKey( spep_1 - n + 25, 1, 933.98, -1307.99 , 0 );
setMoveKey( spep_1 - n + 26, 1, 978.96, -1357.88 , 0 );
setMoveKey( spep_1 - n + 27, 1, 978.96, -1357.88 , 0 );
setMoveKey( spep_1 - n + 28, 1, 1023.94, -1407.77 , 0 );
setMoveKey( spep_1 - n + 29, 1, 1023.94, -1407.77 , 0 );
setMoveKey( spep_1 - n + 30, 1, 1068.92, -1457.66 , 0 );
setMoveKey( spep_1 - n + 31, 1, 1068.92, -1457.66 , 0 );
setMoveKey( spep_1 - n + 32, 1, 1113.9, -1507.55 , 0 );
setMoveKey( spep_1 - n + 33, 1, 1113.9, -1507.55 , 0 );
setMoveKey( spep_1 - n + 34, 1, 1158.88, -1557.44 , 0 );
setMoveKey( spep_1 - n + 35, 1, 1158.88, -1557.44 , 0 );
setMoveKey( spep_1 - n + 36, 1, 1203.86, -1607.33 , 0 );
setMoveKey( spep_1 - n + 37, 1, 1203.86, -1607.33 , 0 );
setMoveKey( spep_1 - n + 38, 1, 1248.84, -1657.22 , 0 );
setMoveKey( spep_1 - n + 39, 1, 1248.84, -1657.22 , 0 );
setMoveKey( spep_1 - n + 40, 1, 1293.82, -1707.11 , 0 );
setMoveKey( spep_1 - n + 41, 1, 1293.82, -1707.11 , 0 );
setMoveKey( spep_1 - n + 42, 1, 1338.8, -1757 , 0 );
setMoveKey( spep_1 - n + 43, 1, 1338.8, -1757 , 0 );
setMoveKey( spep_1 - n + 44, 1, 1383.78, -1806.89 , 0 );
setMoveKey( spep_1 - n + 45, 1, 1383.78, -1806.89 , 0 );
setMoveKey( spep_1 - n + 46, 1, 1438.76, -1866.78 , 0 );
setMoveKey( spep_1 - n + 47, 1, 1438.76, -1866.78 , 0 );
setMoveKey( spep_1 - n + 48, 1, 1463.74, -1896.67 , 0 );
setMoveKey( spep_1 - n + 49, 1, 1463.74, -1896.67 , 0 );
setMoveKey( spep_1 - n + 50, 1, 1508.72, -1976.56 , 0 );
setMoveKey( spep_1 - n + 51, 1, 1508.72, -1976.56 , 0 );
setMoveKey( spep_1 - n + 52, 1, 1563.7, -1996.45 , 0 );
setMoveKey( spep_1 - n + 53, 1, 1563.7, -1996.45 , 0 );
setMoveKey( spep_1 - n + 54, 1, 1608.68, -2076.34 , 0 );
setMoveKey( spep_1 - n + 55, 1, 1608.68, -2076.34 , 0 );
setMoveKey( spep_1 - n + 56, 1, 1653.66, -2106.23 , 0 );
setMoveKey( spep_1 - n + 57, 1, 1653.66, -2106.23 , 0 );
setMoveKey( spep_1 - n + 58, 1, 1698.64, -2156.12 , 0 );
setMoveKey( spep_1 - n + 59, 1, 1698.64, -2156.12 , 0 );
setMoveKey( spep_1 - n + 60, 1, 1743.62, -2206.01 , 0 );
setMoveKey( spep_1 - n + 61, 1, 1743.62, -2206.01 , 0 );
setMoveKey( spep_1 - n + 62, 1, 1788.6, -2255.9 , 0 );
setMoveKey( spep_1 - n + 63, 1, 1788.6, -2255.9 , 0 );
setMoveKey( spep_1 - n + 64, 1, 1833.58, -2305.79 , 0 );
setMoveKey( spep_1 - n + 65, 1, 1833.58, -2305.79 , 0 );
setMoveKey( spep_1 - n + 66, 1, 1878.56, -2355.68 , 0 );
setMoveKey( spep_1 - n + 67, 1, 1878.56, -2355.68 , 0 );
setMoveKey( spep_1 - n + 68, 1, 1923.54, -2405.57 , 0 );
setMoveKey( spep_1 - n + 69, 1, 1923.54, -2405.57 , 0 );
setMoveKey( spep_1 - n + 70, 1, 1968.52, -2455.46 , 0 );
setMoveKey( spep_1 - n + 71, 1, 1968.52, -2455.46 , 0 );
setMoveKey( spep_1 - n + 72, 1, 2013.5, -2505.35 , 0 );
setMoveKey( spep_1 - n + 73, 1, 2013.5, -2505.35 , 0 );
setMoveKey( spep_1 - n + 74, 1, 2058.48, -2555.24 , 0 );
setMoveKey( spep_1 - n + 75, 1, 2058.48, -2555.24 , 0 );
setMoveKey( spep_1 - n + 76, 1, 2103.46, -2605.13 , 0 );
setMoveKey( spep_1 - n + 77, 1, 2103.46, -2605.13 , 0 );
setMoveKey( spep_1 - n + 78, 1, 2148.44, -2655.02 , 0 );
setMoveKey( spep_1 - n + 79, 1, 2148.44, -2655.02 , 0 );
setMoveKey( spep_1 - n + 80, 1, 2193.42, -2704.91 , 0 );
setMoveKey( spep_1 - n + 81, 1, 2193.42, -2704.91 , 0 );
setMoveKey( spep_1 - n + 82, 1, 2238.4, -2754.8 , 0 );
setMoveKey( spep_1 - n + 83, 1, 2238.4, -2754.8 , 0 );
setMoveKey( spep_1 - n + 84, 1, 2283.38, -2804.69 , 0 );
setMoveKey( spep_1 - n + 85, 1, 2283.38, -2804.69 , 0 );
setMoveKey( spep_1 - n + 86, 1, 2328, -2854.3 , 0 );
setMoveKey( spep_1 - n + 87, 1, 2328, -2854.3 , 0 );
setMoveKey( spep_1 - n + 88, 1, 2372.98, -2904.19 , 0 );
setMoveKey( spep_1 - n + 113, 1, 2372.98, -2904.19 , 0 );

setScaleKey( spep_1 - n + 17, 1, 12.29, 12.29 );
setScaleKey( spep_1 - n + 18, 1, 12.75, 12.75 );
setScaleKey( spep_1 - n + 19, 1, 12.75, 12.75 );
setScaleKey( spep_1 - n + 20, 1, 13.21, 13.21 );
setScaleKey( spep_1 - n + 21, 1, 13.21, 13.21 );
setScaleKey( spep_1 - n + 22, 1, 13.67, 13.67 );
setScaleKey( spep_1 - n + 23, 1, 13.67, 13.67 );
setScaleKey( spep_1 - n + 24, 1, 14.13, 14.13 );
setScaleKey( spep_1 - n + 25, 1, 14.13, 14.13 );
setScaleKey( spep_1 - n + 26, 1, 14.59, 14.59 );
setScaleKey( spep_1 - n + 27, 1, 14.59, 14.59 );
setScaleKey( spep_1 - n + 28, 1, 15.05, 15.05 );
setScaleKey( spep_1 - n + 29, 1, 15.05, 15.05 );
setScaleKey( spep_1 - n + 30, 1, 15.51, 15.51 );
setScaleKey( spep_1 - n + 31, 1, 15.51, 15.51 );
setScaleKey( spep_1 - n + 32, 1, 15.97, 15.97 );
setScaleKey( spep_1 - n + 33, 1, 15.97, 15.97 );
setScaleKey( spep_1 - n + 34, 1, 16.43, 16.43 );
setScaleKey( spep_1 - n + 35, 1, 16.43, 16.43 );
setScaleKey( spep_1 - n + 36, 1, 16.89, 16.89 );
setScaleKey( spep_1 - n + 37, 1, 16.89, 16.89 );
setScaleKey( spep_1 - n + 38, 1, 17.35, 17.35 );
setScaleKey( spep_1 - n + 39, 1, 17.35, 17.35 );
setScaleKey( spep_1 - n + 40, 1, 17.81, 17.81 );
setScaleKey( spep_1 - n + 41, 1, 17.81, 17.81 );
setScaleKey( spep_1 - n + 42, 1, 18.27, 18.27 );
setScaleKey( spep_1 - n + 43, 1, 18.27, 18.27 );
setScaleKey( spep_1 - n + 44, 1, 18.73, 18.73 );
setScaleKey( spep_1 - n + 45, 1, 18.73, 18.73 );
setScaleKey( spep_1 - n + 46, 1, 19.19, 19.19 );
setScaleKey( spep_1 - n + 47, 1, 19.19, 19.19 );
setScaleKey( spep_1 - n + 48, 1, 19.65, 19.65 );
setScaleKey( spep_1 - n + 49, 1, 19.65, 19.65 );
setScaleKey( spep_1 - n + 50, 1, 20.11, 20.11 );
setScaleKey( spep_1 - n + 51, 1, 20.11, 20.11 );
setScaleKey( spep_1 - n + 52, 1, 20.57, 20.57 );
setScaleKey( spep_1 - n + 53, 1, 20.57, 20.57 );
setScaleKey( spep_1 - n + 54, 1, 21.03, 21.03 );
setScaleKey( spep_1 - n + 55, 1, 21.03, 21.03 );
setScaleKey( spep_1 - n + 56, 1, 21.49, 21.49 );
setScaleKey( spep_1 - n + 57, 1, 21.49, 21.49 );
setScaleKey( spep_1 - n + 58, 1, 21.95, 21.95 );
setScaleKey( spep_1 - n + 59, 1, 21.95, 21.95 );
setScaleKey( spep_1 - n + 60, 1, 22.41, 22.41 );
setScaleKey( spep_1 - n + 61, 1, 22.41, 22.41 );
setScaleKey( spep_1 - n + 62, 1, 22.87, 22.87 );
setScaleKey( spep_1 - n + 63, 1, 22.87, 22.87 );
setScaleKey( spep_1 - n + 64, 1, 23.33, 23.33 );
setScaleKey( spep_1 - n + 65, 1, 23.33, 23.33 );
setScaleKey( spep_1 - n + 66, 1, 23.79, 23.79 );
setScaleKey( spep_1 - n + 67, 1, 23.79, 23.79 );
setScaleKey( spep_1 - n + 68, 1, 24.25, 24.25 );
setScaleKey( spep_1 - n + 69, 1, 24.25, 24.25 );
setScaleKey( spep_1 - n + 70, 1, 24.71, 24.71 );
setScaleKey( spep_1 - n + 71, 1, 24.71, 24.71 );
setScaleKey( spep_1 - n + 72, 1, 25.17, 25.17 );
setScaleKey( spep_1 - n + 73, 1, 25.17, 25.17 );
setScaleKey( spep_1 - n + 74, 1, 25.63, 25.63 );
setScaleKey( spep_1 - n + 75, 1, 25.63, 25.63 );
setScaleKey( spep_1 - n + 76, 1, 26.09, 26.09 );
setScaleKey( spep_1 - n + 77, 1, 26.09, 26.09 );
setScaleKey( spep_1 - n + 78, 1, 26.55, 26.55 );
setScaleKey( spep_1 - n + 79, 1, 26.55, 26.55 );
setScaleKey( spep_1 - n + 80, 1, 27.01, 27.01 );
setScaleKey( spep_1 - n + 81, 1, 27.01, 27.01 );
setScaleKey( spep_1 - n + 82, 1, 27.47, 27.47 );
setScaleKey( spep_1 - n + 83, 1, 27.47, 27.47 );
setScaleKey( spep_1 - n + 84, 1, 27.93, 27.93 );
setScaleKey( spep_1 - n + 85, 1, 27.93, 27.93 );
setScaleKey( spep_1 - n + 86, 1, 28.25, 28.25 );
setScaleKey( spep_1 - n + 113, 1, 28.25, 28.25 );

setRotateKey( spep_1 - n + 17, 1, 0 );
setRotateKey( spep_1 - n + 113, 1, 0 );

setAlphaKey( spep_1 - n + 17, 1, 255);
setAlphaKey( spep_1 - n + 113, 1, 255);

setBlendColor( spep_1 - n + 18 , 1, 2, 0.6, 0.6, 0.6, 0.14);
setBlendColor( spep_1 - n + 20 , 1, 2, 0.6, 0.6, 0.6, 0.17);
setBlendColor( spep_1 - n + 22 , 1, 2, 0.6, 0.6, 0.6, 0.21);
setBlendColor( spep_1 - n + 24 , 1, 2, 0.6, 0.6, 0.6, 0.24);
setBlendColor( spep_1 - n + 26 , 1, 2, 0.6, 0.6, 0.6, 0.28);
setBlendColor( spep_1 - n + 28 , 1, 2, 0.6, 0.6, 0.6, 0.31);
setBlendColor( spep_1 - n + 30 , 1, 2, 0.6, 0.6, 0.6, 0.35);
setBlendColor( spep_1 - n + 32 , 1, 2, 0.6, 0.6, 0.6, 0.38);
setBlendColor( spep_1 - n + 34 , 1, 2, 0.6, 0.6, 0.6, 0.42);
setBlendColor( spep_1 - n + 36 , 1, 2, 0.6, 0.6, 0.6, 0.45);
setBlendColor( spep_1 - n + 38 , 1, 2, 0.6, 0.6, 0.6, 0.49);
setBlendColor( spep_1 - n + 40 , 1, 2, 0.6, 0.6, 0.6, 0.52);
setBlendColor( spep_1 - n + 42 , 1, 2, 0.6, 0.6, 0.6, 0.56);
setBlendColor( spep_1 - n + 44 , 1, 2, 0.6, 0.6, 0.6, 0.59);
setBlendColor( spep_1 - n + 46 , 1, 2, 0.6, 0.6, 0.6, 0.63);
setBlendColor( spep_1 - n + 48 , 1, 2, 0.6, 0.6, 0.6, 0.66);
setBlendColor( spep_1 - n + 50 , 1, 2, 0.6, 0.6, 0.6, 0.70);
setBlendColor( spep_1 - n + 52 , 1, 2, 0.6, 0.6, 0.6, 0.73);
setBlendColor( spep_1 - n + 54 , 1, 2, 0.6, 0.6, 0.6, 0.77);
setBlendColor( spep_1 - n + 56 , 1, 2, 0.6, 0.6, 0.6, 0.80);
setBlendColor( spep_1 - n + 58 , 1, 2, 0.6, 0.6, 0.6, 0.84);
setBlendColor( spep_1 - n + 60 , 1, 2, 0.6, 0.6, 0.6, 0.87);
setBlendColor( spep_1 - n + 62 , 1, 2, 0.6, 0.6, 0.6, 0.91);
setBlendColor( spep_1 - n + 64 , 1, 2, 0.6, 0.6, 0.6, 0.94);
setBlendColor( spep_1 - n + 66 , 1, 2, 0.6, 0.6, 0.6, 0.98);
setBlendColor( spep_1 - n + 68 , 1, 2, 0.6, 0.6, 0.6, 1.0);
setBlendColor( spep_1 - n + 113 , 1, 2, 0.6, 0.6, 0.6, 0);

-- ** 音 ** --
--顔カットイン
SE007 = playSeVer2( spep_1 + 32, 1018, "", 0, 0, 0, -1);

--踏み出す４
SE008 = playSeVer2( spep_1 + 44, 1395, "",spep_1 + 78, 0, 16, -1);
SE009 = playSeVer2( spep_1 + 44, 1011, "",spep_1 + 98, 0, 40, -1);

--踏み出す５
SE010 = playSeVer2( spep_1 + 74, 1395, "",spep_1 + 104, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 74, SE010, 79 );
SE011 = playSeVer2( spep_1 + 74, 1011, "",spep_1 + 112 + 10, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 74, SE011, 86 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 112;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;



------------------------------------------------------
--ギガンティックインパクト (492F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --ef_003
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 492, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 492, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 492, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 492, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ef_004
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 492, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 492, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 492, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 492, finish_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 492 + 2, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 敵キャラクター ** --
n = 3;
setDisp( spep_3 - n + 104, 1, 1 );
setDisp( spep_3 - n + 304, 1, 0 );
changeAnime( spep_3 - n + 104, 1, 100 );
changeAnime( spep_3 - n + 108, 1, 108 );
changeAnime( spep_3 - n + 164, 1, 106 );
changeAnime( spep_3 - n + 202, 1, 108 );
changeAnime( spep_3 - n + 238, 1, 100 );
changeAnime( spep_3 - n + 262, 1, 108 );
changeAnime( spep_3 - n + 278, 1, 106 );

setMoveKey( spep_3 - n + 104, 1, 1.8, -4.5 , 0 ); 
setMoveKey( spep_3 - n + 105, 1, 1.8, -4.5 , 0 ); 
setMoveKey( spep_3 - n + 105, 1, 1.8, -4.5 , 0 ); 
setMoveKey( spep_3 - n + 106, 1, 11.8, 5.5 , 0 );
setMoveKey( spep_3 - n + 107, 1, 11.8, 5.5 , 0 );
setMoveKey( spep_3 - n + 107, 1, 11.8, 5.5 , 0 );
setMoveKey( spep_3 - n + 108, 1, 56.7, -21.1 , 0 );
setMoveKey( spep_3 - n + 109, 1, 56.7, -21.1 , 0 );
setMoveKey( spep_3 - n + 110, 1, 32.5, -56.7 , 0 );
setMoveKey( spep_3 - n + 111, 1, 32.5, -56.7 , 0 );
setMoveKey( spep_3 - n + 112, 1, 82.3, -56.3 , 0 );
setMoveKey( spep_3 - n + 113, 1, 82.3, -56.3 , 0 );
setMoveKey( spep_3 - n + 114, 1, 56.2, -35.8 , 0 );
setMoveKey( spep_3 - n + 115, 1, 56.2, -35.8 , 0 );
setMoveKey( spep_3 - n + 116, 1, 94, -57.4 , 0 );
setMoveKey( spep_3 - n + 117, 1, 94, -57.4 , 0 );
setMoveKey( spep_3 - n + 118, 1, 119.9, -19 , 0 );
setMoveKey( spep_3 - n + 119, 1, 119.9, -19 , 0 );
setMoveKey( spep_3 - n + 120, 1, 133.7, -40.6 , 0 );
setMoveKey( spep_3 - n + 121, 1, 133.7, -40.6 , 0 );
setMoveKey( spep_3 - n + 122, 1, 133.5, -38.2 , 0 );
setMoveKey( spep_3 - n + 123, 1, 133.5, -38.2 , 0 );
setMoveKey( spep_3 - n + 124, 1, 137.4, -17.7 , 0 );
setMoveKey( spep_3 - n + 125, 1, 137.4, -17.7 , 0 );
setMoveKey( spep_3 - n + 126, 1, 161.2, -37.3 , 0 );
setMoveKey( spep_3 - n + 127, 1, 161.2, -37.3 , 0 );
setMoveKey( spep_3 - n + 128, 1, 150.1, -56.6 , 0 );
setMoveKey( spep_3 - n + 129, 1, 150.1, -56.6 , 0 );
setMoveKey( spep_3 - n + 130, 1, 170.8, -21.7 , 0 );
setMoveKey( spep_3 - n + 131, 1, 170.8, -21.7 , 0 );
setMoveKey( spep_3 - n + 132, 1, 174.5, -50.8 , 0 );
setMoveKey( spep_3 - n + 133, 1, 174.5, -50.8 , 0 );
setMoveKey( spep_3 - n + 134, 1, 140, -20.7 , 0 );
setMoveKey( spep_3 - n + 135, 1, 140, -20.7 , 0 );
setMoveKey( spep_3 - n + 136, 1, 170.4, -33.6 , 0 );
setMoveKey( spep_3 - n + 137, 1, 170.4, -33.6 , 0 );
setMoveKey( spep_3 - n + 138, 1, 152.6, -31.3 , 0 );
setMoveKey( spep_3 - n + 139, 1, 152.6, -31.3 , 0 );
setMoveKey( spep_3 - n + 140, 1, 150.6, -30 , 0 );
setMoveKey( spep_3 - n + 141, 1, 150.6, -30 , 0 );
setMoveKey( spep_3 - n + 142, 1, 148.5, -28.6 , 0 );
setMoveKey( spep_3 - n + 143, 1, 148.5, -28.6 , 0 );
setMoveKey( spep_3 - n + 144, 1, 146.2, -27 , 0 );
setMoveKey( spep_3 - n + 145, 1, 146.2, -27 , 0 );
setMoveKey( spep_3 - n + 146, 1, 143.7, -25.3 , 0 );
setMoveKey( spep_3 - n + 147, 1, 143.7, -25.3 , 0 );
setMoveKey( spep_3 - n + 148, 1, 141, -23.3 , 0 );
setMoveKey( spep_3 - n + 149, 1, 141, -23.3 , 0 );
setMoveKey( spep_3 - n + 150, 1, 138.2, -21.4 , 0 );
setMoveKey( spep_3 - n + 151, 1, 138.2, -21.4 , 0 );
setMoveKey( spep_3 - n + 152, 1, 135.2, -19.4 , 0 );
setMoveKey( spep_3 - n + 153, 1, 135.2, -19.4 , 0 );
setMoveKey( spep_3 - n + 154, 1, 132.3, -17.3 , 0 );
setMoveKey( spep_3 - n + 155, 1, 132.3, -17.3 , 0 );
setMoveKey( spep_3 - n + 156, 1, 129.4, -15.3 , 0 );
setMoveKey( spep_3 - n + 157, 1, 129.4, -15.3 , 0 );
setMoveKey( spep_3 - n + 158, 1, 126.6, -13.4 , 0 );
setMoveKey( spep_3 - n + 159, 1, 126.6, -13.4 , 0 );
setMoveKey( spep_3 - n + 160, 1, 124, -11.6 , 0 );
setMoveKey( spep_3 - n + 161, 1, 124, -11.6 , 0 );
setMoveKey( spep_3 - n + 162, 1, 121.5, -10 , 0 );
setMoveKey( spep_3 - n + 163, 1, 121.5, -10 , 0 );
setMoveKey( spep_3 - n + 164, 1, 84, 48 , 0 );
setMoveKey( spep_3 - n + 165, 1, 84, 48 , 0 );
setMoveKey( spep_3 - n + 166, 1, 92.2, 23.3 , 0 );
setMoveKey( spep_3 - n + 167, 1, 92.2, 23.3 , 0 );
setMoveKey( spep_3 - n + 168, 1, 138.3, 57.6 , 0 );
setMoveKey( spep_3 - n + 169, 1, 138.3, 57.6 , 0 );
setMoveKey( spep_3 - n + 170, 1, 124.5, 50.9 , 0 );
setMoveKey( spep_3 - n + 171, 1, 124.5, 50.9 , 0 );
setMoveKey( spep_3 - n + 172, 1, 157.5, 18.6 , 0 );
setMoveKey( spep_3 - n + 173, 1, 157.5, 18.6 , 0 );
setMoveKey( spep_3 - n + 174, 1, 130.5, 14.3 , 0 );
setMoveKey( spep_3 - n + 175, 1, 130.5, 14.3 , 0 );
setMoveKey( spep_3 - n + 176, 1, 161.5, 48 , 0 );
setMoveKey( spep_3 - n + 177, 1, 161.5, 48 , 0 );
setMoveKey( spep_3 - n + 178, 1, 130.6, 44.7 , 0 );
setMoveKey( spep_3 - n + 179, 1, 130.6, 44.7 , 0 );
setMoveKey( spep_3 - n + 180, 1, 158.6, 17.4 , 0 );
setMoveKey( spep_3 - n + 181, 1, 158.6, 17.4 , 0 );
setMoveKey( spep_3 - n + 182, 1, 135.6, 39.1 , 0 );
setMoveKey( spep_3 - n + 183, 1, 135.6, 39.1 , 0 );
setMoveKey( spep_3 - n + 184, 1, 162.6, 39.8 , 0 );
setMoveKey( spep_3 - n + 185, 1, 162.6, 39.8 , 0 );
setMoveKey( spep_3 - n + 186, 1, 154.6, 23.5 , 0 );
setMoveKey( spep_3 - n + 187, 1, 154.6, 23.5 , 0 );
setMoveKey( spep_3 - n + 188, 1, 151.9, 23.5 , 0 );
setMoveKey( spep_3 - n + 189, 1, 151.9, 23.5 , 0 );
setMoveKey( spep_3 - n + 190, 1, 148.4, 23.5 , 0 );
setMoveKey( spep_3 - n + 191, 1, 148.4, 23.5 , 0 );
setMoveKey( spep_3 - n + 192, 1, 144, 23.5 , 0 );
setMoveKey( spep_3 - n + 193, 1, 144, 23.5 , 0 );
setMoveKey( spep_3 - n + 194, 1, 138.8, 23.6 , 0 );
setMoveKey( spep_3 - n + 195, 1, 138.8, 23.6 , 0 );
setMoveKey( spep_3 - n + 196, 1, 133.1, 23.6 , 0 );
setMoveKey( spep_3 - n + 197, 1, 133.1, 23.6 , 0 );
setMoveKey( spep_3 - n + 198, 1, 127.3, 23.6 , 0 );
setMoveKey( spep_3 - n + 199, 1, 127.3, 23.6 , 0 );
setMoveKey( spep_3 - n + 200, 1, 122.3, 23.5 , 0 );
setMoveKey( spep_3 - n + 201, 1, 122.3, 23.5 , 0 );
setMoveKey( spep_3 - n + 202, 1, 92.6, 7.5 , 0 );
setMoveKey( spep_3 - n + 203, 1, 92.6, 7.5 , 0 );
setMoveKey( spep_3 - n + 204, 1, 148.3, -2.8 , 0 );
setMoveKey( spep_3 - n + 205, 1, 148.3, -2.8 , 0 );
setMoveKey( spep_3 - n + 206, 1, 216.9, -24.2 , 0 );
setMoveKey( spep_3 - n + 207, 1, 216.9, -24.2 , 0 );
setMoveKey( spep_3 - n + 208, 1, 248.6, -10.5 , 0 );
setMoveKey( spep_3 - n + 209, 1, 248.6, -10.5 , 0 );
setMoveKey( spep_3 - n + 210, 1, 286.9, -10.6 , 0 );
setMoveKey( spep_3 - n + 211, 1, 286.9, -10.6 , 0 );
setMoveKey( spep_3 - n + 212, 1, 273.1, -42.7 , 0 );
setMoveKey( spep_3 - n + 213, 1, 273.1, -42.7 , 0 );
setMoveKey( spep_3 - n + 214, 1, 312.4, -39.8 , 0 );
setMoveKey( spep_3 - n + 215, 1, 312.4, -39.8 , 0 );
setMoveKey( spep_3 - n + 216, 1, 325.6, -18.9 , 0 );
setMoveKey( spep_3 - n + 217, 1, 325.6, -18.9 , 0 );
setMoveKey( spep_3 - n + 218, 1, 320.9, -43 , 0 );
setMoveKey( spep_3 - n + 219, 1, 320.9, -43 , 0 );
setMoveKey( spep_3 - n + 220, 1, 335.1, -22.1 , 0 );
setMoveKey( spep_3 - n + 221, 1, 335.1, -22.1 , 0 );
setMoveKey( spep_3 - n + 222, 1, 371.3, -49.2 , 0 );
setMoveKey( spep_3 - n + 223, 1, 371.3, -49.2 , 0 );
setMoveKey( spep_3 - n + 224, 1, 373.6, -40.3 , 0 );
setMoveKey( spep_3 - n + 225, 1, 373.6, -40.3 , 0 );
setMoveKey( spep_3 - n + 226, 1, 387.8, -42.4 , 0 );
setMoveKey( spep_3 - n + 227, 1, 387.8, -42.4 , 0 );
setMoveKey( spep_3 - n + 228, 1, 402.1, -44.5 , 0 );
setMoveKey( spep_3 - n + 229, 1, 402.1, -44.5 , 0 );
setMoveKey( spep_3 - n + 230, 1, 503.6, -32.1 , 0 );
setMoveKey( spep_3 - n + 231, 1, 503.6, -32.1 , 0 );
setMoveKey( spep_3 - n + 232, 1, 608.3, -20.2 , 0 );
setMoveKey( spep_3 - n + 233, 1, 608.3, -20.2 , 0 );
setMoveKey( spep_3 - n + 234, 1, 716.2, -8.8 , 0 );
setMoveKey( spep_3 - n + 235, 1, 716.2, -8.8 , 0 );
setMoveKey( spep_3 - n + 236, 1, 827.3, 2.2 , 0 );
setMoveKey( spep_3 - n + 261, 1, 827.3, 2.2 , 0 );
setMoveKey( spep_3 - n + 261, 1, 827.3, 2.2 , 0 );
setMoveKey( spep_3 - n + 262, 1, 447.3, -72 , 0 ); --気弾
setMoveKey( spep_3 - n + 263, 1, 447.3, -72 , 0 );
setMoveKey( spep_3 - n + 264, 1, 411.4, -57.6 , 0 );
setMoveKey( spep_3 - n + 265, 1, 411.4, -57.6 , 0 );
setMoveKey( spep_3 - n + 266, 1, 375.5, -43.3 , 0 );
setMoveKey( spep_3 - n + 267, 1, 375.5, -43.3 , 0 );
setMoveKey( spep_3 - n + 268, 1, 339.6, -28.9 , 0 );
setMoveKey( spep_3 - n + 269, 1, 339.6, -28.9 , 0 );
setMoveKey( spep_3 - n + 270, 1, 334.2, -28.9 , 0 );
setMoveKey( spep_3 - n + 271, 1, 334.2, -28.9 , 0 );
setMoveKey( spep_3 - n + 272, 1, 328.9, -28.9 , 0 );
setMoveKey( spep_3 - n + 273, 1, 328.9, -28.9 , 0 );
setMoveKey( spep_3 - n + 274, 1, 323.5, -28.9 , 0 );
setMoveKey( spep_3 - n + 275, 1, 323.5, -28.9 , 0 );
setMoveKey( spep_3 - n + 276, 1, 318.1, -28.9 , 0 );
setMoveKey( spep_3 - n + 277, 1, 318.1, -28.9 , 0 );
setMoveKey( spep_3 - n + 278, 1, 236.2, -23.9 , 0 );
setMoveKey( spep_3 - n + 279, 1, 236.2, -23.9 , 0 );
setMoveKey( spep_3 - n + 280, 1, 236.4, -12.2 , 0 );
setMoveKey( spep_3 - n + 281, 1, 236.4, -12.2 , 0 );
setMoveKey( spep_3 - n + 282, 1, 256.2, -37.5 , 0 );
setMoveKey( spep_3 - n + 283, 1, 256.2, -37.5 , 0 );
setMoveKey( spep_3 - n + 284, 1, 237, -23.9 , 0 );
setMoveKey( spep_3 - n + 285, 1, 237, -23.9 , 0 );
setMoveKey( spep_3 - n + 286, 1, 280.2, -23.8 , 0 );
setMoveKey( spep_3 - n + 287, 1, 280.2, -23.8 , 0 );
setMoveKey( spep_3 - n + 288, 1, 249.3, -39.4 , 0 );
setMoveKey( spep_3 - n + 289, 1, 249.3, -39.4 , 0 );
setMoveKey( spep_3 - n + 290, 1, 282.7, -16 , 0 );
setMoveKey( spep_3 - n + 291, 1, 282.7, -16 , 0 );
setMoveKey( spep_3 - n + 292, 1, 290.8, -43.2 , 0 );
setMoveKey( spep_3 - n + 293, 1, 290.8, -43.2 , 0 );
setMoveKey( spep_3 - n + 294, 1, 272.8, -13.8 , 0 );
setMoveKey( spep_3 - n + 295, 1, 272.8, -13.8 , 0 );
setMoveKey( spep_3 - n + 296, 1, 274.3, -44.9 , 0 );
setMoveKey( spep_3 - n + 297, 1, 274.3, -44.9 , 0 );
setMoveKey( spep_3 - n + 298, 1, 295.3, -29.1 , 0 );
setMoveKey( spep_3 - n + 299, 1, 295.3, -29.1 , 0 );
setMoveKey( spep_3 - n + 300, 1, 300.7, -30.9 , 0 );
setMoveKey( spep_3 - n + 304, 1, 300.7, -30.9 , 0 );

setScaleKey( spep_3 - n + 104, 1, 1.8, 1.8 );
setScaleKey( spep_3 - n + 107, 1, 1.8, 1.8 );
setScaleKey( spep_3 - n + 108, 1, 2, 2 );
setScaleKey( spep_3 - n + 109, 1, 2, 2 );
setScaleKey( spep_3 - n + 110, 1, 1.98, 1.98 );
setScaleKey( spep_3 - n + 111, 1, 1.98, 1.98 );
setScaleKey( spep_3 - n + 112, 1, 1.97, 1.97 );
setScaleKey( spep_3 - n + 113, 1, 1.97, 1.97 );
setScaleKey( spep_3 - n + 114, 1, 1.95, 1.95 );
setScaleKey( spep_3 - n + 115, 1, 1.95, 1.95 );
setScaleKey( spep_3 - n + 116, 1, 1.93, 1.93 );
setScaleKey( spep_3 - n + 117, 1, 1.93, 1.93 );
setScaleKey( spep_3 - n + 118, 1, 1.92, 1.92 );
setScaleKey( spep_3 - n + 119, 1, 1.92, 1.92 );
setScaleKey( spep_3 - n + 120, 1, 1.9, 1.9 );
setScaleKey( spep_3 - n + 121, 1, 1.9, 1.9 );
setScaleKey( spep_3 - n + 122, 1, 1.88, 1.88 );
setScaleKey( spep_3 - n + 123, 1, 1.88, 1.88 );
setScaleKey( spep_3 - n + 124, 1, 1.87, 1.87 );
setScaleKey( spep_3 - n + 125, 1, 1.87, 1.87 );
setScaleKey( spep_3 - n + 126, 1, 1.85, 1.85 );
setScaleKey( spep_3 - n + 163, 1, 1.85, 1.85 );
setScaleKey( spep_3 - n + 164, 1, 1.9, 1.9 );
setScaleKey( spep_3 - n + 165, 1, 1.9, 1.9 );
setScaleKey( spep_3 - n + 166, 1, 1.88, 1.88 );
setScaleKey( spep_3 - n + 167, 1, 1.88, 1.88 );
setScaleKey( spep_3 - n + 168, 1, 1.86, 1.86 );
setScaleKey( spep_3 - n + 169, 1, 1.86, 1.86 );
setScaleKey( spep_3 - n + 170, 1, 1.85, 1.85 );
setScaleKey( spep_3 - n + 171, 1, 1.85, 1.85 );
setScaleKey( spep_3 - n + 172, 1, 1.84, 1.84 );
setScaleKey( spep_3 - n + 173, 1, 1.84, 1.84 );
setScaleKey( spep_3 - n + 174, 1, 1.83, 1.83 );
setScaleKey( spep_3 - n + 177, 1, 1.83, 1.83 );
setScaleKey( spep_3 - n + 178, 1, 1.82, 1.82 );
setScaleKey( spep_3 - n + 181, 1, 1.82, 1.82 );
setScaleKey( spep_3 - n + 182, 1, 1.81, 1.81 );
setScaleKey( spep_3 - n + 183, 1, 1.81, 1.81 );
setScaleKey( spep_3 - n + 184, 1, 1.8, 1.8 );
setScaleKey( spep_3 - n + 189, 1, 1.8, 1.8 );
setScaleKey( spep_3 - n + 190, 1, 1.81, 1.81 );
setScaleKey( spep_3 - n + 193, 1, 1.81, 1.81 );
setScaleKey( spep_3 - n + 194, 1, 1.82, 1.82 );
setScaleKey( spep_3 - n + 195, 1, 1.82, 1.82 );
setScaleKey( spep_3 - n + 196, 1, 1.83, 1.83 );
setScaleKey( spep_3 - n + 197, 1, 1.83, 1.83 );
setScaleKey( spep_3 - n + 198, 1, 1.84, 1.84 );
setScaleKey( spep_3 - n + 199, 1, 1.84, 1.84 );
setScaleKey( spep_3 - n + 200, 1, 1.85, 1.85 );
setScaleKey( spep_3 - n + 201, 1, 1.85, 1.85 );
setScaleKey( spep_3 - n + 202, 1, 2, 2 );
setScaleKey( spep_3 - n + 203, 1, 2, 2 );
setScaleKey( spep_3 - n + 204, 1, 1.97, 1.97 );
setScaleKey( spep_3 - n + 205, 1, 1.97, 1.97 );
setScaleKey( spep_3 - n + 206, 1, 1.93, 1.93 );
setScaleKey( spep_3 - n + 207, 1, 1.93, 1.93 );
setScaleKey( spep_3 - n + 208, 1, 1.9, 1.9 );
setScaleKey( spep_3 - n + 209, 1, 1.9, 1.9 );
setScaleKey( spep_3 - n + 210, 1, 1.91, 1.91 );
setScaleKey( spep_3 - n + 212, 1, 1.91, 1.91 );
setScaleKey( spep_3 - n + 213, 1, 1.91, 1.91 );
setScaleKey( spep_3 - n + 214, 1, 1.92, 1.92 );
setScaleKey( spep_3 - n + 215, 1, 1.92, 1.92 );
setScaleKey( spep_3 - n + 216, 1, 1.93, 1.93 );
setScaleKey( spep_3 - n + 217, 1, 1.93, 1.93 );
setScaleKey( spep_3 - n + 218, 1, 1.94, 1.94 );
setScaleKey( spep_3 - n + 221, 1, 1.94, 1.94 );
setScaleKey( spep_3 - n + 222, 1, 1.95, 1.95 );
setScaleKey( spep_3 - n + 223, 1, 1.95, 1.95 );
setScaleKey( spep_3 - n + 224, 1, 1.96, 1.96 );
setScaleKey( spep_3 - n + 227, 1, 1.96, 1.96 );
setScaleKey( spep_3 - n + 228, 1, 1.97, 1.97 );
setScaleKey( spep_3 - n + 229, 1, 1.97, 1.97 );
setScaleKey( spep_3 - n + 230, 1, 2.2, 2.2 );
setScaleKey( spep_3 - n + 231, 1, 2.2, 2.2 );
setScaleKey( spep_3 - n + 232, 1, 2.43, 2.43 );
setScaleKey( spep_3 - n + 233, 1, 2.43, 2.43 );
setScaleKey( spep_3 - n + 234, 1, 2.66, 2.66 );
setScaleKey( spep_3 - n + 235, 1, 2.66, 2.66 );
setScaleKey( spep_3 - n + 236, 1, 2.9, 2.9 );
setScaleKey( spep_3 - n + 261, 1, 2.9, 2.9 );
setScaleKey( spep_3 - n + 262, 1, 3.19, 3.19 ); --気弾
setScaleKey( spep_3 - n + 277, 1, 3.19, 3.19 );
setScaleKey( spep_3 - n + 278, 1, 2.76, 2.76 );
setScaleKey( spep_3 - n + 301, 1, 2.76, 2.76 );
setScaleKey( spep_3 - n + 304, 1, 2.76, 2.76 );

setRotateKey( spep_3 - n + 104, 1, 0 );
setRotateKey( spep_3 - n + 109, 1, 0 );
setRotateKey( spep_3 - n + 110, 1, 0.1 );
setRotateKey( spep_3 - n + 113, 1, 0.1 );
setRotateKey( spep_3 - n + 114, 1, 0.2 );
setRotateKey( spep_3 - n + 117, 1, 0.2 );
setRotateKey( spep_3 - n + 118, 1, 0.3 );
setRotateKey( spep_3 - n + 121, 1, 0.3 );
setRotateKey( spep_3 - n + 122, 1, 0.4 );
setRotateKey( spep_3 - n + 125, 1, 0.4 );
setRotateKey( spep_3 - n + 126, 1, 0.5 );
setRotateKey( spep_3 - n + 129, 1, 0.5 );
setRotateKey( spep_3 - n + 130, 1, 0.6 );
setRotateKey( spep_3 - n + 135, 1, 0.6 );
setRotateKey( spep_3 - n + 136, 1, 0.7 );
setRotateKey( spep_3 - n + 139, 1, 0.7 );
setRotateKey( spep_3 - n + 140, 1, 0.8 );
setRotateKey( spep_3 - n + 143, 1, 0.8 );
setRotateKey( spep_3 - n + 144, 1, 0.9 );
setRotateKey( spep_3 - n + 145, 1, 0.9 );
setRotateKey( spep_3 - n + 146, 1, 1 );
setRotateKey( spep_3 - n + 149, 1, 1 );
setRotateKey( spep_3 - n + 150, 1, 1.1 );
setRotateKey( spep_3 - n + 151, 1, 1.1 );
setRotateKey( spep_3 - n + 152, 1, 1.2 );
setRotateKey( spep_3 - n + 153, 1, 1.2 );
setRotateKey( spep_3 - n + 154, 1, 1.3 );
setRotateKey( spep_3 - n + 157, 1, 1.3 );
setRotateKey( spep_3 - n + 158, 1, 1.4 );
setRotateKey( spep_3 - n + 159, 1, 1.4 );
setRotateKey( spep_3 - n + 160, 1, 1.5 );
setRotateKey( spep_3 - n + 161, 1, 1.5 );
setRotateKey( spep_3 - n + 162, 1, 1.6 );
setRotateKey( spep_3 - n + 163, 1, 1.6 );
setRotateKey( spep_3 - n + 164, 1, -32.1 );
setRotateKey( spep_3 - n + 171, 1, -32.1 );
setRotateKey( spep_3 - n + 172, 1, -31.9 );
setRotateKey( spep_3 - n + 173, 1, -31.9 );
setRotateKey( spep_3 - n + 174, 1, -31.7 );
setRotateKey( spep_3 - n + 175, 1, -31.7 );
setRotateKey( spep_3 - n + 176, 1, -31.4 );
setRotateKey( spep_3 - n + 177, 1, -31.4 );
setRotateKey( spep_3 - n + 178, 1, -31.2 );
setRotateKey( spep_3 - n + 179, 1, -31.2 );
setRotateKey( spep_3 - n + 180, 1, -31 );
setRotateKey( spep_3 - n + 181, 1, -31 );
setRotateKey( spep_3 - n + 182, 1, -30.8 );
setRotateKey( spep_3 - n + 183, 1, -30.8 );
setRotateKey( spep_3 - n + 184, 1, -30.5 );
setRotateKey( spep_3 - n + 185, 1, -30.5 );
setRotateKey( spep_3 - n + 186, 1, -30.3 );
setRotateKey( spep_3 - n + 187, 1, -30.3 );
setRotateKey( spep_3 - n + 188, 1, -30.8 );
setRotateKey( spep_3 - n + 189, 1, -30.8 );
setRotateKey( spep_3 - n + 190, 1, -31.3 );
setRotateKey( spep_3 - n + 191, 1, -31.3 );
setRotateKey( spep_3 - n + 192, 1, -32.1 );
setRotateKey( spep_3 - n + 193, 1, -32.1 );
setRotateKey( spep_3 - n + 194, 1, -32.9 );
setRotateKey( spep_3 - n + 195, 1, -32.9 );
setRotateKey( spep_3 - n + 196, 1, -33.8 );
setRotateKey( spep_3 - n + 199, 1, -34.8 );
setRotateKey( spep_3 - n + 200, 1, -35.6 );
setRotateKey( spep_3 - n + 201, 1, -35.6 );
setRotateKey( spep_3 - n + 202, 1, 6 );
setRotateKey( spep_3 - n + 203, 1, 6 );
setRotateKey( spep_3 - n + 204, 1, 5.3 );
setRotateKey( spep_3 - n + 205, 1, 5.3 );
setRotateKey( spep_3 - n + 206, 1, 4.5 );
setRotateKey( spep_3 - n + 207, 1, 4.5 );
setRotateKey( spep_3 - n + 208, 1, 3.8 );
setRotateKey( spep_3 - n + 261, 1, 3.8 );
setRotateKey( spep_3 - n + 262, 1, 4 ); --気弾
setRotateKey( spep_3 - n + 263, 1, 4 );
setRotateKey( spep_3 - n + 264, 1, 2.7 );
setRotateKey( spep_3 - n + 265, 1, 2.7 );
setRotateKey( spep_3 - n + 266, 1, 1.5 );
setRotateKey( spep_3 - n + 267, 1, 1.5 );
setRotateKey( spep_3 - n + 268, 1, 0.3 );
setRotateKey( spep_3 - n + 277, 1, 0.3 );
setRotateKey( spep_3 - n + 278, 1, -35.6 );
setRotateKey( spep_3 - n + 279, 1, -35.6 );
setRotateKey( spep_3 - n + 280, 1, -34.6 );
setRotateKey( spep_3 - n + 281, 1, -34.6 );
setRotateKey( spep_3 - n + 282, 1, -33.6 );
setRotateKey( spep_3 - n + 283, 1, -33.6 );
setRotateKey( spep_3 - n + 284, 1, -32.5 );
setRotateKey( spep_3 - n + 285, 1, -32.5 );
setRotateKey( spep_3 - n + 286, 1, -31.5 );
setRotateKey( spep_3 - n + 287, 1, -31.5 );
setRotateKey( spep_3 - n + 288, 1, -30.4 );
setRotateKey( spep_3 - n + 289, 1, -30.4 );
setRotateKey( spep_3 - n + 290, 1, -29.4 );
setRotateKey( spep_3 - n + 291, 1, -29.4 );
setRotateKey( spep_3 - n + 292, 1, -28.4 );
setRotateKey( spep_3 - n + 304, 1, -28.4 );

setAlphaKey( spep_3 - n + 104, 1, 255);
setAlphaKey( spep_3 - n + 237, 1, 255);
setAlphaKey( spep_3 - n + 238, 1, 0);
setAlphaKey( spep_3 - n + 261, 1, 0);
setAlphaKey( spep_3 - n + 262, 1, 64);
setAlphaKey( spep_3 - n + 263, 1, 64);
setAlphaKey( spep_3 - n + 264, 1, 128);
setAlphaKey( spep_3 - n + 265, 1, 128);
setAlphaKey( spep_3 - n + 266, 1, 192);
setAlphaKey( spep_3 - n + 267, 1, 192);
setAlphaKey( spep_3 - n + 268, 1, 255);
setAlphaKey( spep_3 - n + 297, 1, 255);
setAlphaKey( spep_3 - n + 298, 1, 170);
setAlphaKey( spep_3 - n + 299, 1, 170);
setAlphaKey( spep_3 - n + 300, 1, 85);
setAlphaKey( spep_3 - n + 301, 1, 85);
setAlphaKey( spep_3 - n + 302, 1, 0);
setAlphaKey( spep_3 - n + 304, 1, 0);

setBlendColor( spep_3 - n + 104 , 1, 2, 0.6, 0.6, 0.6, 0);
setBlendColor( spep_3 - n + 304 , 1, 2, 0.6, 0.6, 0.6, 0);

-- ** 音 ** --
--振りかぶる
SE013 = playSeVer2( spep_2 + 86, 8, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 30, 1182, "", 0, 12, 0, -1);
setStartTimeMs( SE014,  100 );
SE015 = playSeVer2( spep_3 + 26, 1116, "",spep_3 + 70, 0, 18, -1);
SE016 = playSeVer2( spep_3 + 28, 1278, "",spep_3 + 118, 0, 24, -1);

--振りかぶる2
SE017 = playSeVer2( spep_3 + 66, 1004, "", 0, 0, 0, -1);

--パンチ
SE018 = playSeVer2( spep_3 + 96, 1359, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 96, 1061, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_3 + 98, 1187, "", 0, 0, 0, -1);

--パンチ2
SE021 = playSeVer2( spep_3 + 146, 1189, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_3 + 154, 1359, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_3 + 154, 1061, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_3 + 156, 1187, "", 0, 0, 0, -1);

--パンチ3
SE025 = playSeVer2( spep_3 + 190, 1359, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_3 + 190, 1061, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_3 + 192, 1187, "", 0, 0, 0, -1);
setPitch( spep_3 + 192, SE027, -100 );
setTimeStretch( SE027, 0.93, 30, 4 );

--気弾溜め
SE028 = playSeVer2( spep_3 + 254, 63, "",spep_3 + 318, 0, 28, 0.6);
SE029 = playSeVer2( spep_3 + 254, 1312, "",spep_3 + 310, 0, 24, 0.6);
SE030 = playSeVer2( spep_3 + 254, 1254, "",spep_3 + 306, 0, 20, 0.6);
setSeVolumeByWorkId( spep_3 + 254, SE030, 100 );
SE031 = playSeVer2( spep_3 + 254, 1252, "",spep_3 + 306, 0, 20, 0.6);
setSeVolumeByWorkId( spep_3 + 254, SE031, 126 );

--爆発
SE032 = playSeVer2( spep_3 + 276, 1011, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_3 + 276, 1023, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_3 + 276, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 276, SE034, 68 );

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 300 ); -- ダメージ表示フレーム
endPhase( spep_3 + 492 - 10 ); -- 終了フレーム



end