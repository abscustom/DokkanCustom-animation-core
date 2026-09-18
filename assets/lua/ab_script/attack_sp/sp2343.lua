--1023790:SSR_超サイヤ人トランクス(幼年期)&超サイヤ人孫悟天(幼年期)_ビクトリーストライク(簡易版)
--sp_effect_b1_00194
--SP2343

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 9; --気を貯める
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


-- ** エフェクト(味方) ** --
SP_01 = 159185;	--待機	ef_001
SP_02 = 159187;	--奥に突進	ef_002
SP_03 = 159189;	--キック	ef_003		共通
SP_04 = 159190;	--キック寄り	ef_004		ef_009と同時再生
SP_05 = 159198;	--背景	ef_009		ef_004またはef_004rと同時再生
SP_06 = 159192;	--文字のみ	ef_005		ef_010と同時再生
SP_07 = 159199;	--奥に向かう悟天	ef_010		ef_005と同時再生
SP_08 = 159194;	--悟天　キック	ef_006
SP_09 = 159196;	--文字&エフェクトBG	ef_007		共通
SP_10 = 159197;	--背景（空のみ）	ef_008		共通

-- ** エフェクト(敵) ** --
SP_11 = 159186;	--待機	ef_001r		敵用
SP_12 = 159188;	--奥に突進	ef_002r		敵用
SP_13 = 159191;	--キック寄り	ef_004r		ef_009と同時再生　敵用
SP_14 = 159193;	--文字のみ	ef_005r		ef_010rと同時再生　敵用
SP_15 = 159200;	--奥に向かう悟天	ef_010r		ef_005rと同時再生　敵用
SP_16 = 159195;	--悟天　キック	ef_006r		敵用
SP_17 = 159486;	--キック


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5136,   0);
setMoveKey(   1,   0,    0, -5136,   0);
setMoveKey(   2,   0,    0, -5136,   0);
setMoveKey(   3,   0,    0, -5136,   0);
setMoveKey(   4,   0,    0, -5136,   0);
setMoveKey(   5,   0,    0, -5136,   0);
setMoveKey(   6,   0,    0, -5136,   0);
setScaleKey(  0,   0,  1.6, 1.6);
setScaleKey(  1,   0,  1.6, 1.6);
setScaleKey(  2,   0,  1.6, 1.6);
setScaleKey(  3,   0,  1.6, 1.6);
setScaleKey(  4,   0,  1.6, 1.6);
setScaleKey(  5,   0,  1.6, 1.6);
setScaleKey(  6,   0,  1.6, 1.6);
setRotateKey( 0,   0,  0);
setRotateKey( 1,   0,  0);
setRotateKey( 2,   0,  0);
setRotateKey( 3,   0,  0);
setRotateKey( 4,   0,  0);
setRotateKey( 5,   0,  0);
setRotateKey( 6,   0,  0);

setMoveKey(   0,   1,    0, -5136,   0);
setMoveKey(   1,   1,    0, -5136,   0);
setMoveKey(   2,   1,    0, -5136,   0);
setMoveKey(   3,   1,    0, -5136,   0);
setMoveKey(   4,   1,    0, -5136,   0);
setMoveKey(   5,   1,    0, -5136,   0);
setMoveKey(   6,   1,    0, -5136,   0);
setScaleKey(  0,   1,  1.6, 1.6);
setScaleKey(  1,   1,  1.6, 1.6);
setScaleKey(  2,   1,  1.6, 1.6);
setScaleKey(  3,   1,  1.6, 1.6);
setScaleKey(  4,   1,  1.6, 1.6);
setScaleKey(  5,   1,  1.6, 1.6);
setScaleKey(  6,   1,  1.6, 1.6);
setRotateKey( 0,   1,  0);
setRotateKey( 1,   1,  0);
setRotateKey( 2,   1,  0);
setRotateKey( 3,   1,  0);
setRotateKey( 4,   1,  0);
setRotateKey( 5,   1,  0);
setRotateKey( 6,   1,  0);

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 待機
-------------------------------------------------
-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --待機	ef_001
setEffMoveKey( spep_1 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_1 + 120 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_1 + 120 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1, 0);
setEffRotateKey( spep_1 + 120 -4, base1, 0);
setEffAlphaKey( spep_1 + 0, base1, 255);
setEffAlphaKey( spep_1 + 120 -5, base1, 255);
setEffAlphaKey( spep_1 + 120 -4, base1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 20;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 120 -4 -18, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_1 + 0, 1036, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_1 + 16, 1018, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_1 + 20, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_1 + 44, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 68, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 92, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 116, 1036, "",spep_1 + 134, 0, 8, -1);

-- ** 次の準備 ** --
spep_c = spep_1 + 120 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20);
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_c + 0, shuchusen, 0);
setEffRotateKey( spep_c + 90, shuchusen, 0);
setEffAlphaKey( spep_c + 0, shuchusen, 255);
setEffAlphaKey( spep_c + 90, shuchusen, 255);
-- ** 音 ** --
playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_2 = spep_c + 96;


-------------------------------------------------
-- 奥に突進
-------------------------------------------------
-- ** エフェクト等 ** --
base2 = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); --奥に突進	ef_002
setEffMoveKey( spep_2 + 0, base2, 0, 0 , 0);
setEffMoveKey( spep_2 + 60 -4, base2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2, 1.0, 1.0);
setEffScaleKey( spep_2 + 60 -4, base2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2, 0);
setEffRotateKey( spep_2 + 60 -4, base2, 0);
setEffAlphaKey( spep_2 + 0, base2, 255);
setEffAlphaKey( spep_2 + 60 -5, base2, 255);
setEffAlphaKey( spep_2 + 60 -4, base2, 0);


-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--トランクス向かっていく
SE009 = playSeVer2( spep_2 + 4, 1182, "",spep_2 + 64, 0, 6, -1);
SE010 = playSeVer2( spep_2 + 4, 44, "", 0, 0, 0, -1);

--悟天向かっていく
SE011 = playSeVer2( spep_2 + 24, 1117, "",spep_2 + 64, 0, 6, -1);
SE012 = playSeVer2( spep_2 + 24, 1182, "",spep_2 + 64, 0, 6, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 60 -4;

-------------------------------------------------
-- キック
-------------------------------------------------
-- ** エフェクト等 ** --
base3 = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0); --キック	ef_003		共通
setEffMoveKey( spep_3 + 0, base3, 0, 0 , 0);
setEffMoveKey( spep_3 + 60 -4, base3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3, 1.0, 1.0);
setEffScaleKey( spep_3 + 60 -4, base3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3, 0);
setEffRotateKey( spep_3 + 60 -4, base3, 0);
setEffAlphaKey( spep_3 + 0, base3, 255);
setEffAlphaKey( spep_3 + 60 -5, base3, 255);
setEffAlphaKey( spep_3 + 60 -4, base3, 0);


-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 60 -4 -12, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--トランクス飛び込む
SE013 = playSeVer2( spep_3 + 0, 9, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 0, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 46; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------


-- ** 次の準備 ** --
spep_4 = spep_3 + 60 -4;

-------------------------------------------------
-- キック寄り
-------------------------------------------------
-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0); --キック寄り	ef_004
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 24 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 24 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 24 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 24 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 24 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0); --エ背景	ef_009
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 24 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 24 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 24 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 24 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 24 -4, base4_b, 0);


-- ** 集中線 ** --
shuchusen_4 = entryEffectLife( spep_4 + 0,  906, 24 -4, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen_4, 24 -4, 25 );
setEffMoveKey( spep_4 + 0, shuchusen_4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 24 -4, shuchusen_4, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen_4, 1.2, 1.2 );
setEffScaleKey( spep_4 + 24 -4, shuchusen_4, 1.2, 1.2 );
setEffRotateKey( spep_4 + 0, shuchusen_4, 0 );
setEffRotateKey( spep_4 + 24 -4, shuchusen_4, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen_4, 255 );
setEffAlphaKey( spep_4 + 24 -5, shuchusen_4, 255 );
setEffAlphaKey( spep_4 + 24 -4, shuchusen_4, 0 );


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -4 + 24, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );

