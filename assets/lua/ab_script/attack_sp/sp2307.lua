--1022910:孫悟空(チュートリアル)袖なし_かめはめ波_sp2307
--sp_effect_a1_00317

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
SP_01 = 158157; --正面突進  ef_001
SP_02 = 158158; --ラッシュシーン＿キャラ   ef_002
SP_03 = 158159; --ラッシュシーン＿背景    ef_003
SP_04 = 158160; --正面向きパンチ連打 ef_004
SP_05 = 158161; --蹴り飛ばし→かめはめ波溜め_キャラ ef_005
SP_06 = 158162; --蹴り飛ばし→かめはめ波溜め_背景  ef_006
SP_07 = 158163; --かめはめ波発射   ef_007
SP_08 = 158164; --地面爆発フィニッシュ    ef_008

--敵側
SP_02r = 158165;    --ラッシュシーン＿キャラ：反転用   ef_002_r
SP_05r = 158166;    --蹴り飛ばし→かめはめ波溜め_キャラ：反転用 ef_005_r
SP_08r = 158167;    --地面爆発フィニッシュ：反転用    ef_008_r

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
-- 正面突進(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 96, 0x100, -1, 0, 0, 0 );  --正面突進 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 0 );

-- ** 音 ** --
--悟空向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1278, "",spep_0 +136 + 58, 0, 110, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 24 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
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

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 86 -1, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


------------------------------------------------------
-- ラッシュシーン(56F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
rush_f = entryEffectLife( spep_1 + 0, SP_02, 56, 0x100, -1, 0, 0, 0 );  --ラッシュシーン＿キャラ   ef_002
setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 56, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 56 -1, rush_f, 255 );
setEffAlphaKey( spep_1 + 56, rush_f, 0 );

rush_b = entryEffectLife( spep_1 + 0, SP_03, 56, 0x80, -1, 0, 0, 0 );  --ラッシュシーン＿背景 ef_003
setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 56, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 56 -1, rush_b, 255 );
setEffAlphaKey( spep_1 + 56, rush_b, 0 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_1 -3 + 24,  10020, 16, 0x100, -1, 0, 11.9, 292.8 );  --バキッ
setEffMoveKey( spep_1 -3 + 24, ctbaki, 11.9, 292.8 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctbaki, 8.6, 310.7 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctbaki, 23.7, 315.2 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctbaki, 12, 323.1 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctbaki, 23.9, 313.8 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctbaki, 11.8, 321.9 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctbaki, 24.1, 312.4 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctbaki, 11.4, 336.1 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctbaki, 11.1, 350.9 , 0 );
setEffScaleKey( spep_1 -3 + 24, ctbaki, 1, 1 );
setEffScaleKey( spep_1 -3 + 26, ctbaki, 1.35, 1.35 );
setEffScaleKey( spep_1 -3 + 28, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_1 -3 + 30, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_1 -3 + 32, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 -3 + 34, ctbaki, 1.77, 1.77 );
setEffScaleKey( spep_1 -3 + 36, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1 -3 + 38, ctbaki, 1.97, 1.97 );
setEffScaleKey( spep_1 -3 + 40, ctbaki, 2.15, 2.15 );
setEffRotateKey( spep_1 -3 + 24, ctbaki, -9 );
setEffRotateKey( spep_1 -3 + 40, ctbaki, -9 );
setEffAlphaKey( spep_1 -3 + 24, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 36, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 38, ctbaki, 128 );
setEffAlphaKey( spep_1 -3 + 40, ctbaki, 0 );

ctga1 = entryEffectLife( spep_1 -3 + 40,  10005, 16, 0x100, -1, 0, -13.7, 256.8 );  --ガッ
setEffMoveKey( spep_1 -3 + 40, ctga1, -13.7, 256.8 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctga1, 6.2, 279.3 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctga1, 32.2, 292.7 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctga1, 30.7, 298.5 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctga1, 37.1, 292.7 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctga1, 35.5, 298.7 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctga1, 42, 292.7 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctga1, 47.2, 312 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctga1, 56.4, 325.2 , 0 );
setEffScaleKey( spep_1 -3 + 40, ctga1, 0.72, 0.72 );
setEffScaleKey( spep_1 -3 + 42, ctga1, 0.97, 0.97 );
setEffScaleKey( spep_1 -3 + 44, ctga1, 1.22, 1.22 );
setEffScaleKey( spep_1 -3 + 46, ctga1, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 48, ctga1, 1.26, 1.26 );
setEffScaleKey( spep_1 -3 + 50, ctga1, 1.28, 1.28 );
setEffScaleKey( spep_1 -3 + 52, ctga1, 1.3, 1.3 );
setEffScaleKey( spep_1 -3 + 54, ctga1, 1.42, 1.42 );
setEffScaleKey( spep_1 -3 + 56, ctga1, 1.55, 1.55 );
setEffRotateKey( spep_1 -3 + 40, ctga1, 11.2 );
setEffRotateKey( spep_1 -3 + 56, ctga1, 11.2 );
setEffAlphaKey( spep_1 -3 + 40, ctga1, 255 );
setEffAlphaKey( spep_1 -3 + 52, ctga1, 255 );
setEffAlphaKey( spep_1 -3 + 54, ctga1, 128 );
setEffAlphaKey( spep_1 -3 + 56, ctga1, 0 );

ctga2 = entryEffectLife( spep_1 -3 + 50,  10005, 8, 0x100, -1, 0, 54, 204.7 );  --ガッ
setEffMoveKey( spep_1 -3 + 50, ctga2, 54, 204.7 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctga2, 70.1, 222.9 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctga2, 91.1, 233.8 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctga2, 90, 238.6 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctga2, 95.1, 233.8 , 0 );
setEffScaleKey( spep_1 -3 + 50, ctga2, 0.58, 0.58 );
setEffScaleKey( spep_1 -3 + 52, ctga2, 0.79, 0.79 );
setEffScaleKey( spep_1 -3 + 54, ctga2, 0.99, 0.99 );
setEffScaleKey( spep_1 -3 + 56, ctga2, 1.01, 1.01 );
setEffScaleKey( spep_1 -3 + 58, ctga2, 1.02, 1.02 );
setEffRotateKey( spep_1 -3 + 50, ctga2, 11.2 );
setEffRotateKey( spep_1 -3 + 54, ctga2, 11.2 );
setEffRotateKey( spep_1 -3 + 56, ctga2, 11.1 );
setEffRotateKey( spep_1 -3 + 58, ctga2, 11 );
setEffAlphaKey( spep_1 -3 + 50, ctga2, 255 );
setEffAlphaKey( spep_1 -3 + 58, ctga2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 59, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 -3 + 24, 1, 106 );
changeAnime( spep_1 -3 + 38, 1, 108 );
changeAnime( spep_1 -3 + 50, 1, 106 );

setMoveKey( spep_1 + 0, 1, 597.5, 45.3 , 0 );
setMoveKey( spep_1 + 1, 1, 551.5, 45.3 , 0 );
setMoveKey( spep_1 + 2, 1, 505.5, 45.3 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 459.5, 45.3 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 413.5, 45.3 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 367.5, 45.3 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 321.5, 45.3 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 275.4, 45.3 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 229.4, 45.3 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 183.4, 45.3 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 137.4, 45.3 , 0 );
setMoveKey( spep_1 -3 + 23, 1, 91.4, 45.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 67, 46 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 70, 48.6 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 77.3, 43.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 81.7, 51.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 87.7, 52.5 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 93.8, 53.8 , 0 );
setMoveKey( spep_1 -3 + 37, 1, 100, 55.1 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 96.3, 47.6 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 101.5, 47.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 106.8, 47.8 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 112, 47.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 117.3, 48 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 122.6, 48.2 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 70.2, 62.8 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 76, 62.8 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 81.7, 62.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 87.5, 62.8 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 93.2, 62.8 , 0 );
setMoveKey( spep_1 -3 + 59, 1, 93.2, 62.8 , 0 );

