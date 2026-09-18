-- 1009941：超サイヤ人孫悟空_かめはめ波 sp0001流用
-- 1030230：超サイヤ人孫悟空_かめはめ波
--sp2837

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+45;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;
SE_13 = 1013;
SE_14 = 1233;

SP_01 = 100000
SP_02 = 100001
SP_03 = 100002

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   168,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

setVisibleUI(0, 0);
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
--entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
--entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001

--playSe( 30, SE_01);
--playSe( 50, SE_03);
--playSe( 70, SE_03);

playSe( 30, SE_13);
playSe( 24, SE_14);

entryFade( 61, 4, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
--playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

--entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

playSe( 90, SE_03);
playSe( 110, SE_03);
playSe( 130, SE_03);
playSe( 150, SE_03);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 163, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -30); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);
--[[
playSe( 170, SE_05);
speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
]]
spep_x=170;

--極限対応
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_x, SE_05);
    speff = entryEffect( spep_x, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_x, SE_05);
    speff = entryEffect( spep_x, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_x, SE_05);
    speff = entryEffect( spep_x, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    
    shuchusen = entryEffectLife( spep_x, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線
    
    setEffMoveKey(  spep_x,  shuchusen,  0,  0);
    setEffScaleKey(  spep_x,  shuchusen,  1.0,  1.0);
    setEffRotateKey(  spep_x,  shuchusen,  0);
    setEffAlphaKey(  spep_x,  shuchusen,  255);
    setEffMoveKey(  spep_x+94,  shuchusen,  0,  0);
    setEffScaleKey(  spep_x+94,  shuchusen,  1.0,  1.0);
    setEffRotateKey(  spep_x+94,  shuchusen,  0);
    setEffAlphaKey(  spep_x+94,  shuchusen,  255);

entryFade( 255, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 264, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  263,    0,      0,  0,   0);
setMoveKey(  264,    0,   -600,  0,   0);
setMoveKey(  265,    0,   -600,  0,   0);
setMoveKey(  274,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( 264, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

SE001 = playSe( 264, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  303,    0,   -100,  0,   0);
setMoveKey(  304,    0,   -100,  0,   0);
setMoveKey(  312,    0,   -1100,  0,   0);

entryFade( 369, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 264, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 264, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 304, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( 264, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 309, 0, 54, 50);

shuchusen = entryEffectLife( 264, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 264, shuchusen, 1.0, 1.0);
setEffScaleKey( 304, shuchusen, 1.0, 1.0);
setEffScaleKey( 313, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 272, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(272, ct, 32, 5);
setEffAlphaKey(272, ct, 255);
setEffAlphaKey(294, ct, 255);
setEffAlphaKey(304, ct, 0);
setEffScaleKey(272, ct, 0.0, 0.0);
setEffScaleKey(276, ct, 1.3, 1.3);
setEffScaleKey(296, ct, 1.3, 1.3);
setEffScaleKey(304, ct, 6.0, 6.0);
SE002 = playSe( 304, SE_07);


------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( 374, 0, 0);
setDisp( 374, 1, 1);
changeAnime( 374, 1, 104);                        -- ガード
setMoveKey(  373,    1,  235,  0,   0);
setMoveKey(  374,    1,  235,  0,   0);
setMoveKey(  375,    1,  235,  0,   0);
setScaleKey( 373,    1,  0.7, 0.7);
setScaleKey( 374,    1,  0.7, 0.7);

setMoveKey(  404,    1,   120,  0,   0);
setScaleKey(  404,   1,   1.6,  1.6);

kamehame_beam2 = entryEffect( 374, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(374, kamehame_beam2, 1, 1);
setEffScaleKey(456, kamehame_beam2, 1, 1);
setEffScaleKey(458, kamehame_beam2, 2.5, 2.5);
setDamage( 456, 1, 0);  -- ダメージ振動等

-- 敵吹っ飛ぶモーション
changeAnime( 459, 1, 108);
setMoveKey(  459, 1,  120,    0,  0);
setMoveKey(  473, 1,  400,    0,  0);
setScaleKey( 459, 1,  1.6, 1.6);
setScaleKey( 462, 1,  1.5, 1.5);
setScaleKey( 472, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( 374, 1, 99, 20);

entryFadeBg( 374, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( 374, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( 374, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(374, ct, 99, 20);
setEffScaleKey( 374, ct, 2.4, 2.4);
setEffRotateKey(374, ct, 70);
setEffAlphaKey(374, ct, 255);
setEffAlphaKey(434, ct, 255);
setEffAlphaKey(454, ct, 0);

entryFade( 464, 6,  12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 402; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge - 12, SE001, 0 );
stopSe( SP_dodge - 12, SE002, 0 );

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

playSe( 394, SE_06);
playSe( 459, SE_09);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( 473, 1, 1);
setDisp( 577, 1, 0);
setMoveKey(  473,    1,  100,  0,   0);
setScaleKey( 473,    1,  1.0, 1.0);
setMoveKey(  474,    1,    0,   0,   128);
setScaleKey( 474,    1,  0.1, 0.1);

changeAnime( 474, 1, 107);                         -- 手前ダメージ
entryEffect( 482, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 482, SE_10);

setMoveKey(  482,   1,    0,   0,   128);
setMoveKey(  489,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( 490, 1, 0);  -- ダメージ振動等
setShake(481,6,15);
setShake(487,15,10);

setRotateKey( 474,  1,  30 );
setRotateKey( 476,  1,  80 );
setRotateKey( 478,  1, 120 );
setRotateKey( 480,  1, 160 );
setRotateKey( 482,  1, 200 );
setRotateKey( 484,  1, 260 );
setRotateKey( 486,  1, 320 );
setRotateKey( 488,  1,   0 );

setShakeChara( 489, 1, 5,  10);
setShakeChara( 494, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( 489, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(489, ct, 30, 10);
setEffRotateKey( 489, ct, -40);
setEffScaleKey( 489, ct, 4.0, 4.0);
setEffScaleKey( 490, ct, 2.0, 2.0);
setEffScaleKey( 491, ct, 2.6, 2.6);
setEffScaleKey( 492, ct, 4.0, 4.0);
setEffScaleKey( 493, ct, 2.6, 2.6);
setEffScaleKey( 494, ct, 3.8, 3.8);
setEffScaleKey( 584, ct, 3.8, 3.8);
setEffAlphaKey( 489, ct, 255);
setEffAlphaKey( 579, ct, 255);
setEffAlphaKey( 589, ct, 0);

playSe( 477, SE_11);
shuchusen = entryEffectLife( 477, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( 477, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(490);

--entryFade( 570, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(574);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
--entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
--entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001

--playSe( 30, SE_01);
--playSe( 50, SE_03);
--playSe( 70, SE_03);

playSe( 30, SE_13);
playSe( 24, SE_14);

entryFade( 61, 4, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
--playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

--entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

playSe( 90, SE_03);
playSe( 110, SE_03);
playSe( 130, SE_03);
playSe( 150, SE_03);

kame_hand = entryEffect( 70, SP_01, 0x40+0x80,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 163, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -30); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);

playSe( 170, SE_05);
speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

spep_x=170;

entryFade( 255, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 264, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  263,    0,      0,  0,   0);
setMoveKey(  264,    0,   -600,  0,   0);
setMoveKey(  265,    0,   -600,  0,   0);
setMoveKey(  274,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( 264, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

SE001 = playSe( 264, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  303,    0,   -100,  0,   0);
setMoveKey(  304,    0,   -100,  0,   0);
setMoveKey(  312,    0,   -1100,  0,   0);

entryFade( 369, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 264, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 264, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 304, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( 264, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 309, 0, 54, 50);

shuchusen = entryEffectLife( 264, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 264, shuchusen, 1.0, 1.0);
setEffScaleKey( 304, shuchusen, 1.0, 1.0);
setEffScaleKey( 313, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 272, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(272, ct, 32, 5);
setEffAlphaKey(272, ct, 255);
setEffAlphaKey(294, ct, 255);
setEffAlphaKey(304, ct, 0);
setEffScaleKey(272, ct, 0.0, 0.0);
setEffScaleKey(276, ct, 1.3, 1.3);
setEffScaleKey(296, ct, 1.3, 1.3);
setEffScaleKey(304, ct, 6.0, 6.0);
SE002 = playSe( 304, SE_07);


------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( 374, 0, 0);
setDisp( 374, 1, 1);
changeAnime( 374, 1, 104);                        -- ガード
setMoveKey(  373,    1,  235,  0,   0);
setMoveKey(  374,    1,  235,  0,   0);
setMoveKey(  375,    1,  235,  0,   0);
setScaleKey( 373,    1,  0.7, 0.7);
setScaleKey( 374,    1,  0.7, 0.7);

setMoveKey(  404,    1,   120,  0,   0);
setScaleKey(  404,   1,   1.6,  1.6);

kamehame_beam2 = entryEffect( 374, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(374, kamehame_beam2, 1, 1);
setEffScaleKey(456, kamehame_beam2, 1, 1);
setEffScaleKey(458, kamehame_beam2, 2.5, 2.5);
setDamage( 456, 1, 0);  -- ダメージ振動等

-- 敵吹っ飛ぶモーション
changeAnime( 459, 1, 108);
setMoveKey(  459, 1,  120,    0,  0);
setMoveKey(  473, 1,  400,    0,  0);
setScaleKey( 459, 1,  1.6, 1.6);
setScaleKey( 462, 1,  1.5, 1.5);
setScaleKey( 472, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( 374, 1, 99, 20);

entryFadeBg( 374, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( 374, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( 374, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(374, ct, 99, 20);
setEffScaleKey( 374, ct, 2.4, 2.4);
setEffRotateKey(374, ct, 0);
setEffAlphaKey(374, ct, 255);
setEffAlphaKey(434, ct, 255);
setEffAlphaKey(454, ct, 0);

entryFade( 464, 6,  12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 402; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge - 12, SE001, 0 );
stopSe( SP_dodge - 12, SE002, 0 );

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

playSe( 394, SE_06);
playSe( 459, SE_09);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( 473, 1, 1);
setDisp( 577, 1, 0);
setMoveKey(  473,    1,  100,  0,   0);
setScaleKey( 473,    1,  1.0, 1.0);
setMoveKey(  474,    1,    0,   0,   128);
setScaleKey( 474,    1,  0.1, 0.1);

changeAnime( 474, 1, 107);                         -- 手前ダメージ
entryEffect( 482, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 482, SE_10);

setMoveKey(  482,   1,    0,   0,   128);
setMoveKey(  489,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( 490, 1, 0);  -- ダメージ振動等
setShake(481,6,15);
setShake(487,15,10);

setRotateKey( 474,  1,  30 );
setRotateKey( 476,  1,  80 );
setRotateKey( 478,  1, 120 );
setRotateKey( 480,  1, 160 );
setRotateKey( 482,  1, 200 );
setRotateKey( 484,  1, 260 );
setRotateKey( 486,  1, 320 );
setRotateKey( 488,  1,   0 );

setShakeChara( 489, 1, 5,  10);
setShakeChara( 494, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( 489, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(489, ct, 30, 10);
setEffRotateKey( 489, ct, -40);
setEffScaleKey( 489, ct, 4.0, 4.0);
setEffScaleKey( 490, ct, 2.0, 2.0);
setEffScaleKey( 491, ct, 2.6, 2.6);
setEffScaleKey( 492, ct, 4.0, 4.0);
setEffScaleKey( 493, ct, 2.6, 2.6);
setEffScaleKey( 494, ct, 3.8, 3.8);
setEffScaleKey( 584, ct, 3.8, 3.8);
setEffAlphaKey( 489, ct, 255);
setEffAlphaKey( 579, ct, 255);
setEffAlphaKey( 589, ct, 0);

playSe( 477, SE_11);
shuchusen = entryEffectLife( 477, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( 477, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(490);

--entryFade( 570, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(574);
end