--1026180:SSRガンマ2号_ガンマ・ブラスター_sp2512
--sp_effect_a2_00198

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
SP_01 = 161107;  --ピストル構え、溜め    ef_001
SP_02 = 161108;  --着弾発射    ef_002
SP_03 = 161109;  --飛んでいく着弾    ef_003
SP_04 = 161110;  --集中線    ef_004

--敵側
SP_01r = 161198;  --ピストル構え、溜め    ef_001_e
SP_02r = 161199;  --着弾発射    ef_002_e
SP_03r = 161200;  --飛んでいく着弾    ef_003_e
SP_04r = 161201;  --集中線    ef_004_e


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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- ピストル構え、溜め(148F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --ピストル構え、溜め    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 146, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 146 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 146 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 146, first_f, 0 );

-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_0 + 42, 906, 104, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 42, shuchusen_1, 104, 20 );
setEffMoveKey( spep_0 + 42, shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, shuchusen_1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 42, shuchusen_1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 146, shuchusen_1, 1.6, 1.6 );
setEffRotateKey( spep_0 + 42, shuchusen_1, 0 );
setEffRotateKey( spep_0 + 146, shuchusen_1, 0 );
setEffAlphaKey( spep_0 + 42, shuchusen_1, 255 );
setEffAlphaKey( spep_0 + 146, shuchusen_1, 255 );

-- ** 書き文字エントリー ** --
ct_zuzuzun = entryEffectLife( spep_0 + 16,  10013, 44, 0x100, -1, 0, 105, 515.5, 3000 ); --ズズズンッ
setEffShake( spep_0 + 16, ct_zuzuzun, 44, 20 );
setEffMoveKey( spep_0 + 16, ct_zuzuzun, 22, 251.9 , 0 );
setEffMoveKey( spep_0 + 20, ct_zuzuzun, 22, 251.9 , 0 );
setEffMoveKey( spep_0 + 21, ct_zuzuzun, 32.7, 321.1 , 0 );
setEffMoveKey( spep_0 + 22, ct_zuzuzun, 32.7, 321.1 , 0 );
setEffMoveKey( spep_0 + 23, ct_zuzuzun, 56.1, 400 , 0 );
setEffMoveKey( spep_0 + 24, ct_zuzuzun, 56.1, 400 , 0 );
setEffMoveKey( spep_0 + 25, ct_zuzuzun, 43.3, 383.1 , 0 );
setEffMoveKey( spep_0 + 26, ct_zuzuzun, 43.3, 383.1 , 0 );
setEffMoveKey( spep_0 + 27, ct_zuzuzun, 48.4, 377.4 , 0 );
setEffMoveKey( spep_0 + 29, ct_zuzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 + 30, ct_zuzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 + 31, ct_zuzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 + 32, ct_zuzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 + 34, ct_zuzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 + 36, ct_zuzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 + 38, ct_zuzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 + 40, ct_zuzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 + 42, ct_zuzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 + 44, ct_zuzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 + 46, ct_zuzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 + 48, ct_zuzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 + 50, ct_zuzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 + 52, ct_zuzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 + 54, ct_zuzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 + 56, ct_zuzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 + 58, ct_zuzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 + 60, ct_zuzuzun, 36, 359.9 , 0 );

setEffScaleKey( spep_0 + 16, ct_zuzuzun, 1.1, 1.1 );
setEffScaleKey( spep_0 + 20, ct_zuzuzun, 1.1, 1.1 );
setEffScaleKey( spep_0 + 21, ct_zuzuzun, 2, 2 );
setEffScaleKey( spep_0 + 22, ct_zuzuzun, 2, 2 );
setEffScaleKey( spep_0 + 23, ct_zuzuzun, 3, 3 );
setEffScaleKey( spep_0 + 60, ct_zuzuzun, 3, 3 );

setEffRotateKey( spep_0 + 16, ct_zuzuzun, 0 );
setEffRotateKey( spep_0 + 60, ct_zuzuzun, 0 );

setEffAlphaKey( spep_0 + 16, ct_zuzuzun, 255 );
setEffAlphaKey( spep_0 + 50, ct_zuzuzun, 255 );
setEffAlphaKey( spep_0 + 52, ct_zuzuzun, 212 );
setEffAlphaKey( spep_0 + 54, ct_zuzuzun, 170 );
setEffAlphaKey( spep_0 + 56, ct_zuzuzun, 128 );
setEffAlphaKey( spep_0 + 57, ct_zuzuzun, 85 );
setEffAlphaKey( spep_0 + 58, ct_zuzuzun, 43 );
setEffAlphaKey( spep_0 + 60, ct_zuzuzun, 0 );