--setMoveKey( spep_4 -3 + 0, 1, 34, -81.7 , 0 );
setMoveKey( spep_4 -2 + 2, 1, 34, -81.7 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -161.4, -432 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -161.4, -432 , 0 );
setMoveKey( spep_4 -3 + 9, 1, -161.4, -432 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 34, -81.7 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 34, -81.7 , 0 );
setMoveKey( spep_4 -3 + 13, 1, 34, -81.7 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -161.4, -432 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -161.4, -432 , 0 );
setMoveKey( spep_4 -3 + 19, 1, -161.4, -432 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 34, -81.7 , 0 );
setMoveKey( spep_4 -5 + 24, 1, 34, -81.7 , 0 );

--setScaleKey( spep_4 -3 + 0, 1, 3.4, 3.4 );
setScaleKey( spep_4 -2 + 2, 1, 3.4, 3.4 );
setScaleKey( spep_4 -3 + 4, 1, 10.65, 10.65 );
setScaleKey( spep_4 -3 + 8, 1, 10.65, 10.65 );
setScaleKey( spep_4 -3 + 9, 1, 10.65, 10.65 );
setScaleKey( spep_4 -3 + 10, 1, 3.4, 3.4 );
setScaleKey( spep_4 -3 + 12, 1, 3.4, 3.4 );
setScaleKey( spep_4 -3 + 13, 1, 3.4, 3.4 );
setScaleKey( spep_4 -3 + 14, 1, 10.65, 10.65 );
setScaleKey( spep_4 -3 + 18, 1, 10.65, 10.65 );
setScaleKey( spep_4 -3 + 19, 1, 10.65, 10.65 );
setScaleKey( spep_4 -3 + 20, 1, 3.4, 3.4 );
setScaleKey( spep_4 -5 + 24, 1, 3.4, 3.4 );

setRotateKey( spep_4 + 0, 1, -25.3 );
setRotateKey( spep_4 -5 + 24, 1, -25.3 );


-- ** 音 ** --
--トランクスキック
SE015 = playSeVer2( spep_4 + 0, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_4 + 12 -4, 1187, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_5 = spep_4 + 24 -4;

-------------------------------------------------
-- 文字のみ
-------------------------------------------------
-- ** エフェクト等 ** --
base5_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0); --文字のみ	ef_005
setEffMoveKey( spep_5 + 0, base5_f, 0, 0 , 0);
setEffMoveKey( spep_5 + 60 -4, base5_f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_f, 1.0, 1.0);
setEffScaleKey( spep_5 + 60 -4, base5_f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_f, 0);
setEffRotateKey( spep_5 + 60 -4, base5_f, 0);
setEffAlphaKey( spep_5 + 0, base5_f, 255);
setEffAlphaKey( spep_5 + 60 -5, base5_f, 255);
setEffAlphaKey( spep_5 + 60 -4, base5_f, 0);

base5_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0); --奥に向かう悟天	ef_010		ef_005と同時再生
setEffMoveKey( spep_5 + 0, base5_b, 0, 0 , 0);
setEffMoveKey( spep_5 + 60 -4, base5_b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_b, 1.0, 1.0);
setEffScaleKey( spep_5 + 60 -4, base5_b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_b, 0);
setEffRotateKey( spep_5 + 60 -4, base5_b, 0);
setEffAlphaKey( spep_5 + 0, base5_b, 255);
setEffAlphaKey( spep_5 + 60 -5, base5_b, 255);
setEffAlphaKey( spep_5 + 60 -4, base5_b, 0);


-- ** 集中線 ** --
shuchusen_5 = entryEffectLife( spep_5 + 0,  906, 60 -4, 0x100, -1, 100, 120, 0 );
setEffShake( spep_5 + 0, shuchusen_5, 60 -4, 25 );
setEffMoveKey( spep_5 + 0, shuchusen_5, 100, 120 , 0 );
setEffMoveKey( spep_5 + 60 -4, shuchusen_5, 100, 120 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen_5, 1.7, 1.7 );
setEffScaleKey( spep_5 + 60 -4, shuchusen_5, 1.7, 1.7 );
setEffRotateKey( spep_5 + 0, shuchusen_5, 0 );
setEffRotateKey( spep_5 + 60 -4, shuchusen_5, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen_5, 255 );
setEffAlphaKey( spep_5 + 60 -5, shuchusen_5, 255 );
setEffAlphaKey( spep_5 + 60 -4, shuchusen5, 0 );


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -4 + 60, 1, 0 );

changeAnime( spep_5 + 0, 1, 5 );

--setMoveKey( spep_5 -3 + 0, 1, -963.4, 74.4 , 0 );
setMoveKey( spep_5 -2 + 2, 1, -697.4, 60.6 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -583.7, 54.7 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -501.7, 50.4 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -436.2, 47.1 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -381.4, 44.2 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -334.3, 41.8 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -292.9, 39.7 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -256.2, 37.8 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -223.3, 36.1 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -193.5, 34.6 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -166.6, 33.2 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -142, 31.9 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -119.6, 30.8 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -99, 29.7 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -80.2, 28.8 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -63, 27.9 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -47.2, 27.1 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -32.8, 26.3 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -19.6, 25.7 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -7.6, 25 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 3.3, 24.5 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 13.1, 24 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 21.9, 23.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 29.6, 23.1 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 36.4, 22.8 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 42.1, 22.5 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 46.8, 22.3 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 50.3, 22.1 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 52, 22 , 0 );
-- setMoveKey( spep_5 -5 + 60, 1, 52, 22 , 0 );

--setScaleKey( spep_5 -3 + 0, 1, 14.99, 14.99 );
setScaleKey( spep_5 -2 + 2, 1, 11.26, 11.26 );
setScaleKey( spep_5 -3 + 4, 1, 9.67, 9.67 );
setScaleKey( spep_5 -3 + 6, 1, 8.52, 8.52 );
setScaleKey( spep_5 -3 + 8, 1, 7.6, 7.6 );
setScaleKey( spep_5 -3 + 10, 1, 6.83, 6.83 );
setScaleKey( spep_5 -3 + 12, 1, 6.17, 6.17 );
setScaleKey( spep_5 -3 + 14, 1, 5.59, 5.59 );
setScaleKey( spep_5 -3 + 16, 1, 5.07, 5.07 );
setScaleKey( spep_5 -3 + 18, 1, 4.61, 4.61 );
setScaleKey( spep_5 -3 + 20, 1, 4.19, 4.19 );
setScaleKey( spep_5 -3 + 22, 1, 3.82, 3.82 );
setScaleKey( spep_5 -3 + 24, 1, 3.47, 3.47 );
setScaleKey( spep_5 -3 + 26, 1, 3.16, 3.16 );
setScaleKey( spep_5 -3 + 28, 1, 2.87, 2.87 );
setScaleKey( spep_5 -3 + 30, 1, 2.61, 2.61 );
setScaleKey( spep_5 -3 + 32, 1, 2.36, 2.36 );
setScaleKey( spep_5 -3 + 34, 1, 2.14, 2.14 );
setScaleKey( spep_5 -3 + 36, 1, 1.94, 1.94 );
setScaleKey( spep_5 -3 + 38, 1, 1.76, 1.76 );
setScaleKey( spep_5 -3 + 40, 1, 1.59, 1.59 );
setScaleKey( spep_5 -3 + 42, 1, 1.43, 1.43 );
setScaleKey( spep_5 -3 + 44, 1, 1.3, 1.3 );
setScaleKey( spep_5 -3 + 46, 1, 1.17, 1.17 );
setScaleKey( spep_5 -3 + 48, 1, 1.07, 1.07 );
setScaleKey( spep_5 -3 + 50, 1, 0.97, 0.97 );
setScaleKey( spep_5 -3 + 52, 1, 0.89, 0.89 );
setScaleKey( spep_5 -3 + 54, 1, 0.82, 0.82 );
setScaleKey( spep_5 -3 + 56, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 58, 1, 0.75, 0.75 );
-- setScaleKey( spep_5 -5 + 60, 1, 0.75, 0.75 );

