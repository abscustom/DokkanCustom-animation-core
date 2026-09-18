--1022280:SSR超サイヤ人孫悟飯(少年期)_爆裂乱魔_sp2214
--sp_effect_b1_00152

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
SP_01 = 157523;  --敵の前に立つ悟飯    ef_001
SP_02 = 157524;  --セリフカットイン    ef_002
SP_03 = 157525;  --格闘～高速移動～連撃～敵とぶ  ef_003_front
SP_04 = 157526;  --格闘～高速移動～連撃～敵とぶ  ef_003_back

--敵側
SP_03r = 157527;  --格闘～高速移動～連撃～敵とぶ（敵側）  ef_003_r_front
SP_04r = 157528;  --格闘～高速移動～連撃～敵とぶ（敵側）  ef_003_r_back

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

ENABLE_AUTO_TIME_STRETCH(0.8);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 敵の前に立つ悟飯(44F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 44, 0x80, -1, 0, 0, 0 );  --敵の前に立つ悟飯  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 44, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 44, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 44, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 44 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 44, first_f, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 44, 1, 0 );
changeAnime( spep_0 + 0, 1, 118 );

a1 = 35;
b1 = 30;
setMoveKey( spep_0 + 0, 1, 207.5 +a1, -177.9 +b1 , 0 );
setMoveKey( spep_0 + 1, 1, 210.6 +a1, -179.3 +b1 , 0 );
setMoveKey( spep_0 + 2, 1, 213.9 +a1, -180.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 217.1 +a1, -182.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 217.1 +a1, -182.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 220.4 +a1, -183.5 +b1 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 220.4 +a1, -183.5 +b1 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 223.7 +a1, -184.9 +b1 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 227.1 +a1, -186.3 +b1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 230.4 +a1, -187.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 233.9 +a1, -189.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 237.3 +a1, -190.5 +b1 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 240.8 +a1, -191.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 244.2 +a1, -193.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 247.8 +a1, -194.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 251.3 +a1, -196 +b1 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 254.9 +a1, -197.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 258.5 +a1, -198.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 262.2 +a1, -200.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 265.8 +a1, -201.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 269.5 +a1, -203 +b1 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 273.2 +a1, -204.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 277 +a1, -205.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 280.8 +a1, -207.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 284.6 +a1, -208.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 288.4 +a1, -209.9 +b1 , 0 );
setMoveKey( spep_0 -3 + 47, 1, 288.4 +a1, -209.9 +b1 , 0 );

s1 = 0.3;
setScaleKey( spep_0 + 0, 1, 2.1 +s1, 2.1 +s1 );
setScaleKey( spep_0 + 1, 1, 2.11 +s1, 2.11 +s1 );
setScaleKey( spep_0 + 2, 1, 2.12 +s1, 2.12 +s1 );
setScaleKey( spep_0 + 3, 1, 2.13 +s1, 2.13 +s1 );
setScaleKey( spep_0 + 4, 1, 2.14 +s1, 2.14 +s1 );
setScaleKey( spep_0 + 5, 1, 2.15 +s1, 2.15 +s1 );
setScaleKey( spep_0 + 6, 1, 2.16 +s1, 2.16 +s1 );
setScaleKey( spep_0 + 7, 1, 2.17 +s1, 2.17 +s1 );
setScaleKey( spep_0 + 8, 1, 2.18 +s1, 2.18 +s1 );
setScaleKey( spep_0 + 9, 1, 2.19 +s1, 2.19 +s1 );
setScaleKey( spep_0 + 10, 1, 2.2 +s1, 2.2 +s1 );
setScaleKey( spep_0 + 11, 1, 2.21 +s1, 2.21 +s1 );
setScaleKey( spep_0 + 12, 1, 2.22 +s1, 2.22 +s1 );
setScaleKey( spep_0 + 13, 1, 2.23 +s1, 2.23 +s1 );
setScaleKey( spep_0 + 14, 1, 2.24 +s1, 2.24 +s1 );
setScaleKey( spep_0 + 15, 1, 2.25 +s1, 2.25 +s1 );
setScaleKey( spep_0 + 16, 1, 2.26 +s1, 2.26 +s1 );
setScaleKey( spep_0 + 17, 1, 2.27 +s1, 2.27 +s1 );
setScaleKey( spep_0 + 18, 1, 2.28 +s1, 2.28 +s1 );
setScaleKey( spep_0 + 19, 1, 2.29 +s1, 2.29 +s1 );
setScaleKey( spep_0 + 20, 1, 2.3 +s1, 2.3 +s1 );
setScaleKey( spep_0 + 21, 1, 2.31 +s1, 2.31 +s1 );
setScaleKey( spep_0 + 22, 1, 2.32 +s1, 2.32 +s1 );
setScaleKey( spep_0 + 23, 1, 2.33 +s1, 2.33 +s1 );
setScaleKey( spep_0 + 24, 1, 2.34 +s1, 2.34 +s1 );
setScaleKey( spep_0 + 25, 1, 2.35 +s1, 2.35 +s1 );
setScaleKey( spep_0 + 26, 1, 2.36 +s1, 2.36 +s1 );
setScaleKey( spep_0 + 27, 1, 2.37 +s1, 2.37 +s1 );
setScaleKey( spep_0 + 28, 1, 2.38 +s1, 2.38 +s1 );
setScaleKey( spep_0 + 29, 1, 2.39 +s1, 2.39 +s1 );
setScaleKey( spep_0 + 30, 1, 2.4 +s1, 2.4 +s1 );
setScaleKey( spep_0 + 31, 1, 2.41 +s1, 2.41 +s1 );
setScaleKey( spep_0 + 32, 1, 2.42 +s1, 2.42 +s1 );
setScaleKey( spep_0 + 33, 1, 2.43 +s1, 2.43 +s1 );
setScaleKey( spep_0 + 34, 1, 2.44 +s1, 2.44 +s1 );
setScaleKey( spep_0 + 35, 1, 2.45 +s1, 2.45 +s1 );
setScaleKey( spep_0 + 36, 1, 2.46 +s1, 2.46 +s1 );
setScaleKey( spep_0 + 37, 1, 2.47 +s1, 2.47 +s1 );
setScaleKey( spep_0 + 38, 1, 2.48 +s1, 2.48 +s1 );
setScaleKey( spep_0 + 39, 1, 2.49 +s1, 2.49 +s1 );
setScaleKey( spep_0 + 40, 1, 2.5 +s1, 2.5 +s1 );
setScaleKey( spep_0 + 41, 1, 2.51 +s1, 2.51 +s1 );
setScaleKey( spep_0 + 42, 1, 2.52 +s1, 2.52 +s1 );
setScaleKey( spep_0 + 43, 1, 2.53 +s1, 2.53 +s1 );
setScaleKey( spep_0 + 44, 1, 2.54 +s1, 2.54 +s1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 47, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 0, 8 );

