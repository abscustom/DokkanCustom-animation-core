--1020970:四星龍_バーニングスピン_sp2098
--sp_effect_b4_00168

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
SP_01 = 156287;  --瞬間移動、火竜巻→火の玉：敵より前   ef_001
SP_02 = 156288;  --瞬間移動、火竜巻→火の玉：敵より後ろ  ef_002
SP_03 = 156289;  --炎の中、投げ飛ばし：敵より前  ef_003
SP_04 = 156290;  --炎の中、投げ飛ばし：敵より後ろ ef_004
SP_05 = 156291;  --気弾敵に向かって拡大  ef_005
SP_06 = 156292;  --敵気弾に飲み込まれる：敵より前 ef_006
SP_07 = 156293;  --敵気弾に飲み込まれる：敵より後ろ    ef_007
SP_08 = 156294;  --火の玉爆発   ef_008
SP_09 = 156295;  --火の玉振りそそぐ    ef_009


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 火竜巻→火の玉(316F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --瞬間移動、火竜巻→火の玉：敵より前(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 316, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 316, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 316, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 316, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --瞬間移動、火竜巻→火の玉：敵より後ろ(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 316, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 316, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 316, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 316, first_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 78.1, -1.7 , 0 );
setMoveKey( spep_0 + 1, 1, 81.7, -2.1 , 0 );
setMoveKey( spep_0 + 2, 1, 85.3, -2.5 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 88.8, -2.8 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 88.8, -2.8 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 92.4, -3.2 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 92.4, -3.2 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 95.9, -3.6 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 99.3, -3.9 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 102.7, -4.3 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 106.1, -4.7 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 109.5, -5.1 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 112.8, -5.4 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 116.1, -5.9 , 0 );

setScaleKey( spep_0 + 0, 1, 2.87, 2.88 );
setScaleKey( spep_0 + 1, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 2, 1, 2.82, 2.82 );
setScaleKey( spep_0 -3 + 6, 1, 2.8, 2.8 );
setScaleKey( spep_0 -3 + 7, 1, 2.8, 2.8 );
setScaleKey( spep_0 -3 + 8, 1, 2.77, 2.77 );
setScaleKey( spep_0 -3 + 9, 1, 2.77, 2.77 );
setScaleKey( spep_0 -3 + 10, 1, 2.75, 2.75 );
setScaleKey( spep_0 -3 + 12, 1, 2.72, 2.72 );
setScaleKey( spep_0 -3 + 14, 1, 2.69, 2.69 );
setScaleKey( spep_0 -3 + 16, 1, 2.67, 2.67 );
setScaleKey( spep_0 -3 + 18, 1, 2.64, 2.64 );
setScaleKey( spep_0 -3 + 20, 1, 2.61, 2.61 );
setScaleKey( spep_0 -3 + 22, 1, 2.59, 2.59 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 0, 8 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 316, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 119.4, -6.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 122.5, -6.7 , 0 );
    setMoveKey( SP_dodge + 4, 1, 125.9, -6.9 , 0 );
    setMoveKey( SP_dodge + 6, 1, 125.9, -6.9 , 0 );
    setMoveKey( SP_dodge + 8, 1, 125.9, -6.9 , 0 );
    setMoveKey( SP_dodge + 10, 1, 125.9, -6.9 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2.56, 2.56 );
    setScaleKey( SP_dodge + 2, 1, 2.53, 2.53 );
    setScaleKey( SP_dodge + 4, 1, 2.5, 2.5 );
    setScaleKey( SP_dodge + 6, 1, 2.5, 2.5 );
    setScaleKey( SP_dodge + 8, 1, 2.5, 2.5 );
    setScaleKey( SP_dodge + 10, 1, 2.5, 2.5 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 2, 1, 0 );
    setRotateKey( SP_dodge + 4, 1, 0 );
    setRotateKey( SP_dodge + 6, 1, 0 );
    setRotateKey( SP_dodge + 8, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );

    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
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

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 73,  906, 39, 0x100, -1, 0, 130, 0 );  --集中線
setEffShake( spep_0 + 73, shuchusen1, 39, 25 );
setEffMoveKey(   spep_0 + 73, shuchusen1, 0, 50 , 0 );
setEffMoveKey(   spep_0 + 112, shuchusen1, 0, 50 , 0 );
setEffScaleKey(  spep_0 + 73, shuchusen1, 1.2, 1.5 );
setEffScaleKey(  spep_0 + 112, shuchusen1, 1.2, 1.5 );
setEffRotateKey( spep_0 + 73, shuchusen1, 0 );
setEffRotateKey( spep_0 + 112, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 73, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 112, shuchusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 156, 1, 0 );
changeAnime( spep_0 -3 + 42, 1, 118 );
changeAnime( spep_0 -3 + 76, 1, 106 );

setMoveKey( spep_0 -3 + 24, 1, 119.4, -6.2 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 122.5, -6.7 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 125.9, -6.9 , 0 );
setMoveKey( spep_0 -3 + 41, 1, 125.9, -6.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 125.9, -22.8 , 0 );
setMoveKey( spep_0 -3 + 75, 1, 125.9, -22.8 , 0 );
c=30;
d=-10;
setMoveKey( spep_0 -3 + 76, 1, 10.2+c, -65.9+d , 0 );
setMoveKey( spep_0 -3 + 78, 1, 2.9+c, -40+d , 0 );
setMoveKey( spep_0 -3 + 80, 1, -12.3+c, -30.1+d , 0 );
setMoveKey( spep_0 -3 + 82, 1, -19.7+c, -4.2+d , 0 );
setMoveKey( spep_0 -3 + 84, 1, -29+c, 25.5+d , 0 );
setMoveKey( spep_0 -3 + 86, 1, -37.5+c, 52.7+d , 0 );
setMoveKey( spep_0 -3 + 88, 1, -47.2+c, 83.5+d , 0 );
setMoveKey( spep_0 -3 + 90, 1, -54.2+c, 105.8+d , 0 );
setMoveKey( spep_0 -3 + 92, 1, -59.1+c, 121.4+d , 0 );
setMoveKey( spep_0 -3 + 94, 1, -62.4+c, 132.1+d , 0 );
setMoveKey( spep_0 -3 + 96, 1, -64.7+c, 139.4+d , 0 );
setMoveKey( spep_0 -3 + 98, 1, -66.2+c, 144.2+d , 0 );
setMoveKey( spep_0 -3 + 100, 1, -67.1+c, 147.3+d , 0 );
setMoveKey( spep_0 -3 + 102, 1, -67.6+c, 148.9+d , 0 );
setMoveKey( spep_0 -3 + 104, 1, -67.8+c, 149.4+d , 0 );
setMoveKey( spep_0 -3 + 106, 1, -67.2+c, 149.4+d , 0 );
setMoveKey( spep_0 -3 + 108, 1, -66.7+c, 149.5+d , 0 );
setMoveKey( spep_0 -3 + 110, 1, -66.1+c, 149.5+d , 0 );
setMoveKey( spep_0 -3 + 112, 1, -65.5+c, 149.5+d , 0 );
setMoveKey( spep_0 -3 + 114, 1, -65+c, 149.5+d , 0 );
setMoveKey( spep_0 -3 + 116, 1, -64.5+c, 149.6+d , 0 );
setMoveKey( spep_0 -3 + 118, 1, -64+c, 149.7+d , 0 );
setMoveKey( spep_0 -3 + 120, 1, -63.4+c, 149.7+d , 0 );
setMoveKey( spep_0 -3 + 122, 1, -62.8+c, 149.7+d , 0 );
setMoveKey( spep_0 -3 + 124, 1, -62.3+c, 149.8+d , 0 );
setMoveKey( spep_0 -3 + 126, 1, -61.8+c, 149.8+d , 0 );
setMoveKey( spep_0 -3 + 128, 1, -61.3+c, 149.8+d , 0 );
setMoveKey( spep_0 -3 + 130, 1, -60.7+c, 149.9+d , 0 );
setMoveKey( spep_0 -3 + 132, 1, -60.2+c, 149.9+d , 0 );
setMoveKey( spep_0 -3 + 134, 1, -59.6+c, 150+d , 0 );
setMoveKey( spep_0 -3 + 136, 1, -59.1+c, 150+d , 0 );
setMoveKey( spep_0 -3 + 138, 1, -58.6+c, 150+d , 0 );
setMoveKey( spep_0 -3 + 140, 1, -58+c, 150.1+d , 0 );
setMoveKey( spep_0 -3 + 142, 1, -57.5+c, 150.1+d , 0 );
setMoveKey( spep_0 -3 + 144, 1, -57+c, 150.1+d , 0 );
setMoveKey( spep_0 -3 + 146, 1, -56.4+c, 150.2+d , 0 );
setMoveKey( spep_0 -3 + 148, 1, -55.9+c, 150.3+d , 0 );
setMoveKey( spep_0 -3 + 150, 1, -55.3+c, 150.3+d , 0 );
setMoveKey( spep_0 -3 + 152, 1, -54.8+c, 150.3+d , 0 );
setMoveKey( spep_0 -3 + 154, 1, -54.3+c, 150.4+d , 0 );
setMoveKey( spep_0 -3 + 156, 1, -53.7+c, 150.4+d , 0 );
setMoveKey( spep_0 -3 + 158, 1, -53.2+c, 150.3+d , 0 );
setMoveKey( spep_0 -3 + 159, 1, -53.2+c, 150.3+d , 0 );

setScaleKey( spep_0 -3 + 24, 1, 2.56, 2.56 );
setScaleKey( spep_0 -3 + 26, 1, 2.53, 2.53 );
setScaleKey( spep_0 -3 + 28, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 75, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 76, 1, 2.68, 2.68 );
setScaleKey( spep_0 -3 + 78, 1, 2.59, 2.59 );
setScaleKey( spep_0 -3 + 80, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 82, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 84, 1, 2.18, 2.18 );
setScaleKey( spep_0 -3 + 86, 1, 1.96, 1.96 );
setScaleKey( spep_0 -3 + 88, 1, 1.72, 1.72 );
setScaleKey( spep_0 -3 + 90, 1, 1.55, 1.55 );
setScaleKey( spep_0 -3 + 92, 1, 1.42, 1.42 );
setScaleKey( spep_0 -3 + 94, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 96, 1, 1.28, 1.28 );
setScaleKey( spep_0 -3 + 98, 1, 1.24, 1.24 );
setScaleKey( spep_0 -3 + 100, 1, 1.22, 1.22 );
setScaleKey( spep_0 -3 + 102, 1, 1.21, 1.21 );
setScaleKey( spep_0 -3 + 104, 1, 1.21, 1.21 );
setScaleKey( spep_0 -3 + 106, 1, 1.2, 1.2 );
setScaleKey( spep_0 -3 + 108, 1, 1.19, 1.19 );
setScaleKey( spep_0 -3 + 110, 1, 1.18, 1.18 );
setScaleKey( spep_0 -3 + 112, 1, 1.18, 1.18 );
setScaleKey( spep_0 -3 + 114, 1, 1.17, 1.17 );
setScaleKey( spep_0 -3 + 116, 1, 1.16, 1.16 );
setScaleKey( spep_0 -3 + 118, 1, 1.16, 1.16 );
setScaleKey( spep_0 -3 + 120, 1, 1.15, 1.15 );
setScaleKey( spep_0 -3 + 122, 1, 1.14, 1.14 );
setScaleKey( spep_0 -3 + 124, 1, 1.14, 1.14 );
setScaleKey( spep_0 -3 + 126, 1, 1.13, 1.13 );
setScaleKey( spep_0 -3 + 128, 1, 1.12, 1.12 );
setScaleKey( spep_0 -3 + 130, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 132, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 134, 1, 1.1, 1.1 );
setScaleKey( spep_0 -3 + 136, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 138, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 140, 1, 1.08, 1.08 );
setScaleKey( spep_0 -3 + 142, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 144, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 146, 1, 1.06, 1.06 );
setScaleKey( spep_0 -3 + 148, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 150, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 152, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 154, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 156, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 158, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 159, 1, 1.02, 1.02 );

setRotateKey( spep_0 -3 + 24, 1, 0 );
setRotateKey( spep_0 -3 + 75, 1, 0 );
setRotateKey( spep_0 -3 + 76, 1, -76 );
setRotateKey( spep_0 -3 + 159, 1, -76 );

-- ** 音 ** --
--瞬間移動
SE002 = playSe( spep_0 + 40, 1109 );

--瞬間移動
SE003 = playSe( spep_0 + 62, 1109 );

--後ろから羽交い締め1
SE004 = playSe( spep_0 + 74, 1012 );
setSeVolumeByWorkId( spep_0 + 74, SE004, 95 );

--後ろから羽交い締め
SE005 = playSe( spep_0 + 78, 1006 );
setSeVolumeByWorkId( spep_0 + 78, SE005, 82 );

--炎
SE006 = playSe( spep_0 + 114, 1268 );
setSeVolumeByWorkId( spep_0 + 114, SE006, 141 );
stopSe( spep_0 +316 + 10, SE006, 0 );

--炎つく
SE007 = playSe( spep_0 + 116, 1002 );

--炎追加1_1
SE008 = playSe( spep_0 + 134, 1268 );
setSeVolumeByWorkId( spep_0 + 134, SE008, 35 );
setSeVolumeByWorkId( spep_0 + 136, SE008, 70 );
setSeVolumeByWorkId( spep_0 + 138, SE008, 140 );
setSeVolumeByWorkId( spep_0 + 140, SE008, 175 );
setSeVolumeByWorkId( spep_0 + 142, SE008, 210 );
setSeVolumeByWorkId( spep_0 + 144, SE008, 245 );
setSeVolumeByWorkId( spep_0 + 146, SE008, 280 );
setSeVolumeByWorkId( spep_0 + 148, SE008, 315 );
setSeVolumeByWorkId( spep_0 + 150, SE008, 350 );
stopSe( spep_0 + 184, SE008, 44 );

--炎広がる
SE009 = playSe( spep_0 + 134, 1278 );
setSeVolumeByWorkId( spep_0 + 134, SE009, 46 );
stopSe( spep_0 + 200, SE009, 18 );

--炎追加1_2
SE010 = playSe( spep_0 + 140, 1166 );
setSeVolumeByWorkId( spep_0 + 140, SE010, 251 );
stopSe( spep_0 + 176, SE010, 64 );
setBandpassFilter  ( spep_0 + 140, SE010, 24, 800 );

--炎追加1_3
SE011 = playSe( spep_0 + 142, 1002 );

--球体になる
SE012 = playSe( spep_0 + 218, 8 );

--球体回転する1
SE013 = playSe( spep_0 + 228, 1003 );
setSeVolumeByWorkId( spep_0 + 228, SE013, 55 );
setPitch( spep_0 + 228, SE013, 300 );
setTimeStretch( SE013, 1.2, 10, 1 );

--球体回転する2
SE014 = playSe( spep_0 + 254, 1003 );
setSeVolumeByWorkId( spep_0 + 254, SE014, 56 );
setPitch( spep_0 + 254, SE014, 300 );
setTimeStretch( SE014, 1.2, 10, 1 );

--球体回転する3
SE015 = playSe( spep_0 + 270, 1003 );
setSeVolumeByWorkId( spep_0 + 270, SE015, 55 );
setPitch( spep_0 + 270, SE015, 300 );
setTimeStretch( SE015, 1.2, 10, 1 );

--球体回転する4
SE016 = playSe( spep_0 + 280, 1003 );
setSeVolumeByWorkId( spep_0 + 280, SE016, 63 );
setPitch( spep_0 + 280, SE016, 300 );
setTimeStretch( SE016, 1.2, 10, 1 );

--炎追加２_1
SE017 = playSe( spep_0 + 290, 1268 );
setSeVolumeByWorkId( spep_0 + 290, SE017, 0 );
setSeVolumeByWorkId( spep_0 + 292, SE017, 35  );
setSeVolumeByWorkId( spep_0 + 294, SE017, 70 );
setSeVolumeByWorkId( spep_0 + 296, SE017, 140 );
setSeVolumeByWorkId( spep_0 + 298, SE017, 175 );
setSeVolumeByWorkId( spep_0 + 300, SE017, 210 );
setSeVolumeByWorkId( spep_0 + 302, SE017, 245 );
setSeVolumeByWorkId( spep_0 + 304, SE017, 280 );
setSeVolumeByWorkId( spep_0 + 306, SE017, 315 );
setSeVolumeByWorkId( spep_0 + 308, SE017, 350 );
stopSe( spep_0 +316 + 20, SE017, 60 );

--球体回転する5
SE018 = playSe( spep_0 + 290, 1003 );
setSeVolumeByWorkId( spep_0 + 290, SE018, 63 );
setPitch( spep_0 + 290, SE018, 300 );
setTimeStretch( SE018, 1.2, 10, 1 );

--球体回転する6
SE019 = playSe( spep_0 + 298, 1003 );
setPitch( spep_0 + 298, SE019, 300 );
setTimeStretch( SE019, 1.2, 10, 1 );

--球体広がる
SE020 = playSe( spep_0 + 300, 1182 );
setSeVolumeByWorkId( spep_0 + 300, SE020, 20 );
setSeVolumeByWorkId( spep_0 + 302, SE020, 40 );
setSeVolumeByWorkId( spep_0 + 304, SE020, 60 );
setSeVolumeByWorkId( spep_0 + 306, SE020, 80 );
setSeVolumeByWorkId( spep_0 + 308, SE020, 100 );

--炎追加２_1
SE021 = playSe( spep_0 + 304, 1014 );

-- ** 白フェード ** --
entryFade( spep_0 + 304, 12, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 316;


--------------------------------------
--敵前,敵奥エフェクト球(196F)
--------------------------------------
-- ** エフェクト等 ** --
tama_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --炎の中、投げ飛ばし：敵より前(ef_003)
setEffMoveKey( spep_1 + 0, tama_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 196, tama_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tama_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 196, tama_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tama_f, 0 );
setEffRotateKey( spep_1 + 196, tama_f, 0 );
setEffAlphaKey( spep_1 + 0, tama_f, 255 );
setEffAlphaKey( spep_1 + 196, tama_f, 255 );

tama_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --炎の中、投げ飛ばし：敵より後ろ(ef_004)
setEffMoveKey( spep_1 + 0, tama_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 196, tama_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tama_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 196, tama_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tama_b, 0 );
setEffRotateKey( spep_1 + 196, tama_b, 0 );
setEffAlphaKey( spep_1 + 0, tama_b, 255 );
setEffAlphaKey( spep_1 + 196, tama_b, 255 );

spep_x = spep_1 + 108;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 70, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 70, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 70, 515.5 , 0 );
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

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 100,  906, 95, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 100, shuchusen2, 95, 25 );
setEffMoveKey(   spep_1 + 100, shuchusen2, 0, 0 , 0 );
setEffMoveKey(   spep_1 + 195, shuchusen2, 0, 0 , 0 );
setEffScaleKey(  spep_1 + 100, shuchusen2, 1.4, 1.4 );
setEffScaleKey(  spep_1 + 195, shuchusen2, 1.4, 1.4 );
setEffRotateKey( spep_1 + 100, shuchusen2, 0 );
setEffRotateKey( spep_1 + 195, shuchusen2, 0 );
setEffAlphaKey(  spep_1 + 100, shuchusen2, 0 );
setEffAlphaKey(  spep_1 + 120, shuchusen2, 0 );
setEffAlphaKey(  spep_1 + 121, shuchusen2, 255 );
setEffAlphaKey(  spep_1 + 195, shuchusen2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 113, 1, 0 );
changeAnime( spep_1 + 0, 1, 6 );
changeAnime( spep_1 -3 + 38, 1, 107 );
changeAnime( spep_1 -3 + 60, 1, 104 );
changeAnime( spep_1 -3 + 66, 1, 118 );