--setRotateKey( spep_5 -3 + 0, 1, 82.2 );
setRotateKey( spep_5 -2 + 2, 1, 86.2 );
setRotateKey( spep_5 -3 + 4, 1, 87.9 );
setRotateKey( spep_5 -3 + 6, 1, 89.1 );
setRotateKey( spep_5 -3 + 8, 1, 90 );
setRotateKey( spep_5 -3 + 10, 1, 90.8 );
setRotateKey( spep_5 -3 + 12, 1, 91.5 );
setRotateKey( spep_5 -3 + 14, 1, 92.2 );
setRotateKey( spep_5 -3 + 16, 1, 92.7 );
setRotateKey( spep_5 -3 + 18, 1, 93.2 );
setRotateKey( spep_5 -3 + 20, 1, 93.6 );
setRotateKey( spep_5 -3 + 22, 1, 94 );
setRotateKey( spep_5 -3 + 24, 1, 94.4 );
setRotateKey( spep_5 -3 + 26, 1, 94.7 );
setRotateKey( spep_5 -3 + 28, 1, 95 );
setRotateKey( spep_5 -3 + 30, 1, 95.3 );
setRotateKey( spep_5 -3 + 32, 1, 95.6 );
setRotateKey( spep_5 -3 + 34, 1, 95.8 );
setRotateKey( spep_5 -3 + 36, 1, 96 );
setRotateKey( spep_5 -3 + 38, 1, 96.2 );
setRotateKey( spep_5 -3 + 40, 1, 96.4 );
setRotateKey( spep_5 -3 + 42, 1, 96.5 );
setRotateKey( spep_5 -3 + 44, 1, 96.7 );
setRotateKey( spep_5 -3 + 46, 1, 96.8 );
setRotateKey( spep_5 -3 + 48, 1, 96.9 );
setRotateKey( spep_5 -3 + 50, 1, 97 );
setRotateKey( spep_5 -3 + 52, 1, 97.1 );
setRotateKey( spep_5 -3 + 54, 1, 97.2 );
setRotateKey( spep_5 -3 + 56, 1, 97.2 );
setRotateKey( spep_5 -3 + 58, 1, 97.3 );
-- setRotateKey( spep_5 -5 + 60, 1, 97.3 );


-- ** 音 ** --
--悟天回り込む
SE017 = playSeVer2( spep_5 + 28, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_5 + 32, 1277, "",spep_5 + 76, 0, 8, -1);


-- ** 次の準備 ** --
spep_6 = spep_5 + 60 -4;

-------------------------------------------------
-- 悟天　キック
-------------------------------------------------
-- ** エフェクト等 ** --
base6 = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0); --悟天　キック	ef_006
setEffMoveKey( spep_6 + 0, base6, 0, 0 , 0);
setEffMoveKey( spep_6 + 52 -4, base6, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6, 1.0, 1.0);
setEffScaleKey( spep_6 + 52 -4, base6, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6, 0);
setEffRotateKey( spep_6 + 52 -4, base6, 0);
setEffAlphaKey( spep_6 + 0, base6, 255);
setEffAlphaKey( spep_6 + 52 -5, base6, 255);
setEffAlphaKey( spep_6 + 52 -4, base6, 0);


-- ** 集中線 ** --
shuchusen_6 = entryEffectLife( spep_6 + 6,  906, 52 -4 -6, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 6, shuchusen_6, 52 -4 -6, 25 );
setEffMoveKey( spep_6 + 6, shuchusen_6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 52 -4, shuchusen_6, 0, 0 , 0 );
setEffScaleKey( spep_6 + 6, shuchusen_6, 1.2, 1.2 );
setEffScaleKey( spep_6 + 52 -4, shuchusen_6, 1.2, 1.2 );
setEffRotateKey( spep_6 + 6, shuchusen_6, 0 );
setEffRotateKey( spep_6 + 52 -4, shuchusen_6, 0 );
setEffAlphaKey( spep_6 + 6, shuchusen_6, 0 );
setEffAlphaKey( spep_6 + 16, shuchusen_6, 255 );
setEffAlphaKey( spep_6 + 52 -5, shuchusen_6, 255 );
setEffAlphaKey( spep_6 + 52 -4, shuchusen_6, 0 );


-- ** 白フェード ** --
entryFade( spep_6 + 52 -4 -6, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -4 + 52, 1, 0 );

changeAnime( spep_6 + 0, 1, 105 );

setMoveKey( spep_6 + 0, 1, 4014.9, 1178.2 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 4014.9, 1178.2 , 0 );
setMoveKey( spep_6 -3 + 28, 1, -789.5, -708.3 , 0 );
setMoveKey( spep_6 -3 + 30, 1, -595.2, -499 , 0 );
setMoveKey( spep_6 -3 + 32, 1, -505.8, -409.9 , 0 );
setMoveKey( spep_6 -3 + 34, 1, -436.5, -343.7 , 0 );
setMoveKey( spep_6 -3 + 36, 1, -379.2, -290.7 , 0 );
setMoveKey( spep_6 -3 + 38, 1, -330.5, -246.7 , 0 );
setMoveKey( spep_6 -3 + 40, 1, -345.4, -260 , 0 );
setMoveKey( spep_6 -3 + 42, 1, -401.3, -312.2 , 0 );
setMoveKey( spep_6 -3 + 44, 1, -513, -429.3 , 0 );
setMoveKey( spep_6 -3 + 46, 1, -651.1, -604.6 , 0 );
setMoveKey( spep_6 -3 + 48, 1, -752.9, -763.9 , 0 );
setMoveKey( spep_6 -3 + 50, 1, -813, -875.4 , 0 );
setMoveKey( spep_6 -4 + 52, 1, -847.4, -947.3 , 0 );
-- setMoveKey( spep_6 -4 + 54, 1, -847.4, -947.3 , 0 );

setScaleKey( spep_6 + 0, 1, 0, 0 );
setScaleKey( spep_6 -3 + 26, 1, 0, 0 );
setScaleKey( spep_6 -3 + 28, 1, 7.29, 7.29 );
setScaleKey( spep_6 -3 + 30, 1, 6.06, 6.06 );
setScaleKey( spep_6 -3 + 32, 1, 5.51, 5.51 );
setScaleKey( spep_6 -3 + 34, 1, 5.11, 5.11 );
setScaleKey( spep_6 -3 + 36, 1, 4.77, 4.77 );
setScaleKey( spep_6 -3 + 38, 1, 4.49, 4.49 );
setScaleKey( spep_6 -3 + 40, 1, 4.82, 4.82 );
setScaleKey( spep_6 -3 + 42, 1, 6.09, 6.09 );
setScaleKey( spep_6 -3 + 44, 1, 8.75, 8.75 );
setScaleKey( spep_6 -3 + 46, 1, 12.39, 12.39 );
setScaleKey( spep_6 -3 + 48, 1, 15.44, 15.44 );
setScaleKey( spep_6 -3 + 50, 1, 17.47, 17.47 );
setScaleKey( spep_6 -4 + 52, 1, 18.73, 18.73 );
-- setScaleKey( spep_6 -4 + 54, 1, 18.73, 18.73 );

