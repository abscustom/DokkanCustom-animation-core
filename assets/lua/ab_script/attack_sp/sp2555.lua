-- 1026550: SSR_マジュニア_必殺技_爆力魔波
-- sp_effect_a2_00213

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035;  -- 気を貯める
SE_02 = 1036;  -- 気が広がる
SE_03 = 1036;  -- かめはめ
SE_04 = 1018;  -- カットイン
SE_05 = 1035;  -- カットイン攻撃
SE_06 = 1021;  -- 発射
SE_07 = 1022;  -- のびる発射
SE_08 = 1042;  -- カットイン
SE_09 = 1023;  -- HIT
SE_10 = 1024;  -- 爆破
SE_11 = 1054;  -- 割れる音
SE_12 = 09;

-- 味方側
SP_001 = 161836;  -- 冒頭 ef_001
SP_002 = 161837;  -- 発射～ラスト：手前 ef_002
SP_003 = 161838;  -- 発射～ラスト：奥 ef_003

-- 敵側
SP_002r = 161839;  -- 敵用・発射～ラスト：手前 ef_002r
SP_003r = 161840;  -- 敵用・発射～ラスト：奥 ef_003r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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

spep_0 = 0;

------------------------------------------------------
-- 冒頭 ef_001 (88F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + 88, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + 88, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + 88, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + 88, entry_SP_001, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 88 + 2, 0, 0, 0, 0, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -25, 515.5, 3000 );  -- ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -25, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -25, 515.5 , 0 );
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
--凄む
SE001 = playSeVer2( spep_0 + 0, 1399, "",spep_0 + 88 + 8, 0, 8, -1);
SE002 = playSeVer2( spep_0 + 0, 1397, "",spep_0 + 88 + 8, 0, 8, -1);
SE003 = playSeVer2( spep_0 + 0, 1229, "",spep_0 + 88 + 8, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 162 );

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 88;

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );  -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );  -- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  -- 集中線
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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- 白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射～ラスト：手前 ef_002 (568F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + 566, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_2 + 566, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + 566, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + 566, entry_SP_002, 255 );
entry_SP_003 = entryEffect( spep_2 + 0, SP_003, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_003, 0, 0 , 0 );
setEffMoveKey( spep_2 + 566, entry_SP_003, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_003, 1.0, 1.0 );
setEffScaleKey( spep_2 + 566, entry_SP_003, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_003, 0 );
setEffRotateKey( spep_2 + 566, entry_SP_003, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_003, 255 );
setEffAlphaKey( spep_2 + 566, entry_SP_003, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 568 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--凄む2
SE006 = playSeVer2( spep_1 + 88, 1399, "",spep_2 + 46, 0, 10, -1);
SE007 = playSeVer2( spep_1 + 88, 1397, "",spep_2 + 46, 0, 10, -1);
SE008 = playSeVer2( spep_1 + 88, 1229, "",spep_2 + 46, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 88, SE008, 162 );

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 58; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    
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

n = 1;

-- ** 敵キャラクター ** --
setDisp( spep_2 - n + 166, 1, 1 );
setDisp( spep_2 - n + 236, 1, 0 );
setDisp( spep_2 - n + 384, 1, 1 );
setDisp( spep_2 - n + 436, 1, 0 );

changeAnime( spep_2 - n + 166, 1, 102 );
changeAnime( spep_2 - n + 180, 1, 118 );
changeAnime( spep_2 - n + 196, 1, 104 );
changeAnime( spep_2 - n + 384, 1, 117 );
changeAnime( spep_2 - n + 396, 1, 118 );
changeAnime( spep_2 - n + 398, 1, 11 );
changeAnime( spep_2 - n + 400, 1, 3 );

setMoveKey( spep_2 - n + 166, 1, 28.6, -136.1 , 0 );
setMoveKey( spep_2 - n + 167, 1, 28.6, -136.1 , 0 );
setMoveKey( spep_2 - n + 168, 1, 33.6, -130.6 , 0 );
setMoveKey( spep_2 - n + 169, 1, 33.6, -130.6 , 0 );
setMoveKey( spep_2 - n + 170, 1, 38.5, -125.1 , 0 );
setMoveKey( spep_2 - n + 171, 1, 38.5, -125.1 , 0 );
setMoveKey( spep_2 - n + 172, 1, 43.5, -119.6 , 0 );
setMoveKey( spep_2 - n + 173, 1, 43.5, -119.6 , 0 );
setMoveKey( spep_2 - n + 174, 1, 48.5, -114.1 , 0 );
setMoveKey( spep_2 - n + 175, 1, 48.5, -114.1 , 0 );
setMoveKey( spep_2 - n + 176, 1, 53.4, -108.6 , 0 );
setMoveKey( spep_2 - n + 177, 1, 53.4, -108.6 , 0 );
setMoveKey( spep_2 - n + 178, 1, 58.4, -103.1 , 0 );
setMoveKey( spep_2 - n + 179, 1, 58.4, -103.1 , 0 );
setMoveKey( spep_2 - n + 180, 1, 81.3, -58.1 , 0 ); 
setMoveKey( spep_2 - n + 181, 1, 81.3, -58.1 , 0 );
setMoveKey( spep_2 - n + 182, 1, 84.1, -47.9 , 0 );
setMoveKey( spep_2 - n + 183, 1, 84.1, -47.9 , 0 );
setMoveKey( spep_2 - n + 184, 1, 87.5, -36.8 , 0 );
setMoveKey( spep_2 - n + 185, 1, 87.5, -36.8 , 0 );
setMoveKey( spep_2 - n + 186, 1, 91.6, -24.5 , 0 );
setMoveKey( spep_2 - n + 187, 1, 91.6, -24.5 , 0 );
setMoveKey( spep_2 - n + 188, 1, 96.4, -11.2 , 0 );
setMoveKey( spep_2 - n + 189, 1, 96.4, -11.2 , 0 );
setMoveKey( spep_2 - n + 190, 1, 101.8, 3.1 , 0 );
setMoveKey( spep_2 - n + 191, 1, 101.8, 3.1 , 0 );
setMoveKey( spep_2 - n + 192, 1, 107.8, 18.5 , 0 );
setMoveKey( spep_2 - n + 193, 1, 107.8, 18.5 , 0 );
setMoveKey( spep_2 - n + 194, 1, 114.5, 35 , 0 );
setMoveKey( spep_2 - n + 195, 1, 114.5, 35 , 0 );
setMoveKey( spep_2 - n + 196, 1, 85.1, 75.9 , 0 );
setMoveKey( spep_2 - n + 197, 1, 85.1, 75.9 , 0 );
setMoveKey( spep_2 - n + 198, 1, 90.9, 95.8 , 0 );
setMoveKey( spep_2 - n + 199, 1, 90.9, 95.8 , 0 );
setMoveKey( spep_2 - n + 200, 1, 81.6, 120.4 , 0 );
setMoveKey( spep_2 - n + 201, 1, 81.6, 120.4 , 0 );
setMoveKey( spep_2 - n + 202, 1, 92.2, 114.7 , 0 );
setMoveKey( spep_2 - n + 203, 1, 92.2, 114.7 , 0 );
setMoveKey( spep_2 - n + 204, 1, 82.8, 118.8 , 0 );
setMoveKey( spep_2 - n + 205, 1, 82.8, 118.8 , 0 );
setMoveKey( spep_2 - n + 206, 1, 93.3, 132.6 , 0 );
setMoveKey( spep_2 - n + 207, 1, 93.3, 132.6 , 0 );
setMoveKey( spep_2 - n + 208, 1, 88.8, 131.2 , 0 );
setMoveKey( spep_2 - n + 209, 1, 88.8, 131.2 , 0 );
setMoveKey( spep_2 - n + 210, 1, 94.2, 149.5 , 0 );
setMoveKey( spep_2 - n + 211, 1, 94.2, 149.5 , 0 );
setMoveKey( spep_2 - n + 212, 1, 79.5, 152.5 , 0 );
setMoveKey( spep_2 - n + 213, 1, 79.5, 152.5 , 0 );
setMoveKey( spep_2 - n + 214, 1, 94.9, 165.2 , 0 );
setMoveKey( spep_2 - n + 215, 1, 94.9, 165.2 , 0 );
setMoveKey( spep_2 - n + 216, 1, 85.1, 177.6 , 0 );
setMoveKey( spep_2 - n + 217, 1, 85.1, 177.6 , 0 );
setMoveKey( spep_2 - n + 218, 1, 95.4, 179.8 , 0 );
setMoveKey( spep_2 - n + 219, 1, 95.4, 179.8 , 0 );
setMoveKey( spep_2 - n + 220, 1, 90.5, 181.8 , 0 );
setMoveKey( spep_2 - n + 221, 1, 90.5, 181.8 , 0 );
setMoveKey( spep_2 - n + 222, 1, 95.6, 193.4 , 0 );
setMoveKey( spep_2 - n + 223, 1, 95.6, 193.4 , 0 );
setMoveKey( spep_2 - n + 224, 1, 85.7, 194.8 , 0 );
setMoveKey( spep_2 - n + 225, 1, 85.7, 194.8 , 0 );
setMoveKey( spep_2 - n + 226, 1, 95.7, 205.9 , 0 );
setMoveKey( spep_2 - n + 227, 1, 95.7, 205.9 , 0 );
setMoveKey( spep_2 - n + 228, 1, 90.7, 206.7 , 0 );
setMoveKey( spep_2 - n + 229, 1, 90.7, 206.7 , 0 );
setMoveKey( spep_2 - n + 230, 1, 95.6, 217.3 , 0 );
setMoveKey( spep_2 - n + 231, 1, 95.6, 217.3 , 0 );
setMoveKey( spep_2 - n + 232, 1, 90.4, 222.6 , 0 );
setMoveKey( spep_2 - n + 233, 1, 90.4, 222.6 , 0 );
setMoveKey( spep_2 - n + 234, 1, 95.2, 227.6 , 0 );
--
setMoveKey( spep_2 - n + 384, 1, -31.1, 39.2 , 0 );
setMoveKey( spep_2 - n + 385, 1, -31.1, 39.2 , 0 );
setMoveKey( spep_2 - n + 386, 1, -22.9, 43.9 , 0 );
setMoveKey( spep_2 - n + 387, 1, -22.9, 43.9 , 0 );
setMoveKey( spep_2 - n + 388, 1, -15.5, 48.2 , 0 );
setMoveKey( spep_2 - n + 389, 1, -15.5, 48.2 , 0 );
setMoveKey( spep_2 - n + 390, 1, -9.1, 51.9 , 0 );
setMoveKey( spep_2 - n + 391, 1, -9.1, 51.9 , 0 );
setMoveKey( spep_2 - n + 392, 1, -3.5, 55.1 , 0 );
setMoveKey( spep_2 - n + 393, 1, -3.5, 55.1 , 0 );
setMoveKey( spep_2 - n + 394, 1, 1.2, 57.7 , 0 );
setMoveKey( spep_2 - n + 395, 1, 1.2, 57.7 , 0 );
setMoveKey( spep_2 - n + 396, 1, 36.9, 69.2 , 0 );
setMoveKey( spep_2 - n + 397, 1, 36.9, 69.2 , 0 );
setMoveKey( spep_2 - n + 398, 1, 52, 73.5 , 0 );
setMoveKey( spep_2 - n + 399, 1, 52, 73.5 , 0 );
setMoveKey( spep_2 - n + 400, 1, 60.2, 99.1 , 0 );
setMoveKey( spep_2 - n + 401, 1, 60.2, 99.1 , 0 );
setMoveKey( spep_2 - n + 402, 1, 80.1, 102.8 , 0 );
setMoveKey( spep_2 - n + 403, 1, 80.1, 102.8 , 0 );
setMoveKey( spep_2 - n + 404, 1, 97.7, 109.9 , 0 );
setMoveKey( spep_2 - n + 405, 1, 97.7, 109.9 , 0 );
setMoveKey( spep_2 - n + 406, 1, 112.7, 118.8 , 0 );
setMoveKey( spep_2 - n + 407, 1, 112.7, 118.8 , 0 );
setMoveKey( spep_2 - n + 408, 1, 125.4, 128.6 , 0 );
setMoveKey( spep_2 - n + 409, 1, 125.4, 128.6 , 0 );
setMoveKey( spep_2 - n + 410, 1, 136.1, 138.8 , 0 );
setMoveKey( spep_2 - n + 411, 1, 136.1, 138.8 , 0 );
setMoveKey( spep_2 - n + 412, 1, 144.9, 148.7 , 0 );
setMoveKey( spep_2 - n + 413, 1, 144.9, 148.7 , 0 );
setMoveKey( spep_2 - n + 414, 1, 151.8, 158.3 , 0 );
setMoveKey( spep_2 - n + 415, 1, 151.8, 158.3 , 0 );
setMoveKey( spep_2 - n + 416, 1, 153.7, 161.3 , 0 );
setMoveKey( spep_2 - n + 417, 1, 153.7, 161.3 , 0 );
setMoveKey( spep_2 - n + 418, 1, 155.5, 164.4 , 0 );
setMoveKey( spep_2 - n + 419, 1, 155.5, 164.4 , 0 );
setMoveKey( spep_2 - n + 420, 1, 157.2, 167.4 , 0 );
setMoveKey( spep_2 - n + 421, 1, 157.2, 167.4 , 0 );
setMoveKey( spep_2 - n + 422, 1, 158.7, 170.7 , 0 );
setMoveKey( spep_2 - n + 423, 1, 158.7, 170.7 , 0 );
setMoveKey( spep_2 - n + 424, 1, 160.2, 173.8 , 0 );
setMoveKey( spep_2 - n + 425, 1, 160.2, 173.8 , 0 );
setMoveKey( spep_2 - n + 426, 1, 161.6, 177.1 , 0 );
setMoveKey( spep_2 - n + 427, 1, 161.6, 177.1 , 0 );
setMoveKey( spep_2 - n + 428, 1, 162.6, 180.3 , 0 );
setMoveKey( spep_2 - n + 429, 1, 162.6, 180.3 , 0 );
setMoveKey( spep_2 - n + 430, 1, 163.5, 183.7 , 0 );
setMoveKey( spep_2 - n + 431, 1, 163.5, 183.7 , 0 );
setMoveKey( spep_2 - n + 432, 1, 164, 187.2 , 0 );
setMoveKey( spep_2 - n + 433, 1, 164, 187.2 , 0 );
setMoveKey( spep_2 - n + 434, 1, 164.3, 190.7 , 0 );
setMoveKey( spep_2 - n + 436, 1, 164.3, 190.7 , 0 );

setScaleKey( spep_2 - n + 166, 1, 1.4, 1.4 );
setScaleKey( spep_2 - n + 167, 1, 1.4, 1.4 );
setScaleKey( spep_2 - n + 168, 1, 1.43, 1.43 );
setScaleKey( spep_2 - n + 169, 1, 1.43, 1.43 );
setScaleKey( spep_2 - n + 170, 1, 1.48, 1.48 );
setScaleKey( spep_2 - n + 171, 1, 1.48, 1.48);
setScaleKey( spep_2 - n + 172, 1, 1.53, 1.53);
setScaleKey( spep_2 - n + 173, 1, 1.53, 1.53);
setScaleKey( spep_2 - n + 174, 1, 1.58, 1.58 );
setScaleKey( spep_2 - n + 175, 1, 1.58, 1.58 );
setScaleKey( spep_2 - n + 176, 1, 1.63, 1.63 );
setScaleKey( spep_2 - n + 177, 1, 1.63, 1.63 );
setScaleKey( spep_2 - n + 178, 1, 1.68, 1.68 );
setScaleKey( spep_2 - n + 179, 1, 1.68, 1.68 );
setScaleKey( spep_2 - n + 180, 1, 1.58, 1.58 ); --
setScaleKey( spep_2 - n + 181, 1, 1.58, 1.58 );
setScaleKey( spep_2 - n + 182, 1, 1.63, 1.63 );
setScaleKey( spep_2 - n + 183, 1, 1.63, 1.63 );
setScaleKey( spep_2 - n + 184, 1, 1.69, 1.69 );
setScaleKey( spep_2 - n + 185, 1, 1.69, 1.69 );
setScaleKey( spep_2 - n + 186, 1, 1.76, 1.76 );
setScaleKey( spep_2 - n + 187, 1, 1.76, 1.76 );
setScaleKey( spep_2 - n + 188, 1, 1.83, 1.83 );
setScaleKey( spep_2 - n + 189, 1, 1.83, 1.83 );
setScaleKey( spep_2 - n + 190, 1, 1.9, 1.9 );
setScaleKey( spep_2 - n + 191, 1, 1.9, 1.9 );
setScaleKey( spep_2 - n + 192, 1, 1.99, 1.99 );
setScaleKey( spep_2 - n + 193, 1, 1.99, 1.99 );
setScaleKey( spep_2 - n + 194, 1, 2.08, 2.08 );
setScaleKey( spep_2 - n + 195, 1, 2.08, 2.08 );
setScaleKey( spep_2 - n + 196, 1, 1.96, 1.96 );
setScaleKey( spep_2 - n + 197, 1, 1.96, 1.96 );
setScaleKey( spep_2 - n + 198, 1, 1.98, 1.98 );
setScaleKey( spep_2 - n + 199, 1, 1.98, 1.98 );
setScaleKey( spep_2 - n + 200, 1, 2, 2 );
setScaleKey( spep_2 - n + 201, 1, 2, 2 );
setScaleKey( spep_2 - n + 202, 1, 2.02, 2.02 );
setScaleKey( spep_2 - n + 203, 1, 2.02, 2.02 );
setScaleKey( spep_2 - n + 204, 1, 2.04, 2.04 );
setScaleKey( spep_2 - n + 205, 1, 2.04, 2.04 );
setScaleKey( spep_2 - n + 206, 1, 2.06, 2.06 );
setScaleKey( spep_2 - n + 207, 1, 2.06, 2.06 );
setScaleKey( spep_2 - n + 208, 1, 2.08, 2.08 );
setScaleKey( spep_2 - n + 209, 1, 2.08, 2.08 );
setScaleKey( spep_2 - n + 210, 1, 2.09, 2.09 );
setScaleKey( spep_2 - n + 211, 1, 2.09, 2.09 );
setScaleKey( spep_2 - n + 212, 1, 2.11, 2.11 );
setScaleKey( spep_2 - n + 213, 1, 2.11, 2.11 );
setScaleKey( spep_2 - n + 214, 1, 2.13, 2.13 );
setScaleKey( spep_2 - n + 215, 1, 2.13, 2.13 );
setScaleKey( spep_2 - n + 216, 1, 2.14, 2.14 );
setScaleKey( spep_2 - n + 217, 1, 2.14, 2.14 );
setScaleKey( spep_2 - n + 218, 1, 2.15, 2.15 );
setScaleKey( spep_2 - n + 219, 1, 2.15, 2.15 );
setScaleKey( spep_2 - n + 220, 1, 2.17, 2.17 );
setScaleKey( spep_2 - n + 221, 1, 2.17, 2.17 );
setScaleKey( spep_2 - n + 222, 1, 2.18, 2.18 );
setScaleKey( spep_2 - n + 223, 1, 2.18, 2.18 );
setScaleKey( spep_2 - n + 224, 1, 2.19, 2.19 );
setScaleKey( spep_2 - n + 225, 1, 2.19, 2.19 );
setScaleKey( spep_2 - n + 226, 1, 2.2, 2.2 );
setScaleKey( spep_2 - n + 227, 1, 2.2, 2.2 );
setScaleKey( spep_2 - n + 228, 1, 2.21, 2.21 );
setScaleKey( spep_2 - n + 229, 1, 2.21, 2.21 );
setScaleKey( spep_2 - n + 230, 1, 2.22, 2.22 );
setScaleKey( spep_2 - n + 231, 1, 2.22, 2.22 );
setScaleKey( spep_2 - n + 232, 1, 2.23, 2.23 );
setScaleKey( spep_2 - n + 234, 1, 2.23, 2.23 );
--
setScaleKey( spep_2 - n + 384, 1, 1.3, 1.3 );
setScaleKey( spep_2 - n + 385, 1, 1.3, 1.3 );
setScaleKey( spep_2 - n + 386, 1, 1.26, 1.26 );
setScaleKey( spep_2 - n + 387, 1, 1.26, 1.26 );
setScaleKey( spep_2 - n + 388, 1, 1.22, 1.22 );
setScaleKey( spep_2 - n + 389, 1, 1.22, 1.22 );
setScaleKey( spep_2 - n + 390, 1, 1.19, 1.19 );
setScaleKey( spep_2 - n + 391, 1, 1.19, 1.19 );
setScaleKey( spep_2 - n + 392, 1, 1.16, 1.16 );
setScaleKey( spep_2 - n + 393, 1, 1.16, 1.16 );
setScaleKey( spep_2 - n + 394, 1, 1.13, 1.13 );
setScaleKey( spep_2 - n + 395, 1, 1.13, 1.13 );
setScaleKey( spep_2 - n + 396, 1, 1.15, 1.15 );
setScaleKey( spep_2 - n + 397, 1, 1.15, 1.15 );
setScaleKey( spep_2 - n + 398, 1, 1.12, 1.12 );
setScaleKey( spep_2 - n + 399, 1, 1.12, 1.12 );
setScaleKey( spep_2 - n + 400, 1, 1.09, 1.09 );
setScaleKey( spep_2 - n + 401, 1, 1.09, 1.09 );
setScaleKey( spep_2 - n + 402, 1, 0.95, 0.95 );
setScaleKey( spep_2 - n + 403, 1, 0.95, 0.95 );
setScaleKey( spep_2 - n + 404, 1, 0.81, 0.81 );
setScaleKey( spep_2 - n + 405, 1, 0.81, 0.81 );
setScaleKey( spep_2 - n + 406, 1, 0.69, 0.69 );
setScaleKey( spep_2 - n + 407, 1, 0.69, 0.69 );
setScaleKey( spep_2 - n + 408, 1, 0.57, 0.57 );
setScaleKey( spep_2 - n + 409, 1, 0.57, 0.57 );
setScaleKey( spep_2 - n + 410, 1, 0.47, 0.47 );
setScaleKey( spep_2 - n + 411, 1, 0.47, 0.47 );
setScaleKey( spep_2 - n + 412, 1, 0.37, 0.37 );
setScaleKey( spep_2 - n + 413, 1, 0.37, 0.37 );
setScaleKey( spep_2 - n + 414, 1, 0.29, 0.29 );
setScaleKey( spep_2 - n + 415, 1, 0.29, 0.29 );
setScaleKey( spep_2 - n + 416, 1, 0.26, 0.26 );
setScaleKey( spep_2 - n + 417, 1, 0.26, 0.26 );
setScaleKey( spep_2 - n + 418, 1, 0.24, 0.24 );
setScaleKey( spep_2 - n + 419, 1, 0.24, 0.24 );
setScaleKey( spep_2 - n + 420, 1, 0.22, 0.22 );
setScaleKey( spep_2 - n + 421, 1, 0.22, 0.22 );
setScaleKey( spep_2 - n + 422, 1, 0.19, 0.19 );
setScaleKey( spep_2 - n + 423, 1, 0.19, 0.19 );
setScaleKey( spep_2 - n + 424, 1, 0.17, 0.17 );
setScaleKey( spep_2 - n + 425, 1, 0.17, 0.17 );
setScaleKey( spep_2 - n + 426, 1, 0.14, 0.14 );
setScaleKey( spep_2 - n + 427, 1, 0.14, 0.14 );
setScaleKey( spep_2 - n + 428, 1, 0.12, 0.12 );
setScaleKey( spep_2 - n + 429, 1, 0.12, 0.12 );
setScaleKey( spep_2 - n + 430, 1, 0.09, 0.09 );
setScaleKey( spep_2 - n + 431, 1, 0.09, 0.09 );
setScaleKey( spep_2 - n + 432, 1, 0.07, 0.07 );
setScaleKey( spep_2 - n + 433, 1, 0.07, 0.07 );
setScaleKey( spep_2 - n + 434, 1, 0.04, 0.04 );
setScaleKey( spep_2 - n + 436, 1, 0.04, 0.04 );

setRotateKey( spep_2 - n + 166, 1, -23.2 );
setRotateKey( spep_2 - n + 179, 1, -23.2 );
setRotateKey( spep_2 - n + 180, 1, -14 );
setRotateKey( spep_2 - n + 195, 1, -14 );
setRotateKey( spep_2 - n + 195, 1, -14 );
setRotateKey( spep_2 - n + 196, 1, -42.8 );
setRotateKey( spep_2 - n + 197, 1, -42.8 );
setRotateKey( spep_2 - n + 198, 1, -42.1 );
setRotateKey( spep_2 - n + 199, 1, -42.1 );
setRotateKey( spep_2 - n + 200, 1, -41.6 );
setRotateKey( spep_2 - n + 201, 1, -41.6 );
setRotateKey( spep_2 - n + 202, 1, -41 );
setRotateKey( spep_2 - n + 203, 1, -41 );
setRotateKey( spep_2 - n + 204, 1, -40.4 );
setRotateKey( spep_2 - n + 205, 1, -40.4 );
setRotateKey( spep_2 - n + 206, 1, -39.9 );
setRotateKey( spep_2 - n + 207, 1, -39.9 );
setRotateKey( spep_2 - n + 208, 1, -39.4 );
setRotateKey( spep_2 - n + 209, 1, -39.4 );
setRotateKey( spep_2 - n + 210, 1, -38.9 );
setRotateKey( spep_2 - n + 211, 1, -38.9 );
setRotateKey( spep_2 - n + 212, 1, -38.5 );
setRotateKey( spep_2 - n + 213, 1, -38.5 );
setRotateKey( spep_2 - n + 214, 1, -38 );
setRotateKey( spep_2 - n + 215, 1, -38 );
setRotateKey( spep_2 - n + 216, 1, -37.6 );
setRotateKey( spep_2 - n + 217, 1, -37.6 );
setRotateKey( spep_2 - n + 218, 1, -37.2 );
setRotateKey( spep_2 - n + 219, 1, -37.2 );
setRotateKey( spep_2 - n + 220, 1, -36.9 );
setRotateKey( spep_2 - n + 221, 1, -36.9 );
setRotateKey( spep_2 - n + 222, 1, -36.5 );
setRotateKey( spep_2 - n + 223, 1, -36.5 );
setRotateKey( spep_2 - n + 224, 1, -36.2 );
setRotateKey( spep_2 - n + 225, 1, -36.2 );
setRotateKey( spep_2 - n + 226, 1, -35.9 );
setRotateKey( spep_2 - n + 227, 1, -35.9 );
setRotateKey( spep_2 - n + 228, 1, -35.6 );
setRotateKey( spep_2 - n + 229, 1, -35.6 );
setRotateKey( spep_2 - n + 230, 1, -35.3 );
setRotateKey( spep_2 - n + 231, 1, -35.3 );
setRotateKey( spep_2 - n + 232, 1, -35.1 );
setRotateKey( spep_2 - n + 233, 1, -35.1 );
setRotateKey( spep_2 - n + 234, 1, -34.9 );
--
setRotateKey( spep_2 - n + 384, 1, 0 );
setRotateKey( spep_2 - n + 395, 1, 0 );
setRotateKey( spep_2 - n + 396, 1, 8.7 );
setRotateKey( spep_2 - n + 397, 1, 8.7 );
setRotateKey( spep_2 - n + 398, 1, -18.9 );
setRotateKey( spep_2 - n + 399, 1, -18.9 );
setRotateKey( spep_2 - n + 400, 1, -14 );
setRotateKey( spep_2 - n + 401, 1, -14 );
setRotateKey( spep_2 - n + 402, 1, -16.7 );
setRotateKey( spep_2 - n + 403, 1, -16.7 );
setRotateKey( spep_2 - n + 404, 1, -19.2 );
setRotateKey( spep_2 - n + 405, 1, -19.2 );
setRotateKey( spep_2 - n + 406, 1, -21.5 );
setRotateKey( spep_2 - n + 407, 1, -21.5 );
setRotateKey( spep_2 - n + 408, 1, -23.6 );
setRotateKey( spep_2 - n + 409, 1, -23.6 );
setRotateKey( spep_2 - n + 410, 1, -25.6 );
setRotateKey( spep_2 - n + 411, 1, -25.6 );
setRotateKey( spep_2 - n + 412, 1, -27.4 );
setRotateKey( spep_2 - n + 413, 1, -27.4 );
setRotateKey( spep_2 - n + 414, 1, -29 );
setRotateKey( spep_2 - n + 415, 1, -29 );
setRotateKey( spep_2 - n + 416, 1, -29.4 );
setRotateKey( spep_2 - n + 417, 1, -29.4 );
setRotateKey( spep_2 - n + 418, 1, -29.9 );
setRotateKey( spep_2 - n + 419, 1, -29.9 );
setRotateKey( spep_2 - n + 420, 1, -30.3 );
setRotateKey( spep_2 - n + 421, 1, -30.3 );
setRotateKey( spep_2 - n + 422, 1, -30.8 );
setRotateKey( spep_2 - n + 423, 1, -30.8 );
setRotateKey( spep_2 - n + 424, 1, -31.3 );
setRotateKey( spep_2 - n + 425, 1, -31.3 );
setRotateKey( spep_2 - n + 426, 1, -31.7 );
setRotateKey( spep_2 - n + 427, 1, -31.7 );
setRotateKey( spep_2 - n + 428, 1, -32.2 );
setRotateKey( spep_2 - n + 429, 1, -32.2 );
setRotateKey( spep_2 - n + 430, 1, -32.6 );
setRotateKey( spep_2 - n + 431, 1, -32.6 );
setRotateKey( spep_2 - n + 432, 1, -33.1 );
setRotateKey( spep_2 - n + 433, 1, -33.1 );
setRotateKey( spep_2 - n + 434, 1, -33.6 );
setRotateKey( spep_2 - n + 436, 1, -33.6 );

-- ** 音 ** --
--気溜める
SE009 = playSeVer2( spep_2 + 36, 1283, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE009, 81 );
setPitch( spep_2 + 36, SE009, 700 );
setTimeStretch( SE009, 1.47, 30, 4 );
SE010 = playSeVer2( spep_2 + 44, 17, "",spep_2 + 122, 0, 20, -1);
SE011 = playSeVer2( spep_2 + 56, 1296, "",spep_2 + 124, 12, 40, -1);
setSeVolumeByWorkId( spep_2 + 56, SE011, 132 );

--気弾発射
SE012 = playSeVer2( spep_2 + 114, 1122, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 114, 1109, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 114, 1145, "", 0, 0, 0, -1);

--気弾飛んでいく
SE015 = playSeVer2( spep_2 + 160, 1121, "",spep_2 + 252, 0, 12, -1);
setPitch( spep_2 + 160, SE015, 300 );
setTimeStretch( SE015, 1.2, 30, 4 );
SE016 = playSeVer2( spep_2 + 192, 1116, "",spep_2 + 232, 0, 20, -1);
SE017 = playSeVer2( spep_2 + 198, 1277, "", 0, 0, 0, -1);

--気弾Uターン
SE018 = playSeVer2( spep_2 + 242, 1027, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 242, 1272, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 242, SE019, 141 );
setPitch( spep_2 + 242, SE019, -400 );
setTimeStretch( SE019, 0.73, 30, 4 );
SE020 = playSeVer2( spep_2 + 250, 1222, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE020, 79 );
SE021 = playSeVer2( spep_2 + 264, 1374, "", 0, 52, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 264, SE021, 78 );
setStartTimeMs( SE021,  233 );
setPitch( spep_2 + 264, SE021, 200 );
setTimeStretch( SE021, 1.13, 30, 4 );
SE022 = playSeVer2( spep_2 + 256, 44, "", 0, 0, 0, -1);

--気弾飛んでいく
SE023 = playSeVer2( spep_2 + 338, 1116, "",spep_2 + 376, 0, 20, -1);
SE024 = playSeVer2( spep_2 + 338, 1004, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 338, 1117, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 338, 1177, "",spep_2 + 478, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 338, SE026, 76 );

--気弾飛んでいく２
SE027 = playSeVer2( spep_2 + 394, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 394, SE027, 178 );

--爆発前兆
SE028 = playSeVer2( spep_2 + 432, 1157, "",spep_2 + 496, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 432, SE028, 146 );

--爆発
SE029 = playSeVer2( spep_2 + 462, 1069, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 478, 1024, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 478, 1159, "", 0, 0, 0, -1);

--風圧
SE032 = playSeVer2( spep_2 + 474, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 474, SE032, 77 );

-- ** おわり ** --
dealDamage( spep_2 + 440 );
endPhase( spep_2 + 566 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭 ef_001 (88F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + 88, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, -1.0, 1.0 );
setEffScaleKey( spep_0 + 88, entry_SP_001, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + 88, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + 88, entry_SP_001, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 88 + 2, 0, 0, 0, 0, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -25, 515.5, 3000 );  -- ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -25, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -25, 515.5 , 0 );
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
--凄む
SE001 = playSeVer2( spep_0 + 0, 1399, "",spep_0 + 88 + 8, 0, 8, -1);
SE002 = playSeVer2( spep_0 + 0, 1397, "",spep_0 + 88 + 8, 0, 8, -1);
SE003 = playSeVer2( spep_0 + 0, 1229, "",spep_0 + 88 + 8, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 162 );

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 88;

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );  -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );  -- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  -- 集中線
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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- 白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射～ラスト：手前 ef_002 (568F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + 566, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_2 + 566, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + 566, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + 566, entry_SP_002, 255 );
entry_SP_003 = entryEffect( spep_2 + 0, SP_003r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_003, 0, 0 , 0 );
setEffMoveKey( spep_2 + 566, entry_SP_003, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_003, 1.0, 1.0 );
setEffScaleKey( spep_2 + 566, entry_SP_003, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_003, 0 );
setEffRotateKey( spep_2 + 566, entry_SP_003, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_003, 255 );
setEffAlphaKey( spep_2 + 566, entry_SP_003, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 568 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--凄む2
SE006 = playSeVer2( spep_1 + 88, 1399, "",spep_2 + 46, 0, 10, -1);
SE007 = playSeVer2( spep_1 + 88, 1397, "",spep_2 + 46, 0, 10, -1);
SE008 = playSeVer2( spep_1 + 88, 1229, "",spep_2 + 46, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 88, SE008, 162 );

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 58; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    
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

n = 1;

-- ** 敵キャラクター ** --
setDisp( spep_2 - n + 166, 1, 1 );
setDisp( spep_2 - n + 236, 1, 0 );
setDisp( spep_2 - n + 384, 1, 1 );
setDisp( spep_2 - n + 436, 1, 0 );

changeAnime( spep_2 - n + 166, 1, 102 );
changeAnime( spep_2 - n + 180, 1, 118 );
changeAnime( spep_2 - n + 196, 1, 104 );
changeAnime( spep_2 - n + 384, 1, 117 );
changeAnime( spep_2 - n + 396, 1, 118 );
changeAnime( spep_2 - n + 398, 1, 11 );
changeAnime( spep_2 - n + 400, 1, 3 );

setMoveKey( spep_2 - n + 166, 1, 28.6, -136.1 , 0 );
setMoveKey( spep_2 - n + 167, 1, 28.6, -136.1 , 0 );
setMoveKey( spep_2 - n + 168, 1, 33.6, -130.6 , 0 );
setMoveKey( spep_2 - n + 169, 1, 33.6, -130.6 , 0 );
setMoveKey( spep_2 - n + 170, 1, 38.5, -125.1 , 0 );
setMoveKey( spep_2 - n + 171, 1, 38.5, -125.1 , 0 );
setMoveKey( spep_2 - n + 172, 1, 43.5, -119.6 , 0 );
setMoveKey( spep_2 - n + 173, 1, 43.5, -119.6 , 0 );
setMoveKey( spep_2 - n + 174, 1, 48.5, -114.1 , 0 );
setMoveKey( spep_2 - n + 175, 1, 48.5, -114.1 , 0 );
setMoveKey( spep_2 - n + 176, 1, 53.4, -108.6 , 0 );
setMoveKey( spep_2 - n + 177, 1, 53.4, -108.6 , 0 );
setMoveKey( spep_2 - n + 178, 1, 58.4, -103.1 , 0 );
setMoveKey( spep_2 - n + 179, 1, 58.4, -103.1 , 0 );
setMoveKey( spep_2 - n + 180, 1, 81.3, -58.1 , 0 ); 
setMoveKey( spep_2 - n + 181, 1, 81.3, -58.1 , 0 );
setMoveKey( spep_2 - n + 182, 1, 84.1, -47.9 , 0 );
setMoveKey( spep_2 - n + 183, 1, 84.1, -47.9 , 0 );
setMoveKey( spep_2 - n + 184, 1, 87.5, -36.8 , 0 );
setMoveKey( spep_2 - n + 185, 1, 87.5, -36.8 , 0 );
setMoveKey( spep_2 - n + 186, 1, 91.6, -24.5 , 0 );
setMoveKey( spep_2 - n + 187, 1, 91.6, -24.5 , 0 );
setMoveKey( spep_2 - n + 188, 1, 96.4, -11.2 , 0 );
setMoveKey( spep_2 - n + 189, 1, 96.4, -11.2 , 0 );
setMoveKey( spep_2 - n + 190, 1, 101.8, 3.1 , 0 );
setMoveKey( spep_2 - n + 191, 1, 101.8, 3.1 , 0 );
setMoveKey( spep_2 - n + 192, 1, 107.8, 18.5 , 0 );
setMoveKey( spep_2 - n + 193, 1, 107.8, 18.5 , 0 );
setMoveKey( spep_2 - n + 194, 1, 114.5, 35 , 0 );
setMoveKey( spep_2 - n + 195, 1, 114.5, 35 , 0 );
setMoveKey( spep_2 - n + 196, 1, 85.1, 75.9 , 0 );
setMoveKey( spep_2 - n + 197, 1, 85.1, 75.9 , 0 );
setMoveKey( spep_2 - n + 198, 1, 90.9, 95.8 , 0 );
setMoveKey( spep_2 - n + 199, 1, 90.9, 95.8 , 0 );
setMoveKey( spep_2 - n + 200, 1, 81.6, 120.4 , 0 );
setMoveKey( spep_2 - n + 201, 1, 81.6, 120.4 , 0 );
setMoveKey( spep_2 - n + 202, 1, 92.2, 114.7 , 0 );
setMoveKey( spep_2 - n + 203, 1, 92.2, 114.7 , 0 );
setMoveKey( spep_2 - n + 204, 1, 82.8, 118.8 , 0 );
setMoveKey( spep_2 - n + 205, 1, 82.8, 118.8 , 0 );
setMoveKey( spep_2 - n + 206, 1, 93.3, 132.6 , 0 );
setMoveKey( spep_2 - n + 207, 1, 93.3, 132.6 , 0 );
setMoveKey( spep_2 - n + 208, 1, 88.8, 131.2 , 0 );
setMoveKey( spep_2 - n + 209, 1, 88.8, 131.2 , 0 );
setMoveKey( spep_2 - n + 210, 1, 94.2, 149.5 , 0 );
setMoveKey( spep_2 - n + 211, 1, 94.2, 149.5 , 0 );
setMoveKey( spep_2 - n + 212, 1, 79.5, 152.5 , 0 );
setMoveKey( spep_2 - n + 213, 1, 79.5, 152.5 , 0 );
setMoveKey( spep_2 - n + 214, 1, 94.9, 165.2 , 0 );
setMoveKey( spep_2 - n + 215, 1, 94.9, 165.2 , 0 );
setMoveKey( spep_2 - n + 216, 1, 85.1, 177.6 , 0 );
setMoveKey( spep_2 - n + 217, 1, 85.1, 177.6 , 0 );
setMoveKey( spep_2 - n + 218, 1, 95.4, 179.8 , 0 );
setMoveKey( spep_2 - n + 219, 1, 95.4, 179.8 , 0 );
setMoveKey( spep_2 - n + 220, 1, 90.5, 181.8 , 0 );
setMoveKey( spep_2 - n + 221, 1, 90.5, 181.8 , 0 );
setMoveKey( spep_2 - n + 222, 1, 95.6, 193.4 , 0 );
setMoveKey( spep_2 - n + 223, 1, 95.6, 193.4 , 0 );
setMoveKey( spep_2 - n + 224, 1, 85.7, 194.8 , 0 );
setMoveKey( spep_2 - n + 225, 1, 85.7, 194.8 , 0 );
setMoveKey( spep_2 - n + 226, 1, 95.7, 205.9 , 0 );
setMoveKey( spep_2 - n + 227, 1, 95.7, 205.9 , 0 );
setMoveKey( spep_2 - n + 228, 1, 90.7, 206.7 , 0 );
setMoveKey( spep_2 - n + 229, 1, 90.7, 206.7 , 0 );
setMoveKey( spep_2 - n + 230, 1, 95.6, 217.3 , 0 );
setMoveKey( spep_2 - n + 231, 1, 95.6, 217.3 , 0 );
setMoveKey( spep_2 - n + 232, 1, 90.4, 222.6 , 0 );
setMoveKey( spep_2 - n + 233, 1, 90.4, 222.6 , 0 );
setMoveKey( spep_2 - n + 234, 1, 95.2, 227.6 , 0 );
--
setMoveKey( spep_2 - n + 384, 1, -31.1, 39.2 , 0 );
setMoveKey( spep_2 - n + 385, 1, -31.1, 39.2 , 0 );
setMoveKey( spep_2 - n + 386, 1, -22.9, 43.9 , 0 );
setMoveKey( spep_2 - n + 387, 1, -22.9, 43.9 , 0 );
setMoveKey( spep_2 - n + 388, 1, -15.5, 48.2 , 0 );
setMoveKey( spep_2 - n + 389, 1, -15.5, 48.2 , 0 );
setMoveKey( spep_2 - n + 390, 1, -9.1, 51.9 , 0 );
setMoveKey( spep_2 - n + 391, 1, -9.1, 51.9 , 0 );
setMoveKey( spep_2 - n + 392, 1, -3.5, 55.1 , 0 );
setMoveKey( spep_2 - n + 393, 1, -3.5, 55.1 , 0 );
setMoveKey( spep_2 - n + 394, 1, 1.2, 57.7 , 0 );
setMoveKey( spep_2 - n + 395, 1, 1.2, 57.7 , 0 );
setMoveKey( spep_2 - n + 396, 1, 36.9, 69.2 , 0 );
setMoveKey( spep_2 - n + 397, 1, 36.9, 69.2 , 0 );
setMoveKey( spep_2 - n + 398, 1, 52, 73.5 , 0 );
setMoveKey( spep_2 - n + 399, 1, 52, 73.5 , 0 );
setMoveKey( spep_2 - n + 400, 1, 60.2, 99.1 , 0 );
setMoveKey( spep_2 - n + 401, 1, 60.2, 99.1 , 0 );
setMoveKey( spep_2 - n + 402, 1, 80.1, 102.8 , 0 );
setMoveKey( spep_2 - n + 403, 1, 80.1, 102.8 , 0 );
setMoveKey( spep_2 - n + 404, 1, 97.7, 109.9 , 0 );
setMoveKey( spep_2 - n + 405, 1, 97.7, 109.9 , 0 );
setMoveKey( spep_2 - n + 406, 1, 112.7, 118.8 , 0 );
setMoveKey( spep_2 - n + 407, 1, 112.7, 118.8 , 0 );
setMoveKey( spep_2 - n + 408, 1, 125.4, 128.6 , 0 );
setMoveKey( spep_2 - n + 409, 1, 125.4, 128.6 , 0 );
setMoveKey( spep_2 - n + 410, 1, 136.1, 138.8 , 0 );
setMoveKey( spep_2 - n + 411, 1, 136.1, 138.8 , 0 );
setMoveKey( spep_2 - n + 412, 1, 144.9, 148.7 , 0 );
setMoveKey( spep_2 - n + 413, 1, 144.9, 148.7 , 0 );
setMoveKey( spep_2 - n + 414, 1, 151.8, 158.3 , 0 );
setMoveKey( spep_2 - n + 415, 1, 151.8, 158.3 , 0 );
setMoveKey( spep_2 - n + 416, 1, 153.7, 161.3 , 0 );
setMoveKey( spep_2 - n + 417, 1, 153.7, 161.3 , 0 );
setMoveKey( spep_2 - n + 418, 1, 155.5, 164.4 , 0 );
setMoveKey( spep_2 - n + 419, 1, 155.5, 164.4 , 0 );
setMoveKey( spep_2 - n + 420, 1, 157.2, 167.4 , 0 );
setMoveKey( spep_2 - n + 421, 1, 157.2, 167.4 , 0 );
setMoveKey( spep_2 - n + 422, 1, 158.7, 170.7 , 0 );
setMoveKey( spep_2 - n + 423, 1, 158.7, 170.7 , 0 );
setMoveKey( spep_2 - n + 424, 1, 160.2, 173.8 , 0 );
setMoveKey( spep_2 - n + 425, 1, 160.2, 173.8 , 0 );
setMoveKey( spep_2 - n + 426, 1, 161.6, 177.1 , 0 );
setMoveKey( spep_2 - n + 427, 1, 161.6, 177.1 , 0 );
setMoveKey( spep_2 - n + 428, 1, 162.6, 180.3 , 0 );
setMoveKey( spep_2 - n + 429, 1, 162.6, 180.3 , 0 );
setMoveKey( spep_2 - n + 430, 1, 163.5, 183.7 , 0 );
setMoveKey( spep_2 - n + 431, 1, 163.5, 183.7 , 0 );
setMoveKey( spep_2 - n + 432, 1, 164, 187.2 , 0 );
setMoveKey( spep_2 - n + 433, 1, 164, 187.2 , 0 );
setMoveKey( spep_2 - n + 434, 1, 164.3, 190.7 , 0 );
setMoveKey( spep_2 - n + 436, 1, 164.3, 190.7 , 0 );

setScaleKey( spep_2 - n + 166, 1, 1.4, 1.4 );
setScaleKey( spep_2 - n + 167, 1, 1.4, 1.4 );
setScaleKey( spep_2 - n + 168, 1, 1.43, 1.43 );
setScaleKey( spep_2 - n + 169, 1, 1.43, 1.43 );
setScaleKey( spep_2 - n + 170, 1, 1.48, 1.48 );
setScaleKey( spep_2 - n + 171, 1, 1.48, 1.48);
setScaleKey( spep_2 - n + 172, 1, 1.53, 1.53);
setScaleKey( spep_2 - n + 173, 1, 1.53, 1.53);
setScaleKey( spep_2 - n + 174, 1, 1.58, 1.58 );
setScaleKey( spep_2 - n + 175, 1, 1.58, 1.58 );
setScaleKey( spep_2 - n + 176, 1, 1.63, 1.63 );
setScaleKey( spep_2 - n + 177, 1, 1.63, 1.63 );
setScaleKey( spep_2 - n + 178, 1, 1.68, 1.68 );
setScaleKey( spep_2 - n + 179, 1, 1.68, 1.68 );
setScaleKey( spep_2 - n + 180, 1, 1.58, 1.58 ); --
setScaleKey( spep_2 - n + 181, 1, 1.58, 1.58 );
setScaleKey( spep_2 - n + 182, 1, 1.63, 1.63 );
setScaleKey( spep_2 - n + 183, 1, 1.63, 1.63 );
setScaleKey( spep_2 - n + 184, 1, 1.69, 1.69 );
setScaleKey( spep_2 - n + 185, 1, 1.69, 1.69 );
setScaleKey( spep_2 - n + 186, 1, 1.76, 1.76 );
setScaleKey( spep_2 - n + 187, 1, 1.76, 1.76 );
setScaleKey( spep_2 - n + 188, 1, 1.83, 1.83 );
setScaleKey( spep_2 - n + 189, 1, 1.83, 1.83 );
setScaleKey( spep_2 - n + 190, 1, 1.9, 1.9 );
setScaleKey( spep_2 - n + 191, 1, 1.9, 1.9 );
setScaleKey( spep_2 - n + 192, 1, 1.99, 1.99 );
setScaleKey( spep_2 - n + 193, 1, 1.99, 1.99 );
setScaleKey( spep_2 - n + 194, 1, 2.08, 2.08 );
setScaleKey( spep_2 - n + 195, 1, 2.08, 2.08 );
setScaleKey( spep_2 - n + 196, 1, 1.96, 1.96 );
setScaleKey( spep_2 - n + 197, 1, 1.96, 1.96 );
setScaleKey( spep_2 - n + 198, 1, 1.98, 1.98 );
setScaleKey( spep_2 - n + 199, 1, 1.98, 1.98 );
setScaleKey( spep_2 - n + 200, 1, 2, 2 );
setScaleKey( spep_2 - n + 201, 1, 2, 2 );
setScaleKey( spep_2 - n + 202, 1, 2.02, 2.02 );
setScaleKey( spep_2 - n + 203, 1, 2.02, 2.02 );
setScaleKey( spep_2 - n + 204, 1, 2.04, 2.04 );
setScaleKey( spep_2 - n + 205, 1, 2.04, 2.04 );
setScaleKey( spep_2 - n + 206, 1, 2.06, 2.06 );
setScaleKey( spep_2 - n + 207, 1, 2.06, 2.06 );
setScaleKey( spep_2 - n + 208, 1, 2.08, 2.08 );
setScaleKey( spep_2 - n + 209, 1, 2.08, 2.08 );
setScaleKey( spep_2 - n + 210, 1, 2.09, 2.09 );
setScaleKey( spep_2 - n + 211, 1, 2.09, 2.09 );
setScaleKey( spep_2 - n + 212, 1, 2.11, 2.11 );
setScaleKey( spep_2 - n + 213, 1, 2.11, 2.11 );
setScaleKey( spep_2 - n + 214, 1, 2.13, 2.13 );
setScaleKey( spep_2 - n + 215, 1, 2.13, 2.13 );
setScaleKey( spep_2 - n + 216, 1, 2.14, 2.14 );
setScaleKey( spep_2 - n + 217, 1, 2.14, 2.14 );
setScaleKey( spep_2 - n + 218, 1, 2.15, 2.15 );
setScaleKey( spep_2 - n + 219, 1, 2.15, 2.15 );
setScaleKey( spep_2 - n + 220, 1, 2.17, 2.17 );
setScaleKey( spep_2 - n + 221, 1, 2.17, 2.17 );
setScaleKey( spep_2 - n + 222, 1, 2.18, 2.18 );
setScaleKey( spep_2 - n + 223, 1, 2.18, 2.18 );
setScaleKey( spep_2 - n + 224, 1, 2.19, 2.19 );
setScaleKey( spep_2 - n + 225, 1, 2.19, 2.19 );
setScaleKey( spep_2 - n + 226, 1, 2.2, 2.2 );
setScaleKey( spep_2 - n + 227, 1, 2.2, 2.2 );
setScaleKey( spep_2 - n + 228, 1, 2.21, 2.21 );
setScaleKey( spep_2 - n + 229, 1, 2.21, 2.21 );
setScaleKey( spep_2 - n + 230, 1, 2.22, 2.22 );
setScaleKey( spep_2 - n + 231, 1, 2.22, 2.22 );
setScaleKey( spep_2 - n + 232, 1, 2.23, 2.23 );
setScaleKey( spep_2 - n + 234, 1, 2.23, 2.23 );
--
setScaleKey( spep_2 - n + 384, 1, 1.3, 1.3 );
setScaleKey( spep_2 - n + 385, 1, 1.3, 1.3 );
setScaleKey( spep_2 - n + 386, 1, 1.26, 1.26 );
setScaleKey( spep_2 - n + 387, 1, 1.26, 1.26 );
setScaleKey( spep_2 - n + 388, 1, 1.22, 1.22 );
setScaleKey( spep_2 - n + 389, 1, 1.22, 1.22 );
setScaleKey( spep_2 - n + 390, 1, 1.19, 1.19 );
setScaleKey( spep_2 - n + 391, 1, 1.19, 1.19 );
setScaleKey( spep_2 - n + 392, 1, 1.16, 1.16 );
setScaleKey( spep_2 - n + 393, 1, 1.16, 1.16 );
setScaleKey( spep_2 - n + 394, 1, 1.13, 1.13 );
setScaleKey( spep_2 - n + 395, 1, 1.13, 1.13 );
setScaleKey( spep_2 - n + 396, 1, 1.15, 1.15 );
setScaleKey( spep_2 - n + 397, 1, 1.15, 1.15 );
setScaleKey( spep_2 - n + 398, 1, 1.12, 1.12 );
setScaleKey( spep_2 - n + 399, 1, 1.12, 1.12 );
setScaleKey( spep_2 - n + 400, 1, 1.09, 1.09 );
setScaleKey( spep_2 - n + 401, 1, 1.09, 1.09 );
setScaleKey( spep_2 - n + 402, 1, 0.95, 0.95 );
setScaleKey( spep_2 - n + 403, 1, 0.95, 0.95 );
setScaleKey( spep_2 - n + 404, 1, 0.81, 0.81 );
setScaleKey( spep_2 - n + 405, 1, 0.81, 0.81 );
setScaleKey( spep_2 - n + 406, 1, 0.69, 0.69 );
setScaleKey( spep_2 - n + 407, 1, 0.69, 0.69 );
setScaleKey( spep_2 - n + 408, 1, 0.57, 0.57 );
setScaleKey( spep_2 - n + 409, 1, 0.57, 0.57 );
setScaleKey( spep_2 - n + 410, 1, 0.47, 0.47 );
setScaleKey( spep_2 - n + 411, 1, 0.47, 0.47 );
setScaleKey( spep_2 - n + 412, 1, 0.37, 0.37 );
setScaleKey( spep_2 - n + 413, 1, 0.37, 0.37 );
setScaleKey( spep_2 - n + 414, 1, 0.29, 0.29 );
setScaleKey( spep_2 - n + 415, 1, 0.29, 0.29 );
setScaleKey( spep_2 - n + 416, 1, 0.26, 0.26 );
setScaleKey( spep_2 - n + 417, 1, 0.26, 0.26 );
setScaleKey( spep_2 - n + 418, 1, 0.24, 0.24 );
setScaleKey( spep_2 - n + 419, 1, 0.24, 0.24 );
setScaleKey( spep_2 - n + 420, 1, 0.22, 0.22 );
setScaleKey( spep_2 - n + 421, 1, 0.22, 0.22 );
setScaleKey( spep_2 - n + 422, 1, 0.19, 0.19 );
setScaleKey( spep_2 - n + 423, 1, 0.19, 0.19 );
setScaleKey( spep_2 - n + 424, 1, 0.17, 0.17 );
setScaleKey( spep_2 - n + 425, 1, 0.17, 0.17 );
setScaleKey( spep_2 - n + 426, 1, 0.14, 0.14 );
setScaleKey( spep_2 - n + 427, 1, 0.14, 0.14 );
setScaleKey( spep_2 - n + 428, 1, 0.12, 0.12 );
setScaleKey( spep_2 - n + 429, 1, 0.12, 0.12 );
setScaleKey( spep_2 - n + 430, 1, 0.09, 0.09 );
setScaleKey( spep_2 - n + 431, 1, 0.09, 0.09 );
setScaleKey( spep_2 - n + 432, 1, 0.07, 0.07 );
setScaleKey( spep_2 - n + 433, 1, 0.07, 0.07 );
setScaleKey( spep_2 - n + 434, 1, 0.04, 0.04 );
setScaleKey( spep_2 - n + 436, 1, 0.04, 0.04 );

setRotateKey( spep_2 - n + 166, 1, -23.2 );
setRotateKey( spep_2 - n + 179, 1, -23.2 );
setRotateKey( spep_2 - n + 180, 1, -14 );
setRotateKey( spep_2 - n + 195, 1, -14 );
setRotateKey( spep_2 - n + 195, 1, -14 );
setRotateKey( spep_2 - n + 196, 1, -42.8 );
setRotateKey( spep_2 - n + 197, 1, -42.8 );
setRotateKey( spep_2 - n + 198, 1, -42.1 );
setRotateKey( spep_2 - n + 199, 1, -42.1 );
setRotateKey( spep_2 - n + 200, 1, -41.6 );
setRotateKey( spep_2 - n + 201, 1, -41.6 );
setRotateKey( spep_2 - n + 202, 1, -41 );
setRotateKey( spep_2 - n + 203, 1, -41 );
setRotateKey( spep_2 - n + 204, 1, -40.4 );
setRotateKey( spep_2 - n + 205, 1, -40.4 );
setRotateKey( spep_2 - n + 206, 1, -39.9 );
setRotateKey( spep_2 - n + 207, 1, -39.9 );
setRotateKey( spep_2 - n + 208, 1, -39.4 );
setRotateKey( spep_2 - n + 209, 1, -39.4 );
setRotateKey( spep_2 - n + 210, 1, -38.9 );
setRotateKey( spep_2 - n + 211, 1, -38.9 );
setRotateKey( spep_2 - n + 212, 1, -38.5 );
setRotateKey( spep_2 - n + 213, 1, -38.5 );
setRotateKey( spep_2 - n + 214, 1, -38 );
setRotateKey( spep_2 - n + 215, 1, -38 );
setRotateKey( spep_2 - n + 216, 1, -37.6 );
setRotateKey( spep_2 - n + 217, 1, -37.6 );
setRotateKey( spep_2 - n + 218, 1, -37.2 );
setRotateKey( spep_2 - n + 219, 1, -37.2 );
setRotateKey( spep_2 - n + 220, 1, -36.9 );
setRotateKey( spep_2 - n + 221, 1, -36.9 );
setRotateKey( spep_2 - n + 222, 1, -36.5 );
setRotateKey( spep_2 - n + 223, 1, -36.5 );
setRotateKey( spep_2 - n + 224, 1, -36.2 );
setRotateKey( spep_2 - n + 225, 1, -36.2 );
setRotateKey( spep_2 - n + 226, 1, -35.9 );
setRotateKey( spep_2 - n + 227, 1, -35.9 );
setRotateKey( spep_2 - n + 228, 1, -35.6 );
setRotateKey( spep_2 - n + 229, 1, -35.6 );
setRotateKey( spep_2 - n + 230, 1, -35.3 );
setRotateKey( spep_2 - n + 231, 1, -35.3 );
setRotateKey( spep_2 - n + 232, 1, -35.1 );
setRotateKey( spep_2 - n + 233, 1, -35.1 );
setRotateKey( spep_2 - n + 234, 1, -34.9 );
--
setRotateKey( spep_2 - n + 384, 1, 0 );
setRotateKey( spep_2 - n + 395, 1, 0 );
setRotateKey( spep_2 - n + 396, 1, 8.7 );
setRotateKey( spep_2 - n + 397, 1, 8.7 );
setRotateKey( spep_2 - n + 398, 1, -18.9 );
setRotateKey( spep_2 - n + 399, 1, -18.9 );
setRotateKey( spep_2 - n + 400, 1, -14 );
setRotateKey( spep_2 - n + 401, 1, -14 );
setRotateKey( spep_2 - n + 402, 1, -16.7 );
setRotateKey( spep_2 - n + 403, 1, -16.7 );
setRotateKey( spep_2 - n + 404, 1, -19.2 );
setRotateKey( spep_2 - n + 405, 1, -19.2 );
setRotateKey( spep_2 - n + 406, 1, -21.5 );
setRotateKey( spep_2 - n + 407, 1, -21.5 );
setRotateKey( spep_2 - n + 408, 1, -23.6 );
setRotateKey( spep_2 - n + 409, 1, -23.6 );
setRotateKey( spep_2 - n + 410, 1, -25.6 );
setRotateKey( spep_2 - n + 411, 1, -25.6 );
setRotateKey( spep_2 - n + 412, 1, -27.4 );
setRotateKey( spep_2 - n + 413, 1, -27.4 );
setRotateKey( spep_2 - n + 414, 1, -29 );
setRotateKey( spep_2 - n + 415, 1, -29 );
setRotateKey( spep_2 - n + 416, 1, -29.4 );
setRotateKey( spep_2 - n + 417, 1, -29.4 );
setRotateKey( spep_2 - n + 418, 1, -29.9 );
setRotateKey( spep_2 - n + 419, 1, -29.9 );
setRotateKey( spep_2 - n + 420, 1, -30.3 );
setRotateKey( spep_2 - n + 421, 1, -30.3 );
setRotateKey( spep_2 - n + 422, 1, -30.8 );
setRotateKey( spep_2 - n + 423, 1, -30.8 );
setRotateKey( spep_2 - n + 424, 1, -31.3 );
setRotateKey( spep_2 - n + 425, 1, -31.3 );
setRotateKey( spep_2 - n + 426, 1, -31.7 );
setRotateKey( spep_2 - n + 427, 1, -31.7 );
setRotateKey( spep_2 - n + 428, 1, -32.2 );
setRotateKey( spep_2 - n + 429, 1, -32.2 );
setRotateKey( spep_2 - n + 430, 1, -32.6 );
setRotateKey( spep_2 - n + 431, 1, -32.6 );
setRotateKey( spep_2 - n + 432, 1, -33.1 );
setRotateKey( spep_2 - n + 433, 1, -33.1 );
setRotateKey( spep_2 - n + 434, 1, -33.6 );
setRotateKey( spep_2 - n + 436, 1, -33.6 );

-- ** 音 ** --
--気溜める
SE009 = playSeVer2( spep_2 + 36, 1283, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE009, 81 );
setPitch( spep_2 + 36, SE009, 700 );
setTimeStretch( SE009, 1.47, 30, 4 );
SE010 = playSeVer2( spep_2 + 44, 17, "",spep_2 + 122, 0, 20, -1);
SE011 = playSeVer2( spep_2 + 56, 1296, "",spep_2 + 124, 12, 40, -1);
setSeVolumeByWorkId( spep_2 + 56, SE011, 132 );

--気弾発射
SE012 = playSeVer2( spep_2 + 114, 1122, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 114, 1109, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 114, 1145, "", 0, 0, 0, -1);

--気弾飛んでいく
SE015 = playSeVer2( spep_2 + 160, 1121, "",spep_2 + 252, 0, 12, -1);
setPitch( spep_2 + 160, SE015, 300 );
setTimeStretch( SE015, 1.2, 30, 4 );
SE016 = playSeVer2( spep_2 + 192, 1116, "",spep_2 + 232, 0, 20, -1);
SE017 = playSeVer2( spep_2 + 198, 1277, "", 0, 0, 0, -1);

--気弾Uターン
SE018 = playSeVer2( spep_2 + 242, 1027, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 242, 1272, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 242, SE019, 141 );
setPitch( spep_2 + 242, SE019, -400 );
setTimeStretch( SE019, 0.73, 30, 4 );
SE020 = playSeVer2( spep_2 + 250, 1222, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE020, 79 );
SE021 = playSeVer2( spep_2 + 264, 1374, "", 0, 52, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 264, SE021, 78 );
setStartTimeMs( SE021,  233 );
setPitch( spep_2 + 264, SE021, 200 );
setTimeStretch( SE021, 1.13, 30, 4 );
SE022 = playSeVer2( spep_2 + 256, 44, "", 0, 0, 0, -1);

--気弾飛んでいく
SE023 = playSeVer2( spep_2 + 338, 1116, "",spep_2 + 376, 0, 20, -1);
SE024 = playSeVer2( spep_2 + 338, 1004, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 338, 1117, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 338, 1177, "",spep_2 + 478, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 338, SE026, 76 );

--気弾飛んでいく２
SE027 = playSeVer2( spep_2 + 394, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 394, SE027, 178 );

--爆発前兆
SE028 = playSeVer2( spep_2 + 432, 1157, "",spep_2 + 496, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 432, SE028, 146 );

--爆発
SE029 = playSeVer2( spep_2 + 462, 1069, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 478, 1024, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 478, 1159, "", 0, 0, 0, -1);

--風圧
SE032 = playSeVer2( spep_2 + 474, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 474, SE032, 77 );

-- ** おわり ** --
dealDamage( spep_2 + 440 );
endPhase( spep_2 + 566 );


end
