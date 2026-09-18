--1016500_ベジータ_ギャリック砲（45度）
--sp_effect_a1_00002

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
SP_01 = 100003;
SP_02 = 102151;
SP_03 = 100005;

--てき側
SP_01x = 100003;
SP_02x = 102151;
SP_03x = 100005;

	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);

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
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- ため
------------------------------------------------------
spep_0=0;

--味方の動き
setDisp( spep_0+0, 0, 1);
setDisp( spep_0+100, 0, 0);
changeAnime(spep_0, 0, 30);                       -- 溜め!
setShakeChara(spep_0, 0, 100, 10);
setMoveKey(   spep_0+0,   0,    0, -54,   0);
setMoveKey(   spep_0+1,   0,    0, -54,   0);
setMoveKey(   spep_0+2,   0,    0, -54,   0);
setMoveKey(   spep_0+3,   0,    0, -54,   0);
setMoveKey(   spep_0+4,   0,    0, -54,   0);
setMoveKey(   spep_0+5,   0,    0, -54,   0);
setMoveKey(   spep_0+100,   0,    0, -54,   0);
setScaleKey(   spep_0+0,   0, 1.5, 1.5);
setScaleKey(   spep_0+1,   0, 1.5, 1.5);
setScaleKey(   spep_0+2,   0, 1.5, 1.5);
setScaleKey(   spep_0+3,   0, 1.5, 1.5);
setScaleKey(   spep_0+4,   0, 1.5, 1.5);
setScaleKey(   spep_0+5,   0, 1.5, 1.5);
setScaleKey(   spep_0+100,   0, 1.5, 1.5);
setRotateKey(spep_0+0,0,0);
setRotateKey(spep_0+1,0,0);
setRotateKey(spep_0+2,0,0);
setRotateKey(spep_0+3,0,0);
setRotateKey(spep_0+4,0,0);
setRotateKey(spep_0+5,0,0);
setRotateKey(spep_0+100,0,0);


--エフェクトの再生
tame = entryEffectLife( spep_0 + 0, SP_01, 100, 0x80, -1, -5, 48, 0 );
setEffMoveKey( spep_0 + 0, tame, -5, 48 , 0 );
setEffMoveKey( spep_0 + 100, tame, -5, 48 , 0 );
setEffScaleKey( spep_0 + 0, tame, 0.5, 0.5 );
setEffScaleKey( spep_0 + 100, tame, 0.5, 0.5 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 100, tame, 255 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 100, tame, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 100, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, shuchusen1, 0, 0 , 0 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 100, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 100, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 14, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 14, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 26,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 26, ctgogo, 72, 10 );
 
setEffMoveKey( spep_0 + 26, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 98, ctgogo, -9.9, 515.5 , 0 );
 
setEffScaleKey( spep_0 + 26, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 90, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 92, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 94, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 96, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 98, ctgogo, 1.69, 1.69 );
 
setEffRotateKey( spep_0 + 26, ctgogo, 0 );
setEffRotateKey( spep_0 + 98, ctgogo, 0 );
 
setEffAlphaKey( spep_0 + 26, ctgogo, 0 );
setEffAlphaKey( spep_0 + 27, ctgogo, 255 );
setEffAlphaKey( spep_0 + 28, ctgogo, 255 );
setEffAlphaKey( spep_0 + 98, ctgogo, 255 );


--黒背景
entryFadeBg(spep_0, 0, 100, 0, 10, 10, 10, 200);       -- ベース暗め　背景

--SE
playSe( spep_0 + 26, SE_04 );  --ゴゴゴ

-- ** ホワイトフェード ** --
entryFade( spep_0 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1 = spep_0 + 100;

------------------------------------------------------
-- カードカットイン(90F) 
------------------------------------------------------

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         -- 技名テクスチャ差し替え

shuchusen = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_1,  shuchusen,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen,  0,  0);
setEffScaleKey(  spep_1,  shuchusen,  1.6,  1.6);
setEffScaleKey(  spep_1+90,  shuchusen,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen,  0);
setEffRotateKey(  spep_1+90,  shuchusen,  0);
setEffAlphaKey(  spep_1,  shuchusen,  255);
setEffAlphaKey(  spep_1+90,  shuchusen,  255);


