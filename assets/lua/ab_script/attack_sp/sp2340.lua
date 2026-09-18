--1023800:UR_超サイヤ人トランクス(幼年期)&超サイヤ人孫悟天(幼年期)_ビクトリーストライク
--sp_effect_b1_00195
--sp2340

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
SP_01 = 159201;	--待機	ef_001
SP_02 = 159203;	--奥に突進	ef_002
SP_03 = 159205;	--キック	ef_003		共通
SP_04 = 159206;	--キック寄り	ef_004		ef_013と同時再生
SP_05 = 159222;	--背景	ef_013		ef_004またはef_004rと同時再生
SP_06 = 159208;	--文字のみ	ef_005		ef_014と同時再生
SP_07 = 159223;	--奥に向かう悟天	ef_014		ef_005と同時再生
SP_08 = 159210;	--悟天　キック	ef_006
SP_09 = 159212;	--文字&エフェクトBG	ef_007		共通
SP_10 = 159213;	--手前に突進	ef_008
SP_11 = 159215;	--パンチ	ef_009		ef_015と同時再生
SP_12 = 159225;	--背景	ef_015		ef_009と同時再生
SP_13 = 159217;	--敵吹っ飛び　見送る二人	ef_010		ef_016と同時再生
SP_14 = 159226;	--背景	ef_016		ef_010と同時再生
SP_15 = 159219;	--岩山に激突（手前）　文字有	ef_011		ef_017とef_018と同時再生　※enemyも交互に挟んで表示（workデータを参照して下さい）
SP_16 = 159227;	--岩山に激突（中央）	ef_017		ef_011とef_018と同時再生
SP_17 = 159228;	--背景	ef_018		ef_011とef_017と同時再生
SP_18 = 159221;	--崩れる岩山	ef_012		崩れる岩山　共通

-- ** エフェクト(敵) ** --
SP_19 = 159202;	--待機	ef_001r		敵用
SP_20 = 159204;	--奥に突進	ef_002r		敵用
SP_21 = 159207;	--キック寄り	ef_004r		ef_013と同時再生　敵用
SP_22 = 159209;	--文字のみ	ef_005r		ef_014rと同時再生　敵用
SP_23 = 159224;	--奥に向かう悟天	ef_014r		ef_005rと同時再生　敵用
SP_24 = 159211;	--悟天　キック	ef_006r		敵用
SP_25 = 159214;	--手前に突進	ef_008r		敵用
SP_26 = 159216;	--パンチ	ef_009r		ef_015と同時再生 敵用
SP_27 = 159218;	--敵吹っ飛び　見送る二人	ef_010r		ef_016と同時再生　敵用
SP_28 = 159220;	--岩山に激突（手前）　文字有	ef_011r		ef_017とef_018と同時再生　※enemyも交互に挟んで表示（workデータを参照して下さい）　敵用
SP_29 = 159487;	--キック


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
spep_2 = spep_1 + 120 -4;

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
SE008 = playSeVer2( spep_2 + 4, 1182, "",spep_2 + 64, 0, 6, -1);
SE009 = playSeVer2( spep_2 + 4, 44, "", 0, 0, 0, -1);

--悟天向かっていく
SE010 = playSeVer2( spep_2 + 24, 1117, "",spep_2 + 64, 0, 6, -1);
SE011 = playSeVer2( spep_2 + 24, 1182, "",spep_2 + 64, 0, 6, -1);


-- ** 次の準備 ** --
spep_c = spep_2 + 60 -4;

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
spep_3 = spep_c + 96;

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

base4_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0); --背景	ef_013
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
-- 奥に向かう悟天
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

base5_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0); --奥に向かう悟天	ef_014		ef_005と同時再生
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
SE018 = playSeVer2( spep_5 + 34, 1277, "",spep_5 + 76, 0, 8, -1);


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
-- 手前に突進
-------------------------------------------------
-- ** エフェクト等 ** --
base8 = entryEffect( spep_8 + 0, SP_10, 0x80, -1, 0, 0, 0); --手前に突進	ef_008
setEffMoveKey( spep_8 + 0, base8, 0, 0 , 0);
setEffMoveKey( spep_8 + 112 -4, base8, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base8, 1.0, 1.0);
setEffScaleKey( spep_8 + 112 -4, base8, 1.0, 1.0);
setEffRotateKey( spep_8 + 0, base8, 0);
setEffRotateKey( spep_8 + 112 -4, base8, 0);
setEffAlphaKey( spep_8 + 0, base8, 255);
setEffAlphaKey( spep_8 + 112 -5, base8, 255);
setEffAlphaKey( spep_8 + 112 -4, base8, 0);


-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 -3 + 26, 1, 0 );

changeAnime( spep_8 + 0, 1, 107 );

--setMoveKey( spep_8 -3 + 0, 1, -222.9, 350 , 0 );
setMoveKey( spep_8 -2 + 2, 1, -142.9, 261.4 , 0 );
setMoveKey( spep_8 -3 + 4, 1, -63, 172.7 , 0 );
setMoveKey( spep_8 -3 + 6, 1, 17, 84.1 , 0 );
setMoveKey( spep_8 -3 + 8, 1, 96.9, -4.6 , 0 );
setMoveKey( spep_8 -3 + 10, 1, 176.9, -93.2 , 0 );
setMoveKey( spep_8 -3 + 12, 1, 256.8, -181.9 , 0 );
setMoveKey( spep_8 -3 + 14, 1, 336.8, -270.5 , 0 );
setMoveKey( spep_8 -3 + 16, 1, 416.7, -359.1 , 0 );
setMoveKey( spep_8 -3 + 18, 1, 496.7, -447.8 , 0 );
setMoveKey( spep_8 -3 + 20, 1, 576.6, -536.4 , 0 );
setMoveKey( spep_8 -3 + 22, 1, 656.6, -625.1 , 0 );
setMoveKey( spep_8 -3 + 24, 1, 736.5, -713.7 , 0 );
setMoveKey( spep_8 -3 + 26, 1, 736.5, -713.7 , 0 );

--setScaleKey( spep_8 -3 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_8 -2 + 2, 1, 0.48, 0.48 );
setScaleKey( spep_8 -3 + 4, 1, 0.62, 0.62 );
setScaleKey( spep_8 -3 + 6, 1, 0.75, 0.75 );
setScaleKey( spep_8 -3 + 8, 1, 0.88, 0.88 );
setScaleKey( spep_8 -3 + 10, 1, 1.02, 1.02 );
setScaleKey( spep_8 -3 + 12, 1, 1.15, 1.15 );
setScaleKey( spep_8 -3 + 14, 1, 1.28, 1.28 );
setScaleKey( spep_8 -3 + 16, 1, 1.42, 1.42 );
setScaleKey( spep_8 -3 + 18, 1, 1.55, 1.55 );
setScaleKey( spep_8 -3 + 20, 1, 1.68, 1.68 );
setScaleKey( spep_8 -3 + 22, 1, 1.82, 1.82 );
setScaleKey( spep_8 -3 + 24, 1, 1.95, 1.95 );
setScaleKey( spep_8 -3 + 26, 1, 1.95, 1.95 );

setRotateKey( spep_8 + 0, 1, 62.2 );
setRotateKey( spep_8 -3 + 26, 1, 62.2 );


