--1021910:SSR超サイヤ人孫悟空(GT)_かめはめ波(簡易版)_sp2184
--sp_effect_a1_00293

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
SP_01 = 157242;		--冒頭〜かめはめ波溜め：手前	ef_001
SP_02 = 157243;		--冒頭〜かめはめ波溜め：奥	ef_002
SP_03 = 157244;		--発射〜着弾：手前	ef_003
SP_04 = 157245;		--発射〜着弾：奥	ef_004

--敵側
SP_01r = 157246;		--敵用：冒頭〜かめはめ波溜め：手前	ef_001r
SP_03r = 157247;		--敵用：発射〜着弾：手前	ef_003r

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
-- 冒頭〜かめはめ波溜め(114F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 114, 0x100, -1, 0, 0, 0 );  --冒頭〜かめはめ波溜め：手前(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 114, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 114, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 114, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 114 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 114, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 114, 0x80, -1, 0, 0, 0 );  --冒頭〜かめはめ波溜め：奥(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 114, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 114, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 114, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 114 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 114, first_b, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 114 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
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

spep_x = spep_0 + 22;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -30, 505.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -30, 505.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -30, 505.5 , 0 );
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
--構え
SE001 = playSe( spep_0 + 4, 1003 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 51 );

--かめはめ波溜め
SE002 = playSe( spep_0 + 16, 1209 );
stopSe( spep_0 +114 + 12, SE002, 0 );

--かめはめ波溜め
SE003 = playSe( spep_0 + 16, 1210 );
stopSe( spep_0 +114 + 12, SE003, 0 );