setScaleKey( spep_1 -3 + 0, 1, 1.694, 1.694 );
setScaleKey( spep_1 -3 + 37, 1, 1.694, 1.694 );
setScaleKey( spep_1 -3 + 38, 1, 2.0815, 2.0815 );
setScaleKey( spep_1 -3 + 49, 1, 2.0815, 2.0815 );
setScaleKey( spep_1 -3 + 50, 1, 1.694, 1.694 );
setScaleKey( spep_1 -3 + 59, 1, 1.694, 1.694 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 23, 1, 0 );
setRotateKey( spep_1 -3 + 24, 1, -45 );
setRotateKey( spep_1 -3 + 26, 1, -44.2 );
setRotateKey( spep_1 -3 + 28, 1, -43.4 );
setRotateKey( spep_1 -3 + 30, 1, -42.5 );
setRotateKey( spep_1 -3 + 32, 1, -41.7 );
setRotateKey( spep_1 -3 + 34, 1, -40.9 );
setRotateKey( spep_1 -3 + 37, 1, -40.1 );
setRotateKey( spep_1 -3 + 38, 1, 1.8 );
setRotateKey( spep_1 -3 + 49, 1, 1.8 );
setRotateKey( spep_1 -3 + 50, 1, -40.1 );
setRotateKey( spep_1 -3 + 59, 1, -40.1 );

-- ** 音 ** --
--横向きラッシュ
SE005 = playSeVer2( spep_1 + 16, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 20, 1009, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 22, 1110, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 34, 1110, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 46, 1010, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 48, 1110, "", 0, 0, 0, -1);

