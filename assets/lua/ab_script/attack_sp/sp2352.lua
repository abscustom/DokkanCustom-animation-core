--1024110:SSR_パラパラブラザーズ_ダンシングパラパラアタック_sp2352
--sp_effect_b4_00224

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
SP_01 = 159470;  --登場  ef_001
SP_02 = 159471;  --カットイン後　スピーカーが振動する   ef_002
SP_03 = 159472;  --悟空がリズムにのって攻撃    ef_003
SP_04 = 159473;  --フィニッシュ絵 ef_009

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
-- 登場(66F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 86, 0x100, -1, 0, 0, 0 );  --登場  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 86, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 86 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 86, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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
--顔カットイン
SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--ポーズ決め
SE002 = playSeVer2( spep_0 + 12, 1208, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE002, 77 );
SE003 = playSeVer2( spep_0 + 22, 12, "",spep_0 + 102 + 16, 0, 10, -1);
SE004 = playSeVer2( spep_0 + 22, 31, "",spep_0 + 92 + 6, 0, 32, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 78, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;


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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- カットイン後,スピーカーが振動する(66F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
speakeron = entryEffectLife( spep_2 + 0, SP_02, 66, 0x100, -1, 0, 0, 0 );  --カットイン後,スピーカーが振動する   ef_002
setEffMoveKey( spep_2 + 0, speakeron, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66, speakeron, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, speakeron, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, speakeron, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, speakeron, 0 );
setEffRotateKey( spep_2 + 66, speakeron, 0 );
setEffAlphaKey( spep_2 + 0, speakeron, 255 );
setEffAlphaKey( spep_2 + 66 -1, speakeron, 255 );
setEffAlphaKey( spep_2 + 66, speakeron, 0 );

-- ** 音 ** --
--スピーカー音楽
SE006 = playSeVer2( spep_2 + 4, 1047, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 4, 20, "",spep_2 + 52, 0, 16, -1);
SE008 = playSeVer2( spep_2 + 16, 24, "", 0, 0, 0, 0.5);
SE009 = playSeVer2( spep_2 + 22, 24, "", 0, 0, 0, 0.5);
SE010 = playSeVer2( spep_2 + 28, 1005, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 38, 24, "", 0, 0, 0, 0.5);
SE012 = playSeVer2( spep_2 + 44, 24, "", 0, 0, 0, 0.5);
SE013 = playSeVer2( spep_2 + 50, 13, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 66;


------------------------------------------------------
-- 悟空がリズムにのって攻撃(142F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
gpunch = entryEffectLife( spep_3 + 0, SP_03, 142, 0x100, -1, 0, 0, 0 );  --悟空がリズムにのって攻撃    ef_003
setEffMoveKey( spep_3 + 0, gpunch, 0, 0 , 0 );
setEffMoveKey( spep_3 + 142, gpunch, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gpunch, 1.0, 1.0 );
setEffScaleKey( spep_3 + 142, gpunch, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gpunch, 0 );
setEffRotateKey( spep_3 + 142, gpunch, 0 );
setEffAlphaKey( spep_3 + 0, gpunch, 255 );
setEffAlphaKey( spep_3 + 142 -1, gpunch, 255 );
setEffAlphaKey( spep_3 + 142, gpunch, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 18 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
   
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

-- ** 音 ** --
--悟空右パンチ
SE014 = playSeVer2( spep_3 + 12, 20, "",spep_3 + 42, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 12, SE014, 72 );
SE015 = playSeVer2( spep_3 + 24, 24, "", 0, 0, 0, 0.5);
SE016 = playSeVer2( spep_3 + 30, 24, "", 0, 0, 0, 0.5);
SE017 = playSeVer2( spep_3 + 36, 1000, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 36, 1110, "",spep_3 + 82, 0, 28, -1);
setSeVolumeByWorkId( spep_3 + 36, SE018, 68 );
SE019 = playSeVer2( spep_3 + 60, 20, "",spep_3 + 90, 0, 10, -1);
SE020 = playSeVer2( spep_3 + 70, 24, "", 0, 0, 0, 0.5);
SE021 = playSeVer2( spep_3 + 76, 24, "", 0, 0, 0, 0.5);
SE022 = playSeVer2( spep_3 + 82, 1000, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_3 + 82, 1110, "",spep_3 + 128, 0, 26, -1);
setSeVolumeByWorkId( spep_3 + 82, SE023, 70 );

--ラスト悟空パンチ
SE024 = playSeVer2( spep_3 + 106, 20, "",spep_3 + 136, 0, 10, -1);
SE025 = playSeVer2( spep_3 + 118, 24, "", 0, 0, 0, 0.5);
SE026 = playSeVer2( spep_3 + 124, 24, "", 0, 0, 0, 0.5);
SE027 = playSeVer2( spep_3 + 130, 1110, "",spep_3 + 172, 0, 26, -1);
setSeVolumeByWorkId( spep_3 + 130, SE027, 70 );
SE028 = playSeVer2( spep_3 + 130, 1000, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_3 + 130, 1027, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 142 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 142;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
--spep_4 = 0;
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 100, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 100, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 100, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 100, 1, 0 );
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4    + 0, 1, 36.2, 265.9 , 0 );
setMoveKey( spep_4    + 1, 1, 32.5, 228 , 0 );
setMoveKey( spep_4    + 2, 1, 27.7, 179.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 21.9, 119.7 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 15, 49.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 7.1, -32 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_4 -3 + 103, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_4    + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4    + 1, 1, 0.35, 0.35 );
setScaleKey( spep_4    + 2, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 103, 1, 1.6, 1.6 );

setRotateKey( spep_4    + 0, 1, 0 );
setRotateKey( spep_4    + 1, 1, 105 );
setRotateKey( spep_4    + 2, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1080 );
setRotateKey( spep_4 -3 + 103, 1, 1080 );

shuchusen_bl = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_4 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen_bl, 255 );

-- ** 音 ** --
--ガッ
SE030 = playSeVer2( spep_4 + 8, 1025, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_4 + 8, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 98 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 登場(66F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 86, 0x100, -1, 0, 0, 0 );  --登場  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 86, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 86 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 86, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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
--顔カットイン
SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--ポーズ決め
SE002 = playSeVer2( spep_0 + 12, 1208, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE002, 77 );
SE003 = playSeVer2( spep_0 + 22, 12, "",spep_0 + 102 + 16, 0, 10, -1);
SE004 = playSeVer2( spep_0 + 22, 31, "",spep_0 + 92 + 6, 0, 32, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 78, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;


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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- カットイン後,スピーカーが振動する(66F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
speakeron = entryEffectLife( spep_2 + 0, SP_02, 66, 0x100, -1, 0, 0, 0 );  --カットイン後,スピーカーが振動する   ef_002
setEffMoveKey( spep_2 + 0, speakeron, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66, speakeron, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, speakeron, -1.0, 1.0 );
setEffScaleKey( spep_2 + 66, speakeron, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, speakeron, 0 );
setEffRotateKey( spep_2 + 66, speakeron, 0 );
setEffAlphaKey( spep_2 + 0, speakeron, 255 );
setEffAlphaKey( spep_2 + 66 -1, speakeron, 255 );
setEffAlphaKey( spep_2 + 66, speakeron, 0 );

-- ** 音 ** --
--スピーカー音楽
SE006 = playSeVer2( spep_2 + 4, 1047, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 4, 20, "",spep_2 + 52, 0, 16, -1);
SE008 = playSeVer2( spep_2 + 16, 24, "", 0, 0, 0, 0.5);
SE009 = playSeVer2( spep_2 + 22, 24, "", 0, 0, 0, 0.5);
SE010 = playSeVer2( spep_2 + 28, 1005, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 38, 24, "", 0, 0, 0, 0.5);
SE012 = playSeVer2( spep_2 + 44, 24, "", 0, 0, 0, 0.5);
SE013 = playSeVer2( spep_2 + 50, 13, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 66;


------------------------------------------------------
-- 悟空がリズムにのって攻撃(142F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
gpunch = entryEffectLife( spep_3 + 0, SP_03, 142, 0x100, -1, 0, 0, 0 );  --悟空がリズムにのって攻撃    ef_003
setEffMoveKey( spep_3 + 0, gpunch, 0, 0 , 0 );
setEffMoveKey( spep_3 + 142, gpunch, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gpunch, -1.0, 1.0 );
setEffScaleKey( spep_3 + 142, gpunch, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gpunch, 0 );
setEffRotateKey( spep_3 + 142, gpunch, 0 );
setEffAlphaKey( spep_3 + 0, gpunch, 255 );
setEffAlphaKey( spep_3 + 142 -1, gpunch, 255 );
setEffAlphaKey( spep_3 + 142, gpunch, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 18 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
   
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

-- ** 音 ** --
--悟空右パンチ
SE014 = playSeVer2( spep_3 + 12, 20, "",spep_3 + 42, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 12, SE014, 72 );
SE015 = playSeVer2( spep_3 + 24, 24, "", 0, 0, 0, 0.5);
SE016 = playSeVer2( spep_3 + 30, 24, "", 0, 0, 0, 0.5);
SE017 = playSeVer2( spep_3 + 36, 1000, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 36, 1110, "",spep_3 + 82, 0, 28, -1);
setSeVolumeByWorkId( spep_3 + 36, SE018, 68 );
SE019 = playSeVer2( spep_3 + 60, 20, "",spep_3 + 90, 0, 10, -1);
SE020 = playSeVer2( spep_3 + 70, 24, "", 0, 0, 0, 0.5);
SE021 = playSeVer2( spep_3 + 76, 24, "", 0, 0, 0, 0.5);
SE022 = playSeVer2( spep_3 + 82, 1000, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_3 + 82, 1110, "",spep_3 + 128, 0, 26, -1);
setSeVolumeByWorkId( spep_3 + 82, SE023, 70 );

--ラスト悟空パンチ
SE024 = playSeVer2( spep_3 + 106, 20, "",spep_3 + 136, 0, 10, -1);
SE025 = playSeVer2( spep_3 + 118, 24, "", 0, 0, 0, 0.5);
SE026 = playSeVer2( spep_3 + 124, 24, "", 0, 0, 0, 0.5);
SE027 = playSeVer2( spep_3 + 130, 1110, "",spep_3 + 172, 0, 26, -1);
setSeVolumeByWorkId( spep_3 + 130, SE027, 70 );
SE028 = playSeVer2( spep_3 + 130, 1000, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_3 + 130, 1027, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 142 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 142;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
--spep_4 = 0;
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 100, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 100, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 100, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 100, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 100, 1, 0 );
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4    + 0, 1, 36.2, 265.9 , 0 );
setMoveKey( spep_4    + 1, 1, 32.5, 228 , 0 );
setMoveKey( spep_4    + 2, 1, 27.7, 179.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 21.9, 119.7 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 15, 49.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 7.1, -32 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_4 -3 + 103, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_4    + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4    + 1, 1, 0.35, 0.35 );
setScaleKey( spep_4    + 2, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 103, 1, 1.6, 1.6 );

setRotateKey( spep_4    + 0, 1, 0 );
setRotateKey( spep_4    + 1, 1, 105 );
setRotateKey( spep_4    + 2, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1080 );
setRotateKey( spep_4 -3 + 103, 1, 1080 );

shuchusen_bl = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_4 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen_bl, 255 );

-- ** 音 ** --
--ガッ
SE030 = playSeVer2( spep_4 + 8, 1025, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_4 + 8, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 98 );

end