setRotateKey( spep_6 + 0, 1, 17.7 );
setRotateKey( spep_6 -3 + 26, 1, 17.7 );
setRotateKey( spep_6 -3 + 28, 1, 17.8 );
setRotateKey( spep_6 -3 + 30, 1, 24.5 );
setRotateKey( spep_6 -3 + 32, 1, 27.4 );
setRotateKey( spep_6 -3 + 34, 1, 29.6 );
setRotateKey( spep_6 -3 + 36, 1, 31.4 );
setRotateKey( spep_6 -3 + 38, 1, 32.9 );
setRotateKey( spep_6 -3 + 40, 1, 32.5 );
setRotateKey( spep_6 -3 + 42, 1, 31.3 );
setRotateKey( spep_6 -3 + 44, 1, 28.7 );
setRotateKey( spep_6 -3 + 46, 1, 25.2 );
setRotateKey( spep_6 -3 + 48, 1, 22.2 );
setRotateKey( spep_6 -3 + 50, 1, 20.2 );
setRotateKey( spep_6 -4 + 52, 1, 19 );
-- setRotateKey( spep_6 -4 + 54, 1, 19 );


-- ** 音 ** --
--悟天構える
SE019 = playSeVer2( spep_6 + 0, 1233, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_6 + 0, SE019, 59 );
SE020 = playSeVer2( spep_6 + 10 -4, 1013, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_6 + 16 -4, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_6 + 16, SE021, 71 );
SE022 = playSeVer2( spep_6 + 40 -4, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_6 + 40, SE022, 71 );


-- ** 次の準備 ** --
spep_7 = spep_6 + 52 -4;

-------------------------------------------------
-- 文字&エフェクトBG
-------------------------------------------------
-- ** エフェクト等 ** --
base7 = entryEffect( spep_7 + 0, SP_09, 0x80, -1, 0, 0, 0); --文字&エフェクトBG	ef_007
setEffMoveKey( spep_7 + 0, base7, 0, 0 , 0);
setEffMoveKey( spep_7 + 28 -4, base7, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7, 1.0, 1.0);
setEffScaleKey( spep_7 + 28 -4, base7, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7, 0);
setEffRotateKey( spep_7 + 28 -4, base7, 0);
setEffAlphaKey( spep_7 + 0, base7, 255);
setEffAlphaKey( spep_7 + 28 -5, base7, 255);
setEffAlphaKey( spep_7 + 28 -4, base7, 0);


-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_7 + 28 -4 -6, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--悟天キック
SE023 = playSeVer2( spep_7 + 0, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_7 + 12 -4, 1187, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_7 + 12 -4, 1009, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_7 + 14 -4, 1110, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_8 = spep_7 + 28 -4;

-------------------------------------------------
-- 背景（空のみ）	ef_008
-------------------------------------------------
-- ** エフェクト等 ** --
base8 = entryEffect( spep_8 + 0, SP_10, 0x80, -1, 0, 0, 0); --文字&エフェクトBG	ef_007
setEffMoveKey( spep_8 + 0, base8, 0, 0 , 0);
setEffMoveKey( spep_8 + 112 -4, base8, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base8, 1.0, 1.0);
setEffScaleKey( spep_8 + 112 -4, base8, 1.0, 1.0);
setEffRotateKey( spep_8 + 0, base8, 0);
setEffRotateKey( spep_8 + 112 -4, base8, 0);
setEffAlphaKey( spep_8 + 0, base8, 255);
setEffAlphaKey( spep_8 + 112 -4, base8, 255);


-- ** ひび割れ ** --
hibiware = entryEffect( spep_8 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_8 + 2, hibiware, 70, -60, 0 );
setEffMoveKey( spep_8 + 112 -4, hibiware, 70, -60, 0 );
setEffScaleKey( spep_8 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_8 + 112 -4, hibiware, 1.0, 1.0 );
setEffRotateKey( spep_8 + 2, hibiware, 0 );
setEffRotateKey( spep_8 + 112 -4, hibiware, 0 );
setEffAlphaKey( spep_8 + 2, hibiware, 0 );
setEffAlphaKey( spep_8 + 13, hibiware, 0 );
setEffAlphaKey( spep_8 + 14, hibiware, 255 );
setEffAlphaKey( spep_8 + 112 -4, hibiware, 255 );


-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_8 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_8 + 14, shuchusen5, 32, 25 );
setEffMoveKey( spep_8 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_8 + 46, shuchusen5, 0, 0 , 0 );
setEffScaleKey( spep_8 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_8 + 46, shuchusen5, 1, 1 );
setEffRotateKey( spep_8 + 14, shuchusen5, 0 );
setEffRotateKey( spep_8 + 46, shuchusen5, 0 );
setEffAlphaKey( spep_8 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_8 + 28, shuchusen5, 255 );
setEffAlphaKey( spep_8 + 30, shuchusen5, 252 );
setEffAlphaKey( spep_8 + 32, shuchusen5, 242 );
setEffAlphaKey( spep_8 + 34, shuchusen5, 227 );
setEffAlphaKey( spep_8 + 36, shuchusen5, 205 );
setEffAlphaKey( spep_8 + 38, shuchusen5, 176 );
setEffAlphaKey( spep_8 + 40, shuchusen5, 142 );
setEffAlphaKey( spep_8 + 42, shuchusen5, 101 );
setEffAlphaKey( spep_8 + 44, shuchusen5, 54 );
setEffAlphaKey( spep_8 + 46, shuchusen5, 0 );

shuchusen6 = entryEffectLife( spep_8 + 14,  1657, 112 -4 -14, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_8 + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_8 + 112 -4, shuchusen6, 0, 0 , 0 );
setEffScaleKey( spep_8 + 14, shuchusen6, 1, 1 );
setEffScaleKey( spep_8 + 112 -4, shuchusen6, 1, 1 );
setEffRotateKey( spep_8 + 14, shuchusen6, 0 );
setEffRotateKey( spep_8 + 112 -4, shuchusen6, 0 );
setEffAlphaKey( spep_8 + 14, shuchusen6, 255 );
setEffAlphaKey( spep_8 + 112 -4, shuchusen6, 255 );


-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_8 + 14,  10005, 112 -4 -14, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_8 + 14, ctga, 14, 20 );

setEffMoveKey( spep_8 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_8 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_8 + 112 -4, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_8 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_8 + 112 -4, ctga, 3.2, 3.2 );

setEffRotateKey( spep_8 + 14, ctga, -10.9 );
setEffRotateKey( spep_8 + 15, ctga, -10.9 );
setEffRotateKey( spep_8 + 16, ctga, -14.9 );
setEffRotateKey( spep_8 + 17, ctga, -14.9 );
setEffRotateKey( spep_8 + 18, ctga, -10.9 );
setEffRotateKey( spep_8 + 19, ctga, -10.9 );
setEffRotateKey( spep_8 + 20, ctga, -14.9 );
setEffRotateKey( spep_8 + 21, ctga, -14.9 );
setEffRotateKey( spep_8 + 22, ctga, -10.9 );
setEffRotateKey( spep_8 + 23, ctga, -10.9 );
setEffRotateKey( spep_8 + 24, ctga, -14.9 );
setEffRotateKey( spep_8 + 25, ctga, -14.9 );
setEffRotateKey( spep_8 + 26, ctga, -10.9 );
setEffRotateKey( spep_8 + 27, ctga, -10.9 );
setEffRotateKey( spep_8 + 28, ctga, -14.9 );
setEffRotateKey( spep_8 + 112 -4, ctga, -14.9 );

setEffAlphaKey( spep_8 + 14, ctga, 255 );
setEffAlphaKey( spep_8 + 112 -4, ctga, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 112 -4, 1, 0 );

changeAnime( spep_8 + 0, 1, 107 );

setMoveKey( spep_8 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_8 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_8 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_8 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_8 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_8 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_8 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_8 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_8 + 8, 1, 15, -65.4 +30, 0 );
setMoveKey( spep_8 + 9, 1, 15, -65.4 +30, 0 );
setMoveKey( spep_8 + 10, 1, 5.1 +30, -74.9 +60, 0 );
setMoveKey( spep_8 + 11, 1, 5.1 +30, -74.9 +60, 0 );
setMoveKey( spep_8 + 12, 1, -45.3 +50, -142.1 +90, 0 );  --画面にぶつかる
setMoveKey( spep_8 + 112 -4, 1, -45.3 +50, -142.1 +90, 0 );

