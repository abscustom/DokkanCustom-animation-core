--1022050:ガーリックJr._気功弾_sp2195
--sp_effect_a2_00161

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
SP_01 = 157428;	--気弾構え	ef_001
SP_02 = 157429;	--気弾発射	ef_002
SP_03 = 157430;	--敵に気弾が接近	ef_003_front
SP_04 = 157431;	--敵に気弾が接近	ef_003_back
SP_05 = 157432;	--爆発でフィニッシュ	ef_004

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
-- 気弾構え(106F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 106, 0x100, -1, 0, 0, 0 );  --気弾構え	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 106, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 106, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 106, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 106 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 106, first_f, 0 );

spep_x = spep_0 + 22;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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
SE001 = playSe( spep_0 + 0, 1072 );

--集中線
SE002 = playSe( spep_0 + 24, 19 );
setSeVolumeByWorkId( spep_0 + 24, SE002, 90 );

--顔カットイン
SE003 = playSe( spep_0 + 28, 1018 );

--気弾ため
SE004 = playSe( spep_0 + 58, 49 );

--気弾ため
SE005 = playSe( spep_0 + 58, 1328 );
setSeVolumeByWorkId( spep_0 + 58, SE005, 119 );

--気弾ため
SE006 = playSe( spep_0 + 82, 49 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 106;


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

--発射前気弾ため
SE008 = playSe( spep_1 + 90, 1328 );
setSeVolumeByWorkId( spep_1 + 90, SE008, 124 );

--発射前気弾ため
SE009 = playSe( spep_1 + 90, 1329,"",0.6 );
setSeVolumeByWorkId( spep_1 + 90, SE009, 124 );
stopSe( spep_1 +94 + 72, SE009, 22 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気弾発射(86F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
shot = entryEffectLife( spep_2 + 0, SP_02, 86, 0x100, -1, 0, 0, 0 );  --気弾発射	ef_002
setEffMoveKey( spep_2 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shot, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, shot, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot, 0 );
setEffRotateKey( spep_2 + 86, shot, 0 );
setEffAlphaKey( spep_2 + 0, shot, 255 );
setEffAlphaKey( spep_2 + 86 -1, shot, 255 );
setEffAlphaKey( spep_2 + 86, shot, 0 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 12 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
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

-- ** 音 ** --
--気弾発射
SE010 = playSe( spep_2 + 66, 1193 );
setSeVolumeByWorkId( spep_2 + 66, SE010, 38 );
setSeVolumeByWorkId( spep_2 + 68, SE010, 76 );
setSeVolumeByWorkId( spep_2 + 70, SE010, 112 );
setSeVolumeByWorkId( spep_2 + 72, SE010, 151 );
stopSe( spep_2 +86 + 10, SE010, 44 );
setStartTimeMs( SE010,  233 );

--気弾発射
SE012 = playSe( spep_2 + 72, 1027 );
setSeVolumeByWorkId( spep_2 + 72, SE012, 61 );

--気弾発射
SE013 = playSe( spep_2 + 76, 1177 );
setSeVolumeByWorkId( spep_2 + 76, SE013, 63 );
stopSe( spep_2 +86 +56 + 4, SE013, 14 );

--気弾発射
SE011 = playSe( spep_2 + 84, 1191 );
setSeVolumeByWorkId( spep_2 + 84, SE011, 15 );
setSeVolumeByWorkId( spep_2 + 86, SE011, 30 );
setSeVolumeByWorkId( spep_2 + 88, SE011, 45 );
setSeVolumeByWorkId( spep_2 + 90, SE011, 60 );
setSeVolumeByWorkId( spep_2 + 92, SE011, 75 );
setSeVolumeByWorkId( spep_2 + 94, SE011, 90 );
setSeVolumeByWorkId( spep_2 + 96, SE011, 95 );
setSeVolumeByWorkId( spep_2 + 98, SE011, 100 );
stopSe( spep_2 +86 +56 + 4, SE011, 10 );
setStartTimeMs( SE011,  417 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;


------------------------------------------------------
-- 敵に気弾が接近(56F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_3 + 0, SP_03, 56, 0x100, -1, 0, 0, 0 );  --敵に気弾が接近	ef_003_front
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 56, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 56 -1, hit_f, 255 );
setEffAlphaKey( spep_3 + 56, hit_f, 0 );

hit_b = entryEffectLife( spep_3 + 0, SP_04, 56, 0x80, -1, 0, 0, 0 );  --敵に気弾が接近	ef_003_back
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 56, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 56 -1, hit_b, 255 );
setEffAlphaKey( spep_3 + 56, hit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 59, 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );

setMoveKey( spep_3 + 0, 1, 285.1, -9.5 , 0 );
setMoveKey( spep_3 + 1, 1, 284.2, -9.2 , 0 );
setMoveKey( spep_3 + 2, 1, 283.3, -8.9 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 282.3, -8.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 281.4, -8.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 280.5, -8.1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 279.5, -7.8 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 278.6, -7.5 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 277.6, -7.2 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 276.7, -6.9 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 275.8, -6.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 274.8, -6.4 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 273.9, -6.1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 273, -5.8 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 272, -5.5 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 271.1, -13.5 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 270.2, -5.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 269.2, -13.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 268.3, -5.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 267.4, -13.5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 266.4, -5.5 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 265.5, -13.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 264.6, -5.4 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 263.6, -13.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 262.7, -5.4 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 261.8, -13.4 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 260.8, -5.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 259.9, -13.4 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 255, -9.4 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 258, -5.4 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 258, -5.4 , 0 );

setScaleKey( spep_3 + 0, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 2, 1, 0.77, 0.77 );
setScaleKey( spep_3 -3 + 6, 1, 0.825, 0.825 );
--setScaleKey( spep_3 -3 + 14, 1, 0.825, 0.825 );
setScaleKey( spep_3 -3 + 16, 1, 0.88, 0.88 );
--setScaleKey( spep_3 -3 + 24, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 26, 1, 0.935, 0.935 );
--setScaleKey( spep_3 -3 + 34, 1, 0.935, 0.935 );
setScaleKey( spep_3 -3 + 36, 1, 0.99, 0.99 );
--setScaleKey( spep_3 -3 + 44, 1, 0.99, 0.99 );
setScaleKey( spep_3 -3 + 46, 1, 1.045, 1.045 );
--setScaleKey( spep_3 -3 + 54, 1, 1.045, 1.045 );
setScaleKey( spep_3 -3 + 56, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 59, 1, 1.1, 1.1 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 59, 1, 0 );

-- ** 音 ** --
--爆発
SE014 = playSe( spep_3 + 54, 1023 );

--爆発
SE015 = playSe( spep_3 + 54, 1067 );


-- ** 黒背景 ** --
--entryFadeBg( spep_3 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


------------------------------------------------------
-- 爆発でフィニッシュ(116F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --爆発でフィニッシュ	ef_004
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 116, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 116, finish_f, 255 );

-- ** 音 ** --

-- ** 黒背景 ** --
--entryFadeBg( spep_4 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 6 );
endPhase( spep_4 + 106 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気弾構え(106F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 106, 0x100, -1, 0, 0, 0 );  --気弾構え    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 106, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 106, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 106, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 106 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 106, first_f, 0 );

spep_x = spep_0 + 22;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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
SE001 = playSe( spep_0 + 0, 1072 );

--集中線
SE002 = playSe( spep_0 + 24, 19 );
setSeVolumeByWorkId( spep_0 + 24, SE002, 90 );

--顔カットイン
SE003 = playSe( spep_0 + 28, 1018 );

--気弾ため
SE004 = playSe( spep_0 + 58, 49 );

--気弾ため
SE005 = playSe( spep_0 + 58, 1328 );
setSeVolumeByWorkId( spep_0 + 58, SE005, 119 );

--気弾ため
SE006 = playSe( spep_0 + 82, 49 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 106;


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

--発射前気弾ため
SE008 = playSe( spep_1 + 90, 1328 );
setSeVolumeByWorkId( spep_1 + 90, SE008, 124 );

--発射前気弾ため
SE009 = playSe( spep_1 + 90, 1329,"",0.6 );
setSeVolumeByWorkId( spep_1 + 90, SE009, 124 );
stopSe( spep_1 +94 + 72, SE009, 22 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気弾発射(86F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
shot = entryEffectLife( spep_2 + 0, SP_02, 86, 0x100, -1, 0, 0, 0 );  --気弾発射    ef_002
setEffMoveKey( spep_2 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shot, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, shot, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot, 0 );
setEffRotateKey( spep_2 + 86, shot, 0 );
setEffAlphaKey( spep_2 + 0, shot, 255 );
setEffAlphaKey( spep_2 + 86 -1, shot, 255 );
setEffAlphaKey( spep_2 + 86, shot, 0 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 12 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
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

-- ** 音 ** --
--気弾発射
SE010 = playSe( spep_2 + 66, 1193 );
setSeVolumeByWorkId( spep_2 + 66, SE010, 38 );
setSeVolumeByWorkId( spep_2 + 68, SE010, 76 );
setSeVolumeByWorkId( spep_2 + 70, SE010, 112 );
setSeVolumeByWorkId( spep_2 + 72, SE010, 151 );
stopSe( spep_2 +86 + 10, SE010, 44 );
setStartTimeMs( SE010,  233 );

--気弾発射
SE012 = playSe( spep_2 + 72, 1027 );
setSeVolumeByWorkId( spep_2 + 72, SE012, 61 );

--気弾発射
SE013 = playSe( spep_2 + 76, 1177 );
setSeVolumeByWorkId( spep_2 + 76, SE013, 63 );
stopSe( spep_2 +86 +56 + 4, SE013, 14 );

--気弾発射
SE011 = playSe( spep_2 + 84, 1191 );
setSeVolumeByWorkId( spep_2 + 84, SE011, 15 );
setSeVolumeByWorkId( spep_2 + 86, SE011, 30 );
setSeVolumeByWorkId( spep_2 + 88, SE011, 45 );
setSeVolumeByWorkId( spep_2 + 90, SE011, 60 );
setSeVolumeByWorkId( spep_2 + 92, SE011, 75 );
setSeVolumeByWorkId( spep_2 + 94, SE011, 90 );
setSeVolumeByWorkId( spep_2 + 96, SE011, 95 );
setSeVolumeByWorkId( spep_2 + 98, SE011, 100 );
stopSe( spep_2 +86 +56 + 4, SE011, 10 );
setStartTimeMs( SE011,  417 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;


------------------------------------------------------
-- 敵に気弾が接近(56F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_3 + 0, SP_03, 56, 0x100, -1, 0, 0, 0 );  --敵に気弾が接近    ef_003_front
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 56, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 56 -1, hit_f, 255 );
setEffAlphaKey( spep_3 + 56, hit_f, 0 );

hit_b = entryEffectLife( spep_3 + 0, SP_04, 56, 0x80, -1, 0, 0, 0 );  --敵に気弾が接近 ef_003_back
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 56, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 56 -1, hit_b, 255 );
setEffAlphaKey( spep_3 + 56, hit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 59, 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );

setMoveKey( spep_3 + 0, 1, 285.1, -9.5 , 0 );
setMoveKey( spep_3 + 1, 1, 284.2, -9.2 , 0 );
setMoveKey( spep_3 + 2, 1, 283.3, -8.9 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 282.3, -8.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 281.4, -8.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 280.5, -8.1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 279.5, -7.8 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 278.6, -7.5 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 277.6, -7.2 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 276.7, -6.9 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 275.8, -6.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 274.8, -6.4 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 273.9, -6.1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 273, -5.8 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 272, -5.5 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 271.1, -13.5 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 270.2, -5.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 269.2, -13.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 268.3, -5.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 267.4, -13.5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 266.4, -5.5 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 265.5, -13.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 264.6, -5.4 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 263.6, -13.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 262.7, -5.4 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 261.8, -13.4 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 260.8, -5.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 259.9, -13.4 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 255, -9.4 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 258, -5.4 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 258, -5.4 , 0 );

setScaleKey( spep_3 + 0, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 2, 1, 0.77, 0.77 );
setScaleKey( spep_3 -3 + 6, 1, 0.825, 0.825 );
--setScaleKey( spep_3 -3 + 14, 1, 0.825, 0.825 );
setScaleKey( spep_3 -3 + 16, 1, 0.88, 0.88 );
--setScaleKey( spep_3 -3 + 24, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 26, 1, 0.935, 0.935 );
--setScaleKey( spep_3 -3 + 34, 1, 0.935, 0.935 );
setScaleKey( spep_3 -3 + 36, 1, 0.99, 0.99 );
--setScaleKey( spep_3 -3 + 44, 1, 0.99, 0.99 );
setScaleKey( spep_3 -3 + 46, 1, 1.045, 1.045 );
--setScaleKey( spep_3 -3 + 54, 1, 1.045, 1.045 );
setScaleKey( spep_3 -3 + 56, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 59, 1, 1.1, 1.1 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 59, 1, 0 );

-- ** 音 ** --
--爆発
SE014 = playSe( spep_3 + 54, 1023 );

--爆発
SE015 = playSe( spep_3 + 54, 1067 );


-- ** 黒背景 ** --
--entryFadeBg( spep_3 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


------------------------------------------------------
-- 爆発でフィニッシュ(116F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --爆発でフィニッシュ   ef_004
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 116, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 116, finish_f, 255 );

-- ** 音 ** --

-- ** 黒背景 ** --
--entryFadeBg( spep_4 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 6 );
endPhase( spep_4 + 106 );

end