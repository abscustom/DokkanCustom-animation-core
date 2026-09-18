--1017061:マイ(未来)_閃光弾
--sp_effect_a8_00021
--sp0267

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = 247;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1016; --発射
SE_07 = 1017; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1032; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

SP_01 = 108045;
SP_02 = 108045;
SP_03 = 108046;

setVisibleUI( 0, 0);
changeAnime( 0, 0, 30);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);

setShakeChara( 0, 0, 100, 15);

SP_start =-69;

c_offset = 4;
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
--setVisibleUI( SP_start+69, 0);

entryEffectLife( SP_start+  70,   1503,  100, 0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffectLife( SP_start+  70,   1502,  100, 0,     -1,  0,  0,  0);   -- eff_003 (気)

speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( SP_start+ 80, SE_04);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, c);

setScaleKey(   SP_start+ 169,   0, 1.5, 1.5);

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 2, 2);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);

-- ** カードカットイン ** --
-- speff2 = entryEffectLife( SP_start + 170, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( SP_start + 170, SE_05);
    speff = entryEffect( SP_start + 170, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
     
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( SP_start + 170, SE_05);
    speff = entryEffect( SP_start + 170, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
     
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( SP_start + 170, SE_05);
    speff = entryEffect( SP_start + 170, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end

-- ** 集中線 ** --
shuchusen = entryEffectLife( SP_start + 170, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( SP_start + 170, shuchusen, 90, 20 );
setEffMoveKey( SP_start + 170, shuchusen, 0, 0 , 0 );
setEffMoveKey( SP_start + 260, shuchusen, 0, 0 , 0 );
setEffScaleKey( SP_start + 170, shuchusen, 1.6, 1.6 );
setEffScaleKey( SP_start + 260, shuchusen, 1.6, 1.6 );
setEffRotateKey( SP_start + 170, shuchusen, 0 );
setEffRotateKey( SP_start + 260, shuchusen, 0 );
setEffAlphaKey( SP_start + 170, shuchusen, 255 );
setEffAlphaKey( SP_start + 260, shuchusen, 255 );
 
-- ** 音 ** --
-- playSe( SP_start + 170, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( SP_start + 170, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( SP_start + 170, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( SP_start + 250, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260 + c_offset, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( SP_start+  259 + c_offset,    0,      0,  0,   0);
setMoveKey( SP_start+  260 + c_offset,    0,   -600,  0,   0);
setMoveKey( SP_start+  261 + c_offset,    0,   -600,  0,   0);
setMoveKey( SP_start+  270 + c_offset,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( SP_start+ 260 + c_offset, SP_02, 109, 0x40,  0,  300,  100,  120);   -- 伸びるかめはめ波

playSe( SP_start+ 270 + c_offset, 1003);
SE001 = playSe( SP_start+ 310 + c_offset, 1053);--1019

-- spname = entryEffect( SP_start+ 257 + c_offset, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
-- setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey( SP_start+  299 + c_offset,    0,   -100,  0,   0);
setMoveKey( SP_start+  300 + c_offset,    0,   -100,  0,   0);
setMoveKey( SP_start+  308 + c_offset,    0,   -900,  0,   0);

entryFade( SP_start+ 365 + c_offset, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260 + c_offset, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_start+ 260 + c_offset, 0, 40, 0, 0, 0, 0, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_start+ 300 + c_offset, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SP_start+ 260 + c_offset, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( SP_start+ 305 + c_offset, 0, 54, 50);

shuchusen = entryEffectLife( SP_start+ 260 + c_offset, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 260 + c_offset, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 300 + c_offset, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 309 + c_offset, shuchusen, 2.0, 2.0);

-- 書き文字エントリー

ct = entryEffectLife( SP_start+ 268 + c_offset, 10022, 32, 0, -1, 0, 200, 300); -- バッ
setEffShake( SP_start+268 + c_offset, ct, 32, 5);
setEffAlphaKey( SP_start+268 + c_offset, ct, 255);
setEffAlphaKey( SP_start+290 + c_offset, ct, 255);
setEffAlphaKey( SP_start+300 + c_offset, ct, 0);
setEffScaleKey( SP_start+268 + c_offset, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272 + c_offset, ct, 1.3, 1.3);
setEffScaleKey( SP_start+292 + c_offset, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300 + c_offset, ct, 6.0, 6.0);

--playSe( SP_start+ 300 + c_offset, SE_07);
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
SE002 = playSe( SP_start+ 370 + c_offset, 1053);--1019

setDisp( SP_start+ 370 + c_offset, 0, 0);
setDisp( SP_start+ 370 + c_offset, 1, 1);
changeAnime( SP_start+ 370 + c_offset, 1, 104);                        -- ガード
setMoveKey( SP_start+  369 + c_offset,    1,  235,  0,   0);
setMoveKey( SP_start+  370 + c_offset,    1,  235,  0,   0);
setMoveKey( SP_start+  371 + c_offset,    1,  235,  0,   0);
setScaleKey( SP_start+ 369 + c_offset,    1,  0.7, 0.7);
setScaleKey( SP_start+ 370 + c_offset,    1,  0.7, 0.7);

setMoveKey( SP_start+  400 + c_offset,    1,   120,  0,   0);
setScaleKey( SP_start+  400 + c_offset,   1,   1.6,  1.6);

--playSe( SP_start+ 390, 1043);

kamehame_beam2 = entryEffect( SP_start+ 370 + c_offset, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setDamage( SP_start+ 452 + c_offset, 1, 0);  -- ダメージ振動等

playSe( SP_start+ 425 + c_offset, SE_10);
playSe( SP_start+ 445 + c_offset, SE_10);

-- 敵吹っ飛ぶモーション
changeAnime( SP_start+ 455 + c_offset, 1, 108);
--entryEffectLife( SP_start+ 455 + c_offset, 10018, 10, 0, 0, 0, 60, 90); -- ズドドッ
setMoveKey( SP_start+  455 + c_offset, 1,  120,    0,  0);
setMoveKey( SP_start+  469 + c_offset, 1,  400,    0,  0);
setScaleKey( SP_start+ 455 + c_offset, 1,  1.6, 1.6);
setScaleKey( SP_start+ 458 + c_offset, 1,  1.5, 1.5);
setScaleKey( SP_start+ 468 + c_offset, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370 + c_offset, 1, 99, 20);

entryFadeBg( SP_start+ 370 + c_offset, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_start+ 370 + c_offset, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 425 + c_offset, 10022, 99, 0, -1, 0, 0, 255); -- バッ
setEffShake( SP_start+425 + c_offset, ct, 99, 20);
setEffScaleKey( SP_start+ 425 + c_offset, ct, 2.4, 2.4);
setEffScaleKey( SP_start+ 455 + c_offset, ct, 2.4, 2.4);
setEffScaleKey( SP_start+ 465 + c_offset, ct, 5.4, 5.4);
setEffRotateKey( SP_start+425 + c_offset, ct, 10);
setEffAlphaKey( SP_start+425 + c_offset, ct, 255);
setEffAlphaKey( SP_start+455 + c_offset, ct, 255);
setEffAlphaKey( SP_start+465 + c_offset, ct, 0);

entryFade( SP_start+ 462 + c_offset, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = 330 + c_offset; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe ( SP_dodge-12, SE001, 0);
stopSe ( SP_dodge-12, SE002, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_start+ 469 + c_offset, 1, 1);
setMoveKey( SP_start+  469 + c_offset,    1,  100,  0,   0);
setScaleKey( SP_start+ 469 + c_offset,    1,  1.0, 1.0);
setMoveKey( SP_start+  470 + c_offset,    1,    0,   0,   128);
setScaleKey( SP_start+ 470 + c_offset,    1,  0.1, 0.1);

changeAnime( SP_start+ 470 + c_offset, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start+ 478 + c_offset, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+ 478 + c_offset, SE_10);

setMoveKey( SP_start+  478 + c_offset,   1,    0,   0,   128);
setMoveKey( SP_start+  485 + c_offset,   1,  -60,  -200,  -100);
--setMoveKey( SP_start+  486 + c_offset,   1,  -60,  -200,  -100);
setDamage( SP_start+ 486 + c_offset, 1, 0);  -- ダメージ振動等
setShake( SP_start+477 + c_offset,6,15);
setShake( SP_start+483 + c_offset,15,10);

setRotateKey( SP_start+ 470 + c_offset,  1,  30 );
setRotateKey( SP_start+ 472 + c_offset,  1,  80 );
setRotateKey( SP_start+ 474 + c_offset,  1, 120 );
setRotateKey( SP_start+ 476 + c_offset,  1, 160 );
setRotateKey( SP_start+ 478 + c_offset,  1, 200 );
setRotateKey( SP_start+ 480 + c_offset,  1, 260 );
setRotateKey( SP_start+ 482 + c_offset,  1, 320 );
setRotateKey( SP_start+ 484 + c_offset,  1,   0 );

setShakeChara( SP_start+ 485 + c_offset, 1, 5,  10);
setShakeChara( SP_start+ 490 + c_offset, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 485 + c_offset, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+485 + c_offset, ct, 30, 10);
setEffRotateKey( SP_start+ 485 + c_offset, ct, -40);
setEffScaleKey( SP_start+ 485 + c_offset, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ 486 + c_offset, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ 487 + c_offset, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ 488 + c_offset, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ 489 + c_offset, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ 490 + c_offset, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ 580 + c_offset, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ 485 + c_offset, ct, 255);
setEffAlphaKey( SP_start+ 575 + c_offset, ct, 255);
setEffAlphaKey( SP_start+ 585 + c_offset, ct, 0);

playSe( SP_start+ 473 + c_offset, SE_11);
shuchusen = entryEffectLife( SP_start+ 473 + c_offset, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ 473 + c_offset, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+486 + c_offset);
endPhase( SP_start+580 + c_offset);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
--kame_flag = 0x00;
--if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
--setVisibleUI( SP_start+69, 0);

entryEffectLife( SP_start+  70,   1503,  100, 0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffectLife( SP_start+  70,   1502,  100, 0,     -1,  0,  0,  0);   -- eff_003 (気)

--speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( SP_start+ 80, SE_04);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, c);

setScaleKey(   SP_start+ 169,   0, 1.5, 1.5);

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 2, 2);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);

-- ** カードカットイン ** --
-- speff2 = entryEffectLife( SP_start + 170, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( SP_start + 170, SE_05);
    speff = entryEffect( SP_start + 170, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
     
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( SP_start + 170, SE_05);
    speff = entryEffect( SP_start + 170, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
     
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( SP_start + 170, SE_05);
    speff = entryEffect( SP_start + 170, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end

-- ** 集中線 ** --
shuchusen = entryEffectLife( SP_start + 170, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( SP_start + 170, shuchusen, 90, 20 );
setEffMoveKey( SP_start + 170, shuchusen, 0, 0 , 0 );
setEffMoveKey( SP_start + 260, shuchusen, 0, 0 , 0 );
setEffScaleKey( SP_start + 170, shuchusen, 1.6, 1.6 );
setEffScaleKey( SP_start + 260, shuchusen, 1.6, 1.6 );
setEffRotateKey( SP_start + 170, shuchusen, 0 );
setEffRotateKey( SP_start + 260, shuchusen, 0 );
setEffAlphaKey( SP_start + 170, shuchusen, 255 );
setEffAlphaKey( SP_start + 260, shuchusen, 255 );
 
-- ** 音 ** --
-- playSe( SP_start + 170, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( SP_start + 170, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( SP_start + 170, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( SP_start + 250, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260 + c_offset, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( SP_start+  259 + c_offset,    0,      0,  0,   0);
setMoveKey( SP_start+  260 + c_offset,    0,   -600,  0,   0);
setMoveKey( SP_start+  261 + c_offset,    0,   -600,  0,   0);
setMoveKey( SP_start+  270 + c_offset,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( SP_start+ 260 + c_offset, SP_02, 109, 0x40,  0,  300,  100,  120);   -- 伸びるかめはめ波

playSe( SP_start+ 270 + c_offset, 1003);
SE001 = playSe( SP_start+ 310 + c_offset, 1053);--1019

-- spname = entryEffect( SP_start+ 257 + c_offset, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
-- setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey( SP_start+  299 + c_offset,    0,   -100,  0,   0);
setMoveKey( SP_start+  300 + c_offset,    0,   -100,  0,   0);
setMoveKey( SP_start+  308 + c_offset,    0,   -900,  0,   0);

entryFade( SP_start+ 365 + c_offset, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260 + c_offset, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_start+ 260 + c_offset, 0, 40, 0, 0, 0, 0, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_start+ 300 + c_offset, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SP_start+ 260 + c_offset, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( SP_start+ 305 + c_offset, 0, 54, 50);

shuchusen = entryEffectLife( SP_start+ 260 + c_offset, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 260 + c_offset, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 300 + c_offset, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 309 + c_offset, shuchusen, 2.0, 2.0);

-- 書き文字エントリー

ct = entryEffectLife( SP_start+ 268 + c_offset, 10022, 32, 0, -1, 0, 200, 300); -- バッ
setEffShake( SP_start+268 + c_offset, ct, 32, 5);
setEffAlphaKey( SP_start+268 + c_offset, ct, 255);
setEffAlphaKey( SP_start+290 + c_offset, ct, 255);
setEffAlphaKey( SP_start+300 + c_offset, ct, 0);
setEffScaleKey( SP_start+268 + c_offset, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272 + c_offset, ct, 1.3, 1.3);
setEffScaleKey( SP_start+292 + c_offset, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300 + c_offset, ct, 6.0, 6.0);

--playSe( SP_start+ 300 + c_offset, SE_07);
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
SE002 = playSe( SP_start+ 370 + c_offset, 1053);--1019

setDisp( SP_start+ 370 + c_offset, 0, 0);
setDisp( SP_start+ 370 + c_offset, 1, 1);
changeAnime( SP_start+ 370 + c_offset, 1, 104);                        -- ガード
setMoveKey( SP_start+  369 + c_offset,    1,  235,  0,   0);
setMoveKey( SP_start+  370 + c_offset,    1,  235,  0,   0);
setMoveKey( SP_start+  371 + c_offset,    1,  235,  0,   0);
setScaleKey( SP_start+ 369 + c_offset,    1,  0.7, 0.7);
setScaleKey( SP_start+ 370 + c_offset,    1,  0.7, 0.7);

setMoveKey( SP_start+  400 + c_offset,    1,   120,  0,   0);
setScaleKey( SP_start+  400 + c_offset,   1,   1.6,  1.6);

--playSe( SP_start+ 390, 1043);

kamehame_beam2 = entryEffect( SP_start+ 370 + c_offset, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setDamage( SP_start+ 452 + c_offset, 1, 0);  -- ダメージ振動等

playSe( SP_start+ 425 + c_offset, SE_10);
playSe( SP_start+ 445 + c_offset, SE_10);

-- 敵吹っ飛ぶモーション
changeAnime( SP_start+ 455 + c_offset, 1, 108);
--entryEffectLife( SP_start+ 455 + c_offset, 10018, 10, 0, 0, 0, 60, 90); -- ズドドッ
setMoveKey( SP_start+  455 + c_offset, 1,  120,    0,  0);
setMoveKey( SP_start+  469 + c_offset, 1,  400,    0,  0);
setScaleKey( SP_start+ 455 + c_offset, 1,  1.6, 1.6);
setScaleKey( SP_start+ 458 + c_offset, 1,  1.5, 1.5);
setScaleKey( SP_start+ 468 + c_offset, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370 + c_offset, 1, 99, 20);

entryFadeBg( SP_start+ 370 + c_offset, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_start+ 370 + c_offset, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 425 + c_offset, 10022, 99, 0, -1, 0, 0, 255); -- バッ
setEffShake( SP_start+425 + c_offset, ct, 99, 20);
setEffScaleKey( SP_start+ 425 + c_offset, ct, 2.4, 2.4);
setEffScaleKey( SP_start+ 455 + c_offset, ct, 2.4, 2.4);
setEffScaleKey( SP_start+ 465 + c_offset, ct, 5.4, 5.4);
setEffRotateKey( SP_start+425 + c_offset, ct, 10);
setEffAlphaKey( SP_start+425 + c_offset, ct, 255);
setEffAlphaKey( SP_start+455 + c_offset, ct, 255);
setEffAlphaKey( SP_start+465 + c_offset, ct, 0);

entryFade( SP_start+ 462 + c_offset, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------
if (_IS_DODGE_ == 1) then

SP_dodge = 330 + c_offset; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe ( SP_dodge-12, SE001, 0);
stopSe ( SP_dodge-12, SE002, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_start+ 469 + c_offset, 1, 1);
setMoveKey( SP_start+  469 + c_offset,    1,  100,  0,   0);
setScaleKey( SP_start+ 469 + c_offset,    1,  1.0, 1.0);
setMoveKey( SP_start+  470 + c_offset,    1,    0,   0,   128);
setScaleKey( SP_start+ 470 + c_offset,    1,  0.1, 0.1);

changeAnime( SP_start+ 470 + c_offset, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start+ 478 + c_offset, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+ 478 + c_offset, SE_10);

setMoveKey( SP_start+  478 + c_offset,   1,    0,   0,   128);
setMoveKey( SP_start+  485 + c_offset,   1,  -60,  -200,  -100);
--setMoveKey( SP_start+  486 + c_offset,   1,  -60,  -200,  -100);
setDamage( SP_start+ 486 + c_offset, 1, 0);  -- ダメージ振動等
setShake( SP_start+477 + c_offset,6,15);
setShake( SP_start+483 + c_offset,15,10);

setRotateKey( SP_start+ 470 + c_offset,  1,  30 );
setRotateKey( SP_start+ 472 + c_offset,  1,  80 );
setRotateKey( SP_start+ 474 + c_offset,  1, 120 );
setRotateKey( SP_start+ 476 + c_offset,  1, 160 );
setRotateKey( SP_start+ 478 + c_offset,  1, 200 );
setRotateKey( SP_start+ 480 + c_offset,  1, 260 );
setRotateKey( SP_start+ 482 + c_offset,  1, 320 );
setRotateKey( SP_start+ 484 + c_offset,  1,   0 );

setShakeChara( SP_start+ 485 + c_offset, 1, 5,  10);
setShakeChara( SP_start+ 490 + c_offset, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 485 + c_offset, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+485 + c_offset, ct, 30, 10);
setEffRotateKey( SP_start+ 485 + c_offset, ct, -40);
setEffScaleKey( SP_start+ 485 + c_offset, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ 486 + c_offset, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ 487 + c_offset, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ 488 + c_offset, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ 489 + c_offset, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ 490 + c_offset, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ 580 + c_offset, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ 485 + c_offset, ct, 255);
setEffAlphaKey( SP_start+ 575 + c_offset, ct, 255);
setEffAlphaKey( SP_start+ 585 + c_offset, ct, 0);

playSe( SP_start+ 473 + c_offset, SE_11);
shuchusen = entryEffectLife( SP_start+ 473 + c_offset, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ 473 + c_offset, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+486 + c_offset);
endPhase( SP_start+580 + c_offset);

end