setScaleKey( spep_8 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_8 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_8 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_8 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_8 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_8 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_8 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_8 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_8 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_8 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_8 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 112 -4, 1, 1.6, 1.6 );

setRotateKey( spep_8 + 0, 1, -40 +42 );
setRotateKey( spep_8 + 1, 1, -40 +42 );
setRotateKey( spep_8 + 2, 1, 80 +42 );
setRotateKey( spep_8 + 3, 1, 80 +42 );
setRotateKey( spep_8 + 4, 1, 200 +42 );
setRotateKey( spep_8 + 5, 1, 200 +42 );
setRotateKey( spep_8 + 6, 1, 360 +42 );
setRotateKey( spep_8 + 7, 1, 360 +42 );
setRotateKey( spep_8 + 8, 1, 558 +42 );
setRotateKey( spep_8 + 9, 1, 558 +42 );
setRotateKey( spep_8 + 10, 1, 425 +42 );
setRotateKey( spep_8 + 11, 1, 425 +42 );
setRotateKey( spep_8 + 12, 1, -40 +42 );
setRotateKey( spep_8 + 112 -4, 1, -40 +42 );


-- ** 音 ** --
--ガッ
SE027 = playSeVer2( spep_8 + 14, 1054, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_8 + 14, 1025, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_8 + 12 -3); -- ダメージ表示フレーム
endPhase( spep_8 + 112 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 待機
-------------------------------------------------
-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_11, 0x80, -1, 0, 0, 0); --待機	ef_001r		敵用
setEffMoveKey( spep_1 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_1 + 120 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_1 + 120 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1, 0);
setEffRotateKey( spep_1 + 120 -4, base1, 0);
setEffAlphaKey( spep_1 + 0, base1, 255);
setEffAlphaKey( spep_1 + 120 -5, base1, 255);
setEffAlphaKey( spep_1 + 120 -4, base1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 20;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 120 -4 -18, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_1 + 0, 1036, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_1 + 16, 1018, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_1 + 20, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_1 + 44, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 68, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 92, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 116, 1036, "",spep_1 + 134, 0, 8, -1);

-- ** 次の準備 ** --
spep_c = spep_1 + 120 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20);
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_c + 0, shuchusen, 0);
setEffRotateKey( spep_c + 90, shuchusen, 0);
setEffAlphaKey( spep_c + 0, shuchusen, 255);
setEffAlphaKey( spep_c + 90, shuchusen, 255);
-- ** 音 ** --
playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_2 = spep_c + 96;


-------------------------------------------------
-- 奥に突進
-------------------------------------------------
-- ** エフェクト等 ** --
base2 = entryEffect( spep_2 + 0, SP_12, 0x80, -1, 0, 0, 0); --奥に突進	ef_002r		敵用
setEffMoveKey( spep_2 + 0, base2, 0, 0 , 0);
setEffMoveKey( spep_2 + 60 -4, base2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2, 1.0, 1.0);
setEffScaleKey( spep_2 + 60 -4, base2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2, 0);
setEffRotateKey( spep_2 + 60 -4, base2, 0);
setEffAlphaKey( spep_2 + 0, base2, 255);
setEffAlphaKey( spep_2 + 60 -5, base2, 255);
setEffAlphaKey( spep_2 + 60 -4, base2, 0);


-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--トランクス向かっていく
SE009 = playSeVer2( spep_2 + 4, 1182, "",spep_2 + 64, 0, 6, -1);
SE010 = playSeVer2( spep_2 + 4, 44, "", 0, 0, 0, -1);

--悟天向かっていく
SE011 = playSeVer2( spep_2 + 24, 1117, "",spep_2 + 64, 0, 6, -1);
SE012 = playSeVer2( spep_2 + 24, 1182, "",spep_2 + 64, 0, 6, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 60 -4;

-------------------------------------------------
-- キック
-------------------------------------------------
-- ** エフェクト等 ** --
base3 = entryEffect( spep_3 + 0, SP_17, 0x80, -1, 0, 0, 0); --キック	ef_003		共通
setEffMoveKey( spep_3 + 0, base3, 0, 0 , 0);
setEffMoveKey( spep_3 + 60 -4, base3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3, 1.0, 1.0);
setEffScaleKey( spep_3 + 60 -4, base3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3, 0);
setEffRotateKey( spep_3 + 60 -4, base3, 0);
setEffAlphaKey( spep_3 + 0, base3, 255);
setEffAlphaKey( spep_3 + 60 -5, base3, 255);
setEffAlphaKey( spep_3 + 60 -4, base3, 0);


-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 60 -4 -12, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--トランクス飛び込む
SE013 = playSeVer2( spep_3 + 0, 9, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 0, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 46; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------


-- ** 次の準備 ** --
spep_4 = spep_3 + 60 -4;

-------------------------------------------------
-- キック寄り
-------------------------------------------------
-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_13, 0x100, -1, 0, 0, 0); --キック寄り	ef_004r		ef_009と同時再生　敵用
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 24 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 24 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 24 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 24 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 24 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0); --エ背景	ef_009
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 24 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 24 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 24 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 24 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 24 -4, base4_b, 0);


-- ** 集中線 ** --
shuchusen_4 = entryEffectLife( spep_4 + 0,  906, 24 -4, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen_4, 24 -4, 25 );
setEffMoveKey( spep_4 + 0, shuchusen_4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 24 -4, shuchusen_4, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen_4, 1.2, 1.2 );
setEffScaleKey( spep_4 + 24 -4, shuchusen_4, 1.2, 1.2 );
setEffRotateKey( spep_4 + 0, shuchusen_4, 0 );
setEffRotateKey( spep_4 + 24 -4, shuchusen_4, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen_4, 255 );
setEffAlphaKey( spep_4 + 24 -5, shuchusen_4, 255 );
setEffAlphaKey( spep_4 + 24 -4, shuchusen_4, 0 );


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -4 + 24, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );

--setMoveKey( spep_4 -3 + 0, 1, 34, -81.7 , 0 );
setMoveKey( spep_4 -2 + 2, 1, 34, -81.7 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -161.4, -432 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -161.4, -432 , 0 );
setMoveKey( spep_4 -3 + 9, 1, -161.4, -432 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 34, -81.7 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 34, -81.7 , 0 );
setMoveKey( spep_4 -3 + 13, 1, 34, -81.7 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -161.4, -432 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -161.4, -432 , 0 );
setMoveKey( spep_4 -3 + 19, 1, -161.4, -432 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 34, -81.7 , 0 );
setMoveKey( spep_4 -5 + 24, 1, 34, -81.7 , 0 );

--setScaleKey( spep_4 -3 + 0, 1, 3.4, 3.4 );
setScaleKey( spep_4 -2 + 2, 1, 3.4, 3.4 );
setScaleKey( spep_4 -3 + 4, 1, 10.65, 10.65 );
setScaleKey( spep_4 -3 + 8, 1, 10.65, 10.65 );
setScaleKey( spep_4 -3 + 9, 1, 10.65, 10.65 );
setScaleKey( spep_4 -3 + 10, 1, 3.4, 3.4 );
setScaleKey( spep_4 -3 + 12, 1, 3.4, 3.4 );
setScaleKey( spep_4 -3 + 13, 1, 3.4, 3.4 );
setScaleKey( spep_4 -3 + 14, 1, 10.65, 10.65 );
setScaleKey( spep_4 -3 + 18, 1, 10.65, 10.65 );
setScaleKey( spep_4 -3 + 19, 1, 10.65, 10.65 );
setScaleKey( spep_4 -3 + 20, 1, 3.4, 3.4 );
setScaleKey( spep_4 -5 + 24, 1, 3.4, 3.4 );

