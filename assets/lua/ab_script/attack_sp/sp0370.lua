--1012771:UR_超サイヤ人3孫悟空(GT)_必殺技：超かめはめ波
--sp_effect_a1_00017
--sp0370

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

tyo = -30;
tyo2 = -40;

SP_01 = 100159;
SP_02 = 100160;
SP_03 = 100161;
SP_04 = 1551;


changeAnime( 0, 0, 1);                       -- 立ち
setAnimeLoop(  0, 0, 1);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

setVisibleUI( 0, 0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
setAnimeLoop(  30, 0, 1);
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -55); -- オーラ
setEffScaleKey( 30, aura, 1.1, 1.1);
setShakeChara( 30, 0, 59, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

entryEffect(  61,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  61,   1500,   0,    -1,  0,  0,  0);    -- eff_001

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
--setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
setAnimeLoop( 70, 0, 1);
playSe( 73, SE_03);

entryEffect(  80,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  80,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -55); -- オーラ
setEffScaleKey( 30, aura, 1.1, 1.1);
setShakeChara( 70, 0, 100, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);

--playSe( 170, SE_05);
--speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
--setEffReplaceTexture( speff, 1, 1);
--setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
--setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

spep_c = 170;

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
-- playSe( spep_c + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
add_f = 4;

playSe( 170+64 + add_f, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( 305 + add_f, 0, 0);
changeAnime( 260 + add_f, 0, 31);                                    -- かめはめ発射ポーズ
setAnimeLoop( 260 + add_f, 0, 1);

setMoveKey(  250 + add_f,    0,      0,  -54,   0);
setMoveKey(  251 + add_f,    0,      0,  0,  0);
setMoveKey(  270 + add_f,    0,      0,  0,  0);
setMoveKey(  290 + add_f,    0,   -30,  0,   20);

kamehame_beam = entryEffectLife( 260 + add_f, SP_02, 110, 0x100,  0,  -1,  200,  0);   -- 伸びるかめはめ波
setEffMoveKey( 270 + add_f, kamehame_beam, 200, 0);
setEffMoveKey( 290 + add_f, kamehame_beam, 170, 0, 20);
setEffMoveKey( 300 + add_f, kamehame_beam,  20, 0, 50);
setEffMoveKey( 305 + add_f, kamehame_beam, -450, 0, 80);

setEffScaleKey( 260 + add_f, kamehame_beam, 1.0, 1.0);
setEffScaleKey( 290 + add_f, kamehame_beam, 1.0, 1.0);
setEffScaleKey( 300 + add_f, kamehame_beam, 0.5, 0.5);
setEffScaleKey( 340 + add_f, kamehame_beam, 0.5, 0.5);
--setEffScaleKey( 305, kamehame_beam, 0.4, 0.4);
setEffScaleKey( 370 + add_f, kamehame_beam, 0.3, 0.3);

SE001X = playSe( 260 + add_f, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);
setMoveKey(  300 + add_f,    0,   -90,  0,   50);
setMoveKey(  305 + add_f,    0,   -500,  0,   80);
setMoveKey(  310 + add_f,    0,   -2000,  0,   80);

--setMoveKey(  308,    0,   -1100,  0,   0);


entryFade( 365 + add_f, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(369 + add_f);

-- ** エフェクト等 ** --
entryFadeBg( 260 + add_f, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg( 260 + add_f, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( 300 + add_f, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( 260 + add_f, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(260 + add_f, sen2, 190);
setEffScaleKey( 260 + add_f, sen2, 1.25, 1.25);

setShakeChara( 305 + add_f, 0, 54, 50);

shuchusen = entryEffectLife( 260 + add_f, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260 + add_f, shuchusen, 1.0, 1.0);
setEffScaleKey( 300 + add_f, shuchusen, 1.0, 1.0);
setEffScaleKey( 309 + add_f, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 268 + add_f, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268 + add_f, ct, 32, 5);
setEffAlphaKey(268 + add_f, ct, 255);
setEffAlphaKey(290 + add_f, ct, 255);
setEffAlphaKey(300 + add_f, ct, 0);
setEffScaleKey(268 + add_f, ct, 0.0, 0.0);
setEffScaleKey(272 + add_f, ct, 1.3, 1.3);
setEffScaleKey(292 + add_f, ct, 1.3, 1.3);
setEffScaleKey(300 + add_f, ct, 6.0, 6.0);
SE002X = playSe( 300 + add_f, SE_07);
entryFade( 355 + add_f, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( 370 + add_f, 0, 0);
setDisp( 370 + add_f, 1, 1);
changeAnime( 370 + add_f, 1, 104);                        -- ガード
setMoveKey(  369 + add_f,    1,  235,  0,   0);
setMoveKey(  370 + add_f,    1,  235,  0,   0);
setMoveKey(  371 + add_f,    1,  235,  0,   0);
setScaleKey( 369 + add_f,    1,  0.7, 0.7);
setScaleKey( 370 + add_f,    1,  0.7, 0.7);

setMoveKey(  400 + add_f,    1,   120,  0,   0);
setScaleKey(  400 + add_f,   1,   1.6,  1.6);

SE003X = playSe( 390 + add_f, SE_06);

kamehame_beam2 = entryEffect( 370 + add_f, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(370 + add_f, kamehame_beam2, 1, 1);
setEffScaleKey(452 + add_f, kamehame_beam2, 1, 1);
setEffScaleKey(454 + add_f, kamehame_beam2, 2.5, 2.5);
setDamage( 452 + add_f, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

SE004X = playSe( 455 + add_f, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( 455 + add_f, 1, 108);
setMoveKey(  455 + add_f, 1,  120,    0,  0);
setMoveKey(  469 + add_f, 1,  400,    0,  0);
setScaleKey( 455 + add_f, 1,  1.6, 1.6);
setScaleKey( 458 + add_f, 1,  1.5, 1.5);
setScaleKey( 468 + add_f, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( 370 + add_f, 1, 99, 20);

entryFadeBg( 370 + add_f, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife( 370 + add_f, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 370 + add_f, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(370 + add_f, ct, 99, 20);
setEffScaleKey( 370 + add_f, ct, 2.4, 2.4);
setEffRotateKey(370 + add_f, ct, 70);
setEffAlphaKey(370 + add_f, ct, 255);
setEffAlphaKey(430 + add_f, ct, 255);
setEffAlphaKey(450 + add_f, ct, 0);

entryFade( 452 + add_f, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 420 + add_f; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE001X, 0);
stopSe( SP_dodge-12, SE002X, 0);
stopSe( SP_dodge-12, SE003X, 0);
stopSe( SP_dodge-12, SE004X, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
baku = entryEffect( 469 + add_f, SP_04, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( 469 + add_f, baku, 1.1, 1.1);
setDisp( 469 + add_f, 1, 1);
setMoveKey(  469 + add_f,    1,  100,  0,   0);
setScaleKey( 469 + add_f,    1,  1.0, 1.0);
setMoveKey(  470 + add_f,    1,    0,   0,   128);
setScaleKey( 470 + add_f,    1,  0.1, 0.1);

changeAnime( 470 + add_f, 1, 107);                         -- 手前ダメージ
--entryEffect( 478, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 478 + add_f, SE_10);

setMoveKey(  478 + add_f,   1,    0,   0,   128);
setMoveKey(  485 + add_f,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( 486 + add_f, 1, 0);  -- ダメージ振動等
setShake(477 + add_f,6,15);
setShake(483 + add_f,15,10);

setRotateKey( 470 + add_f,  1,  30 );
setRotateKey( 472 + add_f,  1,  80 );
setRotateKey( 474 + add_f,  1, 120 );
setRotateKey( 476 + add_f,  1, 160 );
setRotateKey( 478 + add_f,  1, 200 );
setRotateKey( 480 + add_f,  1, 260 );
setRotateKey( 482 + add_f,  1, 320 );
setRotateKey( 484 + add_f,  1,   0 );

setShakeChara( 485 + add_f, 1, 5,  10);
setShakeChara( 490 + add_f, 1, 10, 20);

playSe( 473 + add_f, SE_11);
shuchusen = entryEffectLife( 473 + add_f, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(486 + add_f);

endPhase(580 + add_f);



else


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め( tyo+40F)
------------------------------------------------------

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
setAnimeLoop(  30, 0, 1);
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40+0x80,  0,  1,  0,  -55); -- オーラ
setEffScaleKey( 30, aura, 1.1, 1.1);
setShakeChara( 30, 0, 59, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

entryEffect(  61,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  61,   1500,   0,    -1,  0,  0,  0);    -- eff_001

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
--setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
setAnimeLoop( 70, 0, 1);
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  0,  0,  0,  55);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     0,  0,  0,  55);   -- eff_003 (気)
-- 画面がぐらつくのを解消するために、高さ55を指定しております。

--playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40+0x80,   0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -55); -- オーラ
setEffScaleKey( 30, aura, 1.1, 1.1);
setShakeChara( 70, 0, 100, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
setScaleKey( 165,   0, 1.5, 1.5);
setScaleKey( 166,   0, 1.0, 1.0);

playSe( 166, SE_05);
speff = entryEffect(  166,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

spep_c = 166

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
-- playSe( spep_c + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 14, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
add_f = 4;

playSe( 170+64 + add_f, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( 305 + add_f, 0, 0);
changeAnime( 260 + add_f, 0, 31);                                    -- かめはめ発射ポーズ
setAnimeLoop( 260 + add_f, 0, 1);

setMoveKey(  250 + add_f,    0,      0,  -54,   0);
setMoveKey(  251 + add_f,    0,      0,  0,  0);
setMoveKey(  270 + add_f,    0,      0,  0,  0);
setMoveKey(  290 + add_f,    0,   -30,  0,   20);

kamehame_beam = entryEffectLife( 260 + add_f, SP_02, 110, 0x100,  0,  -1,  200,  0);   -- 伸びるかめはめ波
setEffMoveKey( 270 + add_f, kamehame_beam, 200, 0);
setEffMoveKey( 290 + add_f, kamehame_beam, 170, 0, 20);
setEffMoveKey( 300 + add_f, kamehame_beam,  20, 0, 50);
setEffMoveKey( 305 + add_f, kamehame_beam, -450, 0, 80);

setEffScaleKey( 260 + add_f, kamehame_beam, 1.0, 1.0);
setEffScaleKey( 290 + add_f, kamehame_beam, 1.0, 1.0);
setEffScaleKey( 300 + add_f, kamehame_beam, 0.5, 0.5);
setEffScaleKey( 340 + add_f, kamehame_beam, 0.5, 0.5);
--setEffScaleKey( 305, kamehame_beam, 0.4, 0.4);
setEffScaleKey( 370 + add_f, kamehame_beam, 0.3, 0.3);

SE001X = playSe( 260 + add_f, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);
setMoveKey(  300 + add_f,    0,   -90,  0,   50);
setMoveKey(  305 + add_f,    0,   -500,  0,   80);
setMoveKey(  310 + add_f,    0,   -2000,  0,   80);

--setMoveKey(  308,    0,   -1100,  0,   0);


entryFade( 365 + add_f, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(369 + add_f);

-- ** エフェクト等 ** --
entryFadeBg( 260 + add_f, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg( 260 + add_f, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( 300 + add_f, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( 260 + add_f, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(260 + add_f, sen2, 190);
setEffScaleKey( 260 + add_f, sen2, 1.25, 1.25);

setShakeChara( 305 + add_f, 0, 54, 50);

shuchusen = entryEffectLife( 260 + add_f, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260 + add_f, shuchusen, 1.0, 1.0);
setEffScaleKey( 300 + add_f, shuchusen, 1.0, 1.0);
setEffScaleKey( 309 + add_f, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 268 + add_f, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268 + add_f, ct, 32, 5);
setEffAlphaKey(268 + add_f, ct, 255);
setEffAlphaKey(290 + add_f, ct, 255);
setEffAlphaKey(300 + add_f, ct, 0);
setEffScaleKey(268 + add_f, ct, 0.0, 0.0);
setEffScaleKey(272 + add_f, ct, 1.3, 1.3);
setEffScaleKey(292 + add_f, ct, 1.3, 1.3);
setEffScaleKey(300 + add_f, ct, 6.0, 6.0);
SE002X = playSe( 300 + add_f, SE_07);
entryFade( 355 + add_f, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( 370 + add_f, 0, 0);
setDisp( 370 + add_f, 1, 1);
changeAnime( 370 + add_f, 1, 104);                        -- ガード
setMoveKey(  369 + add_f,    1,  235,  0,   0);
setMoveKey(  370 + add_f,    1,  235,  0,   0);
setMoveKey(  371 + add_f,    1,  235,  0,   0);
setScaleKey( 369 + add_f,    1,  0.7, 0.7);
setScaleKey( 370 + add_f,    1,  0.7, 0.7);

setMoveKey(  400 + add_f,    1,   120,  0,   0);
setScaleKey(  400 + add_f,   1,   1.6,  1.6);

SE003X = playSe( 390 + add_f, SE_06);

kamehame_beam2 = entryEffect( 370 + add_f, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(370 + add_f, kamehame_beam2, 1, 1);
setEffScaleKey(452 + add_f, kamehame_beam2, 1, 1);
setEffScaleKey(454 + add_f, kamehame_beam2, 2.5, 2.5);
setDamage( 452 + add_f, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

SE004X = playSe( 455 + add_f, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( 455 + add_f, 1, 108);
setMoveKey(  455 + add_f, 1,  120,    0,  0);
setMoveKey(  469 + add_f, 1,  400,    0,  0);
setScaleKey( 455 + add_f, 1,  1.6, 1.6);
setScaleKey( 458 + add_f, 1,  1.5, 1.5);
setScaleKey( 468 + add_f, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( 370 + add_f, 1, 99, 20);

entryFadeBg( 370 + add_f, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife( 370 + add_f, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 370 + add_f, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(370 + add_f, ct, 99, 20);
setEffScaleKey( 370 + add_f, ct, 2.4, 2.4);
setEffRotateKey(370 + add_f, ct, -70);
setEffAlphaKey(370 + add_f, ct, 255);
setEffAlphaKey(430 + add_f, ct, 255);
setEffAlphaKey(450 + add_f, ct, 0);

entryFade( 452 + add_f, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 420 + add_f; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE001X, 0);
stopSe( SP_dodge-12, SE002X, 0);
stopSe( SP_dodge-12, SE003X, 0);
stopSe( SP_dodge-12, SE004X, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
baku = entryEffect( 469 + add_f, SP_04, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( 469 + add_f, baku, 1.1, 1.1);
setDisp( 469 + add_f, 1, 1);
setMoveKey(  469 + add_f,    1,  100,  0,   0);
setScaleKey( 469 + add_f,    1,  1.0, 1.0);
setMoveKey(  470 + add_f,    1,    0,   0,   128);
setScaleKey( 470 + add_f,    1,  0.1, 0.1);

changeAnime( 470 + add_f, 1, 107);                         -- 手前ダメージ
--entryEffect( 478, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 478 + add_f, SE_10);

setMoveKey(  478 + add_f,   1,    0,   0,   128);
setMoveKey(  485 + add_f,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( 486 + add_f, 1, 0);  -- ダメージ振動等
setShake(477 + add_f,6,15);
setShake(483 + add_f,15,10);

setRotateKey( 470 + add_f,  1,  30 );
setRotateKey( 472 + add_f,  1,  80 );
setRotateKey( 474 + add_f,  1, 120 );
setRotateKey( 476 + add_f,  1, 160 );
setRotateKey( 478 + add_f,  1, 200 );
setRotateKey( 480 + add_f,  1, 260 );
setRotateKey( 482 + add_f,  1, 320 );
setRotateKey( 484 + add_f,  1,   0 );

setShakeChara( 485 + add_f, 1, 5,  10);
setShakeChara( 490 + add_f, 1, 10, 20);

playSe( 473 + add_f, SE_11);
shuchusen = entryEffectLife( 473 + add_f, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

-- ダメージ表示
dealDamage(486 + add_f);

endPhase(580 + add_f);

end