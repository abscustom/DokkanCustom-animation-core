--1023000:ザーボン&ドドリア_ティザーバイオレンス_sp2259
--sp_effect_b1_00161

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
SP_01 = 158020;	--二人並んでいる～セリフカットイン	ef_001
SP_02 = 158021;	--ザーボン瞬間移動	ef_002_front
SP_03 = 158022;	--ザーボン瞬間移動	ef_002_back
SP_04 = 158025;	--ザーボンのキック	ef_003_front
SP_05 = 158026;	--ザーボンのキック	ef_003_back
SP_06 = 158029;	--敵が崖に吹き飛んでいく	ef_004
SP_07 = 158030;	--ドドリアの突進	ef_005
SP_08 = 158031;	--激突～フィニッシュ	ef_006_front
SP_09 = 158032;	--激突～フィニッシュ	ef_006_back

--敵側
SP_02r = 158023;	--ザーボン瞬間移動（敵側）	ef_002_r_front
SP_03r = 158024;	--ザーボン瞬間移動（敵側）	ef_002_r_back
SP_04r = 158027;	--ザーボンのキック（敵側）	ef_003_r_front
SP_05r = 158028;	--ザーボンのキック（敵側）	ef_003_r_back
SP_08r = 158033;	--激突～フィニッシュ（敵側）	ef_006_r_front
SP_09r = 158034;	--激突～フィニッシュ（敵側）	ef_006_r_back

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
-- 二人並んでいる～セリフカットイン(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 116, 0x100, -1, 0, 0, 0 );  --二人並んでいる～セリフカットイン	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

spep_x = spep_0 + 32;
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
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--構える
SE002 = playSeVer2( spep_0 + 32, 1006, "", 0, 0, 0, -1);
setPitch( spep_0 + 32, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );

--顔カットイン
SE003 = playSeVer2( spep_0 + 38, 1018, "", 0, 0, 0, -1);