spep_x = spep_0 + 52;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 18, 1002, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 18, 1026, "", 0, 0, 0, -1);

--気弾溜め
SE003 = playSeVer2( spep_0 + 64, 1257, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 64, 1356, "",spep_0 + 160, 0, 10, -1);

--顔カットイン
SE005 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE006 = playSeVer2( spep_0 + 70, 1282, "",spep_0 + 160, 0, 10, 0.6);
setSeVolumeByWorkId( spep_0 + 70, SE006, 72 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 146, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 16, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 138, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96 -2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


--------------------------------------
--着弾発射(88F)
--------------------------------------
--spep_2 = 0;

firing = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --着弾発射    ef_002
setEffMoveKey( spep_2 + 0, firing, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, firing, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, firing, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, firing, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, firing, 0 );
setEffRotateKey( spep_2 + 86, firing, 0 );
setEffAlphaKey( spep_2 + 0, firing, 255 );
setEffAlphaKey( spep_2 + 86 -2, firing, 255 );
setEffAlphaKey( spep_2 + 86 -1, firing, 255 );
setEffAlphaKey( spep_2 + 86, firing, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 14, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--気弾発射
SE008 = playSeVer2( spep_2 + 16, 1027, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 16, 1145, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 16, 1312, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
   
    pauseAll( SP_dodge, 67);  
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 白フェード ** --
entryFade( spep_2 + 80, 6, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;


--------------------------------------
-- 飛んでいく着弾(98F)
--------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
Landing = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --飛んでいく着弾    ef_003
setEffMoveKey( spep_3 + 0, Landing, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, Landing, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, Landing, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, Landing, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, Landing, 0 );
setEffRotateKey( spep_3 + 96, Landing, 0 );
setEffAlphaKey( spep_3 + 0, Landing, 255 );
setEffAlphaKey( spep_3 + 96 -2, Landing, 255 );
setEffAlphaKey( spep_3 + 96 -1, Landing, 255 );
setEffAlphaKey( spep_3 + 96, Landing, 0 );

-- ** エフェクト等 ** --
Landing_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --集中線    ef_003_b
setEffMoveKey( spep_3 + 0, Landing_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, Landing_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, Landing_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, Landing_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, Landing_b, 0 );
setEffRotateKey( spep_3 + 96, Landing_b, 0 );
setEffAlphaKey( spep_3 + 0, Landing_b, 255 );
setEffAlphaKey( spep_3 + 96 -2, Landing_b, 255 );
setEffAlphaKey( spep_3 + 96 -1, Landing_b, 255 );
setEffAlphaKey( spep_3 + 96, Landing_b, 0 );

-- ** 書き文字エントリー ** --
ct_zuo = entryEffectLife( spep_3 + 26,  10012, 22, 0x100, -1, 0, 105, 515.5, 3000 ); --ズオッ
setEffShake( spep_3 + 26, ct_zuo, 22, 20 );
setEffMoveKey( spep_3 + 26, ct_zuo, -17.7, 313.1 , 0 );
setEffMoveKey( spep_3 + 28, ct_zuo, -17.7, 313.1 , 0 );
setEffMoveKey( spep_3 + 29, ct_zuo, -35.9, 355.9 , 0 );
setEffMoveKey( spep_3 + 30, ct_zuo, -35.9, 355.9 , 0 );
setEffMoveKey( spep_3 + 31, ct_zuo, -81.2, 407.2 , 0 );
setEffMoveKey( spep_3 + 32, ct_zuo, -81.2, 407.2 , 0 );
setEffMoveKey( spep_3 + 33, ct_zuo, -64.4, 405.8 , 0 );
setEffMoveKey( spep_3 + 34, ct_zuo, -64.4, 405.8 , 0 );
setEffMoveKey( spep_3 + 35, ct_zuo, -94.4, 405.8 , 0 );
setEffMoveKey( spep_3 + 36, ct_zuo, -94.4, 405.8 , 0 );
setEffMoveKey( spep_3 + 37, ct_zuo, -75.8, 407.4 , 0 );
setEffMoveKey( spep_3 + 38, ct_zuo, -75.8, 407.4 , 0 );
setEffMoveKey( spep_3 + 39, ct_zuo, -99.8, 406.1 , 0 );
setEffMoveKey( spep_3 + 40, ct_zuo, -99.8, 406.1 , 0 );
setEffMoveKey( spep_3 + 41, ct_zuo, -89, 407.5 , 0 );
setEffMoveKey( spep_3 + 42, ct_zuo, -89, 407.5 , 0 );
setEffMoveKey( spep_3 + 43, ct_zuo, -119, 421 , 0 );
setEffMoveKey( spep_3 + 44, ct_zuo, -119, 421 , 0 );
setEffMoveKey( spep_3 + 45, ct_zuo, -82.7, 426.2 , 0 );
setEffMoveKey( spep_3 + 48, ct_zuo, -82.7, 426.2 , 0 );

setEffScaleKey( spep_3 + 26, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_3 + 28, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_3 + 29, ct_zuo, 1.54, 1.54 );
setEffScaleKey( spep_3 + 30, ct_zuo, 1.54, 1.54 );
setEffScaleKey( spep_3 + 31, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_3 + 42, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_3 + 43, ct_zuo, 4.09, 4.09 );
setEffScaleKey( spep_3 + 44, ct_zuo, 4.09, 4.09 );
setEffScaleKey( spep_3 + 45, ct_zuo, 5.46, 5.46 );
setEffScaleKey( spep_3 + 46, ct_zuo, 5.46, 5.46 );
setEffScaleKey( spep_3 + 48, ct_zuo, 6.82, 6.82 );

setEffRotateKey( spep_3 + 26, ct_zuo, 6.8 );
setEffRotateKey( spep_3 + 28, ct_zuo, 6.8 );
setEffRotateKey( spep_3 + 29, ct_zuo, -3.3 );
setEffRotateKey( spep_3 + 30, ct_zuo, -3.3 );
setEffRotateKey( spep_3 + 31, ct_zuo, -13.5 );
setEffRotateKey( spep_3 + 32, ct_zuo, -13.5 );
setEffRotateKey( spep_3 + 33, ct_zuo, -13.8 );
setEffRotateKey( spep_3 + 34, ct_zuo, -13.8 );
setEffRotateKey( spep_3 + 35, ct_zuo, -14.1 );
setEffRotateKey( spep_3 + 36, ct_zuo, -14.1 );
setEffRotateKey( spep_3 + 37, ct_zuo, -14.4 );
setEffRotateKey( spep_3 + 38, ct_zuo, -14.4 );
setEffRotateKey( spep_3 + 39, ct_zuo, -14.7 );
setEffRotateKey( spep_3 + 40, ct_zuo, -14.7 );
setEffRotateKey( spep_3 + 41, ct_zuo, -15 );
setEffRotateKey( spep_3 + 42, ct_zuo, -15 );
setEffRotateKey( spep_3 + 43, ct_zuo, -11.7 );
setEffRotateKey( spep_3 + 44, ct_zuo, -11.7 );
setEffRotateKey( spep_3 + 45, ct_zuo, -8.5 );
setEffRotateKey( spep_3 + 48, ct_zuo, -8.5 );

setEffAlphaKey( spep_3 + 26, ct_zuo, 0 );
setEffAlphaKey( spep_3 + 27, ct_zuo, 255 );
setEffAlphaKey( spep_3 + 28, ct_zuo, 255 );
setEffAlphaKey( spep_3 + 42, ct_zuo, 255 );
setEffAlphaKey( spep_3 + 43, ct_zuo, 170 );
setEffAlphaKey( spep_3 + 44, ct_zuo, 170 );
setEffAlphaKey( spep_3 + 45, ct_zuo, 85 );
setEffAlphaKey( spep_3 + 46, ct_zuo, 85 );
setEffAlphaKey( spep_3 + 48, ct_zuo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 36, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 27, 1, 108 );

setMoveKey( spep_3 + 0, 1, -24.9, -98.4 , 0 );
setMoveKey( spep_3 + 2, 1, -18.7, -89.1 , 0 );
setMoveKey( spep_3 + 4, 1, -12.5, -79.8 , 0 );
setMoveKey( spep_3 + 6, 1, -6.3, -70.6 , 0 );
setMoveKey( spep_3 + 8, 1, -0.2, -61.3 , 0 );
setMoveKey( spep_3 + 10, 1, 6, -51.9 , 0 );
setMoveKey( spep_3 + 12, 1, 12.2, -42.7 , 0 );
setMoveKey( spep_3 + 14, 1, 18.4, -33.4 , 0 );
setMoveKey( spep_3 + 16, 1, 24.6, -24.1 , 0 );
setMoveKey( spep_3 + 18, 1, 30.8, -14.9 , 0 );
setMoveKey( spep_3 + 20, 1, 37, -5.5 , 0 );
setMoveKey( spep_3 + 22, 1, 43.2, 3.7 , 0 );
setMoveKey( spep_3 + 24, 1, 49.4, 12.9 , 0 );
setMoveKey( spep_3 + 25, 1, 55.5, 22.2 , 0 );
setMoveKey( spep_3 + 26, 1, 55.5, 22.2 , 0 );
setMoveKey( spep_3 + 27, 1, 97.1, 107.3 , 0 );
setMoveKey( spep_3 + 28, 1, 97.1, 107.3 , 0 );
setMoveKey( spep_3 + 29, 1, 110.3, 99.6 , 0 );
setMoveKey( spep_3 + 30, 1, 110.3, 99.6 , 0 );
setMoveKey( spep_3 + 31, 1, 112.1, 114.6 , 0 );
setMoveKey( spep_3 + 32, 1, 112.1, 114.6 , 0 );
setMoveKey( spep_3 + 33, 1, 111.9, 112.5 , 0 );
setMoveKey( spep_3 + 36, 1, 111.9, 112.5 , 0 );

setScaleKey( spep_3 + 0, 1, 3, 3 );
setScaleKey( spep_3 + 2, 1, 2.93, 2.93 );
setScaleKey( spep_3 + 4, 1, 2.86, 2.86 );
setScaleKey( spep_3 + 6, 1, 2.79, 2.79 );
setScaleKey( spep_3 + 8, 1, 2.71, 2.71 );
setScaleKey( spep_3 + 10, 1, 2.64, 2.64 );
setScaleKey( spep_3 + 12, 1, 2.57, 2.57 );
setScaleKey( spep_3 + 14, 1, 2.5, 2.5 );
setScaleKey( spep_3 + 16, 1, 2.43, 2.43 );
setScaleKey( spep_3 + 18, 1, 2.36, 2.36 );
setScaleKey( spep_3 + 20, 1, 2.29, 2.29 );
setScaleKey( spep_3 + 22, 1, 2.21, 2.21 );
setScaleKey( spep_3 + 24, 1, 2.14, 2.14 );
setScaleKey( spep_3 + 25, 1, 2.07, 2.07 );
setScaleKey( spep_3 + 26, 1, 2.07, 2.07 );
setScaleKey( spep_3 + 27, 1, 2.4, 2.4 );
setScaleKey( spep_3 + 28, 1, 2.4, 2.4 );
setScaleKey( spep_3 + 29, 1, 1.95, 1.95 );
setScaleKey( spep_3 + 30, 1, 1.95, 1.95 );
setScaleKey( spep_3 + 31, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 32, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 33, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 36, 1, 1.05, 1.05 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 36, 1, 0 );

-- ** 音 ** --
--気弾飛んでいく
SE011 = playSeVer2( spep_3 + 28, 1021, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_3 + 26, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 120 );  --white fade
entryFade( spep_3 + 90, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;


--------------------------------------
-- ひび割れ(112F)
--------------------------------------
--spep_4 = 0;

-- ** ひび割れ ** --
finish_f = entryEffect( spep_4 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_4 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 8, finish_f, 0 );
setEffRotateKey( spep_4 + 112, finish_f, 0 );
setEffAlphaKey( spep_4 + 8, finish_f, 255 );
setEffAlphaKey( spep_4 + 112, finish_f, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 112, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_4 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_4 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_4 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_4 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_4 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_4 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_4 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 112, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 112, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_4 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_4 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_4 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_4 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_4 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_4 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_4 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_4 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_4 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_4 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_4 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_4 + 0, 1, -122.8 - 232 );
setRotateKey( spep_4 + 2, 1, -122.8 );
setRotateKey( spep_4 -3 + 6, 1, -1 );
setRotateKey( spep_4 -3 + 8, 1, 120.7 );
setRotateKey( spep_4 -3 + 10, 1, 242.5 );
setRotateKey( spep_4 -3 + 12, 1, 364.3 );
setRotateKey( spep_4 -3 + 14, 1, 486 );
setRotateKey( spep_4 -3 + 16, 1, 607.8 );
setRotateKey( spep_4 -3 + 18, 1, 729.5 );
setRotateKey( spep_4 + 112, 1, 729.5 );

-- ** 音 ** --
--爆発
SE0N1 = playSeVer2( spep_4 + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_4 + 14, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_4 + 14, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_4 + 6 ); -- ダメージ表示フレーム
endPhase( spep_4 + 106 ); -- 終了フレーム


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- ピストル構え、溜め(148F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --ピストル構え、溜め    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 146, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 146 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 146 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 146, first_f, 0 );

-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_0 + 42, 906, 104, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 42, shuchusen_1, 104, 20 );
setEffMoveKey( spep_0 + 42, shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, shuchusen_1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 42, shuchusen_1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 146, shuchusen_1, 1.6, 1.6 );
setEffRotateKey( spep_0 + 42, shuchusen_1, 0 );
setEffRotateKey( spep_0 + 146, shuchusen_1, 0 );
setEffAlphaKey( spep_0 + 42, shuchusen_1, 255 );
setEffAlphaKey( spep_0 + 146, shuchusen_1, 255 );

-- ** 書き文字エントリー ** --
ct_zuzuzun = entryEffectLife( spep_0 + 16,  10013, 44, 0x100, -1, 0, 105, 515.5, 3000 ); --ズズズンッ
setEffShake( spep_0 + 16, ct_zuzuzun, 44, 20 );
setEffMoveKey( spep_0 + 16, ct_zuzuzun, 22, 251.9 , 0 );
setEffMoveKey( spep_0 + 20, ct_zuzuzun, 22, 251.9 , 0 );
setEffMoveKey( spep_0 + 21, ct_zuzuzun, 32.7, 321.1 , 0 );
setEffMoveKey( spep_0 + 22, ct_zuzuzun, 32.7, 321.1 , 0 );
setEffMoveKey( spep_0 + 23, ct_zuzuzun, 56.1, 400 , 0 );
setEffMoveKey( spep_0 + 24, ct_zuzuzun, 56.1, 400 , 0 );
setEffMoveKey( spep_0 + 25, ct_zuzuzun, 43.3, 383.1 , 0 );
setEffMoveKey( spep_0 + 26, ct_zuzuzun, 43.3, 383.1 , 0 );
setEffMoveKey( spep_0 + 27, ct_zuzuzun, 48.4, 377.4 , 0 );
setEffMoveKey( spep_0 + 29, ct_zuzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 + 30, ct_zuzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 + 31, ct_zuzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 + 32, ct_zuzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 + 34, ct_zuzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 + 36, ct_zuzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 + 38, ct_zuzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 + 40, ct_zuzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 + 42, ct_zuzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 + 44, ct_zuzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 + 46, ct_zuzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 + 48, ct_zuzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 + 50, ct_zuzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 + 52, ct_zuzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 + 54, ct_zuzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 + 56, ct_zuzuzun, 36, 359.9 , 0 );
setEffMoveKey( spep_0 + 58, ct_zuzuzun, 46, 369.9 , 0 );
setEffMoveKey( spep_0 + 60, ct_zuzuzun, 36, 359.9 , 0 );

setEffScaleKey( spep_0 + 16, ct_zuzuzun, 1.1, 1.1 );
setEffScaleKey( spep_0 + 20, ct_zuzuzun, 1.1, 1.1 );
setEffScaleKey( spep_0 + 21, ct_zuzuzun, 2, 2 );
setEffScaleKey( spep_0 + 22, ct_zuzuzun, 2, 2 );
setEffScaleKey( spep_0 + 23, ct_zuzuzun, 3, 3 );
setEffScaleKey( spep_0 + 60, ct_zuzuzun, 3, 3 );

setEffRotateKey( spep_0 + 16, ct_zuzuzun, 0 );
setEffRotateKey( spep_0 + 60, ct_zuzuzun, 0 );

setEffAlphaKey( spep_0 + 16, ct_zuzuzun, 255 );
setEffAlphaKey( spep_0 + 50, ct_zuzuzun, 255 );
setEffAlphaKey( spep_0 + 52, ct_zuzuzun, 212 );
setEffAlphaKey( spep_0 + 54, ct_zuzuzun, 170 );
setEffAlphaKey( spep_0 + 56, ct_zuzuzun, 128 );
setEffAlphaKey( spep_0 + 57, ct_zuzuzun, 85 );
setEffAlphaKey( spep_0 + 58, ct_zuzuzun, 43 );
setEffAlphaKey( spep_0 + 60, ct_zuzuzun, 0 );

spep_x = spep_0 + 52;

-- ** 顔カットイン ** --
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 18, 1002, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 18, 1026, "", 0, 0, 0, -1);

--気弾溜め
SE003 = playSeVer2( spep_0 + 64, 1257, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 64, 1356, "",spep_0 + 160, 0, 10, -1);

--顔カットイン
SE005 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE006 = playSeVer2( spep_0 + 70, 1282, "",spep_0 + 160, 0, 10, 0.6);
setSeVolumeByWorkId( spep_0 + 70, SE006, 72 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 146, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 16, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 138, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96 -2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


--------------------------------------
--着弾発射(88F)
--------------------------------------
--spep_2 = 0;

firing = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --着弾発射    ef_002
setEffMoveKey( spep_2 + 0, firing, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, firing, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, firing, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, firing, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, firing, 0 );
setEffRotateKey( spep_2 + 86, firing, 0 );
setEffAlphaKey( spep_2 + 0, firing, 255 );
setEffAlphaKey( spep_2 + 86 -2, firing, 255 );
setEffAlphaKey( spep_2 + 86 -1, firing, 255 );
setEffAlphaKey( spep_2 + 86, firing, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 14, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--気弾発射
SE008 = playSeVer2( spep_2 + 16, 1027, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 16, 1145, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 16, 1312, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
   
    pauseAll( SP_dodge, 67);  
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 白フェード ** --
entryFade( spep_2 + 80, 6, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;


--------------------------------------
-- 飛んでいく着弾(98F)
--------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
Landing = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --飛んでいく着弾    ef_003
setEffMoveKey( spep_3 + 0, Landing, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, Landing, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, Landing, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, Landing, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, Landing, 0 );
setEffRotateKey( spep_3 + 96, Landing, 0 );
setEffAlphaKey( spep_3 + 0, Landing, 255 );
setEffAlphaKey( spep_3 + 96 -2, Landing, 255 );
setEffAlphaKey( spep_3 + 96 -1, Landing, 255 );
setEffAlphaKey( spep_3 + 96, Landing, 0 );

-- ** エフェクト等 ** --
Landing_b = entryEffect( spep_3 + 0, SP_04r, 0x80, -1, 0, 0, 0 );  --集中線    ef_003_b
setEffMoveKey( spep_3 + 0, Landing_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, Landing_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, Landing_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, Landing_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, Landing_b, 0 );
setEffRotateKey( spep_3 + 96, Landing_b, 0 );
setEffAlphaKey( spep_3 + 0, Landing_b, 255 );
setEffAlphaKey( spep_3 + 96 -2, Landing_b, 255 );
setEffAlphaKey( spep_3 + 96 -1, Landing_b, 255 );
setEffAlphaKey( spep_3 + 96, Landing_b, 0 );

-- ** 書き文字エントリー ** --
ct_zuo = entryEffectLife( spep_3 + 26,  10012, 22, 0x100, -1, 0, 105, 515.5, 3000 ); --ズオッ
setEffShake( spep_3 + 26, ct_zuo, 22, 20 );
setEffMoveKey( spep_3 + 26, ct_zuo, -17.7, 313.1 , 0 );
setEffMoveKey( spep_3 + 28, ct_zuo, -17.7, 313.1 , 0 );
setEffMoveKey( spep_3 + 29, ct_zuo, -35.9, 355.9 , 0 );
setEffMoveKey( spep_3 + 30, ct_zuo, -35.9, 355.9 , 0 );
setEffMoveKey( spep_3 + 31, ct_zuo, -81.2, 407.2 , 0 );
setEffMoveKey( spep_3 + 32, ct_zuo, -81.2, 407.2 , 0 );
setEffMoveKey( spep_3 + 33, ct_zuo, -64.4, 405.8 , 0 );
setEffMoveKey( spep_3 + 34, ct_zuo, -64.4, 405.8 , 0 );
setEffMoveKey( spep_3 + 35, ct_zuo, -94.4, 405.8 , 0 );
setEffMoveKey( spep_3 + 36, ct_zuo, -94.4, 405.8 , 0 );
setEffMoveKey( spep_3 + 37, ct_zuo, -75.8, 407.4 , 0 );
setEffMoveKey( spep_3 + 38, ct_zuo, -75.8, 407.4 , 0 );
setEffMoveKey( spep_3 + 39, ct_zuo, -99.8, 406.1 , 0 );
setEffMoveKey( spep_3 + 40, ct_zuo, -99.8, 406.1 , 0 );
setEffMoveKey( spep_3 + 41, ct_zuo, -89, 407.5 , 0 );
setEffMoveKey( spep_3 + 42, ct_zuo, -89, 407.5 , 0 );
setEffMoveKey( spep_3 + 43, ct_zuo, -119, 421 , 0 );
setEffMoveKey( spep_3 + 44, ct_zuo, -119, 421 , 0 );
setEffMoveKey( spep_3 + 45, ct_zuo, -82.7, 426.2 , 0 );
setEffMoveKey( spep_3 + 48, ct_zuo, -82.7, 426.2 , 0 );

setEffScaleKey( spep_3 + 26, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_3 + 28, ct_zuo, 0.34, 0.34 );
setEffScaleKey( spep_3 + 29, ct_zuo, 1.54, 1.54 );
setEffScaleKey( spep_3 + 30, ct_zuo, 1.54, 1.54 );
setEffScaleKey( spep_3 + 31, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_3 + 42, ct_zuo, 2.73, 2.73 );
setEffScaleKey( spep_3 + 43, ct_zuo, 4.09, 4.09 );
setEffScaleKey( spep_3 + 44, ct_zuo, 4.09, 4.09 );
setEffScaleKey( spep_3 + 45, ct_zuo, 5.46, 5.46 );
setEffScaleKey( spep_3 + 46, ct_zuo, 5.46, 5.46 );
setEffScaleKey( spep_3 + 48, ct_zuo, 6.82, 6.82 );

setEffRotateKey( spep_3 + 26, ct_zuo, 6.8 );
setEffRotateKey( spep_3 + 28, ct_zuo, 6.8 );
setEffRotateKey( spep_3 + 29, ct_zuo, -3.3 );
setEffRotateKey( spep_3 + 30, ct_zuo, -3.3 );
setEffRotateKey( spep_3 + 31, ct_zuo, -13.5 );
setEffRotateKey( spep_3 + 32, ct_zuo, -13.5 );
setEffRotateKey( spep_3 + 33, ct_zuo, -13.8 );
setEffRotateKey( spep_3 + 34, ct_zuo, -13.8 );
setEffRotateKey( spep_3 + 35, ct_zuo, -14.1 );
setEffRotateKey( spep_3 + 36, ct_zuo, -14.1 );
setEffRotateKey( spep_3 + 37, ct_zuo, -14.4 );
setEffRotateKey( spep_3 + 38, ct_zuo, -14.4 );
setEffRotateKey( spep_3 + 39, ct_zuo, -14.7 );
setEffRotateKey( spep_3 + 40, ct_zuo, -14.7 );
setEffRotateKey( spep_3 + 41, ct_zuo, -15 );
setEffRotateKey( spep_3 + 42, ct_zuo, -15 );
setEffRotateKey( spep_3 + 43, ct_zuo, -11.7 );
setEffRotateKey( spep_3 + 44, ct_zuo, -11.7 );
setEffRotateKey( spep_3 + 45, ct_zuo, -8.5 );
setEffRotateKey( spep_3 + 48, ct_zuo, -8.5 );

setEffAlphaKey( spep_3 + 26, ct_zuo, 0 );
setEffAlphaKey( spep_3 + 27, ct_zuo, 255 );
setEffAlphaKey( spep_3 + 28, ct_zuo, 255 );
setEffAlphaKey( spep_3 + 42, ct_zuo, 255 );
setEffAlphaKey( spep_3 + 43, ct_zuo, 170 );
setEffAlphaKey( spep_3 + 44, ct_zuo, 170 );
setEffAlphaKey( spep_3 + 45, ct_zuo, 85 );
setEffAlphaKey( spep_3 + 46, ct_zuo, 85 );
setEffAlphaKey( spep_3 + 48, ct_zuo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 36, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 27, 1, 108 );

setMoveKey( spep_3 + 0, 1, -24.9, -98.4 , 0 );
setMoveKey( spep_3 + 2, 1, -18.7, -89.1 , 0 );
setMoveKey( spep_3 + 4, 1, -12.5, -79.8 , 0 );
setMoveKey( spep_3 + 6, 1, -6.3, -70.6 , 0 );
setMoveKey( spep_3 + 8, 1, -0.2, -61.3 , 0 );
setMoveKey( spep_3 + 10, 1, 6, -51.9 , 0 );
setMoveKey( spep_3 + 12, 1, 12.2, -42.7 , 0 );
setMoveKey( spep_3 + 14, 1, 18.4, -33.4 , 0 );
setMoveKey( spep_3 + 16, 1, 24.6, -24.1 , 0 );
setMoveKey( spep_3 + 18, 1, 30.8, -14.9 , 0 );
setMoveKey( spep_3 + 20, 1, 37, -5.5 , 0 );
setMoveKey( spep_3 + 22, 1, 43.2, 3.7 , 0 );
setMoveKey( spep_3 + 24, 1, 49.4, 12.9 , 0 );
setMoveKey( spep_3 + 25, 1, 55.5, 22.2 , 0 );
setMoveKey( spep_3 + 26, 1, 55.5, 22.2 , 0 );
setMoveKey( spep_3 + 27, 1, 97.1, 107.3 , 0 );
setMoveKey( spep_3 + 28, 1, 97.1, 107.3 , 0 );
setMoveKey( spep_3 + 29, 1, 110.3, 99.6 , 0 );
setMoveKey( spep_3 + 30, 1, 110.3, 99.6 , 0 );
setMoveKey( spep_3 + 31, 1, 112.1, 114.6 , 0 );
setMoveKey( spep_3 + 32, 1, 112.1, 114.6 , 0 );
setMoveKey( spep_3 + 33, 1, 111.9, 112.5 , 0 );
setMoveKey( spep_3 + 36, 1, 111.9, 112.5 , 0 );

setScaleKey( spep_3 + 0, 1, 3, 3 );
setScaleKey( spep_3 + 2, 1, 2.93, 2.93 );
setScaleKey( spep_3 + 4, 1, 2.86, 2.86 );
setScaleKey( spep_3 + 6, 1, 2.79, 2.79 );
setScaleKey( spep_3 + 8, 1, 2.71, 2.71 );
setScaleKey( spep_3 + 10, 1, 2.64, 2.64 );
setScaleKey( spep_3 + 12, 1, 2.57, 2.57 );
setScaleKey( spep_3 + 14, 1, 2.5, 2.5 );
setScaleKey( spep_3 + 16, 1, 2.43, 2.43 );
setScaleKey( spep_3 + 18, 1, 2.36, 2.36 );
setScaleKey( spep_3 + 20, 1, 2.29, 2.29 );
setScaleKey( spep_3 + 22, 1, 2.21, 2.21 );
setScaleKey( spep_3 + 24, 1, 2.14, 2.14 );
setScaleKey( spep_3 + 25, 1, 2.07, 2.07 );
setScaleKey( spep_3 + 26, 1, 2.07, 2.07 );
setScaleKey( spep_3 + 27, 1, 2.4, 2.4 );
setScaleKey( spep_3 + 28, 1, 2.4, 2.4 );
setScaleKey( spep_3 + 29, 1, 1.95, 1.95 );
setScaleKey( spep_3 + 30, 1, 1.95, 1.95 );
setScaleKey( spep_3 + 31, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 32, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 33, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 36, 1, 1.05, 1.05 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 36, 1, 0 );

-- ** 音 ** --
--気弾飛んでいく
SE011 = playSeVer2( spep_3 + 28, 1021, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_3 + 26, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 120 );  --white fade
entryFade( spep_3 + 90, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;


--------------------------------------
-- ひび割れ(112F)
--------------------------------------
--spep_4 = 0;

-- ** ひび割れ ** --
finish_f = entryEffect( spep_4 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_4 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 8, finish_f, 0 );
setEffRotateKey( spep_4 + 112, finish_f, 0 );
setEffAlphaKey( spep_4 + 8, finish_f, 255 );
setEffAlphaKey( spep_4 + 112, finish_f, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 112, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_4 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_4 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_4 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_4 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_4 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_4 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_4 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 112, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 112, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_4 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_4 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_4 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_4 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_4 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_4 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_4 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_4 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_4 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_4 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_4 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_4 + 0, 1, -122.8 - 232 );
setRotateKey( spep_4 + 2, 1, -122.8 );
setRotateKey( spep_4 -3 + 6, 1, -1 );
setRotateKey( spep_4 -3 + 8, 1, 120.7 );
setRotateKey( spep_4 -3 + 10, 1, 242.5 );
setRotateKey( spep_4 -3 + 12, 1, 364.3 );
setRotateKey( spep_4 -3 + 14, 1, 486 );
setRotateKey( spep_4 -3 + 16, 1, 607.8 );
setRotateKey( spep_4 -3 + 18, 1, 729.5 );
setRotateKey( spep_4 + 112, 1, 729.5 );

-- ** 音 ** --
--爆発
SE0N1 = playSeVer2( spep_4 + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_4 + 14, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_4 + 14, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_4 + 6 ); -- ダメージ表示フレーム
endPhase( spep_4 + 106 ); -- 終了フレーム

end