--***背景と白フェード***
entryFade( spep_1+80, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2 = spep_1 + 88;

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
--味方の動き
setDisp( spep_2+0, 0, 1);
setDisp( spep_2+45, 0, 0);
changeAnime(spep_2+0, 0, 31);                       -- 溜め!

setMoveKey(spep_2+0,    0, -400,  0,   0);
setMoveKey(spep_2+10,    0,      0,  0,   0);
setMoveKey(spep_2+30,    0,   -30,  0,   20);
setMoveKey(spep_2+40,    0,   -150,  0,   50);
setMoveKey(spep_2+45,    0,   -600,  0,   80);


setScaleKey(   spep_2+0,   0, 1.0, 1.0);
setScaleKey(   spep_2+45,   0, 1.0, 1.0);

setRotateKey(spep_2+0,0,0);
setRotateKey(spep_2+45,0,0);

--エフェクトの再生
beam = entryEffectLife( spep_2 + 0, SP_02, 120, 0x100, -1, -150, 50, 0 );
setEffMoveKey( spep_2 + 0, beam, -150, 50 , 0 );
setEffMoveKey( spep_2 + 10, beam, 350, 50 , 0 );
setEffMoveKey( spep_2 + 16, beam, 320, 50 , 0 );
setEffMoveKey( spep_2 + 30, beam, 270, 50 , 0 );
setEffMoveKey( spep_2 + 40, beam, 100, 50 , 0 );
setEffMoveKey( spep_2 + 45, beam, -530, 50 , 0 );
setEffMoveKey( spep_2 + 120, beam, -480, 50 , 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 120, beam, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 120, beam, 255 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 120, beam, 0 );

--集中線
shuchusen2 = entryEffectLife(spep_2+0, 906, 50, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 50, shuchusen2, 0, 0 , 0 );

setEffScaleKey(spep_2+0, shuchusen2, 1.0, 1.0);
setEffScaleKey(spep_2+ 40, shuchusen2, 1.0, 1.0);
setEffScaleKey(spep_2+ 50, shuchusen2, 2.0, 2.0);

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 50, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 50, shuchusen2, 255 );

--流線
ryusen1 = entryEffectLife(spep_2+ 0, 921, 120, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_2 + 0, ryusen1, -10, 50 , 0 );
setEffMoveKey( spep_2 + 120, ryusen1, -10, 50 , 0 );
setEffScaleKey( spep_2 + 0, ryusen1, 1.0, 1.0 );
setEffScaleKey( spep_2 + 120, ryusen1, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, ryusen1, 255 );
setEffAlphaKey( spep_2 + 120, ryusen1, 255 );
setEffRotateKey( spep_2 + 0, ryusen1, 180 );
setEffRotateKey( spep_2 + 120, ryusen1, 180 );

-- 書き文字エントリー
ctzuo = entryEffectLife(spep_2+8, 10012, 32, 0x100, -1, 0, 200, 300); -- 
setEffShake(spep_2+8, ctzuo, 32, 5);
setEffMoveKey( spep_2 + 8, ctzuo, 200, 300 , 0 );
setEffMoveKey( spep_2 + 30, ctzuo, 200, 300 , 0 );
setEffAlphaKey(spep_2+8, ctzuo, 255);
setEffAlphaKey(spep_2+30, ctzuo, 255);
setEffAlphaKey(spep_2+40, ctzuo, 0);
setEffScaleKey(spep_2+8, ctzuo, 0.0, 0.0);
setEffScaleKey(spep_2+12, ctzuo, 1.3, 1.3);
setEffScaleKey(spep_2+32, ctzuo, 1.3, 1.3);
setEffScaleKey(spep_2+40, ctzuo, 6.0, 6.0);
setEffRotateKey( spep_2 + 0, ctzuo, 0 );
setEffRotateKey( spep_2 + 40, ctzuo, 0 );