setMoveKey( spep_1 + 0, 1, 93.9, -126.5 , 0 );
setMoveKey( spep_1 + 1, 1, 92.3, -124.1 , 0 );
setMoveKey( spep_1 + 2, 1, 90.2, -121.1 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 87.4, -117.3 , 0 );
setMoveKey( spep_1 -3 + 7, 1, 87.4, -117.3 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 84.1, -112.5 , 0 );
setMoveKey( spep_1 -3 + 9, 1, 84.1, -112.5 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 79.9, -106.6 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 74.9, -99.4 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 68.8, -90.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 61.3, -80.2 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 52.4, -67.6 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 42.1, -53 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 30.4, -36.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 17.2, -17.6 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 2.9, 2.7 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -12.2, 24.1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -27.7, 46 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -42.9, 67.6 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -57.6, 88.6 , 0 );
setMoveKey( spep_1 -3 + 37, 1, -71.7, 108.4 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -52, 130.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -60.6, 125.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -28.8, 113.5 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -23, 112.4 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -14.6, 103.6 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -4.9, 93.3 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 6.1, 81.7 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 18.7, 68.6 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 32.7, 53.7 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 48.5, 37.1 , 0 );
setMoveKey( spep_1 -3 + 59, 1, 65.7, 18.9 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 112.1, 4.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 122.9, 31.8 , 0 );
setMoveKey( spep_1 -3 + 65, 1, 121.7, 35.2 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 123, -1.7 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 141, 3.9 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 158.9, 9.5 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 176.8, 15 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 194.6, 20.5 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 196.2, 19.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 197.8, 18.2 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 199.4, 17.2 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 201, 16 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 202.6, 14.9 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 204.2, 13.8 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 205.7, 12.7 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 206.5, 12.8 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 207.3, 12.8 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 208.1, 12.8 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 208.9, 12.9 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 209.6, 12.9 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 210.4, 12.9 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 211.3, 13.1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 175.5, 32.6 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 139.6, 52 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 212, 1.2 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 348.4, -94.8 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 605.2, -268.1 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 998.3, -530.8 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 1581, -915.8 , 0 );

