--1013341　クウラ(最終形態)_スーパーノヴァ
--sp0056

print ("[lua]sp0021");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 102003;
SP_02 = 102004;
SP_03 = 102005;

tyo = -30;
tyo2 = -40;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+58;
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



multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -74,   0);
setMoveKey(   1,   0,    0, -74,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);


------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 60, 5, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 2.0, 2.0);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
--setVisibleUI( 69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

-- ** エフェクト等 ** --

aura = entryEffectLife( 71,   311, 99, 0x40+0x100,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 2.0, 2.0);
setShakeChara( 71, 0, 49, 5);
setEffAlphaKey( 71, aura, 255);

kame_hand = entryEffect( 71, SP_01, 0x40+0x100,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 163, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setEffMoveKey( 128, kame_hand,  0,  150, 0);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190 -40, 300);    -- ゴゴゴ・・・
setEffShake( 90, ct, 40, 8);
setEffScaleKey( 90, ct, 1.4, 1.4);

------------------------------------------------------
--カードカットイン
------------------------------------------------------
spep_c = 170

setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);

-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
SE01=playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
SE01=playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
SE01=playSe( spep_c, SE_05);
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
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 8, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
OFFSET_X = 4;

changeAnime( 260 + OFFSET_X, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  259 + OFFSET_X,    0,      0,  0,   0);
setMoveKey(  260 + OFFSET_X,    0,   -100,  150,   0);
setMoveKey(  261 + OFFSET_X,    0,   -100,  150,   0);
setMoveKey(  308 + OFFSET_X,    0,   -1100,  130,   0);
setScaleKey( 259 + OFFSET_X,    0,  1, 1);
setScaleKey( 290 + OFFSET_X,    0,  0.1, 0.1);

kamehame_beam = entryEffectLife( 257 + OFFSET_X, SP_02, 109, 0x40,  0,  300,  0,  300);   -- 伸びるかめはめ波
setEffAlphaKey( 257 + OFFSET_X, kamehame_beam, 0);
setEffAlphaKey( 259 + OFFSET_X, kamehame_beam, 0);
setEffAlphaKey( 260 + OFFSET_X, kamehame_beam, 255);

setEffMoveKey( 370 + OFFSET_X,kamehame_beam,0,  -250,  0);
--setEffScaleKey( 260, shuchusen, 0.5, 0.5);  ---------------------------------------------------------------
--setEffScaleKey( 289, shuchusen, 1.0, 1.0);  ---------------------------------------------------------------
SE01 = playSe( 260 + OFFSET_X, SE_07);

--spname = entryEffect( 257, 1508,  0x100,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  200,   0);
--setMoveKey(  300,    0,   -100,  200,   0);
--setMoveKey(  308,    0,   -1100, 200,   0);