--髪なびかせる
SE004 = playSeVer2( spep_0 + 48, 1005, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
--[[
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
]]
--極限対応
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    
    shuchusen = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線
    
    setEffMoveKey(  spep_1,  shuchusen,  0,  0);
    setEffScaleKey(  spep_1,  shuchusen,  1.0,  1.0);
    setEffRotateKey(  spep_1,  shuchusen,  0);
    setEffAlphaKey(  spep_1,  shuchusen,  255);
    setEffMoveKey(  spep_1+90,  shuchusen,  0,  0);
    setEffScaleKey(  spep_1+90,  shuchusen,  1.0,  1.0);
    setEffRotateKey(  spep_1+90,  shuchusen,  0);
    setEffAlphaKey(  spep_1+90,  shuchusen,  255);

--瞬間移動
SE006 = playSeVer2( spep_1 + 88, 1109, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- ザーボン瞬間移動(60F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
zmove_f = entryEffectLife( spep_2 + 0, SP_02, 60, 0x100, -1, 0, 0, 0 );  --ザーボン瞬間移動	ef_002_front
setEffMoveKey( spep_2 + 0, zmove_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, zmove_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, zmove_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, zmove_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, zmove_f, 0 );
setEffRotateKey( spep_2 + 60, zmove_f, 0 );
setEffAlphaKey( spep_2 + 0, zmove_f, 255 );
setEffAlphaKey( spep_2 + 60 -1, zmove_f, 255 );
setEffAlphaKey( spep_2 + 60, zmove_f, 0 );

zmove_b = entryEffectLife( spep_2 + 0, SP_03, 60, 0x80, -1, 0, 0, 0 );  --ザーボン瞬間移動	ef_002_back
setEffMoveKey( spep_2 + 0, zmove_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, zmove_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, zmove_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, zmove_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, zmove_b, 0 );
setEffRotateKey( spep_2 + 60, zmove_b, 0 );
setEffAlphaKey( spep_2 + 0, zmove_b, 255 );
setEffAlphaKey( spep_2 + 60 -1, zmove_b, 255 );
setEffAlphaKey( spep_2 + 60, zmove_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 26, 1, 1 );
setDisp( spep_2 -3 + 63, 1, 0 );
changeAnime( spep_2 -3 + 26, 1, 117 );

setMoveKey( spep_2 -3 + 26, 1, -20, -92.1 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -20.7, -95.6 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -21.5, -99.2 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -22.3, -102.8 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -23.1, -106.3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -23.1, -106.6 , 0 );

setScaleKey( spep_2 -3 + 26, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 28, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 30, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 32, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 34, 1, 1.99, 1.99 );
setScaleKey( spep_2 -3 + 36, 1, 1.99, 1.99 );

setRotateKey( spep_2 -3 + 26, 1, 0 );

-- ** 音 ** --
--ザーボン回り込む
SE007 = playSeVer2( spep_2 + 14, 1116, "",spep_2 + 54, 0, 18, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 60 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 34 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -23.1, -106.6 , 0 );
    setMoveKey( SP_dodge + 2, 1, -23.2, -106.9 , 0 );
    setMoveKey( SP_dodge + 4, 1, -23.2, -107.2 , 0 );
    setMoveKey( SP_dodge + 6, 1, -23.3, -107.5 , 0 );
    setMoveKey( SP_dodge + 8, 1, -23.4, -107.8 , 0 );
    setMoveKey( SP_dodge + 10, 1, -23.4, -108.1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.99, 1.99 );
    setScaleKey( SP_dodge + 2, 1, 2, 2 );
    setScaleKey( SP_dodge + 4, 1, 2, 2 );
    setScaleKey( SP_dodge + 6, 1, 2.01, 2.01 );
    setScaleKey( SP_dodge + 8, 1, 2.01, 2.01 );
    setScaleKey( SP_dodge + 10, 1, 2.02, 2.02 );

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

setMoveKey( spep_2 -3 + 38, 1, -23.2, -106.9 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -23.2, -107.2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -23.3, -107.5 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -23.4, -107.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -23.4, -108.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -23.5, -108.4 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -23.6, -108.7 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -23.6, -109 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -23.7, -109.3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -23.8, -109.6 , 0 );
setMoveKey( spep_2 -3 + 57, 1, -23.8, -109.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -31.9, -146.7 , 0 );
setMoveKey( spep_2 -3 + 59, 1, -31.9, -146.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -40, -183.8 , 0 );
setMoveKey( spep_2 -3 + 61, 1, -40, -183.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -48.1, -220.9 , 0 );
setMoveKey( spep_2 -3 + 63, 1, -48.1, -220.9 , 0 );

setScaleKey( spep_2 -3 + 38, 1, 2, 2 );
setScaleKey( spep_2 -3 + 40, 1, 2, 2 );
setScaleKey( spep_2 -3 + 42, 1, 2.01, 2.01 );
setScaleKey( spep_2 -3 + 44, 1, 2.01, 2.01 );
setScaleKey( spep_2 -3 + 46, 1, 2.02, 2.02 );
setScaleKey( spep_2 -3 + 48, 1, 2.02, 2.02 );
setScaleKey( spep_2 -3 + 50, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 52, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 54, 1, 2.04, 2.04 );
setScaleKey( spep_2 -3 + 56, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 57, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 58, 1, 2.74, 2.74 );
setScaleKey( spep_2 -3 + 59, 1, 2.74, 2.74 );
setScaleKey( spep_2 -3 + 60, 1, 3.43, 3.43 );
setScaleKey( spep_2 -3 + 61, 1, 3.43, 3.43 );
setScaleKey( spep_2 -3 + 62, 1, 4.13, 4.13 );
setScaleKey( spep_2 -3 + 63, 1, 4.13, 4.13 );

setRotateKey( spep_2 -3 + 63, 1, 0 );

-- ** 音 ** --
--振りかぶる
SE008 = playSeVer2( spep_2 + 48, 1004, "", 0, 0, 0, -1);

--振りかぶる
SE009 = playSeVer2( spep_2 + 52, 9, "",spep_2 +60 + 36, 0, 8, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 60;


------------------------------------------------------
-- ザーボンのキック(102F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
zkick_f = entryEffectLife( spep_3 + 0, SP_04, 101, 0x100, -1, 0, 0, 0 );  --ザーボンのキック	ef_003_front
setEffMoveKey( spep_3 + 0, zkick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 101, zkick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, zkick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 101, zkick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, zkick_f, 0 );
setEffRotateKey( spep_3 + 101, zkick_f, 0 );
setEffAlphaKey( spep_3 + 0, zkick_f, 255 );
setEffAlphaKey( spep_3 + 101 -1, zkick_f, 255 );
setEffAlphaKey( spep_3 + 101, zkick_f, 0 );

zkick_b = entryEffectLife( spep_3 + 0, SP_05, 101, 0x80, -1, 0, 0, 0 );  --ザーボンのキック	ef_003_back
setEffMoveKey( spep_3 + 0, zkick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 101, zkick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, zkick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 101, zkick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, zkick_b, 0 );
setEffRotateKey( spep_3 + 101, zkick_b, 0 );
setEffAlphaKey( spep_3 + 0, zkick_b, 255 );
setEffAlphaKey( spep_3 + 101 -1, zkick_b, 255 );
setEffAlphaKey( spep_3 + 101, zkick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 44, 1, 1 );
setDisp( spep_3 -3 + 78, 1, 0 );
changeAnime( spep_3 -3 + 44, 1, 106 );

setMoveKey( spep_3 -3 + 44, 1, -107.9, -246.6 , 0 );
setMoveKey( spep_3 -3 + 45, 1, -107.9, -246.6 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -47.7, -169.3 , 0 );
setMoveKey( spep_3 -3 + 47, 1, -47.7, -169.3 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 12.5, -95.5 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 98.6, -20.6 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 59.1, -47.6 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 84.5, -14.7 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 44, -10 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 93.4, -43.5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 63.8, -9 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 95.3, -33.8 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 61.7, -14.6 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 64.9, -40.6 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 278.3, 29.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 515.4, 9.6 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 721.4, 13.6 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 837.5, 13.6 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 878, 13.6 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 878, 13.6 , 0 );

setScaleKey( spep_3 -3 + 44, 1, 7.03, 7.03 );
setScaleKey( spep_3 -3 + 45, 1, 7.03, 7.03 );
setScaleKey( spep_3 -3 + 46, 1, 5.24, 5.24 );
setScaleKey( spep_3 -3 + 47, 1, 5.24, 5.24 );
setScaleKey( spep_3 -3 + 48, 1, 3.49, 3.49 );
setScaleKey( spep_3 -3 + 50, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 56, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 58, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 60, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 62, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 64, 1, 1.79, 1.79 );
setScaleKey( spep_3 -3 + 66, 1, 1.79, 1.79 );
setScaleKey( spep_3 -3 + 68, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 70, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 72, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 74, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 76, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 78, 1, 1.82, 1.82 );

setRotateKey( spep_3 -3 + 44, 1, -34.7 );
setRotateKey( spep_3 -3 + 66, 1, -34.7 );
setRotateKey( spep_3 -3 + 68, 1, 22.8 );
setRotateKey( spep_3 -3 + 78, 1, 22.8 );

-- ** 音 ** --
--キック
SE010 = playSeVer2( spep_3 + 28, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 28, SE010, 92 );

--キック
SE011 = playSeVer2( spep_3 + 28, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 28, SE011, 91 );

--敵飛んでいく
SE012 = playSeVer2( spep_3 + 56, 1183, "",spep_3 +102 +32 + 48, 0, 54, -1);

--敵飛んでいく
SE013 = playSeVer2( spep_3 + 56, 1121, "",spep_3 +102 +32 + 48, 0, 54, -1);
setSeVolumeByWorkId( spep_3 + 56, SE013, 48 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 102 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 101;


------------------------------------------------------
-- 敵が崖に吹き飛んでいく(32F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
emove = entryEffectLife( spep_4 + 0, SP_06, 32, 0x80, -1, 0, 0, 0 );  --敵が崖に吹き飛んでいく	ef_004
setEffMoveKey( spep_4 + 0, emove, 0, 0 , 0 );
setEffMoveKey( spep_4 + 32, emove, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, emove, 1.0, 1.0 );
setEffScaleKey( spep_4 + 32, emove, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, emove, 0 );
setEffRotateKey( spep_4 + 32, emove, 0 );
setEffAlphaKey( spep_4 + 0, emove, 255 );
setEffAlphaKey( spep_4 + 32 -1, emove, 255 );
setEffAlphaKey( spep_4 + 32, emove, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 35, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, -1202, -99.7 , 0 );
setMoveKey( spep_4 + 1, 1, -1014.7, -89.2 , 0 );
setMoveKey( spep_4 + 2, 1, -734.2, -78.8 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -403.8, -68.3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -289.7, -74.2 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -237.9, -88.9 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -189.5, -102.5 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -144.6, -115.1 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -103.1, -126.5 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -64.8, -136.9 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -29.7, -146.3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 2.3, -154.8 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 31.2, -162.2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 57.2, -168.7 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 80.3, -174.3 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 100.7, -179 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 118.3, -182.8 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 133.3, -185.9 , 0 );
setMoveKey( spep_4 -3 + 35, 1, 133.3, -185.9 , 0 );

setScaleKey( spep_4 + 0, 1, 10.49, 10.49 );
setScaleKey( spep_4 + 1, 1, 8.86, 8.86 );
setScaleKey( spep_4 + 2, 1, 6.44, 6.44 );
setScaleKey( spep_4 -3 + 6, 1, 3.59, 3.59 );
setScaleKey( spep_4 -3 + 8, 1, 2.84, 2.84 );
setScaleKey( spep_4 -3 + 10, 1, 2.62, 2.62 );
setScaleKey( spep_4 -3 + 12, 1, 2.42, 2.42 );
setScaleKey( spep_4 -3 + 14, 1, 2.24, 2.24 );
setScaleKey( spep_4 -3 + 16, 1, 2.06, 2.06 );
setScaleKey( spep_4 -3 + 18, 1, 1.9, 1.9 );
setScaleKey( spep_4 -3 + 20, 1, 1.74, 1.74 );
setScaleKey( spep_4 -3 + 22, 1, 1.61, 1.61 );
setScaleKey( spep_4 -3 + 24, 1, 1.48, 1.48 );
setScaleKey( spep_4 -3 + 26, 1, 1.36, 1.36 );
setScaleKey( spep_4 -3 + 28, 1, 1.25, 1.25 );
setScaleKey( spep_4 -3 + 30, 1, 1.16, 1.16 );
setScaleKey( spep_4 -3 + 32, 1, 1.07, 1.07 );
setScaleKey( spep_4 -3 + 34, 1, 1, 1 );
setScaleKey( spep_4 -3 + 35, 1, 1, 1 );

setRotateKey( spep_4 + 0, 1, 77.5 );
setRotateKey( spep_4 -3 + 6, 1, 77.5 );
setRotateKey( spep_4 -3 + 8, 1, 77.6 );
setRotateKey( spep_4 -3 + 22, 1, 77.6 );
setRotateKey( spep_4 -3 + 24, 1, 77.7 );
setRotateKey( spep_4 -3 + 25, 1, 77.7 );

-- ** 音 ** --
--ドドリアズームアウト
SE014 = playSeVer2( spep_4 + 20, 1072, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 32 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 32;


------------------------------------------------------
-- ドドリアの突進(100F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
charge = entryEffectLife( spep_5 + 0, SP_07, 100, 0x100, -1, 0, 0, 0 );  --ドドリアの突進	ef_005
setEffMoveKey( spep_5 + 0, charge, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, charge, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, charge, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, charge, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, charge, 0 );
setEffRotateKey( spep_5 + 100, charge, 0 );
setEffAlphaKey( spep_5 + 0, charge, 255 );
setEffAlphaKey( spep_5 + 100 -1, charge, 255 );
setEffAlphaKey( spep_5 + 100, charge, 0 );

-- ** 音 ** --
--つっこんでくる
SE015 = playSeVer2( spep_5 + 28, 1182, "", 0, 0, 0, -1);

--つっこんでくる
SE016 = playSeVer2( spep_5 + 28, 9, "", 0, 0, 0, -1);

--つっこんでくる
SE017 = playSeVer2( spep_5 + 54, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 54, SE017, 39 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 100 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 100;


------------------------------------------------------
-- 激突～フィニッシュ(348F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffectLife( spep_6 + 0, SP_08, 348, 0x100, -1, 0, 0, 0 );  --激突～フィニッシュ	ef_006_front
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 348, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 348, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 348, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 348 -1, finish_f, 255 );
setEffAlphaKey( spep_6 + 348, finish_f, 0 );

finish_b = entryEffectLife( spep_6 + 0, SP_09, 348, 0x80, -1, 0, 0, 0 );  --激突～フィニッシュ	ef_006_back
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 348, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 348, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 348, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 348 -1, finish_b, 255 );
setEffAlphaKey( spep_6 + 348, finish_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 54, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );
changeAnime( spep_6 -3 + 18, 1, 108 );

setMoveKey( spep_6 + 0, 1, -312.8, -52.2 , 0 );
setMoveKey( spep_6 + 1, 1, -268.9, -43.7 , 0 );
setMoveKey( spep_6 + 2, 1, -223.8, -33.4 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -178.4, -22.4 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -133.5, -12.3 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -129.4, -6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -124.4, 1.8 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -118.6, 10.9 , 0 );
setMoveKey( spep_6 -3 + 17, 1, -111.8, 21.4 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 55.1, 37.8 , 0 );
setMoveKey( spep_6 -3 + 20, 1, -20.6, -30.1 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 42.2, 10.1 , 0 );
setMoveKey( spep_6 -3 + 24, 1, -28.3, 32.6 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 47.6, -22.8 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 46.2, 25.9 , 0 );
setMoveKey( spep_6 -3 + 30, 1, -26.7, -23.2 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 45, 33.9 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 23.2, 11.2 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 56.9, 23.9 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 91.1, 36.7 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 89, 41.1 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 86.7, 45.1 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 84.1, 48.8 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 81.3, 51.9 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 78.1, 54.7 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 74.7, 57.1 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 71, 59 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 67, 60.5 , 0 );
--setMoveKey( spep_6 -3 + 56, 1, 91.7, 87.5 , 0 );
--setMoveKey( spep_6 -3 + 58, 1, 47.7, 39.7 , 0 );
--setMoveKey( spep_6 -3 + 60, 1, 47.7, 39.7 , 0 );

setScaleKey( spep_6 + 0, 1, 5.02, 5.02 );
setScaleKey( spep_6 + 1, 1, 4.33, 4.33 );
setScaleKey( spep_6 + 2, 1, 3.62, 3.62 );
setScaleKey( spep_6 -3 + 6, 1, 2.91, 2.91 );
setScaleKey( spep_6 -3 + 8, 1, 2.2, 2.2 );
setScaleKey( spep_6 -3 + 10, 1, 2.17, 2.17 );
setScaleKey( spep_6 -3 + 12, 1, 2.13, 2.13 );
setScaleKey( spep_6 -3 + 14, 1, 2.09, 2.09 );
setScaleKey( spep_6 -3 + 17, 1, 2.03, 2.03 );
setScaleKey( spep_6 -3 + 18, 1, 2.26, 2.26 );
setScaleKey( spep_6 -3 + 20, 1, 2.25, 2.25 );
setScaleKey( spep_6 -3 + 22, 1, 2.25, 2.25 );
setScaleKey( spep_6 -3 + 24, 1, 2.24, 2.24 );
setScaleKey( spep_6 -3 + 26, 1, 2.23, 2.23 );
setScaleKey( spep_6 -3 + 28, 1, 2.21, 2.21 );
setScaleKey( spep_6 -3 + 30, 1, 2.19, 2.19 );
setScaleKey( spep_6 -3 + 32, 1, 2.17, 2.17 );
setScaleKey( spep_6 -3 + 34, 1, 2.14, 2.14 );
setScaleKey( spep_6 -3 + 36, 1, 1.83, 1.83 );
setScaleKey( spep_6 -3 + 38, 1, 1.52, 1.52 );
setScaleKey( spep_6 -3 + 40, 1, 1.39, 1.39 );
setScaleKey( spep_6 -3 + 42, 1, 1.27, 1.27 );
setScaleKey( spep_6 -3 + 44, 1, 1.17, 1.17 );
setScaleKey( spep_6 -3 + 46, 1, 1.08, 1.08 );
setScaleKey( spep_6 -3 + 48, 1, 1.01, 1.01 );
setScaleKey( spep_6 -3 + 50, 1, 0.95, 0.95 );
setScaleKey( spep_6 -3 + 52, 1, 0.9, 0.9 );
setScaleKey( spep_6 -3 + 54, 1, 0.87, 0.87 );
--setScaleKey( spep_6 -3 + 56, 1, 0.85, 0.85 );
--setScaleKey( spep_6 -3 + 60, 1, 0.85, 0.85 );

setRotateKey( spep_6 + 0, 1, -6.4 );
setRotateKey( spep_6 -3 + 17, 1, -6.4 );
setRotateKey( spep_6 -3 + 18, 1, -20.8 );
setRotateKey( spep_6 -3 + 54, 1, -20.8 );

-- ** 音 ** --
--ドドリア頭突き
SE018 = playSeVer2( spep_6 + 4, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 4, SE018, 75 );

--ドドリア頭突き
SE019 = playSeVer2( spep_6 + 8, 1000, "", 0, 0, 0, -1);

--ドドリア頭突き
SE020 = playSeVer2( spep_6 + 8, 1049, "",spep_6 + 64, 0, 30, -1);
setSeVolumeByWorkId( spep_6 + 8, SE020, 79 );

--ドドリア頭突き
SE021 = playSeVer2( spep_6 + 10, 1009, "", 0, 0, 0, -1);

--ドドリア頭突き
SE022 = playSeVer2( spep_6 + 12, 1110, "", 0, 0, 0, -1);

--壁激突
SE023 = playSeVer2( spep_6 + 48, 1159, "",spep_6 + 302, 0, 126, -1);
setSeVolumeByWorkId( spep_6 + 48, SE023, 85 );

--壁激突
SE024 = playSeVer2( spep_6 + 48, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 48, SE024, 79 );

--ドドリア頭突き
SE025 = playSeVer2( spep_6 + 54, 1060, "", 0, 0, 0, -1);

--ドドリア歩いてくる
SE026 = playSeVer2( spep_6 + 144, 1106, "", 0, 0, 0, -1);

--ドドリア歩いてくる
SE027 = playSeVer2( spep_6 + 172, 1108, "", 0, 0, 0, -1);

--ザーボン着地
SE028 = playSeVer2( spep_6 + 184, 44, "",spep_6 + 232, 0, 8, -1);

--ザーボン着地
SE029 = playSeVer2( spep_6 + 218, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 218, SE029, 127 );

--ザーボン着地
SE030 = playSeVer2( spep_6 + 220, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 220, SE030, 150 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 348 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 54 );
endPhase( spep_6 + 338 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 二人並んでいる～セリフカットイン(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 116, 0x100, -1, 0, 0, 0 );  --二人並んでいる～セリフカットイン	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

spep_x = spep_0 + 32;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--構える
SE002 = playSeVer2( spep_0 + 32, 1006, "", 0, 0, 0, -1);
setPitch( spep_0 + 32, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );

--顔カットイン
SE003 = playSeVer2( spep_0 + 38, 1018, "", 0, 0, 0, -1);

--髪なびかせる
SE004 = playSeVer2( spep_0 + 48, 1005, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
--[[
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
]]
--極限対応
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    
    shuchusen = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線
    
    setEffMoveKey(  spep_1,  shuchusen,  0,  0);
    setEffScaleKey(  spep_1,  shuchusen,  1.0,  1.0);
    setEffRotateKey(  spep_1,  shuchusen,  0);
    setEffAlphaKey(  spep_1,  shuchusen,  255);
    setEffMoveKey(  spep_1+90,  shuchusen,  0,  0);
    setEffScaleKey(  spep_1+90,  shuchusen,  1.0,  1.0);
    setEffRotateKey(  spep_1+90,  shuchusen,  0);
    setEffAlphaKey(  spep_1+90,  shuchusen,  255);

--瞬間移動
SE006 = playSeVer2( spep_1 + 88, 1109, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- ザーボン瞬間移動(60F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
zmove_f = entryEffectLife( spep_2 + 0, SP_02r, 60, 0x100, -1, 0, 0, 0 );  --ザーボン瞬間移動	ef_002_front
setEffMoveKey( spep_2 + 0, zmove_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, zmove_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, zmove_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, zmove_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, zmove_f, 0 );
setEffRotateKey( spep_2 + 60, zmove_f, 0 );
setEffAlphaKey( spep_2 + 0, zmove_f, 255 );
setEffAlphaKey( spep_2 + 60 -1, zmove_f, 255 );
setEffAlphaKey( spep_2 + 60, zmove_f, 0 );

zmove_b = entryEffectLife( spep_2 + 0, SP_03r, 60, 0x80, -1, 0, 0, 0 );  --ザーボン瞬間移動	ef_002_back
setEffMoveKey( spep_2 + 0, zmove_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, zmove_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, zmove_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, zmove_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, zmove_b, 0 );
setEffRotateKey( spep_2 + 60, zmove_b, 0 );
setEffAlphaKey( spep_2 + 0, zmove_b, 255 );
setEffAlphaKey( spep_2 + 60 -1, zmove_b, 255 );
setEffAlphaKey( spep_2 + 60, zmove_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 26, 1, 1 );
setDisp( spep_2 -3 + 63, 1, 0 );
changeAnime( spep_2 -3 + 26, 1, 117 );

setMoveKey( spep_2 -3 + 26, 1, -20, -92.1 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -20.7, -95.6 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -21.5, -99.2 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -22.3, -102.8 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -23.1, -106.3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -23.1, -106.6 , 0 );

setScaleKey( spep_2 -3 + 26, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 28, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 30, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 32, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 34, 1, 1.99, 1.99 );
setScaleKey( spep_2 -3 + 36, 1, 1.99, 1.99 );

setRotateKey( spep_2 -3 + 26, 1, 0 );

-- ** 音 ** --
--ザーボン回り込む
SE007 = playSeVer2( spep_2 + 14, 1116, "",spep_2 + 54, 0, 18, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 60 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 34 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -23.1, -106.6 , 0 );
    setMoveKey( SP_dodge + 2, 1, -23.2, -106.9 , 0 );
    setMoveKey( SP_dodge + 4, 1, -23.2, -107.2 , 0 );
    setMoveKey( SP_dodge + 6, 1, -23.3, -107.5 , 0 );
    setMoveKey( SP_dodge + 8, 1, -23.4, -107.8 , 0 );
    setMoveKey( SP_dodge + 10, 1, -23.4, -108.1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.99, 1.99 );
    setScaleKey( SP_dodge + 2, 1, 2, 2 );
    setScaleKey( SP_dodge + 4, 1, 2, 2 );
    setScaleKey( SP_dodge + 6, 1, 2.01, 2.01 );
    setScaleKey( SP_dodge + 8, 1, 2.01, 2.01 );
    setScaleKey( SP_dodge + 10, 1, 2.02, 2.02 );

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

setMoveKey( spep_2 -3 + 38, 1, -23.2, -106.9 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -23.2, -107.2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -23.3, -107.5 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -23.4, -107.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -23.4, -108.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -23.5, -108.4 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -23.6, -108.7 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -23.6, -109 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -23.7, -109.3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -23.8, -109.6 , 0 );
setMoveKey( spep_2 -3 + 57, 1, -23.8, -109.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -31.9, -146.7 , 0 );
setMoveKey( spep_2 -3 + 59, 1, -31.9, -146.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -40, -183.8 , 0 );
setMoveKey( spep_2 -3 + 61, 1, -40, -183.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -48.1, -220.9 , 0 );
setMoveKey( spep_2 -3 + 63, 1, -48.1, -220.9 , 0 );

setScaleKey( spep_2 -3 + 38, 1, 2, 2 );
setScaleKey( spep_2 -3 + 40, 1, 2, 2 );
setScaleKey( spep_2 -3 + 42, 1, 2.01, 2.01 );
setScaleKey( spep_2 -3 + 44, 1, 2.01, 2.01 );
setScaleKey( spep_2 -3 + 46, 1, 2.02, 2.02 );
setScaleKey( spep_2 -3 + 48, 1, 2.02, 2.02 );
setScaleKey( spep_2 -3 + 50, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 52, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 54, 1, 2.04, 2.04 );
setScaleKey( spep_2 -3 + 56, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 57, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 58, 1, 2.74, 2.74 );
setScaleKey( spep_2 -3 + 59, 1, 2.74, 2.74 );
setScaleKey( spep_2 -3 + 60, 1, 3.43, 3.43 );
setScaleKey( spep_2 -3 + 61, 1, 3.43, 3.43 );
setScaleKey( spep_2 -3 + 62, 1, 4.13, 4.13 );
setScaleKey( spep_2 -3 + 63, 1, 4.13, 4.13 );

setRotateKey( spep_2 -3 + 63, 1, 0 );

-- ** 音 ** --
--振りかぶる
SE008 = playSeVer2( spep_2 + 48, 1004, "", 0, 0, 0, -1);

--振りかぶる
SE009 = playSeVer2( spep_2 + 52, 9, "",spep_2 +60 + 36, 0, 8, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 60;


------------------------------------------------------
-- ザーボンのキック(102F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
zkick_f = entryEffectLife( spep_3 + 0, SP_04r, 101, 0x100, -1, 0, 0, 0 );  --ザーボンのキック    ef_003_front
setEffMoveKey( spep_3 + 0, zkick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 101, zkick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, zkick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 101, zkick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, zkick_f, 0 );
setEffRotateKey( spep_3 + 101, zkick_f, 0 );
setEffAlphaKey( spep_3 + 0, zkick_f, 255 );
setEffAlphaKey( spep_3 + 101 -1, zkick_f, 255 );
setEffAlphaKey( spep_3 + 101, zkick_f, 0 );

zkick_b = entryEffectLife( spep_3 + 0, SP_05r, 101, 0x80, -1, 0, 0, 0 );  --ザーボンのキック ef_003_back
setEffMoveKey( spep_3 + 0, zkick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 101, zkick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, zkick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 101, zkick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, zkick_b, 0 );
setEffRotateKey( spep_3 + 101, zkick_b, 0 );
setEffAlphaKey( spep_3 + 0, zkick_b, 255 );
setEffAlphaKey( spep_3 + 101 -1, zkick_b, 255 );
setEffAlphaKey( spep_3 + 101, zkick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 44, 1, 1 );
setDisp( spep_3 -3 + 78, 1, 0 );
changeAnime( spep_3 -3 + 44, 1, 106 );

setMoveKey( spep_3 -3 + 44, 1, -107.9, -246.6 , 0 );
setMoveKey( spep_3 -3 + 45, 1, -107.9, -246.6 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -47.7, -169.3 , 0 );
setMoveKey( spep_3 -3 + 47, 1, -47.7, -169.3 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 12.5, -95.5 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 98.6, -20.6 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 59.1, -47.6 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 84.5, -14.7 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 44, -10 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 93.4, -43.5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 63.8, -9 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 95.3, -33.8 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 61.7, -14.6 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 64.9, -40.6 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 278.3, 29.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 515.4, 9.6 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 721.4, 13.6 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 837.5, 13.6 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 878, 13.6 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 878, 13.6 , 0 );

setScaleKey( spep_3 -3 + 44, 1, 7.03, 7.03 );
setScaleKey( spep_3 -3 + 45, 1, 7.03, 7.03 );
setScaleKey( spep_3 -3 + 46, 1, 5.24, 5.24 );
setScaleKey( spep_3 -3 + 47, 1, 5.24, 5.24 );
setScaleKey( spep_3 -3 + 48, 1, 3.49, 3.49 );
setScaleKey( spep_3 -3 + 50, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 56, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 58, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 60, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 62, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 64, 1, 1.79, 1.79 );
setScaleKey( spep_3 -3 + 66, 1, 1.79, 1.79 );
setScaleKey( spep_3 -3 + 68, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 70, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 72, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 74, 1, 1.81, 1.81 );
setScaleKey( spep_3 -3 + 76, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 78, 1, 1.82, 1.82 );

setRotateKey( spep_3 -3 + 44, 1, -34.7 );
setRotateKey( spep_3 -3 + 66, 1, -34.7 );
setRotateKey( spep_3 -3 + 68, 1, 22.8 );
setRotateKey( spep_3 -3 + 78, 1, 22.8 );

-- ** 音 ** --
--キック
SE010 = playSeVer2( spep_3 + 28, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 28, SE010, 92 );

--キック
SE011 = playSeVer2( spep_3 + 28, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 28, SE011, 91 );

--敵飛んでいく
SE012 = playSeVer2( spep_3 + 56, 1183, "",spep_3 +102 +32 + 48, 0, 54, -1);

--敵飛んでいく
SE013 = playSeVer2( spep_3 + 56, 1121, "",spep_3 +102 +32 + 48, 0, 54, -1);
setSeVolumeByWorkId( spep_3 + 56, SE013, 48 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 102 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 101;


------------------------------------------------------
-- 敵が崖に吹き飛んでいく(32F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
emove = entryEffectLife( spep_4 + 0, SP_06, 32, 0x80, -1, 0, 0, 0 );  --敵が崖に吹き飛んでいく	ef_004
setEffMoveKey( spep_4 + 0, emove, 0, 0 , 0 );
setEffMoveKey( spep_4 + 32, emove, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, emove, 1.0, 1.0 );
setEffScaleKey( spep_4 + 32, emove, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, emove, 0 );
setEffRotateKey( spep_4 + 32, emove, 0 );
setEffAlphaKey( spep_4 + 0, emove, 255 );
setEffAlphaKey( spep_4 + 32 -1, emove, 255 );
setEffAlphaKey( spep_4 + 32, emove, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 35, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, -1202, -99.7 , 0 );
setMoveKey( spep_4 + 1, 1, -1014.7, -89.2 , 0 );
setMoveKey( spep_4 + 2, 1, -734.2, -78.8 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -403.8, -68.3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -289.7, -74.2 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -237.9, -88.9 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -189.5, -102.5 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -144.6, -115.1 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -103.1, -126.5 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -64.8, -136.9 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -29.7, -146.3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 2.3, -154.8 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 31.2, -162.2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 57.2, -168.7 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 80.3, -174.3 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 100.7, -179 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 118.3, -182.8 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 133.3, -185.9 , 0 );
setMoveKey( spep_4 -3 + 35, 1, 133.3, -185.9 , 0 );

setScaleKey( spep_4 + 0, 1, 10.49, 10.49 );
setScaleKey( spep_4 + 1, 1, 8.86, 8.86 );
setScaleKey( spep_4 + 2, 1, 6.44, 6.44 );
setScaleKey( spep_4 -3 + 6, 1, 3.59, 3.59 );
setScaleKey( spep_4 -3 + 8, 1, 2.84, 2.84 );
setScaleKey( spep_4 -3 + 10, 1, 2.62, 2.62 );
setScaleKey( spep_4 -3 + 12, 1, 2.42, 2.42 );
setScaleKey( spep_4 -3 + 14, 1, 2.24, 2.24 );
setScaleKey( spep_4 -3 + 16, 1, 2.06, 2.06 );
setScaleKey( spep_4 -3 + 18, 1, 1.9, 1.9 );
setScaleKey( spep_4 -3 + 20, 1, 1.74, 1.74 );
setScaleKey( spep_4 -3 + 22, 1, 1.61, 1.61 );
setScaleKey( spep_4 -3 + 24, 1, 1.48, 1.48 );
setScaleKey( spep_4 -3 + 26, 1, 1.36, 1.36 );
setScaleKey( spep_4 -3 + 28, 1, 1.25, 1.25 );
setScaleKey( spep_4 -3 + 30, 1, 1.16, 1.16 );
setScaleKey( spep_4 -3 + 32, 1, 1.07, 1.07 );
setScaleKey( spep_4 -3 + 34, 1, 1, 1 );
setScaleKey( spep_4 -3 + 35, 1, 1, 1 );

setRotateKey( spep_4 + 0, 1, 77.5 );
setRotateKey( spep_4 -3 + 6, 1, 77.5 );
setRotateKey( spep_4 -3 + 8, 1, 77.6 );
setRotateKey( spep_4 -3 + 22, 1, 77.6 );
setRotateKey( spep_4 -3 + 24, 1, 77.7 );
setRotateKey( spep_4 -3 + 25, 1, 77.7 );

-- ** 音 ** --
--ドドリアズームアウト
SE014 = playSeVer2( spep_4 + 20, 1072, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 32 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 32;


------------------------------------------------------
-- ドドリアの突進(100F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
charge = entryEffectLife( spep_5 + 0, SP_07, 100, 0x100, -1, 0, 0, 0 );  --ドドリアの突進	ef_005
setEffMoveKey( spep_5 + 0, charge, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, charge, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, charge, -1.0, 1.0 );
setEffScaleKey( spep_5 + 100, charge, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, charge, 0 );
setEffRotateKey( spep_5 + 100, charge, 0 );
setEffAlphaKey( spep_5 + 0, charge, 255 );
setEffAlphaKey( spep_5 + 100 -1, charge, 255 );
setEffAlphaKey( spep_5 + 100, charge, 0 );

-- ** 音 ** --
--つっこんでくる
SE015 = playSeVer2( spep_5 + 28, 1182, "", 0, 0, 0, -1);

--つっこんでくる
SE016 = playSeVer2( spep_5 + 28, 9, "", 0, 0, 0, -1);

--つっこんでくる
SE017 = playSeVer2( spep_5 + 54, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 54, SE017, 39 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 100 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 100;


------------------------------------------------------
-- 激突～フィニッシュ(348F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffectLife( spep_6 + 0, SP_08r, 348, 0x100, -1, 0, 0, 0 );  --激突～フィニッシュ	ef_006_front
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 348, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 348, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 348, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 348 -1, finish_f, 255 );
setEffAlphaKey( spep_6 + 348, finish_f, 0 );

finish_b = entryEffectLife( spep_6 + 0, SP_09r, 348, 0x80, -1, 0, 0, 0 );  --激突～フィニッシュ	ef_006_back
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 348, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 348, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 348, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 348 -1, finish_b, 255 );
setEffAlphaKey( spep_6 + 348, finish_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 54, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );
changeAnime( spep_6 -3 + 18, 1, 108 );

setMoveKey( spep_6 + 0, 1, -312.8, -52.2 , 0 );
setMoveKey( spep_6 + 1, 1, -268.9, -43.7 , 0 );
setMoveKey( spep_6 + 2, 1, -223.8, -33.4 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -178.4, -22.4 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -133.5, -12.3 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -129.4, -6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -124.4, 1.8 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -118.6, 10.9 , 0 );
setMoveKey( spep_6 -3 + 17, 1, -111.8, 21.4 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 55.1, 37.8 , 0 );
setMoveKey( spep_6 -3 + 20, 1, -20.6, -30.1 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 42.2, 10.1 , 0 );
setMoveKey( spep_6 -3 + 24, 1, -28.3, 32.6 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 47.6, -22.8 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 46.2, 25.9 , 0 );
setMoveKey( spep_6 -3 + 30, 1, -26.7, -23.2 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 45, 33.9 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 23.2, 11.2 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 56.9, 23.9 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 91.1, 36.7 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 89, 41.1 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 86.7, 45.1 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 84.1, 48.8 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 81.3, 51.9 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 78.1, 54.7 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 74.7, 57.1 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 71, 59 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 67, 60.5 , 0 );
--setMoveKey( spep_6 -3 + 56, 1, 91.7, 87.5 , 0 );
--setMoveKey( spep_6 -3 + 58, 1, 47.7, 39.7 , 0 );
--setMoveKey( spep_6 -3 + 60, 1, 47.7, 39.7 , 0 );

setScaleKey( spep_6 + 0, 1, 5.02, 5.02 );
setScaleKey( spep_6 + 1, 1, 4.33, 4.33 );
setScaleKey( spep_6 + 2, 1, 3.62, 3.62 );
setScaleKey( spep_6 -3 + 6, 1, 2.91, 2.91 );
setScaleKey( spep_6 -3 + 8, 1, 2.2, 2.2 );
setScaleKey( spep_6 -3 + 10, 1, 2.17, 2.17 );
setScaleKey( spep_6 -3 + 12, 1, 2.13, 2.13 );
setScaleKey( spep_6 -3 + 14, 1, 2.09, 2.09 );
setScaleKey( spep_6 -3 + 17, 1, 2.03, 2.03 );
setScaleKey( spep_6 -3 + 18, 1, 2.26, 2.26 );
setScaleKey( spep_6 -3 + 20, 1, 2.25, 2.25 );
setScaleKey( spep_6 -3 + 22, 1, 2.25, 2.25 );
setScaleKey( spep_6 -3 + 24, 1, 2.24, 2.24 );
setScaleKey( spep_6 -3 + 26, 1, 2.23, 2.23 );
setScaleKey( spep_6 -3 + 28, 1, 2.21, 2.21 );
setScaleKey( spep_6 -3 + 30, 1, 2.19, 2.19 );
setScaleKey( spep_6 -3 + 32, 1, 2.17, 2.17 );
setScaleKey( spep_6 -3 + 34, 1, 2.14, 2.14 );
setScaleKey( spep_6 -3 + 36, 1, 1.83, 1.83 );
setScaleKey( spep_6 -3 + 38, 1, 1.52, 1.52 );
setScaleKey( spep_6 -3 + 40, 1, 1.39, 1.39 );
setScaleKey( spep_6 -3 + 42, 1, 1.27, 1.27 );
setScaleKey( spep_6 -3 + 44, 1, 1.17, 1.17 );
setScaleKey( spep_6 -3 + 46, 1, 1.08, 1.08 );
setScaleKey( spep_6 -3 + 48, 1, 1.01, 1.01 );
setScaleKey( spep_6 -3 + 50, 1, 0.95, 0.95 );
setScaleKey( spep_6 -3 + 52, 1, 0.9, 0.9 );
setScaleKey( spep_6 -3 + 54, 1, 0.87, 0.87 );
--setScaleKey( spep_6 -3 + 56, 1, 0.85, 0.85 );
--setScaleKey( spep_6 -3 + 60, 1, 0.85, 0.85 );

setRotateKey( spep_6 + 0, 1, -6.4 );
setRotateKey( spep_6 -3 + 17, 1, -6.4 );
setRotateKey( spep_6 -3 + 18, 1, -20.8 );
setRotateKey( spep_6 -3 + 54, 1, -20.8 );

-- ** 音 ** --
--ドドリア頭突き
SE018 = playSeVer2( spep_6 + 4, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 4, SE018, 75 );

--ドドリア頭突き
SE019 = playSeVer2( spep_6 + 8, 1000, "", 0, 0, 0, -1);

--ドドリア頭突き
SE020 = playSeVer2( spep_6 + 8, 1049, "",spep_6 + 64, 0, 30, -1);
setSeVolumeByWorkId( spep_6 + 8, SE020, 79 );

--ドドリア頭突き
SE021 = playSeVer2( spep_6 + 10, 1009, "", 0, 0, 0, -1);

--ドドリア頭突き
SE022 = playSeVer2( spep_6 + 12, 1110, "", 0, 0, 0, -1);

--壁激突
SE023 = playSeVer2( spep_6 + 48, 1159, "",spep_6 + 302, 0, 126, -1);
setSeVolumeByWorkId( spep_6 + 48, SE023, 85 );

--壁激突
SE024 = playSeVer2( spep_6 + 48, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 48, SE024, 79 );

--ドドリア頭突き
SE025 = playSeVer2( spep_6 + 54, 1060, "", 0, 0, 0, -1);

--ドドリア歩いてくる
SE026 = playSeVer2( spep_6 + 144, 1106, "", 0, 0, 0, -1);

--ドドリア歩いてくる
SE027 = playSeVer2( spep_6 + 172, 1108, "", 0, 0, 0, -1);

--ザーボン着地
SE028 = playSeVer2( spep_6 + 184, 44, "",spep_6 + 232, 0, 8, -1);

--ザーボン着地
SE029 = playSeVer2( spep_6 + 218, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 218, SE029, 127 );

--ザーボン着地
SE030 = playSeVer2( spep_6 + 220, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 220, SE030, 150 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 348 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 54 );
endPhase( spep_6 + 338 );

end