setScaleKey( spep_1 + 0, 1, 3.95, 3.95 );
setScaleKey( spep_1 + 1, 1, 3.93, 3.93 );
setScaleKey( spep_1 + 2, 1, 3.9, 3.9 );
setScaleKey( spep_1 -3 + 6, 1, 3.85, 3.85 );
setScaleKey( spep_1 -3 + 7, 1, 3.85, 3.85 );
setScaleKey( spep_1 -3 + 8, 1, 3.8, 3.8 );
setScaleKey( spep_1 -3 + 9, 1, 3.8, 3.8 );
setScaleKey( spep_1 -3 + 10, 1, 3.74, 3.74 );
setScaleKey( spep_1 -3 + 12, 1, 3.66, 3.66 );
setScaleKey( spep_1 -3 + 14, 1, 3.56, 3.56 );
setScaleKey( spep_1 -3 + 16, 1, 3.45, 3.45 );
setScaleKey( spep_1 -3 + 18, 1, 3.31, 3.31 );
setScaleKey( spep_1 -3 + 20, 1, 3.15, 3.15 );
setScaleKey( spep_1 -3 + 22, 1, 2.97, 2.97 );
setScaleKey( spep_1 -3 + 24, 1, 2.76, 2.76 );
setScaleKey( spep_1 -3 + 26, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 28, 1, 2.31, 2.31 );
setScaleKey( spep_1 -3 + 30, 1, 2.07, 2.07 );
setScaleKey( spep_1 -3 + 32, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 34, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 37, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 38, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 + 40, 1, 0.52, 0.52 );
setScaleKey( spep_1 -3 + 42, 1, 0.53, 0.53 );
setScaleKey( spep_1 -3 + 44, 1, 0.54, 0.54 );
setScaleKey( spep_1 -3 + 46, 1, 0.56, 0.56 );
setScaleKey( spep_1 -3 + 48, 1, 0.58, 0.58 );
setScaleKey( spep_1 -3 + 50, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 52, 1, 0.64, 0.64 );
setScaleKey( spep_1 -3 + 54, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 56, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 59, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 60, 1, 2.21, 2.21 );
setScaleKey( spep_1 -3 + 62, 1, 2.32, 2.32 );
setScaleKey( spep_1 -3 + 65, 1, 2.44, 2.44 );
setScaleKey( spep_1 -3 + 66, 1, 2.24, 2.25 );
setScaleKey( spep_1 -3 + 68, 1, 2.39, 2.4 );
setScaleKey( spep_1 -3 + 70, 1, 2.54, 2.55 );
setScaleKey( spep_1 -3 + 72, 1, 2.69, 2.69 );
setScaleKey( spep_1 -3 + 74, 1, 2.84, 2.84 );
setScaleKey( spep_1 -3 + 76, 1, 2.86, 2.86 );
setScaleKey( spep_1 -3 + 78, 1, 2.88, 2.88 );
setScaleKey( spep_1 -3 + 80, 1, 2.91, 2.91 );
setScaleKey( spep_1 -3 + 82, 1, 2.93, 2.93 );
setScaleKey( spep_1 -3 + 84, 1, 2.95, 2.95 );
setScaleKey( spep_1 -3 + 86, 1, 2.97, 2.97 );
setScaleKey( spep_1 -3 + 88, 1, 2.99, 2.99 );
setScaleKey( spep_1 -3 + 90, 1, 2.99, 2.99 );
setScaleKey( spep_1 -3 + 92, 1, 2.98, 2.98 );
setScaleKey( spep_1 -3 + 98, 1, 2.98, 2.98 );
setScaleKey( spep_1 -3 + 100, 1, 2.97, 2.97 );
setScaleKey( spep_1 -3 + 102, 1, 2.97, 2.97 );
setScaleKey( spep_1 -3 + 104, 1, 2.78, 2.78 );
setScaleKey( spep_1 -3 + 106, 1, 2.59, 2.59 );
setScaleKey( spep_1 -3 + 108, 1, 3.17, 3.17 );
setScaleKey( spep_1 -3 + 110, 1, 4.25, 4.25 );
setScaleKey( spep_1 -3 + 112, 1, 6.32, 6.32 );
setScaleKey( spep_1 -3 + 114, 1, 7.50, 7.50 );--エネミーMAX7.5まで
setScaleKey( spep_1 -3 + 116, 1, 7.50, 7.50 );--エネミーMAX7.5まで
--setScaleKey( spep_1 -3 + 114, 1, 9.51, 9.5 );
--setScaleKey( spep_1 -3 + 116, 1, 14.24, 14.23 );

setRotateKey( spep_1 + 0, 1, 65 );
setRotateKey( spep_1 + 1, 1, 65 );
setRotateKey( spep_1 + 2, 1, 65 );
setRotateKey( spep_1 + 3, 1, 65 );
setRotateKey( spep_1 + 4, 1, 65 );
setRotateKey( spep_1 + 5, 1, 65 );
setRotateKey( spep_1 + 6, 1, 65 );
setRotateKey( spep_1 -3 + 37, 1, 65 );
setRotateKey( spep_1 -3 + 38, 1, -40 );
setRotateKey( spep_1 -3 + 40, 1, -39.9 );
setRotateKey( spep_1 -3 + 52, 1, -39.9 );
setRotateKey( spep_1 -3 + 54, 1, -40 );
setRotateKey( spep_1 -3 + 59, 1, -40 );
setRotateKey( spep_1 -3 + 60, 1, 70.5 );
setRotateKey( spep_1 -3 + 62, 1, 55.9 );
setRotateKey( spep_1 -3 + 65, 1, 41.4 );
setRotateKey( spep_1 -3 + 66, 1, 24.9 );
setRotateKey( spep_1 -3 + 68, 1, 20.5 );
setRotateKey( spep_1 -3 + 70, 1, 16.1 );
setRotateKey( spep_1 -3 + 72, 1, 11.7 );
setRotateKey( spep_1 -3 + 74, 1, 7.3 );
setRotateKey( spep_1 -3 + 110, 1, 7.3 );
setRotateKey( spep_1 -3 + 112, 1, 6.8 );
setRotateKey( spep_1 -3 + 114, 1, 6.3 );
setRotateKey( spep_1 -3 + 116, 1, 5.8 );


-- ** 音 ** --
--炎２
SE022 = playSe( spep_1 + 10, 1268 );
setSeVolumeByWorkId( spep_1 + 10, SE022, 100 );
stopSe( spep_1 +196 + 16, SE022, 0 );

--敵突き放す1
SE023 = playSe( spep_1 + 42, 1013 );

--敵突き放す2
SE024 = playSe( spep_1 + 46, 1004 );

--敵立て直す3
SE025 = playSe( spep_1 + 64, 44 );
setSeVolumeByWorkId( spep_1 + 64, SE025, 68 );
stopSe( spep_1 + 74, SE025, 6 );

--敵立て直す4
SE026 = playSe( spep_1 + 68, 1007 );

--気弾溜め
SE027 = playSe( spep_1 + 122, 1003 );

--気弾溜め
SE028 = playSe( spep_1 + 130, 1200 );
setSeVolumeByWorkId( spep_1 + 130, SE028, 0 );
setSeVolumeByWorkId( spep_1 + 132, SE028, 71 );
setSeVolumeByWorkId( spep_1 + 134, SE028, 142 );
setSeVolumeByWorkId( spep_1 + 136, SE028, 213 );
setSeVolumeByWorkId( spep_1 + 138, SE028, 284 );
setSeVolumeByWorkId( spep_1 + 140, SE028, 355 );
stopSe( spep_1 +196 + 10, SE028, 0 );
setStartTimeMs( SE028,  133 );

--顔カットイン
SE029 = playSe( spep_1 + 124, 1018 );

