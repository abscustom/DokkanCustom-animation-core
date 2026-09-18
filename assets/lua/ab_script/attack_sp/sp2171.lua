--1021750:ベジータ(幼年期)_爆発波_sp2171
--sp_effect_a3_00077

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
SP_01 = 157081;  --睨むベジータ   ef_001
SP_02 = 157082;  --瞬間移動するベジータ   ef_002
SP_03 = 157083;  --アッパーからの気を爆発させる   ef_003_front
SP_04 = 157084;  --アッパーからの気を爆発させる   ef_003_back
SP_05 = 157085;  --フィニッシュ   ef_004_front
SP_06 = 157086;  --フィニッシュ   ef_004_back

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
-- 睨むベジータ(124F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --睨むベジータ   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 124, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 124, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 124, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 124, first_f, 255 );

spep_x = spep_0 + 32;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -120, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -120, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -120, 515.5 , 0 );
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
SE001 = playSe( spep_0 + 0, 1072,"",0.6  ); 

--入り
SE002 = playSe( spep_0 + 16, 8 );
setSeVolumeByWorkId( spep_0 + 16, SE002, 78 );

--顔カットイン
SE003 = playSe( spep_0 + 36, 1018 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 124 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 124;


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
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96 -2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 瞬間移動するベジータ(56F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
move = entryEffectLife( spep_2 + 0, SP_02, 56, 0x100, -1, 0, 0, 0 );  --瞬間移動するベジータ  ef_002
setEffMoveKey( spep_2 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, move, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, move, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, move, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, move, 0 );
setEffRotateKey( spep_2 + 56, move, 0 );
setEffAlphaKey( spep_2 + 0, move, 255 );
setEffAlphaKey( spep_2 + 56 -1, move, 255 );
setEffAlphaKey( spep_2 + 56, move, 0 );

-- ** 音 ** --
--瞬間移動
SE005 = playSe( spep_2 + 28, 1109 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;


------------------------------------------------------
-- アッパーからの気を爆発させる(180F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
upper_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --アッパーからの気を爆発させる   ef_003_front
setEffMoveKey( spep_3 + 0, upper_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 180, upper_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, upper_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, upper_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, upper_f, 0 );
setEffRotateKey( spep_3 + 180, upper_f, 0 );
setEffAlphaKey( spep_3 + 0, upper_f, 255 );
setEffAlphaKey( spep_3 + 180, upper_f, 255 );

upper_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --アッパーからの気を爆発させる    ef_003_back
setEffMoveKey( spep_3 + 0, upper_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 180, upper_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, upper_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, upper_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, upper_b, 0 );
setEffRotateKey( spep_3 + 180, upper_b, 0 );
setEffAlphaKey( spep_3 + 0, upper_b, 255 );
setEffAlphaKey( spep_3 + 180, upper_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 100 );

a=30;

setMoveKey( spep_3 + 0, 1, 53.5, -81.5+a , 0 );
--setMoveKey( spep_3-3 + 2, 1, 68.8, -78.5 , 0 );
setMoveKey( spep_3-3 + 4, 1, 84.1, -75.6+a , 0 );
setMoveKey( spep_3-3 + 6, 1, 91, -74.3+a , 0 );
setMoveKey( spep_3-3 + 8, 1, 97.9, -72.9+a , 0 );
setMoveKey( spep_3-3 + 10, 1, 100.9, -72.4+a , 0 );
setMoveKey( spep_3-3 + 12, 1, 103.9, -71.8+a , 0 );
setMoveKey( spep_3-3 + 14, 1, 107, -71.2+a , 0 );
setMoveKey( spep_3-3 + 16, 1, 107.3, -71.1+a , 0 );

setScaleKey( spep_3 + 0, 1,1.57,1.57);
setScaleKey( spep_3-3 + 4, 1,2.4,2.4);
setScaleKey( spep_3-3 + 6, 1,2.63,2.63);
setScaleKey( spep_3-3 + 8, 1,2.86,2.86);
setScaleKey( spep_3-3 + 10, 1, 2.93,2.93);
setScaleKey( spep_3-3 + 12, 1, 3.01,3.01);
setScaleKey( spep_3-3 + 14, 1, 3.08,3.08);
setScaleKey( spep_3-3 + 16, 1, 3.094,3.094);


setRotateKey( spep_3 + 0, 1, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 107.3, -71.1+a , 0 );
    setMoveKey( SP_dodge + 2, 1, 107.5, -71.1+a , 0 );
    setMoveKey( SP_dodge + 4, 1, 107.8, -71+a , 0 );
    setMoveKey( SP_dodge + 6, 1, 108.1, -71+a , 0 );
    setMoveKey( SP_dodge + 8, 1, 108.3, -71+a , 0 );
    setMoveKey( SP_dodge + 10, 1, 108.6, -70.9+a , 0 );

    setScaleKey( SP_dodge + 0, 1, 3.094,3.094);
    setScaleKey( SP_dodge + 2, 1, 3.108,3.108);
    setScaleKey( SP_dodge + 4, 1, 3.122,3.122);
    setScaleKey( SP_dodge + 6, 1, 3.136,3.136);
    setScaleKey( SP_dodge + 8, 1, 3.15,3.15);
    setScaleKey( SP_dodge + 10, 1, 3.15,3.15);

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

-- ** 敵キャラクター ** --
changeAnime( spep_3 -3 + 40, 1, 106 );
changeAnime( spep_3 -3 + 104, 1, 108 );

setMoveKey( spep_3-3 + 18, 1, 107.5, -71.1+a , 0 );
setMoveKey( spep_3-3 + 20, 1, 107.8, -71+a , 0 );
setMoveKey( spep_3-3 + 22, 1, 108.1, -71+a , 0 );
setMoveKey( spep_3-3 + 24, 1, 108.3, -71+a , 0 );
setMoveKey( spep_3-3 + 26, 1, 108.6, -70.9+a , 0 );
setMoveKey( spep_3-3 + 28, 1, 108.8, -70.9+a , 0 );
setMoveKey( spep_3-3 + 30, 1, 109.1, -70.8+a , 0 );
setMoveKey( spep_3-3 + 32, 1, 109.3, -70.7+a , 0 );
setMoveKey( spep_3-3 + 34, 1, 109.6, -70.7+a , 0 );
setMoveKey( spep_3-3 + 36, 1, 109.8, -70.6+a , 0 );
setMoveKey( spep_3-3 + 39, 1, 110.1, -70.6+a , 0 );
setMoveKey( spep_3-3 + 40, 1, 77.5, 4.8+a , 0 );
setMoveKey( spep_3-3 + 42, 1, 77.7, 1.2+a , 0 );
setMoveKey( spep_3-3 + 44, 1, 93.9, 9.6+a , 0 );
setMoveKey( spep_3-3 + 46, 1, 78, 40.4+a , 0 );
setMoveKey( spep_3-3 + 48, 1, 34.3, 43.1+a , 0 );
setMoveKey( spep_3-3 + 50, 1, 78.4, 45.7+a , 0 );
setMoveKey( spep_3-3 + 52, 1, 114.6, 56.3+a , 0 );
setMoveKey( spep_3-3 + 54, 1, 78.8, 50.7+a , 0 );
setMoveKey( spep_3-3 + 56, 1, 79, 55+a , 0 );
setMoveKey( spep_3-3 + 58, 1, 79.1, 53.4+a , 0 );
setMoveKey( spep_3-3 + 60, 1, 79.3, 59.6+a , 0 );
setMoveKey( spep_3-3 + 62, 1, 79.5, 57.7+a , 0 );
setMoveKey( spep_3-3 + 64, 1, 79.6, 61.8+a , 0 );
setMoveKey( spep_3-3 + 66, 1, 79.6, 63.2+a , 0 );
setMoveKey( spep_3-3 + 68, 1, 79.5, 64.6+a , 0 );
setMoveKey( spep_3-3 + 70, 1, 79.4, 65.8+a , 0 );
setMoveKey( spep_3-3 + 72, 1, 79.3, 67+a , 0 );
setMoveKey( spep_3-3 + 74, 1, 79.2, 68.1+a , 0 );
setMoveKey( spep_3-3 + 76, 1, 79.1, 69.1+a , 0 );
setMoveKey( spep_3-3 + 78, 1, 79, 70+a , 0 );
setMoveKey( spep_3-3 + 80, 1, 78.9, 70.7+a , 0 );
setMoveKey( spep_3-3 + 82, 1, 78.8, 71.5+a , 0 );
setMoveKey( spep_3-3 + 84, 1, 78.7, 72.1+a , 0 );
setMoveKey( spep_3-3 + 86, 1, 78.6, 72.7+a , 0 );
setMoveKey( spep_3-3 + 88, 1, 78.5, 73.1+a , 0 );
setMoveKey( spep_3-3 + 90, 1, 78.4, 73.5+a , 0 );
setMoveKey( spep_3-3 + 92, 1, 78.3, 73.7+a , 0 );
setMoveKey( spep_3-3 + 94, 1, 78.2, 73.9+a , 0 );
setMoveKey( spep_3-3 + 96, 1, 78.1, 74+a , 0 );
setMoveKey( spep_3-3 + 98, 1, 78, 74+a , 0 );
setMoveKey( spep_3-3 + 100, 1, 77.9, 73.9+a , 0 );
setMoveKey( spep_3-3 + 103, 1, 83.1, 84.9+a , 0 );
setMoveKey( spep_3-3 + 104, 1, 36.7, 244.9+a , 0 );
setMoveKey( spep_3-3 + 106, 1, 49.3, 258.3+a , 0 );
setMoveKey( spep_3-3 + 108, 1, 70.3, 234.8+a , 0 );
setMoveKey( spep_3-3 + 110, 1, 50.8, 257.6+a , 0 );
setMoveKey( spep_3-3 + 112, 1, 57.7, 242.3+a , 0 );
setMoveKey( spep_3-3 + 114, 1, 52.2, 257.3+a , 0 );
setMoveKey( spep_3-3 + 116, 1, 61.3, 247.5+a , 0 );
setMoveKey( spep_3-3 + 118, 1, 53.7, 256.6+a , 0 );
setMoveKey( spep_3-3 + 120, 1, 60.7, 256+a , 0 );
setMoveKey( spep_3-3 + 122, 1, 55.2, 259.3+a , 0 );
setMoveKey( spep_3-3 + 124, 1, 62.1, 258.3+a , 0 );
setMoveKey( spep_3-3 + 126, 1, 58, 259.5+a , 0 );
setMoveKey( spep_3-3 + 128, 1, 60, 255.1+a , 0 );
setMoveKey( spep_3-3 + 130, 1, 60, 252.4+a , 0 );
setMoveKey( spep_3-3 + 132, 1, 60, 249.8+a , 0 );
setMoveKey( spep_3-3 + 134, 1, 59.9, 247.1+a , 0 );
setMoveKey( spep_3-3 + 136, 1, 64.4, 276.8+a , 0 );
setMoveKey( spep_3-3 + 138, 1, 85.7, 271.5+a , 0 );
setMoveKey( spep_3-3 + 140, 1, 149.6, 310.6+a , 0 );
setMoveKey( spep_3-3 + 142, 1, 256.1, 343.1+a , 0 );
setMoveKey( spep_3-3 + 144, 1, 256.5, 352.7+a , 0 );
setMoveKey( spep_3-3 + 146, 1, 256.9, 348.3+a , 0 );
setMoveKey( spep_3-3 + 148, 1, 257.3, 356.8+a , 0 );
setMoveKey( spep_3-3 + 150, 1, 257.7, 351.4+a , 0 );
setMoveKey( spep_3-3 + 152, 1, 258.2, 358.1+a , 0 );
setMoveKey( spep_3-3 + 154, 1, 264, 365.1+a , 0 );
setMoveKey( spep_3-3 + 156, 1, 265, 371.7+a , 0 );
setMoveKey( spep_3-3 + 158, 1, 265.9, 370.3+a , 0 );
setMoveKey( spep_3-3 + 160, 1, 267, 376.9+a , 0 );
setMoveKey( spep_3-3 + 162, 1, 267.9, 377.6+a , 0 );
setMoveKey( spep_3-3 + 164, 1, 268.9, 380.3+a , 0 );
setMoveKey( spep_3-3 + 166, 1, 270, 383+a , 0 );
setMoveKey( spep_3-3 + 166, 1, 270, 383+a , 0 );
setMoveKey( spep_3-3 + 168, 1, 270.9, 385.7+a , 0 );
setMoveKey( spep_3-3 + 170, 1, 271.9, 388.5+a , 0 );
setMoveKey( spep_3-3 + 172, 1, 273, 391.3+a , 0 );
setMoveKey( spep_3-3 + 174, 1, 274, 394+a , 0 );
setMoveKey( spep_3-3 + 176, 1, 275, 396.8+a , 0 );
setMoveKey( spep_3-3 + 178, 1, 276.1, 399.6+a , 0 );
setMoveKey( spep_3-3 + 180, 1, 277.1, 402.4+a , 0 );
setMoveKey( spep_3-3 + 182, 1, 278.1, 405.2+a , 0 );

setScaleKey( spep_3-3 + 18, 1, 3.108,3.108);
setScaleKey( spep_3-3 + 20, 1, 3.122,3.122);
setScaleKey( spep_3-3 + 22, 1, 3.136,3.136);
setScaleKey( spep_3-3 + 24, 1, 3.15,3.15);
setScaleKey( spep_3-3 + 46, 1, 3.15,3.15);
setScaleKey( spep_3-3 + 47, 1, 3.15,3.15);
setScaleKey( spep_3-3 + 48, 1, 3.23,3.23);
setScaleKey( spep_3-3 + 96, 1, 3.23,3.23);
setScaleKey( spep_3-3 + 98, 1, 3.15,3.15);
setScaleKey( spep_3-3 + 100, 1,3.15,3.15);
setScaleKey( spep_3-3 + 103, 1,3.39,3.39);
setScaleKey( spep_3-3 + 104, 1,2.75,2.75);
setScaleKey( spep_3-3 + 116, 1,2.75,2.75);
setScaleKey( spep_3-3 + 118, 1,2.67,2.67);
setScaleKey( spep_3-3 + 126, 1,2.67,2.67);
setScaleKey( spep_3-3 + 128, 1,2.59,2.59);
--setScaleKey( spep_3-3 + 130, 1,2.59,2.59);
setScaleKey( spep_3-3 + 132, 1,2.5,2.5);
--setScaleKey( spep_3-3 + 134, 1,2.5,2.5);
setScaleKey( spep_3-3 + 136, 1,2.59,2.59);
setScaleKey( spep_3-3 + 138, 1,2.43,2.43);
setScaleKey( spep_3-3 + 140, 1,1.94,1.94);
setScaleKey( spep_3-3 + 142, 1,1.05,1.05);
--setScaleKey( spep_3-3 + 148, 1,1.05,1.05);
setScaleKey( spep_3-3 + 150, 1,0.96,0.96);
--setScaleKey( spep_3-3 + 156, 1,0.96,0.96);
setScaleKey( spep_3-3 + 158, 1,0.88,0.88);
--setScaleKey( spep_3-3 + 164, 1,0.88,0.88);
setScaleKey( spep_3-3 + 166, 1,0.81,0.81);
--setScaleKey( spep_3-3 + 170, 1,0.81,0.81);
setScaleKey( spep_3-3 + 172, 1,0.72,0.72);
--setScaleKey( spep_3-3 + 176, 1,0.72,0.72);
--setScaleKey( spep_3-3 + 178, 1,0.64,0.64);
setScaleKey( spep_3-3 + 182, 1,0.64,0.64);

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 39, 1, 0 );
setRotateKey( spep_3-3 + 40, 1, -44.9 );
setRotateKey( spep_3-3 + 42, 1, -48.5 );
setRotateKey( spep_3-3 + 44, 1, -52.1 );
setRotateKey( spep_3-3 + 46, 1, -51.6 );
setRotateKey( spep_3-3 + 48, 1, -51.2 );
setRotateKey( spep_3-3 + 50, 1, -50.7 );
setRotateKey( spep_3-3 + 52, 1, -50.3 );
setRotateKey( spep_3-3 + 54, 1, -49.8 );
setRotateKey( spep_3-3 + 56, 1, -49.4 );
setRotateKey( spep_3-3 + 58, 1, -49.1 );
setRotateKey( spep_3-3 + 60, 1, -48.7 );
setRotateKey( spep_3-3 + 62, 1, -48.3 );
setRotateKey( spep_3-3 + 64, 1, -48 );
setRotateKey( spep_3-3 + 66, 1, -47.7 );
setRotateKey( spep_3-3 + 68, 1, -47.4 );
setRotateKey( spep_3-3 + 70, 1, -47.1 );
setRotateKey( spep_3-3 + 72, 1, -46.8 );
setRotateKey( spep_3-3 + 74, 1, -46.6 );
setRotateKey( spep_3-3 + 76, 1, -46.4 );
setRotateKey( spep_3-3 + 78, 1, -46.1 );
setRotateKey( spep_3-3 + 80, 1, -45.9 );
setRotateKey( spep_3-3 + 82, 1, -45.8 );
setRotateKey( spep_3-3 + 84, 1, -45.6 );
setRotateKey( spep_3-3 + 86, 1, -45.5 );
setRotateKey( spep_3-3 + 88, 1, -45.3 );
setRotateKey( spep_3-3 + 90, 1, -45.2 );
setRotateKey( spep_3-3 + 92, 1, -45.1 );
setRotateKey( spep_3-3 + 94, 1, -45 );
setRotateKey( spep_3-3 + 96, 1, -45 );
setRotateKey( spep_3-3 + 98, 1, -44.9 );
setRotateKey( spep_3-3 + 103, 1, -44.9 );
setRotateKey( spep_3-3 + 104, 1, -13.7 );
setRotateKey( spep_3-3 + 106, 1, -13.6 );
setRotateKey( spep_3-3 + 130, 1, -13.6 );
setRotateKey( spep_3-3 + 132, 1, -13.7 );
setRotateKey( spep_3-3 + 136, 1, -13.7 );
setRotateKey( spep_3-3 + 138, 1, -15.8 );
setRotateKey( spep_3-3 + 140, 1, -21.8 );
setRotateKey( spep_3-3 + 142, 1, -31.9 );
setRotateKey( spep_3-3 + 182, 1, -31.9 );

-- ** 音 ** --
--瞬間移動
SE006 = playSe( spep_3 + 6, 1109 );

--パンチ
SE007 = playSe( spep_3 + 34, 1189 );

--パンチ
SE008 = playSe( spep_3 + 38, 1009 );

--パンチ
SE009 = playSe( spep_3 + 40, 1110 );

--腕クロス
SE010 = playSe( spep_3 + 72, 1003 );
setSeVolumeByWorkId( spep_3 + 72, SE010, 61 );

--気爆発
SE011 = playSe( spep_3 + 98, 1258 );
setSeVolumeByWorkId( spep_3 + 98, SE011, 46 );
stopSe( spep_3 + 102, SE011, 30 );

--気爆発
SE012 = playSe( spep_3 + 102, 1236 );
setSeVolumeByWorkId( spep_3 + 102, SE012, 178 );
stopSe( spep_3 + 144, SE012, 0 );

--気爆発
SE013 = playSe( spep_3 + 102, 1201 );
setSeVolumeByWorkId( spep_3 + 102, SE013, 141 );

--気爆発
SE014 = playSe( spep_3 + 102, 1026 );

--敵吹っ飛ぶ
SE015 = playSe( spep_3 + 124, 1202 ,"",0.6 );
setSeVolumeByWorkId( spep_3 + 124, SE015, 158 );
stopSe( spep_3 + 146, SE015, 8 );

--敵吹っ飛ぶ
SE016 = playSe( spep_3 + 136, 1202 ,"",0.6 );
setSeVolumeByWorkId( spep_3 + 136, SE016, 158 );
--stopSe( spep_3 + 176, SE016, 20 );

--敵吹っ飛ぶ
SE017 = playSe( spep_3 + 136, 1027 );

-- ** 黒背景 ** --
--entryFadeBg( spep_3 + 0, 0, 180 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 180;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

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

--finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
--setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
--setEffMoveKey( spep_4 + 100, finish_b, 0, 0 , 0 );
--setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
--setEffScaleKey( spep_4 + 100, finish_b, 1.0, 1.0 );
--setEffRotateKey( spep_4 + 0, finish_b, 0 );
--setEffRotateKey( spep_4 + 100, finish_b, 0 );
--setEffAlphaKey( spep_4 + 0, finish_b, 255 );
--setEffAlphaKey( spep_4 + 100, finish_b, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );

-- ** 敵キャラクター ** --
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_4 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 4, 1, 0.51, 0.51 );
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
setScaleKey( spep_4 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 105 );
setRotateKey( spep_4 -3 + 4, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1080 );
setRotateKey( spep_4 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
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

shuchusen_bl = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_4 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

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
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 音 ** --
--爆発
SE018 = playSe( spep_4 + 0, 1025 );

--ガッ
SE019 = playSe( spep_4 + 14, 1054 );

--ガッ
--playSe( spep_4 + 8, 1054 );
--setSeVolume( spep_4 + 8, 1054, 126 );
--playSe( spep_4 + 8, 1023 );
--setSeVolume( spep_4 + 8, 1023, 76 );

-- ** 背景 ** --
--entryFadeBg( spep_4 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 98 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 睨むベジータ(124F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --睨むベジータ   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 124, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 124, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 124, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 124, first_f, 255 );

spep_x = spep_0 + 32;
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
SE001 = playSe( spep_0 + 0, 1072,"",0.6  ); 

--入り
SE002 = playSe( spep_0 + 16, 8 );
setSeVolumeByWorkId( spep_0 + 16, SE002, 78 );

--顔カットイン
SE003 = playSe( spep_0 + 36, 1018 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 124 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 124;


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
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96 -2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 瞬間移動するベジータ(56F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
move = entryEffectLife( spep_2 + 0, SP_02, 56, 0x100, -1, 0, 0, 0 );  --瞬間移動するベジータ  ef_002
setEffMoveKey( spep_2 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, move, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, move, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, move, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, move, 0 );
setEffRotateKey( spep_2 + 56, move, 0 );
setEffAlphaKey( spep_2 + 0, move, 255 );
setEffAlphaKey( spep_2 + 56 -1, move, 255 );
setEffAlphaKey( spep_2 + 56, move, 0 );

-- ** 音 ** --
--瞬間移動
SE005 = playSe( spep_2 + 28, 1109 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;


------------------------------------------------------
-- アッパーからの気を爆発させる(180F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
upper_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --アッパーからの気を爆発させる   ef_003_front
setEffMoveKey( spep_3 + 0, upper_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 180, upper_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, upper_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, upper_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, upper_f, 0 );
setEffRotateKey( spep_3 + 180, upper_f, 0 );
setEffAlphaKey( spep_3 + 0, upper_f, 255 );
setEffAlphaKey( spep_3 + 180, upper_f, 255 );

upper_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --アッパーからの気を爆発させる    ef_003_back
setEffMoveKey( spep_3 + 0, upper_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 180, upper_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, upper_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, upper_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, upper_b, 0 );
setEffRotateKey( spep_3 + 180, upper_b, 0 );
setEffAlphaKey( spep_3 + 0, upper_b, 255 );
setEffAlphaKey( spep_3 + 180, upper_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 100 );

a=30;

setMoveKey( spep_3 + 0, 1, 53.5, -81.5+a , 0 );
--setMoveKey( spep_3-3 + 2, 1, 68.8, -78.5 , 0 );
setMoveKey( spep_3-3 + 4, 1, 84.1, -75.6+a , 0 );
setMoveKey( spep_3-3 + 6, 1, 91, -74.3+a , 0 );
setMoveKey( spep_3-3 + 8, 1, 97.9, -72.9+a , 0 );
setMoveKey( spep_3-3 + 10, 1, 100.9, -72.4+a , 0 );
setMoveKey( spep_3-3 + 12, 1, 103.9, -71.8+a , 0 );
setMoveKey( spep_3-3 + 14, 1, 107, -71.2+a , 0 );
setMoveKey( spep_3-3 + 16, 1, 107.3, -71.1+a , 0 );

setScaleKey( spep_3 + 0, 1,1.57,1.57);
setScaleKey( spep_3-3 + 4, 1,2.4,2.4);
setScaleKey( spep_3-3 + 6, 1,2.63,2.63);
setScaleKey( spep_3-3 + 8, 1,2.86,2.86);
setScaleKey( spep_3-3 + 10, 1, 2.93,2.93);
setScaleKey( spep_3-3 + 12, 1, 3.01,3.01);
setScaleKey( spep_3-3 + 14, 1, 3.08,3.08);
setScaleKey( spep_3-3 + 16, 1, 3.094,3.094);


setRotateKey( spep_3 + 0, 1, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 107.3, -71.1+a , 0 );
    setMoveKey( SP_dodge + 2, 1, 107.5, -71.1+a , 0 );
    setMoveKey( SP_dodge + 4, 1, 107.8, -71+a , 0 );
    setMoveKey( SP_dodge + 6, 1, 108.1, -71+a , 0 );
    setMoveKey( SP_dodge + 8, 1, 108.3, -71+a , 0 );
    setMoveKey( SP_dodge + 10, 1, 108.6, -70.9+a , 0 );

    setScaleKey( SP_dodge + 0, 1, 3.094,3.094);
    setScaleKey( SP_dodge + 2, 1, 3.108,3.108);
    setScaleKey( SP_dodge + 4, 1, 3.122,3.122);
    setScaleKey( SP_dodge + 6, 1, 3.136,3.136);
    setScaleKey( SP_dodge + 8, 1, 3.15,3.15);
    setScaleKey( SP_dodge + 10, 1, 3.15,3.15);

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

-- ** 敵キャラクター ** --
changeAnime( spep_3 -3 + 40, 1, 106 );
changeAnime( spep_3 -3 + 104, 1, 108 );

setMoveKey( spep_3-3 + 18, 1, 107.5, -71.1+a , 0 );
setMoveKey( spep_3-3 + 20, 1, 107.8, -71+a , 0 );
setMoveKey( spep_3-3 + 22, 1, 108.1, -71+a , 0 );
setMoveKey( spep_3-3 + 24, 1, 108.3, -71+a , 0 );
setMoveKey( spep_3-3 + 26, 1, 108.6, -70.9+a , 0 );
setMoveKey( spep_3-3 + 28, 1, 108.8, -70.9+a , 0 );
setMoveKey( spep_3-3 + 30, 1, 109.1, -70.8+a , 0 );
setMoveKey( spep_3-3 + 32, 1, 109.3, -70.7+a , 0 );
setMoveKey( spep_3-3 + 34, 1, 109.6, -70.7+a , 0 );
setMoveKey( spep_3-3 + 36, 1, 109.8, -70.6+a , 0 );
setMoveKey( spep_3-3 + 39, 1, 110.1, -70.6+a , 0 );
setMoveKey( spep_3-3 + 40, 1, 77.5, 4.8+a , 0 );
setMoveKey( spep_3-3 + 42, 1, 77.7, 1.2+a , 0 );
setMoveKey( spep_3-3 + 44, 1, 93.9, 9.6+a , 0 );
setMoveKey( spep_3-3 + 46, 1, 78, 40.4+a , 0 );
setMoveKey( spep_3-3 + 48, 1, 34.3, 43.1+a , 0 );
setMoveKey( spep_3-3 + 50, 1, 78.4, 45.7+a , 0 );
setMoveKey( spep_3-3 + 52, 1, 114.6, 56.3+a , 0 );
setMoveKey( spep_3-3 + 54, 1, 78.8, 50.7+a , 0 );
setMoveKey( spep_3-3 + 56, 1, 79, 55+a , 0 );
setMoveKey( spep_3-3 + 58, 1, 79.1, 53.4+a , 0 );
setMoveKey( spep_3-3 + 60, 1, 79.3, 59.6+a , 0 );
setMoveKey( spep_3-3 + 62, 1, 79.5, 57.7+a , 0 );
setMoveKey( spep_3-3 + 64, 1, 79.6, 61.8+a , 0 );
setMoveKey( spep_3-3 + 66, 1, 79.6, 63.2+a , 0 );
setMoveKey( spep_3-3 + 68, 1, 79.5, 64.6+a , 0 );
setMoveKey( spep_3-3 + 70, 1, 79.4, 65.8+a , 0 );
setMoveKey( spep_3-3 + 72, 1, 79.3, 67+a , 0 );
setMoveKey( spep_3-3 + 74, 1, 79.2, 68.1+a , 0 );
setMoveKey( spep_3-3 + 76, 1, 79.1, 69.1+a , 0 );
setMoveKey( spep_3-3 + 78, 1, 79, 70+a , 0 );
setMoveKey( spep_3-3 + 80, 1, 78.9, 70.7+a , 0 );
setMoveKey( spep_3-3 + 82, 1, 78.8, 71.5+a , 0 );
setMoveKey( spep_3-3 + 84, 1, 78.7, 72.1+a , 0 );
setMoveKey( spep_3-3 + 86, 1, 78.6, 72.7+a , 0 );
setMoveKey( spep_3-3 + 88, 1, 78.5, 73.1+a , 0 );
setMoveKey( spep_3-3 + 90, 1, 78.4, 73.5+a , 0 );
setMoveKey( spep_3-3 + 92, 1, 78.3, 73.7+a , 0 );
setMoveKey( spep_3-3 + 94, 1, 78.2, 73.9+a , 0 );
setMoveKey( spep_3-3 + 96, 1, 78.1, 74+a , 0 );
setMoveKey( spep_3-3 + 98, 1, 78, 74+a , 0 );
setMoveKey( spep_3-3 + 100, 1, 77.9, 73.9+a , 0 );
setMoveKey( spep_3-3 + 103, 1, 83.1, 84.9+a , 0 );
setMoveKey( spep_3-3 + 104, 1, 36.7, 244.9+a , 0 );
setMoveKey( spep_3-3 + 106, 1, 49.3, 258.3+a , 0 );
setMoveKey( spep_3-3 + 108, 1, 70.3, 234.8+a , 0 );
setMoveKey( spep_3-3 + 110, 1, 50.8, 257.6+a , 0 );
setMoveKey( spep_3-3 + 112, 1, 57.7, 242.3+a , 0 );
setMoveKey( spep_3-3 + 114, 1, 52.2, 257.3+a , 0 );
setMoveKey( spep_3-3 + 116, 1, 61.3, 247.5+a , 0 );
setMoveKey( spep_3-3 + 118, 1, 53.7, 256.6+a , 0 );
setMoveKey( spep_3-3 + 120, 1, 60.7, 256+a , 0 );
setMoveKey( spep_3-3 + 122, 1, 55.2, 259.3+a , 0 );
setMoveKey( spep_3-3 + 124, 1, 62.1, 258.3+a , 0 );
setMoveKey( spep_3-3 + 126, 1, 58, 259.5+a , 0 );
setMoveKey( spep_3-3 + 128, 1, 60, 255.1+a , 0 );
setMoveKey( spep_3-3 + 130, 1, 60, 252.4+a , 0 );
setMoveKey( spep_3-3 + 132, 1, 60, 249.8+a , 0 );
setMoveKey( spep_3-3 + 134, 1, 59.9, 247.1+a , 0 );
setMoveKey( spep_3-3 + 136, 1, 64.4, 276.8+a , 0 );
setMoveKey( spep_3-3 + 138, 1, 85.7, 271.5+a , 0 );
setMoveKey( spep_3-3 + 140, 1, 149.6, 310.6+a , 0 );
setMoveKey( spep_3-3 + 142, 1, 256.1, 343.1+a , 0 );
setMoveKey( spep_3-3 + 144, 1, 256.5, 352.7+a , 0 );
setMoveKey( spep_3-3 + 146, 1, 256.9, 348.3+a , 0 );
setMoveKey( spep_3-3 + 148, 1, 257.3, 356.8+a , 0 );
setMoveKey( spep_3-3 + 150, 1, 257.7, 351.4+a , 0 );
setMoveKey( spep_3-3 + 152, 1, 258.2, 358.1+a , 0 );
setMoveKey( spep_3-3 + 154, 1, 264, 365.1+a , 0 );
setMoveKey( spep_3-3 + 156, 1, 265, 371.7+a , 0 );
setMoveKey( spep_3-3 + 158, 1, 265.9, 370.3+a , 0 );
setMoveKey( spep_3-3 + 160, 1, 267, 376.9+a , 0 );
setMoveKey( spep_3-3 + 162, 1, 267.9, 377.6+a , 0 );
setMoveKey( spep_3-3 + 164, 1, 268.9, 380.3+a , 0 );
setMoveKey( spep_3-3 + 166, 1, 270, 383+a , 0 );
setMoveKey( spep_3-3 + 166, 1, 270, 383+a , 0 );
setMoveKey( spep_3-3 + 168, 1, 270.9, 385.7+a , 0 );
setMoveKey( spep_3-3 + 170, 1, 271.9, 388.5+a , 0 );
setMoveKey( spep_3-3 + 172, 1, 273, 391.3+a , 0 );
setMoveKey( spep_3-3 + 174, 1, 274, 394+a , 0 );
setMoveKey( spep_3-3 + 176, 1, 275, 396.8+a , 0 );
setMoveKey( spep_3-3 + 178, 1, 276.1, 399.6+a , 0 );
setMoveKey( spep_3-3 + 180, 1, 277.1, 402.4+a , 0 );
setMoveKey( spep_3-3 + 182, 1, 278.1, 405.2+a , 0 );

setScaleKey( spep_3-3 + 18, 1, 3.108,3.108);
setScaleKey( spep_3-3 + 20, 1, 3.122,3.122);
setScaleKey( spep_3-3 + 22, 1, 3.136,3.136);
setScaleKey( spep_3-3 + 24, 1, 3.15,3.15);
setScaleKey( spep_3-3 + 46, 1, 3.15,3.15);
setScaleKey( spep_3-3 + 47, 1, 3.15,3.15);
setScaleKey( spep_3-3 + 48, 1, 3.23,3.23);
setScaleKey( spep_3-3 + 96, 1, 3.23,3.23);
setScaleKey( spep_3-3 + 98, 1, 3.15,3.15);
setScaleKey( spep_3-3 + 100, 1,3.15,3.15);
setScaleKey( spep_3-3 + 103, 1,3.39,3.39);
setScaleKey( spep_3-3 + 104, 1,2.75,2.75);
setScaleKey( spep_3-3 + 116, 1,2.75,2.75);
setScaleKey( spep_3-3 + 118, 1,2.67,2.67);
setScaleKey( spep_3-3 + 126, 1,2.67,2.67);
setScaleKey( spep_3-3 + 128, 1,2.59,2.59);
--setScaleKey( spep_3-3 + 130, 1,2.59,2.59);
setScaleKey( spep_3-3 + 132, 1,2.5,2.5);
--setScaleKey( spep_3-3 + 134, 1,2.5,2.5);
setScaleKey( spep_3-3 + 136, 1,2.59,2.59);
setScaleKey( spep_3-3 + 138, 1,2.43,2.43);
setScaleKey( spep_3-3 + 140, 1,1.94,1.94);
setScaleKey( spep_3-3 + 142, 1,1.05,1.05);
--setScaleKey( spep_3-3 + 148, 1,1.05,1.05);
setScaleKey( spep_3-3 + 150, 1,0.96,0.96);
--setScaleKey( spep_3-3 + 156, 1,0.96,0.96);
setScaleKey( spep_3-3 + 158, 1,0.88,0.88);
--setScaleKey( spep_3-3 + 164, 1,0.88,0.88);
setScaleKey( spep_3-3 + 166, 1,0.81,0.81);
--setScaleKey( spep_3-3 + 170, 1,0.81,0.81);
setScaleKey( spep_3-3 + 172, 1,0.72,0.72);
--setScaleKey( spep_3-3 + 176, 1,0.72,0.72);
--setScaleKey( spep_3-3 + 178, 1,0.64,0.64);
setScaleKey( spep_3-3 + 182, 1,0.64,0.64);

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 39, 1, 0 );
setRotateKey( spep_3-3 + 40, 1, -44.9 );
setRotateKey( spep_3-3 + 42, 1, -48.5 );
setRotateKey( spep_3-3 + 44, 1, -52.1 );
setRotateKey( spep_3-3 + 46, 1, -51.6 );
setRotateKey( spep_3-3 + 48, 1, -51.2 );
setRotateKey( spep_3-3 + 50, 1, -50.7 );
setRotateKey( spep_3-3 + 52, 1, -50.3 );
setRotateKey( spep_3-3 + 54, 1, -49.8 );
setRotateKey( spep_3-3 + 56, 1, -49.4 );
setRotateKey( spep_3-3 + 58, 1, -49.1 );
setRotateKey( spep_3-3 + 60, 1, -48.7 );
setRotateKey( spep_3-3 + 62, 1, -48.3 );
setRotateKey( spep_3-3 + 64, 1, -48 );
setRotateKey( spep_3-3 + 66, 1, -47.7 );
setRotateKey( spep_3-3 + 68, 1, -47.4 );
setRotateKey( spep_3-3 + 70, 1, -47.1 );
setRotateKey( spep_3-3 + 72, 1, -46.8 );
setRotateKey( spep_3-3 + 74, 1, -46.6 );
setRotateKey( spep_3-3 + 76, 1, -46.4 );
setRotateKey( spep_3-3 + 78, 1, -46.1 );
setRotateKey( spep_3-3 + 80, 1, -45.9 );
setRotateKey( spep_3-3 + 82, 1, -45.8 );
setRotateKey( spep_3-3 + 84, 1, -45.6 );
setRotateKey( spep_3-3 + 86, 1, -45.5 );
setRotateKey( spep_3-3 + 88, 1, -45.3 );
setRotateKey( spep_3-3 + 90, 1, -45.2 );
setRotateKey( spep_3-3 + 92, 1, -45.1 );
setRotateKey( spep_3-3 + 94, 1, -45 );
setRotateKey( spep_3-3 + 96, 1, -45 );
setRotateKey( spep_3-3 + 98, 1, -44.9 );
setRotateKey( spep_3-3 + 103, 1, -44.9 );
setRotateKey( spep_3-3 + 104, 1, -13.7 );
setRotateKey( spep_3-3 + 106, 1, -13.6 );
setRotateKey( spep_3-3 + 130, 1, -13.6 );
setRotateKey( spep_3-3 + 132, 1, -13.7 );
setRotateKey( spep_3-3 + 136, 1, -13.7 );
setRotateKey( spep_3-3 + 138, 1, -15.8 );
setRotateKey( spep_3-3 + 140, 1, -21.8 );
setRotateKey( spep_3-3 + 142, 1, -31.9 );
setRotateKey( spep_3-3 + 182, 1, -31.9 );

-- ** 音 ** --
--瞬間移動
SE006 = playSe( spep_3 + 6, 1109 );

--パンチ
SE007 = playSe( spep_3 + 34, 1189 );

--パンチ
SE008 = playSe( spep_3 + 38, 1009 );

--パンチ
SE009 = playSe( spep_3 + 40, 1110 );

--腕クロス
SE010 = playSe( spep_3 + 72, 1003 );
setSeVolumeByWorkId( spep_3 + 72, SE010, 61 );

--気爆発
SE011 = playSe( spep_3 + 98, 1258 );
setSeVolumeByWorkId( spep_3 + 98, SE011, 46 );
stopSe( spep_3 + 102, SE011, 30 );

--気爆発
SE012 = playSe( spep_3 + 102, 1236 );
setSeVolumeByWorkId( spep_3 + 102, SE012, 178 );
stopSe( spep_3 + 144, SE012, 0 );

--気爆発
SE013 = playSe( spep_3 + 102, 1201 );
setSeVolumeByWorkId( spep_3 + 102, SE013, 141 );

--気爆発
SE014 = playSe( spep_3 + 102, 1026 );

--敵吹っ飛ぶ
SE015 = playSe( spep_3 + 124, 1202 ,"",0.6 );
setSeVolumeByWorkId( spep_3 + 124, SE015, 158 );
stopSe( spep_3 + 146, SE015, 8 );

--敵吹っ飛ぶ
SE016 = playSe( spep_3 + 136, 1202 ,"",0.6 );
setSeVolumeByWorkId( spep_3 + 136, SE016, 158 );
--stopSe( spep_3 + 176, SE016, 20 );

--敵吹っ飛ぶ
SE017 = playSe( spep_3 + 136, 1027 );

-- ** 黒背景 ** --
--entryFadeBg( spep_3 + 0, 0, 180 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 180;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 100, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 100, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 100, finish_f, 255 );

--finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
--setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
--setEffMoveKey( spep_4 + 100, finish_b, 0, 0 , 0 );
--setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
--setEffScaleKey( spep_4 + 100, finish_b, 1.0, 1.0 );
--setEffRotateKey( spep_4 + 0, finish_b, 0 );
--setEffRotateKey( spep_4 + 100, finish_b, 0 );
--setEffAlphaKey( spep_4 + 0, finish_b, 255 );
--setEffAlphaKey( spep_4 + 100, finish_b, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, -0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, -0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, -0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, -0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, -0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, -0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, -0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );

-- ** 敵キャラクター ** --
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_4 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 4, 1, 0.51, 0.51 );
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
setScaleKey( spep_4 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 105 );
setRotateKey( spep_4 -3 + 4, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1080 );
setRotateKey( spep_4 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
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

shuchusen_bl = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_4 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

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
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 音 ** --
--爆発
SE018 = playSe( spep_4 + 0, 1025 );

--ガッ
SE019 = playSe( spep_4 + 14, 1054 );

--ガッ
--playSe( spep_4 + 8, 1054 );
--setSeVolume( spep_4 + 8, 1054, 126 );
--playSe( spep_4 + 8, 1023 );
--setSeVolume( spep_4 + 8, 1023, 76 );

-- ** 背景 ** --
--entryFadeBg( spep_4 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 98 );


end