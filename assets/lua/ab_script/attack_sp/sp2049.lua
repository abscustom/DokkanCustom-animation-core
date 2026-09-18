--1020250:孫悟飯(幼年期)_一刀両断(SSR)
--sp_effect_b2_00036

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
SP_01 = 155788;   --悟飯登場、カットインまで    ef_001
SP_02 = 155790;   --敵に向かってジャンプ、フレームアウト  ef_002
SP_03 = 155792;   --一回転して切る ef_003
SP_04 = 155794;   --青の斬撃_敵より前   ef_004_front
SP_05 = 155795;   --青の斬撃_敵より奥   ef_004_back
SP_06 = 155797;   --フィニッシュ_敵より手前     ef_005_front
SP_07 = 155798;    --フィニッシュ_敵より手前  ef_005_back


--敵側
SP_01r = 155789;    --悟飯登場、カットインまで  ef_001_r
SP_02r = 155791;    --敵に向かってジャンプ、フレームアウト    ef_002_r
SP_03r = 155793;    --一回転して切る   ef_003_r
SP_05r = 155796;    --青の斬撃_敵より奥 ef_004_back_r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.8);

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_1 = spep_0 + 146;
        spep_2 = spep_1 + 94;
        spep_3 = spep_2 + 46;
        spep_4 = spep_3 + 44;
        spep_5 = spep_4 + 76;
        timing_skip = spep_4 + 34;
        --timing_skip = 504;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        -- ** 音 ** --
        --剣撃1
        playSe( spep_4 + 34 + 3, 1143 );
        setSeVolume( spep_4 + 34 + 3, 1143, 60 );
        --剣撃2
        playSe( spep_4 + 34 + 3, 1032 );
        --剣撃3
        playSe( spep_4 + 34 + 3, 1142 );
        setSeVolume( spep_4 + 34 + 3, 1142, 61 );
    end

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 悟飯登場、カットインまで(158F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 146, 0x100, -1, 0, 0, 0 );  --立ち〜背中パンチ(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 146, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 146, first_f, 255 );