-- ** 白フェード ** --
entryFade( spep_8 + 112 -4 -6, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--敵飛んでいく
SE027 = playSeVer2( spep_8 + 0 -8, 1183, "",spep_8 + 70, 0, 18, -1);	setSeVolumeByWorkId( spep_8 + 0, SE027, 69 );

--二人合流して向かっていく
SE028 = playSeVer2( spep_8 + 30, 1117, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_8 + 44, 9, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_8 + 44, 1314, "",spep_8 + 152, 0, 30, -1);
SE031 = playSeVer2( spep_8 + 44, 1182, "", 0, 0, 0, -1);

--画面遷移
SE032 = playSeVer2( spep_8 + 60, 1072, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_8 + 88, 1116, "",spep_8 + 142, 0, 20, -1);


-- ** 次の準備 ** --
spep_9 = spep_8 + 112 -4;

-------------------------------------------------
-- パンチ
-------------------------------------------------
-- ** エフェクト等 ** --
base9_f = entryEffect( spep_9 + 0, SP_11, 0x100, -1, 0, 0, 0); --パンチ	ef_009
setEffMoveKey( spep_9 + 0, base9_f, 0, 0 , 0);
setEffMoveKey( spep_9 + 48 -4, base9_f, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base9_f, 1.0, 1.0);
setEffScaleKey( spep_9 + 48 -4, base9_f, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base9_f, 0);
setEffRotateKey( spep_9 + 48 -4, base9_f, 0);
setEffAlphaKey( spep_9 + 0, base9_f, 255);
setEffAlphaKey( spep_9 + 48 -5, base9_f, 255);
setEffAlphaKey( spep_9 + 48 -4, base9_f, 0);

base9_b = entryEffect( spep_9 + 0, SP_12, 0x80, -1, 0, 0, 0); --背景	ef_015
setEffMoveKey( spep_9 + 0, base9_b, 0, 0 , 0);
setEffMoveKey( spep_9 + 48 -4, base9_b, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base9_b, 1.0, 1.0);
setEffScaleKey( spep_9 + 48 -4, base9_b, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base9_b, 0);
setEffRotateKey( spep_9 + 48 -4, base9_b, 0);
setEffAlphaKey( spep_9 + 0, base9_b, 255);
setEffAlphaKey( spep_9 + 48 -5, base9_b, 255);
setEffAlphaKey( spep_9 + 48 -4, base9_b, 0);


-- ** 集中線 ** --
shuchusen_9 = entryEffectLife( spep_9 + 0,  906, 48 -4, 0x80, -1, 100, -120, 0 );
setEffShake( spep_9 + 0, shuchusen_9, 48 -4, 25 );
setEffMoveKey( spep_9 + 0, shuchusen_9, 0, 0 , 0 );
setEffMoveKey( spep_9 + 48 -4, shuchusen_9, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, shuchusen_9, 1.2, 1.2 );
setEffScaleKey( spep_9 + 48 -4, shuchusen_9, 1.2, 1.2 );
setEffRotateKey( spep_9 + 0, shuchusen_9, 0 );
setEffRotateKey( spep_9 + 48 -4, shuchusen_9, 0 );
setEffAlphaKey( spep_9 + 0, shuchusen_9, 255 );
setEffAlphaKey( spep_9 + 48 -5, shuchusen_9, 255 );
setEffAlphaKey( spep_9 + 48 -4, shuchusen_9, 0 );


-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 -4 + 48, 1, 0 );

changeAnime( spep_9 + 0, 1, 108 );
changeAnime( spep_9 -3 + 6, 1, 5 );

--setMoveKey( spep_9 -3 + 0, 1, 69.5, -23.2 , 0 );
setMoveKey( spep_9 -2 + 2, 1, 58.9, -5.5 , 0 );
setMoveKey( spep_9 -3 + 5, 1, 50.2, -17.2 , 0 );
setMoveKey( spep_9 -3 + 6, 1, -11.5, -115.6 , 0 );
setMoveKey( spep_9 -3 + 8, 1, -26.6, -98.7 , 0 );
setMoveKey( spep_9 -3 + 10, 1, -8.6, -92.9 , 0 );
setMoveKey( spep_9 -3 + 12, 1, -18.9, -88.1 , 0 );
setMoveKey( spep_9 -3 + 14, 1, -11.5, -99.7 , 0 );
setMoveKey( spep_9 -3 + 16, 1, -7.9, -96.4 , 0 );
setMoveKey( spep_9 -3 + 18, 1, -6.3, -93.4 , 0 );
setMoveKey( spep_9 -3 + 20, 1, -4.8, -90.8 , 0 );
setMoveKey( spep_9 -3 + 22, 1, -3.5, -88.5 , 0 );
setMoveKey( spep_9 -3 + 24, 1, -2.4, -86.6 , 0 );
setMoveKey( spep_9 -3 + 26, 1, -1.3, -84.8 , 0 );
setMoveKey( spep_9 -3 + 28, 1, -0.3, -83.3 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 0.6, -82 , 0 );
setMoveKey( spep_9 -3 + 32, 1, 1.5, -80.9 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 2.2, -80 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 2.9, -79.2 , 0 );
setMoveKey( spep_9 -3 + 38, 1, 3.5, -78.6 , 0 );
setMoveKey( spep_9 -3 + 40, 1, 4.1, -78.1 , 0 );
setMoveKey( spep_9 -3 + 42, 1, 4.6, -77.8 , 0 );
setMoveKey( spep_9 -3 + 44, 1, 5, -77.6 , 0 );
setMoveKey( spep_9 -3 + 46, 1, 5.4, -77.5 , 0 );
-- setMoveKey( spep_9 -5 + 48, 1, 5.7, -77.6 , 0 );

--setScaleKey( spep_9 -3 + 0, 1, 4.52, 4.52 );
setScaleKey( spep_9 -2 + 2, 1, 4.52, 4.52 );
setScaleKey( spep_9 -3 + 5, 1, 4.97, 4.97 );
setScaleKey( spep_9 -3 + 6, 1, 3.65, 3.65 );
setScaleKey( spep_9 -3 + 8, 1, 3.51, 3.51 );
setScaleKey( spep_9 -3 + 10, 1, 3.65, 3.65 );
setScaleKey( spep_9 -3 + 12, 1, 3.45, 3.45 );
setScaleKey( spep_9 -3 + 14, 1, 3.49, 3.49 );
setScaleKey( spep_9 -3 + 16, 1, 3.41, 3.41 );
setScaleKey( spep_9 -3 + 18, 1, 3.38, 3.38 );
setScaleKey( spep_9 -3 + 20, 1, 3.35, 3.35 );
setScaleKey( spep_9 -3 + 22, 1, 3.33, 3.33 );
setScaleKey( spep_9 -3 + 24, 1, 3.31, 3.31 );
setScaleKey( spep_9 -3 + 26, 1, 3.29, 3.29 );
setScaleKey( spep_9 -3 + 28, 1, 3.27, 3.27 );
setScaleKey( spep_9 -3 + 30, 1, 3.25, 3.25 );
setScaleKey( spep_9 -3 + 32, 1, 3.24, 3.24 );
setScaleKey( spep_9 -3 + 34, 1, 3.22, 3.22 );
setScaleKey( spep_9 -3 + 36, 1, 3.21, 3.21 );
setScaleKey( spep_9 -3 + 38, 1, 3.19, 3.19 );
setScaleKey( spep_9 -3 + 40, 1, 3.18, 3.18 );
setScaleKey( spep_9 -3 + 42, 1, 3.17, 3.17 );
setScaleKey( spep_9 -3 + 44, 1, 3.15, 3.15 );
setScaleKey( spep_9 -3 + 46, 1, 3.14, 3.14 );
-- setScaleKey( spep_9 -5 + 48, 1, 3.13, 3.13 );

setRotateKey( spep_9 + 0, 1, -23.3 );
setRotateKey( spep_9 -3 + 5, 1, -23.3 );
setRotateKey( spep_9 -3 + 6, 1, 54.1 );
setRotateKey( spep_9 -3 + 8, 1, 57.5 );
setRotateKey( spep_9 -3 + 10, 1, 58.9 );
setRotateKey( spep_9 -3 + 12, 1, 60 );
setRotateKey( spep_9 -3 + 14, 1, 60.9 );
setRotateKey( spep_9 -3 + 16, 1, 61.6 );
setRotateKey( spep_9 -3 + 18, 1, 62.3 );
setRotateKey( spep_9 -3 + 20, 1, 62.8 );
setRotateKey( spep_9 -3 + 22, 1, 63.3 );
setRotateKey( spep_9 -3 + 24, 1, 63.8 );
setRotateKey( spep_9 -3 + 26, 1, 64.2 );
setRotateKey( spep_9 -3 + 28, 1, 64.5 );
setRotateKey( spep_9 -3 + 30, 1, 64.8 );
setRotateKey( spep_9 -3 + 32, 1, 65.1 );
setRotateKey( spep_9 -3 + 34, 1, 65.3 );
setRotateKey( spep_9 -3 + 36, 1, 65.5 );
setRotateKey( spep_9 -3 + 38, 1, 65.6 );
setRotateKey( spep_9 -3 + 40, 1, 65.8 );
setRotateKey( spep_9 -3 + 42, 1, 65.9 );
setRotateKey( spep_9 -3 + 44, 1, 65.9 );
setRotateKey( spep_9 -3 + 46, 1, 66 );
-- setRotateKey( spep_9 -5 + 48, 1, 66 );