--顔カットイン
SE004 = playSe( spep_0 + 26, 1018 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 114;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
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

--発射前かめはめ波溜め
SE005 = playSe( spep_1 + 82, 1210 );
setSeVolumeByWorkId( spep_1 + 82, SE005, 0 );
setSeVolumeByWorkId( spep_1 + 84, SE005, 25 );
setSeVolumeByWorkId( spep_1 + 86, SE005, 50 );
setSeVolumeByWorkId( spep_1 + 88, SE005, 75 );
setSeVolumeByWorkId( spep_1 + 90, SE005, 100 );
stopSe( spep_1 +94 + 48, SE005, 10 );
setStartTimeMs( SE005,  1667 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 発射〜着弾(276F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --発射〜着弾：手前(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 276, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 276, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 276, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 276, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --発射〜着弾：奥 (ef_004)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 276, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 276, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 276, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 276, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 120, 1, 1 );
setDisp( spep_2 -3 + 154, 1, 0 );
changeAnime( spep_2 -3 + 120, 1, 104 );

setMoveKey( spep_2 -3 + 120, 1, -55.1, -24.9 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -16.3, -34 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 22.5, -43.2 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 61.3, -52.3 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 100.1, -61.5 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 103.2, -62.2 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 106.2, -62.9 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 109.2, -63.6 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 112.2, -64.3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 115.2, -65 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 118.2, -65.7 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 121.2, -66.4 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 124.2, -67.1 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 127.2, -67.8 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 130.2, -68.5 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 133.2, -69.2 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 136.2, -69.9 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 136.2, -69.9 , 0 );

setScaleKey( spep_2 -3 + 120, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 122, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 124, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 126, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 128, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 130, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 132, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 134, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 136, 1, 0.43, 0.43 );
setScaleKey( spep_2 -3 + 138, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 140, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 142, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 144, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 146, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 148, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 150, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 152, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 154, 1, 0.24, 0.24 );

setRotateKey( spep_2 -3 + 120, 1, 0 );
setRotateKey( spep_2 -3 + 136, 1, 0 );
setRotateKey( spep_2 -3 + 138, 1, 0 );
setRotateKey( spep_2 -3 + 154, 1, 0 );

-- ** 音 ** --
--かめはめ波発射
SE007 = playSe( spep_2 + 46, 1027 );
setSeVolumeByWorkId( spep_2 + 46, SE007, 65 );

--かめはめ波発射
SE008 = playSe( spep_2 + 46, 1284 );
stopSe( spep_2 + 154, SE008, 12 );

--かめはめ波発射
SE009 = playSe( spep_2 + 46, 1022 );
stopSe( spep_2 + 154, SE009, 12 );

--かめはめ波発射
SE010 = playSe( spep_2 + 46, 1213 );
setSeVolumeByWorkId( spep_2 + 46, SE010, 57 );
stopSe( spep_2 + 154, SE010, 12 );

--かめはめ波飛んでいく
SE011 = playSe( spep_2 + 122, 1402 );
setSeVolumeByWorkId( spep_2 + 122, SE011, 160 );
stopSe( spep_2 + 154, SE011, 12 );

--かめはめ波飛んでいく
SE012 = playSe( spep_2 + 122, 1021 );
stopSe( spep_2 + 154, SE012, 12 );

--爆発
SE013 = playSe( spep_2 + 152, 1067 );

--爆発
SE014 = playSe( spep_2 + 152, 1159 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 276 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 166 );
endPhase( spep_2 + 266 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 冒頭〜かめはめ波溜め(114F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 114, 0x100, -1, 0, 0, 0 );  --冒頭〜かめはめ波溜め：手前(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 114, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 114, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 114, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 114 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 114, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 114, 0x80, -1, 0, 0, 0 );  --冒頭〜かめはめ波溜め：奥(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 114, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 114, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 114, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 114 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 114, first_b, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 114 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
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

spep_x = spep_0 + 22;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -30, 505.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -30, 505.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -30, 505.5 , 0 );
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
--構え
SE001 = playSe( spep_0 + 4, 1003 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 51 );

--かめはめ波溜め
SE002 = playSe( spep_0 + 16, 1209 );
stopSe( spep_0 +114 + 12, SE002, 0 );

--かめはめ波溜め
SE003 = playSe( spep_0 + 16, 1210 );
stopSe( spep_0 +114 + 12, SE003, 0 );

--顔カットイン
SE004 = playSe( spep_0 + 26, 1018 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 114;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
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

--発射前かめはめ波溜め
SE005 = playSe( spep_1 + 82, 1210 );
setSeVolumeByWorkId( spep_1 + 82, SE005, 0 );
setSeVolumeByWorkId( spep_1 + 84, SE005, 25 );
setSeVolumeByWorkId( spep_1 + 86, SE005, 50 );
setSeVolumeByWorkId( spep_1 + 88, SE005, 75 );
setSeVolumeByWorkId( spep_1 + 90, SE005, 100 );
stopSe( spep_1 +94 + 48, SE005, 10 );
setStartTimeMs( SE005,  1667 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射〜着弾(276F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --発射〜着弾：手前(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 276, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 276, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 276, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 276, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --発射〜着弾：奥 (ef_004)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 276, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 276, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 276, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 276, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 120, 1, 1 );
setDisp( spep_2 -3 + 154, 1, 0 );
changeAnime( spep_2 -3 + 120, 1, 104 );

setMoveKey( spep_2 -3 + 120, 1, -55.1, -24.9 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -16.3, -34 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 22.5, -43.2 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 61.3, -52.3 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 100.1, -61.5 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 103.2, -62.2 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 106.2, -62.9 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 109.2, -63.6 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 112.2, -64.3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 115.2, -65 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 118.2, -65.7 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 121.2, -66.4 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 124.2, -67.1 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 127.2, -67.8 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 130.2, -68.5 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 133.2, -69.2 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 136.2, -69.9 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 136.2, -69.9 , 0 );

setScaleKey( spep_2 -3 + 120, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 122, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 124, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 126, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 128, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 130, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 132, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 134, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 136, 1, 0.43, 0.43 );
setScaleKey( spep_2 -3 + 138, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 140, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 142, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 144, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 146, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 148, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 150, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 152, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 154, 1, 0.24, 0.24 );

setRotateKey( spep_2 -3 + 120, 1, 0 );
setRotateKey( spep_2 -3 + 136, 1, 0 );
setRotateKey( spep_2 -3 + 138, 1, 0 );
setRotateKey( spep_2 -3 + 154, 1, 0 );

-- ** 音 ** --
--かめはめ波発射
SE007 = playSe( spep_2 + 46, 1027 );
setSeVolumeByWorkId( spep_2 + 46, SE007, 65 );

--かめはめ波発射
SE008 = playSe( spep_2 + 46, 1284 );
stopSe( spep_2 + 154, SE008, 12 );

--かめはめ波発射
SE009 = playSe( spep_2 + 46, 1022 );
stopSe( spep_2 + 154, SE009, 12 );

--かめはめ波発射
SE010 = playSe( spep_2 + 46, 1213 );
setSeVolumeByWorkId( spep_2 + 46, SE010, 57 );
stopSe( spep_2 + 154, SE010, 12 );

--かめはめ波飛んでいく
SE011 = playSe( spep_2 + 122, 1402 );
setSeVolumeByWorkId( spep_2 + 122, SE011, 160 );
stopSe( spep_2 + 154, SE011, 12 );

--かめはめ波飛んでいく
SE012 = playSe( spep_2 + 122, 1021 );
stopSe( spep_2 + 154, SE012, 12 );

--爆発
SE013 = playSe( spep_2 + 152, 1067 );

--爆発
SE014 = playSe( spep_2 + 152, 1159 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 276 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 166 );
endPhase( spep_2 + 266 );

end