setRotateKey( spep_4 + 0, 1, -25.3 );
setRotateKey( spep_4 -5 + 24, 1, -25.3 );


-- ** 音 ** --
--トランクスキック
SE015 = playSeVer2( spep_4 + 0, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_4 + 12 -4, 1187, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_5 = spep_4 + 24 -4;

-------------------------------------------------
-- 文字のみ
-------------------------------------------------
-- ** エフェクト等 ** --
base5_f = entryEffect( spep_5 + 0, SP_14, 0x100, -1, 0, 0, 0); --文字のみ	ef_005r		ef_010rと同時再生　敵用
setEffMoveKey( spep_5 + 0, base5_f, 0, 0 , 0);
setEffMoveKey( spep_5 + 60 -4, base5_f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_f, 1.0, 1.0);
setEffScaleKey( spep_5 + 60 -4, base5_f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_f, 0);
setEffRotateKey( spep_5 + 60 -4, base5_f, 0);
setEffAlphaKey( spep_5 + 0, base5_f, 255);
setEffAlphaKey( spep_5 + 60 -5, base5_f, 255);
setEffAlphaKey( spep_5 + 60 -4, base5_f, 0);

base5_b = entryEffect( spep_5 + 0, SP_15, 0x80, -1, 0, 0, 0); --奥に向かう悟天	ef_010r		ef_005rと同時再生　敵用
setEffMoveKey( spep_5 + 0, base5_b, 0, 0 , 0);
setEffMoveKey( spep_5 + 60 -4, base5_b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_b, 1.0, 1.0);
setEffScaleKey( spep_5 + 60 -4, base5_b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_b, 0);
setEffRotateKey( spep_5 + 60 -4, base5_b, 0);
setEffAlphaKey( spep_5 + 0, base5_b, 255);
setEffAlphaKey( spep_5 + 60 -5, base5_b, 255);
setEffAlphaKey( spep_5 + 60 -4, base5_b, 0);


-- ** 集中線 ** --
shuchusen_5 = entryEffectLife( spep_5 + 0,  906, 60 -4, 0x100, -1, 100, 120, 0 );
setEffShake( spep_5 + 0, shuchusen_5, 60 -4, 25 );
setEffMoveKey( spep_5 + 0, shuchusen_5, 100, 120 , 0 );
setEffMoveKey( spep_5 + 60 -4, shuchusen_5, 100, 120 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen_5, 1.7, 1.7 );
setEffScaleKey( spep_5 + 60 -4, shuchusen_5, 1.7, 1.7 );
setEffRotateKey( spep_5 + 0, shuchusen_5, 0 );
setEffRotateKey( spep_5 + 60 -4, shuchusen_5, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen_5, 255 );
setEffAlphaKey( spep_5 + 60 -5, shuchusen_5, 255 );
setEffAlphaKey( spep_5 + 60 -4, shuchusen5, 0 );


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -4 + 60, 1, 0 );

changeAnime( spep_5 + 0, 1, 5 );

--setMoveKey( spep_5 -3 + 0, 1, -963.4, 74.4 , 0 );
setMoveKey( spep_5 -2 + 2, 1, -697.4, 60.6 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -583.7, 54.7 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -501.7, 50.4 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -436.2, 47.1 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -381.4, 44.2 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -334.3, 41.8 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -292.9, 39.7 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -256.2, 37.8 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -223.3, 36.1 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -193.5, 34.6 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -166.6, 33.2 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -142, 31.9 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -119.6, 30.8 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -99, 29.7 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -80.2, 28.8 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -63, 27.9 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -47.2, 27.1 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -32.8, 26.3 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -19.6, 25.7 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -7.6, 25 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 3.3, 24.5 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 13.1, 24 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 21.9, 23.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 29.6, 23.1 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 36.4, 22.8 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 42.1, 22.5 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 46.8, 22.3 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 50.3, 22.1 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 52, 22 , 0 );
-- setMoveKey( spep_5 -5 + 60, 1, 52, 22 , 0 );

--setScaleKey( spep_5 -3 + 0, 1, 14.99, 14.99 );
setScaleKey( spep_5 -2 + 2, 1, 11.26, 11.26 );
setScaleKey( spep_5 -3 + 4, 1, 9.67, 9.67 );
setScaleKey( spep_5 -3 + 6, 1, 8.52, 8.52 );
setScaleKey( spep_5 -3 + 8, 1, 7.6, 7.6 );
setScaleKey( spep_5 -3 + 10, 1, 6.83, 6.83 );
setScaleKey( spep_5 -3 + 12, 1, 6.17, 6.17 );
setScaleKey( spep_5 -3 + 14, 1, 5.59, 5.59 );
setScaleKey( spep_5 -3 + 16, 1, 5.07, 5.07 );
setScaleKey( spep_5 -3 + 18, 1, 4.61, 4.61 );
setScaleKey( spep_5 -3 + 20, 1, 4.19, 4.19 );
setScaleKey( spep_5 -3 + 22, 1, 3.82, 3.82 );
setScaleKey( spep_5 -3 + 24, 1, 3.47, 3.47 );
setScaleKey( spep_5 -3 + 26, 1, 3.16, 3.16 );
setScaleKey( spep_5 -3 + 28, 1, 2.87, 2.87 );
setScaleKey( spep_5 -3 + 30, 1, 2.61, 2.61 );
setScaleKey( spep_5 -3 + 32, 1, 2.36, 2.36 );
setScaleKey( spep_5 -3 + 34, 1, 2.14, 2.14 );
setScaleKey( spep_5 -3 + 36, 1, 1.94, 1.94 );
setScaleKey( spep_5 -3 + 38, 1, 1.76, 1.76 );
setScaleKey( spep_5 -3 + 40, 1, 1.59, 1.59 );
setScaleKey( spep_5 -3 + 42, 1, 1.43, 1.43 );
setScaleKey( spep_5 -3 + 44, 1, 1.3, 1.3 );
setScaleKey( spep_5 -3 + 46, 1, 1.17, 1.17 );
setScaleKey( spep_5 -3 + 48, 1, 1.07, 1.07 );
setScaleKey( spep_5 -3 + 50, 1, 0.97, 0.97 );
setScaleKey( spep_5 -3 + 52, 1, 0.89, 0.89 );
setScaleKey( spep_5 -3 + 54, 1, 0.82, 0.82 );
setScaleKey( spep_5 -3 + 56, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 58, 1, 0.75, 0.75 );
-- setScaleKey( spep_5 -5 + 60, 1, 0.75, 0.75 );

--setRotateKey( spep_5 -3 + 0, 1, 82.2 );
setRotateKey( spep_5 -2 + 2, 1, 86.2 );
setRotateKey( spep_5 -3 + 4, 1, 87.9 );
setRotateKey( spep_5 -3 + 6, 1, 89.1 );
setRotateKey( spep_5 -3 + 8, 1, 90 );
setRotateKey( spep_5 -3 + 10, 1, 90.8 );
setRotateKey( spep_5 -3 + 12, 1, 91.5 );
setRotateKey( spep_5 -3 + 14, 1, 92.2 );
setRotateKey( spep_5 -3 + 16, 1, 92.7 );
setRotateKey( spep_5 -3 + 18, 1, 93.2 );
setRotateKey( spep_5 -3 + 20, 1, 93.6 );
setRotateKey( spep_5 -3 + 22, 1, 94 );
setRotateKey( spep_5 -3 + 24, 1, 94.4 );
setRotateKey( spep_5 -3 + 26, 1, 94.7 );
setRotateKey( spep_5 -3 + 28, 1, 95 );
setRotateKey( spep_5 -3 + 30, 1, 95.3 );
setRotateKey( spep_5 -3 + 32, 1, 95.6 );
setRotateKey( spep_5 -3 + 34, 1, 95.8 );
setRotateKey( spep_5 -3 + 36, 1, 96 );
setRotateKey( spep_5 -3 + 38, 1, 96.2 );
setRotateKey( spep_5 -3 + 40, 1, 96.4 );
setRotateKey( spep_5 -3 + 42, 1, 96.5 );
setRotateKey( spep_5 -3 + 44, 1, 96.7 );
setRotateKey( spep_5 -3 + 46, 1, 96.8 );
setRotateKey( spep_5 -3 + 48, 1, 96.9 );
setRotateKey( spep_5 -3 + 50, 1, 97 );
setRotateKey( spep_5 -3 + 52, 1, 97.1 );
setRotateKey( spep_5 -3 + 54, 1, 97.2 );
setRotateKey( spep_5 -3 + 56, 1, 97.2 );
setRotateKey( spep_5 -3 + 58, 1, 97.3 );
-- setRotateKey( spep_5 -5 + 60, 1, 97.3 );