--正面ラッシュ
SE011 = playSeVer2( spep_1 + 54, 1003, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 6 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;


------------------------------------------------------
-- 正面向きパンチ連打(86F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
punch = entryEffectLife( spep_2 + 0, SP_04, 86, 0x100, -1, 0, 0, 0 );  --正面向きパンチ連打  ef_004
setEffMoveKey( spep_2 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, punch, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, punch, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch, 0 );
setEffRotateKey( spep_2 + 86, punch, 0 );
setEffAlphaKey( spep_2 + 0, punch, 255 );
setEffAlphaKey( spep_2 + 86 -1, punch, 255 );
setEffAlphaKey( spep_2 + 86, punch, 0 );

-- ** 音 ** --
--正面ラッシュ
SE012 = playSeVer2( spep_2 + 4, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 4, 1187, "",spep_2 + 44, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 4, SE013, 79 );
SE014 = playSeVer2( spep_2 + 22, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 22, 1187, "",spep_2 + 64, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 22, SE015, 85 );
SE016 = playSeVer2( spep_2 + 50, 1189, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 56, 1009, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 56, 1187, "",spep_2 +136 + 84, 0, 98, -1);
setSeVolumeByWorkId( spep_2 + 56, SE018, 89 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;


------------------------------------------------------
-- 蹴り飛ばし→かめはめ波溜め(176F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_3 + 0, SP_05, 176, 0x100, -1, 0, 0, 0 );  --蹴り飛ばし→かめはめ波溜め_キャラ    ef_005
setEffMoveKey( spep_3 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 176, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame_f, 0 );
setEffRotateKey( spep_3 + 176, tame_f, 0 );
setEffAlphaKey( spep_3 + 0, tame_f, 255 );
setEffAlphaKey( spep_3 + 176 -1, tame_f, 255 );
setEffAlphaKey( spep_3 + 176, tame_f, 0 );

tame_b = entryEffectLife( spep_3 + 0, SP_06, 176, 0x80, -1, 0, 0, 0 );  --蹴り飛ばし→かめはめ波溜め_背景  ef_006
setEffMoveKey( spep_3 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 176, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame_b, 0 );
setEffRotateKey( spep_3 + 176, tame_b, 0 );
setEffAlphaKey( spep_3 + 0, tame_b, 255 );
setEffAlphaKey( spep_3 + 176 -1, tame_b, 255 );
setEffAlphaKey( spep_3 + 176, tame_b, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_3 + 0, 906, 32, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen1, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 32, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen1, 2.2, 2.0 );
setEffScaleKey( spep_3 + 32, shuchusen1, 2.2, 2.0 );
setEffRotateKey( spep_3 + 0, shuchusen1, 0 );
setEffRotateKey( spep_3 + 32, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 12 -2, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 12 -1, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 32, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_3 -3 + 14,  10018, 22, 0x100, -1, 0, -30.1, 233.4 );    --ドゴォンッ
setEffMoveKey( spep_3 -3 + 14, ctdogon, -30.1, 233.4 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctdogon, -60.3, 339.9 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctdogon, -58.5, 338.1 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctdogon, -62.6, 338.8 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctdogon, -59.4, 338.5 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctdogon, -60.8, 339.3 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctdogon, -59.6, 338.9 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctdogon, -66.1, 346.2 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctdogon, -68.4, 352.5 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctdogon, -74.9, 359.8 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctdogon, -79.8, 376.8 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctdogon, -89.3, 394.8 , 0 );
setEffScaleKey( spep_3 -3 + 14, ctdogon, 1.06, 1.06 );
setEffScaleKey( spep_3 -3 + 16, ctdogon, 2.28, 2.28 );
setEffScaleKey( spep_3 -3 + 18, ctdogon, 2.89, 2.89 );
setEffScaleKey( spep_3 -3 + 20, ctdogon, 2.75, 2.75 );
setEffScaleKey( spep_3 -3 + 22, ctdogon, 2.61, 2.61 );
setEffScaleKey( spep_3 -3 + 24, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_3 -3 + 26, ctdogon, 2.34, 2.34 );
setEffScaleKey( spep_3 -3 + 28, ctdogon, 2.34, 2.34 );
setEffScaleKey( spep_3 -3 + 30, ctdogon, 2.33, 2.33 );
setEffScaleKey( spep_3 -3 + 32, ctdogon, 2.33, 2.33 );
setEffScaleKey( spep_3 -3 + 34, ctdogon, 2.62, 2.62 );
setEffScaleKey( spep_3 -3 + 36, ctdogon, 2.9, 2.9 );
setEffRotateKey( spep_3 -3 + 14, ctdogon, -20.7 );
setEffRotateKey( spep_3 -3 + 16, ctdogon, -34.1 );
setEffRotateKey( spep_3 -3 + 18, ctdogon, -26.7 );
setEffRotateKey( spep_3 -3 + 20, ctdogon, -12.2 );
setEffRotateKey( spep_3 -3 + 22, ctdogon, -20.9 );
setEffRotateKey( spep_3 -3 + 24, ctdogon, -31.6 );
setEffRotateKey( spep_3 -3 + 26, ctdogon, -20.7 );
setEffRotateKey( spep_3 -3 + 28, ctdogon, -20.7 );
setEffRotateKey( spep_3 -3 + 30, ctdogon, -20.6 );
setEffRotateKey( spep_3 -3 + 34, ctdogon, -20.6 );
setEffRotateKey( spep_3 -3 + 36, ctdogon, -20.7 );
setEffAlphaKey( spep_3 -3 + 14, ctdogon, 255 );
setEffAlphaKey( spep_3 -3 + 32, ctdogon, 255 );
setEffAlphaKey( spep_3 -3 + 34, ctdogon, 128 );
setEffAlphaKey( spep_3 -3 + 36, ctdogon, 0 );

ctsyun1 = entryEffectLife( spep_3 -3 + 30,  10011, 22, 0x100, -1, 0, -22.3, -255.6 );   --シュンッ
setEffMoveKey( spep_3 -3 + 30, ctsyun1, -22.3, -255.6 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctsyun1, -22.3, -198.8 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctsyun1, -22.3, -196.6 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctsyun1, -22.3, -194.5 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctsyun1, -22.3, -192.4 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctsyun1, -22.3, -190.3 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctsyun1, -22.3, -188.1 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctsyun1, -22.3, -186 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctsyun1, -22.3, -183.9 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctsyun1, -22.3, -181.8 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctsyun1, -22.3, -121.9 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctsyun1, -22.3, -62.1 , 0 );
setEffScaleKey( spep_3 -3 + 30, ctsyun1, 2.09, 2.08 );
setEffScaleKey( spep_3 -3 + 32, ctsyun1, 2.17, 2.15 );
setEffScaleKey( spep_3 -3 + 48, ctsyun1, 2.17, 2.15 );
setEffScaleKey( spep_3 -3 + 50, ctsyun1, 2.53, 2.51 );
setEffScaleKey( spep_3 -3 + 52, ctsyun1, 2.89, 2.87 );
setEffRotateKey( spep_3 -3 + 30, ctsyun1, 0 );
setEffRotateKey( spep_3 -3 + 52, ctsyun1, 0 );
setEffAlphaKey( spep_3 -3 + 30, ctsyun1, 128 );
setEffAlphaKey( spep_3 -3 + 32, ctsyun1, 255 );
setEffAlphaKey( spep_3 -3 + 48, ctsyun1, 255 );
setEffAlphaKey( spep_3 -3 + 50, ctsyun1, 128 );
setEffAlphaKey( spep_3 -3 + 52, ctsyun1, 0 );

ctsyun2 = entryEffectLife( spep_3 -3 + 102,  10011, 30, 0x100, -1, 0, 25.2, -193 ); --シュンッ
setEffMoveKey( spep_3 -3 + 102, ctsyun2, 25.2, -193 , 0 );
setEffMoveKey( spep_3 -3 + 104, ctsyun2, 25.2, -136.3 , 0 );
setEffMoveKey( spep_3 -3 + 106, ctsyun2, 25.2, -133.4 , 0 );
setEffMoveKey( spep_3 -3 + 108, ctsyun2, 25.2, -130.6 , 0 );
setEffMoveKey( spep_3 -3 + 110, ctsyun2, 25.2, -127.8 , 0 );
setEffMoveKey( spep_3 -3 + 112, ctsyun2, 25.2, -124.9 , 0 );
setEffMoveKey( spep_3 -3 + 114, ctsyun2, 25.2, -122.1 , 0 );
setEffMoveKey( spep_3 -3 + 116, ctsyun2, 25.2, -119.3 , 0 );
setEffMoveKey( spep_3 -3 + 118, ctsyun2, 25.2, -116.4 , 0 );
setEffMoveKey( spep_3 -3 + 120, ctsyun2, 25.2, -113.6 , 0 );
setEffMoveKey( spep_3 -3 + 122, ctsyun2, 25.2, -110.8 , 0 );
setEffMoveKey( spep_3 -3 + 124, ctsyun2, 25.2, -107.9 , 0 );
setEffMoveKey( spep_3 -3 + 126, ctsyun2, 25.2, -105.1 , 0 );
setEffMoveKey( spep_3 -3 + 128, ctsyun2, 25.2, -102.3 , 0 );
setEffMoveKey( spep_3 -3 + 130, ctsyun2, 25.2, -42.4 , 0 );
setEffMoveKey( spep_3 -3 + 132, ctsyun2, 25.2, 17.4 , 0 );
setEffScaleKey( spep_3 -3 + 102, ctsyun2, 2.17, 2.15 );
setEffScaleKey( spep_3 -3 + 128, ctsyun2, 2.17, 2.15 );
setEffScaleKey( spep_3 -3 + 130, ctsyun2, 2.53, 2.51 );
setEffScaleKey( spep_3 -3 + 132, ctsyun2, 2.89, 2.87 );
setEffRotateKey( spep_3 -3 + 102, ctsyun2, 0 );
setEffRotateKey( spep_3 -3 + 132, ctsyun2, 0 );
setEffAlphaKey( spep_3 -3 + 102, ctsyun2, 128 );
setEffAlphaKey( spep_3 -3 + 104, ctsyun2, 255 );
setEffAlphaKey( spep_3 -3 + 128, ctsyun2, 255 );
setEffAlphaKey( spep_3 -3 + 130, ctsyun2, 128 );
setEffAlphaKey( spep_3 -3 + 132, ctsyun2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 70, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 -3 + 14, 1, 108 );

setMoveKey( spep_3 + 0, 1, 86.3, -19.8 , 0 );
setMoveKey( spep_3 + 1, 1, 87.5, -13.6 , 0 );
setMoveKey( spep_3 + 2, 1, 89, -6.1 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 90.9, 3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 93.1, 13.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 95.7, 26.3 , 0 );
setMoveKey( spep_3 -3 + 13, 1, 98.7, 40.8 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 199.9, 91.5 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 171.8, 70.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 144.1, 66.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 156.5, 67.5 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 167.1, 83.9 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 159.8, 69.4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 168, 85.8 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 160.7, 71.2 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 168.9, 87.7 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 161.5, 73.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 169.7, 89.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 162.4, 74.9 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 170.6, 91.3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 163.4, 76.9 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 175.5, 78.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 175.9, 56.7 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 184.3, 50.7 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 184.7, 28.7 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 193.2, 22.6 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 193.6, 0.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 202.1, -5.7 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 202.5, -27.9 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 211, -34.1 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 211.4, -56.3 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 219.9, -62.4 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 220.3, -84.6 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 228.7, -90.6 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 228.9, -112.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 228.9, -112.6 , 0 );

setScaleKey( spep_3 + 0, 1, 2.178, 2.178 );
setScaleKey( spep_3 -3 + 13, 1, 2.178, 2.178 );
setScaleKey( spep_3 -3 + 14, 1, 2.772, 2.772 );
setScaleKey( spep_3 -3 + 40, 1, 2.772, 2.772 );
setScaleKey( spep_3 -3 + 42, 1, 2.585, 2.585 );
setScaleKey( spep_3 -3 + 44, 1, 2.398, 2.398 );
setScaleKey( spep_3 -3 + 46, 1, 2.211, 2.211 );
setScaleKey( spep_3 -3 + 48, 1, 2.024, 2.024 );
setScaleKey( spep_3 -3 + 50, 1, 1.837, 1.837 );
setScaleKey( spep_3 -3 + 52, 1, 1.639, 1.639 );
setScaleKey( spep_3 -3 + 54, 1, 1.452, 1.452 );
setScaleKey( spep_3 -3 + 56, 1, 1.265, 1.265 );
setScaleKey( spep_3 -3 + 58, 1, 1.078, 1.078 );
setScaleKey( spep_3 -3 + 60, 1, 0.880, 0.880 );
setScaleKey( spep_3 -3 + 62, 1, 0.693, 0.693 );
setScaleKey( spep_3 -3 + 64, 1, 0.506, 0.506 );
setScaleKey( spep_3 -3 + 66, 1, 0.319, 0.319 );
setScaleKey( spep_3 -3 + 68, 1, 0.132, 0.132 );
setScaleKey( spep_3 -3 + 70, 1, 0.132, 0.132 );

setRotateKey( spep_3 + 0, 1, -51 );
setRotateKey( spep_3 + 1, 1, -49.9 );
setRotateKey( spep_3 + 2, 1, -48.5 );
setRotateKey( spep_3 -3 + 6, 1, -46.9 );
setRotateKey( spep_3 -3 + 8, 1, -44.9 );
setRotateKey( spep_3 -3 + 10, 1, -42.6 );
setRotateKey( spep_3 -3 + 13, 1, -40 );
setRotateKey( spep_3 -3 + 14, 1, -6 );
setRotateKey( spep_3 -3 + 40, 1, -6 );
setRotateKey( spep_3 -3 + 42, 1, -3.5 );
setRotateKey( spep_3 -3 + 44, 1, -0.9 );
setRotateKey( spep_3 -3 + 46, 1, 1.6 );
setRotateKey( spep_3 -3 + 48, 1, 4.2 );
setRotateKey( spep_3 -3 + 50, 1, 6.7 );
setRotateKey( spep_3 -3 + 52, 1, 9.3 );
setRotateKey( spep_3 -3 + 54, 1, 11.9 );
setRotateKey( spep_3 -3 + 56, 1, 14.5 );
setRotateKey( spep_3 -3 + 58, 1, 17 );
setRotateKey( spep_3 -3 + 60, 1, 19.6 );
setRotateKey( spep_3 -3 + 62, 1, 22.2 );
setRotateKey( spep_3 -3 + 64, 1, 24.7 );
setRotateKey( spep_3 -3 + 66, 1, 27.3 );
setRotateKey( spep_3 -3 + 68, 1, 29.8 );
setRotateKey( spep_3 -3 + 70, 1, 29.8 );

-- ** 音 ** --
--蹴り上げ
SE019 = playSeVer2( spep_3 + 10, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 10, SE019, 76 );
SE020 = playSeVer2( spep_3 + 12, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 12, SE020, 90 );
SE021 = playSeVer2( spep_3 + 12, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 12, SE021, 75 );
SE022 = playSeVer2( spep_3 + 12, 1187, "",spep_3 + 126, 0, 98, -1);
setSeVolumeByWorkId( spep_3 + 12, SE022, 82 );

--瞬間移動
SE023 = playSeVer2( spep_3 + 34, 1109, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_3 + 82, 1109, "", 0, 0, 0, -1);

--敵吹っ飛ぶ
SE024 = playSeVer2( spep_3 + 34, 1183, "",spep_3 + 114, 0, 42, -1);

--画面遷移
SE025 = playSeVer2( spep_3 + 60, 44, "", 0, 0, 0, -1);

--ジャンプ中
SE026 = playSeVer2( spep_3 + 74, 1019, "", 0, 0, 0, -1);

--かめはめ波溜め
SE028 = playSeVer2( spep_3 + 120, 1209, "",spep_3 +176 + 6, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 120, SE028, 76 );
SE029 = playSeVer2( spep_3 + 120, 1210, "",spep_3 +176 + 6, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 120, SE029, 82 );

--ジャンプ中
SE030 = playSeVer2( spep_3 + 138, 1019, "",spep_3 +176 + 8, 0, 6, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_3 + 166, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 176;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_4 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--かめはめ波溜め
SE032 = playSeVer2( spep_4 + 86, 1210, "",spep_4 +94 + 72, 6, 14, -1);
setStartTimeMs( SE032,  1333 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- かめはめ波発射(156F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
effect09 = entryEffectLife( spep_5 + 0, SP_07, 155, 0x100, -1, 0, 0, 0 );  --かめはめ波発射    ef_007
setEffMoveKey( spep_5 + 0, effect09, 0, 0 , 0 );
setEffMoveKey( spep_5 + 155, effect09, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, effect09, 1.0, 1.0 );
setEffScaleKey( spep_5 + 155, effect09, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, effect09, 0 );
setEffRotateKey( spep_5 + 155, effect09, 0 );
setEffAlphaKey( spep_5 + 0, effect09, 255 );
setEffAlphaKey( spep_5 + 155 -1, effect09, 255 );
setEffAlphaKey( spep_5 + 155, effect09, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_5 + 14 -1, 906, 46 -1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 14 -1, shuchusen2, 90, 20 );
setEffMoveKey( spep_5 + 14 -1, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, shuchusen2, 0, 0 , 0 );
setEffScaleKey( spep_5 + 14 -1, shuchusen2, 2.2, 2.0 );
setEffScaleKey( spep_5 + 58, shuchusen2, 2.2, 2.0 );
setEffRotateKey( spep_5 + 14 -1, shuchusen2, 0 );
setEffRotateKey( spep_5 + 58, shuchusen2, 0 );
setEffAlphaKey( spep_5 + 14 -1, shuchusen2, 255 );
setEffAlphaKey( spep_5 + 58, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_5 + 100, 906, 46, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 100, shuchusen3, 90, 20 );
setEffMoveKey( spep_5 + 100, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 146, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_5 + 100, shuchusen3, 2.2, 2.0 );
setEffScaleKey( spep_5 + 146, shuchusen3, 2.2, 2.0 );
setEffRotateKey( spep_5 + 100, shuchusen3, 0 );
setEffRotateKey( spep_5 + 146, shuchusen3, 0 );
setEffAlphaKey( spep_5 + 100, shuchusen3, 0 );
setEffAlphaKey( spep_5 + 122 -2, shuchusen3, 0 );
setEffAlphaKey( spep_5 + 122 -1, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 146, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_5 -3 + 104,  10012, 26, 0x100, -1, 0, 55.9, 269.7 );  --ズオッ
setEffMoveKey( spep_5 -3 + 104, ctzuo, 55.9, 269.7 , 0 );
setEffMoveKey( spep_5 -3 + 106, ctzuo, 101.3, 316.6 , 0 );
setEffMoveKey( spep_5 -3 + 108, ctzuo, 95.6, 314.1 , 0 );
setEffMoveKey( spep_5 -3 + 110, ctzuo, 98.7, 320.4 , 0 );
setEffMoveKey( spep_5 -3 + 112, ctzuo, 92.9, 317.9 , 0 );
setEffMoveKey( spep_5 -3 + 114, ctzuo, 96, 324.2 , 0 );
setEffMoveKey( spep_5 -3 + 116, ctzuo, 90.3, 321.7 , 0 );
setEffMoveKey( spep_5 -3 + 118, ctzuo, 93.4, 328 , 0 );
setEffMoveKey( spep_5 -3 + 120, ctzuo, 87.7, 325.5 , 0 );
setEffMoveKey( spep_5 -3 + 122, ctzuo, 90.8, 331.8 , 0 );
setEffMoveKey( spep_5 -3 + 124, ctzuo, 85, 329.3 , 0 );
setEffMoveKey( spep_5 -3 + 126, ctzuo, 94.4, 338 , 0 );
setEffMoveKey( spep_5 -3 + 128, ctzuo, 94.4, 337.4 , 0 );
setEffMoveKey( spep_5 -3 + 130, ctzuo, 99.1, 341.4 , 0 );
setEffScaleKey( spep_5 -3 + 104, ctzuo, 1.368, 1.368 );
setEffScaleKey( spep_5 -3 + 106, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_5 -3 + 124, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_5 -3 + 126, ctzuo, 2.628, 2.628 );
setEffScaleKey( spep_5 -3 + 128, ctzuo, 2.772, 2.772 );
setEffScaleKey( spep_5 -3 + 130, ctzuo, 2.88, 2.88 );
setEffRotateKey( spep_5 -3 + 104, ctzuo, 28 );
setEffRotateKey( spep_5 -3 + 130, ctzuo, 28 );
setEffAlphaKey( spep_5 -3 + 104, ctzuo, 128 );
setEffAlphaKey( spep_5 -3 + 106, ctzuo, 255 );
setEffAlphaKey( spep_5 -3 + 124, ctzuo, 255 );
setEffAlphaKey( spep_5 -3 + 126, ctzuo, 170 );
setEffAlphaKey( spep_5 -3 + 128, ctzuo, 85 );
setEffAlphaKey( spep_5 -3 + 130, ctzuo, 0 );

-- ** 音 ** --
--かめはめ波発射
SE033 = playSeVer2( spep_5 + 56, 1146, "", 0, 0, 0, 0.6);
SE034 = playSeVer2( spep_5 + 56, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 56, SE034, 80 );
SE035 = playSeVer2( spep_5 + 56, 1022, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_5 + 56, SE035, 86 );

--かめはめ波飛んでく
SE036 = playSeVer2( spep_5 + 100, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_5 + 100, SE036, 195 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 155 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 0, 10 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 148 -1, 10 -1, 1, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 155;


------------------------------------------------------
-- 地面爆発フィニッシュ(166F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
effect11 = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --地面爆発フィニッシュ  ef_008
setEffMoveKey( spep_6 + 0, effect11, 0, 0 , 0 );
setEffMoveKey( spep_6 + 166, effect11, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, effect11, 1.0, 1.0 );
setEffScaleKey( spep_6 + 166, effect11, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, effect11, 0 );
setEffRotateKey( spep_6 + 166, effect11, 0 );
setEffAlphaKey( spep_6 + 0, effect11, 255 );
setEffAlphaKey( spep_6 + 166, effect11, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_6 + 0, 906, 166, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen4, 90, 20 );
setEffMoveKey( spep_6 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 166, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen4, 1.8, 2.0 );
setEffScaleKey( spep_6 + 166, shuchusen4, 1.8, 2.0 );
setEffRotateKey( spep_6 + 0, shuchusen4, 0 );
setEffRotateKey( spep_6 + 166, shuchusen4, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 166, shuchusen4, 255 );

-- ** 音 ** --
--爆発
SE037 = playSeVer2( spep_6 + 0, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 0, SE037, 80 );
SE038 = playSeVer2( spep_6 + 0, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 0, SE038, 95 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 0, 24, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 6 );
endPhase( spep_6 + 156 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 正面突進(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 96, 0x100, -1, 0, 0, 0 );  --正面突進 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 0 );

-- ** 音 ** --
--悟空向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1278, "",spep_0 +136 + 58, 0, 110, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 24 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
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

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 86 -1, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


------------------------------------------------------
-- ラッシュシーン(56F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
rush_f = entryEffectLife( spep_1 + 0, SP_02r, 56, 0x100, -1, 0, 0, 0 );  --ラッシュシーン＿キャラ   ef_002
setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 56, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 56 -1, rush_f, 255 );
setEffAlphaKey( spep_1 + 56, rush_f, 0 );

rush_b = entryEffectLife( spep_1 + 0, SP_03, 56, 0x80, -1, 0, 0, 0 );  --ラッシュシーン＿背景 ef_003
setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 56, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 56 -1, rush_b, 255 );
setEffAlphaKey( spep_1 + 56, rush_b, 0 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_1 -3 + 24,  10020, 16, 0x100, -1, 0, 11.9, 292.8 );  --バキッ
setEffMoveKey( spep_1 -3 + 24, ctbaki, 11.9, 292.8 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctbaki, 8.6, 310.7 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctbaki, 23.7, 315.2 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctbaki, 12, 323.1 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctbaki, 23.9, 313.8 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctbaki, 11.8, 321.9 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctbaki, 24.1, 312.4 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctbaki, 11.4, 336.1 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctbaki, 11.1, 350.9 , 0 );
setEffScaleKey( spep_1 -3 + 24, ctbaki, 1, 1 );
setEffScaleKey( spep_1 -3 + 26, ctbaki, 1.35, 1.35 );
setEffScaleKey( spep_1 -3 + 28, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_1 -3 + 30, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_1 -3 + 32, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 -3 + 34, ctbaki, 1.77, 1.77 );
setEffScaleKey( spep_1 -3 + 36, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1 -3 + 38, ctbaki, 1.97, 1.97 );
setEffScaleKey( spep_1 -3 + 40, ctbaki, 2.15, 2.15 );
setEffRotateKey( spep_1 -3 + 24, ctbaki, -9 );
setEffRotateKey( spep_1 -3 + 40, ctbaki, -9 );
setEffAlphaKey( spep_1 -3 + 24, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 36, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 38, ctbaki, 128 );
setEffAlphaKey( spep_1 -3 + 40, ctbaki, 0 );

ctga1 = entryEffectLife( spep_1 -3 + 40,  10005, 16, 0x100, -1, 0, -13.7, 256.8 );  --ガッ
setEffMoveKey( spep_1 -3 + 40, ctga1, -13.7, 256.8 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctga1, 6.2, 279.3 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctga1, 32.2, 292.7 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctga1, 30.7, 298.5 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctga1, 37.1, 292.7 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctga1, 35.5, 298.7 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctga1, 42, 292.7 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctga1, 47.2, 312 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctga1, 56.4, 325.2 , 0 );
setEffScaleKey( spep_1 -3 + 40, ctga1, 0.72, 0.72 );
setEffScaleKey( spep_1 -3 + 42, ctga1, 0.97, 0.97 );
setEffScaleKey( spep_1 -3 + 44, ctga1, 1.22, 1.22 );
setEffScaleKey( spep_1 -3 + 46, ctga1, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 48, ctga1, 1.26, 1.26 );
setEffScaleKey( spep_1 -3 + 50, ctga1, 1.28, 1.28 );
setEffScaleKey( spep_1 -3 + 52, ctga1, 1.3, 1.3 );
setEffScaleKey( spep_1 -3 + 54, ctga1, 1.42, 1.42 );
setEffScaleKey( spep_1 -3 + 56, ctga1, 1.55, 1.55 );
setEffRotateKey( spep_1 -3 + 40, ctga1, 11.2 );
setEffRotateKey( spep_1 -3 + 56, ctga1, 11.2 );
setEffAlphaKey( spep_1 -3 + 40, ctga1, 255 );
setEffAlphaKey( spep_1 -3 + 52, ctga1, 255 );
setEffAlphaKey( spep_1 -3 + 54, ctga1, 128 );
setEffAlphaKey( spep_1 -3 + 56, ctga1, 0 );

ctga2 = entryEffectLife( spep_1 -3 + 50,  10005, 8, 0x100, -1, 0, 54, 204.7 );  --ガッ
setEffMoveKey( spep_1 -3 + 50, ctga2, 54, 204.7 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctga2, 70.1, 222.9 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctga2, 91.1, 233.8 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctga2, 90, 238.6 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctga2, 95.1, 233.8 , 0 );
setEffScaleKey( spep_1 -3 + 50, ctga2, 0.58, 0.58 );
setEffScaleKey( spep_1 -3 + 52, ctga2, 0.79, 0.79 );
setEffScaleKey( spep_1 -3 + 54, ctga2, 0.99, 0.99 );
setEffScaleKey( spep_1 -3 + 56, ctga2, 1.01, 1.01 );
setEffScaleKey( spep_1 -3 + 58, ctga2, 1.02, 1.02 );
setEffRotateKey( spep_1 -3 + 50, ctga2, 11.2 );
setEffRotateKey( spep_1 -3 + 54, ctga2, 11.2 );
setEffRotateKey( spep_1 -3 + 56, ctga2, 11.1 );
setEffRotateKey( spep_1 -3 + 58, ctga2, 11 );
setEffAlphaKey( spep_1 -3 + 50, ctga2, 255 );
setEffAlphaKey( spep_1 -3 + 58, ctga2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 59, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 -3 + 24, 1, 106 );
changeAnime( spep_1 -3 + 38, 1, 108 );
changeAnime( spep_1 -3 + 50, 1, 106 );

setMoveKey( spep_1 + 0, 1, 597.5, 45.3 , 0 );
setMoveKey( spep_1 + 1, 1, 551.5, 45.3 , 0 );
setMoveKey( spep_1 + 2, 1, 505.5, 45.3 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 459.5, 45.3 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 413.5, 45.3 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 367.5, 45.3 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 321.5, 45.3 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 275.4, 45.3 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 229.4, 45.3 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 183.4, 45.3 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 137.4, 45.3 , 0 );
setMoveKey( spep_1 -3 + 23, 1, 91.4, 45.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 67, 46 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 70, 48.6 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 77.3, 43.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 81.7, 51.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 87.7, 52.5 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 93.8, 53.8 , 0 );
setMoveKey( spep_1 -3 + 37, 1, 100, 55.1 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 96.3, 47.6 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 101.5, 47.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 106.8, 47.8 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 112, 47.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 117.3, 48 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 122.6, 48.2 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 70.2, 62.8 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 76, 62.8 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 81.7, 62.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 87.5, 62.8 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 93.2, 62.8 , 0 );
setMoveKey( spep_1 -3 + 59, 1, 93.2, 62.8 , 0 );

setScaleKey( spep_1 -3 + 0, 1, 1.694, 1.694 );
setScaleKey( spep_1 -3 + 37, 1, 1.694, 1.694 );
setScaleKey( spep_1 -3 + 38, 1, 2.0815, 2.0815 );
setScaleKey( spep_1 -3 + 49, 1, 2.0815, 2.0815 );
setScaleKey( spep_1 -3 + 50, 1, 1.694, 1.694 );
setScaleKey( spep_1 -3 + 59, 1, 1.694, 1.694 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 23, 1, 0 );
setRotateKey( spep_1 -3 + 24, 1, -45 );
setRotateKey( spep_1 -3 + 26, 1, -44.2 );
setRotateKey( spep_1 -3 + 28, 1, -43.4 );
setRotateKey( spep_1 -3 + 30, 1, -42.5 );
setRotateKey( spep_1 -3 + 32, 1, -41.7 );
setRotateKey( spep_1 -3 + 34, 1, -40.9 );
setRotateKey( spep_1 -3 + 37, 1, -40.1 );
setRotateKey( spep_1 -3 + 38, 1, 1.8 );
setRotateKey( spep_1 -3 + 49, 1, 1.8 );
setRotateKey( spep_1 -3 + 50, 1, -40.1 );
setRotateKey( spep_1 -3 + 59, 1, -40.1 );

-- ** 音 ** --
--横向きラッシュ
SE005 = playSeVer2( spep_1 + 16, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 20, 1009, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 22, 1110, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 34, 1110, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 46, 1010, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 48, 1110, "", 0, 0, 0, -1);

--正面ラッシュ
SE011 = playSeVer2( spep_1 + 54, 1003, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 6 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;


------------------------------------------------------
-- 正面向きパンチ連打(86F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
punch = entryEffectLife( spep_2 + 0, SP_04, 86, 0x100, -1, 0, 0, 0 );  --正面向きパンチ連打  ef_004
setEffMoveKey( spep_2 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, punch, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch, -1.0, 1.0 );
setEffScaleKey( spep_2 + 86, punch, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch, 0 );
setEffRotateKey( spep_2 + 86, punch, 0 );
setEffAlphaKey( spep_2 + 0, punch, 255 );
setEffAlphaKey( spep_2 + 86 -1, punch, 255 );
setEffAlphaKey( spep_2 + 86, punch, 0 );

-- ** 音 ** --
--正面ラッシュ
SE012 = playSeVer2( spep_2 + 4, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 4, 1187, "",spep_2 + 44, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 4, SE013, 79 );
SE014 = playSeVer2( spep_2 + 22, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 22, 1187, "",spep_2 + 64, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 22, SE015, 85 );
SE016 = playSeVer2( spep_2 + 50, 1189, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 56, 1009, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 56, 1187, "",spep_2 +136 + 84, 0, 98, -1);
setSeVolumeByWorkId( spep_2 + 56, SE018, 89 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;


------------------------------------------------------
-- 蹴り飛ばし→かめはめ波溜め(176F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_3 + 0, SP_05r, 176, 0x100, -1, 0, 0, 0 );  --蹴り飛ばし→かめはめ波溜め_キャラ    ef_005
setEffMoveKey( spep_3 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 176, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame_f, 0 );
setEffRotateKey( spep_3 + 176, tame_f, 0 );
setEffAlphaKey( spep_3 + 0, tame_f, 255 );
setEffAlphaKey( spep_3 + 176 -1, tame_f, 255 );
setEffAlphaKey( spep_3 + 176, tame_f, 0 );

tame_b = entryEffectLife( spep_3 + 0, SP_06, 176, 0x80, -1, 0, 0, 0 );  --蹴り飛ばし→かめはめ波溜め_背景  ef_006
setEffMoveKey( spep_3 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 176, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame_b, 0 );
setEffRotateKey( spep_3 + 176, tame_b, 0 );
setEffAlphaKey( spep_3 + 0, tame_b, 255 );
setEffAlphaKey( spep_3 + 176 -1, tame_b, 255 );
setEffAlphaKey( spep_3 + 176, tame_b, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_3 + 0, 906, 32, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen1, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 32, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen1, 2.2, 2.0 );
setEffScaleKey( spep_3 + 32, shuchusen1, 2.2, 2.0 );
setEffRotateKey( spep_3 + 0, shuchusen1, 0 );
setEffRotateKey( spep_3 + 32, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 12 -2, shuchusen1, 0 );
setEffAlphaKey( spep_3 + 12 -1, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 32, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_3 -3 + 14,  10018, 22, 0x100, -1, 0, -30.1, 233.4 );    --ドゴォンッ
setEffMoveKey( spep_3 -3 + 14, ctdogon, -30.1, 233.4 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctdogon, -60.3, 339.9 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctdogon, -58.5, 338.1 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctdogon, -62.6, 338.8 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctdogon, -59.4, 338.5 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctdogon, -60.8, 339.3 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctdogon, -59.6, 338.9 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctdogon, -66.1, 346.2 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctdogon, -68.4, 352.5 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctdogon, -74.9, 359.8 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctdogon, -79.8, 376.8 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctdogon, -89.3, 394.8 , 0 );
setEffScaleKey( spep_3 -3 + 14, ctdogon, 1.06, 1.06 );
setEffScaleKey( spep_3 -3 + 16, ctdogon, 2.28, 2.28 );
setEffScaleKey( spep_3 -3 + 18, ctdogon, 2.89, 2.89 );
setEffScaleKey( spep_3 -3 + 20, ctdogon, 2.75, 2.75 );
setEffScaleKey( spep_3 -3 + 22, ctdogon, 2.61, 2.61 );
setEffScaleKey( spep_3 -3 + 24, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_3 -3 + 26, ctdogon, 2.34, 2.34 );
setEffScaleKey( spep_3 -3 + 28, ctdogon, 2.34, 2.34 );
setEffScaleKey( spep_3 -3 + 30, ctdogon, 2.33, 2.33 );
setEffScaleKey( spep_3 -3 + 32, ctdogon, 2.33, 2.33 );
setEffScaleKey( spep_3 -3 + 34, ctdogon, 2.62, 2.62 );
setEffScaleKey( spep_3 -3 + 36, ctdogon, 2.9, 2.9 );
setEffRotateKey( spep_3 -3 + 14, ctdogon, -20.7 );
setEffRotateKey( spep_3 -3 + 16, ctdogon, -34.1 );
setEffRotateKey( spep_3 -3 + 18, ctdogon, -26.7 );
setEffRotateKey( spep_3 -3 + 20, ctdogon, -12.2 );
setEffRotateKey( spep_3 -3 + 22, ctdogon, -20.9 );
setEffRotateKey( spep_3 -3 + 24, ctdogon, -31.6 );
setEffRotateKey( spep_3 -3 + 26, ctdogon, -20.7 );
setEffRotateKey( spep_3 -3 + 28, ctdogon, -20.7 );
setEffRotateKey( spep_3 -3 + 30, ctdogon, -20.6 );
setEffRotateKey( spep_3 -3 + 34, ctdogon, -20.6 );
setEffRotateKey( spep_3 -3 + 36, ctdogon, -20.7 );
setEffAlphaKey( spep_3 -3 + 14, ctdogon, 255 );
setEffAlphaKey( spep_3 -3 + 32, ctdogon, 255 );
setEffAlphaKey( spep_3 -3 + 34, ctdogon, 128 );
setEffAlphaKey( spep_3 -3 + 36, ctdogon, 0 );

ctsyun1 = entryEffectLife( spep_3 -3 + 30,  10011, 22, 0x100, -1, 0, -22.3, -255.6 );   --シュンッ
setEffMoveKey( spep_3 -3 + 30, ctsyun1, -22.3, -255.6 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctsyun1, -22.3, -198.8 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctsyun1, -22.3, -196.6 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctsyun1, -22.3, -194.5 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctsyun1, -22.3, -192.4 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctsyun1, -22.3, -190.3 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctsyun1, -22.3, -188.1 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctsyun1, -22.3, -186 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctsyun1, -22.3, -183.9 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctsyun1, -22.3, -181.8 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctsyun1, -22.3, -121.9 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctsyun1, -22.3, -62.1 , 0 );
setEffScaleKey( spep_3 -3 + 30, ctsyun1, 2.09, 2.08 );
setEffScaleKey( spep_3 -3 + 32, ctsyun1, 2.17, 2.15 );
setEffScaleKey( spep_3 -3 + 48, ctsyun1, 2.17, 2.15 );
setEffScaleKey( spep_3 -3 + 50, ctsyun1, 2.53, 2.51 );
setEffScaleKey( spep_3 -3 + 52, ctsyun1, 2.89, 2.87 );
setEffRotateKey( spep_3 -3 + 30, ctsyun1, 0 );
setEffRotateKey( spep_3 -3 + 52, ctsyun1, 0 );
setEffAlphaKey( spep_3 -3 + 30, ctsyun1, 128 );
setEffAlphaKey( spep_3 -3 + 32, ctsyun1, 255 );
setEffAlphaKey( spep_3 -3 + 48, ctsyun1, 255 );
setEffAlphaKey( spep_3 -3 + 50, ctsyun1, 128 );
setEffAlphaKey( spep_3 -3 + 52, ctsyun1, 0 );

ctsyun2 = entryEffectLife( spep_3 -3 + 102,  10011, 30, 0x100, -1, 0, 25.2, -193 ); --シュンッ
setEffMoveKey( spep_3 -3 + 102, ctsyun2, 25.2, -193 , 0 );
setEffMoveKey( spep_3 -3 + 104, ctsyun2, 25.2, -136.3 , 0 );
setEffMoveKey( spep_3 -3 + 106, ctsyun2, 25.2, -133.4 , 0 );
setEffMoveKey( spep_3 -3 + 108, ctsyun2, 25.2, -130.6 , 0 );
setEffMoveKey( spep_3 -3 + 110, ctsyun2, 25.2, -127.8 , 0 );
setEffMoveKey( spep_3 -3 + 112, ctsyun2, 25.2, -124.9 , 0 );
setEffMoveKey( spep_3 -3 + 114, ctsyun2, 25.2, -122.1 , 0 );
setEffMoveKey( spep_3 -3 + 116, ctsyun2, 25.2, -119.3 , 0 );
setEffMoveKey( spep_3 -3 + 118, ctsyun2, 25.2, -116.4 , 0 );
setEffMoveKey( spep_3 -3 + 120, ctsyun2, 25.2, -113.6 , 0 );
setEffMoveKey( spep_3 -3 + 122, ctsyun2, 25.2, -110.8 , 0 );
setEffMoveKey( spep_3 -3 + 124, ctsyun2, 25.2, -107.9 , 0 );
setEffMoveKey( spep_3 -3 + 126, ctsyun2, 25.2, -105.1 , 0 );
setEffMoveKey( spep_3 -3 + 128, ctsyun2, 25.2, -102.3 , 0 );
setEffMoveKey( spep_3 -3 + 130, ctsyun2, 25.2, -42.4 , 0 );
setEffMoveKey( spep_3 -3 + 132, ctsyun2, 25.2, 17.4 , 0 );
setEffScaleKey( spep_3 -3 + 102, ctsyun2, 2.17, 2.15 );
setEffScaleKey( spep_3 -3 + 128, ctsyun2, 2.17, 2.15 );
setEffScaleKey( spep_3 -3 + 130, ctsyun2, 2.53, 2.51 );
setEffScaleKey( spep_3 -3 + 132, ctsyun2, 2.89, 2.87 );
setEffRotateKey( spep_3 -3 + 102, ctsyun2, 0 );
setEffRotateKey( spep_3 -3 + 132, ctsyun2, 0 );
setEffAlphaKey( spep_3 -3 + 102, ctsyun2, 128 );
setEffAlphaKey( spep_3 -3 + 104, ctsyun2, 255 );
setEffAlphaKey( spep_3 -3 + 128, ctsyun2, 255 );
setEffAlphaKey( spep_3 -3 + 130, ctsyun2, 128 );
setEffAlphaKey( spep_3 -3 + 132, ctsyun2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 70, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 -3 + 14, 1, 108 );

setMoveKey( spep_3 + 0, 1, 86.3, -19.8 , 0 );
setMoveKey( spep_3 + 1, 1, 87.5, -13.6 , 0 );
setMoveKey( spep_3 + 2, 1, 89, -6.1 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 90.9, 3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 93.1, 13.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 95.7, 26.3 , 0 );
setMoveKey( spep_3 -3 + 13, 1, 98.7, 40.8 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 199.9, 91.5 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 171.8, 70.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 144.1, 66.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 156.5, 67.5 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 167.1, 83.9 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 159.8, 69.4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 168, 85.8 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 160.7, 71.2 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 168.9, 87.7 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 161.5, 73.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 169.7, 89.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 162.4, 74.9 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 170.6, 91.3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 163.4, 76.9 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 175.5, 78.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 175.9, 56.7 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 184.3, 50.7 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 184.7, 28.7 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 193.2, 22.6 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 193.6, 0.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 202.1, -5.7 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 202.5, -27.9 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 211, -34.1 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 211.4, -56.3 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 219.9, -62.4 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 220.3, -84.6 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 228.7, -90.6 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 228.9, -112.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 228.9, -112.6 , 0 );

setScaleKey( spep_3 + 0, 1, 2.178, 2.178 );
setScaleKey( spep_3 -3 + 13, 1, 2.178, 2.178 );
setScaleKey( spep_3 -3 + 14, 1, 2.772, 2.772 );
setScaleKey( spep_3 -3 + 40, 1, 2.772, 2.772 );
setScaleKey( spep_3 -3 + 42, 1, 2.585, 2.585 );
setScaleKey( spep_3 -3 + 44, 1, 2.398, 2.398 );
setScaleKey( spep_3 -3 + 46, 1, 2.211, 2.211 );
setScaleKey( spep_3 -3 + 48, 1, 2.024, 2.024 );
setScaleKey( spep_3 -3 + 50, 1, 1.837, 1.837 );
setScaleKey( spep_3 -3 + 52, 1, 1.639, 1.639 );
setScaleKey( spep_3 -3 + 54, 1, 1.452, 1.452 );
setScaleKey( spep_3 -3 + 56, 1, 1.265, 1.265 );
setScaleKey( spep_3 -3 + 58, 1, 1.078, 1.078 );
setScaleKey( spep_3 -3 + 60, 1, 0.880, 0.880 );
setScaleKey( spep_3 -3 + 62, 1, 0.693, 0.693 );
setScaleKey( spep_3 -3 + 64, 1, 0.506, 0.506 );
setScaleKey( spep_3 -3 + 66, 1, 0.319, 0.319 );
setScaleKey( spep_3 -3 + 68, 1, 0.132, 0.132 );
setScaleKey( spep_3 -3 + 70, 1, 0.132, 0.132 );

setRotateKey( spep_3 + 0, 1, -51 );
setRotateKey( spep_3 + 1, 1, -49.9 );
setRotateKey( spep_3 + 2, 1, -48.5 );
setRotateKey( spep_3 -3 + 6, 1, -46.9 );
setRotateKey( spep_3 -3 + 8, 1, -44.9 );
setRotateKey( spep_3 -3 + 10, 1, -42.6 );
setRotateKey( spep_3 -3 + 13, 1, -40 );
setRotateKey( spep_3 -3 + 14, 1, -6 );
setRotateKey( spep_3 -3 + 40, 1, -6 );
setRotateKey( spep_3 -3 + 42, 1, -3.5 );
setRotateKey( spep_3 -3 + 44, 1, -0.9 );
setRotateKey( spep_3 -3 + 46, 1, 1.6 );
setRotateKey( spep_3 -3 + 48, 1, 4.2 );
setRotateKey( spep_3 -3 + 50, 1, 6.7 );
setRotateKey( spep_3 -3 + 52, 1, 9.3 );
setRotateKey( spep_3 -3 + 54, 1, 11.9 );
setRotateKey( spep_3 -3 + 56, 1, 14.5 );
setRotateKey( spep_3 -3 + 58, 1, 17 );
setRotateKey( spep_3 -3 + 60, 1, 19.6 );
setRotateKey( spep_3 -3 + 62, 1, 22.2 );
setRotateKey( spep_3 -3 + 64, 1, 24.7 );
setRotateKey( spep_3 -3 + 66, 1, 27.3 );
setRotateKey( spep_3 -3 + 68, 1, 29.8 );
setRotateKey( spep_3 -3 + 70, 1, 29.8 );

-- ** 音 ** --
--蹴り上げ
SE019 = playSeVer2( spep_3 + 10, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 10, SE019, 76 );
SE020 = playSeVer2( spep_3 + 12, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 12, SE020, 90 );
SE021 = playSeVer2( spep_3 + 12, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 12, SE021, 75 );
SE022 = playSeVer2( spep_3 + 12, 1187, "",spep_3 + 126, 0, 98, -1);
setSeVolumeByWorkId( spep_3 + 12, SE022, 82 );

--瞬間移動
SE023 = playSeVer2( spep_3 + 34, 1109, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_3 + 82, 1109, "", 0, 0, 0, -1);

--敵吹っ飛ぶ
SE024 = playSeVer2( spep_3 + 34, 1183, "",spep_3 + 114, 0, 42, -1);

--画面遷移
SE025 = playSeVer2( spep_3 + 60, 44, "", 0, 0, 0, -1);

--ジャンプ中
SE026 = playSeVer2( spep_3 + 74, 1019, "", 0, 0, 0, -1);

--かめはめ波溜め
SE028 = playSeVer2( spep_3 + 120, 1209, "",spep_3 +176 + 6, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 120, SE028, 76 );
SE029 = playSeVer2( spep_3 + 120, 1210, "",spep_3 +176 + 6, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 120, SE029, 82 );

--ジャンプ中
SE030 = playSeVer2( spep_3 + 138, 1019, "",spep_3 +176 + 8, 0, 6, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_3 + 166, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 176;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_4 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--かめはめ波溜め
SE032 = playSeVer2( spep_4 + 86, 1210, "",spep_4 +94 + 72, 6, 14, -1);
setStartTimeMs( SE032,  1333 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- かめはめ波発射(156F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
effect09 = entryEffectLife( spep_5 + 0, SP_07, 155, 0x100, -1, 0, 0, 0 );  --かめはめ波発射    ef_007
setEffMoveKey( spep_5 + 0, effect09, 0, 0 , 0 );
setEffMoveKey( spep_5 + 155, effect09, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, effect09, -1.0, 1.0 );
setEffScaleKey( spep_5 + 155, effect09, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, effect09, 0 );
setEffRotateKey( spep_5 + 155, effect09, 0 );
setEffAlphaKey( spep_5 + 0, effect09, 255 );
setEffAlphaKey( spep_5 + 155 -1, effect09, 255 );
setEffAlphaKey( spep_5 + 155, effect09, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_5 + 14 -1, 906, 46 -1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 14 -1, shuchusen2, 90, 20 );
setEffMoveKey( spep_5 + 14 -1, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, shuchusen2, 0, 0 , 0 );
setEffScaleKey( spep_5 + 14 -1, shuchusen2, 2.2, 2.0 );
setEffScaleKey( spep_5 + 58, shuchusen2, 2.2, 2.0 );
setEffRotateKey( spep_5 + 14 -1, shuchusen2, 0 );
setEffRotateKey( spep_5 + 58, shuchusen2, 0 );
setEffAlphaKey( spep_5 + 14 -1, shuchusen2, 255 );
setEffAlphaKey( spep_5 + 58, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_5 + 100, 906, 46, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 100, shuchusen3, 90, 20 );
setEffMoveKey( spep_5 + 100, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 146, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_5 + 100, shuchusen3, 2.2, 2.0 );
setEffScaleKey( spep_5 + 146, shuchusen3, 2.2, 2.0 );
setEffRotateKey( spep_5 + 100, shuchusen3, 0 );
setEffRotateKey( spep_5 + 146, shuchusen3, 0 );
setEffAlphaKey( spep_5 + 100, shuchusen3, 0 );
setEffAlphaKey( spep_5 + 122 -2, shuchusen3, 0 );
setEffAlphaKey( spep_5 + 122 -1, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 146, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_5 -3 + 104,  10012, 26, 0x100, -1, 0, 55.9, 269.7 );  --ズオッ
setEffMoveKey( spep_5 -3 + 104, ctzuo, 55.9, 269.7 , 0 );
setEffMoveKey( spep_5 -3 + 106, ctzuo, 101.3, 316.6 , 0 );
setEffMoveKey( spep_5 -3 + 108, ctzuo, 95.6, 314.1 , 0 );
setEffMoveKey( spep_5 -3 + 110, ctzuo, 98.7, 320.4 , 0 );
setEffMoveKey( spep_5 -3 + 112, ctzuo, 92.9, 317.9 , 0 );
setEffMoveKey( spep_5 -3 + 114, ctzuo, 96, 324.2 , 0 );
setEffMoveKey( spep_5 -3 + 116, ctzuo, 90.3, 321.7 , 0 );
setEffMoveKey( spep_5 -3 + 118, ctzuo, 93.4, 328 , 0 );
setEffMoveKey( spep_5 -3 + 120, ctzuo, 87.7, 325.5 , 0 );
setEffMoveKey( spep_5 -3 + 122, ctzuo, 90.8, 331.8 , 0 );
setEffMoveKey( spep_5 -3 + 124, ctzuo, 85, 329.3 , 0 );
setEffMoveKey( spep_5 -3 + 126, ctzuo, 94.4, 338 , 0 );
setEffMoveKey( spep_5 -3 + 128, ctzuo, 94.4, 337.4 , 0 );
setEffMoveKey( spep_5 -3 + 130, ctzuo, 99.1, 341.4 , 0 );
setEffScaleKey( spep_5 -3 + 104, ctzuo, 1.368, 1.368 );
setEffScaleKey( spep_5 -3 + 106, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_5 -3 + 124, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_5 -3 + 126, ctzuo, 2.628, 2.628 );
setEffScaleKey( spep_5 -3 + 128, ctzuo, 2.772, 2.772 );
setEffScaleKey( spep_5 -3 + 130, ctzuo, 2.88, 2.88 );
setEffRotateKey( spep_5 -3 + 104, ctzuo, 28 );
setEffRotateKey( spep_5 -3 + 130, ctzuo, 28 );
setEffAlphaKey( spep_5 -3 + 104, ctzuo, 128 );
setEffAlphaKey( spep_5 -3 + 106, ctzuo, 255 );
setEffAlphaKey( spep_5 -3 + 124, ctzuo, 255 );
setEffAlphaKey( spep_5 -3 + 126, ctzuo, 170 );
setEffAlphaKey( spep_5 -3 + 128, ctzuo, 85 );
setEffAlphaKey( spep_5 -3 + 130, ctzuo, 0 );

-- ** 音 ** --
--かめはめ波発射
SE033 = playSeVer2( spep_5 + 56, 1146, "", 0, 0, 0, 0.6);
SE034 = playSeVer2( spep_5 + 56, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 56, SE034, 80 );
SE035 = playSeVer2( spep_5 + 56, 1022, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_5 + 56, SE035, 86 );

--かめはめ波飛んでく
SE036 = playSeVer2( spep_5 + 100, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_5 + 100, SE036, 195 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 155 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 0, 10 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 148 -1, 10 -1, 1, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 155;


------------------------------------------------------
-- 地面爆発フィニッシュ(166F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
effect11 = entryEffect( spep_6 + 0, SP_08r, 0x100, -1, 0, 0, 0 );  --地面爆発フィニッシュ  ef_008
setEffMoveKey( spep_6 + 0, effect11, 0, 0 , 0 );
setEffMoveKey( spep_6 + 166, effect11, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, effect11, 1.0, 1.0 );
setEffScaleKey( spep_6 + 166, effect11, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, effect11, 0 );
setEffRotateKey( spep_6 + 166, effect11, 0 );
setEffAlphaKey( spep_6 + 0, effect11, 255 );
setEffAlphaKey( spep_6 + 166, effect11, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_6 + 0, 906, 166, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen4, 90, 20 );
setEffMoveKey( spep_6 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 166, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen4, 1.8, 2.0 );
setEffScaleKey( spep_6 + 166, shuchusen4, 1.8, 2.0 );
setEffRotateKey( spep_6 + 0, shuchusen4, 0 );
setEffRotateKey( spep_6 + 166, shuchusen4, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 166, shuchusen4, 255 );

-- ** 音 ** --
--爆発
SE037 = playSeVer2( spep_6 + 0, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 0, SE037, 80 );
SE038 = playSeVer2( spep_6 + 0, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 0, SE038, 95 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 0, 24, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 6 );
endPhase( spep_6 + 156 );

end