--背景の色
entryFadeBg(spep_2 + 0, 0, 120, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg(spep_2 + 0, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg(spep_2+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

playSe(spep_2, SE_07);
playSe(spep_2+ 40, SE_07);

-- ** ホワイトフェード ** --
entryFade( spep_2 + 114, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_3 = spep_2 + 120;

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
--エフェクトの再生
hit = entryEffectLife( spep_3 + 0, SP_03, 100, 0x100, -1, -10, 50, 0 );
setEffMoveKey( spep_3 + 0, hit, -10, 50 , 0 );
setEffMoveKey( spep_3 + 100, hit, -10, 50 , 0 );
setEffScaleKey( spep_3 + 0, hit, 1.1, 1.1 );
setEffScaleKey( spep_3 + 62, hit, 1.1, 1.1 );
setEffScaleKey( spep_3 + 100, hit, 2.5, 2.5 );
setEffAlphaKey( spep_3 + 0, hit, 255 );
setEffAlphaKey( spep_3 + 100, hit, 255 );
setEffRotateKey( spep_3 + 0, hit, 0 );
setEffRotateKey( spep_3 + 100, hit, 0 );

--敵の動き
setDisp(spep_3+ 0, 1, 1);
setDisp(spep_3+ 0, 1, 98);

setShakeChara(spep_3+ 0, 1, 98, 20);

changeAnime(spep_3+ 0, 1, 104);                        -- ガード

setMoveKey(spep_3+  0,    1,  235,  0,   0);
setMoveKey(spep_3+  1,    1,  235,  0,   0);
setMoveKey(spep_3+  10,    1,   120,  0,   0);
setMoveKey(spep_3+  98,    1,   120,  0,   0);

setScaleKey(spep_3+ 0,    1,  0.7, 0.7);
setScaleKey(spep_3+  10,   1,   1.6,  1.6);
setScaleKey(spep_3+ 70, 1,  1.6, 1.6);
setScaleKey(spep_3+ 74, 1,  1.5, 1.5);
setScaleKey(spep_3+ 84, 1,  0.2, 0.2);
setScaleKey(spep_3+ 98, 1,  0.2, 0.2);

setRotateKey(spep_3+0,1,0);
setRotateKey(spep_3+98,1,0);

-- 書き文字エントリー
ctzudodo = entryEffectLife(spep_3+ 0, 10014, 60, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_3+0, ctzudodo, 60, 20);

setEffMoveKey( spep_3 + 0, ctzudodo, -100, 255 , 0 );
setEffMoveKey( spep_3 + 60, ctzudodo, -100, 255 , 0 );

setEffScaleKey(spep_3+ 0, ctzudodo, 2.4, 2.4);
setEffScaleKey(spep_3+ 60, ctzudodo, 2.4, 2.4);

setEffRotateKey(spep_3+0, ctzudodo, 70);
setEffRotateKey(spep_3+60, ctzudodo, 70);

setEffAlphaKey(spep_3+0, ctzudodo, 255);
setEffAlphaKey(spep_3+40, ctzudodo, 255);
setEffAlphaKey(spep_3+60, ctzudodo, 0);

-- 流線
ryusen2 = entryEffectLife(spep_3+ 0, 921, 100, 0x80, -1, 0, 0, 0); -- ズドドッ

setEffMoveKey( spep_3 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, ryusen2, 0, 0 , 0 );

setEffScaleKey(spep_3+ 0, ryusen2, 1.0, 1.0);
setEffScaleKey(spep_3+ 100, ryusen2, 1.0, 1.0);

setEffRotateKey(spep_3+0, ryusen2, 0);
setEffRotateKey(spep_3+100, ryusen2, 0);

setEffAlphaKey(spep_3+0, ryusen2, 255);
setEffAlphaKey(spep_3+100, ryusen2, 255);

--背景
entryFadeBg(spep_3+0, 0, 100, 0,0, 0, 0, 255);          -- ベース暗め　背景



-- ** ホワイトフェード ** --
entryFade( spep_3 +92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_3+14; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

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

--SE
playSe(spep_3+ 0, SE_06);
playSe(spep_3+ 62, SE_09);

--次の準備
spep_4 = spep_3 + 100;
------------------------------------------------------
-- ガッ
------------------------------------------------------


--***敵の動き***--
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );
setShakeChara(spep_4+ 0, 1, 10, 1);

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_4 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_4 + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 120, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 105 );
setRotateKey( spep_4 + 4, 1, 240 );
setRotateKey( spep_4 + 6, 1, 405 );
setRotateKey( spep_4 + 8, 1, 600 );
setRotateKey( spep_4 + 10, 1, 825 );
setRotateKey( spep_4 + 12, 1, 1080 );
setRotateKey( spep_4 + 120, 1, 1080 );

--爆発エフェクト
entryEffect( spep_4, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4, SE_10);

setDamage( spep_4 +16, 1, 0);  -- ダメージ振動等
setShake(spep_4+8,6,15);
setShake(spep_4+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_4 + 14, ctGa, 30, 10);

setEffMoveKey( spep_4 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_4+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_4+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_4+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_4+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_4+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_4+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_4 + 14, ctGa, -40 );
setEffRotateKey( spep_4 + 16, ctGa, -31 );
setEffRotateKey( spep_4 + 18, ctGa, -40 );
setEffRotateKey( spep_4 + 20, ctGa, -31 );
setEffRotateKey( spep_4 + 22, ctGa, -40 );
setEffRotateKey( spep_4 + 24, ctGa, -31);
setEffRotateKey( spep_4 + 26, ctGa, -40 );
setEffRotateKey( spep_4 + 28, ctGa, -31);
setEffRotateKey( spep_4 + 30, ctGa, -40 );

setEffAlphaKey( spep_4 + 14, ctGa, 255 );

--entryFadeBg( spep_4,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen = entryEffectLife( spep_4+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_4+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_4+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  spep_4+14,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(spep_4+16);
entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_4 + 110);


else 
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- ため
------------------------------------------------------
spep_0=0;

--味方の動き
setDisp( spep_0+0, 0, 1);
setDisp( spep_0+100, 0, 0);
changeAnime(spep_0, 0, 30);                       -- 溜め!
setShakeChara(spep_0, 0, 100, 10);
setMoveKey(   spep_0+0,   0,    0, -54,   0);
setMoveKey(   spep_0+1,   0,    0, -54,   0);
setMoveKey(   spep_0+2,   0,    0, -54,   0);
setMoveKey(   spep_0+3,   0,    0, -54,   0);
setMoveKey(   spep_0+4,   0,    0, -54,   0);
setMoveKey(   spep_0+5,   0,    0, -54,   0);
setMoveKey(   spep_0+100,   0,    0, -54,   0);
setScaleKey(   spep_0+0,   0, 1.5, 1.5);
setScaleKey(   spep_0+1,   0, 1.5, 1.5);
setScaleKey(   spep_0+2,   0, 1.5, 1.5);
setScaleKey(   spep_0+3,   0, 1.5, 1.5);
setScaleKey(   spep_0+4,   0, 1.5, 1.5);
setScaleKey(   spep_0+5,   0, 1.5, 1.5);
setScaleKey(   spep_0+100,   0, 1.5, 1.5);
setRotateKey(spep_0+0,0,0);
setRotateKey(spep_0+1,0,0);
setRotateKey(spep_0+2,0,0);
setRotateKey(spep_0+3,0,0);
setRotateKey(spep_0+4,0,0);
setRotateKey(spep_0+5,0,0);
setRotateKey(spep_0+100,0,0);


--エフェクトの再生
tame = entryEffectLife( spep_0 + 0, SP_01x, 100, 0x100, -1, -20, 15, 0 );
setEffMoveKey( spep_0 + 0, tame, -20, 15 , 0 );
setEffMoveKey( spep_0 + 100, tame, -20, 15 , 0 );
setEffScaleKey( spep_0 + 0, tame, 0.5, 0.5 );
setEffScaleKey( spep_0 + 100, tame, 0.5, 0.5 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 100, tame, 255 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 100, tame, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 100, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 100, shuchusen1, 0, 0 , 0 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 100, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 100, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 14, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 14, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 26,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 26, ctgogo, 72, 10 );
 
setEffMoveKey( spep_0 + 26, ctgogo, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 98, ctgogo, -9.9, 515.5 , 0 );
 
setEffScaleKey( spep_0 + 26, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 90, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 92, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 94, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 96, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 98, ctgogo, -1.69, 1.69 );
 
setEffRotateKey( spep_0 + 26, ctgogo, 0 );
setEffRotateKey( spep_0 + 98, ctgogo, 0 );
 
setEffAlphaKey( spep_0 + 26, ctgogo, 0 );
setEffAlphaKey( spep_0 + 27, ctgogo, 255 );
setEffAlphaKey( spep_0 + 28, ctgogo, 255 );
setEffAlphaKey( spep_0 + 98, ctgogo, 255 );


--黒背景
entryFadeBg(spep_0, 0, 100, 0, 10, 10, 10, 200);       -- ベース暗め　背景

--SE
playSe( spep_0 + 26, SE_04 );  --ゴゴゴ

-- ** ホワイトフェード ** --
entryFade( spep_0 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1 = spep_0 + 100;

------------------------------------------------------
-- カードカットイン(90F) 
------------------------------------------------------

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                         -- 技名テクスチャ差し替え

shuchusen = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);
setEffMoveKey(  spep_1,  shuchusen,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen,  0,  0);
setEffScaleKey(  spep_1,  shuchusen,  1.6,  1.6);
setEffScaleKey(  spep_1+90,  shuchusen,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen,  0);
setEffRotateKey(  spep_1+90,  shuchusen,  0);
setEffAlphaKey(  spep_1,  shuchusen,  255);
setEffAlphaKey(  spep_1+90,  shuchusen,  255);


--***背景と白フェード***
entryFade( spep_1+80, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--次の準備
spep_2 = spep_1 + 88;

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
--味方の動き
setDisp( spep_2+0, 0, 1);
setDisp( spep_2+45, 0, 0);
changeAnime(spep_2+0, 0, 31);                       -- 溜め!

setMoveKey(spep_2+0,    0, -400,  0,   0);
setMoveKey(spep_2+10,    0,      0,  0,   0);
setMoveKey(spep_2+30,    0,   -30,  0,   20);
setMoveKey(spep_2+40,    0,   -150,  0,   50);
setMoveKey(spep_2+45,    0,   -600,  0,   80);


setScaleKey(   spep_2+0,   0, 1.0, 1.0);
setScaleKey(   spep_2+45,   0, 1.0, 1.0);

setRotateKey(spep_2+0,0,0);
setRotateKey(spep_2+45,0,0);

--エフェクトの再生
beam = entryEffectLife( spep_2 + 0, SP_02x, 120, 0x100, -1, -200, 50, 0 );
setEffMoveKey( spep_2 + 0, beam, -200, 50 , 0 );
setEffMoveKey( spep_2 + 10, beam, 280, 50 , 0 );
setEffMoveKey( spep_2 + 16, beam, 260, 50 , 0 );
setEffMoveKey( spep_2 + 30, beam, 240, 50 , 0 );
setEffMoveKey( spep_2 + 40, beam, 70, 50 , 0 );
setEffMoveKey( spep_2 + 45, beam, -560, 50 , 0 );
setEffMoveKey( spep_2 + 120, beam, -510, 50 , 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 120, beam, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 120, beam, 255 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 120, beam, 0 );

--集中線
shuchusen2 = entryEffectLife(spep_2+0, 906, 50, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 50, shuchusen2, 0, 0 , 0 );

setEffScaleKey(spep_2+0, shuchusen2, 1.0, 1.0);
setEffScaleKey(spep_2+ 40, shuchusen2, 1.0, 1.0);
setEffScaleKey(spep_2+ 50, shuchusen2, 2.0, 2.0);

setEffRotateKey( spep_2 + 0, shuchusen2, 180 );
setEffRotateKey( spep_2 + 50, shuchusen2, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 50, shuchusen2, 255 );

--流線
ryusen1 = entryEffectLife(spep_2+ 0, 921, 120, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_2 + 0, ryusen1, -10, 50 , 0 );
setEffMoveKey( spep_2 + 120, ryusen1, -10, 50 , 0 );
setEffScaleKey( spep_2 + 0, ryusen1, 1.0, 1.0 );
setEffScaleKey( spep_2 + 120, ryusen1, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, ryusen1, 255 );
setEffAlphaKey( spep_2 + 120, ryusen1, 255 );
setEffRotateKey( spep_2 + 0, ryusen1, 180 );
setEffRotateKey( spep_2 + 120, ryusen1, 180 );

-- 書き文字エントリー
ctzuo = entryEffectLife(spep_2+8, 10012, 32, 0x100, -1, 0, 200, 300); -- 
setEffShake(spep_2+8, ctzuo, 32, 5);
setEffMoveKey( spep_2 + 8, ctzuo, 200, 300 , 0 );
setEffMoveKey( spep_2 + 30, ctzuo, 200, 300 , 0 );
setEffAlphaKey(spep_2+8, ctzuo, 255);
setEffAlphaKey(spep_2+30, ctzuo, 255);
setEffAlphaKey(spep_2+40, ctzuo, 0);
setEffScaleKey(spep_2+8, ctzuo, 0.0, 0.0);
setEffScaleKey(spep_2+12, ctzuo, 1.3, 1.3);
setEffScaleKey(spep_2+32, ctzuo, 1.3, 1.3);
setEffScaleKey(spep_2+40, ctzuo, 6.0, 6.0);
setEffRotateKey( spep_2 + 0, ctzuo, 0 );
setEffRotateKey( spep_2 + 40, ctzuo, 0 );

--背景の色
entryFadeBg(spep_2 + 0, 0, 120, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg(spep_2 + 0, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg(spep_2+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

playSe(spep_2, SE_07);
playSe(spep_2+ 40, SE_07);

-- ** ホワイトフェード ** --
entryFade( spep_2 + 114, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_3 = spep_2 + 120;

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
--エフェクトの再生
hit = entryEffectLife( spep_3 + 0, SP_03x, 100, 0x100, -1, -10, 50, 0 );
setEffMoveKey( spep_3 + 0, hit, -10, 50 , 0 );
setEffMoveKey( spep_3 + 100, hit, -10, 50 , 0 );
setEffScaleKey( spep_3 + 0, hit, 1.1, 1.1 );
setEffScaleKey( spep_3 + 62, hit, 1.1, 1.1 );
setEffScaleKey( spep_3 + 100, hit, 2.5, 2.5 );
setEffAlphaKey( spep_3 + 0, hit, 255 );
setEffAlphaKey( spep_3 + 100, hit, 255 );
setEffRotateKey( spep_3 + 0, hit, 0 );
setEffRotateKey( spep_3 + 100, hit, 0 );

--敵の動き
setDisp(spep_3+ 0, 1, 1);
setDisp(spep_3+ 0, 1, 98);

setShakeChara(spep_3+ 0, 1, 98, 20);

changeAnime(spep_3+ 0, 1, 104);                        -- ガード

setMoveKey(spep_3+  0,    1,  235,  0,   0);
setMoveKey(spep_3+  1,    1,  235,  0,   0);
setMoveKey(spep_3+  10,    1,   120,  0,   0);
setMoveKey(spep_3+  98,    1,   120,  0,   0);

setScaleKey(spep_3+ 0,    1,  0.7, 0.7);
setScaleKey(spep_3+  10,   1,   1.6,  1.6);
setScaleKey(spep_3+ 70, 1,  1.6, 1.6);
setScaleKey(spep_3+ 74, 1,  1.5, 1.5);
setScaleKey(spep_3+ 84, 1,  0.2, 0.2);
setScaleKey(spep_3+ 98, 1,  0.2, 0.2);

setRotateKey(spep_3+0,1,0);
setRotateKey(spep_3+98,1,0);

-- 書き文字エントリー
ctzudodo = entryEffectLife(spep_3+ 0, 10014, 60, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_3+0, ctzudodo, 60, 20);

setEffMoveKey( spep_3 + 0, ctzudodo, -100, 255 , 0 );
setEffMoveKey( spep_3 + 60, ctzudodo, -100, 255 , 0 );

setEffScaleKey(spep_3+ 0, ctzudodo, 2.4, 2.4);
setEffScaleKey(spep_3+ 60, ctzudodo, 2.4, 2.4);

setEffRotateKey(spep_3+0, ctzudodo, 0);
setEffRotateKey(spep_3+60, ctzudodo, 0);

setEffAlphaKey(spep_3+0, ctzudodo, 255);
setEffAlphaKey(spep_3+40, ctzudodo, 255);
setEffAlphaKey(spep_3+60, ctzudodo, 0);

-- 流線
ryusen2 = entryEffectLife(spep_3+ 0, 921, 100, 0x80, -1, 0, 0, 0); -- ズドドッ

setEffMoveKey( spep_3 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, ryusen2, 0, 0 , 0 );

setEffScaleKey(spep_3+ 0, ryusen2, 1.0, 1.0);
setEffScaleKey(spep_3+ 100, ryusen2, 1.0, 1.0);

setEffRotateKey(spep_3+0, ryusen2, 0);
setEffRotateKey(spep_3+100, ryusen2, 0);

setEffAlphaKey(spep_3+0, ryusen2, 255);
setEffAlphaKey(spep_3+100, ryusen2, 255);

--背景
entryFadeBg(spep_3+0, 0, 100, 0,0, 0, 0, 255);          -- ベース暗め　背景



-- ** ホワイトフェード ** --
entryFade( spep_3 +92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = spep_3+14; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

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

--SE
playSe(spep_3+ 0, SE_06);
playSe(spep_3+ 62, SE_09);

--次の準備
spep_4 = spep_3 + 100;
------------------------------------------------------
-- ガッ
------------------------------------------------------


--***敵の動き***--
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );
setShakeChara(spep_4+ 0, 1, 10, 1);
setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_4 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_4 + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 120, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 105 );
setRotateKey( spep_4 + 4, 1, 240 );
setRotateKey( spep_4 + 6, 1, 405 );
setRotateKey( spep_4 + 8, 1, 600 );
setRotateKey( spep_4 + 10, 1, 825 );
setRotateKey( spep_4 + 12, 1, 1080 );
setRotateKey( spep_4 + 120, 1, 1080 );

--爆発エフェクト
entryEffect( spep_4, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4, SE_10);

setDamage( spep_4 +16, 1, 0);  -- ダメージ振動等
setShake(spep_4+8,6,15);
setShake(spep_4+14,15,10);

--書き文字--
ctGa = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_4 + 14, ctGa, 30, 10);

setEffMoveKey( spep_4 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_4+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_4+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_4+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_4+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_4+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_4+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_4 + 14, ctGa, -40 );
setEffRotateKey( spep_4 + 16, ctGa, -31 );
setEffRotateKey( spep_4 + 18, ctGa, -40 );
setEffRotateKey( spep_4 + 20, ctGa, -31 );
setEffRotateKey( spep_4 + 22, ctGa, -40 );
setEffRotateKey( spep_4 + 24, ctGa, -31);
setEffRotateKey( spep_4 + 26, ctGa, -40 );
setEffRotateKey( spep_4 + 28, ctGa, -31);
setEffRotateKey( spep_4 + 30, ctGa, -40 );

setEffAlphaKey( spep_4 + 14, ctGa, 255 );

--entryFadeBg( spep_4,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen = entryEffectLife( spep_4+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_4+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( spep_4+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  spep_4+14,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(spep_4+16);
entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_4 + 110);

end