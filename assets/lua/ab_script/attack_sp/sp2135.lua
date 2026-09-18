--1021160:破壊神キテラ_破壊神の悪知恵_sp2135
--sp_effect_a9_00071

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
SP_01 = 156696;  --キテラアップ   ef_001
SP_02 = 156697;  --瞬間移動 ef_002
SP_03 = 156698;  --敵の背後に瞬間移動_敵より手前  ef_003_front
SP_04 = 156700;  --敵の背後に瞬間移動_敵より奥   ef_003_back
SP_05 = 156701;  --気弾を溜め瞬間移動_敵より手前  ef_004_front
SP_06 = 156703;  --気弾を溜め瞬間移動_敵より奥   ef_004_back
SP_07 = 156704;  --フィニッシュ_敵より手前 ef_005_front
SP_08 = 156705;  --フィニッシュ_敵より奥  ef_005_back

--敵側
SP_03r = 156699;     --敵の背後に瞬間移動_敵より手前(反転)  ef_003_front_r
SP_05r = 156702;     --気弾を溜め瞬間移動_敵より手前(反転)  ef_004_front_r

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
-- キテラアップ(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 96, 0x100, -1, 0, 0, 0 );  --キテラアップ(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
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
SE001 = playSe( spep_0 + 0, 1072 );
setTimeStretch( SE001, 1.16, 10, 1 );
stopSe( spep_0 + 32, SE001, 14 );

--顔カットイン
SE000 = playSe( spep_0 + 12, 1018 );

--入り
SE002 = playSe( spep_0 + 16, 1237 );
setSeVolumeByWorkId( spep_0 + 16, SE002, 22 );
setSeVolumeByWorkId( spep_0 + 17, SE002, 44 );
setSeVolumeByWorkId( spep_0 + 18, SE002, 67 );
setStartTimeMs( SE002,  150 );

--入り
SE003 = playSe( spep_0 + 18, 20 );
setSeVolumeByWorkId( spep_0 + 18, SE003, 65 );


-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 瞬間移動(36F)
------------------------------------------------------
-- ** エフェクト等 ** --
teleport = entryEffectLife( spep_2 + 0, SP_02, 36, 0x100, -1, 0, 0, 0 );  --瞬間移動(ef_002)
setEffMoveKey( spep_2 + 0, teleport, 0, 0 , 0 );
setEffMoveKey( spep_2 + 36, teleport, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, teleport, 1.0, 1.0 );
setEffScaleKey( spep_2 + 36, teleport, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, teleport, 0 );
setEffRotateKey( spep_2 + 36, teleport, 0 );
setEffAlphaKey( spep_2 + 0, teleport, 255 );
setEffAlphaKey( spep_2 + 36 -1, teleport, 255 );
setEffAlphaKey( spep_2 + 36, teleport, 0 );

-- ** 音 ** --
--瞬間移動
SE005 = playSe( spep_2 + 10, 43 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 24 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

-- ** 次の準備 ** --
spep_3 = spep_2 + 36;


------------------------------------------------------
-- 敵の背後に瞬間移動(76F)
------------------------------------------------------
-- ** エフェクト等 ** --
move_f = entryEffectLife( spep_3 + 0, SP_03, 76, 0x100, -1, 0, 0, 0 );  --敵の背後に瞬間移動_敵より手前(ef_003_front)
setEffMoveKey( spep_3 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, move_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, move_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_f, 0 );
setEffRotateKey( spep_3 + 76, move_f, 0 );
setEffAlphaKey( spep_3 + 0, move_f, 255 );
setEffAlphaKey( spep_3 + 76 -1, move_f, 255 );
setEffAlphaKey( spep_3 + 76, move_f, 0 );

move_b = entryEffectLife( spep_3 + 0, SP_04, 76, 0x80, -1, 0, 0, 0 );  --敵の背後に瞬間移動_敵より奥(ef_003_back)
setEffMoveKey( spep_3 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, move_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, move_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_b, 0 );
setEffRotateKey( spep_3 + 76, move_b, 0 );
setEffAlphaKey( spep_3 + 0, move_b, 255 );
setEffAlphaKey( spep_3 + 76 -1, move_b, 255 );
setEffAlphaKey( spep_3 + 76, move_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
--setDisp( spep_3 + 76, 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 -3 + 56, 1, 2 );

a1=305;
b1=20;
setMoveKey( spep_3 + 0, 1, 335 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 + 1, 1, 334 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 + 2, 1, 332.9 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 331.9 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 330.8 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 329.7 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 328.7 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 327.6 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 326.6 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 325.5 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 324.4 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 323.4 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 322.3 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 321.3 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 320.2 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 319.1 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 318.1 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 317 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 316 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 314.9 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 313.8 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 312.8 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 311.7 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 310.7 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 309.6 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 308.5 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 321.8 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 55, 1, 335 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 349.9 -a1, -125.4 +b1 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 338.2 -a1, -125.4 +b1 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 326.5 -a1 -2, -125.3 +b1 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 326.1 -a1 -4, -125.3 +b1 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 325.6 -a1 -6, -125.3 +b1 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 325.1 -a1 -8, -125.3 +b1 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 324.7 -a1 -10, -125.3 +b1 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 324.2 -a1 -12, -125.3 +b1 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 323.8 -a1 -14, -125.3 +b1 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 323.3 -a1 -16, -125.3 +b1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 322.9 -a1 -18, -125.3 +b1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 322.4 -a1 -20, -125.3 +b1 , 0 );
--setMoveKey( spep_3 -3 + 79, 1, 322.4 -a1 -22, -125.3 +b1 , 0 );

s1=0.2;
setScaleKey( spep_3 + 0, 1, 2.38 +s1, 2.38 +s1 );--5.8
setScaleKey( spep_3 -3 + 55, 1, 2.38 +s1, 2.38 +s1 );
setScaleKey( spep_3 -3 + 56, 1, 2.204 +s1, 2.204 +s1 );
setScaleKey( spep_3 -3 + 62, 1, 2.204 +s1, 2.204 +s1 );
setScaleKey( spep_3 -3 + 64, 1, 2.232 +s1, 2.232 +s1 );
--setScaleKey( spep_3 -3 + 72, 1, 2.262, 2.262 );
--setScaleKey( spep_3 -3 + 74, 1, 2.32, 2.32 );
setScaleKey( spep_3 -3 + 78, 1, 2.32 +s1, 2.32 +s1 );
--setScaleKey( spep_3 -3 + 79, 1, 2.32, 2.32 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 75, 1, 0 );
--setRotateKey( spep_3 + 76, 1, 0 );


-- ** 音 ** --
--瞬間移動
SE006 = playSe( spep_3 + 14, 43 );

--！？
SE007 = playSe( spep_3 + 22, 48 );
setSeVolumeByWorkId( spep_3 + 22, SE007, 79 );
stopSe( spep_3 + 48, SE007, 26 );

--瞬間移動
SE008 = playSe( spep_3 + 58, 43 );

-- ** 黒背景 ** --
--entryFadeBg( spep_3 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;


------------------------------------------------------
-- 気弾を溜め瞬間移動(176F)
------------------------------------------------------
-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_4 + 0, SP_05, 176, 0x100, -1, 0, 0, 0 );  --気弾を溜め瞬間移動_敵より手前(ef_004_front)
setEffMoveKey( spep_4 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 176, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 176, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot_f, 0 );
setEffRotateKey( spep_4 + 176, shot_f, 0 );
setEffAlphaKey( spep_4 + 0, shot_f, 255 );
setEffAlphaKey( spep_4 + 176 -1, shot_f, 255 );
setEffAlphaKey( spep_4 + 176, shot_f, 0 );

shot_b = entryEffectLife( spep_4 + 0, SP_06, 176, 0x80, -1, 0, 0, 0 );  --気弾を溜め瞬間移動_敵より奥(ef_004_back)
setEffMoveKey( spep_4 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 176, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 176, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot_b, 0 );
setEffRotateKey( spep_4 + 176, shot_b, 0 );
setEffAlphaKey( spep_4 + 0, shot_b, 255 );
setEffAlphaKey( spep_4 + 176 -1, shot_b, 255 );
setEffAlphaKey( spep_4 + 176, shot_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
--setDisp( spep_4 + 176, 1, 0 );
changeAnime( spep_4 + 0, 1, 2 );
changeAnime( spep_4 -3 + 42, 1, 100 );
changeAnime( spep_4 -3 + 96, 1, 106 );


a2=327;
b2=20;
c2=240;
setMoveKey( spep_4 + 0, 1, 322.4 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 + 1, 1, 320.9 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 + 2, 1, 319.4 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 317.9 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 316.4 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 314.8 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 313.3 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 311.8 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 310.3 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 308.8 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 307.2 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 319.5 -a2, -124 +b2 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 331.8 -a2, -122.8 +b2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 344.2 -a2, -121.5 +b2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 356.6 -a2, -120.2 +b2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 369 -a2, -118.9 +b2 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 381.4 -a2, -117.6 +b2 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 393.9 -a2, -116.4 +b2 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 406.5 -a2, -115.1 +b2 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 428 -a2, -113.8 +b2 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 449.3 -a2, -112.4 +b2 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 496.3 -a2, -96.5 +b2 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 509.6 -a2, -95.4 +b2 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 523 -a2, -94.2 +b2 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 536.2 -a2, -93.1 +b2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 549.5 -a2, -92 +b2 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 562.8 -a2, -90.9 +b2 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 559.8 -a2, -90.8 +b2 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 556.7 -a2, -90.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 553.6 -a2, -90.6 +b2 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 550.5 -a2, -90.5 +b2 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 547.4 -a2, -90.4 +b2 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 544.3 -a2, -90.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 541.2 -a2, -90.2 +b2 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 538.1 -a2, -90.1 +b2 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 535.1 -a2, -90 +b2 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 532 -a2, -89.8 +b2 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 528.9 -a2, -89.8 +b2 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 525.8 -a2, -89.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 522.7 -a2, -89.6 +b2 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 519.6 -a2, -89.5 +b2 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 516.5 -a2, -89.4 +b2 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 513.4 -a2, -89.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 510.3 -a2, -89.2 +b2 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 507.2 -a2, -89.1 +b2 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 503.4 -a2, -76.9 +b2 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 499.7 -a2, -88.8 +b2 , 0 );
setMoveKey( spep_4 -3 + 95, 1, 495.9 -a2, -76.6 +b2 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 475.6 -a2, 210.2 -c2 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 475.4 -a2, 223.3 -c2 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 475.2 -a2, 212.5 -c2 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 475 -a2, 229.7 -c2 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 471.3 -a2, 214.9 -c2 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 467.7 -a2, 232.1 -c2 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 464 -a2, 217.2 -c2 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 460.3 -a2, 230.4 -c2 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 456.6 -a2, 219.6 -c2 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 452.9 -a2, 232.8 -c2 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 449.3 -a2, 222 -c2 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 445.6 -a2, 223.1 -c2 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 441.9 -a2, 224.3 -c2 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 438.2 -a2, 237.5 -c2 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 434.5 -a2, 226.7 -c2 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 430.9 -a2, 239.9 -c2 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 427.2 -a2, 229 -c2 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 423.5 -a2, 246.2 -c2 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 419.8 -a2, 231.4 -c2 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 416.2 -a2, 244.6 -c2 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 412.5 -a2, 233.8 -c2 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 408.7 -a2, 246.9 -c2 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 405.1 -a2, 236.1 -c2 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 401.4 -a2, 249.4 -c2 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 397.8 -a2, 238.4 -c2 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 394 -a2, 251.7 -c2 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 390.4 -a2, 240.9 -c2 , 0 );
setMoveKey( spep_4 -3 + 150, 1, 386.7 -a2, 254 -c2 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 383 -a2, 243.3 -c2 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 379.3 -a2, 256.4 -c2 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 375.7 -a2, 245.6 -c2 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 372 -a2, 258.7 -c2 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 368.3 -a2, 248 -c2 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 364.6 -a2, 261.1 -c2 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 361 -a2, 250.3 -c2 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 357.3 -a2, 263.5 -c2 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 353.6 -a2, 252.6 -c2 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 349.9 -a2, 269.9 -c2 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 346.2 -a2, 255 -c2 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 342.6 -a2, 268.2 -c2 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 339 -a2, 257.4 -c2 , 0 );
setMoveKey( spep_4 -3 + 178, 1, 335.2 -a2, 270.6 -c2 , 0 );
--setMoveKey( spep_4 -3 + 179, 1, 335.2 -a2, 270.6 -c2 , 0 );

s2=0.2;
setScaleKey( spep_4 + 0, 1, 2.32 +s2, 2.32+s2 );
setScaleKey( spep_4 -3 + 24, 1, 2.32+s2, 2.32+s2 );
setScaleKey( spep_4 -3 + 26, 1, 2.262+s2, 2.262+s2 );
setScaleKey( spep_4 -3 + 28, 1, 2.262+s2, 2.262+s2 );
setScaleKey( spep_4 -3 + 30, 1, 2.204+s2, 2.204+s2 );
setScaleKey( spep_4 -3 + 34, 1, 2.204+s2, 2.204+s2 );
setScaleKey( spep_4 -3 + 36, 1, 2.146+s2, 2.146+s2 );
setScaleKey( spep_4 -3 + 38, 1, 2.03+s2, 2.03+s2 );
setScaleKey( spep_4 -3 + 41, 1, 1.914+s2, 1.914+s2 );
setScaleKey( spep_4 -3 + 46, 1, 1.914+s2, 1.914+s2 );
setScaleKey( spep_4 -3 + 48, 1, 1.856+s2, 1.856+s2 );
setScaleKey( spep_4 -3 + 50, 1, 1.856+s2, 1.856+s2 );
setScaleKey( spep_4 -3 + 52, 1, 1.798+s2, 1.798+s2 );
setScaleKey( spep_4 -3 + 54, 1, 1.798+s2, 1.798+s2 );
setScaleKey( spep_4 -3 + 56, 1, 1.856+s2, 1.856+s2 );
setScaleKey( spep_4 -3 + 95, 1, 1.856+s2, 1.856+s2 );
setScaleKey( spep_4 -3 + 96, 1, 1.798+s2, 1.798+s2 );
setScaleKey( spep_4 -3 + 100, 1, 1.798+s2, 1.798+s2 );
setScaleKey( spep_4 -3 + 102, 1, 1.856+s2, 1.856+s2 );
setScaleKey( spep_4 -3 + 118, 1, 1.856+s2, 1.86+s2 );
setScaleKey( spep_4 -3 + 120, 1, 1.914+s2, 1.914+s2 );
setScaleKey( spep_4 -3 + 136, 1, 1.914+s2, 1.914+s2 );
setScaleKey( spep_4 -3 + 138, 1, 1.972+s2, 1.972+s2 );
setScaleKey( spep_4 -3 + 154, 1, 1.972+s2, 1.972+s2 );
setScaleKey( spep_4 -3 + 156, 1, 2.03+s2, 2.03+s2 );
setScaleKey( spep_4 -3 + 172, 1, 2.03+s2, 2.03+s2 );
setScaleKey( spep_4 -3 + 174, 1, 2.088+s2, 2.088+s2 );
setScaleKey( spep_4 -3 + 178, 1, 2.088+s2, 2.088+s2 );
--setScaleKey( spep_4 -3 + 179, 1, 2.088, 2.088 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 95, 1, 0 );
setRotateKey( spep_4 -3 + 96, 1, -45.2 );
setRotateKey( spep_4 -3 + 178, 1, -45.2 );
--setRotateKey( spep_4 -3 + 179, 1, -45.2 );

-- ** 音 ** --
--瞬間移動
SE010 = playSe( spep_4 + 26, 43 );

--気弾溜め
SE011 = playSe( spep_4 + 42, 1239 );
setSeVolumeByWorkId( spep_4 + 42, SE011, 141 );
stopSe( spep_4 + 92, SE011, 12 );

--気弾溜め
SE012 = playSe( spep_4 + 42, 1037 );
setSeVolumeByWorkId( spep_4 + 42, SE012, 58 );
stopSe( spep_4 + 84, SE012, 10 );

--敵のみこむ
SE013 = playSe( spep_4 + 80, 1027 );

--敵のみこむ
SE014 = playSe( spep_4 + 80, 1145 );
setSeVolumeByWorkId( spep_4 + 80, SE014, 63 );
setPitch( spep_4 + 80, SE014, 200 );
setTimeStretch( SE014, 1.13, 10, 1 );

--敵のみこむ
SE015 = playSe( spep_4 + 90, 1271 );
setSeVolumeByWorkId( spep_4 + 90, SE015, 79 );
stopSe( spep_4 +176 + 12, SE015, 10 );

--敵のみこむ
SE009 = playSe( spep_4 + 98, 1214 );
setSeVolumeByWorkId( spep_4 + 98, SE009, 40 );
setSeVolumeByWorkId( spep_4 + 100, SE009, 80 );
setSeVolumeByWorkId( spep_4 + 102, SE009, 120 );
setSeVolumeByWorkId( spep_4 + 104, SE009, 158 );
stopSe( spep_4 +176 + 12, SE009, 10 );
setStartTimeMs( SE009,  1400 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 176;


------------------------------------------------------
-- フィニッシュ(94F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --フィニッシュ_敵より手前(ef_005_front)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 94, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 94, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 94, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 94 -1, finish_f, 255 );
setEffAlphaKey( spep_5 + 94, finish_f, 0 );

finish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --フィニッシュ_敵より奥(ef_005_back)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 94, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 94, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 94, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 94 -1, finish_b, 255 );
setEffAlphaKey( spep_5 + 94, finish_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 94, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );

a3=307;
b3=330;
setMoveKey( spep_5 + 0, 1, 31.8, 270.6 -b3 , 0 );
setMoveKey( spep_5 + 1, 1, 335.2 -a3, 286.7 -b3 , 0 );
setMoveKey( spep_5 + 2, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 335.2 -a3, 286.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 335.2 -a3, 286.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 97, 1, 335.2 -a3, 270.7 -b3 , 0 );

s3=0.2
setScaleKey( spep_5 + 0, 1, 2.088 +s3, 2.088 +s3 );
setScaleKey( spep_5 + 94, 1, 2.088 +s3, 2.088 +s3 );

setRotateKey( spep_5 + 0, 1, -45.2 );
setRotateKey( spep_5 + 94, 1, -45.2 );

-- ** 音 ** --
--爆発
SE016 = playSe( spep_5 + 8, 1023 );

--爆発
SE017 = playSe( spep_5 + 8, 1011 );
setSeVolumeByWorkId( spep_5 + 8, SE017, 69 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 94 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 - 6 );
endPhase( spep_5 + 94 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- キテラアップ(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 96, 0x100, -1, 0, 0, 0 );  --キテラアップ(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 0 );

spep_x = spep_0 + 0;
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
setTimeStretch( SE001, 1.16, 10, 1 );
stopSe( spep_0 + 32, SE001, 14 );

--顔カットイン
SE000 = playSe( spep_0 + 12, 1018 );

--入り
SE002 = playSe( spep_0 + 16, 1237 );
setSeVolumeByWorkId( spep_0 + 16, SE002, 22 );
setSeVolumeByWorkId( spep_0 + 17, SE002, 44 );
setSeVolumeByWorkId( spep_0 + 18, SE002, 67 );
setStartTimeMs( SE002,  150 );

--入り
SE003 = playSe( spep_0 + 18, 20 );
setSeVolumeByWorkId( spep_0 + 18, SE003, 65 );


-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 瞬間移動(36F)
------------------------------------------------------
-- ** エフェクト等 ** --
teleport = entryEffectLife( spep_2 + 0, SP_02, 36, 0x100, -1, 0, 0, 0 );  --瞬間移動(ef_002)
setEffMoveKey( spep_2 + 0, teleport, 0, 0 , 0 );
setEffMoveKey( spep_2 + 36, teleport, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, teleport, -1.0, 1.0 );
setEffScaleKey( spep_2 + 36, teleport, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, teleport, 0 );
setEffRotateKey( spep_2 + 36, teleport, 0 );
setEffAlphaKey( spep_2 + 0, teleport, 255 );
setEffAlphaKey( spep_2 + 36 -1, teleport, 255 );
setEffAlphaKey( spep_2 + 36, teleport, 0 );

-- ** 音 ** --
--瞬間移動
SE005 = playSe( spep_2 + 10, 43 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 24 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

-- ** 次の準備 ** --
spep_3 = spep_2 + 36;


------------------------------------------------------
-- 敵の背後に瞬間移動(76F)
------------------------------------------------------
-- ** エフェクト等 ** --
move_f = entryEffectLife( spep_3 + 0, SP_03r, 76, 0x100, -1, 0, 0, 0 );  --敵の背後に瞬間移動_敵より手前(ef_003_front)
setEffMoveKey( spep_3 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, move_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, move_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_f, 0 );
setEffRotateKey( spep_3 + 76, move_f, 0 );
setEffAlphaKey( spep_3 + 0, move_f, 255 );
setEffAlphaKey( spep_3 + 76 -1, move_f, 255 );
setEffAlphaKey( spep_3 + 76, move_f, 0 );

move_b = entryEffectLife( spep_3 + 0, SP_04, 76, 0x80, -1, 0, 0, 0 );  --敵の背後に瞬間移動_敵より奥(ef_003_back)
setEffMoveKey( spep_3 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, move_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, move_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_b, 0 );
setEffRotateKey( spep_3 + 76, move_b, 0 );
setEffAlphaKey( spep_3 + 0, move_b, 255 );
setEffAlphaKey( spep_3 + 76 -1, move_b, 255 );
setEffAlphaKey( spep_3 + 76, move_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
--setDisp( spep_3 + 76, 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 -3 + 56, 1, 2 );

a1=305;
b1=20;
setMoveKey( spep_3 + 0, 1, 335 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 + 1, 1, 334 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 + 2, 1, 332.9 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 331.9 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 330.8 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 329.7 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 328.7 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 327.6 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 326.6 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 325.5 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 324.4 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 323.4 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 322.3 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 321.3 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 320.2 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 319.1 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 318.1 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 317 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 316 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 314.9 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 313.8 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 312.8 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 311.7 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 310.7 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 309.6 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 308.5 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 321.8 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 55, 1, 335 -a1, -109.1 +b1 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 349.9 -a1, -125.4 +b1 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 338.2 -a1, -125.4 +b1 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 326.5 -a1 -2, -125.3 +b1 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 326.1 -a1 -4, -125.3 +b1 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 325.6 -a1 -6, -125.3 +b1 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 325.1 -a1 -8, -125.3 +b1 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 324.7 -a1 -10, -125.3 +b1 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 324.2 -a1 -12, -125.3 +b1 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 323.8 -a1 -14, -125.3 +b1 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 323.3 -a1 -16, -125.3 +b1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 322.9 -a1 -18, -125.3 +b1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 322.4 -a1 -20, -125.3 +b1 , 0 );
--setMoveKey( spep_3 -3 + 79, 1, 322.4 -a1 -22, -125.3 +b1 , 0 );

s1=0.2;
setScaleKey( spep_3 + 0, 1, 2.38 +s1, 2.38 +s1 );--5.8
setScaleKey( spep_3 -3 + 55, 1, 2.38 +s1, 2.38 +s1 );
setScaleKey( spep_3 -3 + 56, 1, 2.204 +s1, 2.204 +s1 );
setScaleKey( spep_3 -3 + 62, 1, 2.204 +s1, 2.204 +s1 );
setScaleKey( spep_3 -3 + 64, 1, 2.232 +s1, 2.232 +s1 );
--setScaleKey( spep_3 -3 + 72, 1, 2.262, 2.262 );
--setScaleKey( spep_3 -3 + 74, 1, 2.32, 2.32 );
setScaleKey( spep_3 -3 + 78, 1, 2.32 +s1, 2.32 +s1 );
--setScaleKey( spep_3 -3 + 79, 1, 2.32, 2.32 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 75, 1, 0 );
--setRotateKey( spep_3 + 76, 1, 0 );


-- ** 音 ** --
--瞬間移動
SE006 = playSe( spep_3 + 14, 43 );

--！？
SE007 = playSe( spep_3 + 22, 48 );
setSeVolumeByWorkId( spep_3 + 22, SE007, 79 );
stopSe( spep_3 + 48, SE007, 26 );

--瞬間移動
SE008 = playSe( spep_3 + 58, 43 );

-- ** 黒背景 ** --
--entryFadeBg( spep_3 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;


------------------------------------------------------
-- 気弾を溜め瞬間移動(176F)
------------------------------------------------------
-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_4 + 0, SP_05r, 176, 0x100, -1, 0, 0, 0 );  --気弾を溜め瞬間移動_敵より手前(ef_004_front)
setEffMoveKey( spep_4 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 176, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 176, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot_f, 0 );
setEffRotateKey( spep_4 + 176, shot_f, 0 );
setEffAlphaKey( spep_4 + 0, shot_f, 255 );
setEffAlphaKey( spep_4 + 176 -1, shot_f, 255 );
setEffAlphaKey( spep_4 + 176, shot_f, 0 );

shot_b = entryEffectLife( spep_4 + 0, SP_06, 176, 0x80, -1, 0, 0, 0 );  --気弾を溜め瞬間移動_敵より奥(ef_004_back)
setEffMoveKey( spep_4 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 176, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 176, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot_b, 0 );
setEffRotateKey( spep_4 + 176, shot_b, 0 );
setEffAlphaKey( spep_4 + 0, shot_b, 255 );
setEffAlphaKey( spep_4 + 176 -1, shot_b, 255 );
setEffAlphaKey( spep_4 + 176, shot_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
--setDisp( spep_4 + 176, 1, 0 );
changeAnime( spep_4 + 0, 1, 2 );
changeAnime( spep_4 -3 + 42, 1, 100 );
changeAnime( spep_4 -3 + 96, 1, 106 );


a2=327;
b2=20;
c2=240;
setMoveKey( spep_4 + 0, 1, 322.4 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 + 1, 1, 320.9 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 + 2, 1, 319.4 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 317.9 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 316.4 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 314.8 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 313.3 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 311.8 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 310.3 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 308.8 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 307.2 -a2, -125.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 319.5 -a2, -124 +b2 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 331.8 -a2, -122.8 +b2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 344.2 -a2, -121.5 +b2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 356.6 -a2, -120.2 +b2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 369 -a2, -118.9 +b2 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 381.4 -a2, -117.6 +b2 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 393.9 -a2, -116.4 +b2 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 406.5 -a2, -115.1 +b2 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 428 -a2, -113.8 +b2 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 449.3 -a2, -112.4 +b2 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 496.3 -a2, -96.5 +b2 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 509.6 -a2, -95.4 +b2 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 523 -a2, -94.2 +b2 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 536.2 -a2, -93.1 +b2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 549.5 -a2, -92 +b2 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 562.8 -a2, -90.9 +b2 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 559.8 -a2, -90.8 +b2 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 556.7 -a2, -90.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 553.6 -a2, -90.6 +b2 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 550.5 -a2, -90.5 +b2 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 547.4 -a2, -90.4 +b2 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 544.3 -a2, -90.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 541.2 -a2, -90.2 +b2 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 538.1 -a2, -90.1 +b2 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 535.1 -a2, -90 +b2 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 532 -a2, -89.8 +b2 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 528.9 -a2, -89.8 +b2 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 525.8 -a2, -89.7 +b2 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 522.7 -a2, -89.6 +b2 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 519.6 -a2, -89.5 +b2 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 516.5 -a2, -89.4 +b2 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 513.4 -a2, -89.3 +b2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 510.3 -a2, -89.2 +b2 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 507.2 -a2, -89.1 +b2 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 503.4 -a2, -76.9 +b2 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 499.7 -a2, -88.8 +b2 , 0 );
setMoveKey( spep_4 -3 + 95, 1, 495.9 -a2, -76.6 +b2 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 475.6 -a2, 210.2 -c2 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 475.4 -a2, 223.3 -c2 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 475.2 -a2, 212.5 -c2 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 475 -a2, 229.7 -c2 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 471.3 -a2, 214.9 -c2 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 467.7 -a2, 232.1 -c2 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 464 -a2, 217.2 -c2 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 460.3 -a2, 230.4 -c2 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 456.6 -a2, 219.6 -c2 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 452.9 -a2, 232.8 -c2 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 449.3 -a2, 222 -c2 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 445.6 -a2, 223.1 -c2 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 441.9 -a2, 224.3 -c2 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 438.2 -a2, 237.5 -c2 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 434.5 -a2, 226.7 -c2 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 430.9 -a2, 239.9 -c2 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 427.2 -a2, 229 -c2 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 423.5 -a2, 246.2 -c2 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 419.8 -a2, 231.4 -c2 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 416.2 -a2, 244.6 -c2 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 412.5 -a2, 233.8 -c2 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 408.7 -a2, 246.9 -c2 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 405.1 -a2, 236.1 -c2 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 401.4 -a2, 249.4 -c2 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 397.8 -a2, 238.4 -c2 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 394 -a2, 251.7 -c2 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 390.4 -a2, 240.9 -c2 , 0 );
setMoveKey( spep_4 -3 + 150, 1, 386.7 -a2, 254 -c2 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 383 -a2, 243.3 -c2 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 379.3 -a2, 256.4 -c2 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 375.7 -a2, 245.6 -c2 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 372 -a2, 258.7 -c2 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 368.3 -a2, 248 -c2 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 364.6 -a2, 261.1 -c2 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 361 -a2, 250.3 -c2 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 357.3 -a2, 263.5 -c2 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 353.6 -a2, 252.6 -c2 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 349.9 -a2, 269.9 -c2 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 346.2 -a2, 255 -c2 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 342.6 -a2, 268.2 -c2 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 339 -a2, 257.4 -c2 , 0 );
setMoveKey( spep_4 -3 + 178, 1, 335.2 -a2, 270.6 -c2 , 0 );
--setMoveKey( spep_4 -3 + 179, 1, 335.2 -a2, 270.6 -c2 , 0 );

s2=0.2;
setScaleKey( spep_4 + 0, 1, 2.32 +s2, 2.32+s2 );
setScaleKey( spep_4 -3 + 24, 1, 2.32+s2, 2.32+s2 );
setScaleKey( spep_4 -3 + 26, 1, 2.262+s2, 2.262+s2 );
setScaleKey( spep_4 -3 + 28, 1, 2.262+s2, 2.262+s2 );
setScaleKey( spep_4 -3 + 30, 1, 2.204+s2, 2.204+s2 );
setScaleKey( spep_4 -3 + 34, 1, 2.204+s2, 2.204+s2 );
setScaleKey( spep_4 -3 + 36, 1, 2.146+s2, 2.146+s2 );
setScaleKey( spep_4 -3 + 38, 1, 2.03+s2, 2.03+s2 );
setScaleKey( spep_4 -3 + 41, 1, 1.914+s2, 1.914+s2 );
setScaleKey( spep_4 -3 + 46, 1, 1.914+s2, 1.914+s2 );
setScaleKey( spep_4 -3 + 48, 1, 1.856+s2, 1.856+s2 );
setScaleKey( spep_4 -3 + 50, 1, 1.856+s2, 1.856+s2 );
setScaleKey( spep_4 -3 + 52, 1, 1.798+s2, 1.798+s2 );
setScaleKey( spep_4 -3 + 54, 1, 1.798+s2, 1.798+s2 );
setScaleKey( spep_4 -3 + 56, 1, 1.856+s2, 1.856+s2 );
setScaleKey( spep_4 -3 + 95, 1, 1.856+s2, 1.856+s2 );
setScaleKey( spep_4 -3 + 96, 1, 1.798+s2, 1.798+s2 );
setScaleKey( spep_4 -3 + 100, 1, 1.798+s2, 1.798+s2 );
setScaleKey( spep_4 -3 + 102, 1, 1.856+s2, 1.856+s2 );
setScaleKey( spep_4 -3 + 118, 1, 1.856+s2, 1.86+s2 );
setScaleKey( spep_4 -3 + 120, 1, 1.914+s2, 1.914+s2 );
setScaleKey( spep_4 -3 + 136, 1, 1.914+s2, 1.914+s2 );
setScaleKey( spep_4 -3 + 138, 1, 1.972+s2, 1.972+s2 );
setScaleKey( spep_4 -3 + 154, 1, 1.972+s2, 1.972+s2 );
setScaleKey( spep_4 -3 + 156, 1, 2.03+s2, 2.03+s2 );
setScaleKey( spep_4 -3 + 172, 1, 2.03+s2, 2.03+s2 );
setScaleKey( spep_4 -3 + 174, 1, 2.088+s2, 2.088+s2 );
setScaleKey( spep_4 -3 + 178, 1, 2.088+s2, 2.088+s2 );
--setScaleKey( spep_4 -3 + 179, 1, 2.088, 2.088 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 95, 1, 0 );
setRotateKey( spep_4 -3 + 96, 1, -45.2 );
setRotateKey( spep_4 -3 + 178, 1, -45.2 );
--setRotateKey( spep_4 -3 + 179, 1, -45.2 );

-- ** 音 ** --
--瞬間移動
SE010 = playSe( spep_4 + 26, 43 );

--気弾溜め
SE011 = playSe( spep_4 + 42, 1239 );
setSeVolumeByWorkId( spep_4 + 42, SE011, 141 );
stopSe( spep_4 + 92, SE011, 12 );

--気弾溜め
SE012 = playSe( spep_4 + 42, 1037 );
setSeVolumeByWorkId( spep_4 + 42, SE012, 58 );
stopSe( spep_4 + 84, SE012, 10 );

--敵のみこむ
SE013 = playSe( spep_4 + 80, 1027 );

--敵のみこむ
SE014 = playSe( spep_4 + 80, 1145 );
setSeVolumeByWorkId( spep_4 + 80, SE014, 63 );
setPitch( spep_4 + 80, SE014, 200 );
setTimeStretch( SE014, 1.13, 10, 1 );

--敵のみこむ
SE015 = playSe( spep_4 + 90, 1271 );
setSeVolumeByWorkId( spep_4 + 90, SE015, 79 );
stopSe( spep_4 +176 + 12, SE015, 10 );

--敵のみこむ
SE009 = playSe( spep_4 + 98, 1214 );
setSeVolumeByWorkId( spep_4 + 98, SE009, 40 );
setSeVolumeByWorkId( spep_4 + 100, SE009, 80 );
setSeVolumeByWorkId( spep_4 + 102, SE009, 120 );
setSeVolumeByWorkId( spep_4 + 104, SE009, 158 );
stopSe( spep_4 +176 + 12, SE009, 10 );
setStartTimeMs( SE009,  1400 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 176;


------------------------------------------------------
-- フィニッシュ(94F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --フィニッシュ_敵より手前(ef_005_front)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 94, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 94, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 94, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 94 -1, finish_f, 255 );
setEffAlphaKey( spep_5 + 94, finish_f, 0 );

finish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --フィニッシュ_敵より奥(ef_005_back)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 94, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 94, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 94, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 94 -1, finish_b, 255 );
setEffAlphaKey( spep_5 + 94, finish_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 94, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );

a3=307;
b3=330;
setMoveKey( spep_5 + 0, 1, 31.8, 270.6 -b3 , 0 );
setMoveKey( spep_5 + 1, 1, 335.2 -a3, 286.7 -b3 , 0 );
setMoveKey( spep_5 + 2, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 335.2 -a3, 286.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 335.2 -a3, 286.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 335.2 -a3, 282.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 335.2 -a3, 270.7 -b3 , 0 );
setMoveKey( spep_5 -3 + 97, 1, 335.2 -a3, 270.7 -b3 , 0 );

s3=0.2
setScaleKey( spep_5 + 0, 1, 2.088 +s3, 2.088 +s3 );
setScaleKey( spep_5 + 94, 1, 2.088 +s3, 2.088 +s3 );

setRotateKey( spep_5 + 0, 1, -45.2 );
setRotateKey( spep_5 + 94, 1, -45.2 );

-- ** 音 ** --
--爆発
SE016 = playSe( spep_5 + 8, 1023 );

--爆発
SE017 = playSe( spep_5 + 8, 1011 );
setSeVolumeByWorkId( spep_5 + 8, SE017, 69 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 94 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 - 6 );
endPhase( spep_5 + 94 );

end