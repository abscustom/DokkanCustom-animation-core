--1021010: LR_バビディ&魔人ブウ(善)_必殺技：バビディとブウの破壊行為
--sp_effect_a2_00150
--sp2104

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
SP_01 = 156457 ; --突進	ef_001
SP_02 = 156458 ; --光弾発射	ef_002
SP_03 = 156459 ; --光弾被弾	ef_003
SP_04 = 156460 ; --爆発	ef_004
SP_05 = 156461 ; --煙に向かっていくバビディ&ブウ ef_005
SP_06 = 156462 ; --焦るバビディ ef_006
SP_07 = 156463 ; --笑顔ブウ	ef_007
SP_08 = 156464 ; --ビル突き抜け	ef_008
SP_09 = 156465 ; --去るバビディ&ブウ	ef_009
SP_10 = 156466 ; --背景	ef_010　ef_003と同時再生
SP_11 = 156467 ; --背景	ef_011　ef_004と同時再生

--敵側


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

ENABLE_AUTO_TIME_STRETCH(0.8);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 突進（106F）
------------------------------------------------------

spep_0 = 0;
-- ** エフェクト等 ** --
tosshin = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --突進	ef_001
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 106, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 106, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 106, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 106, tosshin, 255 );

spep_x = spep_0 + 10;
-- ** 書き文字エントリー ** --
--ゴゴゴゴゴ
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 507.8 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 70, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 70, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 84, ctgogo, 0.7, 0.7 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_0 + 20, 906, 76, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_0 + 20, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, shuchusen2, 0, 0 , 0 );
setEffScaleKey( spep_0 + 20, shuchusen2, 1.05, 1.05 );
setEffScaleKey( spep_0 + 96, shuchusen2, 1.05, 1.05 );
setEffRotateKey( spep_0 + 20, shuchusen2, 0 );
setEffRotateKey( spep_0 + 96, shuchusen2, 0 );
setEffAlphaKey( spep_0 + 20, shuchusen2, 255 );
setEffAlphaKey( spep_0 + 96, shuchusen2, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+84  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--飛んでくる
SE001 = playSe( spep_0 + 0, 9 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
setTimeStretch( SE001, 1.67, 10, 1 );
SE002 = playSe( spep_0 + 0, 1019 );
SE002_2 = playSe( spep_0 + 64, 1019 );

--セリフカットイン
SE003 = playSe( spep_0 + 22, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 106, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_0 + 96, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 106;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE004 = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE004 = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE004 = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

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
--SE004 = playSe( spep_1 + 0, 1035 );
stopSe( spep_1 + 8, SE001, 6 );
stopSe( spep_1 + 12, SE002_2, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;
--------------------------------------
--光弾発射(96F)
--------------------------------------
-- ** エフェクト等 ** --
hassya = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --ブゥ光弾発射（ef_002）
setEffMoveKey( spep_2 + 0, hassya , 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, hassya , 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassya , 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, hassya , 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassya , 0 );
setEffRotateKey( spep_2 + 96, hassya , 0 );
setEffAlphaKey( spep_2 + 0, hassya , 255 );
setEffAlphaKey( spep_2 + 95, hassya , 255 );
setEffAlphaKey( spep_2 + 96, hassya , 0 );

--飛行音
SE005 = playSe( spep_2 + 6, 1019 );
setSeVolumeByWorkId( spep_2 + 6, SE005, 71 );
--気弾１
SE006 = playSe( spep_2 + 22, 1015 );
setSeVolumeByWorkId( spep_2 + 22, SE006, 56 );
SE007 = playSe( spep_2 + 22, 1016 );
SE008 = playSe( spep_2 + 24, 1155 );
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 38; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );

    pauseAll( SP_dodge, 67 );

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --
--飛行音
SE005_2 = playSe( spep_2 + 70, 1019 );
setSeVolumeByWorkId( spep_2 + 70, SE005_2, 71 );
--気弾2
SE009 = playSe( spep_2 + 46, 1015 );
setSeVolumeByWorkId( spep_2 + 46, SE009, 60 );
SE010 = playSe( spep_2 + 46, 1016 );
SE011 = playSe( spep_2 + 48, 1155 );
--気弾3
SE012 = playSe( spep_2 + 70, 1015 );
setSeVolumeByWorkId( spep_2 + 70, SE012, 62 );
SE013 = playSe( spep_2 + 70, 1016 );
SE014 = playSe( spep_2 + 72, 1155 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;

--------------------------------------
--光弾被弾(64F)
--------------------------------------
-- ** エフェクト等 ** --
hidan_f = entryEffectLife( spep_3 + 0, SP_03, 64, 0x100, -1, 0, 0, 0 );  --光弾被弾（ef_003）
setEffMoveKey( spep_3 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 64, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 64, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hidan_f, 0 );
setEffRotateKey( spep_3 + 64, hidan_f, 0 );
setEffAlphaKey( spep_3 + 0, hidan_f, 255 );
setEffAlphaKey( spep_3 + 63, hidan_f, 255 );
setEffAlphaKey( spep_3 + 64, hidan_f, 0 );
-- ** エフェクト等 ** --
hidan_b = entryEffect( spep_3 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --背景
setEffMoveKey( spep_3 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 64, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 64, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hidan_b, 0 );
setEffRotateKey( spep_3 + 64, hidan_b, 0 );
setEffAlphaKey( spep_3 + 0, hidan_b, 255 );
setEffAlphaKey( spep_3 + 63, hidan_b, 255 );
setEffAlphaKey( spep_3 + 64, hidan_b, 0 );

-- ** 書き文字エントリー ** --
--ボボボン
ctbobo = entryEffectLife( spep_3 + 20-3,10026, 26, 0x100, -1, 0, 31.9, 84.8 );
setEffMoveKey( spep_3 + 20-3, ctbobo, 31.9, 84.8 , 0 );
setEffMoveKey( spep_3 + 22-3, ctbobo, 20.6, 112 , 0 );
setEffMoveKey( spep_3 + 24-3, ctbobo, 25.7, 129.2 , 0 );
setEffMoveKey( spep_3 + 26-3, ctbobo, 21.2, 138.1 , 0 );
setEffMoveKey( spep_3 + 28-3, ctbobo, 36.6, 157.6 , 0 );
setEffMoveKey( spep_3 + 30-3, ctbobo, 46.4, 154.2 , 0 );
setEffMoveKey( spep_3 + 32-3, ctbobo, 49.8, 179.9 , 0 );
setEffMoveKey( spep_3 + 34-3, ctbobo, 65.2, 180.1 , 0 );
setEffMoveKey( spep_3 + 36-3, ctbobo, 65.9, 194.6 , 0 );
setEffMoveKey( spep_3 + 38-3, ctbobo, 84.8, 202.8 , 0 );
setEffMoveKey( spep_3 + 40-3, ctbobo, 72.7, 220.2 , 0 );
setEffMoveKey( spep_3 + 42-3, ctbobo, 91.6, 217.5 , 0 );
setEffMoveKey( spep_3 + 44-3, ctbobo, 73, 222.3 , 0 );
setEffMoveKey( spep_3 + 46-3, ctbobo, 72.8, 229.4 , 0 );

setEffScaleKey( spep_3 + 20-3, ctbobo, 0.5, 0.5 );
setEffScaleKey( spep_3 + 22-3, ctbobo, 1.36, 1.36 );
setEffScaleKey( spep_3 + 24-3, ctbobo, 2.23, 2.23 );
setEffScaleKey( spep_3 + 26-3, ctbobo, 2.25, 2.25 );
setEffScaleKey( spep_3 + 28-3, ctbobo, 2.28, 2.28 );
setEffScaleKey( spep_3 + 30-3, ctbobo, 2.31, 2.31 );
setEffScaleKey( spep_3 + 32-3, ctbobo, 2.33, 2.33 );
setEffScaleKey( spep_3 + 34-3, ctbobo, 2.36, 2.36 );
setEffScaleKey( spep_3 + 36-3, ctbobo, 2.38, 2.38 );
setEffScaleKey( spep_3 + 38-3, ctbobo, 2.41, 2.41 );
setEffScaleKey( spep_3 + 40-3, ctbobo, 2.74, 2.74 );
setEffScaleKey( spep_3 + 42-3, ctbobo, 3.07, 3.07 );
setEffScaleKey( spep_3 + 44-3, ctbobo, 3.4, 3.4 );
setEffScaleKey( spep_3 + 46-3, ctbobo, 3.73, 3.73 );

setEffRotateKey( spep_3 + 20-3, ctbobo, 38.4 );
setEffRotateKey( spep_3 + 22-3, ctbobo, 38.5 );
setEffRotateKey( spep_3 + 28-3, ctbobo, 38.5 );
setEffRotateKey( spep_3 + 30-3, ctbobo, 38.4 );
setEffRotateKey( spep_3 + 46-3, ctbobo, 38.4 );

setEffAlphaKey( spep_3 + 20-3, ctbobo, 255 );
setEffAlphaKey( spep_3 + 38-3, ctbobo, 255 );
setEffAlphaKey( spep_3 + 40-3, ctbobo, 191 );
setEffAlphaKey( spep_3 + 42-3, ctbobo, 128 );
setEffAlphaKey( spep_3 + 44-3, ctbobo, 64 );
setEffAlphaKey( spep_3 + 46-3, ctbobo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 24, 1, 105 );

setMoveKey( spep_3 + 0, 1, -1, 10.5 , 0 );
setMoveKey( spep_3 + 2, 1, -1.2, 10.6 , 0 );
setMoveKey( spep_3 + 4, 1, -1.9, 10.8 , 0 );
setMoveKey( spep_3 + 6, 1, -3.1, 11.3 , 0 );
setMoveKey( spep_3 + 8, 1, -4.7, 11.9 , 0 );
setMoveKey( spep_3 + 10, 1, -7, 12.8 , 0 );
setMoveKey( spep_3 + 12, 1, -10, 13.8 , 0 );
setMoveKey( spep_3 + 14, 1, -13.6, 15.2 , 0 );
setMoveKey( spep_3 + 16, 1, -18.1, 16.8 , 0 );
setMoveKey( spep_3 + 18, 1, -23.6, 18.8 , 0 );
setMoveKey( spep_3 + 20, 1, -29.9, 21.2 , 0 );
setMoveKey( spep_3 + 22, 1, -52.4, 27.4 , 0 );
setMoveKey( spep_3 + 25, 1, -35.2, 34.2 , 0 );
setMoveKey( spep_3 + 26, 1, -56.3, 5.7 , 0 );
setMoveKey( spep_3 + 28, 1, -32.9, 44.1 , 0 );
setMoveKey( spep_3 + 30, 1, 13.4, 20.8 , 0 );
setMoveKey( spep_3 + 32, 1, 46.4, 11.8 , 0 );
setMoveKey( spep_3 + 34, 1, 30.8, 4 , 0 );
setMoveKey( spep_3 + 36, 1, 44.6, -6.7 , 0 );
setMoveKey( spep_3 + 38, 1, 86.7, 10.3 , 0 );
setMoveKey( spep_3 + 40, 1, 62.6, 4.7 , 0 );
setMoveKey( spep_3 + 42, 1, 69.9, 13.2 , 0 );
setMoveKey( spep_3 + 44, 1, 76.4, 6.5 , 0 );
setMoveKey( spep_3 + 46, 1, 82.4, 15 , 0 );
setMoveKey( spep_3 + 48, 1, 88, 7.9 , 0 );
setMoveKey( spep_3 + 50, 1, 93.2, 16 , 0 );
setMoveKey( spep_3 + 52, 1, 97.9, 8.6 , 0 );
setMoveKey( spep_3 + 54, 1, 102.3, 13.3 , 0 );
setMoveKey( spep_3 + 56, 1, 106.1, 8.9 , 0 );
setMoveKey( spep_3 + 58, 1, 109.5, 16.5 , 0 );
setMoveKey( spep_3 + 60, 1, 112.4, 8.8 , 0 );
setMoveKey( spep_3 + 62, 1, 114.8, 13.2 , 0 );
setMoveKey( spep_3 + 63, 1, 119.4, 7.9 , 0 );

setScaleKey( spep_3 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 6, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 8, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 10, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 12, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 14, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 16, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 18, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 20, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 22, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 25, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 26, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 28, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 30, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 32, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 34, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 36, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 38, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 40, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 42, 1, 0.75, 0.75 );
setScaleKey( spep_3 + 44, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 46, 1, 0.65, 0.65 );
setScaleKey( spep_3 + 48, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 50, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 52, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 54, 1, 0.48, 0.48 );
setScaleKey( spep_3 + 56, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 58, 1, 0.43, 0.43 );
setScaleKey( spep_3 + 60, 1, 0.41, 0.41 );
setScaleKey( spep_3 + 62, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 63, 1, 0.36, 0.36 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 20, 1, 0 );
setRotateKey( spep_3 + 22, 1, 2 );
setRotateKey( spep_3 + 25, 1, 4 );
setRotateKey( spep_3 + 26, 1, 6 );
setRotateKey( spep_3 + 28, 1, 13.2 );
setRotateKey( spep_3 + 30, 1, 18.5 );
setRotateKey( spep_3 + 32, 1, 22.8 );
setRotateKey( spep_3 + 34, 1, 26.3 );
setRotateKey( spep_3 + 36, 1, 29.1 );
setRotateKey( spep_3 + 38, 1, 31.5 );
setRotateKey( spep_3 + 40, 1, 33.6 );
setRotateKey( spep_3 + 42, 1, 35.3 );
setRotateKey( spep_3 + 44, 1, 36.8 );
setRotateKey( spep_3 + 46, 1, 38.1 );
setRotateKey( spep_3 + 48, 1, 39.2 );
setRotateKey( spep_3 + 50, 1, 40.1 );
setRotateKey( spep_3 + 52, 1, 40.9 );
setRotateKey( spep_3 + 54, 1, 41.6 );
setRotateKey( spep_3 + 56, 1, 42.1 );
setRotateKey( spep_3 + 58, 1, 42.6 );
setRotateKey( spep_3 + 60, 1, 43 );
setRotateKey( spep_3 + 62, 1, 43.3 );
setRotateKey( spep_3 + 63, 1, 43.9 );

-- ** 音 ** --
--飛行音
stopSe( spep_3 + 8, SE005, 0 );
--気弾道
SE015 = playSe( spep_3 + 0, 1021 );
--爆発
SE016 = playSe( spep_3 + 16, 1023 );
setSeVolumeByWorkId( spep_3 + 16, SE016, 86 );
SE017 = playSe( spep_3 + 28, 1011 );
setSeVolumeByWorkId( spep_3 + 28, SE017, 81 );
--敵飛んでいく
SE018 = playSe( spep_3 + 34, 1121 );
setSeVolumeByWorkId( spep_3 + 34, SE018, 32 );
SE019 = playSe( spep_3 + 34, 1183 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 64, 0, 0, 0, 0, 255);--黒背景

spep_4 = spep_3 + 64;
--------------------------------------
--爆発(86F)
--------------------------------------
-- ** エフェクト等 ** --
bakuhatsu_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --爆発（ef_004）
setEffMoveKey( spep_4 + 0, bakuhatsu_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, bakuhatsu_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuhatsu_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, bakuhatsu_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuhatsu_f, 0 );
setEffRotateKey( spep_4 + 86, bakuhatsu_f, 0 );
setEffAlphaKey( spep_4 + 0, bakuhatsu_f, 255 );
setEffAlphaKey( spep_4 + 86, bakuhatsu_f, 255 );

-- ** エフェクト等 ** --
bakuhatsu_b = entryEffect( spep_4 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --背景
setEffMoveKey( spep_4 + 0, bakuhatsu_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, bakuhatsu_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuhatsu_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, bakuhatsu_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuhatsu_b, 0 );
setEffRotateKey( spep_4 + 86, bakuhatsu_b, 0 );
setEffAlphaKey( spep_4 + 0, bakuhatsu_b, 255 );
setEffAlphaKey( spep_4 + 86, bakuhatsu_b, 255 );

-- ** 書き文字エントリー ** --
--ドゴォン
ctdogo = entryEffectLife( spep_4 + 24-4,  10018, 60, 0x100, -1, 0, 73.7, 107.9 );
setEffMoveKey( spep_4 + 24-4, ctdogo, 73.7, 107.9 , 0 );
setEffMoveKey( spep_4 + 26-4, ctdogo, 79.4, 123.7 , 0 );
setEffMoveKey( spep_4 + 28-4, ctdogo, 84.8, 146.8 , 0 );
setEffMoveKey( spep_4 + 30-4, ctdogo, 90.6, 160.5 , 0 );
setEffMoveKey( spep_4 + 32-4, ctdogo, 95.9, 185.8 , 0 );
setEffMoveKey( spep_4 + 34-4, ctdogo, 101.8, 197.4 , 0 );
setEffMoveKey( spep_4 + 36-4, ctdogo, 107, 224.7 , 0 );
setEffMoveKey( spep_4 + 38-4, ctdogo, 112.9, 234.2 , 0 );
setEffMoveKey( spep_4 + 40-4, ctdogo, 118, 263.7 , 0 );
setEffMoveKey( spep_4 + 42-4, ctdogo, 120.3, 257.4 , 0 );
setEffMoveKey( spep_4 + 44-4, ctdogo, 121.8, 273.3 , 0 );
setEffMoveKey( spep_4 + 46-4, ctdogo, 124.2, 267 , 0 );
setEffMoveKey( spep_4 + 48-4, ctdogo, 125.6, 283 , 0 );
setEffMoveKey( spep_4 + 50-4, ctdogo, 128, 276.5 , 0 );
setEffMoveKey( spep_4 + 52-4, ctdogo, 129.4, 292.6 , 0 );
setEffMoveKey( spep_4 + 54-4, ctdogo, 131.8, 286 , 0 );
setEffMoveKey( spep_4 + 56-4, ctdogo, 133.2, 302.3 , 0 );
setEffMoveKey( spep_4 + 58-4, ctdogo, 135.6, 295.5 , 0 );
setEffMoveKey( spep_4 + 60-4, ctdogo, 137.1, 312 , 0 );
setEffMoveKey( spep_4 + 62-4, ctdogo, 139.4, 305 , 0 );
setEffMoveKey( spep_4 + 64-4, ctdogo, 140.9, 321.6 , 0 );
setEffMoveKey( spep_4 + 66-4, ctdogo, 143.3, 314.5 , 0 );
setEffMoveKey( spep_4 + 68-4, ctdogo, 144.7, 331.3 , 0 );
setEffMoveKey( spep_4 + 70-4, ctdogo, 147.1, 324.1 , 0 );
setEffMoveKey( spep_4 + 72-4, ctdogo, 148.5, 340.9 , 0 );
setEffMoveKey( spep_4 + 74-4, ctdogo, 150.9, 333.6 , 0 );
setEffMoveKey( spep_4 + 76-4, ctdogo, 152.3, 350.6 , 0 );
setEffMoveKey( spep_4 + 78-4, ctdogo, 154.7, 343.1 , 0 );
setEffMoveKey( spep_4 + 80-4, ctdogo, 156.1, 360.2 , 0 );
setEffMoveKey( spep_4 + 82-4, ctdogo, 158.5, 352.6 , 0 );
setEffMoveKey( spep_4 + 84-4, ctdogo, 160.4, 357.4 , 0 );

setEffScaleKey( spep_4 + 24-4, ctdogo, 0.53, 0.53 );
setEffScaleKey( spep_4 + 26-4, ctdogo, 0.74, 0.74 );
setEffScaleKey( spep_4 + 28-4, ctdogo, 0.95, 0.95 );
setEffScaleKey( spep_4 + 30-4, ctdogo, 1.15, 1.15 );
setEffScaleKey( spep_4 + 32-4, ctdogo, 1.36, 1.36 );
setEffScaleKey( spep_4 + 34-4, ctdogo, 1.57, 1.57 );
setEffScaleKey( spep_4 + 36-4, ctdogo, 1.78, 1.78 );
setEffScaleKey( spep_4 + 38-4, ctdogo, 1.99, 1.99 );
setEffScaleKey( spep_4 + 40-4, ctdogo, 2.2, 2.2 );
setEffScaleKey( spep_4 + 42-4, ctdogo, 2.21, 2.21 );
setEffScaleKey( spep_4 + 44-4, ctdogo, 2.22, 2.22 );
setEffScaleKey( spep_4 + 46-4, ctdogo, 2.24, 2.24 );
setEffScaleKey( spep_4 + 48-4, ctdogo, 2.25, 2.25 );
setEffScaleKey( spep_4 + 50-4, ctdogo, 2.26, 2.27 );
setEffScaleKey( spep_4 + 52-4, ctdogo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 54-4, ctdogo, 2.29, 2.29 );
setEffScaleKey( spep_4 + 56-4, ctdogo, 2.31, 2.31 );
setEffScaleKey( spep_4 + 58-4, ctdogo, 2.32, 2.32 );
setEffScaleKey( spep_4 + 60-4, ctdogo, 2.33, 2.33 );
setEffScaleKey( spep_4 + 62-4, ctdogo, 2.35, 2.35 );
setEffScaleKey( spep_4 + 64-4, ctdogo, 2.36, 2.36 );
setEffScaleKey( spep_4 + 66-4, ctdogo, 2.37, 2.37 );
setEffScaleKey( spep_4 + 68-4, ctdogo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 70-4, ctdogo, 2.4, 2.4 );
setEffScaleKey( spep_4 + 72-4, ctdogo, 2.41, 2.41 );
setEffScaleKey( spep_4 + 74-4, ctdogo, 2.43, 2.43 );
setEffScaleKey( spep_4 + 76-4, ctdogo, 2.44, 2.44 );
setEffScaleKey( spep_4 + 78-4, ctdogo, 2.46, 2.46 );
setEffScaleKey( spep_4 + 80-4, ctdogo, 2.47, 2.47 );
setEffScaleKey( spep_4 + 82-4, ctdogo, 2.48, 2.48 );
setEffScaleKey( spep_4 + 84-4, ctdogo, 2.5, 2.5 );

setEffRotateKey( spep_4 + 24-4, ctdogo, 14.3 );
setEffRotateKey( spep_4 + 84-4, ctdogo, 14.3 );

setEffAlphaKey( spep_4 + 24-4, ctdogo, 28 );
setEffAlphaKey( spep_4 + 26-4, ctdogo, 57 );
setEffAlphaKey( spep_4 + 28-4, ctdogo, 85 );
setEffAlphaKey( spep_4 + 30-4, ctdogo, 113 );
setEffAlphaKey( spep_4 + 32-4, ctdogo, 142 );
setEffAlphaKey( spep_4 + 34-4, ctdogo, 170 );
setEffAlphaKey( spep_4 + 36-4, ctdogo, 198 );
setEffAlphaKey( spep_4 + 38-4, ctdogo, 227 );
setEffAlphaKey( spep_4 + 40-4, ctdogo, 255 );
setEffAlphaKey( spep_4 + 42-4, ctdogo, 243 );
setEffAlphaKey( spep_4 + 44-4, ctdogo, 232 );
setEffAlphaKey( spep_4 + 46-4, ctdogo, 220 );
setEffAlphaKey( spep_4 + 48-4, ctdogo, 209 );
setEffAlphaKey( spep_4 + 50-4, ctdogo, 197 );
setEffAlphaKey( spep_4 + 52-4, ctdogo, 185 );
setEffAlphaKey( spep_4 + 54-4, ctdogo, 174 );
setEffAlphaKey( spep_4 + 56-4, ctdogo, 162 );
setEffAlphaKey( spep_4 + 58-4, ctdogo, 151 );
setEffAlphaKey( spep_4 + 60-4, ctdogo, 139 );
setEffAlphaKey( spep_4 + 62-4, ctdogo, 128 );
setEffAlphaKey( spep_4 + 64-4, ctdogo, 116 );
setEffAlphaKey( spep_4 + 66-4, ctdogo, 104 );
setEffAlphaKey( spep_4 + 68-4, ctdogo, 93 );
setEffAlphaKey( spep_4 + 70-4, ctdogo, 81 );
setEffAlphaKey( spep_4 + 72-4, ctdogo, 70 );
setEffAlphaKey( spep_4 + 74-4, ctdogo, 58 );
setEffAlphaKey( spep_4 + 76-4, ctdogo, 46 );
setEffAlphaKey( spep_4 + 78-4, ctdogo, 35 );
setEffAlphaKey( spep_4 + 80-4, ctdogo, 23 );
setEffAlphaKey( spep_4 + 82-4, ctdogo, 12 );
setEffAlphaKey( spep_4 + 84-4, ctdogo, 0 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 86, 0x100, -1, 0, 299.2, 8 );  --集中線
setEffMoveKey(   spep_4 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey(   spep_4 + 86, shuchusen3, 0, 0 , 0 );
setEffScaleKey(  spep_4 + 0, shuchusen3, 1.4, 1.75 );
setEffScaleKey(  spep_4 + 86, shuchusen3, 1.4, 1.75 );
setEffRotateKey( spep_4 + 0, shuchusen3, 0 );
setEffRotateKey( spep_4 + 86, shuchusen3, 0 );
setEffAlphaKey(  spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey(  spep_4 + 86, shuchusen3, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 28, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, -339, -4.3 , 0 );
setMoveKey( spep_4 + 2, 1, -310.2, 3.7 , 0 );
setMoveKey( spep_4 + 4, 1, -258.7, 12.1 , 0 );
setMoveKey( spep_4 + 6, 1, -208, 19.7 , 0 );
setMoveKey( spep_4 + 8, 1, -160.4, 26.7 , 0 );
setMoveKey( spep_4 + 10, 1, -116.5, 33.1 , 0 );
setMoveKey( spep_4 + 12, 1, -76.6, 38.9 , 0 );
setMoveKey( spep_4 + 14, 1, -41.1, 44 , 0 );
setMoveKey( spep_4 + 16, 1, -10, 48.5 , 0 );
setMoveKey( spep_4 + 18, 1, 16.5, 52.2 , 0 );
setMoveKey( spep_4 + 20, 1, 38.3, 55.3 , 0 );
setMoveKey( spep_4 + 22, 1, 55.5, 57.6 , 0 );
setMoveKey( spep_4 + 24, 1, 67.9, 59.1 , 0 );
setMoveKey( spep_4 + 26, 1, 73.6, 52.8 , 0 );
setMoveKey( spep_4 + 28, 1, 84.3, 67.9 , 0 );

setScaleKey( spep_4 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 2, 1, 1.14, 1.14 );
setScaleKey( spep_4 + 4, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 6, 1, 0.87, 0.87 );
setScaleKey( spep_4 + 8, 1, 0.75, 0.75 );
setScaleKey( spep_4 + 10, 1, 0.63, 0.63 );
setScaleKey( spep_4 + 12, 1, 0.52, 0.52 );
setScaleKey( spep_4 + 14, 1, 0.43, 0.43 );
setScaleKey( spep_4 + 16, 1, 0.34, 0.34 );
setScaleKey( spep_4 + 18, 1, 0.27, 0.27 );
setScaleKey( spep_4 + 20, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 22, 1, 0.17, 0.17 );
setScaleKey( spep_4 + 24, 1, 0.13, 0.13 );
setScaleKey( spep_4 + 26, 1, 0.11, 0.11 );
setScaleKey( spep_4 + 28, 1, 0.1, 0.1 );

setRotateKey( spep_4 + 0, 1, 33.8 );
setRotateKey( spep_4 + 2, 1, 34.8 );
setRotateKey( spep_4 + 4, 1, 35.5 );
setRotateKey( spep_4 + 6, 1, 36.1 );
setRotateKey( spep_4 + 8, 1, 36.5 );
setRotateKey( spep_4 + 10, 1, 36.9 );
setRotateKey( spep_4 + 12, 1, 37.1 );
setRotateKey( spep_4 + 14, 1, 37.4 );
setRotateKey( spep_4 + 16, 1, 37.6 );
setRotateKey( spep_4 + 18, 1, 37.7 );
setRotateKey( spep_4 + 20, 1, 37.8 );
setRotateKey( spep_4 + 22, 1, 37.9 );
setRotateKey( spep_4 + 24, 1, 38 );
setRotateKey( spep_4 + 26, 1, 38 );
setRotateKey( spep_4 + 28, 1, 38.1 );

-- ** 音 ** --
--敵飛んでいく
stopSe( spep_4 + 32, SE018, 8 );
stopSe( spep_4 + 32, SE019, 8 );
--敵建物突っ込む
SE020 = playSe( spep_4 + 26, 1159 );
setSeVolumeByWorkId( spep_4 + 26, SE020, 46 );
SE021 = playSe( spep_4 + 26, 1023 );
setSeVolumeByWorkId( spep_4 + 26, SE021, 67 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 86, 0, 0, 0, 0, 255);   --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 20, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4 + 86;
--------------------------------------
--煙に向かっていくバビディ&ブウ(18F)
--------------------------------------
-- ** エフェクト等 ** --
kemuri = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --煙に向かっていくバビディ&ブウ（ef_005）
setEffMoveKey( spep_5 + 0, kemuri, 0, 0 , 0 );
setEffMoveKey( spep_5 + 18, kemuri, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kemuri, 1.0, 1.0 );
setEffScaleKey( spep_5 + 18, kemuri, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kemuri, 0 );
setEffRotateKey( spep_5 + 18, kemuri, 0 );
setEffAlphaKey( spep_5 + 0, kemuri, 255 );
setEffAlphaKey( spep_5 + 18, kemuri, 255 );

-- ** 音 ** --
--建物に近づく
SE022 = playSe( spep_5 + 0, 44 );
setSeVolumeByWorkId( spep_5 + 0, SE022, 64 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 18, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 10, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6 = spep_5 + 18;
--------------------------------------
--焦るバビディ(138F)
--------------------------------------
-- ** エフェクト等 ** --
aseru = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --焦るバビディ（ef_006）
setEffMoveKey( spep_6 + 0, aseru, 0, 0 , 0 );
setEffMoveKey( spep_6 + 138, aseru, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, aseru, 1.0, 1.0 );
setEffScaleKey( spep_6 + 138, aseru, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, aseru, 0 );
setEffRotateKey( spep_6 + 138, aseru, 0 );
setEffAlphaKey( spep_6 + 0, aseru, 255 );
setEffAlphaKey( spep_6 + 138, aseru, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_6 + 0, 906, 138, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 138, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen4, 1.05, 1.05 );
setEffScaleKey( spep_6 + 138, shuchusen4, 1.05, 1.05 );
setEffRotateKey( spep_6 + 0, shuchusen4, 0 );
setEffRotateKey( spep_6 + 138, shuchusen4, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 138, shuchusen4, 255 );

-- ** 音 ** --
--飛行音
SE023 = playSe( spep_6 + 6, 1019 );
setSeVolumeByWorkId( spep_6 + 6, SE023, 52 );
SE023_2 = playSe( spep_6 + 70, 1019 );
setSeVolumeByWorkId( spep_6 + 70, SE023_2, 52 );
SE023_3 = playSe( spep_6 + 134, 1019 );
setSeVolumeByWorkId( spep_6 + 134, SE023_3, 52 );

SE024 = playSe( spep_6 + 6, 1278 );
setSeVolumeByWorkId( spep_6 + 6, SE024, 57 );
stopSe( spep_6 + 112, SE024, 54 );
--バビディアップ
SE025 = playSe( spep_6 + 10, 48 );
--バビディ目をつぶる
SE026 = playSe( spep_6 + 106, 7 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 138, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_6 + 128, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_7 = spep_6 + 138;
--------------------------------------
--笑顔ブウ(128F)
--------------------------------------
-- ** エフェクト等 ** --
egao = entryEffect( spep_7 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --笑顔ブウ（ef_007）
setEffMoveKey( spep_7 + 0, egao, 0, 0 , 0 );
setEffMoveKey( spep_7 + 128, egao, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, egao, 1.0, 1.0 );
setEffScaleKey( spep_7 + 128, egao, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, egao, 0 );
setEffRotateKey( spep_7 + 128, egao, 0 );
setEffAlphaKey( spep_7 + 0, egao, 255 );
setEffAlphaKey( spep_7 + 128, egao, 255 );

-- ** 音 ** --
--バビディ目をつぶる
a = 10;
SE027 = playSe( spep_7 + 12-a, 1027 );
setSeVolumeByWorkId( spep_7 + 12-a, SE027, 0 );
setSeVolumeByWorkId( spep_7 + 13-a, SE027, 5 );
setSeVolumeByWorkId( spep_7 + 14-a, SE027, 10 );
setSeVolumeByWorkId( spep_7 + 15-a, SE027, 15 );
setSeVolumeByWorkId( spep_7 + 16-a, SE027, 20 );
setSeVolumeByWorkId( spep_7 + 17-a, SE027, 25 );
setSeVolumeByWorkId( spep_7 + 18-a, SE027, 30 );
setSeVolumeByWorkId( spep_7 + 19-a, SE027, 35 );
setSeVolumeByWorkId( spep_7 + 20-a, SE027, 40 );
setSeVolumeByWorkId( spep_7 + 21-a, SE027, 45 );
setSeVolumeByWorkId( spep_7 + 22-a, SE027, 50 );
setSeVolumeByWorkId( spep_7 + 23-a, SE027, 55 );
setSeVolumeByWorkId( spep_7 + 24-a, SE027, 60 );
setSeVolumeByWorkId( spep_7 + 25-a, SE027, 65 );
setSeVolumeByWorkId( spep_7 + 26-a, SE027, 70 );
setSeVolumeByWorkId( spep_7 + 27-a, SE027, 75 );
setSeVolumeByWorkId( spep_7 + 28-a, SE027, 80 );
setPitch( spep_7 + 12-a, SE027, -600 );
setTimeStretch( SE027, 0.6, 10, 1 );

--飛行音
SE023_4 = playSe( spep_7 + 60, 1019 );
setSeVolumeByWorkId( spep_7 + 60, SE023_4, 52 );
SE023_5 = playSe( spep_7 + 124, 1019 );
setSeVolumeByWorkId( spep_7 + 124, SE023_5, 52 );

--ブゥ悪い顔
SE028 = playSe( spep_7 + 50, 37 );
setSeVolumeByWorkId( spep_7 + 50, SE028, 123 );
setPitch( spep_7 + 50, SE028, 100 );
setTimeStretch( SE028, 1.07, 10, 1 );
--ブゥアップ
SE029 = playSe( spep_7 + 90, 1072 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 128, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_7 + 118, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_8 = spep_7 + 128;
--------------------------------------
--ビル突き抜け（118F）
--------------------------------------
-- ** エフェクト等 ** --
buill = entryEffect( spep_8 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --ビル突き抜け	ef_008
setEffMoveKey( spep_8 + 0, buill, 0, 0 , 0 );
setEffMoveKey( spep_8 + 118, buill, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, buill, 1.0, 1.0 );
setEffScaleKey( spep_8 + 118, buill, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, buill, 0 );
setEffRotateKey( spep_8 + 118, buill, 0 );
setEffAlphaKey( spep_8 + 0, buill, 255 );
setEffAlphaKey( spep_8 + 118, buill, 255 );

-- ** 音 ** --
--飛行音
stopSe( spep_8 + 50, SE023_5, 26 );
--ブゥたち建物に突っ込む
SE030 = playSe( spep_8 + 24, 1068 );
setSeVolumeByWorkId( spep_8 + 24, SE030, 54 );
SE031 = playSe( spep_8 + 24, 1033 );
setSeVolumeByWorkId( spep_8 + 24, SE031, 57 );

--建物から出てくる
SE032 = playSe( spep_8 + 64, 1067 );
SE033 = playSe( spep_8 + 64, 1024 );
setSeVolumeByWorkId( spep_8 + 64, SE033, 92 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 118, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_8 + 108, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_9 = spep_8 + 118;
--------------------------------------
--去るバビディ&ブウ（114F）
--------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --ビル突き抜け	ef_008
setEffMoveKey( spep_9 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_9 + 124, finish, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 124, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 124, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 124, finish, 255 );
-- ** 音 ** --
--炎
SE034 = playSe( spep_9 + 0, 1268 );
setSeVolumeByWorkId( spep_9 + 0, SE034, 200 );
--飛んでくる
SE035 = playSe( spep_9 + 10, 8 );
setSeVolumeByWorkId( spep_9 + 10, SE035, 180 );
setPitch( spep_9 + 10, SE035, -600 );
setTimeStretch( SE035, 0.6, 30, 6 );
SE036 = playSe( spep_9 + 18, 1232 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 124, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_9 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFade( spep_9 + 106, 22, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 20 );
endPhase( spep_9 + 114 );
else

------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0 = 0;
-- ** エフェクト等 ** --
tosshin = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --突進	ef_001
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 106, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 106, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 106, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 106, tosshin, 255 );

spep_x = spep_0 + 10;
-- ** 書き文字エントリー ** --
--ゴゴゴゴゴ
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 507.8 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 70, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 70, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 84, ctgogo, -0.7, 0.7 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_0 + 20, 906, 76, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_0 + 20, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, shuchusen2, 0, 0 , 0 );
setEffScaleKey( spep_0 + 20, shuchusen2, 1.05, 1.05 );
setEffScaleKey( spep_0 + 96, shuchusen2, 1.05, 1.05 );
setEffRotateKey( spep_0 + 20, shuchusen2, 0 );
setEffRotateKey( spep_0 + 96, shuchusen2, 0 );
setEffAlphaKey( spep_0 + 20, shuchusen2, 255 );
setEffAlphaKey( spep_0 + 96, shuchusen2, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+84  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--飛んでくる
SE001 = playSe( spep_0 + 0, 9 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
setTimeStretch( SE001, 1.67, 10, 1 );
SE002 = playSe( spep_0 + 0, 1019 );
SE002_2 = playSe( spep_0 + 64, 1019 );

--セリフカットイン
SE003 = playSe( spep_0 + 22, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 106, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_0 + 96, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 106;
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
SE004 = playSe( spep_1 + 0, 1035 );
stopSe( spep_1 + 8, SE001, 6 );
stopSe( spep_1 + 12, SE002_2, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;
--------------------------------------
--光弾発射(96F)
--------------------------------------
-- ** エフェクト等 ** --
hassya = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --ブゥ光弾発射（ef_002）
setEffMoveKey( spep_2 + 0, hassya , 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, hassya , 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassya , 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, hassya , 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassya , 0 );
setEffRotateKey( spep_2 + 96, hassya , 0 );
setEffAlphaKey( spep_2 + 0, hassya , 255 );
setEffAlphaKey( spep_2 + 95, hassya , 255 );
setEffAlphaKey( spep_2 + 96, hassya , 0 );

--飛行音
SE005 = playSe( spep_2 + 6, 1019 );
setSeVolumeByWorkId( spep_2 + 6, SE005, 71 );
--気弾１
SE006 = playSe( spep_2 + 22, 1015 );
setSeVolumeByWorkId( spep_2 + 22, SE006, 56 );
SE007 = playSe( spep_2 + 22, 1016 );
SE008 = playSe( spep_2 + 24, 1155 );
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 38; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );

    pauseAll( SP_dodge, 67 );

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --
--飛行音
SE005_2 = playSe( spep_2 + 70, 1019 );
setSeVolumeByWorkId( spep_2 + 70, SE005_2, 71 );
--気弾2
SE009 = playSe( spep_2 + 46, 1015 );
setSeVolumeByWorkId( spep_2 + 46, SE009, 60 );
SE010 = playSe( spep_2 + 46, 1016 );
SE011 = playSe( spep_2 + 48, 1155 );
--気弾3
SE012 = playSe( spep_2 + 70, 1015 );
setSeVolumeByWorkId( spep_2 + 70, SE012, 62 );
SE013 = playSe( spep_2 + 70, 1016 );
SE014 = playSe( spep_2 + 72, 1155 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;

--------------------------------------
--光弾被弾(64F)
--------------------------------------
-- ** エフェクト等 ** --
hidan_f = entryEffectLife( spep_3 + 0, SP_03, 64, 0x100, -1, 0, 0, 0 );  --光弾被弾（ef_003）
setEffMoveKey( spep_3 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 64, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 64, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hidan_f, 0 );
setEffRotateKey( spep_3 + 64, hidan_f, 0 );
setEffAlphaKey( spep_3 + 0, hidan_f, 255 );
setEffAlphaKey( spep_3 + 63, hidan_f, 255 );
setEffAlphaKey( spep_3 + 64, hidan_f, 0 );
-- ** エフェクト等 ** --
hidan_b = entryEffect( spep_3 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --背景
setEffMoveKey( spep_3 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 64, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 64, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hidan_b, 0 );
setEffRotateKey( spep_3 + 64, hidan_b, 0 );
setEffAlphaKey( spep_3 + 0, hidan_b, 255 );
setEffAlphaKey( spep_3 + 63, hidan_b, 255 );
setEffAlphaKey( spep_3 + 64, hidan_b, 0 );

-- ** 書き文字エントリー ** --
--ボボボン
ctbobo = entryEffectLife( spep_3 + 20-3,10026, 26, 0x100, -1, 0, 31.9, 84.8 );
setEffMoveKey( spep_3 + 20-3, ctbobo, 31.9, 84.8 , 0 );
setEffMoveKey( spep_3 + 22-3, ctbobo, 20.6, 112 , 0 );
setEffMoveKey( spep_3 + 24-3, ctbobo, 25.7, 129.2 , 0 );
setEffMoveKey( spep_3 + 26-3, ctbobo, 21.2, 138.1 , 0 );
setEffMoveKey( spep_3 + 28-3, ctbobo, 36.6, 157.6 , 0 );
setEffMoveKey( spep_3 + 30-3, ctbobo, 46.4, 154.2 , 0 );
setEffMoveKey( spep_3 + 32-3, ctbobo, 49.8, 179.9 , 0 );
setEffMoveKey( spep_3 + 34-3, ctbobo, 65.2, 180.1 , 0 );
setEffMoveKey( spep_3 + 36-3, ctbobo, 65.9, 194.6 , 0 );
setEffMoveKey( spep_3 + 38-3, ctbobo, 84.8, 202.8 , 0 );
setEffMoveKey( spep_3 + 40-3, ctbobo, 72.7, 220.2 , 0 );
setEffMoveKey( spep_3 + 42-3, ctbobo, 91.6, 217.5 , 0 );
setEffMoveKey( spep_3 + 44-3, ctbobo, 73, 222.3 , 0 );
setEffMoveKey( spep_3 + 46-3, ctbobo, 72.8, 229.4 , 0 );

setEffScaleKey( spep_3 + 20-3, ctbobo, 0.5, 0.5 );
setEffScaleKey( spep_3 + 22-3, ctbobo, 1.36, 1.36 );
setEffScaleKey( spep_3 + 24-3, ctbobo, 2.23, 2.23 );
setEffScaleKey( spep_3 + 26-3, ctbobo, 2.25, 2.25 );
setEffScaleKey( spep_3 + 28-3, ctbobo, 2.28, 2.28 );
setEffScaleKey( spep_3 + 30-3, ctbobo, 2.31, 2.31 );
setEffScaleKey( spep_3 + 32-3, ctbobo, 2.33, 2.33 );
setEffScaleKey( spep_3 + 34-3, ctbobo, 2.36, 2.36 );
setEffScaleKey( spep_3 + 36-3, ctbobo, 2.38, 2.38 );
setEffScaleKey( spep_3 + 38-3, ctbobo, 2.41, 2.41 );
setEffScaleKey( spep_3 + 40-3, ctbobo, 2.74, 2.74 );
setEffScaleKey( spep_3 + 42-3, ctbobo, 3.07, 3.07 );
setEffScaleKey( spep_3 + 44-3, ctbobo, 3.4, 3.4 );
setEffScaleKey( spep_3 + 46-3, ctbobo, 3.73, 3.73 );

setEffRotateKey( spep_3 + 20-3, ctbobo, 38.4 );
setEffRotateKey( spep_3 + 22-3, ctbobo, 38.5 );
setEffRotateKey( spep_3 + 28-3, ctbobo, 38.5 );
setEffRotateKey( spep_3 + 30-3, ctbobo, 38.4 );
setEffRotateKey( spep_3 + 46-3, ctbobo, 38.4 );

setEffAlphaKey( spep_3 + 20-3, ctbobo, 255 );
setEffAlphaKey( spep_3 + 38-3, ctbobo, 255 );
setEffAlphaKey( spep_3 + 40-3, ctbobo, 191 );
setEffAlphaKey( spep_3 + 42-3, ctbobo, 128 );
setEffAlphaKey( spep_3 + 44-3, ctbobo, 64 );
setEffAlphaKey( spep_3 + 46-3, ctbobo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 24, 1, 105 );

setMoveKey( spep_3 + 0, 1, -1, 10.5 , 0 );
setMoveKey( spep_3 + 2, 1, -1.2, 10.6 , 0 );
setMoveKey( spep_3 + 4, 1, -1.9, 10.8 , 0 );
setMoveKey( spep_3 + 6, 1, -3.1, 11.3 , 0 );
setMoveKey( spep_3 + 8, 1, -4.7, 11.9 , 0 );
setMoveKey( spep_3 + 10, 1, -7, 12.8 , 0 );
setMoveKey( spep_3 + 12, 1, -10, 13.8 , 0 );
setMoveKey( spep_3 + 14, 1, -13.6, 15.2 , 0 );
setMoveKey( spep_3 + 16, 1, -18.1, 16.8 , 0 );
setMoveKey( spep_3 + 18, 1, -23.6, 18.8 , 0 );
setMoveKey( spep_3 + 20, 1, -29.9, 21.2 , 0 );
setMoveKey( spep_3 + 22, 1, -52.4, 27.4 , 0 );
setMoveKey( spep_3 + 25, 1, -35.2, 34.2 , 0 );
setMoveKey( spep_3 + 26, 1, -56.3, 5.7 , 0 );
setMoveKey( spep_3 + 28, 1, -32.9, 44.1 , 0 );
setMoveKey( spep_3 + 30, 1, 13.4, 20.8 , 0 );
setMoveKey( spep_3 + 32, 1, 46.4, 11.8 , 0 );
setMoveKey( spep_3 + 34, 1, 30.8, 4 , 0 );
setMoveKey( spep_3 + 36, 1, 44.6, -6.7 , 0 );
setMoveKey( spep_3 + 38, 1, 86.7, 10.3 , 0 );
setMoveKey( spep_3 + 40, 1, 62.6, 4.7 , 0 );
setMoveKey( spep_3 + 42, 1, 69.9, 13.2 , 0 );
setMoveKey( spep_3 + 44, 1, 76.4, 6.5 , 0 );
setMoveKey( spep_3 + 46, 1, 82.4, 15 , 0 );
setMoveKey( spep_3 + 48, 1, 88, 7.9 , 0 );
setMoveKey( spep_3 + 50, 1, 93.2, 16 , 0 );
setMoveKey( spep_3 + 52, 1, 97.9, 8.6 , 0 );
setMoveKey( spep_3 + 54, 1, 102.3, 13.3 , 0 );
setMoveKey( spep_3 + 56, 1, 106.1, 8.9 , 0 );
setMoveKey( spep_3 + 58, 1, 109.5, 16.5 , 0 );
setMoveKey( spep_3 + 60, 1, 112.4, 8.8 , 0 );
setMoveKey( spep_3 + 62, 1, 114.8, 13.2 , 0 );
setMoveKey( spep_3 + 63, 1, 119.4, 7.9 , 0 );

setScaleKey( spep_3 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 6, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 8, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 10, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 12, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 14, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 16, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 18, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 20, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 22, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 25, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 26, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 28, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 30, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 32, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 34, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 36, 1, 0.96, 0.96 );
setScaleKey( spep_3 + 38, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 40, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 42, 1, 0.75, 0.75 );
setScaleKey( spep_3 + 44, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 46, 1, 0.65, 0.65 );
setScaleKey( spep_3 + 48, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 50, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 52, 1, 0.52, 0.52 );
setScaleKey( spep_3 + 54, 1, 0.48, 0.48 );
setScaleKey( spep_3 + 56, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 58, 1, 0.43, 0.43 );
setScaleKey( spep_3 + 60, 1, 0.41, 0.41 );
setScaleKey( spep_3 + 62, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 63, 1, 0.36, 0.36 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 20, 1, 0 );
setRotateKey( spep_3 + 22, 1, 2 );
setRotateKey( spep_3 + 25, 1, 4 );
setRotateKey( spep_3 + 26, 1, 6 );
setRotateKey( spep_3 + 28, 1, 13.2 );
setRotateKey( spep_3 + 30, 1, 18.5 );
setRotateKey( spep_3 + 32, 1, 22.8 );
setRotateKey( spep_3 + 34, 1, 26.3 );
setRotateKey( spep_3 + 36, 1, 29.1 );
setRotateKey( spep_3 + 38, 1, 31.5 );
setRotateKey( spep_3 + 40, 1, 33.6 );
setRotateKey( spep_3 + 42, 1, 35.3 );
setRotateKey( spep_3 + 44, 1, 36.8 );
setRotateKey( spep_3 + 46, 1, 38.1 );
setRotateKey( spep_3 + 48, 1, 39.2 );
setRotateKey( spep_3 + 50, 1, 40.1 );
setRotateKey( spep_3 + 52, 1, 40.9 );
setRotateKey( spep_3 + 54, 1, 41.6 );
setRotateKey( spep_3 + 56, 1, 42.1 );
setRotateKey( spep_3 + 58, 1, 42.6 );
setRotateKey( spep_3 + 60, 1, 43 );
setRotateKey( spep_3 + 62, 1, 43.3 );
setRotateKey( spep_3 + 63, 1, 43.9 );

-- ** 音 ** --
--飛行音
stopSe( spep_3 + 8, SE005, 0 );
--気弾道
SE015 = playSe( spep_3 + 0, 1021 );
--爆発
SE016 = playSe( spep_3 + 16, 1023 );
setSeVolumeByWorkId( spep_3 + 16, SE016, 86 );
SE017 = playSe( spep_3 + 28, 1011 );
setSeVolumeByWorkId( spep_3 + 28, SE017, 81 );
--敵飛んでいく
SE018 = playSe( spep_3 + 34, 1121 );
setSeVolumeByWorkId( spep_3 + 34, SE018, 32 );
SE019 = playSe( spep_3 + 34, 1183 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 64, 0, 0, 0, 0, 255);--黒背景

spep_4 = spep_3 + 64;
--------------------------------------
--爆発(86F)
--------------------------------------
-- ** エフェクト等 ** --
bakuhatsu_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --爆発（ef_004）
setEffMoveKey( spep_4 + 0, bakuhatsu_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, bakuhatsu_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuhatsu_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, bakuhatsu_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuhatsu_f, 0 );
setEffRotateKey( spep_4 + 86, bakuhatsu_f, 0 );
setEffAlphaKey( spep_4 + 0, bakuhatsu_f, 255 );
setEffAlphaKey( spep_4 + 86, bakuhatsu_f, 255 );

-- ** エフェクト等 ** --
bakuhatsu_b = entryEffect( spep_4 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --背景
setEffMoveKey( spep_4 + 0, bakuhatsu_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, bakuhatsu_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuhatsu_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, bakuhatsu_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuhatsu_b, 0 );
setEffRotateKey( spep_4 + 86, bakuhatsu_b, 0 );
setEffAlphaKey( spep_4 + 0, bakuhatsu_b, 255 );
setEffAlphaKey( spep_4 + 86, bakuhatsu_b, 255 );

-- ** 書き文字エントリー ** --
--ドゴォン
ctdogo = entryEffectLife( spep_4 + 24-4,  10018, 60, 0x100, -1, 0, 73.7, 107.9 );
setEffMoveKey( spep_4 + 24-4, ctdogo, 73.7, 107.9 , 0 );
setEffMoveKey( spep_4 + 26-4, ctdogo, 79.4, 123.7 , 0 );
setEffMoveKey( spep_4 + 28-4, ctdogo, 84.8, 146.8 , 0 );
setEffMoveKey( spep_4 + 30-4, ctdogo, 90.6, 160.5 , 0 );
setEffMoveKey( spep_4 + 32-4, ctdogo, 95.9, 185.8 , 0 );
setEffMoveKey( spep_4 + 34-4, ctdogo, 101.8, 197.4 , 0 );
setEffMoveKey( spep_4 + 36-4, ctdogo, 107, 224.7 , 0 );
setEffMoveKey( spep_4 + 38-4, ctdogo, 112.9, 234.2 , 0 );
setEffMoveKey( spep_4 + 40-4, ctdogo, 118, 263.7 , 0 );
setEffMoveKey( spep_4 + 42-4, ctdogo, 120.3, 257.4 , 0 );
setEffMoveKey( spep_4 + 44-4, ctdogo, 121.8, 273.3 , 0 );
setEffMoveKey( spep_4 + 46-4, ctdogo, 124.2, 267 , 0 );
setEffMoveKey( spep_4 + 48-4, ctdogo, 125.6, 283 , 0 );
setEffMoveKey( spep_4 + 50-4, ctdogo, 128, 276.5 , 0 );
setEffMoveKey( spep_4 + 52-4, ctdogo, 129.4, 292.6 , 0 );
setEffMoveKey( spep_4 + 54-4, ctdogo, 131.8, 286 , 0 );
setEffMoveKey( spep_4 + 56-4, ctdogo, 133.2, 302.3 , 0 );
setEffMoveKey( spep_4 + 58-4, ctdogo, 135.6, 295.5 , 0 );
setEffMoveKey( spep_4 + 60-4, ctdogo, 137.1, 312 , 0 );
setEffMoveKey( spep_4 + 62-4, ctdogo, 139.4, 305 , 0 );
setEffMoveKey( spep_4 + 64-4, ctdogo, 140.9, 321.6 , 0 );
setEffMoveKey( spep_4 + 66-4, ctdogo, 143.3, 314.5 , 0 );
setEffMoveKey( spep_4 + 68-4, ctdogo, 144.7, 331.3 , 0 );
setEffMoveKey( spep_4 + 70-4, ctdogo, 147.1, 324.1 , 0 );
setEffMoveKey( spep_4 + 72-4, ctdogo, 148.5, 340.9 , 0 );
setEffMoveKey( spep_4 + 74-4, ctdogo, 150.9, 333.6 , 0 );
setEffMoveKey( spep_4 + 76-4, ctdogo, 152.3, 350.6 , 0 );
setEffMoveKey( spep_4 + 78-4, ctdogo, 154.7, 343.1 , 0 );
setEffMoveKey( spep_4 + 80-4, ctdogo, 156.1, 360.2 , 0 );
setEffMoveKey( spep_4 + 82-4, ctdogo, 158.5, 352.6 , 0 );
setEffMoveKey( spep_4 + 84-4, ctdogo, 160.4, 357.4 , 0 );

setEffScaleKey( spep_4 + 24-4, ctdogo, 0.53, 0.53 );
setEffScaleKey( spep_4 + 26-4, ctdogo, 0.74, 0.74 );
setEffScaleKey( spep_4 + 28-4, ctdogo, 0.95, 0.95 );
setEffScaleKey( spep_4 + 30-4, ctdogo, 1.15, 1.15 );
setEffScaleKey( spep_4 + 32-4, ctdogo, 1.36, 1.36 );
setEffScaleKey( spep_4 + 34-4, ctdogo, 1.57, 1.57 );
setEffScaleKey( spep_4 + 36-4, ctdogo, 1.78, 1.78 );
setEffScaleKey( spep_4 + 38-4, ctdogo, 1.99, 1.99 );
setEffScaleKey( spep_4 + 40-4, ctdogo, 2.2, 2.2 );
setEffScaleKey( spep_4 + 42-4, ctdogo, 2.21, 2.21 );
setEffScaleKey( spep_4 + 44-4, ctdogo, 2.22, 2.22 );
setEffScaleKey( spep_4 + 46-4, ctdogo, 2.24, 2.24 );
setEffScaleKey( spep_4 + 48-4, ctdogo, 2.25, 2.25 );
setEffScaleKey( spep_4 + 50-4, ctdogo, 2.26, 2.27 );
setEffScaleKey( spep_4 + 52-4, ctdogo, 2.28, 2.28 );
setEffScaleKey( spep_4 + 54-4, ctdogo, 2.29, 2.29 );
setEffScaleKey( spep_4 + 56-4, ctdogo, 2.31, 2.31 );
setEffScaleKey( spep_4 + 58-4, ctdogo, 2.32, 2.32 );
setEffScaleKey( spep_4 + 60-4, ctdogo, 2.33, 2.33 );
setEffScaleKey( spep_4 + 62-4, ctdogo, 2.35, 2.35 );
setEffScaleKey( spep_4 + 64-4, ctdogo, 2.36, 2.36 );
setEffScaleKey( spep_4 + 66-4, ctdogo, 2.37, 2.37 );
setEffScaleKey( spep_4 + 68-4, ctdogo, 2.39, 2.39 );
setEffScaleKey( spep_4 + 70-4, ctdogo, 2.4, 2.4 );
setEffScaleKey( spep_4 + 72-4, ctdogo, 2.41, 2.41 );
setEffScaleKey( spep_4 + 74-4, ctdogo, 2.43, 2.43 );
setEffScaleKey( spep_4 + 76-4, ctdogo, 2.44, 2.44 );
setEffScaleKey( spep_4 + 78-4, ctdogo, 2.46, 2.46 );
setEffScaleKey( spep_4 + 80-4, ctdogo, 2.47, 2.47 );
setEffScaleKey( spep_4 + 82-4, ctdogo, 2.48, 2.48 );
setEffScaleKey( spep_4 + 84-4, ctdogo, 2.5, 2.5 );

setEffRotateKey( spep_4 + 24-4, ctdogo, 14.3 );
setEffRotateKey( spep_4 + 84-4, ctdogo, 14.3 );

setEffAlphaKey( spep_4 + 24-4, ctdogo, 28 );
setEffAlphaKey( spep_4 + 26-4, ctdogo, 57 );
setEffAlphaKey( spep_4 + 28-4, ctdogo, 85 );
setEffAlphaKey( spep_4 + 30-4, ctdogo, 113 );
setEffAlphaKey( spep_4 + 32-4, ctdogo, 142 );
setEffAlphaKey( spep_4 + 34-4, ctdogo, 170 );
setEffAlphaKey( spep_4 + 36-4, ctdogo, 198 );
setEffAlphaKey( spep_4 + 38-4, ctdogo, 227 );
setEffAlphaKey( spep_4 + 40-4, ctdogo, 255 );
setEffAlphaKey( spep_4 + 42-4, ctdogo, 243 );
setEffAlphaKey( spep_4 + 44-4, ctdogo, 232 );
setEffAlphaKey( spep_4 + 46-4, ctdogo, 220 );
setEffAlphaKey( spep_4 + 48-4, ctdogo, 209 );
setEffAlphaKey( spep_4 + 50-4, ctdogo, 197 );
setEffAlphaKey( spep_4 + 52-4, ctdogo, 185 );
setEffAlphaKey( spep_4 + 54-4, ctdogo, 174 );
setEffAlphaKey( spep_4 + 56-4, ctdogo, 162 );
setEffAlphaKey( spep_4 + 58-4, ctdogo, 151 );
setEffAlphaKey( spep_4 + 60-4, ctdogo, 139 );
setEffAlphaKey( spep_4 + 62-4, ctdogo, 128 );
setEffAlphaKey( spep_4 + 64-4, ctdogo, 116 );
setEffAlphaKey( spep_4 + 66-4, ctdogo, 104 );
setEffAlphaKey( spep_4 + 68-4, ctdogo, 93 );
setEffAlphaKey( spep_4 + 70-4, ctdogo, 81 );
setEffAlphaKey( spep_4 + 72-4, ctdogo, 70 );
setEffAlphaKey( spep_4 + 74-4, ctdogo, 58 );
setEffAlphaKey( spep_4 + 76-4, ctdogo, 46 );
setEffAlphaKey( spep_4 + 78-4, ctdogo, 35 );
setEffAlphaKey( spep_4 + 80-4, ctdogo, 23 );
setEffAlphaKey( spep_4 + 82-4, ctdogo, 12 );
setEffAlphaKey( spep_4 + 84-4, ctdogo, 0 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 86, 0x100, -1, 0, 299.2, 8 );  --集中線
setEffMoveKey(   spep_4 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey(   spep_4 + 86, shuchusen3, 0, 0 , 0 );
setEffScaleKey(  spep_4 + 0, shuchusen3, 1.4, 1.75 );
setEffScaleKey(  spep_4 + 86, shuchusen3, 1.4, 1.75 );
setEffRotateKey( spep_4 + 0, shuchusen3, 0 );
setEffRotateKey( spep_4 + 86, shuchusen3, 0 );
setEffAlphaKey(  spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey(  spep_4 + 86, shuchusen3, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 28, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, -339, -4.3 , 0 );
setMoveKey( spep_4 + 2, 1, -310.2, 3.7 , 0 );
setMoveKey( spep_4 + 4, 1, -258.7, 12.1 , 0 );
setMoveKey( spep_4 + 6, 1, -208, 19.7 , 0 );
setMoveKey( spep_4 + 8, 1, -160.4, 26.7 , 0 );
setMoveKey( spep_4 + 10, 1, -116.5, 33.1 , 0 );
setMoveKey( spep_4 + 12, 1, -76.6, 38.9 , 0 );
setMoveKey( spep_4 + 14, 1, -41.1, 44 , 0 );
setMoveKey( spep_4 + 16, 1, -10, 48.5 , 0 );
setMoveKey( spep_4 + 18, 1, 16.5, 52.2 , 0 );
setMoveKey( spep_4 + 20, 1, 38.3, 55.3 , 0 );
setMoveKey( spep_4 + 22, 1, 55.5, 57.6 , 0 );
setMoveKey( spep_4 + 24, 1, 67.9, 59.1 , 0 );
setMoveKey( spep_4 + 26, 1, 73.6, 52.8 , 0 );
setMoveKey( spep_4 + 28, 1, 84.3, 67.9 , 0 );

setScaleKey( spep_4 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 2, 1, 1.14, 1.14 );
setScaleKey( spep_4 + 4, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 6, 1, 0.87, 0.87 );
setScaleKey( spep_4 + 8, 1, 0.75, 0.75 );
setScaleKey( spep_4 + 10, 1, 0.63, 0.63 );
setScaleKey( spep_4 + 12, 1, 0.52, 0.52 );
setScaleKey( spep_4 + 14, 1, 0.43, 0.43 );
setScaleKey( spep_4 + 16, 1, 0.34, 0.34 );
setScaleKey( spep_4 + 18, 1, 0.27, 0.27 );
setScaleKey( spep_4 + 20, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 22, 1, 0.17, 0.17 );
setScaleKey( spep_4 + 24, 1, 0.13, 0.13 );
setScaleKey( spep_4 + 26, 1, 0.11, 0.11 );
setScaleKey( spep_4 + 28, 1, 0.1, 0.1 );

setRotateKey( spep_4 + 0, 1, 33.8 );
setRotateKey( spep_4 + 2, 1, 34.8 );
setRotateKey( spep_4 + 4, 1, 35.5 );
setRotateKey( spep_4 + 6, 1, 36.1 );
setRotateKey( spep_4 + 8, 1, 36.5 );
setRotateKey( spep_4 + 10, 1, 36.9 );
setRotateKey( spep_4 + 12, 1, 37.1 );
setRotateKey( spep_4 + 14, 1, 37.4 );
setRotateKey( spep_4 + 16, 1, 37.6 );
setRotateKey( spep_4 + 18, 1, 37.7 );
setRotateKey( spep_4 + 20, 1, 37.8 );
setRotateKey( spep_4 + 22, 1, 37.9 );
setRotateKey( spep_4 + 24, 1, 38 );
setRotateKey( spep_4 + 26, 1, 38 );
setRotateKey( spep_4 + 28, 1, 38.1 );

-- ** 音 ** --
--敵飛んでいく
stopSe( spep_4 + 32, SE018, 8 );
stopSe( spep_4 + 32, SE019, 8 );
--敵建物突っ込む
SE020 = playSe( spep_4 + 26, 1159 );
setSeVolumeByWorkId( spep_4 + 26, SE020, 46 );
SE021 = playSe( spep_4 + 26, 1023 );
setSeVolumeByWorkId( spep_4 + 26, SE021, 67 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 86, 0, 0, 0, 0, 255);   --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 20, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4 + 86;
--------------------------------------
--煙に向かっていくバビディ&ブウ(18F)
--------------------------------------
-- ** エフェクト等 ** --
kemuri = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --煙に向かっていくバビディ&ブウ（ef_005）
setEffMoveKey( spep_5 + 0, kemuri, 0, 0 , 0 );
setEffMoveKey( spep_5 + 18, kemuri, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kemuri, 1.0, 1.0 );
setEffScaleKey( spep_5 + 18, kemuri, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kemuri, 0 );
setEffRotateKey( spep_5 + 18, kemuri, 0 );
setEffAlphaKey( spep_5 + 0, kemuri, 255 );
setEffAlphaKey( spep_5 + 18, kemuri, 255 );

-- ** 音 ** --
--建物に近づく
SE022 = playSe( spep_5 + 0, 44 );
setSeVolumeByWorkId( spep_5 + 0, SE022, 64 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 18, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 10, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6 = spep_5 + 18;
--------------------------------------
--焦るバビディ(138F)
--------------------------------------
-- ** エフェクト等 ** --
aseru = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --焦るバビディ（ef_006）
setEffMoveKey( spep_6 + 0, aseru, 0, 0 , 0 );
setEffMoveKey( spep_6 + 138, aseru, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, aseru, 1.0, 1.0 );
setEffScaleKey( spep_6 + 138, aseru, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, aseru, 0 );
setEffRotateKey( spep_6 + 138, aseru, 0 );
setEffAlphaKey( spep_6 + 0, aseru, 255 );
setEffAlphaKey( spep_6 + 138, aseru, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_6 + 0, 906, 138, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 138, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen4, 1.05, 1.05 );
setEffScaleKey( spep_6 + 138, shuchusen4, 1.05, 1.05 );
setEffRotateKey( spep_6 + 0, shuchusen4, 0 );
setEffRotateKey( spep_6 + 138, shuchusen4, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 138, shuchusen4, 255 );

-- ** 音 ** --
--飛行音
SE023 = playSe( spep_6 + 6, 1019 );
setSeVolumeByWorkId( spep_6 + 6, SE023, 52 );
SE023_2 = playSe( spep_6 + 70, 1019 );
setSeVolumeByWorkId( spep_6 + 70, SE023_2, 52 );
SE023_3 = playSe( spep_6 + 134, 1019 );
setSeVolumeByWorkId( spep_6 + 134, SE023_3, 52 );

SE024 = playSe( spep_6 + 6, 1278 );
setSeVolumeByWorkId( spep_6 + 6, SE024, 57 );
stopSe( spep_6 + 112, SE024, 54 );
--バビディアップ
SE025 = playSe( spep_6 + 10, 48 );
--バビディ目をつぶる
SE026 = playSe( spep_6 + 106, 7 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 138, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_6 + 128, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_7 = spep_6 + 138;
--------------------------------------
--笑顔ブウ(128F)
--------------------------------------
-- ** エフェクト等 ** --
egao = entryEffect( spep_7 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --笑顔ブウ（ef_007）
setEffMoveKey( spep_7 + 0, egao, 0, 0 , 0 );
setEffMoveKey( spep_7 + 128, egao, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, egao, 1.0, 1.0 );
setEffScaleKey( spep_7 + 128, egao, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, egao, 0 );
setEffRotateKey( spep_7 + 128, egao, 0 );
setEffAlphaKey( spep_7 + 0, egao, 255 );
setEffAlphaKey( spep_7 + 128, egao, 255 );

-- ** 音 ** --
--バビディ目をつぶる
a = 10;
SE027 = playSe( spep_7 + 12-a, 1027 );
setSeVolumeByWorkId( spep_7 + 12-a, SE027, 0 );
setSeVolumeByWorkId( spep_7 + 13-a, SE027, 5 );
setSeVolumeByWorkId( spep_7 + 14-a, SE027, 10 );
setSeVolumeByWorkId( spep_7 + 15-a, SE027, 15 );
setSeVolumeByWorkId( spep_7 + 16-a, SE027, 20 );
setSeVolumeByWorkId( spep_7 + 17-a, SE027, 25 );
setSeVolumeByWorkId( spep_7 + 18-a, SE027, 30 );
setSeVolumeByWorkId( spep_7 + 19-a, SE027, 35 );
setSeVolumeByWorkId( spep_7 + 20-a, SE027, 40 );
setSeVolumeByWorkId( spep_7 + 21-a, SE027, 45 );
setSeVolumeByWorkId( spep_7 + 22-a, SE027, 50 );
setSeVolumeByWorkId( spep_7 + 23-a, SE027, 55 );
setSeVolumeByWorkId( spep_7 + 24-a, SE027, 60 );
setSeVolumeByWorkId( spep_7 + 25-a, SE027, 65 );
setSeVolumeByWorkId( spep_7 + 26-a, SE027, 70 );
setSeVolumeByWorkId( spep_7 + 27-a, SE027, 75 );
setSeVolumeByWorkId( spep_7 + 28-a, SE027, 80 );
setPitch( spep_7 + 12-a, SE027, -600 );
setTimeStretch( SE027, 0.6, 10, 1 );

--飛行音
SE023_4 = playSe( spep_7 + 60, 1019 );
setSeVolumeByWorkId( spep_7 + 60, SE023_4, 52 );
SE023_5 = playSe( spep_7 + 124, 1019 );
setSeVolumeByWorkId( spep_7 + 124, SE023_5, 52 );

--ブゥ悪い顔
SE028 = playSe( spep_7 + 50, 37 );
setSeVolumeByWorkId( spep_7 + 50, SE028, 123 );
setPitch( spep_7 + 50, SE028, 100 );
setTimeStretch( SE028, 1.07, 10, 1 );
--ブゥアップ
SE029 = playSe( spep_7 + 90, 1072 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 128, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_7 + 118, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_8 = spep_7 + 128;
--------------------------------------
--ビル突き抜け（118F）
--------------------------------------
-- ** エフェクト等 ** --
buill = entryEffect( spep_8 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --ビル突き抜け	ef_008
setEffMoveKey( spep_8 + 0, buill, 0, 0 , 0 );
setEffMoveKey( spep_8 + 118, buill, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, buill, 1.0, 1.0 );
setEffScaleKey( spep_8 + 118, buill, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, buill, 0 );
setEffRotateKey( spep_8 + 118, buill, 0 );
setEffAlphaKey( spep_8 + 0, buill, 255 );
setEffAlphaKey( spep_8 + 118, buill, 255 );

-- ** 音 ** --
--飛行音
stopSe( spep_8 + 50, SE023_5, 26 );
--ブゥたち建物に突っ込む
SE030 = playSe( spep_8 + 24, 1068 );
setSeVolumeByWorkId( spep_8 + 24, SE030, 54 );
SE031 = playSe( spep_8 + 24, 1033 );
setSeVolumeByWorkId( spep_8 + 24, SE031, 57 );

--建物から出てくる
SE032 = playSe( spep_8 + 64, 1067 );
SE033 = playSe( spep_8 + 64, 1024 );
setSeVolumeByWorkId( spep_8 + 64, SE033, 92 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 118, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_8 + 108, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_9 = spep_8 + 118;
--------------------------------------
--去るバビディ&ブウ（114F）
--------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --ビル突き抜け	ef_008
setEffMoveKey( spep_9 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_9 + 124, finish, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 124, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 124, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 124, finish, 255 );
-- ** 音 ** --
--炎
SE034 = playSe( spep_9 + 0, 1268 );
setSeVolumeByWorkId( spep_9 + 0, SE034, 200 );
--飛んでくる
SE035 = playSe( spep_9 + 10, 8 );
setSeVolumeByWorkId( spep_9 + 10, SE035, 180 );
setPitch( spep_9 + 10, SE035, -600 );
setTimeStretch( SE035, 0.6, 30, 6 );
SE036 = playSe( spep_9 + 18, 1232 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 124, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_9 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFade( spep_9 + 106, 22, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 20 );
endPhase( spep_9 + 114 );

end