spep_x = spep_0 + 58;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 13,  190006, 71, 0x100, -1, 0, -200, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 13, ctgogo, 71, 10 );
setEffMoveKey( spep_x + 13, ctgogo, -200, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -200, 515.5 , 0 );
setEffScaleKey( spep_x + 13, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 13, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--剣ドシン1
playSe( spep_0 + 12, 1003 );

--剣ドシン2
SE00 = playSe( spep_0 + 18, 1061 );
--setSeVolume( spep_0 + 34, 1061, 100 );
--setSeVolume( spep_0 + 38, 1061, 80 );
--setSeVolume( spep_0 + 42, 1061, 60 );
--setSeVolume( spep_0 + 46, 1061, 55 );
--setSeVolume( spep_0 + 50, 1061, 50 );
--setSeVolume( spep_0 + 54, 1061, 40 );
--setSeVolume( spep_0 + 58, 1061, 20 );
--setSeVolume( spep_0 + 62, 1061, 10 );
--setSeVolume( spep_0 + 66, 1061, 0 );
stopSe( spep_0 + 34, SE00, 32 );

--カメラ遷移
playSe( spep_0 + 44, 8 );
setSeVolume( spep_0 + 44, 8, 56 );

--顔カットイン
playSe( spep_0 + 70, 1018 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 146, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 136, 8, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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
-- 敵に向かってジャンプ、フレームアウト(46F)
------------------------------------------------------

-- ** エフェクト等 ** --
jump = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --敵に向かってジャンプ、フレームアウト(ef_002)
setEffMoveKey( spep_2 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, jump, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, jump, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, jump, 0 );
setEffRotateKey( spep_2 + 46, jump, 0 );
setEffAlphaKey( spep_2 + 0, jump, 255 );
setEffAlphaKey( spep_2 + 46, jump, 255 );

-- ** 音 ** --
--ジャンプ1
SE01 = playSe( spep_2 + 26 - 12 , 1109 );
setSeVolume( spep_2 + 26 - 12 , 1109, 83 );
--setSeVolume( spep_2 + 39 - 12 , 1109, 83 );
--setSeVolume( spep_2 + 40 - 12 , 1109, 62 );
--setSeVolume( spep_2 + 43 - 12 , 1109, 41 );
--setSeVolume( spep_2 + 46 - 12 , 1109, 29 );
--setSeVolume( spep_2 + 49 - 12 , 1109, 16 );
--setSeVolume( spep_2 + 52 - 12 , 1109, 8 );
--setSeVolume( spep_2 + 54 - 12 , 1109, 0 );
stopSe( spep_2 + 39 - 12, SE01, 15 );

--ジャンプ2
SE02 = playSe( spep_2 + 26 - 12, 1116 );
--setSeVolume( spep_2 + 49 - 12 , 1116, 100 );
--setSeVolume( spep_2 + 50 - 12 , 1116, 90 );
--setSeVolume( spep_2 + 52 - 12 , 1116, 80 );
--setSeVolume( spep_2 + 54 - 12 , 1116, 70 );
--setSeVolume( spep_2 + 56 - 12 , 1116, 60 );
--setSeVolume( spep_2 + 58 - 12 , 1116, 50 );
--setSeVolume( spep_2 + 60 - 12 , 1116, 40 );
--setSeVolume( spep_2 + 62 - 12 , 1116, 30 );
--setSeVolume( spep_2 + 64 - 12 , 1116, 20 );
--setSeVolume( spep_2 + 66 - 12 , 1116, 10 );
--setSeVolume( spep_2 + 68 - 12 , 1116, 0 );
stopSe( spep_2 + 49 - 12, SE02, 19 );

--ジャンプ3
SE03 = playSe( spep_2 + 26 - 12 , 1207 );
setSeVolume( spep_2 + 26 - 12 , 1207, 37 );
--setSeVolume( spep_2 + 66 - 12 , 1207, 37 );
--setSeVolume( spep_2 + 69 - 12 , 1207, 33 );
--setSeVolume( spep_2 + 72 - 12 , 1207, 30 );
--setSeVolume( spep_2 + 75 - 12 , 1207, 24 );
--setSeVolume( spep_2 + 78 - 12 , 1207, 18 );
--setSeVolume( spep_2 + 81 - 12 , 1207, 12 );
--setSeVolume( spep_2 + 84 - 12 , 1207, 6 );
--setSeVolume( spep_2 + 88 - 12 , 1207, 0 );
stopSe( spep_2 + 66 - 12 , SE03, 22 );

--ジャンプ4
SE04 = playSe( spep_2 + 32 - 12 , 44 );


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 46, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 46;


------------------------------------------------------
-- 一回転して切る ef_003(44F)
------------------------------------------------------

-- ** エフェクト等 ** --
spin = entryEffectLife( spep_3 + 0, SP_03, 44, 0x100, -1, 0, 0, 0 );  --一回転して切る(ef_003)
setEffMoveKey( spep_3 + 0, spin, 0, 0 , 0 );
setEffMoveKey( spep_3 + 44, spin, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, spin, 1.0, 1.0 );
setEffScaleKey( spep_3 + 44, spin, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, spin, 0 );
setEffRotateKey( spep_3 + 44, spin, 0 );
setEffAlphaKey( spep_3 + 0, spin, 255 );
setEffAlphaKey( spep_3 + 44, spin, 255 );

-- ** 音 ** --
--くるりん1
--SE05 = playSe( spep_3 + 32 - 12, 1117 );
SE05 = playSe( spep_3 + 20 - 8, 1117 );

--くるりん2
--SE06 = playSe( spep_3 + 32 - 12, 1003 );
SE06 = playSe( spep_3 + 20 - 8, 1003 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 46, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 36 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE00, 0);
    stopSe( SP_dodge - 12, SE01, 0);
    stopSe( SP_dodge - 12, SE02, 0);
    stopSe( SP_dodge - 12, SE03, 0);
    stopSe( SP_dodge - 12, SE04, 0);
    stopSe( SP_dodge - 12, SE05, 0);
    stopSe( SP_dodge - 12, SE06, 0);
   
    pauseAll( SP_dodge, 67);
    
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

-- ** 次の準備 ** --
spep_4 = spep_3 + 44;


------------------------------------------------------
-- 青の斬撃(76F)
------------------------------------------------------

-- ** エフェクト等 ** --
slash_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --青の斬撃_敵より前(ef_004_front)
setEffMoveKey( spep_4 + 0, slash_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 28, slash_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, slash_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 28, slash_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, slash_f, 0 );
setEffRotateKey( spep_4 + 28, slash_f, 0 );
setEffAlphaKey( spep_4 + 0, slash_f, 255 );
setEffAlphaKey( spep_4 + 28, slash_f, 255 );

slash_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --青の斬撃_敵より奥(ef_004_back)
setEffMoveKey( spep_4 + 0, slash_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, slash_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, slash_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, slash_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, slash_b, 0 );
setEffRotateKey( spep_4 + 76, slash_b, 0 );
setEffAlphaKey( spep_4 + 0, slash_b, 255 );
setEffAlphaKey( spep_4 + 76, slash_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 +29  + 0, 1, 1 );
setDisp( spep_4 +68  + 0, 1, 0 );
changeAnime( spep_4 +29  + 0, 1, 107 );

setMoveKey( spep_4 +29  + 0, 1, 10.2, -65 , 0 );
setMoveKey( spep_4 +29  + 2, 1, -25.2, -140 , 0 );
setMoveKey( spep_4 +29  + 4, 1, -40.2, -83 , 0 );
setMoveKey( spep_4 +29  + 6, 1, 30.2, -120 , 0 );
setMoveKey( spep_4 +29  + 8, 1, 0.2, -100 , 0 );
setMoveKey( spep_4 +29  + 10, 1, 2.3, -104.1 , 0 );
setMoveKey( spep_4 +29  + 12, 1, 5.2, -109.7 , 0 );
setMoveKey( spep_4 +29  + 14, 1, 8.9, -115.3 , 0 );
setMoveKey( spep_4 +29  + 16, 1, 10.8, -120.5 , 0 );
setMoveKey( spep_4 +29  + 18, 1, 14,  -126.7 , 0 );
setMoveKey( spep_4 +29  + 20, 1, 17.4, -132  , 0 );
setMoveKey( spep_4 +29  + 22, 1, 19.8, -137.4 , 0 );
setMoveKey( spep_4 +29  + 24, 1, 23.6, -142.9 , 0 );
setMoveKey( spep_4 +29  + 26, 1, 26.9, -147.5 , 0 );
setMoveKey( spep_4 +29  + 28, 1, 32.7, -154.2 , 0 );
setMoveKey( spep_4 +29  + 30, 1, 36.4, -160.2 , 0 );
setMoveKey( spep_4 +29  + 32, 1, 50.8, -177.9 , 0 );
setMoveKey( spep_4 +29  + 34, 1, 80.6, -207.2 , 0 );
setMoveKey( spep_4 +29  + 36, 1, 177.2, -343.9 , 0 );
setMoveKey( spep_4 +29  + 38, 1, 618.9, -820.9 , 0 );
setMoveKey( spep_4 +29  + 39, 1, 618.9, -820.9 , 0 );


setScaleKey( spep_4 +29  + 0, 1, 1.255, 1.255 );
setScaleKey( spep_4 +29  + 8, 1, 1.255, 1.255 );
setScaleKey( spep_4 +29  + 10, 1, 1.27, 1.27 );
setScaleKey( spep_4 +29  + 12, 1, 1.29, 1.29 );
setScaleKey( spep_4 +29  + 14, 1, 1.31, 1.31 );
setScaleKey( spep_4 +29  + 16, 1, 1.33, 1.33 );
setScaleKey( spep_4 +29  + 18, 1, 1.35, 1.35 );
setScaleKey( spep_4 +29  + 20, 1, 1.37, 1.37 );
setScaleKey( spep_4 +29  + 22, 1, 1.39, 1.39 );
setScaleKey( spep_4 +29  + 24, 1, 1.41, 1.41 );
setScaleKey( spep_4 +29  + 26, 1, 1.43, 1.43 );
setScaleKey( spep_4 +29  + 28, 1, 1.46, 1.46 );
setScaleKey( spep_4 +29  + 30, 1, 1.48, 1.48 );
setScaleKey( spep_4 +29  + 32, 1, 1.53, 1.53 );
setScaleKey( spep_4 +29  + 34, 1, 1.68, 1.68 );
setScaleKey( spep_4 +29  + 36, 1, 2.25, 2.25 );
setScaleKey( spep_4 +29  + 38, 1, 4.64, 4.64 );
setScaleKey( spep_4 +29  + 39, 1, 4.64, 4.64 );


setRotateKey( spep_4 +29  + 0, 1, -39 );
setRotateKey( spep_4 +29  + 36, 1, -39 );
setRotateKey( spep_4 +29  + 38, 1, -30 );
setRotateKey( spep_4 +29  + 39, 1, -30 );

-- ** 音 ** --
--剣撃1
playSe( spep_4 + 10 - 12, 1143 );
setSeVolume( spep_4 + 22 - 12, 1143, 60 );

--剣撃2
playSe( spep_4 + 14 - 12, 1032 );

--剣撃3
playSe( spep_4 + 18 - 12, 1142 );
setSeVolume( spep_4 + 30 - 12, 1142, 61 );

--敵飛んでいく1
SE07 = playSe( spep_4 + 68 - 12, 1183 );
setSeVolume( spep_4 + 68 - 12, 1183, 78 );
stopSe( spep_4 + 116 - 12, SE07, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 76;

------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 100, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 100, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 100, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 100, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_5 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_5 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 105 );
setRotateKey( spep_5 -3 + 4, 1, 240 );
setRotateKey( spep_5 -3 + 6, 1, 405 );
setRotateKey( spep_5 -3 + 8, 1, 600 );
setRotateKey( spep_5 -3 + 10, 1, 825 );
setRotateKey( spep_5 -3 + 12, 1, 1080 );
setRotateKey( spep_5 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_wh, 0 );

--[[shuchusen_bl = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_5 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen_bl, 255 );]]

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 音 ** --
--敵が吹っ飛ぶ
--stopSe( spep_5 + 16, SE5, 0 );
--stopSe( spep_5 + 16, SE6, 0 );

--敵飛んでいく2
playSe( spep_5 + 2, 1232 );
setSeVolume( spep_5 + 2, 1232, 43 );

--ガッ
playSe( spep_5 + 8, 1054 );
setSeVolume( spep_5 + 8, 1054, 126 );


-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 98 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 悟飯登場、カットインまで(158F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 146, 0x100, -1, 0, 0, 0 );  --立ち〜背中パンチ(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 146, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 146, first_f, 255 );

spep_x = spep_0 + 58;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 13,  190006, 71, 0x100, -1, 0, 200, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 13, ctgogo, 71, 10 );
setEffMoveKey( spep_x + 13, ctgogo, 200, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 200, 515.5 , 0 );
setEffScaleKey( spep_x + 13, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 13, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--剣ドシン1
playSe( spep_0 + 12, 1003 );

--剣ドシン2
SE00 = playSe( spep_0 + 18, 1061 );
--setSeVolume( spep_0 + 34, 1061, 100 );
--setSeVolume( spep_0 + 38, 1061, 80 );
--setSeVolume( spep_0 + 42, 1061, 60 );
--setSeVolume( spep_0 + 46, 1061, 55 );
--setSeVolume( spep_0 + 50, 1061, 50 );
--setSeVolume( spep_0 + 54, 1061, 40 );
--setSeVolume( spep_0 + 58, 1061, 20 );
--setSeVolume( spep_0 + 62, 1061, 10 );
--setSeVolume( spep_0 + 66, 1061, 0 );
stopSe( spep_0 + 34, SE00, 32 );

--カメラ遷移
playSe( spep_0 + 44, 8 );
setSeVolume( spep_0 + 44, 8, 56 );

--顔カットイン
--playSe( spep_0 + 70, 1018 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 146, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 136, 8, 3, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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
-- 敵に向かってジャンプ、フレームアウト(46F)
------------------------------------------------------

-- ** エフェクト等 ** --
jump = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --敵に向かってジャンプ、フレームアウト(ef_002)
setEffMoveKey( spep_2 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, jump, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, jump, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, jump, 0 );
setEffRotateKey( spep_2 + 46, jump, 0 );
setEffAlphaKey( spep_2 + 0, jump, 255 );
setEffAlphaKey( spep_2 + 46, jump, 255 );

-- ** 音 ** --
--ジャンプ1
SE01 = playSe( spep_2 + 26 - 12 , 1109 );
setSeVolume( spep_2 + 26 - 12 , 1109, 83 );
--setSeVolume( spep_2 + 39 - 12 , 1109, 83 );
--setSeVolume( spep_2 + 40 - 12 , 1109, 62 );
--setSeVolume( spep_2 + 43 - 12 , 1109, 41 );
--setSeVolume( spep_2 + 46 - 12 , 1109, 29 );
--setSeVolume( spep_2 + 49 - 12 , 1109, 16 );
--setSeVolume( spep_2 + 52 - 12 , 1109, 8 );
--setSeVolume( spep_2 + 54 - 12 , 1109, 0 );
stopSe( spep_2 + 39 - 12, SE01, 15 );

--ジャンプ2
SE02 = playSe( spep_2 + 26 - 12, 1116 );
--setSeVolume( spep_2 + 49 - 12 , 1116, 100 );
--setSeVolume( spep_2 + 50 - 12 , 1116, 90 );
--setSeVolume( spep_2 + 52 - 12 , 1116, 80 );
--setSeVolume( spep_2 + 54 - 12 , 1116, 70 );
--setSeVolume( spep_2 + 56 - 12 , 1116, 60 );
--setSeVolume( spep_2 + 58 - 12 , 1116, 50 );
--setSeVolume( spep_2 + 60 - 12 , 1116, 40 );
--setSeVolume( spep_2 + 62 - 12 , 1116, 30 );
--setSeVolume( spep_2 + 64 - 12 , 1116, 20 );
--setSeVolume( spep_2 + 66 - 12 , 1116, 10 );
--setSeVolume( spep_2 + 68 - 12 , 1116, 0 );
stopSe( spep_2 + 49 - 12, SE02, 19 );

--ジャンプ3
SE03 = playSe( spep_2 + 26 - 12 , 1207 );
setSeVolume( spep_2 + 26 - 12 , 1207, 37 );
--setSeVolume( spep_2 + 66 - 12 , 1207, 37 );
--setSeVolume( spep_2 + 69 - 12 , 1207, 33 );
--setSeVolume( spep_2 + 72 - 12 , 1207, 30 );
--setSeVolume( spep_2 + 75 - 12 , 1207, 24 );
--setSeVolume( spep_2 + 78 - 12 , 1207, 18 );
--setSeVolume( spep_2 + 81 - 12 , 1207, 12 );
--setSeVolume( spep_2 + 84 - 12 , 1207, 6 );
--setSeVolume( spep_2 + 88 - 12 , 1207, 0 );
stopSe( spep_2 + 66 - 12 , SE03, 22 );

--ジャンプ4
SE04 = playSe( spep_2 + 32 - 12 , 44 );


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 46, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 46;


------------------------------------------------------
-- 一回転して切る ef_003(44F)
------------------------------------------------------

-- ** エフェクト等 ** --
spin = entryEffectLife( spep_3 + 0, SP_03r, 44, 0x100, -1, 0, 0, 0 );  --一回転して切る(ef_003)
setEffMoveKey( spep_3 + 0, spin, 0, 0 , 0 );
setEffMoveKey( spep_3 + 44, spin, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, spin, 1.0, 1.0 );
setEffScaleKey( spep_3 + 44, spin, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, spin, 0 );
setEffRotateKey( spep_3 + 44, spin, 0 );
setEffAlphaKey( spep_3 + 0, spin, 255 );
setEffAlphaKey( spep_3 + 44, spin, 255 );

-- ** 音 ** --
--くるりん1
--SE05 = playSe( spep_3 + 32 - 12, 1117 );
SE05 = playSe( spep_3 + 20 - 8, 1117 );

--くるりん2
--SE06 = playSe( spep_3 + 32 - 12, 1003 );
SE06 = playSe( spep_3 + 20 - 8, 1003 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 46, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 36 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE00, 0);
    stopSe( SP_dodge - 12, SE01, 0);
    stopSe( SP_dodge - 12, SE02, 0);
    stopSe( SP_dodge - 12, SE03, 0);
    stopSe( SP_dodge - 12, SE04, 0);
    stopSe( SP_dodge - 12, SE05, 0);
    stopSe( SP_dodge - 12, SE06, 0);
   
    pauseAll( SP_dodge, 67);
    
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

-- ** 次の準備 ** --
spep_4 = spep_3 + 44;


------------------------------------------------------
-- 青の斬撃(76F)
------------------------------------------------------

-- ** エフェクト等 ** --
slash_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --青の斬撃_敵より前(ef_004_front)
setEffMoveKey( spep_4 + 0, slash_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 28, slash_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, slash_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 28, slash_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, slash_f, 0 );
setEffRotateKey( spep_4 + 28, slash_f, 0 );
setEffAlphaKey( spep_4 + 0, slash_f, 255 );
setEffAlphaKey( spep_4 + 28, slash_f, 255 );

slash_b = entryEffect( spep_4 + 0, SP_05r, 0x80, -1, 0, 0, 0 );  --青の斬撃_敵より奥(ef_004_back)
setEffMoveKey( spep_4 + 0, slash_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, slash_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, slash_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, slash_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, slash_b, 0 );
setEffRotateKey( spep_4 + 76, slash_b, 0 );
setEffAlphaKey( spep_4 + 0, slash_b, 255 );
setEffAlphaKey( spep_4 + 76, slash_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 +29  + 0, 1, 1 );
setDisp( spep_4 +68  + 0, 1, 0 );
changeAnime( spep_4 +29  + 0, 1, 107 );

setMoveKey( spep_4 +29  + 0, 1, 10.2, -65 , 0 );
setMoveKey( spep_4 +29  + 2, 1, -25.2, -140 , 0 );
setMoveKey( spep_4 +29  + 4, 1, -40.2, -83 , 0 );
setMoveKey( spep_4 +29  + 6, 1, 30.2, -120 , 0 );
setMoveKey( spep_4 +29  + 8, 1, 0.2, -100 , 0 );
setMoveKey( spep_4 +29  + 10, 1, 2.3, -104.1 , 0 );
setMoveKey( spep_4 +29  + 12, 1, 5.2, -109.7 , 0 );
setMoveKey( spep_4 +29  + 14, 1, 8.9, -115.3 , 0 );
setMoveKey( spep_4 +29  + 16, 1, 10.8, -120.5 , 0 );
setMoveKey( spep_4 +29  + 18, 1, 14,  -126.7 , 0 );
setMoveKey( spep_4 +29  + 20, 1, 17.4, -132  , 0 );
setMoveKey( spep_4 +29  + 22, 1, 19.8, -137.4 , 0 );
setMoveKey( spep_4 +29  + 24, 1, 23.6, -142.9 , 0 );
setMoveKey( spep_4 +29  + 26, 1, 26.9, -147.5 , 0 );
setMoveKey( spep_4 +29  + 28, 1, 32.7, -154.2 , 0 );
setMoveKey( spep_4 +29  + 30, 1, 36.4, -160.2 , 0 );
setMoveKey( spep_4 +29  + 32, 1, 50.8, -177.9 , 0 );
setMoveKey( spep_4 +29  + 34, 1, 80.6, -207.2 , 0 );
setMoveKey( spep_4 +29  + 36, 1, 177.2, -343.9 , 0 );
setMoveKey( spep_4 +29  + 38, 1, 618.9, -820.9 , 0 );
setMoveKey( spep_4 +29  + 39, 1, 618.9, -820.9 , 0 );


setScaleKey( spep_4 +29  + 0, 1, 1.255, 1.255 );
setScaleKey( spep_4 +29  + 8, 1, 1.255, 1.255 );
setScaleKey( spep_4 +29  + 10, 1, 1.27, 1.27 );
setScaleKey( spep_4 +29  + 12, 1, 1.29, 1.29 );
setScaleKey( spep_4 +29  + 14, 1, 1.31, 1.31 );
setScaleKey( spep_4 +29  + 16, 1, 1.33, 1.33 );
setScaleKey( spep_4 +29  + 18, 1, 1.35, 1.35 );
setScaleKey( spep_4 +29  + 20, 1, 1.37, 1.37 );
setScaleKey( spep_4 +29  + 22, 1, 1.39, 1.39 );
setScaleKey( spep_4 +29  + 24, 1, 1.41, 1.41 );
setScaleKey( spep_4 +29  + 26, 1, 1.43, 1.43 );
setScaleKey( spep_4 +29  + 28, 1, 1.46, 1.46 );
setScaleKey( spep_4 +29  + 30, 1, 1.48, 1.48 );
setScaleKey( spep_4 +29  + 32, 1, 1.53, 1.53 );
setScaleKey( spep_4 +29  + 34, 1, 1.68, 1.68 );
setScaleKey( spep_4 +29  + 36, 1, 2.25, 2.25 );
setScaleKey( spep_4 +29  + 38, 1, 4.64, 4.64 );
setScaleKey( spep_4 +29  + 39, 1, 4.64, 4.64 );


setRotateKey( spep_4 +29  + 0, 1, -39 );
setRotateKey( spep_4 +29  + 36, 1, -39 );
setRotateKey( spep_4 +29  + 38, 1, -30 );
setRotateKey( spep_4 +29  + 39, 1, -30 );

-- ** 音 ** --
--剣撃1
playSe( spep_4 + 10 - 12, 1143 );
setSeVolume( spep_4 + 22 - 12, 1143, 60 );

--剣撃2
playSe( spep_4 + 14 - 12, 1032 );

--剣撃3
playSe( spep_4 + 18 - 12, 1142 );
setSeVolume( spep_4 + 30 - 12, 1142, 61 );

--敵飛んでいく1
SE07 = playSe( spep_4 + 68 - 12, 1183 );
setSeVolume( spep_4 + 68 - 12, 1183, 78 );
stopSe( spep_4 + 116 - 12, SE07, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 76;

------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 100, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 100, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 100, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 100, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_5 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_5 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, 105 );
setRotateKey( spep_5 -3 + 4, 1, 240 );
setRotateKey( spep_5 -3 + 6, 1, 405 );
setRotateKey( spep_5 -3 + 8, 1, 600 );
setRotateKey( spep_5 -3 + 10, 1, 825 );
setRotateKey( spep_5 -3 + 12, 1, 1080 );
setRotateKey( spep_5 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_wh, 0 );

--[[shuchusen_bl = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_5 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen_bl, 255 );]]

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 音 ** --
--敵が吹っ飛ぶ
--stopSe( spep_5 + 16, SE5, 0 );
--stopSe( spep_5 + 16, SE6, 0 );

--敵飛んでいく2
playSe( spep_5 + 2, 1232 );
setSeVolume( spep_5 + 2, 1232, 43 );

--ガッ
playSe( spep_5 + 8, 1054 );
setSeVolume( spep_5 + 8, 1054, 126 );


-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 98 );


end