-- ** 音 ** --
--悟天回り込む
SE017 = playSeVer2( spep_5 + 28, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_5 + 32, 1277, "",spep_5 + 76, 0, 8, -1);


-- ** 次の準備 ** --
spep_6 = spep_5 + 60 -4;

-------------------------------------------------
-- 悟天　キック
-------------------------------------------------
-- ** エフェクト等 ** --
base6 = entryEffect( spep_6 + 0, SP_16, 0x80, -1, 0, 0, 0); --悟天　キック	ef_006r		敵用
setEffMoveKey( spep_6 + 0, base6, 0, 0 , 0);
setEffMoveKey( spep_6 + 52 -4, base6, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6, 1.0, 1.0);
setEffScaleKey( spep_6 + 52 -4, base6, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6, 0);
setEffRotateKey( spep_6 + 52 -4, base6, 0);
setEffAlphaKey( spep_6 + 0, base6, 255);
setEffAlphaKey( spep_6 + 52 -5, base6, 255);
setEffAlphaKey( spep_6 + 52 -4, base6, 0);


-- ** 集中線 ** --
shuchusen_6 = entryEffectLife( spep_6 + 6,  906, 52 -4 -6, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 6, shuchusen_6, 52 -4 -6, 25 );
setEffMoveKey( spep_6 + 6, shuchusen_6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 52 -4, shuchusen_6, 0, 0 , 0 );
setEffScaleKey( spep_6 + 6, shuchusen_6, 1.2, 1.2 );
setEffScaleKey( spep_6 + 52 -4, shuchusen_6, 1.2, 1.2 );
setEffRotateKey( spep_6 + 6, shuchusen_6, 0 );
setEffRotateKey( spep_6 + 52 -4, shuchusen_6, 0 );
setEffAlphaKey( spep_6 + 6, shuchusen_6, 0 );
setEffAlphaKey( spep_6 + 16, shuchusen_6, 255 );
setEffAlphaKey( spep_6 + 52 -5, shuchusen_6, 255 );
setEffAlphaKey( spep_6 + 52 -4, shuchusen_6, 0 );


-- ** 白フェード ** --
entryFade( spep_6 + 52 -4 -6, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -4 + 52, 1, 0 );

changeAnime( spep_6 + 0, 1, 105 );

setMoveKey( spep_6 + 0, 1, 4014.9, 1178.2 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 4014.9, 1178.2 , 0 );
setMoveKey( spep_6 -3 + 28, 1, -789.5, -708.3 , 0 );
setMoveKey( spep_6 -3 + 30, 1, -595.2, -499 , 0 );
setMoveKey( spep_6 -3 + 32, 1, -505.8, -409.9 , 0 );
setMoveKey( spep_6 -3 + 34, 1, -436.5, -343.7 , 0 );
setMoveKey( spep_6 -3 + 36, 1, -379.2, -290.7 , 0 );
setMoveKey( spep_6 -3 + 38, 1, -330.5, -246.7 , 0 );
setMoveKey( spep_6 -3 + 40, 1, -345.4, -260 , 0 );
setMoveKey( spep_6 -3 + 42, 1, -401.3, -312.2 , 0 );
setMoveKey( spep_6 -3 + 44, 1, -513, -429.3 , 0 );
setMoveKey( spep_6 -3 + 46, 1, -651.1, -604.6 , 0 );
setMoveKey( spep_6 -3 + 48, 1, -752.9, -763.9 , 0 );
setMoveKey( spep_6 -3 + 50, 1, -813, -875.4 , 0 );
setMoveKey( spep_6 -4 + 52, 1, -847.4, -947.3 , 0 );
-- setMoveKey( spep_6 -4 + 54, 1, -847.4, -947.3 , 0 );

setScaleKey( spep_6 + 0, 1, 0, 0 );
setScaleKey( spep_6 -3 + 26, 1, 0, 0 );
setScaleKey( spep_6 -3 + 28, 1, 7.29, 7.29 );
setScaleKey( spep_6 -3 + 30, 1, 6.06, 6.06 );
setScaleKey( spep_6 -3 + 32, 1, 5.51, 5.51 );
setScaleKey( spep_6 -3 + 34, 1, 5.11, 5.11 );
setScaleKey( spep_6 -3 + 36, 1, 4.77, 4.77 );
setScaleKey( spep_6 -3 + 38, 1, 4.49, 4.49 );
setScaleKey( spep_6 -3 + 40, 1, 4.82, 4.82 );
setScaleKey( spep_6 -3 + 42, 1, 6.09, 6.09 );
setScaleKey( spep_6 -3 + 44, 1, 8.75, 8.75 );
setScaleKey( spep_6 -3 + 46, 1, 12.39, 12.39 );
setScaleKey( spep_6 -3 + 48, 1, 15.44, 15.44 );
setScaleKey( spep_6 -3 + 50, 1, 17.47, 17.47 );
setScaleKey( spep_6 -4 + 52, 1, 18.73, 18.73 );
-- setScaleKey( spep_6 -4 + 54, 1, 18.73, 18.73 );

setRotateKey( spep_6 + 0, 1, 17.7 );
setRotateKey( spep_6 -3 + 26, 1, 17.7 );
setRotateKey( spep_6 -3 + 28, 1, 17.8 );
setRotateKey( spep_6 -3 + 30, 1, 24.5 );
setRotateKey( spep_6 -3 + 32, 1, 27.4 );
setRotateKey( spep_6 -3 + 34, 1, 29.6 );
setRotateKey( spep_6 -3 + 36, 1, 31.4 );
setRotateKey( spep_6 -3 + 38, 1, 32.9 );
setRotateKey( spep_6 -3 + 40, 1, 32.5 );
setRotateKey( spep_6 -3 + 42, 1, 31.3 );
setRotateKey( spep_6 -3 + 44, 1, 28.7 );
setRotateKey( spep_6 -3 + 46, 1, 25.2 );
setRotateKey( spep_6 -3 + 48, 1, 22.2 );
setRotateKey( spep_6 -3 + 50, 1, 20.2 );
setRotateKey( spep_6 -4 + 52, 1, 19 );
-- setRotateKey( spep_6 -4 + 54, 1, 19 );


-- ** 音 ** --
--悟天構える
SE019 = playSeVer2( spep_6 + 0, 1233, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_6 + 0, SE019, 59 );
SE020 = playSeVer2( spep_6 + 10 -4, 1013, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_6 + 16 -4, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_6 + 16, SE021, 71 );
SE022 = playSeVer2( spep_6 + 40 -4, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_6 + 40, SE022, 71 );


-- ** 次の準備 ** --
spep_7 = spep_6 + 52 -4;