--入り
SE002 = playSe( spep_0 + 36, 1072 );
setSeVolumeByWorkId( spep_0 + 36, SE002, 25 );
setSeVolumeByWorkId( spep_0 + 38, SE002, 50 );
setSeVolumeByWorkId( spep_0 + 40, SE002, 75 );
setSeVolumeByWorkId( spep_0 + 42, SE002, 100 );
setStartTimeMs( SE002,  267 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 44 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 44;


------------------------------------------------------
-- セリフカットイン(96F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
cutin = entryEffectLife( spep_1 + 0, SP_02, 96, 0x100, -1, 0, 0, 0 );  --セリフカットイン   ef_002
setEffMoveKey( spep_1 + 0, cutin, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, cutin, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, cutin, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, cutin, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, cutin, 0 );
setEffRotateKey( spep_1 + 96, cutin, 0 );
setEffAlphaKey( spep_1 + 0, cutin, 255 );
setEffAlphaKey( spep_1 + 96 -1, cutin, 255 );
setEffAlphaKey( spep_1 + 96, cutin, 0 );

spep_x = spep_1 + 10;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--顔カットイン
SE003 = playSe( spep_1 + 16, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 96;


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
-- 格闘～高速移動～連撃～敵とぶ(212F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
move_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --格闘～高速移動～連撃～敵とぶ   ef_003_front
setEffMoveKey( spep_3 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 292, move_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 292, move_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_f, 0 );
setEffRotateKey( spep_3 + 292, move_f, 0 );
setEffAlphaKey( spep_3 + 0, move_f, 255 );
setEffAlphaKey( spep_3 + 292, move_f, 255 );

move_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --格闘～高速移動～連撃～敵とぶ    ef_003_back
setEffMoveKey( spep_3 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 292, move_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 292, move_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_b, 0 );
setEffRotateKey( spep_3 + 292, move_b, 0 );
setEffAlphaKey( spep_3 + 0, move_b, 255 );
setEffAlphaKey( spep_3 + 292, move_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 117 );

b2 = 15;
setMoveKey( spep_3 + 0, 1, 192.3, -64.9 +b2 , 0 );

s2 = 0.2
setScaleKey( spep_3 + 0, 1, 0.84 +s2, 0.84 +s2 );

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
    setMoveKey( SP_dodge + 0, 1, 192.3, -64.9 +b2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 192.3, -64.9 +b2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.84 +s2, 0.84 +s2 );
    setScaleKey( SP_dodge + 10, 1, 0.84 +s2, 0.84 +s2 );

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
setDisp( spep_3 + 240, 1, 0 );
changeAnime( spep_3 -3 + 42, 1, 106 );
changeAnime( spep_3 -3 + 70, 1, 108 );
changeAnime( spep_3 -3 + 102, 1, 106 );
changeAnime( spep_3 -3 + 108, 1, 108 );
changeAnime( spep_3 -3 + 116, 1, 106 );
changeAnime( spep_3 -3 + 160, 1, 108 );
changeAnime( spep_3 -3 + 178, 1, 105 );

setMoveKey( spep_3 -3 + 30, 1, 192.3, -64.9 +b2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 146.5, -106.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 100.6, -147.6 +b2 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 54.8, -189.1 +b2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 56.3, -189.6 +b2 , 0 );
setMoveKey( spep_3 -3 + 41, 1, 57.8, -190.1 +b2 , 0 );

a3 = 20;
b3 = 70;
setMoveKey( spep_3 -3 + 42, 1, 46 +a3, -170.9 +b3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -5.7 +a3, -47.2 +b3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -3.4 +a3, -49.2 +b3 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 12.9 +a3, -42.9 +b3 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 3.3 +a3, -54.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 5.6 +a3, -48.4 +b3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 5.9 +a3, -48.2 +b3 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 6.2 +a3, -48 +b3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 6.5 +a3, -47.9 +b3 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 6.8 +a3, -47.7 +b3 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 7.2 +a3, -47.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 7.5 +a3, -47.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 7.8 +a3, -47.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 69, 1, -15.2 +a3, 48.8 +b3 , 0 );

a4 = 10;
b4 = 70;
setMoveKey( spep_3 -3 + 70, 1, -15.6 +a4, 15.8 +b4 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 21.1 +a4, 96.7 +b4 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 21.5 +a4, 87.1 +b4 , 0 );

a5 = 25;
b5 = 60;
setMoveKey( spep_3 -3 + 76, 1, 56.4 -a5, 70.8 +b5 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 18.7 -a5, 92.5 +b5 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 19.4 -a5, 91.6 +b5 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 27.7 -a5, 81.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 16.1 -a5, 92.9 +b5 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 28.4 -a5, 77.2 +b5 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 21.1 -a5, 78.9 +b5 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 21.5 -a5, 73.5 +b5 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 21.8 -a5, 67.3 +b5 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 22.2 -a5, 60.3 +b5 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 22.5 -a5, 52.3 +b5 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 22.9 -a5, 43.5 +b5 , 0 );
setMoveKey( spep_3 -3 + 101, 1, -0.8 -a5, 63.8 +b5 , 0 );

a6 = 70;
b6 = 15;
setMoveKey( spep_3 -3 + 102, 1, 57.4 -a6, 145.9 -b6 , 0 );

a7 = 43;
b7 = 55;
setMoveKey( spep_3 -3 + 104, 1, 53.1 -a7, 110.2 +b7 , 0 );

a8 = 15;
b8 = 69;
setMoveKey( spep_3 -3 + 107, 1, 99.5 -a8, 106.6 +b8 , 0 );

a9 = 70;
b9 = 25;
setMoveKey( spep_3 -3 + 108, 1, 5.7 +a9, 136 +b9 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 10.5 +a9, 168.6 +b9 , 0 );
setMoveKey( spep_3 -3 + 112, 1, -7.7 +a9, 124 +b9 , 0 );
setMoveKey( spep_3 -3 + 115, 1, -50.2 +a9, 75 +b9 , 0 );

a10 = 20;
b10 = 70;
setMoveKey( spep_3 -3 + 116, 1, 47.4 +a10, 70.6 +b10 , 0 );

a11 = 40;
b11 = 60;
setMoveKey( spep_3 -3 + 118, 1, 67.1 -a11, 75.2 +b11 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 51.9 -a11, 89.1 +b11 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 66.7 -a11, 100.7 +b11 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 63.4 -a11, 99.9 +b11 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 63.9 -a11, 104.9 +b11 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 64.4 -a11, 109.5 +b11 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 64.8 -a11, 113.7 +b11 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 65.2 -a11, 117.8 +b11 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 65.6 -a11, 121.5 +b11 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 66 -a11, 124.9 +b11 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 66.4 -a11, 128.1 +b11 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 66.7 -a11, 131 +b11 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 67 -a11, 133.5 +b11 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 67.3 -a11, 135.8 +b11 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 67.6 -a11, 137.8 +b11 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 60.2 -a11, 104.2 +b11 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 52.9 -a11, 70.6 +b11 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 45.6 -a11, 36.8 +b11 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 38.3 -a11, 2.9 +b11 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 30.9 -a11, -31.4 +b11 , 0 );
setMoveKey( spep_3 -3 + 159, 1, 23.6 -a11, -66.1 +b11 , 0 );

a12 = 110;
b12 = 30;
setMoveKey( spep_3 -3 + 160, 1, -93.7 +a12, -33.1 +b12 , 0 );
setMoveKey( spep_3 -3 + 162, 1, -13.7 +a12, 15.9 +b12 , 0 );
setMoveKey( spep_3 -3 + 164, 1, -90.2 +a12, -1.5 +b12 , 0 );
setMoveKey( spep_3 -3 + 166, 1, -96.2 +a12, 2.1 +b12 , 0 );
setMoveKey( spep_3 -3 + 168, 1, -33.8 +a12, -59.7 +b12 , 0 );
setMoveKey( spep_3 -3 + 170, 1, -44.2 +a12, -17.7 +b12 , 0 );
setMoveKey( spep_3 -3 + 172, 1, -36.5 +a12, -2.3 +b12 , 0 );
setMoveKey( spep_3 -3 + 174, 1, -58.4 +a12, -13.2 +b12 , 0 );
setMoveKey( spep_3 -3 + 177, 1, -48.1 +a12, 6.7 +b12 , 0 );

setMoveKey( spep_3 -3 + 178, 1, 152.1, 181.7 , 0 );
setMoveKey( spep_3 -3 + 180, 1, 155.1, 187.3 , 0 );
setMoveKey( spep_3 -3 + 182, 1, 157.9, 192.7 , 0 );
setMoveKey( spep_3 -3 + 184, 1, 160.7, 197.9 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 163.2, 202.8 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 165.7, 207.4 , 0 );
setMoveKey( spep_3 -3 + 190, 1, 168, 211.9 , 0 );
setMoveKey( spep_3 -3 + 192, 1, 170.2, 216.1 , 0 );
setMoveKey( spep_3 -3 + 194, 1, 172.3, 219.9 , 0 );
setMoveKey( spep_3 -3 + 196, 1, 174.2, 223.6 , 0 );
setMoveKey( spep_3 -3 + 198, 1, 176, 227 , 0 );
setMoveKey( spep_3 -3 + 200, 1, 177.6, 230.1 , 0 );
setMoveKey( spep_3 -3 + 202, 1, 179.2, 232.9 , 0 );
setMoveKey( spep_3 -3 + 204, 1, 180.5, 235.5 , 0 );
setMoveKey( spep_3 -3 + 206, 1, 181.9, 237.9 , 0 );
setMoveKey( spep_3 -3 + 208, 1, 183, 239.9 , 0 );
setMoveKey( spep_3 -3 + 210, 1, 183.9, 241.7 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 184.8, 243.3 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 185.5, 244.6 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 186, 245.6 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 186.5, 246.2 , 0 );
setMoveKey( spep_3 -3 + 220, 1, 186.7, 246.7 , 0 );
setMoveKey( spep_3 -3 + 222, 1, 186.9, 246.8 , 0 );
setMoveKey( spep_3 -3 + 224, 1, 186.8, 246.7 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 186.6, 246.3 , 0 );
setMoveKey( spep_3 -3 + 228, 1, 186.3, 245.6 , 0 );
setMoveKey( spep_3 -3 + 230, 1, 185.9, 244.6 , 0 );
setMoveKey( spep_3 -3 + 232, 1, 185.3, 243.4 , 0 );
setMoveKey( spep_3 -3 + 234, 1, 184.5, 241.8 , 0 );
setMoveKey( spep_3 -3 + 236, 1, 183.6, 240 , 0 );
setMoveKey( spep_3 -3 + 238, 1, 182.6, 238.1 , 0 );
setMoveKey( spep_3 -3 + 240, 1, 181.6, 236.1 , 0 );
setMoveKey( spep_3 -3 + 242, 1, 180.7, 234.1 , 0 );
setMoveKey( spep_3 -3 + 243, 1, 180.7, 234.1 , 0 );

setScaleKey( spep_3 -3 + 30, 1, 0.84 +s2, 0.84 +s2 );
setScaleKey( spep_3 -3 + 32, 1, 1.08 +s2, 1.08 +s2 );
setScaleKey( spep_3 -3 + 34, 1, 1.32 +s2, 1.32 +s2 );
setScaleKey( spep_3 -3 + 36, 1, 1.56 +s2, 1.56 +s2 );
setScaleKey( spep_3 -3 + 41, 1, 1.56 +s2, 1.56 +s2 );

s3 = 0.3;
s4 = 0.7;
s5 = 1.0;
setScaleKey( spep_3 -3 + 42, 1, 1.5 +s3, 1.5 +s3 );
setScaleKey( spep_3 -3 + 69, 1, 1.5 +s3, 1.5 +s3 );
setScaleKey( spep_3 -3 + 70, 1, 1.38 +s4, 1.38 +s4 );
setScaleKey( spep_3 -3 + 101, 1, 1.38 +s4, 1.38 +s4 );
setScaleKey( spep_3 -3 + 102, 1, 1.5 +s3, 1.5 +s3 );
setScaleKey( spep_3 -3 + 107, 1, 1.5 +s3, 1.5 +s3 );
setScaleKey( spep_3 -3 + 108, 1, 1.38 +s4, 1.38 +s4 );
setScaleKey( spep_3 -3 + 115, 1, 1.38 +s4, 1.38 +s4 );
setScaleKey( spep_3 -3 + 116, 1, 1.5 +s3, 1.5 +s3 );
setScaleKey( spep_3 -3 + 146, 1, 1.5 +s3, 1.5 +s3 );
setScaleKey( spep_3 -3 + 148, 1, 1.62 +s3, 1.62 +s3 );
setScaleKey( spep_3 -3 + 150, 1, 1.8 +s3, 1.8 +s3 );
setScaleKey( spep_3 -3 + 152, 1, 1.92 +s3, 1.92 +s3 );
setScaleKey( spep_3 -3 + 154, 1, 2.04 +s3, 2.04 +s3 );
setScaleKey( spep_3 -3 + 156, 1, 2.16 +s3, 2.16 +s3 );
setScaleKey( spep_3 -3 + 159, 1, 2.28 +s3, 2.28 +s3 );
setScaleKey( spep_3 -3 + 160, 1, 2.28 +s5, 2.28 +s5 );
setScaleKey( spep_3 -3 + 164, 1, 2.28 +s5, 2.28 +s5 );
setScaleKey( spep_3 -3 + 166, 1, 2.34 +s5, 2.34 +s5 );
setScaleKey( spep_3 -3 + 177, 1, 2.34 +s5, 2.34 +s5 );

setScaleKey( spep_3 -3 + 178, 1, 1.2 +s3, 1.2 +s3 );
--setScaleKey( spep_3 -3 + 180, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 182, 1, 1.14 +s3, 1.14 +s3 );
--setScaleKey( spep_3 -3 + 186, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 188, 1, 1.08 +s3, 1.08 +s3 );
--setScaleKey( spep_3 -3 + 192, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 194, 1, 1.02 +s3, 1.02 +s3 );
--setScaleKey( spep_3 -3 + 198, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 200, 1, 0.96 +s3, 0.96 +s3 );
--setScaleKey( spep_3 -3 + 208, 1, 0.96, 0.96 );
setScaleKey( spep_3 -3 + 210, 1, 0.9 +s3, 0.9 +s3 );
--setScaleKey( spep_3 -3 + 222, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 224, 1, 0.84 +s3, 0.84 +s3 );
setScaleKey( spep_3 -3 + 243, 1, 0.84 +s3, 0.84 +s3 );

setRotateKey( spep_3 -3 + 41, 1, 0 );
setRotateKey( spep_3 -3 + 42, 1, -15.7 );
setRotateKey( spep_3 -3 + 44, 1, -3.9 );
setRotateKey( spep_3 -3 + 46, 1, 0 );
setRotateKey( spep_3 -3 + 66, 1, 0 );
setRotateKey( spep_3 -3 + 69, 1, -49.2 );
setRotateKey( spep_3 -3 + 70, 1, -62 );
setRotateKey( spep_3 -3 + 74, 1, -62 );
setRotateKey( spep_3 -3 + 76, 1, -90.4 );
setRotateKey( spep_3 -3 + 78, 1, -90.4 );
setRotateKey( spep_3 -3 + 80, 1, -90.5 );
setRotateKey( spep_3 -3 + 82, 1, -90.8 );
setRotateKey( spep_3 -3 + 84, 1, -91.1 );
setRotateKey( spep_3 -3 + 86, 1, -91.4 );
setRotateKey( spep_3 -3 + 88, 1, -91.9 );
setRotateKey( spep_3 -3 + 90, 1, -92.4 );
setRotateKey( spep_3 -3 + 92, 1, -93.1 );
setRotateKey( spep_3 -3 + 94, 1, -93.8 );
setRotateKey( spep_3 -3 + 96, 1, -94.6 );
setRotateKey( spep_3 -3 + 98, 1, -95.5 );
setRotateKey( spep_3 -3 + 101, 1, -96.5 );
setRotateKey( spep_3 -3 + 102, 1, -117.9 );
setRotateKey( spep_3 -3 + 104, 1, -55.9 );
setRotateKey( spep_3 -3 + 107, 1, -32.2 );
setRotateKey( spep_3 -3 + 108, 1, -1.6 );
setRotateKey( spep_3 -3 + 110, 1, 26.7 );
setRotateKey( spep_3 -3 + 112, 1, 40.3 );
setRotateKey( spep_3 -3 + 115, 1, 44.9 );
setRotateKey( spep_3 -3 + 116, 1, -1.9 );
setRotateKey( spep_3 -3 + 118, 1, -53.5 );
setRotateKey( spep_3 -3 + 120, 1, -55.1 );
setRotateKey( spep_3 -3 + 122, 1, -56.7 );
setRotateKey( spep_3 -3 + 124, 1, -58.1 );
setRotateKey( spep_3 -3 + 126, 1, -59.5 );
setRotateKey( spep_3 -3 + 128, 1, -60.8 );
setRotateKey( spep_3 -3 + 130, 1, -62 );
setRotateKey( spep_3 -3 + 132, 1, -63.2 );
setRotateKey( spep_3 -3 + 134, 1, -64.2 );
setRotateKey( spep_3 -3 + 136, 1, -65.2 );
setRotateKey( spep_3 -3 + 138, 1, -66.1 );
setRotateKey( spep_3 -3 + 140, 1, -66.9 );
setRotateKey( spep_3 -3 + 142, 1, -67.6 );
setRotateKey( spep_3 -3 + 144, 1, -68.2 );
setRotateKey( spep_3 -3 + 146, 1, -68.7 );
setRotateKey( spep_3 -3 + 148, 1, -69.2 );
setRotateKey( spep_3 -3 + 150, 1, -69.6 );
setRotateKey( spep_3 -3 + 152, 1, -69.9 );
setRotateKey( spep_3 -3 + 154, 1, -70.1 );
setRotateKey( spep_3 -3 + 156, 1, -70.2 );
setRotateKey( spep_3 -3 + 159, 1, -70.3 );
setRotateKey( spep_3 -3 + 160, 1, 7.2 );
setRotateKey( spep_3 -3 + 162, 1, 5.4 );
setRotateKey( spep_3 -3 + 164, 1, 3.9 );
setRotateKey( spep_3 -3 + 166, 1, 2.6 );
setRotateKey( spep_3 -3 + 168, 1, 1.5 );
setRotateKey( spep_3 -3 + 170, 1, 0.7 );
setRotateKey( spep_3 -3 + 172, 1, 0.1 );
setRotateKey( spep_3 -3 + 174, 1, -0.2 );
setRotateKey( spep_3 -3 + 177, 1, -0.3 );
setRotateKey( spep_3 -3 + 178, 1, 17.2 );
setRotateKey( spep_3 -3 + 243, 1, 17.2 );

-- ** 音 ** --
--瞬間移動
SE005 = playSe( spep_3 + 8, 1109 );

--高速アタック
SE006 = playSe( spep_3 + 34, 1189 );

--高速アタック
SE007 = playSe( spep_3 + 34, 1005 );
setSeVolumeByWorkId( spep_3 + 42, SE007, 79 );

--高速アタック
SE008 = playSe( spep_3 + 34, 1012 );

--高速アタック
SE009 = playSe( spep_3 + 38, 1110 );
stopSe( spep_3 + 56, SE009, 10 );

--高速アタック
SE010 = playSe( spep_3 + 58, 1189 );

--高速アタック
SE011 = playSe( spep_3 + 58, 1005 );
setSeVolumeByWorkId( spep_3 + 58, SE011, 80 );

--高速アタック
SE012 = playSe( spep_3 + 58, 1012 );

--高速アタック
SE013 = playSe( spep_3 + 62, 1110 );
stopSe( spep_3 + 78, SE013, 12 );

--高速アタック連打
SE014 = playSe( spep_3 + 86, 1189 );

--高速アタック連打
SE015 = playSe( spep_3 + 86, 1005 );
setSeVolumeByWorkId( spep_3 + 86, SE015, 74 );

--高速アタック連打
SE016 = playSe( spep_3 + 88, 1001 );
setSeVolumeByWorkId( spep_3 + 88, SE016, 68 );

--高速アタック連打
SE017 = playSe( spep_3 + 92, 1000 );

--高速アタック連打
SE018 = playSe( spep_3 + 94, 1189 );

--高速アタック連打
SE019 = playSe( spep_3 + 94, 1005 );
setSeVolumeByWorkId( spep_3 + 94, SE019, 68 );

--高速アタック連打
--SE020 = playSe( spep_3 + 96, 1000 );
SE020 = playSe( spep_3 + 96, 1001 );

--高速アタック連打
SE021 = playSe( spep_3 + 102, 1189 );

--高速アタック連打
SE022 = playSe( spep_3 + 102, 1005 );
setSeVolumeByWorkId( spep_3 + 102, SE022, 79 );

--高速アタック連打
SE023 = playSe( spep_3 + 104, 1001 );
setSeVolumeByWorkId( spep_3 + 104, SE023, 62 );

--高速アタック連打
SE024 = playSe( spep_3 + 106, 1000 );

--瞬間移動
SE025 = playSe( spep_3 + 124, 1109 );

--蹴り飛ばし
SE026 = playSe( spep_3 + 144, 1003 );

--蹴り飛ばし
SE027 = playSe( spep_3 + 148, 1110 );

--蹴り飛ばし
SE028 = playSe( spep_3 + 1548, 1010 );

--蹴り飛ばし
SE029 = playSe( spep_3 + 148, 1047 );
setSeVolumeByWorkId( spep_3 + 148, SE029, 90 );

--敵飛んでいく
SE030 = playSe( spep_3 + 166, 1183,"",0.9 );
setSeVolumeByWorkId( spep_3 + 166, SE030, 60 );
stopSe( spep_3 + 218, SE030, 36 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 240 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 158 );
endPhase( spep_3 + 282 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 敵の前に立つ悟飯(44F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 44, 0x80, -1, 0, 0, 0 );  --敵の前に立つ悟飯  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 44, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 44, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 44, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 44 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 44, first_f, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 44, 1, 0 );
changeAnime( spep_0 + 0, 1, 118 );

a1 = 35;
b1 = 30;
setMoveKey( spep_0 + 0, 1, 207.5 +a1, -177.9 +b1 , 0 );
setMoveKey( spep_0 + 1, 1, 210.6 +a1, -179.3 +b1 , 0 );
setMoveKey( spep_0 + 2, 1, 213.9 +a1, -180.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 217.1 +a1, -182.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 217.1 +a1, -182.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 220.4 +a1, -183.5 +b1 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 220.4 +a1, -183.5 +b1 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 223.7 +a1, -184.9 +b1 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 227.1 +a1, -186.3 +b1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 230.4 +a1, -187.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 233.9 +a1, -189.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 237.3 +a1, -190.5 +b1 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 240.8 +a1, -191.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 244.2 +a1, -193.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 247.8 +a1, -194.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 251.3 +a1, -196 +b1 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 254.9 +a1, -197.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 258.5 +a1, -198.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 262.2 +a1, -200.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 265.8 +a1, -201.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 269.5 +a1, -203 +b1 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 273.2 +a1, -204.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 277 +a1, -205.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 280.8 +a1, -207.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 284.6 +a1, -208.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 288.4 +a1, -209.9 +b1 , 0 );
setMoveKey( spep_0 -3 + 47, 1, 288.4 +a1, -209.9 +b1 , 0 );

s1 = 0.3;
setScaleKey( spep_0 + 0, 1, 2.1 +s1, 2.1 +s1 );
setScaleKey( spep_0 + 1, 1, 2.11 +s1, 2.11 +s1 );
setScaleKey( spep_0 + 2, 1, 2.12 +s1, 2.12 +s1 );
setScaleKey( spep_0 + 3, 1, 2.13 +s1, 2.13 +s1 );
setScaleKey( spep_0 + 4, 1, 2.14 +s1, 2.14 +s1 );
setScaleKey( spep_0 + 5, 1, 2.15 +s1, 2.15 +s1 );
setScaleKey( spep_0 + 6, 1, 2.16 +s1, 2.16 +s1 );
setScaleKey( spep_0 + 7, 1, 2.17 +s1, 2.17 +s1 );
setScaleKey( spep_0 + 8, 1, 2.18 +s1, 2.18 +s1 );
setScaleKey( spep_0 + 9, 1, 2.19 +s1, 2.19 +s1 );
setScaleKey( spep_0 + 10, 1, 2.2 +s1, 2.2 +s1 );
setScaleKey( spep_0 + 11, 1, 2.21 +s1, 2.21 +s1 );
setScaleKey( spep_0 + 12, 1, 2.22 +s1, 2.22 +s1 );
setScaleKey( spep_0 + 13, 1, 2.23 +s1, 2.23 +s1 );
setScaleKey( spep_0 + 14, 1, 2.24 +s1, 2.24 +s1 );
setScaleKey( spep_0 + 15, 1, 2.25 +s1, 2.25 +s1 );
setScaleKey( spep_0 + 16, 1, 2.26 +s1, 2.26 +s1 );
setScaleKey( spep_0 + 17, 1, 2.27 +s1, 2.27 +s1 );
setScaleKey( spep_0 + 18, 1, 2.28 +s1, 2.28 +s1 );
setScaleKey( spep_0 + 19, 1, 2.29 +s1, 2.29 +s1 );
setScaleKey( spep_0 + 20, 1, 2.3 +s1, 2.3 +s1 );
setScaleKey( spep_0 + 21, 1, 2.31 +s1, 2.31 +s1 );
setScaleKey( spep_0 + 22, 1, 2.32 +s1, 2.32 +s1 );
setScaleKey( spep_0 + 23, 1, 2.33 +s1, 2.33 +s1 );
setScaleKey( spep_0 + 24, 1, 2.34 +s1, 2.34 +s1 );
setScaleKey( spep_0 + 25, 1, 2.35 +s1, 2.35 +s1 );
setScaleKey( spep_0 + 26, 1, 2.36 +s1, 2.36 +s1 );
setScaleKey( spep_0 + 27, 1, 2.37 +s1, 2.37 +s1 );
setScaleKey( spep_0 + 28, 1, 2.38 +s1, 2.38 +s1 );
setScaleKey( spep_0 + 29, 1, 2.39 +s1, 2.39 +s1 );
setScaleKey( spep_0 + 30, 1, 2.4 +s1, 2.4 +s1 );
setScaleKey( spep_0 + 31, 1, 2.41 +s1, 2.41 +s1 );
setScaleKey( spep_0 + 32, 1, 2.42 +s1, 2.42 +s1 );
setScaleKey( spep_0 + 33, 1, 2.43 +s1, 2.43 +s1 );
setScaleKey( spep_0 + 34, 1, 2.44 +s1, 2.44 +s1 );
setScaleKey( spep_0 + 35, 1, 2.45 +s1, 2.45 +s1 );
setScaleKey( spep_0 + 36, 1, 2.46 +s1, 2.46 +s1 );
setScaleKey( spep_0 + 37, 1, 2.47 +s1, 2.47 +s1 );
setScaleKey( spep_0 + 38, 1, 2.48 +s1, 2.48 +s1 );
setScaleKey( spep_0 + 39, 1, 2.49 +s1, 2.49 +s1 );
setScaleKey( spep_0 + 40, 1, 2.5 +s1, 2.5 +s1 );
setScaleKey( spep_0 + 41, 1, 2.51 +s1, 2.51 +s1 );
setScaleKey( spep_0 + 42, 1, 2.52 +s1, 2.52 +s1 );
setScaleKey( spep_0 + 43, 1, 2.53 +s1, 2.53 +s1 );
setScaleKey( spep_0 + 44, 1, 2.54 +s1, 2.54 +s1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 47, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 0, 8 );

--入り
SE002 = playSe( spep_0 + 36, 1072 );
setSeVolumeByWorkId( spep_0 + 36, SE002, 25 );
setSeVolumeByWorkId( spep_0 + 38, SE002, 50 );
setSeVolumeByWorkId( spep_0 + 40, SE002, 75 );
setSeVolumeByWorkId( spep_0 + 42, SE002, 100 );
setStartTimeMs( SE002,  267 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 44 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 44;


------------------------------------------------------
-- セリフカットイン(96F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
cutin = entryEffectLife( spep_1 + 0, SP_02, 96, 0x100, -1, 0, 0, 0 );  --セリフカットイン   ef_002
setEffMoveKey( spep_1 + 0, cutin, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, cutin, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, cutin, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, cutin, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, cutin, 0 );
setEffRotateKey( spep_1 + 96, cutin, 0 );
setEffAlphaKey( spep_1 + 0, cutin, 255 );
setEffAlphaKey( spep_1 + 96 -1, cutin, 255 );
setEffAlphaKey( spep_1 + 96, cutin, 0 );

spep_x = spep_1 + 10;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--顔カットイン
SE003 = playSe( spep_1 + 16, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 96;


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
-- 格闘～高速移動～連撃～敵とぶ(212F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
move_f = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --格闘～高速移動～連撃～敵とぶ   ef_003_front
setEffMoveKey( spep_3 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 292, move_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 292, move_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_f, 0 );
setEffRotateKey( spep_3 + 292, move_f, 0 );
setEffAlphaKey( spep_3 + 0, move_f, 255 );
setEffAlphaKey( spep_3 + 292, move_f, 255 );

move_b = entryEffect( spep_3 + 0, SP_04r, 0x80, -1, 0, 0, 0 );  --格闘～高速移動～連撃～敵とぶ    ef_003_back
setEffMoveKey( spep_3 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 292, move_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 292, move_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_b, 0 );
setEffRotateKey( spep_3 + 292, move_b, 0 );
setEffAlphaKey( spep_3 + 0, move_b, 255 );
setEffAlphaKey( spep_3 + 292, move_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 117 );

b2 = 15;
setMoveKey( spep_3 + 0, 1, 192.3, -64.9 +b2 , 0 );

s2 = 0.2
setScaleKey( spep_3 + 0, 1, 0.84 +s2, 0.84 +s2 );

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
    setMoveKey( SP_dodge + 0, 1, 192.3, -64.9 +b2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 192.3, -64.9 +b2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.84 +s2, 0.84 +s2 );
    setScaleKey( SP_dodge + 10, 1, 0.84 +s2, 0.84 +s2 );

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
setDisp( spep_3 + 240, 1, 0 );
changeAnime( spep_3 -3 + 42, 1, 106 );
changeAnime( spep_3 -3 + 70, 1, 108 );
changeAnime( spep_3 -3 + 102, 1, 106 );
changeAnime( spep_3 -3 + 108, 1, 108 );
changeAnime( spep_3 -3 + 116, 1, 106 );
changeAnime( spep_3 -3 + 160, 1, 108 );
changeAnime( spep_3 -3 + 178, 1, 105 );

setMoveKey( spep_3 -3 + 30, 1, 192.3, -64.9 +b2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 146.5, -106.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 100.6, -147.6 +b2 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 54.8, -189.1 +b2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 56.3, -189.6 +b2 , 0 );
setMoveKey( spep_3 -3 + 41, 1, 57.8, -190.1 +b2 , 0 );

a3 = 20;
b3 = 70;
setMoveKey( spep_3 -3 + 42, 1, 46 +a3, -170.9 +b3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -5.7 +a3, -47.2 +b3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -3.4 +a3, -49.2 +b3 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 12.9 +a3, -42.9 +b3 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 3.3 +a3, -54.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 5.6 +a3, -48.4 +b3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 5.9 +a3, -48.2 +b3 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 6.2 +a3, -48 +b3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 6.5 +a3, -47.9 +b3 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 6.8 +a3, -47.7 +b3 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 7.2 +a3, -47.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 7.5 +a3, -47.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 7.8 +a3, -47.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 69, 1, -15.2 +a3, 48.8 +b3 , 0 );

a4 = 10;
b4 = 70;
setMoveKey( spep_3 -3 + 70, 1, -15.6 +a4, 15.8 +b4 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 21.1 +a4, 96.7 +b4 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 21.5 +a4, 87.1 +b4 , 0 );

a5 = 25;
b5 = 60;
setMoveKey( spep_3 -3 + 76, 1, 56.4 -a5, 70.8 +b5 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 18.7 -a5, 92.5 +b5 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 19.4 -a5, 91.6 +b5 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 27.7 -a5, 81.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 16.1 -a5, 92.9 +b5 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 28.4 -a5, 77.2 +b5 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 21.1 -a5, 78.9 +b5 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 21.5 -a5, 73.5 +b5 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 21.8 -a5, 67.3 +b5 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 22.2 -a5, 60.3 +b5 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 22.5 -a5, 52.3 +b5 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 22.9 -a5, 43.5 +b5 , 0 );
setMoveKey( spep_3 -3 + 101, 1, -0.8 -a5, 63.8 +b5 , 0 );

a6 = 70;
b6 = 15;
setMoveKey( spep_3 -3 + 102, 1, 57.4 -a6, 145.9 -b6 , 0 );

a7 = 43;
b7 = 55;
setMoveKey( spep_3 -3 + 104, 1, 53.1 -a7, 110.2 +b7 , 0 );

a8 = 15;
b8 = 69;
setMoveKey( spep_3 -3 + 107, 1, 99.5 -a8, 106.6 +b8 , 0 );

a9 = 70;
b9 = 25;
setMoveKey( spep_3 -3 + 108, 1, 5.7 +a9, 136 +b9 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 10.5 +a9, 168.6 +b9 , 0 );
setMoveKey( spep_3 -3 + 112, 1, -7.7 +a9, 124 +b9 , 0 );
setMoveKey( spep_3 -3 + 115, 1, -50.2 +a9, 75 +b9 , 0 );

a10 = 20;
b10 = 70;
setMoveKey( spep_3 -3 + 116, 1, 47.4 +a10, 70.6 +b10 , 0 );

a11 = 40;
b11 = 60;
setMoveKey( spep_3 -3 + 118, 1, 67.1 -a11, 75.2 +b11 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 51.9 -a11, 89.1 +b11 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 66.7 -a11, 100.7 +b11 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 63.4 -a11, 99.9 +b11 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 63.9 -a11, 104.9 +b11 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 64.4 -a11, 109.5 +b11 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 64.8 -a11, 113.7 +b11 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 65.2 -a11, 117.8 +b11 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 65.6 -a11, 121.5 +b11 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 66 -a11, 124.9 +b11 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 66.4 -a11, 128.1 +b11 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 66.7 -a11, 131 +b11 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 67 -a11, 133.5 +b11 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 67.3 -a11, 135.8 +b11 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 67.6 -a11, 137.8 +b11 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 60.2 -a11, 104.2 +b11 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 52.9 -a11, 70.6 +b11 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 45.6 -a11, 36.8 +b11 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 38.3 -a11, 2.9 +b11 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 30.9 -a11, -31.4 +b11 , 0 );
setMoveKey( spep_3 -3 + 159, 1, 23.6 -a11, -66.1 +b11 , 0 );

a12 = 110;
b12 = 30;
setMoveKey( spep_3 -3 + 160, 1, -93.7 +a12, -33.1 +b12 , 0 );
setMoveKey( spep_3 -3 + 162, 1, -13.7 +a12, 15.9 +b12 , 0 );
setMoveKey( spep_3 -3 + 164, 1, -90.2 +a12, -1.5 +b12 , 0 );
setMoveKey( spep_3 -3 + 166, 1, -96.2 +a12, 2.1 +b12 , 0 );
setMoveKey( spep_3 -3 + 168, 1, -33.8 +a12, -59.7 +b12 , 0 );
setMoveKey( spep_3 -3 + 170, 1, -44.2 +a12, -17.7 +b12 , 0 );
setMoveKey( spep_3 -3 + 172, 1, -36.5 +a12, -2.3 +b12 , 0 );
setMoveKey( spep_3 -3 + 174, 1, -58.4 +a12, -13.2 +b12 , 0 );
setMoveKey( spep_3 -3 + 177, 1, -48.1 +a12, 6.7 +b12 , 0 );

setMoveKey( spep_3 -3 + 178, 1, 152.1, 181.7 , 0 );
setMoveKey( spep_3 -3 + 180, 1, 155.1, 187.3 , 0 );
setMoveKey( spep_3 -3 + 182, 1, 157.9, 192.7 , 0 );
setMoveKey( spep_3 -3 + 184, 1, 160.7, 197.9 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 163.2, 202.8 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 165.7, 207.4 , 0 );
setMoveKey( spep_3 -3 + 190, 1, 168, 211.9 , 0 );
setMoveKey( spep_3 -3 + 192, 1, 170.2, 216.1 , 0 );
setMoveKey( spep_3 -3 + 194, 1, 172.3, 219.9 , 0 );
setMoveKey( spep_3 -3 + 196, 1, 174.2, 223.6 , 0 );
setMoveKey( spep_3 -3 + 198, 1, 176, 227 , 0 );
setMoveKey( spep_3 -3 + 200, 1, 177.6, 230.1 , 0 );
setMoveKey( spep_3 -3 + 202, 1, 179.2, 232.9 , 0 );
setMoveKey( spep_3 -3 + 204, 1, 180.5, 235.5 , 0 );
setMoveKey( spep_3 -3 + 206, 1, 181.9, 237.9 , 0 );
setMoveKey( spep_3 -3 + 208, 1, 183, 239.9 , 0 );
setMoveKey( spep_3 -3 + 210, 1, 183.9, 241.7 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 184.8, 243.3 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 185.5, 244.6 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 186, 245.6 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 186.5, 246.2 , 0 );
setMoveKey( spep_3 -3 + 220, 1, 186.7, 246.7 , 0 );
setMoveKey( spep_3 -3 + 222, 1, 186.9, 246.8 , 0 );
setMoveKey( spep_3 -3 + 224, 1, 186.8, 246.7 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 186.6, 246.3 , 0 );
setMoveKey( spep_3 -3 + 228, 1, 186.3, 245.6 , 0 );
setMoveKey( spep_3 -3 + 230, 1, 185.9, 244.6 , 0 );
setMoveKey( spep_3 -3 + 232, 1, 185.3, 243.4 , 0 );
setMoveKey( spep_3 -3 + 234, 1, 184.5, 241.8 , 0 );
setMoveKey( spep_3 -3 + 236, 1, 183.6, 240 , 0 );
setMoveKey( spep_3 -3 + 238, 1, 182.6, 238.1 , 0 );
setMoveKey( spep_3 -3 + 240, 1, 181.6, 236.1 , 0 );
setMoveKey( spep_3 -3 + 242, 1, 180.7, 234.1 , 0 );
setMoveKey( spep_3 -3 + 243, 1, 180.7, 234.1 , 0 );

setScaleKey( spep_3 -3 + 30, 1, 0.84 +s2, 0.84 +s2 );
setScaleKey( spep_3 -3 + 32, 1, 1.08 +s2, 1.08 +s2 );
setScaleKey( spep_3 -3 + 34, 1, 1.32 +s2, 1.32 +s2 );
setScaleKey( spep_3 -3 + 36, 1, 1.56 +s2, 1.56 +s2 );
setScaleKey( spep_3 -3 + 41, 1, 1.56 +s2, 1.56 +s2 );

s3 = 0.3;
s4 = 0.7;
s5 = 1.0;
setScaleKey( spep_3 -3 + 42, 1, 1.5 +s3, 1.5 +s3 );
setScaleKey( spep_3 -3 + 69, 1, 1.5 +s3, 1.5 +s3 );
setScaleKey( spep_3 -3 + 70, 1, 1.38 +s4, 1.38 +s4 );
setScaleKey( spep_3 -3 + 101, 1, 1.38 +s4, 1.38 +s4 );
setScaleKey( spep_3 -3 + 102, 1, 1.5 +s3, 1.5 +s3 );
setScaleKey( spep_3 -3 + 107, 1, 1.5 +s3, 1.5 +s3 );
setScaleKey( spep_3 -3 + 108, 1, 1.38 +s4, 1.38 +s4 );
setScaleKey( spep_3 -3 + 115, 1, 1.38 +s4, 1.38 +s4 );
setScaleKey( spep_3 -3 + 116, 1, 1.5 +s3, 1.5 +s3 );
setScaleKey( spep_3 -3 + 146, 1, 1.5 +s3, 1.5 +s3 );
setScaleKey( spep_3 -3 + 148, 1, 1.62 +s3, 1.62 +s3 );
setScaleKey( spep_3 -3 + 150, 1, 1.8 +s3, 1.8 +s3 );
setScaleKey( spep_3 -3 + 152, 1, 1.92 +s3, 1.92 +s3 );
setScaleKey( spep_3 -3 + 154, 1, 2.04 +s3, 2.04 +s3 );
setScaleKey( spep_3 -3 + 156, 1, 2.16 +s3, 2.16 +s3 );
setScaleKey( spep_3 -3 + 159, 1, 2.28 +s3, 2.28 +s3 );
setScaleKey( spep_3 -3 + 160, 1, 2.28 +s5, 2.28 +s5 );
setScaleKey( spep_3 -3 + 164, 1, 2.28 +s5, 2.28 +s5 );
setScaleKey( spep_3 -3 + 166, 1, 2.34 +s5, 2.34 +s5 );
setScaleKey( spep_3 -3 + 177, 1, 2.34 +s5, 2.34 +s5 );

setScaleKey( spep_3 -3 + 178, 1, 1.2 +s3, 1.2 +s3 );
--setScaleKey( spep_3 -3 + 180, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 182, 1, 1.14 +s3, 1.14 +s3 );
--setScaleKey( spep_3 -3 + 186, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 188, 1, 1.08 +s3, 1.08 +s3 );
--setScaleKey( spep_3 -3 + 192, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 194, 1, 1.02 +s3, 1.02 +s3 );
--setScaleKey( spep_3 -3 + 198, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 200, 1, 0.96 +s3, 0.96 +s3 );
--setScaleKey( spep_3 -3 + 208, 1, 0.96, 0.96 );
setScaleKey( spep_3 -3 + 210, 1, 0.9 +s3, 0.9 +s3 );
--setScaleKey( spep_3 -3 + 222, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 224, 1, 0.84 +s3, 0.84 +s3 );
setScaleKey( spep_3 -3 + 243, 1, 0.84 +s3, 0.84 +s3 );

setRotateKey( spep_3 -3 + 41, 1, 0 );
setRotateKey( spep_3 -3 + 42, 1, -15.7 );
setRotateKey( spep_3 -3 + 44, 1, -3.9 );
setRotateKey( spep_3 -3 + 46, 1, 0 );
setRotateKey( spep_3 -3 + 66, 1, 0 );
setRotateKey( spep_3 -3 + 69, 1, -49.2 );
setRotateKey( spep_3 -3 + 70, 1, -62 );
setRotateKey( spep_3 -3 + 74, 1, -62 );
setRotateKey( spep_3 -3 + 76, 1, -90.4 );
setRotateKey( spep_3 -3 + 78, 1, -90.4 );
setRotateKey( spep_3 -3 + 80, 1, -90.5 );
setRotateKey( spep_3 -3 + 82, 1, -90.8 );
setRotateKey( spep_3 -3 + 84, 1, -91.1 );
setRotateKey( spep_3 -3 + 86, 1, -91.4 );
setRotateKey( spep_3 -3 + 88, 1, -91.9 );
setRotateKey( spep_3 -3 + 90, 1, -92.4 );
setRotateKey( spep_3 -3 + 92, 1, -93.1 );
setRotateKey( spep_3 -3 + 94, 1, -93.8 );
setRotateKey( spep_3 -3 + 96, 1, -94.6 );
setRotateKey( spep_3 -3 + 98, 1, -95.5 );
setRotateKey( spep_3 -3 + 101, 1, -96.5 );
setRotateKey( spep_3 -3 + 102, 1, -117.9 );
setRotateKey( spep_3 -3 + 104, 1, -55.9 );
setRotateKey( spep_3 -3 + 107, 1, -32.2 );
setRotateKey( spep_3 -3 + 108, 1, -1.6 );
setRotateKey( spep_3 -3 + 110, 1, 26.7 );
setRotateKey( spep_3 -3 + 112, 1, 40.3 );
setRotateKey( spep_3 -3 + 115, 1, 44.9 );
setRotateKey( spep_3 -3 + 116, 1, -1.9 );
setRotateKey( spep_3 -3 + 118, 1, -53.5 );
setRotateKey( spep_3 -3 + 120, 1, -55.1 );
setRotateKey( spep_3 -3 + 122, 1, -56.7 );
setRotateKey( spep_3 -3 + 124, 1, -58.1 );
setRotateKey( spep_3 -3 + 126, 1, -59.5 );
setRotateKey( spep_3 -3 + 128, 1, -60.8 );
setRotateKey( spep_3 -3 + 130, 1, -62 );
setRotateKey( spep_3 -3 + 132, 1, -63.2 );
setRotateKey( spep_3 -3 + 134, 1, -64.2 );
setRotateKey( spep_3 -3 + 136, 1, -65.2 );
setRotateKey( spep_3 -3 + 138, 1, -66.1 );
setRotateKey( spep_3 -3 + 140, 1, -66.9 );
setRotateKey( spep_3 -3 + 142, 1, -67.6 );
setRotateKey( spep_3 -3 + 144, 1, -68.2 );
setRotateKey( spep_3 -3 + 146, 1, -68.7 );
setRotateKey( spep_3 -3 + 148, 1, -69.2 );
setRotateKey( spep_3 -3 + 150, 1, -69.6 );
setRotateKey( spep_3 -3 + 152, 1, -69.9 );
setRotateKey( spep_3 -3 + 154, 1, -70.1 );
setRotateKey( spep_3 -3 + 156, 1, -70.2 );
setRotateKey( spep_3 -3 + 159, 1, -70.3 );
setRotateKey( spep_3 -3 + 160, 1, 7.2 );
setRotateKey( spep_3 -3 + 162, 1, 5.4 );
setRotateKey( spep_3 -3 + 164, 1, 3.9 );
setRotateKey( spep_3 -3 + 166, 1, 2.6 );
setRotateKey( spep_3 -3 + 168, 1, 1.5 );
setRotateKey( spep_3 -3 + 170, 1, 0.7 );
setRotateKey( spep_3 -3 + 172, 1, 0.1 );
setRotateKey( spep_3 -3 + 174, 1, -0.2 );
setRotateKey( spep_3 -3 + 177, 1, -0.3 );
setRotateKey( spep_3 -3 + 178, 1, 17.2 );
setRotateKey( spep_3 -3 + 243, 1, 17.2 );

-- ** 音 ** --
--瞬間移動
SE005 = playSe( spep_3 + 8, 1109 );

--高速アタック
SE006 = playSe( spep_3 + 34, 1189 );

--高速アタック
SE007 = playSe( spep_3 + 34, 1005 );
setSeVolumeByWorkId( spep_3 + 42, SE007, 79 );

--高速アタック
SE008 = playSe( spep_3 + 34, 1012 );

--高速アタック
SE009 = playSe( spep_3 + 38, 1110 );
stopSe( spep_3 + 56, SE009, 10 );

--高速アタック
SE010 = playSe( spep_3 + 58, 1189 );

--高速アタック
SE011 = playSe( spep_3 + 58, 1005 );
setSeVolumeByWorkId( spep_3 + 58, SE011, 80 );

--高速アタック
SE012 = playSe( spep_3 + 58, 1012 );

--高速アタック
SE013 = playSe( spep_3 + 62, 1110 );
stopSe( spep_3 + 78, SE013, 12 );

--高速アタック連打
SE014 = playSe( spep_3 + 86, 1189 );

--高速アタック連打
SE015 = playSe( spep_3 + 86, 1005 );
setSeVolumeByWorkId( spep_3 + 86, SE015, 74 );

--高速アタック連打
SE016 = playSe( spep_3 + 88, 1001 );
setSeVolumeByWorkId( spep_3 + 88, SE016, 68 );

--高速アタック連打
SE017 = playSe( spep_3 + 92, 1000 );

--高速アタック連打
SE018 = playSe( spep_3 + 94, 1189 );

--高速アタック連打
SE019 = playSe( spep_3 + 94, 1005 );
setSeVolumeByWorkId( spep_3 + 94, SE019, 68 );

--高速アタック連打
--SE020 = playSe( spep_3 + 96, 1000 );
SE020 = playSe( spep_3 + 96, 1001 );

--高速アタック連打
SE021 = playSe( spep_3 + 102, 1189 );

--高速アタック連打
SE022 = playSe( spep_3 + 102, 1005 );
setSeVolumeByWorkId( spep_3 + 102, SE022, 79 );

--高速アタック連打
SE023 = playSe( spep_3 + 104, 1001 );
setSeVolumeByWorkId( spep_3 + 104, SE023, 62 );

--高速アタック連打
SE024 = playSe( spep_3 + 106, 1000 );

--瞬間移動
SE025 = playSe( spep_3 + 124, 1109 );

--蹴り飛ばし
SE026 = playSe( spep_3 + 144, 1003 );

--蹴り飛ばし
SE027 = playSe( spep_3 + 148, 1110 );

--蹴り飛ばし
SE028 = playSe( spep_3 + 1548, 1010 );

--蹴り飛ばし
SE029 = playSe( spep_3 + 148, 1047 );
setSeVolumeByWorkId( spep_3 + 148, SE029, 90 );

--敵飛んでいく
SE030 = playSe( spep_3 + 166, 1183,"",0.9 );
setSeVolumeByWorkId( spep_3 + 166, SE030, 60 );
stopSe( spep_3 + 218, SE030, 36 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 240 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 158 );
endPhase( spep_3 + 282 );

end