--気弾溜め
SE030 = playSe( spep_1 + 132, 1186 );
stopSe( spep_1 +196 + 10, SE030, 0 );
setPitch( spep_1 + 132, SE030, -500 );
setTimeStretch( SE030, 0.67, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 196, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1 + 184, 12, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 196;


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;


--------------------------------------
--気弾敵に向かって拡大(56F)
--------------------------------------
-- ** エフェクト等 ** --
kakudai = entryEffectLife( spep_3 + 0, SP_05, 55, 0x100, -1, 0, 0, 0 );  --気弾敵に向かって拡大(ef_005)
setEffMoveKey( spep_3 + 0, kakudai, 0, 0 , 0 );
setEffMoveKey( spep_3 + 55, kakudai, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kakudai, 1.0, 1.0 );
setEffScaleKey( spep_3 + 55, kakudai, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kakudai, 0 );
setEffRotateKey( spep_3 + 55, kakudai, 0 );
setEffAlphaKey( spep_3 + 0, kakudai, 255 );
setEffAlphaKey( spep_3 + 55, kakudai, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 55, 0x100, -1, -100, 60, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen3, 55, 25 );
setEffMoveKey(   spep_3 + 0, shuchusen3, -100, 60 , 0 );
setEffMoveKey(   spep_3 + 55, shuchusen3, -100, 60 , 0 );
setEffScaleKey(  spep_3 + 0, shuchusen3, 2.2, 1.6 );
setEffScaleKey(  spep_3 + 55, shuchusen3, 2.2, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 55, shuchusen3, 0 );
setEffAlphaKey(  spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey(  spep_3 + 55, shuchusen3, 255 );

-- ** 音 ** --
--気弾発射1
SE032 = playSe( spep_3 + 16, 1027 );
setSeVolumeByWorkId( spep_3 + 16, SE032, 79 );

--気弾発射2
SE033 = playSe( spep_3 + 16, 1177 );
setSeVolumeByWorkId( spep_3 + 26, SE033, 87 );

--気弾発射3
SE034 = playSe( spep_3 + 16, 1193 );
stopSe( spep_3 +56 +66 + 22, SE034, 20 );

--気弾発射4
SE035 = playSe( spep_3 + 20, 1109 );
setSeVolumeByWorkId( spep_3 + 30, SE035, 83 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFade( spep_3 + 88, 18, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


--------------------------------------
--敵気弾に飲み込まれる(66F)
--------------------------------------
-- ** エフェクト等 ** --
kidan_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --敵気弾に飲み込まれる：敵より前(ef_006)
setEffMoveKey( spep_4 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 66, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan_f, 0 );
setEffRotateKey( spep_4 + 66, kidan_f, 0 );
setEffAlphaKey( spep_4 + 0, kidan_f, 255 );
setEffAlphaKey( spep_4 + 66, kidan_f, 255 );

-- ** エフェクト等 ** --
kidan_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --杖構え〜杖発光(ef_006)
setEffMoveKey( spep_4 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 66, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan_b, 0 );
setEffRotateKey( spep_4 + 66, kidan_b, 0 );
setEffAlphaKey( spep_4 + 0, kidan_b, 255 );
setEffAlphaKey( spep_4 + 66, kidan_b, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 0,  906, 65, 0x100, -1, 200, 60, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen4, 65, 25 );
setEffMoveKey(   spep_4 + 0, shuchusen4, 200, 60 , 0 );
setEffMoveKey(   spep_4 + 65, shuchusen4, 200, 60 , 0 );
setEffScaleKey(  spep_4 + 0, shuchusen4, 2.2, 1.6 );
setEffScaleKey(  spep_4 + 65, shuchusen4, 2.2, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4 + 65, shuchusen4, 0 );
setEffAlphaKey(  spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey(  spep_4 + 65, shuchusen4, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 66, 1, 0 );
changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 -3 + 32, 1, 106 );

setMoveKey( spep_4 + 0, 1, 177.4, 127.2 , 0 );
setMoveKey( spep_4 + 1, 1, 174.5, 127.1 , 0 );
setMoveKey( spep_4 + 2, 1, 171.2, 126.9 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 167.6, 126.7 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 163.8, 126.5 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 159.6, 126.1 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 155.1, 125.8 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 150.4, 125.4 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 145.3, 125 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 142.5, 123.9 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 139.7, 122.7 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 136.7, 121.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 133.6, 120 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 130.4, 118.4 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 127.2, 116.9 , 0 );
setMoveKey( spep_4 -3 + 31, 1, 123.6, 115.2 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 54.1, 169.1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 85.5, 126.4 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 51.8, 169.9 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 83.5, 126.9 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 69.3, 145.2 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 67.5, 142.4 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 73.8, 155.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 71.2, 151.3 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 76.7, 163.1 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 74.2, 159 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 79.8, 170.9 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 77.4, 166.9 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 83.1, 179 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 80.8, 175.1 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 86.6, 187.4 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 84.5, 187.7 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 90.4, 196.1 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 88.4, 196.6 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 94.4, 205.1 , 0 );
setMoveKey( spep_4 -3 + 69, 1, 94.4, 205.1 , 0 );

setScaleKey( spep_4 + 0, 1, 1.06, 1.06 );
setScaleKey( spep_4 + 1, 1, 1.11, 1.11 );
setScaleKey( spep_4 + 2, 1, 1.16, 1.16 );
setScaleKey( spep_4 -3 + 6, 1, 1.22, 1.22 );
setScaleKey( spep_4 -3 + 8, 1, 1.28, 1.28 );
setScaleKey( spep_4 -3 + 10, 1, 1.35, 1.35 );
setScaleKey( spep_4 -3 + 12, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 14, 1, 1.51, 1.51 );
setScaleKey( spep_4 -3 + 16, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 18, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 20, 1, 1.81, 1.8 );
setScaleKey( spep_4 -3 + 22, 1, 1.92, 1.91 );
setScaleKey( spep_4 -3 + 24, 1, 2.04, 2.03 );
setScaleKey( spep_4 -3 + 26, 1, 2.17, 2.15 );
setScaleKey( spep_4 -3 + 28, 1, 2.3, 2.28 );
setScaleKey( spep_4 -3 + 31, 1, 2.43, 2.41 );
setScaleKey( spep_4 -3 + 32, 1, 2.09, 2.09 );
setScaleKey( spep_4 -3 + 34, 1, 2.1, 2.1 );
setScaleKey( spep_4 -3 + 36, 1, 2.11, 2.11 );
setScaleKey( spep_4 -3 + 38, 1, 2.11, 2.11 );
setScaleKey( spep_4 -3 + 40, 1, 2.12, 2.12 );
setScaleKey( spep_4 -3 + 42, 1, 2.14, 2.14 );
setScaleKey( spep_4 -3 + 44, 1, 2.15, 2.15 );
setScaleKey( spep_4 -3 + 46, 1, 2.17, 2.17 );
setScaleKey( spep_4 -3 + 48, 1, 2.19, 2.19 );
setScaleKey( spep_4 -3 + 50, 1, 2.21, 2.21 );
setScaleKey( spep_4 -3 + 52, 1, 2.23, 2.23 );
setScaleKey( spep_4 -3 + 54, 1, 2.25, 2.25 );
setScaleKey( spep_4 -3 + 56, 1, 2.27, 2.27 );
setScaleKey( spep_4 -3 + 58, 1, 2.29, 2.29 );
setScaleKey( spep_4 -3 + 60, 1, 2.31, 2.31 );
setScaleKey( spep_4 -3 + 62, 1, 2.33, 2.33 );
setScaleKey( spep_4 -3 + 64, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 66, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 68, 1, 2.4, 2.4 );
setScaleKey( spep_4 -3 + 69, 1, 2.4, 2.4 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 31, 1, 0 );
setRotateKey( spep_4 -3 + 32, 1, -47.4 );
setRotateKey( spep_4 -3 + 69, 1, -47.4 );


-- ** 音 ** --
--気弾近づく1
SE036 = playSe( spep_4 + 0, 1239 );
setSeVolumeByWorkId( spep_4 + 0, SE036, 77 );
stopSe( spep_4 +66 + 40, SE036, 0 );
setPitch( spep_4 + 0, SE036, -700 );
setTimeStretch( SE036, 0.53, 10, 1 );

--気弾近づく2
SE037 = playSe( spep_4 + 0, 1249 );
setSeVolumeByWorkId( spep_4 + 0, SE037, 65 );
stopSe( spep_4 +66 + 40, SE037, 0 );
setPitch( spep_4 + 0, SE037, -500 );
setTimeStretch( SE037, 0.67, 10, 1 );

--気弾近づく3
SE038 = playSe( spep_4 + 0, 1203 );
stopSe( spep_4 +66 + 40, SE038, 0 );

--気弾近づく4
SE039 = playSe( spep_4 + 12, 1215 );
stopSe( spep_4 +66 + 40, SE039, 10 );

--敵重なる
SE040 = playSe( spep_4 + 30, 1021 );
stopSe( spep_4 +66 + 40, SE040, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 66, 0, 0, 0, 0, 180);       -- ベース暗め　背景

-- ** 白フェード ** --
--entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4 + 52, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4 + 66;


--------------------------------------
--火の玉爆発(96F)
--------------------------------------
-- ** エフェクト等 ** --
tama = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --火の玉爆発(ef_008)
setEffMoveKey( spep_5 + 0, tama, 0, 0 , 0 );
setEffMoveKey( spep_5 + 96, tama, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tama, 1.0, 1.0 );
setEffScaleKey( spep_5 + 96, tama, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tama, 0 );
setEffRotateKey( spep_5 + 96, tama, 0 );
setEffAlphaKey( spep_5 + 0, tama, 255 );
setEffAlphaKey( spep_5 + 96, tama, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5 + 47,  906, 48, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 47, shuchusen5, 48, 25 );
setEffMoveKey(   spep_5 + 47, shuchusen5, 0, 0 , 0 );
setEffMoveKey(   spep_5 + 95, shuchusen5, 0, 0 , 0 );
setEffScaleKey(  spep_5 + 47, shuchusen5, 1.4, 1.4 );
setEffScaleKey(  spep_5 + 95, shuchusen5, 1.4, 1.4 );
setEffRotateKey( spep_5 + 47, shuchusen5, 0 );
setEffRotateKey( spep_5 + 95, shuchusen5, 0 );
setEffAlphaKey(  spep_5 + 47, shuchusen5, 255 );
setEffAlphaKey(  spep_5 + 95, shuchusen5, 255 );

-- ** 音 ** --
--球体回転する1
SE041 = playSe( spep_5 + 12, 1003 );

--球体回転する2
SE042 = playSe( spep_5 + 30, 1003 );

--爆発1
SE043 = playSe( spep_5 + 38, 1023 );
setSeVolumeByWorkId( spep_5 + 38, SE043, 88 );

--爆発2
SE044 = playSe( spep_5 + 40, 1024 );

--爆発3
SE045 = playSe( spep_5 + 68, 1161 );
setSeVolumeByWorkId( spep_5 + 68, SE045, 52 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, 0, 0, 0, 180);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5 + 84, 12, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6 = spep_5 + 96;


--------------------------------------
--火の玉振りそそぐ(136F)
--------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --火の玉振りそそぐ(ef_009)
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 136, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 136, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 136, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 136, finish_f, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6 + 33,  906, 102, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 33, shuchusen6, 102, 25 );
setEffMoveKey(   spep_6 + 33, shuchusen6, 0, 0 , 0 );
setEffMoveKey(   spep_6 + 135, shuchusen6, 0, 0 , 0 );
setEffScaleKey(  spep_6 + 33, shuchusen6, 1.5, 1.9 );
setEffScaleKey(  spep_6 + 135, shuchusen6, 1.5, 1.9 );
setEffRotateKey( spep_6 + 33, shuchusen6, 0 );
setEffRotateKey( spep_6 + 135, shuchusen6, 0 );
setEffAlphaKey(  spep_6 + 33, shuchusen6, 255 );
setEffAlphaKey(  spep_6 + 135, shuchusen6, 255 );


-- ** 音 ** --
--光輪を放つ
SE046 = playSe( spep_6 + 0, 1179 );
setSeVolumeByWorkId( spep_6 + 0, SE046, 56 );

--気弾降りそそぐ
SE047 = playSe( spep_6 + 36, 1067 );

--気弾降りそそぐ
SE048 = playSe( spep_6 + 52, 1159 );
setSeVolumeByWorkId( spep_6 + 52, SE048, 66 );

--気弾降りそそぐ
SE049 = playSe( spep_6 + 68, 1160 );
setSeVolumeByWorkId( spep_6 + 68, SE049, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 136, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 26 );
endPhase( spep_6 + 126 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 火竜巻→火の玉(316F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --瞬間移動、火竜巻→火の玉：敵より前(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 316, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 316, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 316, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 316, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --瞬間移動、火竜巻→火の玉：敵より後ろ(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 316, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 316, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 316, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 316, first_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 78.1, -1.7 , 0 );
setMoveKey( spep_0 + 1, 1, 81.7, -2.1 , 0 );
setMoveKey( spep_0 + 2, 1, 85.3, -2.5 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 88.8, -2.8 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 88.8, -2.8 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 92.4, -3.2 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 92.4, -3.2 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 95.9, -3.6 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 99.3, -3.9 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 102.7, -4.3 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 106.1, -4.7 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 109.5, -5.1 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 112.8, -5.4 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 116.1, -5.9 , 0 );

setScaleKey( spep_0 + 0, 1, 2.87, 2.88 );
setScaleKey( spep_0 + 1, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 2, 1, 2.82, 2.82 );
setScaleKey( spep_0 -3 + 6, 1, 2.8, 2.8 );
setScaleKey( spep_0 -3 + 7, 1, 2.8, 2.8 );
setScaleKey( spep_0 -3 + 8, 1, 2.77, 2.77 );
setScaleKey( spep_0 -3 + 9, 1, 2.77, 2.77 );
setScaleKey( spep_0 -3 + 10, 1, 2.75, 2.75 );
setScaleKey( spep_0 -3 + 12, 1, 2.72, 2.72 );
setScaleKey( spep_0 -3 + 14, 1, 2.69, 2.69 );
setScaleKey( spep_0 -3 + 16, 1, 2.67, 2.67 );
setScaleKey( spep_0 -3 + 18, 1, 2.64, 2.64 );
setScaleKey( spep_0 -3 + 20, 1, 2.61, 2.61 );
setScaleKey( spep_0 -3 + 22, 1, 2.59, 2.59 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 0, 8 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 316, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 20 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 119.4, -6.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 122.5, -6.7 , 0 );
    setMoveKey( SP_dodge + 4, 1, 125.9, -6.9 , 0 );
    setMoveKey( SP_dodge + 6, 1, 125.9, -6.9 , 0 );
    setMoveKey( SP_dodge + 8, 1, 125.9, -6.9 , 0 );
    setMoveKey( SP_dodge + 10, 1, 125.9, -6.9 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2.56, 2.56 );
    setScaleKey( SP_dodge + 2, 1, 2.53, 2.53 );
    setScaleKey( SP_dodge + 4, 1, 2.5, 2.5 );
    setScaleKey( SP_dodge + 6, 1, 2.5, 2.5 );
    setScaleKey( SP_dodge + 8, 1, 2.5, 2.5 );
    setScaleKey( SP_dodge + 10, 1, 2.5, 2.5 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 2, 1, 0 );
    setRotateKey( SP_dodge + 4, 1, 0 );
    setRotateKey( SP_dodge + 6, 1, 0 );
    setRotateKey( SP_dodge + 8, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );

    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
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

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 73,  906, 39, 0x100, -1, 0, 130, 0 );  --集中線
setEffShake( spep_0 + 73, shuchusen1, 39, 25 );
setEffMoveKey(   spep_0 + 73, shuchusen1, 0, 50 , 0 );
setEffMoveKey(   spep_0 + 112, shuchusen1, 0, 50 , 0 );
setEffScaleKey(  spep_0 + 73, shuchusen1, 1.2, 1.5 );
setEffScaleKey(  spep_0 + 112, shuchusen1, 1.2, 1.5 );
setEffRotateKey( spep_0 + 73, shuchusen1, 0 );
setEffRotateKey( spep_0 + 112, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 73, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 112, shuchusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 156, 1, 0 );
changeAnime( spep_0 -3 + 42, 1, 118 );
changeAnime( spep_0 -3 + 76, 1, 106 );

setMoveKey( spep_0 -3 + 24, 1, 119.4, -6.2 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 122.5, -6.7 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 125.9, -6.9 , 0 );
setMoveKey( spep_0 -3 + 41, 1, 125.9, -6.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 125.9, -22.8 , 0 );
setMoveKey( spep_0 -3 + 75, 1, 125.9, -22.8 , 0 );
c=30;
d=-10;
setMoveKey( spep_0 -3 + 76, 1, 10.2+c, -65.9+d , 0 );
setMoveKey( spep_0 -3 + 78, 1, 2.9+c, -40+d , 0 );
setMoveKey( spep_0 -3 + 80, 1, -12.3+c, -30.1+d , 0 );
setMoveKey( spep_0 -3 + 82, 1, -19.7+c, -4.2+d , 0 );
setMoveKey( spep_0 -3 + 84, 1, -29+c, 25.5+d , 0 );
setMoveKey( spep_0 -3 + 86, 1, -37.5+c, 52.7+d , 0 );
setMoveKey( spep_0 -3 + 88, 1, -47.2+c, 83.5+d , 0 );
setMoveKey( spep_0 -3 + 90, 1, -54.2+c, 105.8+d , 0 );
setMoveKey( spep_0 -3 + 92, 1, -59.1+c, 121.4+d , 0 );
setMoveKey( spep_0 -3 + 94, 1, -62.4+c, 132.1+d , 0 );
setMoveKey( spep_0 -3 + 96, 1, -64.7+c, 139.4+d , 0 );
setMoveKey( spep_0 -3 + 98, 1, -66.2+c, 144.2+d , 0 );
setMoveKey( spep_0 -3 + 100, 1, -67.1+c, 147.3+d , 0 );
setMoveKey( spep_0 -3 + 102, 1, -67.6+c, 148.9+d , 0 );
setMoveKey( spep_0 -3 + 104, 1, -67.8+c, 149.4+d , 0 );
setMoveKey( spep_0 -3 + 106, 1, -67.2+c, 149.4+d , 0 );
setMoveKey( spep_0 -3 + 108, 1, -66.7+c, 149.5+d , 0 );
setMoveKey( spep_0 -3 + 110, 1, -66.1+c, 149.5+d , 0 );
setMoveKey( spep_0 -3 + 112, 1, -65.5+c, 149.5+d , 0 );
setMoveKey( spep_0 -3 + 114, 1, -65+c, 149.5+d , 0 );
setMoveKey( spep_0 -3 + 116, 1, -64.5+c, 149.6+d , 0 );
setMoveKey( spep_0 -3 + 118, 1, -64+c, 149.7+d , 0 );
setMoveKey( spep_0 -3 + 120, 1, -63.4+c, 149.7+d , 0 );
setMoveKey( spep_0 -3 + 122, 1, -62.8+c, 149.7+d , 0 );
setMoveKey( spep_0 -3 + 124, 1, -62.3+c, 149.8+d , 0 );
setMoveKey( spep_0 -3 + 126, 1, -61.8+c, 149.8+d , 0 );
setMoveKey( spep_0 -3 + 128, 1, -61.3+c, 149.8+d , 0 );
setMoveKey( spep_0 -3 + 130, 1, -60.7+c, 149.9+d , 0 );
setMoveKey( spep_0 -3 + 132, 1, -60.2+c, 149.9+d , 0 );
setMoveKey( spep_0 -3 + 134, 1, -59.6+c, 150+d , 0 );
setMoveKey( spep_0 -3 + 136, 1, -59.1+c, 150+d , 0 );
setMoveKey( spep_0 -3 + 138, 1, -58.6+c, 150+d , 0 );
setMoveKey( spep_0 -3 + 140, 1, -58+c, 150.1+d , 0 );
setMoveKey( spep_0 -3 + 142, 1, -57.5+c, 150.1+d , 0 );
setMoveKey( spep_0 -3 + 144, 1, -57+c, 150.1+d , 0 );
setMoveKey( spep_0 -3 + 146, 1, -56.4+c, 150.2+d , 0 );
setMoveKey( spep_0 -3 + 148, 1, -55.9+c, 150.3+d , 0 );
setMoveKey( spep_0 -3 + 150, 1, -55.3+c, 150.3+d , 0 );
setMoveKey( spep_0 -3 + 152, 1, -54.8+c, 150.3+d , 0 );
setMoveKey( spep_0 -3 + 154, 1, -54.3+c, 150.4+d , 0 );
setMoveKey( spep_0 -3 + 156, 1, -53.7+c, 150.4+d , 0 );
setMoveKey( spep_0 -3 + 158, 1, -53.2+c, 150.3+d , 0 );
setMoveKey( spep_0 -3 + 159, 1, -53.2+c, 150.3+d , 0 );

setScaleKey( spep_0 -3 + 24, 1, 2.56, 2.56 );
setScaleKey( spep_0 -3 + 26, 1, 2.53, 2.53 );
setScaleKey( spep_0 -3 + 28, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 75, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 76, 1, 2.68, 2.68 );
setScaleKey( spep_0 -3 + 78, 1, 2.59, 2.59 );
setScaleKey( spep_0 -3 + 80, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 82, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 84, 1, 2.18, 2.18 );
setScaleKey( spep_0 -3 + 86, 1, 1.96, 1.96 );
setScaleKey( spep_0 -3 + 88, 1, 1.72, 1.72 );
setScaleKey( spep_0 -3 + 90, 1, 1.55, 1.55 );
setScaleKey( spep_0 -3 + 92, 1, 1.42, 1.42 );
setScaleKey( spep_0 -3 + 94, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 96, 1, 1.28, 1.28 );
setScaleKey( spep_0 -3 + 98, 1, 1.24, 1.24 );
setScaleKey( spep_0 -3 + 100, 1, 1.22, 1.22 );
setScaleKey( spep_0 -3 + 102, 1, 1.21, 1.21 );
setScaleKey( spep_0 -3 + 104, 1, 1.21, 1.21 );
setScaleKey( spep_0 -3 + 106, 1, 1.2, 1.2 );
setScaleKey( spep_0 -3 + 108, 1, 1.19, 1.19 );
setScaleKey( spep_0 -3 + 110, 1, 1.18, 1.18 );
setScaleKey( spep_0 -3 + 112, 1, 1.18, 1.18 );
setScaleKey( spep_0 -3 + 114, 1, 1.17, 1.17 );
setScaleKey( spep_0 -3 + 116, 1, 1.16, 1.16 );
setScaleKey( spep_0 -3 + 118, 1, 1.16, 1.16 );
setScaleKey( spep_0 -3 + 120, 1, 1.15, 1.15 );
setScaleKey( spep_0 -3 + 122, 1, 1.14, 1.14 );
setScaleKey( spep_0 -3 + 124, 1, 1.14, 1.14 );
setScaleKey( spep_0 -3 + 126, 1, 1.13, 1.13 );
setScaleKey( spep_0 -3 + 128, 1, 1.12, 1.12 );
setScaleKey( spep_0 -3 + 130, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 132, 1, 1.11, 1.11 );
setScaleKey( spep_0 -3 + 134, 1, 1.1, 1.1 );
setScaleKey( spep_0 -3 + 136, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 138, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 140, 1, 1.08, 1.08 );
setScaleKey( spep_0 -3 + 142, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 144, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 146, 1, 1.06, 1.06 );
setScaleKey( spep_0 -3 + 148, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 150, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 152, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 154, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 156, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 158, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 159, 1, 1.02, 1.02 );

setRotateKey( spep_0 -3 + 24, 1, 0 );
setRotateKey( spep_0 -3 + 75, 1, 0 );
setRotateKey( spep_0 -3 + 76, 1, -76 );
setRotateKey( spep_0 -3 + 159, 1, -76 );

-- ** 音 ** --
--瞬間移動
SE002 = playSe( spep_0 + 40, 1109 );

--瞬間移動
SE003 = playSe( spep_0 + 62, 1109 );

--後ろから羽交い締め1
SE004 = playSe( spep_0 + 74, 1012 );
setSeVolumeByWorkId( spep_0 + 74, SE004, 95 );

--後ろから羽交い締め
SE005 = playSe( spep_0 + 78, 1006 );
setSeVolumeByWorkId( spep_0 + 78, SE005, 82 );

--炎
SE006 = playSe( spep_0 + 114, 1268 );
setSeVolumeByWorkId( spep_0 + 114, SE006, 141 );
stopSe( spep_0 +316 + 10, SE006, 0 );

--炎つく
SE007 = playSe( spep_0 + 116, 1002 );

--炎追加1_1
SE008 = playSe( spep_0 + 134, 1268 );
setSeVolumeByWorkId( spep_0 + 134, SE008, 35 );
setSeVolumeByWorkId( spep_0 + 136, SE008, 70 );
setSeVolumeByWorkId( spep_0 + 138, SE008, 140 );
setSeVolumeByWorkId( spep_0 + 140, SE008, 175 );
setSeVolumeByWorkId( spep_0 + 142, SE008, 210 );
setSeVolumeByWorkId( spep_0 + 144, SE008, 245 );
setSeVolumeByWorkId( spep_0 + 146, SE008, 280 );
setSeVolumeByWorkId( spep_0 + 148, SE008, 315 );
setSeVolumeByWorkId( spep_0 + 150, SE008, 350 );
stopSe( spep_0 + 184, SE008, 44 );

--炎広がる
SE009 = playSe( spep_0 + 134, 1278 );
setSeVolumeByWorkId( spep_0 + 134, SE009, 46 );
stopSe( spep_0 + 200, SE009, 18 );

--炎追加1_2
SE010 = playSe( spep_0 + 140, 1166 );
setSeVolumeByWorkId( spep_0 + 140, SE010, 251 );
stopSe( spep_0 + 176, SE010, 64 );
setBandpassFilter  ( spep_0 + 140, SE010, 24, 800 );

--炎追加1_3
SE011 = playSe( spep_0 + 142, 1002 );

--球体になる
SE012 = playSe( spep_0 + 218, 8 );

--球体回転する1
SE013 = playSe( spep_0 + 228, 1003 );
setSeVolumeByWorkId( spep_0 + 228, SE013, 55 );
setPitch( spep_0 + 228, SE013, 300 );
setTimeStretch( SE013, 1.2, 10, 1 );

--球体回転する2
SE014 = playSe( spep_0 + 254, 1003 );
setSeVolumeByWorkId( spep_0 + 254, SE014, 56 );
setPitch( spep_0 + 254, SE014, 300 );
setTimeStretch( SE014, 1.2, 10, 1 );

--球体回転する3
SE015 = playSe( spep_0 + 270, 1003 );
setSeVolumeByWorkId( spep_0 + 270, SE015, 55 );
setPitch( spep_0 + 270, SE015, 300 );
setTimeStretch( SE015, 1.2, 10, 1 );

--球体回転する4
SE016 = playSe( spep_0 + 280, 1003 );
setSeVolumeByWorkId( spep_0 + 280, SE016, 63 );
setPitch( spep_0 + 280, SE016, 300 );
setTimeStretch( SE016, 1.2, 10, 1 );

--炎追加２_1
SE017 = playSe( spep_0 + 290, 1268 );
setSeVolumeByWorkId( spep_0 + 290, SE017, 0 );
setSeVolumeByWorkId( spep_0 + 292, SE017, 35  );
setSeVolumeByWorkId( spep_0 + 294, SE017, 70 );
setSeVolumeByWorkId( spep_0 + 296, SE017, 140 );
setSeVolumeByWorkId( spep_0 + 298, SE017, 175 );
setSeVolumeByWorkId( spep_0 + 300, SE017, 210 );
setSeVolumeByWorkId( spep_0 + 302, SE017, 245 );
setSeVolumeByWorkId( spep_0 + 304, SE017, 280 );
setSeVolumeByWorkId( spep_0 + 306, SE017, 315 );
setSeVolumeByWorkId( spep_0 + 308, SE017, 350 );
stopSe( spep_0 +316 + 20, SE017, 60 );

--球体回転する5
SE018 = playSe( spep_0 + 290, 1003 );
setSeVolumeByWorkId( spep_0 + 290, SE018, 63 );
setPitch( spep_0 + 290, SE018, 300 );
setTimeStretch( SE018, 1.2, 10, 1 );

--球体回転する6
SE019 = playSe( spep_0 + 298, 1003 );
setPitch( spep_0 + 298, SE019, 300 );
setTimeStretch( SE019, 1.2, 10, 1 );

--球体広がる
SE020 = playSe( spep_0 + 300, 1182 );
setSeVolumeByWorkId( spep_0 + 300, SE020, 20 );
setSeVolumeByWorkId( spep_0 + 302, SE020, 40 );
setSeVolumeByWorkId( spep_0 + 304, SE020, 60 );
setSeVolumeByWorkId( spep_0 + 306, SE020, 80 );
setSeVolumeByWorkId( spep_0 + 308, SE020, 100 );

--炎追加２_1
SE021 = playSe( spep_0 + 304, 1014 );

-- ** 白フェード ** --
entryFade( spep_0 + 304, 12, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 316;


--------------------------------------
--敵前,敵奥エフェクト球(196F)
--------------------------------------
-- ** エフェクト等 ** --
tama_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --炎の中、投げ飛ばし：敵より前(ef_003)
setEffMoveKey( spep_1 + 0, tama_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 196, tama_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tama_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 196, tama_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tama_f, 0 );
setEffRotateKey( spep_1 + 196, tama_f, 0 );
setEffAlphaKey( spep_1 + 0, tama_f, 255 );
setEffAlphaKey( spep_1 + 196, tama_f, 255 );

tama_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --炎の中、投げ飛ばし：敵より後ろ(ef_004)
setEffMoveKey( spep_1 + 0, tama_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 196, tama_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tama_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 196, tama_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tama_b, 0 );
setEffRotateKey( spep_1 + 196, tama_b, 0 );
setEffAlphaKey( spep_1 + 0, tama_b, 255 );
setEffAlphaKey( spep_1 + 196, tama_b, 255 );

spep_x = spep_1 + 108;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 70, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 70, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 70, 515.5 , 0 );
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

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 100,  906, 95, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 100, shuchusen2, 95, 25 );
setEffMoveKey(   spep_1 + 100, shuchusen2, 0, 0 , 0 );
setEffMoveKey(   spep_1 + 195, shuchusen2, 0, 0 , 0 );
setEffScaleKey(  spep_1 + 100, shuchusen2, 1.4, 1.4 );
setEffScaleKey(  spep_1 + 195, shuchusen2, 1.4, 1.4 );
setEffRotateKey( spep_1 + 100, shuchusen2, 0 );
setEffRotateKey( spep_1 + 195, shuchusen2, 0 );
setEffAlphaKey(  spep_1 + 100, shuchusen2, 0 );
setEffAlphaKey(  spep_1 + 120, shuchusen2, 0 );
setEffAlphaKey(  spep_1 + 121, shuchusen2, 255 );
setEffAlphaKey(  spep_1 + 195, shuchusen2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 113, 1, 0 );
changeAnime( spep_1 + 0, 1, 6 );
changeAnime( spep_1 -3 + 38, 1, 107 );
changeAnime( spep_1 -3 + 60, 1, 104 );
changeAnime( spep_1 -3 + 66, 1, 118 );

setMoveKey( spep_1 + 0, 1, 93.9, -126.5 , 0 );
setMoveKey( spep_1 + 1, 1, 92.3, -124.1 , 0 );
setMoveKey( spep_1 + 2, 1, 90.2, -121.1 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 87.4, -117.3 , 0 );
setMoveKey( spep_1 -3 + 7, 1, 87.4, -117.3 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 84.1, -112.5 , 0 );
setMoveKey( spep_1 -3 + 9, 1, 84.1, -112.5 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 79.9, -106.6 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 74.9, -99.4 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 68.8, -90.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 61.3, -80.2 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 52.4, -67.6 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 42.1, -53 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 30.4, -36.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 17.2, -17.6 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 2.9, 2.7 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -12.2, 24.1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -27.7, 46 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -42.9, 67.6 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -57.6, 88.6 , 0 );
setMoveKey( spep_1 -3 + 37, 1, -71.7, 108.4 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -52, 130.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -60.6, 125.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -28.8, 113.5 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -23, 112.4 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -14.6, 103.6 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -4.9, 93.3 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 6.1, 81.7 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 18.7, 68.6 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 32.7, 53.7 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 48.5, 37.1 , 0 );
setMoveKey( spep_1 -3 + 59, 1, 65.7, 18.9 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 112.1, 4.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 122.9, 31.8 , 0 );
setMoveKey( spep_1 -3 + 65, 1, 121.7, 35.2 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 123, -1.7 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 141, 3.9 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 158.9, 9.5 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 176.8, 15 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 194.6, 20.5 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 196.2, 19.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 197.8, 18.2 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 199.4, 17.2 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 201, 16 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 202.6, 14.9 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 204.2, 13.8 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 205.7, 12.7 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 206.5, 12.8 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 207.3, 12.8 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 208.1, 12.8 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 208.9, 12.9 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 209.6, 12.9 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 210.4, 12.9 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 211.3, 13.1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 175.5, 32.6 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 139.6, 52 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 212, 1.2 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 348.4, -94.8 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 605.2, -268.1 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 998.3, -530.8 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 1581, -915.8 , 0 );

setScaleKey( spep_1 + 0, 1, 3.95, 3.95 );
setScaleKey( spep_1 + 1, 1, 3.93, 3.93 );
setScaleKey( spep_1 + 2, 1, 3.9, 3.9 );
setScaleKey( spep_1 -3 + 6, 1, 3.85, 3.85 );
setScaleKey( spep_1 -3 + 7, 1, 3.85, 3.85 );
setScaleKey( spep_1 -3 + 8, 1, 3.8, 3.8 );
setScaleKey( spep_1 -3 + 9, 1, 3.8, 3.8 );
setScaleKey( spep_1 -3 + 10, 1, 3.74, 3.74 );
setScaleKey( spep_1 -3 + 12, 1, 3.66, 3.66 );
setScaleKey( spep_1 -3 + 14, 1, 3.56, 3.56 );
setScaleKey( spep_1 -3 + 16, 1, 3.45, 3.45 );
setScaleKey( spep_1 -3 + 18, 1, 3.31, 3.31 );
setScaleKey( spep_1 -3 + 20, 1, 3.15, 3.15 );
setScaleKey( spep_1 -3 + 22, 1, 2.97, 2.97 );
setScaleKey( spep_1 -3 + 24, 1, 2.76, 2.76 );
setScaleKey( spep_1 -3 + 26, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 28, 1, 2.31, 2.31 );
setScaleKey( spep_1 -3 + 30, 1, 2.07, 2.07 );
setScaleKey( spep_1 -3 + 32, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 34, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 37, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 38, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 + 40, 1, 0.52, 0.52 );
setScaleKey( spep_1 -3 + 42, 1, 0.53, 0.53 );
setScaleKey( spep_1 -3 + 44, 1, 0.54, 0.54 );
setScaleKey( spep_1 -3 + 46, 1, 0.56, 0.56 );
setScaleKey( spep_1 -3 + 48, 1, 0.58, 0.58 );
setScaleKey( spep_1 -3 + 50, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 52, 1, 0.64, 0.64 );
setScaleKey( spep_1 -3 + 54, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 56, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 59, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 60, 1, 2.21, 2.21 );
setScaleKey( spep_1 -3 + 62, 1, 2.32, 2.32 );
setScaleKey( spep_1 -3 + 65, 1, 2.44, 2.44 );
setScaleKey( spep_1 -3 + 66, 1, 2.24, 2.25 );
setScaleKey( spep_1 -3 + 68, 1, 2.39, 2.4 );
setScaleKey( spep_1 -3 + 70, 1, 2.54, 2.55 );
setScaleKey( spep_1 -3 + 72, 1, 2.69, 2.69 );
setScaleKey( spep_1 -3 + 74, 1, 2.84, 2.84 );
setScaleKey( spep_1 -3 + 76, 1, 2.86, 2.86 );
setScaleKey( spep_1 -3 + 78, 1, 2.88, 2.88 );
setScaleKey( spep_1 -3 + 80, 1, 2.91, 2.91 );
setScaleKey( spep_1 -3 + 82, 1, 2.93, 2.93 );
setScaleKey( spep_1 -3 + 84, 1, 2.95, 2.95 );
setScaleKey( spep_1 -3 + 86, 1, 2.97, 2.97 );
setScaleKey( spep_1 -3 + 88, 1, 2.99, 2.99 );
setScaleKey( spep_1 -3 + 90, 1, 2.99, 2.99 );
setScaleKey( spep_1 -3 + 92, 1, 2.98, 2.98 );
setScaleKey( spep_1 -3 + 98, 1, 2.98, 2.98 );
setScaleKey( spep_1 -3 + 100, 1, 2.97, 2.97 );
setScaleKey( spep_1 -3 + 102, 1, 2.97, 2.97 );
setScaleKey( spep_1 -3 + 104, 1, 2.78, 2.78 );
setScaleKey( spep_1 -3 + 106, 1, 2.59, 2.59 );
setScaleKey( spep_1 -3 + 108, 1, 3.17, 3.17 );
setScaleKey( spep_1 -3 + 110, 1, 4.25, 4.25 );
setScaleKey( spep_1 -3 + 112, 1, 6.32, 6.32 );
setScaleKey( spep_1 -3 + 114, 1, 7.50, 7.50 );--エネミーMAX7.5まで
setScaleKey( spep_1 -3 + 116, 1, 7.50, 7.50 );--エネミーMAX7.5まで
--setScaleKey( spep_1 -3 + 114, 1, 9.51, 9.5 );
--setScaleKey( spep_1 -3 + 116, 1, 14.24, 14.23 );

setRotateKey( spep_1 + 0, 1, 65 );
setRotateKey( spep_1 + 1, 1, 65 );
setRotateKey( spep_1 + 2, 1, 65 );
setRotateKey( spep_1 + 3, 1, 65 );
setRotateKey( spep_1 + 4, 1, 65 );
setRotateKey( spep_1 + 5, 1, 65 );
setRotateKey( spep_1 + 6, 1, 65 );
setRotateKey( spep_1 -3 + 37, 1, 65 );
setRotateKey( spep_1 -3 + 38, 1, -40 );
setRotateKey( spep_1 -3 + 40, 1, -39.9 );
setRotateKey( spep_1 -3 + 52, 1, -39.9 );
setRotateKey( spep_1 -3 + 54, 1, -40 );
setRotateKey( spep_1 -3 + 59, 1, -40 );
setRotateKey( spep_1 -3 + 60, 1, 70.5 );
setRotateKey( spep_1 -3 + 62, 1, 55.9 );
setRotateKey( spep_1 -3 + 65, 1, 41.4 );
setRotateKey( spep_1 -3 + 66, 1, 24.9 );
setRotateKey( spep_1 -3 + 68, 1, 20.5 );
setRotateKey( spep_1 -3 + 70, 1, 16.1 );
setRotateKey( spep_1 -3 + 72, 1, 11.7 );
setRotateKey( spep_1 -3 + 74, 1, 7.3 );
setRotateKey( spep_1 -3 + 110, 1, 7.3 );
setRotateKey( spep_1 -3 + 112, 1, 6.8 );
setRotateKey( spep_1 -3 + 114, 1, 6.3 );
setRotateKey( spep_1 -3 + 116, 1, 5.8 );


-- ** 音 ** --
--炎２
SE022 = playSe( spep_1 + 10, 1268 );
setSeVolumeByWorkId( spep_1 + 10, SE022, 100 );
stopSe( spep_1 +196 + 16, SE022, 0 );

--敵突き放す1
SE023 = playSe( spep_1 + 42, 1013 );

--敵突き放す2
SE024 = playSe( spep_1 + 46, 1004 );

--敵立て直す3
SE025 = playSe( spep_1 + 64, 44 );
setSeVolumeByWorkId( spep_1 + 64, SE025, 68 );
stopSe( spep_1 + 74, SE025, 6 );

--敵立て直す4
SE026 = playSe( spep_1 + 68, 1007 );

--気弾溜め
SE027 = playSe( spep_1 + 122, 1003 );

--気弾溜め
SE028 = playSe( spep_1 + 130, 1200 );
setSeVolumeByWorkId( spep_1 + 130, SE028, 0 );
setSeVolumeByWorkId( spep_1 + 132, SE028, 71 );
setSeVolumeByWorkId( spep_1 + 134, SE028, 142 );
setSeVolumeByWorkId( spep_1 + 136, SE028, 213 );
setSeVolumeByWorkId( spep_1 + 138, SE028, 284 );
setSeVolumeByWorkId( spep_1 + 140, SE028, 355 );
stopSe( spep_1 +196 + 10, SE028, 0 );
setStartTimeMs( SE028,  133 );

--顔カットイン
SE029 = playSe( spep_1 + 124, 1018 );

--気弾溜め
SE030 = playSe( spep_1 + 132, 1186 );
stopSe( spep_1 +196 + 10, SE030, 0 );
setPitch( spep_1 + 132, SE030, -500 );
setTimeStretch( SE030, 0.67, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 196, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1 + 184, 12, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 196;


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;


--------------------------------------
--気弾敵に向かって拡大(56F)
--------------------------------------
-- ** エフェクト等 ** --
kakudai = entryEffectLife( spep_3 + 0, SP_05, 55, 0x100, -1, 0, 0, 0 );  --気弾敵に向かって拡大(ef_005)
setEffMoveKey( spep_3 + 0, kakudai, 0, 0 , 0 );
setEffMoveKey( spep_3 + 55, kakudai, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kakudai, 1.0, 1.0 );
setEffScaleKey( spep_3 + 55, kakudai, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kakudai, 0 );
setEffRotateKey( spep_3 + 55, kakudai, 0 );
setEffAlphaKey( spep_3 + 0, kakudai, 255 );
setEffAlphaKey( spep_3 + 55, kakudai, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 55, 0x100, -1, -100, 60, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen3, 55, 25 );
setEffMoveKey(   spep_3 + 0, shuchusen3, -100, 60 , 0 );
setEffMoveKey(   spep_3 + 55, shuchusen3, -100, 60 , 0 );
setEffScaleKey(  spep_3 + 0, shuchusen3, 2.2, 1.6 );
setEffScaleKey(  spep_3 + 55, shuchusen3, 2.2, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 55, shuchusen3, 0 );
setEffAlphaKey(  spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey(  spep_3 + 55, shuchusen3, 255 );

-- ** 音 ** --
--気弾発射1
SE032 = playSe( spep_3 + 16, 1027 );
setSeVolumeByWorkId( spep_3 + 16, SE032, 79 );

--気弾発射2
SE033 = playSe( spep_3 + 16, 1177 );
setSeVolumeByWorkId( spep_3 + 26, SE033, 87 );

--気弾発射3
SE034 = playSe( spep_3 + 16, 1193 );
stopSe( spep_3 +56 +66 + 22, SE034, 20 );

--気弾発射4
SE035 = playSe( spep_3 + 20, 1109 );
setSeVolumeByWorkId( spep_3 + 30, SE035, 83 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFade( spep_3 + 88, 18, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


--------------------------------------
--敵気弾に飲み込まれる(66F)
--------------------------------------
-- ** エフェクト等 ** --
kidan_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --敵気弾に飲み込まれる：敵より前(ef_006)
setEffMoveKey( spep_4 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 66, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan_f, 0 );
setEffRotateKey( spep_4 + 66, kidan_f, 0 );
setEffAlphaKey( spep_4 + 0, kidan_f, 255 );
setEffAlphaKey( spep_4 + 66, kidan_f, 255 );

-- ** エフェクト等 ** --
kidan_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --杖構え〜杖発光(ef_006)
setEffMoveKey( spep_4 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 66, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan_b, 0 );
setEffRotateKey( spep_4 + 66, kidan_b, 0 );
setEffAlphaKey( spep_4 + 0, kidan_b, 255 );
setEffAlphaKey( spep_4 + 66, kidan_b, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 0,  906, 65, 0x100, -1, 200, 60, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen4, 65, 25 );
setEffMoveKey(   spep_4 + 0, shuchusen4, 200, 60 , 0 );
setEffMoveKey(   spep_4 + 65, shuchusen4, 200, 60 , 0 );
setEffScaleKey(  spep_4 + 0, shuchusen4, 2.2, 1.6 );
setEffScaleKey(  spep_4 + 65, shuchusen4, 2.2, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4 + 65, shuchusen4, 0 );
setEffAlphaKey(  spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey(  spep_4 + 65, shuchusen4, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 66, 1, 0 );
changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 -3 + 32, 1, 106 );

setMoveKey( spep_4 + 0, 1, 177.4, 127.2 , 0 );
setMoveKey( spep_4 + 1, 1, 174.5, 127.1 , 0 );
setMoveKey( spep_4 + 2, 1, 171.2, 126.9 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 167.6, 126.7 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 163.8, 126.5 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 159.6, 126.1 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 155.1, 125.8 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 150.4, 125.4 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 145.3, 125 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 142.5, 123.9 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 139.7, 122.7 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 136.7, 121.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 133.6, 120 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 130.4, 118.4 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 127.2, 116.9 , 0 );
setMoveKey( spep_4 -3 + 31, 1, 123.6, 115.2 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 54.1, 169.1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 85.5, 126.4 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 51.8, 169.9 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 83.5, 126.9 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 69.3, 145.2 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 67.5, 142.4 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 73.8, 155.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 71.2, 151.3 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 76.7, 163.1 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 74.2, 159 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 79.8, 170.9 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 77.4, 166.9 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 83.1, 179 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 80.8, 175.1 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 86.6, 187.4 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 84.5, 187.7 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 90.4, 196.1 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 88.4, 196.6 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 94.4, 205.1 , 0 );
setMoveKey( spep_4 -3 + 69, 1, 94.4, 205.1 , 0 );

setScaleKey( spep_4 + 0, 1, 1.06, 1.06 );
setScaleKey( spep_4 + 1, 1, 1.11, 1.11 );
setScaleKey( spep_4 + 2, 1, 1.16, 1.16 );
setScaleKey( spep_4 -3 + 6, 1, 1.22, 1.22 );
setScaleKey( spep_4 -3 + 8, 1, 1.28, 1.28 );
setScaleKey( spep_4 -3 + 10, 1, 1.35, 1.35 );
setScaleKey( spep_4 -3 + 12, 1, 1.43, 1.43 );
setScaleKey( spep_4 -3 + 14, 1, 1.51, 1.51 );
setScaleKey( spep_4 -3 + 16, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 18, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 20, 1, 1.81, 1.8 );
setScaleKey( spep_4 -3 + 22, 1, 1.92, 1.91 );
setScaleKey( spep_4 -3 + 24, 1, 2.04, 2.03 );
setScaleKey( spep_4 -3 + 26, 1, 2.17, 2.15 );
setScaleKey( spep_4 -3 + 28, 1, 2.3, 2.28 );
setScaleKey( spep_4 -3 + 31, 1, 2.43, 2.41 );
setScaleKey( spep_4 -3 + 32, 1, 2.09, 2.09 );
setScaleKey( spep_4 -3 + 34, 1, 2.1, 2.1 );
setScaleKey( spep_4 -3 + 36, 1, 2.11, 2.11 );
setScaleKey( spep_4 -3 + 38, 1, 2.11, 2.11 );
setScaleKey( spep_4 -3 + 40, 1, 2.12, 2.12 );
setScaleKey( spep_4 -3 + 42, 1, 2.14, 2.14 );
setScaleKey( spep_4 -3 + 44, 1, 2.15, 2.15 );
setScaleKey( spep_4 -3 + 46, 1, 2.17, 2.17 );
setScaleKey( spep_4 -3 + 48, 1, 2.19, 2.19 );
setScaleKey( spep_4 -3 + 50, 1, 2.21, 2.21 );
setScaleKey( spep_4 -3 + 52, 1, 2.23, 2.23 );
setScaleKey( spep_4 -3 + 54, 1, 2.25, 2.25 );
setScaleKey( spep_4 -3 + 56, 1, 2.27, 2.27 );
setScaleKey( spep_4 -3 + 58, 1, 2.29, 2.29 );
setScaleKey( spep_4 -3 + 60, 1, 2.31, 2.31 );
setScaleKey( spep_4 -3 + 62, 1, 2.33, 2.33 );
setScaleKey( spep_4 -3 + 64, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 66, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 68, 1, 2.4, 2.4 );
setScaleKey( spep_4 -3 + 69, 1, 2.4, 2.4 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 31, 1, 0 );
setRotateKey( spep_4 -3 + 32, 1, -47.4 );
setRotateKey( spep_4 -3 + 69, 1, -47.4 );


-- ** 音 ** --
--気弾近づく1
SE036 = playSe( spep_4 + 0, 1239 );
setSeVolumeByWorkId( spep_4 + 0, SE036, 77 );
stopSe( spep_4 +66 + 40, SE036, 0 );
setPitch( spep_4 + 0, SE036, -700 );
setTimeStretch( SE036, 0.53, 10, 1 );

--気弾近づく2
SE037 = playSe( spep_4 + 0, 1249 );
setSeVolumeByWorkId( spep_4 + 0, SE037, 65 );
stopSe( spep_4 +66 + 40, SE037, 0 );
setPitch( spep_4 + 0, SE037, -500 );
setTimeStretch( SE037, 0.67, 10, 1 );

--気弾近づく3
SE038 = playSe( spep_4 + 0, 1203 );
stopSe( spep_4 +66 + 40, SE038, 0 );

--気弾近づく4
SE039 = playSe( spep_4 + 12, 1215 );
stopSe( spep_4 +66 + 40, SE039, 10 );

--敵重なる
SE040 = playSe( spep_4 + 30, 1021 );
stopSe( spep_4 +66 + 40, SE040, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 66, 0, 0, 0, 0, 180);       -- ベース暗め　背景

-- ** 白フェード ** --
--entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4 + 52, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4 + 66;


--------------------------------------
--火の玉爆発(96F)
--------------------------------------
-- ** エフェクト等 ** --
tama = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --火の玉爆発(ef_008)
setEffMoveKey( spep_5 + 0, tama, 0, 0 , 0 );
setEffMoveKey( spep_5 + 96, tama, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tama, 1.0, 1.0 );
setEffScaleKey( spep_5 + 96, tama, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tama, 0 );
setEffRotateKey( spep_5 + 96, tama, 0 );
setEffAlphaKey( spep_5 + 0, tama, 255 );
setEffAlphaKey( spep_5 + 96, tama, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5 + 47,  906, 48, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 47, shuchusen5, 48, 25 );
setEffMoveKey(   spep_5 + 47, shuchusen5, 0, 0 , 0 );
setEffMoveKey(   spep_5 + 95, shuchusen5, 0, 0 , 0 );
setEffScaleKey(  spep_5 + 47, shuchusen5, 1.4, 1.4 );
setEffScaleKey(  spep_5 + 95, shuchusen5, 1.4, 1.4 );
setEffRotateKey( spep_5 + 47, shuchusen5, 0 );
setEffRotateKey( spep_5 + 95, shuchusen5, 0 );
setEffAlphaKey(  spep_5 + 47, shuchusen5, 255 );
setEffAlphaKey(  spep_5 + 95, shuchusen5, 255 );

-- ** 音 ** --
--球体回転する1
SE041 = playSe( spep_5 + 12, 1003 );

--球体回転する2
SE042 = playSe( spep_5 + 30, 1003 );

--爆発1
SE043 = playSe( spep_5 + 38, 1023 );
setSeVolumeByWorkId( spep_5 + 38, SE043, 88 );

--爆発2
SE044 = playSe( spep_5 + 40, 1024 );

--爆発3
SE045 = playSe( spep_5 + 68, 1161 );
setSeVolumeByWorkId( spep_5 + 68, SE045, 52 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, 0, 0, 0, 180);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_5 + 84, 12, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6 = spep_5 + 96;


--------------------------------------
--火の玉振りそそぐ(136F)
--------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --火の玉振りそそぐ(ef_009)
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 136, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 136, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 136, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 136, finish_f, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6 + 33,  906, 102, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 33, shuchusen6, 102, 25 );
setEffMoveKey(   spep_6 + 33, shuchusen6, 0, 0 , 0 );
setEffMoveKey(   spep_6 + 135, shuchusen6, 0, 0 , 0 );
setEffScaleKey(  spep_6 + 33, shuchusen6, 1.5, 1.9 );
setEffScaleKey(  spep_6 + 135, shuchusen6, 1.5, 1.9 );
setEffRotateKey( spep_6 + 33, shuchusen6, 0 );
setEffRotateKey( spep_6 + 135, shuchusen6, 0 );
setEffAlphaKey(  spep_6 + 33, shuchusen6, 255 );
setEffAlphaKey(  spep_6 + 135, shuchusen6, 255 );


-- ** 音 ** --
--光輪を放つ
SE046 = playSe( spep_6 + 0, 1179 );
setSeVolumeByWorkId( spep_6 + 0, SE046, 56 );

--気弾降りそそぐ
SE047 = playSe( spep_6 + 36, 1067 );

--気弾降りそそぐ
SE048 = playSe( spep_6 + 52, 1159 );
setSeVolumeByWorkId( spep_6 + 52, SE048, 66 );

--気弾降りそそぐ
SE049 = playSe( spep_6 + 68, 1160 );
setSeVolumeByWorkId( spep_6 + 68, SE049, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 136, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 26 );
endPhase( spep_6 + 126 );


end