-------------------------------------------------
-- 文字&エフェクトBG
-------------------------------------------------
-- ** エフェクト等 ** --
base7 = entryEffect( spep_7 + 0, SP_09, 0x80, -1, 0, 0, 0); --文字&エフェクトBG	ef_007
setEffMoveKey( spep_7 + 0, base7, 0, 0 , 0);
setEffMoveKey( spep_7 + 28 -4, base7, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7, -1.0, 1.0);
setEffScaleKey( spep_7 + 28 -4, base7, -1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7, 0);
setEffRotateKey( spep_7 + 28 -4, base7, 0);
setEffAlphaKey( spep_7 + 0, base7, 255);
setEffAlphaKey( spep_7 + 28 -5, base7, 255);
setEffAlphaKey( spep_7 + 28 -4, base7, 0);


-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_7 + 28 -4 -6, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--悟天キック
SE023 = playSeVer2( spep_7 + 0, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_7 + 12 -4, 1187, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_7 + 12 -4, 1009, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_7 + 14 -4, 1110, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_8 = spep_7 + 28 -4;

-------------------------------------------------
-- 背景（空のみ）	ef_008
-------------------------------------------------
-- ** エフェクト等 ** --
base8 = entryEffect( spep_8 + 0, SP_10, 0x80, -1, 0, 0, 0); --文字&エフェクトBG	ef_007
setEffMoveKey( spep_8 + 0, base8, 0, 0 , 0);
setEffMoveKey( spep_8 + 112 -4, base8, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base8, 1.0, 1.0);
setEffScaleKey( spep_8 + 112 -4, base8, 1.0, 1.0);
setEffRotateKey( spep_8 + 0, base8, 0);
setEffRotateKey( spep_8 + 112 -4, base8, 0);
setEffAlphaKey( spep_8 + 0, base8, 255);
setEffAlphaKey( spep_8 + 112 -4, base8, 255);


-- ** ひび割れ ** --
hibiware = entryEffect( spep_8 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_8 + 2, hibiware, 70, -60, 0 );
setEffMoveKey( spep_8 + 112 -4, hibiware, 70, -60, 0 );
setEffScaleKey( spep_8 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_8 + 112 -4, hibiware, 1.0, 1.0 );
setEffRotateKey( spep_8 + 2, hibiware, 0 );
setEffRotateKey( spep_8 + 112 -4, hibiware, 0 );
setEffAlphaKey( spep_8 + 2, hibiware, 0 );
setEffAlphaKey( spep_8 + 13, hibiware, 0 );
setEffAlphaKey( spep_8 + 14, hibiware, 255 );
setEffAlphaKey( spep_8 + 112 -4, hibiware, 255 );


-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_8 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_8 + 14, shuchusen5, 32, 25 );
setEffMoveKey( spep_8 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_8 + 46, shuchusen5, 0, 0 , 0 );
setEffScaleKey( spep_8 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_8 + 46, shuchusen5, 1, 1 );
setEffRotateKey( spep_8 + 14, shuchusen5, 0 );
setEffRotateKey( spep_8 + 46, shuchusen5, 0 );
setEffAlphaKey( spep_8 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_8 + 28, shuchusen5, 255 );
setEffAlphaKey( spep_8 + 30, shuchusen5, 252 );
setEffAlphaKey( spep_8 + 32, shuchusen5, 242 );
setEffAlphaKey( spep_8 + 34, shuchusen5, 227 );
setEffAlphaKey( spep_8 + 36, shuchusen5, 205 );
setEffAlphaKey( spep_8 + 38, shuchusen5, 176 );
setEffAlphaKey( spep_8 + 40, shuchusen5, 142 );
setEffAlphaKey( spep_8 + 42, shuchusen5, 101 );
setEffAlphaKey( spep_8 + 44, shuchusen5, 54 );
setEffAlphaKey( spep_8 + 46, shuchusen5, 0 );

shuchusen6 = entryEffectLife( spep_8 + 14,  1657, 112 -4 -14, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_8 + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_8 + 112 -4, shuchusen6, 0, 0 , 0 );
setEffScaleKey( spep_8 + 14, shuchusen6, 1, 1 );
setEffScaleKey( spep_8 + 112 -4, shuchusen6, 1, 1 );
setEffRotateKey( spep_8 + 14, shuchusen6, 0 );
setEffRotateKey( spep_8 + 112 -4, shuchusen6, 0 );
setEffAlphaKey( spep_8 + 14, shuchusen6, 255 );
setEffAlphaKey( spep_8 + 112 -4, shuchusen6, 255 );


-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_8 + 14,  10005, 112 -4 -14, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_8 + 14, ctga, 14, 20 );

setEffMoveKey( spep_8 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_8 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_8 + 112 -4, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_8 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_8 + 112 -4, ctga, 3.2, 3.2 );

setEffRotateKey( spep_8 + 14, ctga, -10.9 );
setEffRotateKey( spep_8 + 15, ctga, -10.9 );
setEffRotateKey( spep_8 + 16, ctga, -14.9 );
setEffRotateKey( spep_8 + 17, ctga, -14.9 );
setEffRotateKey( spep_8 + 18, ctga, -10.9 );
setEffRotateKey( spep_8 + 19, ctga, -10.9 );
setEffRotateKey( spep_8 + 20, ctga, -14.9 );
setEffRotateKey( spep_8 + 21, ctga, -14.9 );
setEffRotateKey( spep_8 + 22, ctga, -10.9 );
setEffRotateKey( spep_8 + 23, ctga, -10.9 );
setEffRotateKey( spep_8 + 24, ctga, -14.9 );
setEffRotateKey( spep_8 + 25, ctga, -14.9 );
setEffRotateKey( spep_8 + 26, ctga, -10.9 );
setEffRotateKey( spep_8 + 27, ctga, -10.9 );
setEffRotateKey( spep_8 + 28, ctga, -14.9 );
setEffRotateKey( spep_8 + 112 -4, ctga, -14.9 );

setEffAlphaKey( spep_8 + 14, ctga, 255 );
setEffAlphaKey( spep_8 + 112 -4, ctga, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 112 -4, 1, 0 );

changeAnime( spep_8 + 0, 1, 107 );

setMoveKey( spep_8 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_8 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_8 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_8 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_8 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_8 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_8 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_8 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_8 + 8, 1, 15, -65.4 +30, 0 );
setMoveKey( spep_8 + 9, 1, 15, -65.4 +30, 0 );
setMoveKey( spep_8 + 10, 1, 5.1 +30, -74.9 +60, 0 );
setMoveKey( spep_8 + 11, 1, 5.1 +30, -74.9 +60, 0 );
setMoveKey( spep_8 + 12, 1, -45.3 +50, -142.1 +90, 0 );  --画面にぶつかる
setMoveKey( spep_8 + 112 -4, 1, -45.3 +50, -142.1 +90, 0 );

setScaleKey( spep_8 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_8 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_8 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_8 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_8 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_8 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_8 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_8 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_8 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_8 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_8 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 112 -4, 1, 1.6, 1.6 );

setRotateKey( spep_8 + 0, 1, -40 +42 );
setRotateKey( spep_8 + 1, 1, -40 +42 );
setRotateKey( spep_8 + 2, 1, 80 +42 );
setRotateKey( spep_8 + 3, 1, 80 +42 );
setRotateKey( spep_8 + 4, 1, 200 +42 );
setRotateKey( spep_8 + 5, 1, 200 +42 );
setRotateKey( spep_8 + 6, 1, 360 +42 );
setRotateKey( spep_8 + 7, 1, 360 +42 );
setRotateKey( spep_8 + 8, 1, 558 +42 );
setRotateKey( spep_8 + 9, 1, 558 +42 );
setRotateKey( spep_8 + 10, 1, 425 +42 );
setRotateKey( spep_8 + 11, 1, 425 +42 );
setRotateKey( spep_8 + 12, 1, -40 +42 );
setRotateKey( spep_8 + 112 -4, 1, -40 +42 );


-- ** 音 ** --
--ガッ
SE027 = playSeVer2( spep_8 + 14, 1054, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_8 + 14, 1025, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_8 + 12 -3); -- ダメージ表示フレーム
endPhase( spep_8 + 112 -8); -- 終了フレーム

end
