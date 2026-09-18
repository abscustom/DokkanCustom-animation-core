--SSR超サイヤ人4ゴジータ_ビッグバンかめはめ波

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+50;

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

SP_01 = 156102;
SP_02 = 156103;
SP_03 = 156104;
SP_04 = 156105;

SP_01e = 156108;
SP_02e = 156106;
SP_03e = 156107;

SP_05 = 1589;

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 突進(60F)
------------------------------------------------------


entryFade( 34-30, 3, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 34-30, 0, 120, 0, 10, 10, 10, 200);          -- ベース暗め　背景

setDisp( 34-30, 0, 0);

tame = entryEffect(  34-30,   SP_01,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( 34-30, tame, 1.0, 1.0);
setEffAlphaKey( 34-30, tame, 255);

playSe( 34-10, SE_01);

shuchusentame=entryEffectLife( 34-30, 906, 56, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 34-30, shuchusentame, 1.5, 1.5);
setEffAlphaKey( 34-30, shuchusentame, 255);

-- 書き文字エントリー
ctzuo = entryEffectLife( 34-10, 10012, 90, 0x100, -1, 0, 150, 300);    -- ゴゴゴゴ
setEffShake( 34-10, ctzuo, 90, 12);
setEffScaleKey(34-10, ctzuo, 2.0, 2.0);
setEffRotateKey(34-10, ctzuo, 30);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_1=90+34-30 -4;

entryFade( spep_1-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 10, 10, 10, 200);          -- ベース暗め　背景
setMoveKey(   spep_1,   0,    0, -54,   0);

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

------------------------------------------------------
-- タックル(80F)
------------------------------------------------------
spep_2=spep_1+90;

entryFade( spep_2-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 140, 0,  10, 10, 10, 200);          -- ベース暗め　背景

shuchusentame=entryEffectLife( spep_2, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusentame, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusentame, 255);


ryuusennkamae=entryEffectLife( spep_2, 921, 140, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, ryuusennkamae, 1.5, 1.5);
setEffAlphaKey( spep_2, ryuusennkamae, 255);
setEffRotateKey(spep_2, ryuusennkamae, -150);

uti = entryEffect(  spep_2,   SP_02,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_2, uti, 1.0, 1.0);
setEffAlphaKey( spep_2, uti, 255);

entryFade( spep_2+20, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_2+20, 1018);

speff = entryEffect(  spep_2+20,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+20,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_2+30, 190006, 39, 0x100, -1, 0, -80, 500);    -- ゴゴゴゴ
setEffShake(spep_2+30, ctgogo, 40, 8);
setEffScaleKey(spep_2+30, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_2+30, ctgogo, 10);
setEffAlphaKey( spep_2+30, ctgogo, 255);

------------------------------------------------------
--ため(100F)
------------------------------------------------------
spep_3=spep_2+140;

entryFade( spep_3-25, 10, 15, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 120, 0,  10, 10, 10, 200);          -- ベース暗め　背景
changeAnime( spep_3, 1, 102);                       -- 溜め!

playSe( spep_3, SE_02);
playSe( spep_3+20, SE_02);
playSe( spep_3+40, SE_06);

shuchusentame=entryEffectLife( spep_3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusentame, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusentame, 255);

ryuusennkamekame= entryEffectLife( spep_3, 921, 120, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_3, ryuusennkamekame, 1.6, 1.6);
setEffAlphaKey( spep_3, ryuusennkamekame, 255);
setEffRotateKey(spep_3, ryuusennkamekame, -90);

ctzuo2 = entryEffectLife(spep_3+40, 10012, 60, 0x100, -1, 0, 180, 300);    -- ゴゴゴゴ
setEffShake( spep_3+40, ctzuo2, 60, 12);
setEffScaleKey(spep_3+40, ctzuo2, 2.0, 2.0);
setEffRotateKey(spep_3+40, ctzuo2, 30);

uti = entryEffect(  spep_3,   SP_03,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_3, uti, 1.0, 1.0);
setEffAlphaKey( spep_3, uti, 255);

------------------------------------------------------
-- 被弾(90F)
------------------------------------------------------
spep_4=spep_3+120;

entryFade( spep_4-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 120, 0,  30, 30, 30, 180);          -- ベース暗め　背景

ryuusenndane= entryEffectLife( spep_4, 921, 120, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_4, ryuusenndane, 1.6, 1.6);
setEffAlphaKey( spep_4, ryuusenndane, 255);
setEffRotateKey(spep_4, ryuusenndane, -130);

ataru = entryEffect(  spep_4,   SP_04,   0x100,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_4, ataru, 1.0, 1.0);
setEffAlphaKey( spep_4, ataru, 255);

shuchusenatari=entryEffectLife( spep_4, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusenatari, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusenatari, 255);

setDisp( spep_4, 1, 1);
setScaleKey(   spep_4,   1, 1.8, 1.8);
setMoveKey(   spep_4,   1,    1000, -2000,   0);

setScaleKey(   spep_4+20,   1, 1.6, 1.6);
setMoveKey(   spep_4+20,   1,    200, -300,   0);
setShakeChara( spep_4+20, 1, 100, 10);

setScaleKey(   spep_4+120,   1, 1.6, 1.6);
setMoveKey(   spep_4+120,   1,    200, -300,   0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 +14; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 回避しない場合
------------------------------------------------------

playSe( spep_4+10, SE_07);

ctzudodo = entryEffectLife( spep_4+15, 10014, 70, 0x100, -1, 0, 100, 250);    -- ズドド
setEffShake(spep_4+15, ctzudodo, 70, 12);
setEffScaleKey(spep_4+15, ctzudodo, 2.5, 2.5);
setEffRotateKey(spep_4+15, ctzudodo, 80);
setEffAlphaKey( spep_4+15, ctzudodo, 255);

------------------------------------------------------
-- ギャン
------------------------------------------------------

spep_5=spep_4+120;
entryFade( spep_5-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 60, 0,  0, 0, 0, 255);          -- ベース暗め　背景

setScaleKey(   spep_5,   1, 1.6, 1.6);
setMoveKey(   spep_5,   1,    100, -100,   0);

setDisp( spep_5, 1, 0);

playSe( spep_5, 1024);

gyan = entryEffect( spep_5,190000,0x80,-1,0,0,0);
setEffAlphaKey( spep_5,gyan,255);

-- 書き文字エントリー
ct4 = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_5, ct4, 255);
setEffScaleKey( spep_5, ct4, 3.0, 3.0);
setEffScaleKey( spep_5+60, ct4, 4.0, 4.0);
setEffAlphaKey( spep_5, ct4, 255);
setEffAlphaKey( spep_5+60, ct4, 0);
setEffShake( spep_5, ct4, 60, 10);

------------------------------------------------------
--発射(180F)
------------------------------------------------------
spep_9=spep_5+60;

entryFade( spep_9-15, 10, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 180, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setEffAlphaKey( spep_9, ct4, 0);

playSe( spep_9+60, SE_10);

tikyuuhakai = entryEffect( spep_9, SP_05,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffShake( spep_9, tikyuuhakai , 180, 8);
setEffScaleKey( spep_9, tikyuuhakai , 1.1, 1.1);

-- ダメージ表示
dealDamage(spep_9+46 -10);

--entryFade( spep_9+120, 19,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade

endPhase(spep_9+140 -10);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 突進(60F)
------------------------------------------------------


entryFade( 34-30, 3, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 34-30, 0, 120, 0, 10, 10, 10, 200);          -- ベース暗め　背景

setDisp( 34-30, 0, 0);

tame = entryEffect(  34-30,   SP_01e,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( 34-30, tame, 1.0, 1.0);
setEffAlphaKey( 34-30, tame, 255);

playSe( 34-10, SE_01);

shuchusentame=entryEffectLife( 34-30, 906, 56, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 34-30, shuchusentame, 1.5, 1.5);
setEffAlphaKey( 34-30, shuchusentame, 255);

-- 書き文字エントリー
ctzuo = entryEffectLife( 34-10, 10012, 90, 0x100, -1, 0, 150, 300);    -- ゴゴゴゴ
setEffShake( 34-10, ctzuo, 90, 12);
setEffScaleKey(34-10, ctzuo, 2.0, 2.0);
setEffRotateKey(34-10, ctzuo, 30);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_1=90+34-30 -4;

entryFade( spep_1-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 10, 10, 10, 200);          -- ベース暗め　背景
setMoveKey(   spep_1,   0,    0, -54,   0);

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

------------------------------------------------------
-- タックル(80F)
------------------------------------------------------
spep_2=spep_1+90;

entryFade( spep_2-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 140, 0,  10, 10, 10, 200);          -- ベース暗め　背景

shuchusentame=entryEffectLife( spep_2, 906, 140, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusentame, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusentame, 255);


ryuusennkamae=entryEffectLife( spep_2, 921, 140, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, ryuusennkamae, 1.5, 1.5);
setEffAlphaKey( spep_2, ryuusennkamae, 255);
setEffRotateKey(spep_2, ryuusennkamae, -150);

uti = entryEffect(  spep_2,   SP_02e,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_2, uti, 1.0, 1.0);
setEffAlphaKey( spep_2, uti, 255);

entryFade( spep_2+20, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_2+20, 1018);

--[[speff = entryEffect(  spep_2+20,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+20,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え]]

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_2+30, 190006, 39, 0x100, -1, 0, -80, 500);    -- ゴゴゴゴ
setEffShake(spep_2+30, ctgogo, 40, 8);
setEffScaleKey(spep_2+30, ctgogo, -0.8, 0.8);
setEffRotateKey(spep_2+30, ctgogo, 10);
setEffAlphaKey( spep_2+30, ctgogo, 255);

------------------------------------------------------
--ため(100F)
------------------------------------------------------
spep_3=spep_2+140;

entryFade( spep_3-25, 10, 15, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 120, 0,  10, 10, 10, 200);          -- ベース暗め　背景
changeAnime( spep_3, 1, 102);                       -- 溜め!

playSe( spep_3, SE_02);
playSe( spep_3+20, SE_02);
playSe( spep_3+40, SE_06);

shuchusentame=entryEffectLife( spep_3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusentame, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusentame, 255);

ryuusennkamekame= entryEffectLife( spep_3, 921, 120, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_3, ryuusennkamekame, 1.6, 1.6);
setEffAlphaKey( spep_3, ryuusennkamekame, 255);
setEffRotateKey(spep_3, ryuusennkamekame, -90);

ctzuo2 = entryEffectLife(spep_3+40, 10012, 60, 0x100, -1, 0, 180, 300);    -- ゴゴゴゴ
setEffShake( spep_3+40, ctzuo2, 60, 12);
setEffScaleKey(spep_3+40, ctzuo2, 2.0, 2.0);
setEffRotateKey(spep_3+40, ctzuo2, 30);

uti = entryEffect(  spep_3,   SP_03e,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_3, uti, 1.0, 1.0);
setEffAlphaKey( spep_3, uti, 255);

------------------------------------------------------
-- 被弾(90F)
------------------------------------------------------
spep_4=spep_3+120;

entryFade( spep_4-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 120, 0,  30, 30, 30, 180);          -- ベース暗め　背景

ryuusenndane= entryEffectLife( spep_4, 921, 120, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_4, ryuusenndane, 1.6, 1.6);
setEffAlphaKey( spep_4, ryuusenndane, 255);
setEffRotateKey(spep_4, ryuusenndane, -130);

ataru = entryEffect(  spep_4,   SP_04,   0x100,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_4, ataru, 1.0, 1.0);
setEffAlphaKey( spep_4, ataru, 255);

shuchusenatari=entryEffectLife( spep_4, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusenatari, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusenatari, 255);

setDisp( spep_4, 1, 1);
setScaleKey(   spep_4,   1, 1.8, 1.8);
setMoveKey(   spep_4,   1,    1000, -2000,   0);

setScaleKey(   spep_4+20,   1, 1.6, 1.6);
setMoveKey(   spep_4+20,   1,    200, -300,   0);
setShakeChara( spep_4+20, 1, 100, 10);

setScaleKey(   spep_4+120,   1, 1.6, 1.6);
setMoveKey(   spep_4+120,   1,    200, -300,   0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_4 +14; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 回避しない場合
------------------------------------------------------

playSe( spep_4+10, SE_07);

ctzudodo = entryEffectLife( spep_4+15, 10014, 70, 0x100, -1, 0, 100, 250);    -- ズドド
setEffShake(spep_4+15, ctzudodo, 70, 12);
setEffScaleKey(spep_4+15, ctzudodo, 2.5, 2.5);
setEffRotateKey(spep_4+15, ctzudodo, 0);
setEffAlphaKey( spep_4+15, ctzudodo, 255);

------------------------------------------------------
-- ギャン
------------------------------------------------------

spep_5=spep_4+120;
entryFade( spep_5-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 60, 0,  0, 0, 0, 255);          -- ベース暗め　背景

setScaleKey(   spep_5,   1, 1.6, 1.6);
setMoveKey(   spep_5,   1,    100, -100,   0);

setDisp( spep_5, 1, 0);

playSe( spep_5, 1024);

gyan = entryEffect( spep_5,190000,0x80,-1,0,0,0);
setEffAlphaKey( spep_5,gyan,255);

-- 書き文字エントリー
ct4 = entryEffectLife( spep_5, 10006, 60, 0x100, -1, 0, 0, 400);    -- ギャン

setEffAlphaKey( spep_5, ct4, 255);
setEffScaleKey( spep_5, ct4, 3.0, 3.0);
setEffScaleKey( spep_5+60, ct4, 4.0, 4.0);
setEffAlphaKey( spep_5, ct4, 255);
setEffAlphaKey( spep_5+60, ct4, 0);
setEffShake( spep_5, ct4, 60, 10);

------------------------------------------------------
--発射(180F)
------------------------------------------------------
spep_9=spep_5+60;

entryFade( spep_9-15, 10, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 180, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setEffAlphaKey( spep_9, ct4, 0);

playSe( spep_9+60, SE_10);

tikyuuhakai = entryEffect( spep_9, SP_05,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffShake( spep_9, tikyuuhakai , 180, 8);
setEffScaleKey( spep_9, tikyuuhakai , 1.1, 1.1);

-- ダメージ表示
dealDamage(spep_9+46 -10);

--entryFade( spep_9+120, 19,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);             -- black fade

endPhase(spep_9+140 -10);

end