entryFade( 365 + OFFSET_X, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260 + OFFSET_X, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFadeBg( 260 + OFFSET_X, 0, 20, 10, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 295, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

entryEffectLife( 259, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( 260 + OFFSET_X, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260 + OFFSET_X, shuchusen, 1.0, 1.0);
setEffScaleKey( 300 + OFFSET_X, shuchusen, 1.0, 1.0);
setEffScaleKey( 309 + OFFSET_X, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 268 + OFFSET_X, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( 268 + OFFSET_X, ct, 32, 5);
setEffAlphaKey( 268 + OFFSET_X, ct, 255);
setEffAlphaKey( 290 + OFFSET_X, ct, 255);
setEffAlphaKey( 300 + OFFSET_X, ct, 0);
setEffScaleKey( 268 + OFFSET_X, ct, 0.0, 0.0);
setEffScaleKey( 272 + OFFSET_X, ct, 1.3, 1.3);
setEffScaleKey( 292 + OFFSET_X, ct, 1.3, 1.3);
setEffScaleKey( 300 + OFFSET_X, ct, 6.0, 6.0);
SE02 = playSe( 300, SE_07);

entryFade( 350 + OFFSET_X, 15, 10, 10, 255, 255, 255);          -- ベース暗め　背景



------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( 370 + OFFSET_X, 0, 0);
setDisp( 370 + OFFSET_X, 1, 1);
changeAnime( 370 + OFFSET_X, 1, 102);                        -- ガード
setMoveKey(  369 + OFFSET_X,    1,  235,  -100,   0);
setMoveKey(  370 + OFFSET_X,    1,  235,  -100,   0);
setMoveKey(  371 + OFFSET_X,    1,  235,  -100,   0);
setScaleKey( 369 + OFFSET_X,    1,  0.7, 0.7);
setScaleKey( 370 + OFFSET_X,    1,  0.2, 0.2);

setMoveKey(  400 + OFFSET_X,    1,   120,  0,   0);
setScaleKey(  400 + OFFSET_X,   1,   0.4,  0.4);

SE03 = playSe( 390 + OFFSET_X, SE_06);

kamehame_beam2 = entryEffect( 370 + OFFSET_X, SP_03,   0x80, -1,  0,  160,  0);   -- 迫るかめはめ波
setEffScaleKey( 370 + OFFSET_X, kamehame_beam2, 0.3, 0.3);
setEffScaleKey( 452 + OFFSET_X, kamehame_beam2, 1, 1);
setEffScaleKey( 454 + OFFSET_X, kamehame_beam2, 2.5, 2.5);
setDamage( 452 + OFFSET_X, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture(  speff, 6, 3);                       -- カットイン差し替え
seId =playSe( 370 + OFFSET_X, 1044);

stopSe( 470 + OFFSET_X, seId,   4);

entryFade( 462 + OFFSET_X, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


SE04 = playSe( 455 + OFFSET_X, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( 455 + OFFSET_X, 1, 107);
setMoveKey(  460 + OFFSET_X, 1,  120,    -100,  0);
setMoveKey(  469 + OFFSET_X, 1,  400,    -150,  0);
setScaleKey( 455 + OFFSET_X, 1,  0.4, 0.4);
--setScaleKey( 458, 1,  0.2, 0.2);
setScaleKey( 468 + OFFSET_X, 1,  0.5, 0.5);

-- ** エフェクト等 ** --
setShakeChara( 370 + OFFSET_X, 1, 99, 20);

entryFadeBg( 370 + OFFSET_X, 0, 99, 0, 10, 10, 10, 250);          -- ベース暗め　背景

sen1 = entryEffectLife( 369 + OFFSET_X, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 369 + OFFSET_X,sen1,180);

--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 370 + OFFSET_X, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( 370 + OFFSET_X, ct, 99, 20);
setEffScaleKey( 370 + OFFSET_X, ct, 3.4, 3.4);
setEffRotateKey( 370 + OFFSET_X, ct, 70);
setEffAlphaKey( 370 + OFFSET_X, ct, 255);
setEffAlphaKey( 430 + OFFSET_X, ct, 255);
setEffAlphaKey( 450 + OFFSET_X, ct, 0);

entryFade( 462 + OFFSET_X, 5, 11, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryFadeBg( 440, 10, 10, 15, 255, 255, 255);          -- ベース暗め　背景
--entryFlash( 460, 1, 255, 255, 255);


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 441 + OFFSET_X; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, seId,   4);
stopSe( SP_dodge - 12, SE01, 0);
stopSe( SP_dodge - 12, SE02, 0);
stopSe( SP_dodge - 12, SE03, 0);
stopSe( SP_dodge - 12, SE04, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);


entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( 469 + OFFSET_X, 1, 1);
setMoveKey(  469 + OFFSET_X,    1,  100,  0,   0);
setScaleKey( 469 + OFFSET_X,    1,  0.5, 0.5);
setMoveKey(  470 + OFFSET_X,    1,    0,   0,   128);
setScaleKey( 470 + OFFSET_X,    1,  0.1, 0.1);

changeAnime( 470 + OFFSET_X, 1, 107);                         -- 手前ダメージ
entryEffect( 478 + OFFSET_X, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 478 + OFFSET_X, SE_10);

setMoveKey(  478 + OFFSET_X,   1,    0,   0,   128);
setMoveKey(  485 + OFFSET_X,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( 486 + OFFSET_X, 1, 0);  -- ダメージ振動等
setShake( 477 + OFFSET_X,6,15);
setShake( 483 + OFFSET_X,15,10);

setRotateKey( 470 + OFFSET_X,  1,  30 );
setRotateKey( 472 + OFFSET_X,  1,  80 );
setRotateKey( 474 + OFFSET_X,  1, 120 );
setRotateKey( 476 + OFFSET_X,  1, 160 );
setRotateKey( 478 + OFFSET_X,  1, 200 );
setRotateKey( 480 + OFFSET_X,  1, 260 );
setRotateKey( 482 + OFFSET_X,  1, 320 );
setRotateKey( 484 + OFFSET_X,  1,   0 );

setShakeChara( 485 + OFFSET_X, 1, 5,  10);
setShakeChara( 490 + OFFSET_X, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( 485 + OFFSET_X, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( 485 + OFFSET_X, ct, 30, 10);
setEffRotateKey( 485 + OFFSET_X, ct, -40);
setEffScaleKey( 485 + OFFSET_X, ct, 4.0, 4.0);
setEffScaleKey( 486 + OFFSET_X, ct, 2.0, 2.0);
setEffScaleKey( 487 + OFFSET_X, ct, 2.6, 2.6);
setEffScaleKey( 488 + OFFSET_X, ct, 4.0, 4.0);
setEffScaleKey( 489 + OFFSET_X, ct, 2.6, 2.6);
setEffScaleKey( 490 + OFFSET_X, ct, 3.8, 3.8);
setEffScaleKey( 580 + OFFSET_X, ct, 3.8, 3.8);
setEffAlphaKey( 485 + OFFSET_X, ct, 255);
setEffAlphaKey( 575 + OFFSET_X, ct, 255);
setEffAlphaKey( 585 + OFFSET_X, ct, 0);

playSe( 473 + OFFSET_X, SE_11);
shuchusen = entryEffectLife( 473 + OFFSET_X, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( 473 + OFFSET_X, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( 486 + OFFSET_X);
endPhase( 580 + OFFSET_X);
else

------------------------------------------------------
--敵
------------------------------------------------------

------------------------------------------------------
-- 気溜め(tyo+40F)
------------------------------------------------------

--気を貯める
changeAnime(tyo+30, 0, 17);                       -- 溜め!
entryEffect(tyo+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(tyo+30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe(tyo+30, SE_01);

entryFade(tyo+60, 5, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(tyo+30,   311, 39, 0x40+0x80,  0,  1,  0,  0); -- オーラ
setEffScaleKey(tyo+30, aura, 1.5, 1.5);
setShakeChara(tyo+30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife(tyo+30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(tyo+30, ct, 40, 7);
setEffAlphaKey(tyo+30, ct, 255);
setEffAlphaKey(tyo+50, ct, 255);
setEffAlphaKey(tyo+70, ct, 0);
setEffScaleKey(tyo+30, ct, 0.1, 0.1);
setEffScaleKey(tyo+40, ct, 2.0, 2.0);
playSe(tyo+30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
--setVisibleUI( tyo+69, 0);
changeAnime( 0, 0, 30);                       -- 溜め!
playSe( tyo+73, SE_03);


entryEffect(tyo+70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (tyo2+気)
entryEffect(tyo+70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (tyo2+気)


playSe( tyo+80, SE_04);

-- ** エフェクト等 ** --
aura = entryEffectLife(tyo+70,   311, 99, 0x40+0x100,  0,  1,  0,  0); -- オーラ
setEffScaleKey(tyo+30, aura, 2.0, 2.0);
setShakeChara(tyo2+70, 0, 49, 5);
setEffAlphaKey( tyo+70, aura, 255);

kame_hand = entryEffect( tyo+71, SP_01, 0x40+0x100,   0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( tyo+71, kame_hand, 0.5, 0.5);

setEffMoveKey( tyo+128, kame_hand,  0,  150, 0);

--entryFade( tyo+165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- 書き文字エントリー
ct = entryEffectLife( tyo2+90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( tyo2+90, ct, 40, 8);
setEffScaleKey( tyo2+90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(tyo2+90F)
------------------------------------------------------
setScaleKey( tyo2+169,   0, 1.5, 1.5);
setScaleKey( tyo2+170,   0, 1.0, 1.0);

playSe( tyo2+170, SE_05);
speff = entryEffect( tyo2+170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( tyo2+255, 3, 2 +4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
-- ** 白背景 ** --
entryFadeBg( tyo2+170 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( tyo2+170, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( tyo2+170 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

playSe( tyo2+170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(tyo2+110F)
------------------------------------------------------
OFFSET_X = 4;

removeAllEffect( tyo2+257 + OFFSET_X);

changeAnime( tyo2+260 + OFFSET_X, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( tyo2+259 + OFFSET_X,    0,      0,  0,   0);
setMoveKey( tyo2+260 + OFFSET_X,    0,   -100,  150,   0);
setMoveKey( tyo2+261 + OFFSET_X,    0,   -100,  150,   0);
setMoveKey( tyo2+308 + OFFSET_X,    0,   -1100,  130,   0);
--setScaleKey( tyo2+261,    0,  1, 1);
--setScaleKey( tyo2+290,    0,  0.1, 0.1);

ryuusen = entryEffectLife( tyo2+260 + OFFSET_X, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffAlphaKey( tyo2+260 + OFFSET_X, ryuusen, 255);

kamehame_beam = entryEffectLife( tyo2+260 + OFFSET_X, SP_02, 111, 0x40+0x80,  0,  300,  0,  300);   -- 伸びるかめはめ波
setEffMoveKey( tyo2+370 + OFFSET_X,kamehame_beam,0,  -250,  0);
--setEffScaleKey( tyo2+260, shuchusen, 0.5, 0.5);
--setEffScaleKey( tyo2+289, shuchusen, 1.0, 1.0);
SE01 = playSe( tyo2+260 + OFFSET_X, SE_07);
--setEffAlphaKey( tyo2+257, kamehame_beam, 0);
--setEffAlphaKey( tyo2+259, kamehame_beam, 0);
setEffAlphaKey( tyo2+260 + OFFSET_X, kamehame_beam, 255);

--spname = entryEffect( tyo2+257, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え


entryFade( tyo2+365 + OFFSET_X, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( tyo2+260 + OFFSET_X, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFadeBg( tyo2+260 + OFFSET_X, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( tyo2+300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

setShakeChara( tyo2+305 + OFFSET_X, 0, 54, 50);

shuchusen = entryEffectLife( tyo2+260 + OFFSET_X, 906, 49, 0x00,  0, 0,  0,  0);   -- 集中線
setEffScaleKey( tyo2+260 + OFFSET_X, shuchusen, 1.0, 1.0);
setEffScaleKey( tyo2+300 + OFFSET_X, shuchusen, 1.0, 1.0);
setEffScaleKey( tyo2+309 + OFFSET_X, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( tyo2+268 + OFFSET_X, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( tyo2+268 + OFFSET_X, ct, 32, 5);
setEffAlphaKey( tyo2+268 + OFFSET_X, ct, 255);
setEffAlphaKey( tyo2+290 + OFFSET_X, ct, 255);
setEffAlphaKey( tyo2+300 + OFFSET_X, ct, 0);
setEffScaleKey( tyo2+268 + OFFSET_X, ct, 0.0, 0.0);
setEffScaleKey( tyo2+272 + OFFSET_X, ct, 1.3, 1.3);
setEffScaleKey( tyo2+292 + OFFSET_X, ct, 1.3, 1.3);
setEffScaleKey( tyo2+300 + OFFSET_X, ct, 6.0, 6.0);
SE02 = playSe( tyo2+300 + OFFSET_X, SE_07);

entryFade( tyo2+350 + OFFSET_X, 15, 10, 10, 255, 255, 255);          -- ベース暗め　背景



------------------------------------------------------
-- かめはめは迫る(tyo2+100F)
------------------------------------------------------
setDisp( tyo2+370 + OFFSET_X, 0, 0);
setDisp( tyo2+370 + OFFSET_X, 1, 1);
changeAnime( tyo2+370 + OFFSET_X, 1, 102);                        -- ガード
setMoveKey( tyo2+369 + OFFSET_X,    1,  235,  -100,   0);
setMoveKey( tyo2+370 + OFFSET_X,    1,  235,  -100,   0);
setMoveKey( tyo2+371 + OFFSET_X,    1,  235,  -100,   0);
setScaleKey( tyo2+369 + OFFSET_X,    1,  0.7, 0.7);
setScaleKey( tyo2+370 + OFFSET_X,    1,  0.2, 0.2);

setMoveKey( tyo2+400 + OFFSET_X,    1,   120,  0,   0);
setScaleKey( tyo2+400 + OFFSET_X,   1,   0.4,  0.4);

SE03 = playSe( tyo2+390 + OFFSET_X, SE_06);

kamehame_beam2 = entryEffect( tyo2+370 + OFFSET_X, SP_03,   0x80, -1,  0,  160,  0);   -- 迫るかめはめ波
setEffScaleKey( tyo2+370 + OFFSET_X, kamehame_beam2, 0.3, 0.3);
setEffScaleKey( tyo2+452 + OFFSET_X, kamehame_beam2, 1, 1);
setEffScaleKey( tyo2+454 + OFFSET_X, kamehame_beam2, 2.5, 2.5);
setDamage( tyo2+452 + OFFSET_X, 1, 0);  -- ダメージ振動等

--speff = entryEffect( tyo2+370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
seId = playSe( tyo2+370 + OFFSET_X, 1044);

-- ** エフェクト等 ** --
setShakeChara( tyo2+370 + OFFSET_X, 1, 99, 20);

entryFadeBg( tyo2+370 + OFFSET_X, 0, 99, 0, 10, 10, 10, 250);          -- ベース暗め　背景

sen1 = entryEffectLife( tyo2+369 + OFFSET_X, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( tyo2+369 + OFFSET_X,sen1,180);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 185+226 + OFFSET_X; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, seId, 4);
stopSe( SP_dodge - 12, SE01, 0);
stopSe( SP_dodge - 12, SE02, 0);
stopSe( SP_dodge - 12, SE03, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( SP_dodge+9,   1,   0.4,  0.4);

endPhase(SP_dodge+10);
do return end
else end


stopSe( tyo2+470 + OFFSET_X, seId,   4);
entryFade( tyo2+462 + OFFSET_X, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( tyo2+455 + OFFSET_X, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( tyo2+455 + OFFSET_X, 1, 107);
setMoveKey( tyo2+460 + OFFSET_X, 1,  120,    -100,  0);
setMoveKey( tyo2+469 + OFFSET_X, 1,  400,    -150,  0);
setScaleKey( tyo2+455 + OFFSET_X, 1,  0.4, 0.4);
--setScaleKey( tyo2+458, 1,  0.2, 0.2);
setScaleKey( tyo2+468 + OFFSET_X, 1,  0.5, 0.5);


-- 書き文字エントリー
ct = entryEffectLife( tyo2+370 + OFFSET_X, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( tyo2+370 + OFFSET_X, ct, 99, 20);
setEffScaleKey( tyo2+370 + OFFSET_X, ct, 3.4, 3.4);
setEffRotateKey( tyo2+370 + OFFSET_X, ct, -70);
setEffAlphaKey( tyo2+370 + OFFSET_X, ct, 255);
setEffAlphaKey( tyo2+430 + OFFSET_X, ct, 255);
setEffAlphaKey( tyo2+450 + OFFSET_X, ct, 0);

entryFade( tyo2 + 462 + OFFSET_X, 5, 11, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryFadeBg( tyo2+440, 10, 10, 15, 255, 255, 255);          -- ベース暗め　背景
--entryFlash( tyo2+460, 1, 255, 255, 255);




------------------------------------------------------
-- 爆発 (tyo2+110F)
------------------------------------------------------
setDisp( tyo2+469 + OFFSET_X, 1, 1);
setMoveKey( tyo2+469 + OFFSET_X,    1,  100,  0,   0);
setScaleKey( tyo2+469 + OFFSET_X,    1,  0.5, 0.5);
setMoveKey( tyo2+470 + OFFSET_X,    1,    0,   0,   128);
setScaleKey( tyo2+470 + OFFSET_X,    1,  0.1, 0.1);

changeAnime( tyo2+470 + OFFSET_X, 1, 107);                         -- 手前ダメージ
entryEffect( tyo2+478 + OFFSET_X, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( tyo2+478 + OFFSET_X, SE_10);

setMoveKey( tyo2+478 + OFFSET_X,   1,    0,   0,   128);
setMoveKey( tyo2+485 + OFFSET_X,   1,  -60,  -200,  -100);
--setMoveKey( tyo2+486,   1,  -60,  -200,  -100);
setDamage( tyo2+486 + OFFSET_X, 1, 0);  -- ダメージ振動等
setShake( tyo2+477 + OFFSET_X,6,15);
setShake( tyo2+483 + OFFSET_X,15,10);

setRotateKey( tyo2+470 + OFFSET_X,  1,  30 );
setRotateKey( tyo2+472 + OFFSET_X,  1,  80 );
setRotateKey( tyo2+474 + OFFSET_X,  1, 120 );
setRotateKey( tyo2+476 + OFFSET_X,  1, 160 );
setRotateKey( tyo2+478 + OFFSET_X,  1, 200 );
setRotateKey( tyo2+480 + OFFSET_X,  1, 260 );
setRotateKey( tyo2+482 + OFFSET_X,  1, 320 );
setRotateKey( tyo2+484 + OFFSET_X,  1,   0 );

setShakeChara( tyo2+485 + OFFSET_X, 1, 5,  10);
setShakeChara( tyo2+490 + OFFSET_X, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( tyo2+485 + OFFSET_X, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( tyo2+485 + OFFSET_X, ct, 30, 10);
setEffRotateKey( tyo2+485 + OFFSET_X, ct, -40);
setEffScaleKey( tyo2+485 + OFFSET_X, ct, 4.0, 4.0);
setEffScaleKey( tyo2+486 + OFFSET_X, ct, 2.0, 2.0);
setEffScaleKey( tyo2+487 + OFFSET_X, ct, 2.6, 2.6);
setEffScaleKey( tyo2+488 + OFFSET_X, ct, 4.0, 4.0);
setEffScaleKey( tyo2+489 + OFFSET_X, ct, 2.6, 2.6);
setEffScaleKey( tyo2+490 + OFFSET_X, ct, 3.8, 3.8);
setEffScaleKey( tyo2+580 + OFFSET_X, ct, 3.8, 3.8);
setEffAlphaKey( tyo2+485 + OFFSET_X, ct, 255);
setEffAlphaKey( tyo2+575 + OFFSET_X, ct, 255);
setEffAlphaKey( tyo2+585 + OFFSET_X, ct, 0);

playSe( tyo2+473 + OFFSET_X, SE_11);
shuchusen = entryEffectLife( tyo2+473 + OFFSET_X, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( tyo2+473 + OFFSET_X, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( tyo2+486 + OFFSET_X);
endPhase( tyo2+580 + OFFSET_X);
end