-- ** 白フェード ** --
entryFade( spep_9 + 0, 0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_9 + 48 -4 -8, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--二人パンチ
SE034 = playSeVer2( spep_9 + 0 -6, 1004, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_9 + 14 -6, 1120, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_10 = spep_9 + 48 -4;

-------------------------------------------------
-- 敵吹っ飛び　見送る二人
-------------------------------------------------
-- ** エフェクト等 ** --
base10_f = entryEffect( spep_10 + 0, SP_13, 0x100, -1, 0, 0, 0); --敵吹っ飛び　見送る二人	ef_010		ef_016と同時再生
setEffMoveKey( spep_10 + 0, base10_f, 0, 0 , 0);
setEffMoveKey( spep_10 + 40 -4, base10_f, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base10_f, 1.0, 1.0);
setEffScaleKey( spep_10 + 40 -4, base10_f, 1.0, 1.0);
setEffRotateKey( spep_10 + 0, base10_f, 0);
setEffRotateKey( spep_10 + 40 -4, base10_f, 0);
setEffAlphaKey( spep_10 + 0, base10_f, 255);
setEffAlphaKey( spep_10 + 40 -5, base10_f, 255);
setEffAlphaKey( spep_10 + 40 -4, base10_f, 0);

base10_b = entryEffect( spep_10 + 0, SP_14, 0x80, -1, 0, 0, 0); --背景	ef_016		ef_010と同時再生
setEffMoveKey( spep_10 + 0, base10_b, 0, 0 , 0);
setEffMoveKey( spep_10 + 40 -4, base10_b, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base10_b, 1.0, 1.0);
setEffScaleKey( spep_10 + 40 -4, base10_b, 1.0, 1.0);
setEffRotateKey( spep_10 + 0, base10_b, 0);
setEffRotateKey( spep_10 + 40 -4, base10_b, 0);
setEffAlphaKey( spep_10 + 0, base10_b, 255);
setEffAlphaKey( spep_10 + 40 -5, base10_b, 255);
setEffAlphaKey( spep_10 + 40 -4, base10_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 -4 + 40, 1, 0 );

changeAnime( spep_10 + 0, 1, 5 );

--setMoveKey( spep_10 -3 + 0, 1, -27.2, -80.8 , 0 );
setMoveKey( spep_10 -2 + 2, 1, 38.3, -50.6 , 0 );
setMoveKey( spep_10 -3 + 4, 1, 69.2, -23.8 , 0 );
setMoveKey( spep_10 -3 + 6, 1, 93, -25.3 , 0 );
setMoveKey( spep_10 -3 + 8, 1, 112.8, -9.1 , 0 );
setMoveKey( spep_10 -3 + 10, 1, 129.9, -8.3 , 0 );
setMoveKey( spep_10 -3 + 12, 1, 144.9, 3.4 , 0 );
setMoveKey( spep_10 -3 + 14, 1, 158.5, 1.9 , 0 );
setMoveKey( spep_10 -3 + 16, 1, 171, 12 , 0 );
setMoveKey( spep_10 -3 + 18, 1, 182.5, 12.1 , 0 );
setMoveKey( spep_10 -3 + 20, 1, 193.3, 19.4 , 0 );
setMoveKey( spep_10 -3 + 22, 1, 203.6, 20.2 , 0 );
setMoveKey( spep_10 -3 + 24, 1, 213.5, 26.3 , 0 );
setMoveKey( spep_10 -3 + 26, 1, 223, 27.7 , 0 );
setMoveKey( spep_10 -3 + 28, 1, 232.4, 31.7 , 0 );
setMoveKey( spep_10 -3 + 30, 1, 241.6, 33.3 , 0 );
setMoveKey( spep_10 -3 + 32, 1, 250.8, 36.8 , 0 );
setMoveKey( spep_10 -3 + 34, 1, 260, 38.7 , 0 );
setMoveKey( spep_10 -3 + 36, 1, 269.2, 41.4 , 0 );
setMoveKey( spep_10 -3 + 38, 1, 278.7, 43.8 , 0 );
setMoveKey( spep_10 -5 + 40, 1, 278.7, 43.8 , 0 );

--setScaleKey( spep_10 -3 + 0, 1, 3.16, 3.16 );
setScaleKey( spep_10 -2 + 2, 1, 2.36, 2.36 );
setScaleKey( spep_10 -3 + 4, 1, 2.02, 2.02 );
setScaleKey( spep_10 -3 + 6, 1, 1.78, 1.78 );
setScaleKey( spep_10 -3 + 8, 1, 1.58, 1.58 );
setScaleKey( spep_10 -3 + 10, 1, 1.42, 1.42 );
setScaleKey( spep_10 -3 + 12, 1, 1.27, 1.27 );
setScaleKey( spep_10 -3 + 14, 1, 1.15, 1.15 );
setScaleKey( spep_10 -3 + 16, 1, 1.04, 1.04 );
setScaleKey( spep_10 -3 + 18, 1, 0.93, 0.93 );
setScaleKey( spep_10 -3 + 20, 1, 0.84, 0.84 );
setScaleKey( spep_10 -3 + 22, 1, 0.76, 0.76 );
setScaleKey( spep_10 -3 + 24, 1, 0.68, 0.68 );
setScaleKey( spep_10 -3 + 26, 1, 0.61, 0.61 );
setScaleKey( spep_10 -3 + 28, 1, 0.54, 0.54 );
setScaleKey( spep_10 -3 + 30, 1, 0.47, 0.47 );
setScaleKey( spep_10 -3 + 32, 1, 0.41, 0.41 );
setScaleKey( spep_10 -3 + 34, 1, 0.34, 0.34 );
setScaleKey( spep_10 -3 + 36, 1, 0.28, 0.28 );
setScaleKey( spep_10 -3 + 38, 1, 0.22, 0.22 );
setScaleKey( spep_10 -5 + 40, 1, 0.22, 0.22 );

--setRotateKey( spep_10 -3 + 0, 1, 63.2 );
setRotateKey( spep_10 -2 + 2, 1, 64.5 );
setRotateKey( spep_10 -3 + 4, 1, 65.9 );
setRotateKey( spep_10 -3 + 6, 1, 67.2 );
setRotateKey( spep_10 -3 + 8, 1, 68.6 );
setRotateKey( spep_10 -3 + 10, 1, 69.9 );
setRotateKey( spep_10 -3 + 12, 1, 71.2 );
setRotateKey( spep_10 -3 + 14, 1, 72.6 );
setRotateKey( spep_10 -3 + 16, 1, 73.9 );
setRotateKey( spep_10 -3 + 18, 1, 75.3 );
setRotateKey( spep_10 -3 + 20, 1, 76.6 );
setRotateKey( spep_10 -3 + 22, 1, 78 );
setRotateKey( spep_10 -3 + 24, 1, 79.3 );
setRotateKey( spep_10 -3 + 26, 1, 80.7 );
setRotateKey( spep_10 -3 + 28, 1, 82 );
setRotateKey( spep_10 -3 + 30, 1, 83.4 );
setRotateKey( spep_10 -3 + 32, 1, 84.7 );
setRotateKey( spep_10 -3 + 34, 1, 86 );
setRotateKey( spep_10 -3 + 36, 1, 87.4 );
setRotateKey( spep_10 -3 + 38, 1, 88.7 );
setRotateKey( spep_10 -5 + 40, 1, 88.7 );


-- ** 白フェード ** --
entryFade( spep_10 + 0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--敵飛んでいく
SE036 = playSeVer2( spep_10 + 10, 1183, "",spep_9 + 126, 0, 16, -1);
SE037 = playSeVer2( spep_10 + 10, 1121, "",spep_9 + 126, 0, 16, -1);
SE038 = playSeVer2( spep_10 + 10, 1027, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_9 + 56, SE038, 80 );


-- ** 次の準備 ** --
spep_11 = spep_10 + 40 -4;

-------------------------------------------------
-- 岩山に激突
-------------------------------------------------
-- ** エフェクト等 ** --
base11_f = entryEffect( spep_11 + 0, SP_15, 0x100, -1, 0, 0, 0); --岩山に激突（手前）　文字有	ef_011		ef_017とef_018と同時再生
setEffMoveKey( spep_11 + 0, base11_f, 0, 0 , 0);
setEffMoveKey( spep_11 + 56 -4, base11_f, 0, 0 , 0);
setEffScaleKey( spep_11 + 0, base11_f, 1.0, 1.0);
setEffScaleKey( spep_11 + 56 -4, base11_f, 1.0, 1.0);
setEffRotateKey( spep_11 + 0, base11_f, 0);
setEffRotateKey( spep_11 + 56 -4, base11_f, 0);
setEffAlphaKey( spep_11 + 0, base11_f, 255);
setEffAlphaKey( spep_11 + 56 -5, base11_f, 255);
setEffAlphaKey( spep_11 + 56 -4, base11_f, 0);

base11_b = entryEffect( spep_11 + 0, SP_17, 0x80, -1, 0, 0, 0); --背景	ef_018		ef_011とef_017と同時再生
setEffMoveKey( spep_11 + 0, base11_b, 0, 0 , 0);
setEffMoveKey( spep_11 + 56 -4, base11_b, 0, 0 , 0);
setEffScaleKey( spep_11 + 0, base11_b, 1.0, 1.0);
setEffScaleKey( spep_11 + 56 -4, base11_b, 1.0, 1.0);
setEffRotateKey( spep_11 + 0, base11_b, 0);
setEffRotateKey( spep_11 + 56 -4, base11_b, 0);
setEffAlphaKey( spep_11 + 0, base11_b, 255);
setEffAlphaKey( spep_11 + 56 -5, base11_b, 255);
setEffAlphaKey( spep_11 + 56 -4, base11_b, 0);

base11_m = entryEffect( spep_11 + 0, SP_16, 0x80, -1, 0, 0, 0); --岩山に激突（中央）	ef_017		ef_011とef_018と同時再生
setEffMoveKey( spep_11 + 0, base11_m, 0, 0 , 0);
setEffMoveKey( spep_11 + 56 -4, base11_m, 0, 0 , 0);
setEffScaleKey( spep_11 + 0, base11_m, 1.0, 1.0);
setEffScaleKey( spep_11 + 56 -4, base11_m, 1.0, 1.0);
setEffRotateKey( spep_11 + 0, base11_m, 0);
setEffRotateKey( spep_11 + 56 -4, base11_m, 0);
setEffAlphaKey( spep_11 + 0, base11_m, 255);
setEffAlphaKey( spep_11 + 56 -5, base11_m, 255);
setEffAlphaKey( spep_11 + 56 -4, base11_m, 0);


-- ** 敵キャラクター ** --
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 -3 + 14, 1, 0 );
setDisp( spep_11 -3 + 20, 1, 1 );
setDisp( spep_11 -3 + 36, 1, 0 );
setDisp( spep_11 -3 + 44, 1, 1 );
setDisp( spep_11 -4 + 56, 1, 0 );

changeAnime( spep_11 + 0, 1, 106 );
changeAnime( spep_11 -3 + 14, 1, 108 );
changeAnime( spep_11 -3 + 36, 1, 106 );
changeAnime( spep_11 -3 + 42, 1, 108 );

--setMoveKey( spep_11 -3 + 0, 1, -242, 29 , 0 );
setMoveKey( spep_11 -2 + 2, 1, -299.1, 29.3 , 0 );
setMoveKey( spep_11 -3 + 4, 1, -306.1, 29.6 , 0 );
setMoveKey( spep_11 -3 + 6, 1, -304, 30 , 0 );
setMoveKey( spep_11 -3 + 8, 1, -297, 30.3 , 0 );
setMoveKey( spep_11 -3 + 10, 1, -286.9, 30.6 , 0 );
setMoveKey( spep_11 -3 + 13, 1, -274.4, 31 , 0 );
setMoveKey( spep_11 -3 + 14, 1, 149.4, -10 , 0 );
setMoveKey( spep_11 -3 + 16, 1, 178.1, 2.7 , 0 );
setMoveKey( spep_11 -3 + 18, 1, 203.8, -6 , 0 );
setMoveKey( spep_11 -3 + 20, 1, -121.7, 0.1 , 0 );
setMoveKey( spep_11 -3 + 22, 1, -93.2, 11.5 , 0 );
setMoveKey( spep_11 -3 + 24, 1, -67.5, 1.5 , 0 );
setMoveKey( spep_11 -3 + 26, 1, -37.6, 5.9 , 0 );
setMoveKey( spep_11 -3 + 28, 1, -10.1, 2.1 , 0 );
setMoveKey( spep_11 -3 + 30, 1, 20.4, 2.5 , 0 );
setMoveKey( spep_11 -3 + 32, 1, 51, 1.2 , 0 );
setMoveKey( spep_11 -3 + 35, 1, 82.3, -0.1 , 0 );
setMoveKey( spep_11 -3 + 36, 1, -242, 29 , 0 );
setMoveKey( spep_11 -3 + 38, 1, -299.1, 29.3 , 0 );
setMoveKey( spep_11 -3 + 41, 1, -306.1, 29.6 , 0 );
setMoveKey( spep_11 -3 + 42, 1, 149.4, -10 , 0 );
setMoveKey( spep_11 -3 + 44, 1, 178.1, 2.7 , 0 );
setMoveKey( spep_11 -3 + 46, 1, 203.8, -6 , 0 );
setMoveKey( spep_11 -3 + 48, 1, 233.7, -0.4 , 0 );
setMoveKey( spep_11 -3 + 50, 1, 261.2, -2.8 , 0 );
setMoveKey( spep_11 -3 + 52, 1, 291.9, -1.1 , 0 );
setMoveKey( spep_11 -3 + 54, 1, 323.1, -1.1 , 0 );
setMoveKey( spep_11 -4 + 56, 1, 355.4, -1.1 , 0 );
-- setMoveKey( spep_11 -4 + 58, 1, 389, -1.1 , 0 );

--setScaleKey( spep_11 -3 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_11 -2 + 2, 1, 0.47, 0.47 );
setScaleKey( spep_11 -3 + 4, 1, 0.45, 0.45 );
setScaleKey( spep_11 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_11 -3 + 8, 1, 0.4, 0.4 );
setScaleKey( spep_11 -3 + 10, 1, 0.37, 0.37 );
setScaleKey( spep_11 -3 + 13, 1, 0.35, 0.35 );
setScaleKey( spep_11 -3 + 18, 1, 0.35, 0.35 );
setScaleKey( spep_11 -3 + 20, 1, 0.4, 0.4 );
setScaleKey( spep_11 -3 + 22, 1, 0.39, 0.39 );
setScaleKey( spep_11 -3 + 24, 1, 0.39, 0.39 );
setScaleKey( spep_11 -3 + 26, 1, 0.38, 0.38 );
setScaleKey( spep_11 -3 + 28, 1, 0.37, 0.37 );
setScaleKey( spep_11 -3 + 30, 1, 0.36, 0.36 );
setScaleKey( spep_11 -3 + 32, 1, 0.36, 0.36 );
setScaleKey( spep_11 -3 + 35, 1, 0.35, 0.35 );
setScaleKey( spep_11 -3 + 36, 1, 0.5, 0.5 );
setScaleKey( spep_11 -3 + 38, 1, 0.47, 0.47 );
setScaleKey( spep_11 -3 + 41, 1, 0.45, 0.45 );
setScaleKey( spep_11 -3 + 42, 1, 0.35, 0.35 );
setScaleKey( spep_11 -4 + 56, 1, 0.35, 0.35 );

setRotateKey( spep_11 + 0, 1, 37.4 );
setRotateKey( spep_11 -3 + 10, 1, 37.4 );
setRotateKey( spep_11 -3 + 13, 1, 37.3 );
setRotateKey( spep_11 -3 + 14, 1, 31.6 );
setRotateKey( spep_11 -3 + 35, 1, 31.6 );
setRotateKey( spep_11 -3 + 36, 1, 37.4 );
setRotateKey( spep_11 -3 + 41, 1, 37.4 );
setRotateKey( spep_11 -3 + 42, 1, 31.6 );
setRotateKey( spep_11 -4 + 56, 1, 31.6 );


-- ** 白フェード ** --
entryFade( spep_11 + 56 - 4 -10, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--岩激突１
SE039 = playSeVer2( spep_11 + 10, 1061, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_11 + 10, 1023, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_10 + 10, SE040, 82 );
SE041 = playSeVer2( spep_11 + 10, 1159, "",spep_10 + 786, 0, 10, -1);	setSeVolumeByWorkId( spep_10 + 10, SE041, 80 );

--岩激突２
SE042 = playSeVer2( spep_11 + 36, 1061, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_11 + 36, 1023, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_10 + 36, SE043, 85 );
SE044 = playSeVer2( spep_11 + 36, 1159, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_10 + 36, SE044, 79 );


-- ** 次の準備 ** --
spep_12 = spep_11 + 56 -4;

-------------------------------------------------
-- 崩れる岩山
-------------------------------------------------
-- ** エフェクト等 ** --
base12 = entryEffect( spep_12 + 0, SP_18, 0x80, -1, 0, 0, 0); --崩れる岩山	ef_012
setEffMoveKey( spep_12 + 0, base12, 0, 0 , 0);
setEffMoveKey( spep_12 + 140 -4, base12, 0, 0 , 0);
setEffScaleKey( spep_12 + 0, base12, 1.0, 1.0);
setEffScaleKey( spep_12 + 140 -4, base12, 1.0, 1.0);
setEffRotateKey( spep_12 + 0, base12, 0);
setEffRotateKey( spep_12 + 140 -4, base12, 0);
setEffAlphaKey( spep_12 + 0, base12, 255);
setEffAlphaKey( spep_12 + 140 -4, base12, 255);


-- ** 白フェード ** --
entryFade( spep_12 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 集中線 ** --
shuchusen_12 = entryEffectLife( spep_12 + 0,  906, 140 -4, 0x100, -1, 0, 0, 0 );
setEffShake( spep_12 + 0, shuchusen_12, 140 -4, 25 );
setEffMoveKey( spep_12 + 0, shuchusen_12, 0, 0 , 0 );
setEffMoveKey( spep_12 + 140 -4, shuchusen_12, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, shuchusen_12, 1.2, 1.2 );
setEffScaleKey( spep_12 + 140 -4, shuchusen_12, 1.2, 1.2 );
setEffRotateKey( spep_12 + 0, shuchusen_12, 0 );
setEffRotateKey( spep_12 + 140 -4, shuchusen_12, 0 );
setEffAlphaKey( spep_12 + 0, shuchusen_12, 255 );
setEffAlphaKey( spep_12 + 140 -4, shuchusen_12, 255 );
setEffAlphaKey( spep_12 + 140 -3, shuchusen_12, 0 );


-- ** 音 ** --
--岩激突３
SE045 = playSeVer2( spep_12 + 8, 1067, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_12 + 8, 1024, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_12 + 8, 1168, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_12 + 10 -3); -- ダメージ表示フレーム
endPhase( spep_12 + 140 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 待機
-------------------------------------------------
-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_19, 0x80, -1, 0, 0, 0); --待機	ef_001r		敵用
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
spep_2 = spep_1 + 120 -4;

-------------------------------------------------
-- 奥に突進
-------------------------------------------------
-- ** エフェクト等 ** --
base2 = entryEffect( spep_2 + 0, SP_20, 0x80, -1, 0, 0, 0); --奥に突進	ef_002r		敵用
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
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--トランクス向かっていく
SE008 = playSeVer2( spep_2 + 4, 1182, "",spep_2 + 64, 0, 6, -1);
SE009 = playSeVer2( spep_2 + 4, 44, "", 0, 0, 0, -1);

--悟天向かっていく
SE010 = playSeVer2( spep_2 + 24, 1117, "",spep_2 + 64, 0, 6, -1);
SE011 = playSeVer2( spep_2 + 24, 1182, "",spep_2 + 64, 0, 6, -1);


-- ** 次の準備 ** --
spep_c = spep_2 + 60 -4;

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
spep_3 = spep_c + 96;

-------------------------------------------------
-- キック
-------------------------------------------------
-- ** エフェクト等 ** --
base3 = entryEffect( spep_3 + 0, SP_29, 0x80, -1, 0, 0, 0); --キック	ef_003		共通
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
base4_f = entryEffect( spep_4 + 0, SP_21, 0x100, -1, 0, 0, 0); --キック寄り	ef_004r		ef_013と同時再生　敵用
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 24 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 24 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 24 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 24 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 24 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0); --背景	ef_013
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
-- 奥に向かう悟天
-------------------------------------------------
-- ** エフェクト等 ** --
base5_f = entryEffect( spep_5 + 0, SP_22, 0x100, -1, 0, 0, 0); --文字のみ	ef_005r		ef_014rと同時再生　敵用
setEffMoveKey( spep_5 + 0, base5_f, 0, 0 , 0);
setEffMoveKey( spep_5 + 60 -4, base5_f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_f, 1.0, 1.0);
setEffScaleKey( spep_5 + 60 -4, base5_f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_f, 0);
setEffRotateKey( spep_5 + 60 -4, base5_f, 0);
setEffAlphaKey( spep_5 + 0, base5_f, 255);
setEffAlphaKey( spep_5 + 60 -5, base5_f, 255);
setEffAlphaKey( spep_5 + 60 -4, base5_f, 0);

base5_b = entryEffect( spep_5 + 0, SP_23, 0x80, -1, 0, 0, 0); --奥に向かう悟天	ef_014r		ef_005rと同時再生　敵用
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
SE018 = playSeVer2( spep_5 + 34, 1277, "",spep_5 + 76, 0, 8, -1);


-- ** 次の準備 ** --
spep_6 = spep_5 + 60 -4;

-------------------------------------------------
-- 悟天　キック
-------------------------------------------------
-- ** エフェクト等 ** --
base6 = entryEffect( spep_6 + 0, SP_24, 0x80, -1, 0, 0, 0); --悟天　キック	ef_006r		敵用
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
-- 手前に突進
-------------------------------------------------
-- ** エフェクト等 ** --
base8 = entryEffect( spep_8 + 0, SP_25, 0x80, -1, 0, 0, 0); --手前に突進	ef_008r		敵用
setEffMoveKey( spep_8 + 0, base8, 0, 0 , 0);
setEffMoveKey( spep_8 + 112 -4, base8, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base8, 1.0, 1.0);
setEffScaleKey( spep_8 + 112 -4, base8, 1.0, 1.0);
setEffRotateKey( spep_8 + 0, base8, 0);
setEffRotateKey( spep_8 + 112 -4, base8, 0);
setEffAlphaKey( spep_8 + 0, base8, 255);
setEffAlphaKey( spep_8 + 112 -5, base8, 255);
setEffAlphaKey( spep_8 + 112 -4, base8, 0);


-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 -3 + 26, 1, 0 );

changeAnime( spep_8 + 0, 1, 107 );

--setMoveKey( spep_8 -3 + 0, 1, -222.9, 350 , 0 );
setMoveKey( spep_8 -2 + 2, 1, -142.9, 261.4 , 0 );
setMoveKey( spep_8 -3 + 4, 1, -63, 172.7 , 0 );
setMoveKey( spep_8 -3 + 6, 1, 17, 84.1 , 0 );
setMoveKey( spep_8 -3 + 8, 1, 96.9, -4.6 , 0 );
setMoveKey( spep_8 -3 + 10, 1, 176.9, -93.2 , 0 );
setMoveKey( spep_8 -3 + 12, 1, 256.8, -181.9 , 0 );
setMoveKey( spep_8 -3 + 14, 1, 336.8, -270.5 , 0 );
setMoveKey( spep_8 -3 + 16, 1, 416.7, -359.1 , 0 );
setMoveKey( spep_8 -3 + 18, 1, 496.7, -447.8 , 0 );
setMoveKey( spep_8 -3 + 20, 1, 576.6, -536.4 , 0 );
setMoveKey( spep_8 -3 + 22, 1, 656.6, -625.1 , 0 );
setMoveKey( spep_8 -3 + 24, 1, 736.5, -713.7 , 0 );
setMoveKey( spep_8 -3 + 26, 1, 736.5, -713.7 , 0 );

--setScaleKey( spep_8 -3 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_8 -2 + 2, 1, 0.48, 0.48 );
setScaleKey( spep_8 -3 + 4, 1, 0.62, 0.62 );
setScaleKey( spep_8 -3 + 6, 1, 0.75, 0.75 );
setScaleKey( spep_8 -3 + 8, 1, 0.88, 0.88 );
setScaleKey( spep_8 -3 + 10, 1, 1.02, 1.02 );
setScaleKey( spep_8 -3 + 12, 1, 1.15, 1.15 );
setScaleKey( spep_8 -3 + 14, 1, 1.28, 1.28 );
setScaleKey( spep_8 -3 + 16, 1, 1.42, 1.42 );
setScaleKey( spep_8 -3 + 18, 1, 1.55, 1.55 );
setScaleKey( spep_8 -3 + 20, 1, 1.68, 1.68 );
setScaleKey( spep_8 -3 + 22, 1, 1.82, 1.82 );
setScaleKey( spep_8 -3 + 24, 1, 1.95, 1.95 );
setScaleKey( spep_8 -3 + 26, 1, 1.95, 1.95 );

setRotateKey( spep_8 + 0, 1, 62.2 );
setRotateKey( spep_8 -3 + 26, 1, 62.2 );


-- ** 白フェード ** --
entryFade( spep_8 + 112 -4 -6, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--敵飛んでいく
SE027 = playSeVer2( spep_8 + 0 -8, 1183, "",spep_8 + 70, 0, 18, -1);	setSeVolumeByWorkId( spep_8 + 0, SE027, 69 );

--二人合流して向かっていく
SE028 = playSeVer2( spep_8 + 30, 1117, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_8 + 44, 9, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_8 + 44, 1314, "",spep_8 + 152, 0, 30, -1);
SE031 = playSeVer2( spep_8 + 44, 1182, "", 0, 0, 0, -1);

--画面遷移
SE032 = playSeVer2( spep_8 + 60, 1072, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_8 + 88, 1116, "",spep_8 + 142, 0, 20, -1);


-- ** 次の準備 ** --
spep_9 = spep_8 + 112 -4;

-------------------------------------------------
-- パンチ
-------------------------------------------------
-- ** エフェクト等 ** --
base9_f = entryEffect( spep_9 + 0, SP_26, 0x100, -1, 0, 0, 0); --パンチ	ef_009r		ef_015と同時再生 敵用
setEffMoveKey( spep_9 + 0, base9_f, 0, 0 , 0);
setEffMoveKey( spep_9 + 48 -4, base9_f, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base9_f, 1.0, 1.0);
setEffScaleKey( spep_9 + 48 -4, base9_f, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base9_f, 0);
setEffRotateKey( spep_9 + 48 -4, base9_f, 0);
setEffAlphaKey( spep_9 + 0, base9_f, 255);
setEffAlphaKey( spep_9 + 48 -5, base9_f, 255);
setEffAlphaKey( spep_9 + 48 -4, base9_f, 0);

base9_b = entryEffect( spep_9 + 0, SP_12, 0x80, -1, 0, 0, 0); --背景	ef_015
setEffMoveKey( spep_9 + 0, base9_b, 0, 0 , 0);
setEffMoveKey( spep_9 + 48 -4, base9_b, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base9_b, 1.0, 1.0);
setEffScaleKey( spep_9 + 48 -4, base9_b, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base9_b, 0);
setEffRotateKey( spep_9 + 48 -4, base9_b, 0);
setEffAlphaKey( spep_9 + 0, base9_b, 255);
setEffAlphaKey( spep_9 + 48 -5, base9_b, 255);
setEffAlphaKey( spep_9 + 48 -4, base9_b, 0);


-- ** 集中線 ** --
shuchusen_9 = entryEffectLife( spep_9 + 0,  906, 48 -4, 0x80, -1, 100, -120, 0 );
setEffShake( spep_9 + 0, shuchusen_9, 48 -4, 25 );
setEffMoveKey( spep_9 + 0, shuchusen_9, 0, 0 , 0 );
setEffMoveKey( spep_9 + 48 -4, shuchusen_9, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, shuchusen_9, 1.2, 1.2 );
setEffScaleKey( spep_9 + 48 -4, shuchusen_9, 1.2, 1.2 );
setEffRotateKey( spep_9 + 0, shuchusen_9, 0 );
setEffRotateKey( spep_9 + 48 -4, shuchusen_9, 0 );
setEffAlphaKey( spep_9 + 0, shuchusen_9, 255 );
setEffAlphaKey( spep_9 + 48 -5, shuchusen_9, 255 );
setEffAlphaKey( spep_9 + 48 -4, shuchusen_9, 0 );


-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 -4 + 48, 1, 0 );

changeAnime( spep_9 + 0, 1, 108 );
changeAnime( spep_9 -3 + 6, 1, 5 );

--setMoveKey( spep_9 -3 + 0, 1, 69.5, -23.2 , 0 );
setMoveKey( spep_9 -2 + 2, 1, 58.9, -5.5 , 0 );
setMoveKey( spep_9 -3 + 5, 1, 50.2, -17.2 , 0 );
setMoveKey( spep_9 -3 + 6, 1, -11.5, -115.6 , 0 );
setMoveKey( spep_9 -3 + 8, 1, -26.6, -98.7 , 0 );
setMoveKey( spep_9 -3 + 10, 1, -8.6, -92.9 , 0 );
setMoveKey( spep_9 -3 + 12, 1, -18.9, -88.1 , 0 );
setMoveKey( spep_9 -3 + 14, 1, -11.5, -99.7 , 0 );
setMoveKey( spep_9 -3 + 16, 1, -7.9, -96.4 , 0 );
setMoveKey( spep_9 -3 + 18, 1, -6.3, -93.4 , 0 );
setMoveKey( spep_9 -3 + 20, 1, -4.8, -90.8 , 0 );
setMoveKey( spep_9 -3 + 22, 1, -3.5, -88.5 , 0 );
setMoveKey( spep_9 -3 + 24, 1, -2.4, -86.6 , 0 );
setMoveKey( spep_9 -3 + 26, 1, -1.3, -84.8 , 0 );
setMoveKey( spep_9 -3 + 28, 1, -0.3, -83.3 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 0.6, -82 , 0 );
setMoveKey( spep_9 -3 + 32, 1, 1.5, -80.9 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 2.2, -80 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 2.9, -79.2 , 0 );
setMoveKey( spep_9 -3 + 38, 1, 3.5, -78.6 , 0 );
setMoveKey( spep_9 -3 + 40, 1, 4.1, -78.1 , 0 );
setMoveKey( spep_9 -3 + 42, 1, 4.6, -77.8 , 0 );
setMoveKey( spep_9 -3 + 44, 1, 5, -77.6 , 0 );
setMoveKey( spep_9 -3 + 46, 1, 5.4, -77.5 , 0 );
-- setMoveKey( spep_9 -5 + 48, 1, 5.7, -77.6 , 0 );

--setScaleKey( spep_9 -3 + 0, 1, 4.52, 4.52 );
setScaleKey( spep_9 -2 + 2, 1, 4.52, 4.52 );
setScaleKey( spep_9 -3 + 5, 1, 4.97, 4.97 );
setScaleKey( spep_9 -3 + 6, 1, 3.65, 3.65 );
setScaleKey( spep_9 -3 + 8, 1, 3.51, 3.51 );
setScaleKey( spep_9 -3 + 10, 1, 3.65, 3.65 );
setScaleKey( spep_9 -3 + 12, 1, 3.45, 3.45 );
setScaleKey( spep_9 -3 + 14, 1, 3.49, 3.49 );
setScaleKey( spep_9 -3 + 16, 1, 3.41, 3.41 );
setScaleKey( spep_9 -3 + 18, 1, 3.38, 3.38 );
setScaleKey( spep_9 -3 + 20, 1, 3.35, 3.35 );
setScaleKey( spep_9 -3 + 22, 1, 3.33, 3.33 );
setScaleKey( spep_9 -3 + 24, 1, 3.31, 3.31 );
setScaleKey( spep_9 -3 + 26, 1, 3.29, 3.29 );
setScaleKey( spep_9 -3 + 28, 1, 3.27, 3.27 );
setScaleKey( spep_9 -3 + 30, 1, 3.25, 3.25 );
setScaleKey( spep_9 -3 + 32, 1, 3.24, 3.24 );
setScaleKey( spep_9 -3 + 34, 1, 3.22, 3.22 );
setScaleKey( spep_9 -3 + 36, 1, 3.21, 3.21 );
setScaleKey( spep_9 -3 + 38, 1, 3.19, 3.19 );
setScaleKey( spep_9 -3 + 40, 1, 3.18, 3.18 );
setScaleKey( spep_9 -3 + 42, 1, 3.17, 3.17 );
setScaleKey( spep_9 -3 + 44, 1, 3.15, 3.15 );
setScaleKey( spep_9 -3 + 46, 1, 3.14, 3.14 );
-- setScaleKey( spep_9 -5 + 48, 1, 3.13, 3.13 );

setRotateKey( spep_9 + 0, 1, -23.3 );
setRotateKey( spep_9 -3 + 5, 1, -23.3 );
setRotateKey( spep_9 -3 + 6, 1, 54.1 );
setRotateKey( spep_9 -3 + 8, 1, 57.5 );
setRotateKey( spep_9 -3 + 10, 1, 58.9 );
setRotateKey( spep_9 -3 + 12, 1, 60 );
setRotateKey( spep_9 -3 + 14, 1, 60.9 );
setRotateKey( spep_9 -3 + 16, 1, 61.6 );
setRotateKey( spep_9 -3 + 18, 1, 62.3 );
setRotateKey( spep_9 -3 + 20, 1, 62.8 );
setRotateKey( spep_9 -3 + 22, 1, 63.3 );
setRotateKey( spep_9 -3 + 24, 1, 63.8 );
setRotateKey( spep_9 -3 + 26, 1, 64.2 );
setRotateKey( spep_9 -3 + 28, 1, 64.5 );
setRotateKey( spep_9 -3 + 30, 1, 64.8 );
setRotateKey( spep_9 -3 + 32, 1, 65.1 );
setRotateKey( spep_9 -3 + 34, 1, 65.3 );
setRotateKey( spep_9 -3 + 36, 1, 65.5 );
setRotateKey( spep_9 -3 + 38, 1, 65.6 );
setRotateKey( spep_9 -3 + 40, 1, 65.8 );
setRotateKey( spep_9 -3 + 42, 1, 65.9 );
setRotateKey( spep_9 -3 + 44, 1, 65.9 );
setRotateKey( spep_9 -3 + 46, 1, 66 );
-- setRotateKey( spep_9 -5 + 48, 1, 66 );


-- ** 白フェード ** --
entryFade( spep_9 + 0, 0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_9 + 48 -4 -8, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--二人パンチ
SE034 = playSeVer2( spep_9 + 0 -6, 1004, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_9 + 14 -6, 1120, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_10 = spep_9 + 48 -4;

-------------------------------------------------
-- 敵吹っ飛び　見送る二人
-------------------------------------------------
-- ** エフェクト等 ** --
base10_f = entryEffect( spep_10 + 0, SP_27, 0x100, -1, 0, 0, 0); --敵吹っ飛び　見送る二人	ef_010r		ef_016と同時再生　敵用
setEffMoveKey( spep_10 + 0, base10_f, 0, 0 , 0);
setEffMoveKey( spep_10 + 40 -4, base10_f, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base10_f, 1.0, 1.0);
setEffScaleKey( spep_10 + 40 -4, base10_f, 1.0, 1.0);
setEffRotateKey( spep_10 + 0, base10_f, 0);
setEffRotateKey( spep_10 + 40 -4, base10_f, 0);
setEffAlphaKey( spep_10 + 0, base10_f, 255);
setEffAlphaKey( spep_10 + 40 -5, base10_f, 255);
setEffAlphaKey( spep_10 + 40 -4, base10_f, 0);

base10_b = entryEffect( spep_10 + 0, SP_14, 0x80, -1, 0, 0, 0); --背景	ef_016		ef_010と同時再生
setEffMoveKey( spep_10 + 0, base10_b, 0, 0 , 0);
setEffMoveKey( spep_10 + 40 -4, base10_b, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base10_b, 1.0, 1.0);
setEffScaleKey( spep_10 + 40 -4, base10_b, 1.0, 1.0);
setEffRotateKey( spep_10 + 0, base10_b, 0);
setEffRotateKey( spep_10 + 40 -4, base10_b, 0);
setEffAlphaKey( spep_10 + 0, base10_b, 255);
setEffAlphaKey( spep_10 + 40 -5, base10_b, 255);
setEffAlphaKey( spep_10 + 40 -4, base10_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 -4 + 40, 1, 0 );

changeAnime( spep_10 + 0, 1, 5 );

--setMoveKey( spep_10 -3 + 0, 1, -27.2, -80.8 , 0 );
setMoveKey( spep_10 -2 + 2, 1, 38.3, -50.6 , 0 );
setMoveKey( spep_10 -3 + 4, 1, 69.2, -23.8 , 0 );
setMoveKey( spep_10 -3 + 6, 1, 93, -25.3 , 0 );
setMoveKey( spep_10 -3 + 8, 1, 112.8, -9.1 , 0 );
setMoveKey( spep_10 -3 + 10, 1, 129.9, -8.3 , 0 );
setMoveKey( spep_10 -3 + 12, 1, 144.9, 3.4 , 0 );
setMoveKey( spep_10 -3 + 14, 1, 158.5, 1.9 , 0 );
setMoveKey( spep_10 -3 + 16, 1, 171, 12 , 0 );
setMoveKey( spep_10 -3 + 18, 1, 182.5, 12.1 , 0 );
setMoveKey( spep_10 -3 + 20, 1, 193.3, 19.4 , 0 );
setMoveKey( spep_10 -3 + 22, 1, 203.6, 20.2 , 0 );
setMoveKey( spep_10 -3 + 24, 1, 213.5, 26.3 , 0 );
setMoveKey( spep_10 -3 + 26, 1, 223, 27.7 , 0 );
setMoveKey( spep_10 -3 + 28, 1, 232.4, 31.7 , 0 );
setMoveKey( spep_10 -3 + 30, 1, 241.6, 33.3 , 0 );
setMoveKey( spep_10 -3 + 32, 1, 250.8, 36.8 , 0 );
setMoveKey( spep_10 -3 + 34, 1, 260, 38.7 , 0 );
setMoveKey( spep_10 -3 + 36, 1, 269.2, 41.4 , 0 );
setMoveKey( spep_10 -3 + 38, 1, 278.7, 43.8 , 0 );
setMoveKey( spep_10 -5 + 40, 1, 278.7, 43.8 , 0 );

--setScaleKey( spep_10 -3 + 0, 1, 3.16, 3.16 );
setScaleKey( spep_10 -2 + 2, 1, 2.36, 2.36 );
setScaleKey( spep_10 -3 + 4, 1, 2.02, 2.02 );
setScaleKey( spep_10 -3 + 6, 1, 1.78, 1.78 );
setScaleKey( spep_10 -3 + 8, 1, 1.58, 1.58 );
setScaleKey( spep_10 -3 + 10, 1, 1.42, 1.42 );
setScaleKey( spep_10 -3 + 12, 1, 1.27, 1.27 );
setScaleKey( spep_10 -3 + 14, 1, 1.15, 1.15 );
setScaleKey( spep_10 -3 + 16, 1, 1.04, 1.04 );
setScaleKey( spep_10 -3 + 18, 1, 0.93, 0.93 );
setScaleKey( spep_10 -3 + 20, 1, 0.84, 0.84 );
setScaleKey( spep_10 -3 + 22, 1, 0.76, 0.76 );
setScaleKey( spep_10 -3 + 24, 1, 0.68, 0.68 );
setScaleKey( spep_10 -3 + 26, 1, 0.61, 0.61 );
setScaleKey( spep_10 -3 + 28, 1, 0.54, 0.54 );
setScaleKey( spep_10 -3 + 30, 1, 0.47, 0.47 );
setScaleKey( spep_10 -3 + 32, 1, 0.41, 0.41 );
setScaleKey( spep_10 -3 + 34, 1, 0.34, 0.34 );
setScaleKey( spep_10 -3 + 36, 1, 0.28, 0.28 );
setScaleKey( spep_10 -3 + 38, 1, 0.22, 0.22 );
setScaleKey( spep_10 -5 + 40, 1, 0.22, 0.22 );

--setRotateKey( spep_10 -3 + 0, 1, 63.2 );
setRotateKey( spep_10 -2 + 2, 1, 64.5 );
setRotateKey( spep_10 -3 + 4, 1, 65.9 );
setRotateKey( spep_10 -3 + 6, 1, 67.2 );
setRotateKey( spep_10 -3 + 8, 1, 68.6 );
setRotateKey( spep_10 -3 + 10, 1, 69.9 );
setRotateKey( spep_10 -3 + 12, 1, 71.2 );
setRotateKey( spep_10 -3 + 14, 1, 72.6 );
setRotateKey( spep_10 -3 + 16, 1, 73.9 );
setRotateKey( spep_10 -3 + 18, 1, 75.3 );
setRotateKey( spep_10 -3 + 20, 1, 76.6 );
setRotateKey( spep_10 -3 + 22, 1, 78 );
setRotateKey( spep_10 -3 + 24, 1, 79.3 );
setRotateKey( spep_10 -3 + 26, 1, 80.7 );
setRotateKey( spep_10 -3 + 28, 1, 82 );
setRotateKey( spep_10 -3 + 30, 1, 83.4 );
setRotateKey( spep_10 -3 + 32, 1, 84.7 );
setRotateKey( spep_10 -3 + 34, 1, 86 );
setRotateKey( spep_10 -3 + 36, 1, 87.4 );
setRotateKey( spep_10 -3 + 38, 1, 88.7 );
setRotateKey( spep_10 -5 + 40, 1, 88.7 );


-- ** 白フェード ** --
entryFade( spep_10 + 0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--敵飛んでいく
SE036 = playSeVer2( spep_10 + 10, 1183, "",spep_9 + 126, 0, 16, -1);
SE037 = playSeVer2( spep_10 + 10, 1121, "",spep_9 + 126, 0, 16, -1);
SE038 = playSeVer2( spep_10 + 10, 1027, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_9 + 56, SE038, 80 );


-- ** 次の準備 ** --
spep_11 = spep_10 + 40 -4;

-------------------------------------------------
-- 岩山に激突
-------------------------------------------------
-- ** エフェクト等 ** --
base11_f = entryEffect( spep_11 + 0, SP_28, 0x100, -1, 0, 0, 0); --岩山に激突（手前）　文字有	ef_011r		ef_017とef_018と同時再生
setEffMoveKey( spep_11 + 0, base11_f, 0, 0 , 0);
setEffMoveKey( spep_11 + 56 -4, base11_f, 0, 0 , 0);
setEffScaleKey( spep_11 + 0, base11_f, 1.0, 1.0);
setEffScaleKey( spep_11 + 56 -4, base11_f, 1.0, 1.0);
setEffRotateKey( spep_11 + 0, base11_f, 0);
setEffRotateKey( spep_11 + 56 -4, base11_f, 0);
setEffAlphaKey( spep_11 + 0, base11_f, 255);
setEffAlphaKey( spep_11 + 56 -5, base11_f, 255);
setEffAlphaKey( spep_11 + 56 -4, base11_f, 0);

base11_b = entryEffect( spep_11 + 0, SP_17, 0x80, -1, 0, 0, 0); --背景	ef_018		ef_011とef_017と同時再生
setEffMoveKey( spep_11 + 0, base11_b, 0, 0 , 0);
setEffMoveKey( spep_11 + 56 -4, base11_b, 0, 0 , 0);
setEffScaleKey( spep_11 + 0, base11_b, 1.0, 1.0);
setEffScaleKey( spep_11 + 56 -4, base11_b, 1.0, 1.0);
setEffRotateKey( spep_11 + 0, base11_b, 0);
setEffRotateKey( spep_11 + 56 -4, base11_b, 0);
setEffAlphaKey( spep_11 + 0, base11_b, 255);
setEffAlphaKey( spep_11 + 56 -5, base11_b, 255);
setEffAlphaKey( spep_11 + 56 -4, base11_b, 0);

base11_m = entryEffect( spep_11 + 0, SP_16, 0x80, -1, 0, 0, 0); --岩山に激突（中央）	ef_017		ef_011とef_018と同時再生
setEffMoveKey( spep_11 + 0, base11_m, 0, 0 , 0);
setEffMoveKey( spep_11 + 56 -4, base11_m, 0, 0 , 0);
setEffScaleKey( spep_11 + 0, base11_m, 1.0, 1.0);
setEffScaleKey( spep_11 + 56 -4, base11_m, 1.0, 1.0);
setEffRotateKey( spep_11 + 0, base11_m, 0);
setEffRotateKey( spep_11 + 56 -4, base11_m, 0);
setEffAlphaKey( spep_11 + 0, base11_m, 255);
setEffAlphaKey( spep_11 + 56 -5, base11_m, 255);
setEffAlphaKey( spep_11 + 56 -4, base11_m, 0);


-- ** 敵キャラクター ** --
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 -3 + 14, 1, 0 );
setDisp( spep_11 -3 + 20, 1, 1 );
setDisp( spep_11 -3 + 36, 1, 0 );
setDisp( spep_11 -3 + 44, 1, 1 );
setDisp( spep_11 -4 + 56, 1, 0 );

changeAnime( spep_11 + 0, 1, 106 );
changeAnime( spep_11 -3 + 14, 1, 108 );
changeAnime( spep_11 -3 + 36, 1, 106 );
changeAnime( spep_11 -3 + 42, 1, 108 );

--setMoveKey( spep_11 -3 + 0, 1, -242, 29 , 0 );
setMoveKey( spep_11 -2 + 2, 1, -299.1, 29.3 , 0 );
setMoveKey( spep_11 -3 + 4, 1, -306.1, 29.6 , 0 );
setMoveKey( spep_11 -3 + 6, 1, -304, 30 , 0 );
setMoveKey( spep_11 -3 + 8, 1, -297, 30.3 , 0 );
setMoveKey( spep_11 -3 + 10, 1, -286.9, 30.6 , 0 );
setMoveKey( spep_11 -3 + 13, 1, -274.4, 31 , 0 );
setMoveKey( spep_11 -3 + 14, 1, 149.4, -10 , 0 );
setMoveKey( spep_11 -3 + 16, 1, 178.1, 2.7 , 0 );
setMoveKey( spep_11 -3 + 18, 1, 203.8, -6 , 0 );
setMoveKey( spep_11 -3 + 20, 1, -121.7, 0.1 , 0 );
setMoveKey( spep_11 -3 + 22, 1, -93.2, 11.5 , 0 );
setMoveKey( spep_11 -3 + 24, 1, -67.5, 1.5 , 0 );
setMoveKey( spep_11 -3 + 26, 1, -37.6, 5.9 , 0 );
setMoveKey( spep_11 -3 + 28, 1, -10.1, 2.1 , 0 );
setMoveKey( spep_11 -3 + 30, 1, 20.4, 2.5 , 0 );
setMoveKey( spep_11 -3 + 32, 1, 51, 1.2 , 0 );
setMoveKey( spep_11 -3 + 35, 1, 82.3, -0.1 , 0 );
setMoveKey( spep_11 -3 + 36, 1, -242, 29 , 0 );
setMoveKey( spep_11 -3 + 38, 1, -299.1, 29.3 , 0 );
setMoveKey( spep_11 -3 + 41, 1, -306.1, 29.6 , 0 );
setMoveKey( spep_11 -3 + 42, 1, 149.4, -10 , 0 );
setMoveKey( spep_11 -3 + 44, 1, 178.1, 2.7 , 0 );
setMoveKey( spep_11 -3 + 46, 1, 203.8, -6 , 0 );
setMoveKey( spep_11 -3 + 48, 1, 233.7, -0.4 , 0 );
setMoveKey( spep_11 -3 + 50, 1, 261.2, -2.8 , 0 );
setMoveKey( spep_11 -3 + 52, 1, 291.9, -1.1 , 0 );
setMoveKey( spep_11 -3 + 54, 1, 323.1, -1.1 , 0 );
setMoveKey( spep_11 -4 + 56, 1, 355.4, -1.1 , 0 );
-- setMoveKey( spep_11 -4 + 58, 1, 389, -1.1 , 0 );

--setScaleKey( spep_11 -3 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_11 -2 + 2, 1, 0.47, 0.47 );
setScaleKey( spep_11 -3 + 4, 1, 0.45, 0.45 );
setScaleKey( spep_11 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_11 -3 + 8, 1, 0.4, 0.4 );
setScaleKey( spep_11 -3 + 10, 1, 0.37, 0.37 );
setScaleKey( spep_11 -3 + 13, 1, 0.35, 0.35 );
setScaleKey( spep_11 -3 + 18, 1, 0.35, 0.35 );
setScaleKey( spep_11 -3 + 20, 1, 0.4, 0.4 );
setScaleKey( spep_11 -3 + 22, 1, 0.39, 0.39 );
setScaleKey( spep_11 -3 + 24, 1, 0.39, 0.39 );
setScaleKey( spep_11 -3 + 26, 1, 0.38, 0.38 );
setScaleKey( spep_11 -3 + 28, 1, 0.37, 0.37 );
setScaleKey( spep_11 -3 + 30, 1, 0.36, 0.36 );
setScaleKey( spep_11 -3 + 32, 1, 0.36, 0.36 );
setScaleKey( spep_11 -3 + 35, 1, 0.35, 0.35 );
setScaleKey( spep_11 -3 + 36, 1, 0.5, 0.5 );
setScaleKey( spep_11 -3 + 38, 1, 0.47, 0.47 );
setScaleKey( spep_11 -3 + 41, 1, 0.45, 0.45 );
setScaleKey( spep_11 -3 + 42, 1, 0.35, 0.35 );
setScaleKey( spep_11 -4 + 56, 1, 0.35, 0.35 );

setRotateKey( spep_11 + 0, 1, 37.4 );
setRotateKey( spep_11 -3 + 10, 1, 37.4 );
setRotateKey( spep_11 -3 + 13, 1, 37.3 );
setRotateKey( spep_11 -3 + 14, 1, 31.6 );
setRotateKey( spep_11 -3 + 35, 1, 31.6 );
setRotateKey( spep_11 -3 + 36, 1, 37.4 );
setRotateKey( spep_11 -3 + 41, 1, 37.4 );
setRotateKey( spep_11 -3 + 42, 1, 31.6 );
setRotateKey( spep_11 -4 + 56, 1, 31.6 );


-- ** 白フェード ** --
entryFade( spep_11 + 56 - 4 -10, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--岩激突１
SE039 = playSeVer2( spep_11 + 10, 1061, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_11 + 10, 1023, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_10 + 10, SE040, 82 );
SE041 = playSeVer2( spep_11 + 10, 1159, "",spep_10 + 786, 0, 10, -1);	setSeVolumeByWorkId( spep_10 + 10, SE041, 80 );

--岩激突２
SE042 = playSeVer2( spep_11 + 36, 1061, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_11 + 36, 1023, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_10 + 36, SE043, 85 );
SE044 = playSeVer2( spep_11 + 36, 1159, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_10 + 36, SE044, 79 );


-- ** 次の準備 ** --
spep_12 = spep_11 + 56 -4;

-------------------------------------------------
-- 崩れる岩山
-------------------------------------------------
-- ** エフェクト等 ** --
base12 = entryEffect( spep_12 + 0, SP_18, 0x80, -1, 0, 0, 0); --崩れる岩山	ef_012
setEffMoveKey( spep_12 + 0, base12, 0, 0 , 0);
setEffMoveKey( spep_12 + 140 -4, base12, 0, 0 , 0);
setEffScaleKey( spep_12 + 0, base12, 1.0, 1.0);
setEffScaleKey( spep_12 + 140 -4, base12, 1.0, 1.0);
setEffRotateKey( spep_12 + 0, base12, 0);
setEffRotateKey( spep_12 + 140 -4, base12, 0);
setEffAlphaKey( spep_12 + 0, base12, 255);
setEffAlphaKey( spep_12 + 140 -4, base12, 255);


-- ** 白フェード ** --
entryFade( spep_12 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 集中線 ** --
shuchusen_12 = entryEffectLife( spep_12 + 0,  906, 140 -4, 0x100, -1, 0, 0, 0 );
setEffShake( spep_12 + 0, shuchusen_12, 140 -4, 25 );
setEffMoveKey( spep_12 + 0, shuchusen_12, 0, 0 , 0 );
setEffMoveKey( spep_12 + 140 -4, shuchusen_12, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, shuchusen_12, 1.2, 1.2 );
setEffScaleKey( spep_12 + 140 -4, shuchusen_12, 1.2, 1.2 );
setEffRotateKey( spep_12 + 0, shuchusen_12, 0 );
setEffRotateKey( spep_12 + 140 -4, shuchusen_12, 0 );
setEffAlphaKey( spep_12 + 0, shuchusen_12, 255 );
setEffAlphaKey( spep_12 + 140 -4, shuchusen_12, 255 );
setEffAlphaKey( spep_12 + 140 -3, shuchusen_12, 0 );


-- ** 音 ** --
--岩激突３
SE045 = playSeVer2( spep_12 + 8, 1067, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_12 + 8, 1024, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_12 + 8, 1168, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_12 + 10 -3); -- ダメージ表示フレーム
endPhase( spep_12 + 140 -8); -- 終了フレーム

end
