-- 1024030：UR_ベジータ王_オーガブラスター
-- sp_effect_a1_00357
-- sp2394


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

--エフェクト(味方)
SP_01 = 160093;	-- 溜め	ef_001	75	キャラ込み　　書き文字「ズズズンッ」お願いします
SP_02 = 160094;	-- 放つ	ef_002	75	キャラ込み　　書き文字「ズオッ」お願いします
SP_03 = 160095;	-- 着弾・手前	ef_003	50	ef_004とセット。敵の手前に配置。書き文字「ズドドドッ」お願いします
SP_03b = 160096;	-- 着弾・奥	ef_004	50	ef_003とセット。敵の奥に配置。

--エフェクト(てき)
SP_01r = 160097;	-- 敵用：溜め	ef_001_r	50	キャラ込み　　書き文字「ズズズンッ」お願いします
SP_02r = 160098;	-- 敵用：放つ	ef_002_r	50	キャラ込み　　書き文字「ズオッ」お願いします


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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 溜め
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 溜め	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 148 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 148 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 148 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 148 -5, base_0, 255);
setEffAlphaKey( spep_0 + 148 -4, base_0, 0);


--文字エントリー
ctzuzuzun = entryEffectLife( spep_0 -3 + 22,  10013, 62 - 22, 0x100, -1, 0, 20.1, 249.8 );	-- ズズズンッ

setEffMoveKey( spep_0 -3 + 22, ctzuzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 -3 + 24, ctzuzuzun, 29.2, 317.4 , 0 );
setEffMoveKey( spep_0 -3 + 26, ctzuzuzun, 51.2, 394.7 , 0 );
setEffMoveKey( spep_0 -3 + 28, ctzuzuzun, 38.3, 377.6 , 0 );
setEffMoveKey( spep_0 -3 + 30, ctzuzuzun, 43.3, 371.9 , 0 );
setEffMoveKey( spep_0 -3 + 32, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 34, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 36, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 38, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 40, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 44, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 46, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 48, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctzuzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctzuzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctzuzuzun, 30.9, 354.4 , 0 );

setEffScaleKey( spep_0 -3 + 22, ctzuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 -3 + 24, ctzuzuzun, 1.99, 1.99 );
setEffScaleKey( spep_0 -3 + 26, ctzuzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 -3 + 28, ctzuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 -3 + 62, ctzuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 -3 + 22, ctzuzuzun, -5 );
setEffRotateKey( spep_0 -3 + 62, ctzuzuzun, -5 );

setEffAlphaKey( spep_0 -3 + 22, ctzuzuzun, 30 );
setEffAlphaKey( spep_0 -3 + 28, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 50, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 52, ctzuzuzun, 212 );
setEffAlphaKey( spep_0 -3 + 54, ctzuzuzun, 170 );
setEffAlphaKey( spep_0 -3 + 56, ctzuzuzun, 128 );
setEffAlphaKey( spep_0 -3 + 58, ctzuzuzun, 85 );
setEffAlphaKey( spep_0 -3 + 60, ctzuzuzun, 43 );
setEffAlphaKey( spep_0 -3 + 62, ctzuzuzun, 0 );


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 48;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = -30;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, cx + 40, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 20, 1035, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);

--気弾溜め
SE003 = playSeVer2( spep_0 + 52, 1037, "",spep_0 + 158, 0, 14, -1);

--顔カットイン
SE004 = playSeVer2( spep_0 + 54, 1018, "", 0, 0, 0, -1);

--オーラ
SE005 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_c = spep_0 + 148 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
-- setEffReplaceTexture( speff2, 1, 1);
-- setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

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
-- playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_1 = spep_c + 96;

-------------------------------------------------
-- 放つ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 放つ	ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 88 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 88 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 88 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 88 -5, base_1, 255);
setEffAlphaKey( spep_1 + 88 -4, base_1, 0);


--文字エントリー
ctZuo = entryEffectLife( spep_1 -3 + 20,  10012, 80 - 20, 0x100, -1, 0, 9.6, 282.4 ); --ズオッ

setEffMoveKey( spep_1 -3 + 20, ctZuo, 9.6, 282.4 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctZuo, 32.9, 331.8 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctZuo, 50.5, 397.2 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctZuo, 90.2, 375.5 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctZuo, 78.7, 405 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctZuo, 127.9, 373.8 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctZuo, 146.9, 372.9 , 0 );

setEffScaleKey( spep_1 -3 + 20, ctZuo, 0.34, 0.34 );
setEffScaleKey( spep_1 -3 + 22, ctZuo, 1.54, 1.54 );
setEffScaleKey( spep_1 -3 + 24, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_1 -3 + 70, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_1 -3 + 72, ctZuo, 3.55, 3.55 );
setEffScaleKey( spep_1 -3 + 74, ctZuo, 4.37, 4.37 );
setEffScaleKey( spep_1 -3 + 76, ctZuo, 5.19, 5.19 );
setEffScaleKey( spep_1 -3 + 78, ctZuo, 6.01, 6.01 );
setEffScaleKey( spep_1 -3 + 80, ctZuo, 6.82, 6.82 );

setEffRotateKey( spep_1 -3 + 20, ctZuo, 9.5 );
setEffRotateKey( spep_1 -3 + 22, ctZuo, 18.4 );
setEffRotateKey( spep_1 -3 + 24, ctZuo, 27.2 );

setEffAlphaKey( spep_1 -3 + 20, ctZuo, 30 );
setEffAlphaKey( spep_1 -3 + 26, ctZuo, 255 );
setEffAlphaKey( spep_1 -3 + 70, ctZuo, 255 );
setEffAlphaKey( spep_1 -3 + 72, ctZuo, 204 );
setEffAlphaKey( spep_1 -3 + 74, ctZuo, 153 );
setEffAlphaKey( spep_1 -3 + 76, ctZuo, 102 );
setEffAlphaKey( spep_1 -3 + 78, ctZuo, 51 );
setEffAlphaKey( spep_1 -3 + 80, ctZuo, 0 );


-- ** 音 ** --
--気弾発射
SE009 = playSeVer2( spep_1 + 8, 1027, "", 0, 0, 0, -1);

SE010 = playSeVer2( spep_1 + 8, 1022, "", 0, 0, 0, -1);
setTimeStretch( SE010, 1.25, 30, 4 );

--気弾飛んでいく
SE011 = playSeVer2( spep_1 + 76, 1021, "", 0, 0, 0, -1);



-- ** 次の準備 ** --
spep_2 = spep_1 + 88 -4;

-------------------------------------------------
-- 着弾
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- 着弾・手前	ef_003
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 108 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 108 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 108 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 108 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 108 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- 着弾・奥	ef_004
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 108 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 108 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 108 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 108 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 108 -4, base_2b, 0);


-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 書き文字エントリー ** --
ctZud = entryEffectLife( spep_2 + 0, 10014, 108 -5, 0x100, -1, 0, 58.1, 364 );	-- ズドドドッ

-- setEffMoveKey( spep_2 -3 + 0, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -2 + 2, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 4, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 6, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 8, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 10, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 12, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 14, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctZud, 58.1, 364 , 0 );

setEffScaleKey( spep_2 + 0, ctZud, 3.2, 3.2 );

setEffRotateKey( spep_2 + 0, ctZud, 80 );

setEffAlphaKey( spep_2 + 0, ctZud, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 104 );

-- setMoveKey( spep_2 -3 + 0, 1, 244.3, -28.5 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 253.5, -18.9 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 244.7, -25.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 251.8, -19.8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 242.9, -26.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 250, -20.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 240.9, -27.4 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 247.9, -22 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 238.8, -28.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 245.6, -23.2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 236.4, -29.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 243.1, -24.6 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 233.8, -31.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 240.4, -26.1 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 231, -32.8 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 237.5, -27.6 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 228, -34.5 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 234.5, -29.3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 224.8, -36.2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 231.2, -31.1 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 221.4, -38.1 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 227.7, -33.1 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 217.8, -40.1 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 224, -35.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 214, -42.2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 220.1, -37.2 , 0 );


-- setScaleKey( spep_2 -3 + 0, 1, 1.24, 1.24 );
setScaleKey( spep_2 -2 + 2, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 4, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 6, 1, 1.33, 1.33 );
setScaleKey( spep_2 -3 + 8, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 10, 1, 1.39, 1.39 );
setScaleKey( spep_2 -3 + 12, 1, 1.43, 1.43 );
setScaleKey( spep_2 -3 + 14, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 16, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 18, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 20, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 22, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 24, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 26, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 28, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 30, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 32, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 34, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 36, 1, 2.02, 2.02 );
setScaleKey( spep_2 -3 + 38, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 40, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 42, 1, 2.22, 2.22 );
setScaleKey( spep_2 -3 + 44, 1, 2.28, 2.28 );
setScaleKey( spep_2 -3 + 46, 1, 2.35, 2.35 );
setScaleKey( spep_2 -3 + 48, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 50, 1, 2.49, 2.49 );

setRotateKey( spep_2 + 0, 1, 0 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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


-- ** 書き文字エントリー ** --
setEffMoveKey( spep_2 -3 + 46, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 102, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 104, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 106, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 108, ctZud, 58.1, 364 , 0 );

setEffScaleKey( spep_2 -3 + 108, ctZud, 3.2, 3.2 );

setEffRotateKey( spep_2 -3 + 108, ctZud, 80 );

setEffAlphaKey( spep_2 -3 + 108, ctZud, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 94, 1, 0 );

changeAnime( spep_2 -3 + 60, 1, 108 );

setMoveKey( spep_2 -3 + 52, 1, 210, -44.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 216, -39.5 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 205.8, -46.7 , 0 );
setMoveKey( spep_2 -3 + 59, 1, 211.7, -41.9 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 234.6, -32.1 , 0 );
setMoveKey( spep_2 -3 + 61, 1, 234.6, -32.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 254.4, 115 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 172.8, -77.9 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 237.2, -7 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 275.5, -82.1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 201.5, -18.1 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 195.5, 129.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 184.5, -146.1 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 228.5, 46.9 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 203.5, -24.1 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 195.5, -30.1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 203.5, -24.1 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 195.5, -30.1 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 179.5, -38.1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 195.5, -21.1 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 326.6, -20.1 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 405.3, -14 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 431.6, -12 , 0 );

setScaleKey( spep_2 -3 + 52, 1, 2.57, 2.57 );
setScaleKey( spep_2 -3 + 54, 1, 2.65, 2.65 );
setScaleKey( spep_2 -3 + 56, 1, 2.72, 2.72 );
setScaleKey( spep_2 -3 + 59, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 60, 1, 3.14, 3.14 );
setScaleKey( spep_2 -3 + 61, 1, 3.14, 3.14 );
setScaleKey( spep_2 -3 + 62, 1, 3.14, 3.14 );
setScaleKey( spep_2 -3 + 64, 1, 3.09, 3.09 );
setScaleKey( spep_2 -3 + 66, 1, 3.05, 3.05 );
setScaleKey( spep_2 -3 + 68, 1, 3.04, 3.04 );
setScaleKey( spep_2 -3 + 88, 1, 3.04, 3.04 );
setScaleKey( spep_2 -3 + 90, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 92, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 94, 1, 0.66, 0.66 );

setRotateKey( spep_2 -3 + 59, 1, 0 );
setRotateKey( spep_2 -3 + 60, 1, 23.7 );
setRotateKey( spep_2 -3 + 61, 1, 23.7 );
setRotateKey( spep_2 -3 + 62, 1, -16 );
setRotateKey( spep_2 -3 + 64, 1, -7.1 );
setRotateKey( spep_2 -3 + 66, 1, -1.8 );
setRotateKey( spep_2 -3 + 68, 1, 0 );
setRotateKey( spep_2 -3 + 94, 1, 0 );


-- ** 音 ** --
--気弾ヒット
SE012 = playSeVer2( spep_2 + 60, 1011, "", 0, 0, 0, -1);

--爆発
SE013 = playSeVer2( spep_2 + 102, 1023, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 108 -4;


---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** 爆発 ** --
explode = entryEffect( spep_3 + 0, 1509,  0x80,  -1,  0,  0,  0);	-- 爆発
setEffMoveKey( spep_3 + 0, explode, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, explode, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, explode, 0.6, 0.6 );
setEffScaleKey( spep_3 + 10, explode, 0.9, 0.9 );
setEffScaleKey( spep_3 + 110, explode, 1, 1 );
setEffRotateKey( spep_3 + 0, explode, 0 );
setEffRotateKey( spep_3 + 110, explode, 0 );
setEffAlphaKey( spep_3 + 0, explode, 255 );
setEffAlphaKey( spep_3 + 110, explode, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_3 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_3 + 2, hibiware, 70, -60, 0 );
setEffMoveKey( spep_3 + 110, hibiware, 70, -60, 0 );
setEffScaleKey( spep_3 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_3 + 110, hibiware, 1.0, 1.0 );
setEffRotateKey( spep_3 + 2, hibiware, 0 );
setEffRotateKey( spep_3 + 110, hibiware, 0 );
setEffAlphaKey( spep_3 + 2, hibiware, 0 );
setEffAlphaKey( spep_3 + 13, hibiware, 0 );
setEffAlphaKey( spep_3 + 14, hibiware, 255 );
setEffAlphaKey( spep_3 + 110, hibiware, 255 );

-- ** 集中線 ** --
shuchusenf1 = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusenf1, 32, 25 );
setEffMoveKey( spep_3 + 14, shuchusenf1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusenf1, 0, 0 , 0 );
setEffScaleKey( spep_3 + 14, shuchusenf1, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusenf1, 1, 1 );
setEffRotateKey( spep_3 + 14, shuchusenf1, 0 );
setEffRotateKey( spep_3 + 46, shuchusenf1, 0 );
setEffAlphaKey( spep_3 + 14, shuchusenf1, 255 );
setEffAlphaKey( spep_3 + 28, shuchusenf1, 255 );
setEffAlphaKey( spep_3 + 30, shuchusenf1, 252 );
setEffAlphaKey( spep_3 + 32, shuchusenf1, 242 );
setEffAlphaKey( spep_3 + 34, shuchusenf1, 227 );
setEffAlphaKey( spep_3 + 36, shuchusenf1, 205 );
setEffAlphaKey( spep_3 + 38, shuchusenf1, 176 );
setEffAlphaKey( spep_3 + 40, shuchusenf1, 142 );
setEffAlphaKey( spep_3 + 42, shuchusenf1, 101 );
setEffAlphaKey( spep_3 + 44, shuchusenf1, 54 );
setEffAlphaKey( spep_3 + 46, shuchusenf1, 0 );

shuchusenf2 = entryEffectLife( spep_3 + 14,  1657, 96, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusenf2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusenf2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 14, shuchusenf2, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusenf2, 1, 1 );
setEffRotateKey( spep_3 + 14, shuchusenf2, 0 );
setEffRotateKey( spep_3 + 100, shuchusenf2, 0 );
setEffAlphaKey( spep_3 + 14, shuchusenf2, 255 );
setEffAlphaKey( spep_3 + 110, shuchusenf2, 255 );

-- ** 書き文字エントリー ** --
ctgaf = entryEffectLife( spep_3 + 14,  10005, 96, 0x100, -1, 0, 4, 310 );  --ガッ
setEffShake( spep_3 + 14, ctgaf, 14, 20 );
setEffMoveKey( spep_3 + 14, ctgaf, 4, 310 , 0 );
setEffMoveKey( spep_3 + 110, ctgaf, 4, 310 , 0 );
setEffScaleKey( spep_3 + 14, ctgaf, 3.5, 3.5 );
setEffScaleKey( spep_3 + 110, ctgaf, 3.5, 3.5 );
setEffRotateKey( spep_3 + 14, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 15, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 16, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 17, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 18, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 19, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 20, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 21, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 22, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 23, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 24, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 25, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 26, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 27, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 28, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 110, ctgaf, -14.9 );
setEffAlphaKey( spep_3 + 14, ctgaf, 255 );
setEffAlphaKey( spep_3 + 110, ctgaf, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_3 + 0, 1, 34.6, 14.4 , 0 );
setMoveKey( spep_3 + 2, 1, 42.8, -5.2 , 0 );
setMoveKey( spep_3 + 4, 1, 16.7, -31.8 , 0 );
setMoveKey( spep_3 + 6, 1, 32.8, -23.7 , 0 );
setMoveKey( spep_3 + 8, 1, -5.1, -84.6 , 0 );
setMoveKey( spep_3 + 10, 1, 42.8, -93.8 , 0 );
setMoveKey( spep_3 + 12, 1, -12.4, -80.6 , 0 );
setMoveKey( spep_3 + 14, 1, -13.1, -77.6 , 0 );
setMoveKey( spep_3 + 16, 1, -12.4, -80.6 , 0 );
setMoveKey( spep_3 + 18, 1, -13.1, -77.6 , 0 );
setMoveKey( spep_3 + 20, 1, -12.4, -80.6 , 0 );
setMoveKey( spep_3 + 22, 1, -13.1, -77.6 , 0 );
setMoveKey( spep_3 + 24, 1, -12.4, -80.6 , 0 );
setMoveKey( spep_3 + 26, 1, -13.1, -77.6 , 0 );
setMoveKey( spep_3 + 110, 1, -13.1, -77.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 2, 1, 105 );
setRotateKey( spep_3 + 4, 1, 240 );
setRotateKey( spep_3 + 6, 1, 405 );
setRotateKey( spep_3 + 8, 1, 600 );
setRotateKey( spep_3 + 10, 1, 825 );
setRotateKey( spep_3 + 12, 1, 1080 );
setRotateKey( spep_3 + 110, 1, 1080 );


-- ** 音 ** --
--画面割れる
SE014 = playSeVer2( spep_3 + 12, 1025, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_3 + 12, 1054, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10);
endPhase( spep_3 + 110 -8);

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 溜め
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 溜め	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 148 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 148 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 148 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 148 -5, base_0, 255);
setEffAlphaKey( spep_0 + 148 -4, base_0, 0);


--文字エントリー
cx_0 = -70;
ctzuzuzun = entryEffectLife( spep_0 -3 + 22,  10013, 62 - 22, 0x100, -1, 0, 20.1 +cx_0, 249.8 );	-- ズズズンッ

setEffMoveKey( spep_0 -3 + 22, ctzuzuzun, 20.1 +cx_0, 249.8 , 0 );
setEffMoveKey( spep_0 -3 + 24, ctzuzuzun, 29.2 +cx_0, 317.4 , 0 );
setEffMoveKey( spep_0 -3 + 26, ctzuzuzun, 51.2 +cx_0, 394.7 , 0 );
setEffMoveKey( spep_0 -3 + 28, ctzuzuzun, 38.3 +cx_0, 377.6 , 0 );
setEffMoveKey( spep_0 -3 + 30, ctzuzuzun, 43.3 +cx_0, 371.9 , 0 );
setEffMoveKey( spep_0 -3 + 32, ctzuzuzun, 30.9 +cx_0, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 34, ctzuzuzun, 40.9 +cx_0, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 36, ctzuzuzun, 30.9 +cx_0, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 38, ctzuzuzun, 40.9 +cx_0, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 40, ctzuzuzun, 30.9 +cx_0, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctzuzuzun, 40.9 +cx_0, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 44, ctzuzuzun, 30.9 +cx_0, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 46, ctzuzuzun, 40.9 +cx_0, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 48, ctzuzuzun, 30.9 +cx_0, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctzuzuzun, 40.9 +cx_0, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctzuzuzun, 30.9 +cx_0, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctzuzuzun, 40.9 +cx_0, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctzuzuzun, 30.9 +cx_0, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctzuzuzun, 40.9 +cx_0, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctzuzuzun, 30.9 +cx_0, 354.4 , 0 );

setEffScaleKey( spep_0 -3 + 22, ctzuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 -3 + 24, ctzuzuzun, 1.99, 1.99 );
setEffScaleKey( spep_0 -3 + 26, ctzuzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 -3 + 28, ctzuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 -3 + 62, ctzuzuzun, 2.92, 2.92 );

cr_0 = 15;
setEffRotateKey( spep_0 -3 + 22, ctzuzuzun, -5 +cr_0 );
setEffRotateKey( spep_0 -3 + 62, ctzuzuzun, -5 +cr_0 );

setEffAlphaKey( spep_0 -3 + 22, ctzuzuzun, 30 );
setEffAlphaKey( spep_0 -3 + 28, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 50, ctzuzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 52, ctzuzuzun, 212 );
setEffAlphaKey( spep_0 -3 + 54, ctzuzuzun, 170 );
setEffAlphaKey( spep_0 -3 + 56, ctzuzuzun, 128 );
setEffAlphaKey( spep_0 -3 + 58, ctzuzuzun, 85 );
setEffAlphaKey( spep_0 -3 + 60, ctzuzuzun, 43 );
setEffAlphaKey( spep_0 -3 + 62, ctzuzuzun, 0 );


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 48;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = 10;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, cx + 40, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 20, 1035, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);

--気弾溜め
SE003 = playSeVer2( spep_0 + 52, 1037, "",spep_0 + 158, 0, 14, -1);

--顔カットイン
SE004 = playSeVer2( spep_0 + 54, 1018, "", 0, 0, 0, -1);

--オーラ
SE005 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_c = spep_0 + 148 -4;

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
spep_1 = spep_c + 96;

-------------------------------------------------
-- 放つ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- 放つ	ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 88 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 88 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 88 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 88 -5, base_1, 255);
setEffAlphaKey( spep_1 + 88 -4, base_1, 0);


--文字エントリー
ctZuo = entryEffectLife( spep_1 -3 + 20,  10012, 80 - 20, 0x100, -1, 0, 9.6, 282.4 ); --ズオッ

setEffMoveKey( spep_1 -3 + 20, ctZuo, 9.6, 282.4 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctZuo, 32.9, 331.8 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctZuo, 36.4, 393.3 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctZuo, 52.4, 377.3 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctZuo, 50.5, 397.2 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctZuo, 90.2, 375.5 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctZuo, 78.7, 405 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctZuo, 127.9, 373.8 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctZuo, 146.9, 372.9 , 0 );

setEffScaleKey( spep_1 -3 + 20, ctZuo, 0.34, 0.34 );
setEffScaleKey( spep_1 -3 + 22, ctZuo, 1.54, 1.54 );
setEffScaleKey( spep_1 -3 + 24, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_1 -3 + 70, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_1 -3 + 72, ctZuo, 3.55, 3.55 );
setEffScaleKey( spep_1 -3 + 74, ctZuo, 4.37, 4.37 );
setEffScaleKey( spep_1 -3 + 76, ctZuo, 5.19, 5.19 );
setEffScaleKey( spep_1 -3 + 78, ctZuo, 6.01, 6.01 );
setEffScaleKey( spep_1 -3 + 80, ctZuo, 6.82, 6.82 );

cr_1 = -20;
setEffRotateKey( spep_1 -3 + 20, ctZuo, 9.50 +cr_1 );
setEffRotateKey( spep_1 -3 + 22, ctZuo, 18.4 +cr_1 );
setEffRotateKey( spep_1 -3 + 24, ctZuo, 27.2 +cr_1 );

setEffAlphaKey( spep_1 -3 + 20, ctZuo, 30 );
setEffAlphaKey( spep_1 -3 + 26, ctZuo, 255 );
setEffAlphaKey( spep_1 -3 + 70, ctZuo, 255 );
setEffAlphaKey( spep_1 -3 + 72, ctZuo, 204 );
setEffAlphaKey( spep_1 -3 + 74, ctZuo, 153 );
setEffAlphaKey( spep_1 -3 + 76, ctZuo, 102 );
setEffAlphaKey( spep_1 -3 + 78, ctZuo, 51 );
setEffAlphaKey( spep_1 -3 + 80, ctZuo, 0 );


-- ** 音 ** --
--気弾発射
SE009 = playSeVer2( spep_1 + 8, 1027, "", 0, 0, 0, -1);

SE010 = playSeVer2( spep_1 + 8, 1022, "", 0, 0, 0, -1);
setTimeStretch( SE010, 1.25, 30, 4 );

--気弾飛んでいく
SE011 = playSeVer2( spep_1 + 76, 1021, "", 0, 0, 0, -1);



-- ** 次の準備 ** --
spep_2 = spep_1 + 88 -4;

-------------------------------------------------
-- 着弾
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- 着弾・手前	ef_003
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 108 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 108 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 108 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 108 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 108 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- 着弾・奥	ef_004
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 108 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 108 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 108 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 108 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 108 -4, base_2b, 0);


-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 書き文字エントリー ** --
ctZud = entryEffectLife( spep_2 + 0, 10014, 108 -5, 0x100, -1, 0, 58.1, 364 );	-- ズドドドッ

-- setEffMoveKey( spep_2 -3 + 0, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -2 + 2, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 4, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 6, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 8, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 10, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 12, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 14, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctZud, 58.1, 364 , 0 );

setEffScaleKey( spep_2 + 0, ctZud, 3.2, 3.2 );

cr_2 = -70;
setEffRotateKey( spep_2 + 0, ctZud, 80 +cr_2 );

setEffAlphaKey( spep_2 + 0, ctZud, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 104 );

-- setMoveKey( spep_2 -3 + 0, 1, 244.3, -28.5 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 253.5, -18.9 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 244.7, -25.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 251.8, -19.8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 242.9, -26.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 250, -20.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 240.9, -27.4 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 247.9, -22 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 238.8, -28.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 245.6, -23.2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 236.4, -29.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 243.1, -24.6 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 233.8, -31.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 240.4, -26.1 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 231, -32.8 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 237.5, -27.6 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 228, -34.5 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 234.5, -29.3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 224.8, -36.2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 231.2, -31.1 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 221.4, -38.1 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 227.7, -33.1 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 217.8, -40.1 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 224, -35.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 214, -42.2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 220.1, -37.2 , 0 );


-- setScaleKey( spep_2 -3 + 0, 1, 1.24, 1.24 );
setScaleKey( spep_2 -2 + 2, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 4, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 6, 1, 1.33, 1.33 );
setScaleKey( spep_2 -3 + 8, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 10, 1, 1.39, 1.39 );
setScaleKey( spep_2 -3 + 12, 1, 1.43, 1.43 );
setScaleKey( spep_2 -3 + 14, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 16, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 18, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 20, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 22, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 24, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 26, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 28, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 30, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 32, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 34, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 36, 1, 2.02, 2.02 );
setScaleKey( spep_2 -3 + 38, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 40, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 42, 1, 2.22, 2.22 );
setScaleKey( spep_2 -3 + 44, 1, 2.28, 2.28 );
setScaleKey( spep_2 -3 + 46, 1, 2.35, 2.35 );
setScaleKey( spep_2 -3 + 48, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 50, 1, 2.49, 2.49 );

setRotateKey( spep_2 + 0, 1, 0 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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


-- ** 書き文字エントリー ** --
setEffMoveKey( spep_2 -3 + 46, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 102, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 104, ctZud, 58.1, 364 , 0 );
setEffMoveKey( spep_2 -3 + 106, ctZud, 34.1, 348 , 0 );
setEffMoveKey( spep_2 -3 + 108, ctZud, 58.1, 364 , 0 );

setEffScaleKey( spep_2 -3 + 108, ctZud, 3.2, 3.2 );

setEffRotateKey( spep_2 -3 + 108, ctZud, 80 +cr_2 );

setEffAlphaKey( spep_2 -3 + 108, ctZud, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 94, 1, 0 );

changeAnime( spep_2 -3 + 60, 1, 108 );

setMoveKey( spep_2 -3 + 52, 1, 210, -44.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 216, -39.5 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 205.8, -46.7 , 0 );
setMoveKey( spep_2 -3 + 59, 1, 211.7, -41.9 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 234.6, -32.1 , 0 );
setMoveKey( spep_2 -3 + 61, 1, 234.6, -32.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 254.4, 115 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 172.8, -77.9 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 237.2, -7 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 275.5, -82.1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 201.5, -18.1 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 195.5, 129.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 184.5, -146.1 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 228.5, 46.9 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 203.5, -24.1 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 195.5, -30.1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 203.5, -24.1 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 195.5, -30.1 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 179.5, -38.1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 195.5, -21.1 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 326.6, -20.1 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 405.3, -14 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 431.6, -12 , 0 );

setScaleKey( spep_2 -3 + 52, 1, 2.57, 2.57 );
setScaleKey( spep_2 -3 + 54, 1, 2.65, 2.65 );
setScaleKey( spep_2 -3 + 56, 1, 2.72, 2.72 );
setScaleKey( spep_2 -3 + 59, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 60, 1, 3.14, 3.14 );
setScaleKey( spep_2 -3 + 61, 1, 3.14, 3.14 );
setScaleKey( spep_2 -3 + 62, 1, 3.14, 3.14 );
setScaleKey( spep_2 -3 + 64, 1, 3.09, 3.09 );
setScaleKey( spep_2 -3 + 66, 1, 3.05, 3.05 );
setScaleKey( spep_2 -3 + 68, 1, 3.04, 3.04 );
setScaleKey( spep_2 -3 + 88, 1, 3.04, 3.04 );
setScaleKey( spep_2 -3 + 90, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 92, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 94, 1, 0.66, 0.66 );

setRotateKey( spep_2 -3 + 59, 1, 0 );
setRotateKey( spep_2 -3 + 60, 1, 23.7 );
setRotateKey( spep_2 -3 + 61, 1, 23.7 );
setRotateKey( spep_2 -3 + 62, 1, -16 );
setRotateKey( spep_2 -3 + 64, 1, -7.1 );
setRotateKey( spep_2 -3 + 66, 1, -1.8 );
setRotateKey( spep_2 -3 + 68, 1, 0 );
setRotateKey( spep_2 -3 + 94, 1, 0 );


-- ** 音 ** --
--気弾ヒット
SE012 = playSeVer2( spep_2 + 60, 1011, "", 0, 0, 0, -1);

--爆発
SE013 = playSeVer2( spep_2 + 102, 1023, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 108 -4;


---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** 爆発 ** --
explode = entryEffect( spep_3 + 0, 1509,  0x80,  -1,  0,  0,  0);	-- 爆発
setEffMoveKey( spep_3 + 0, explode, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, explode, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, explode, 0.6, 0.6 );
setEffScaleKey( spep_3 + 10, explode, 0.9, 0.9 );
setEffScaleKey( spep_3 + 110, explode, 1, 1 );
setEffRotateKey( spep_3 + 0, explode, 0 );
setEffRotateKey( spep_3 + 110, explode, 0 );
setEffAlphaKey( spep_3 + 0, explode, 255 );
setEffAlphaKey( spep_3 + 110, explode, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_3 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_3 + 2, hibiware, 70, -60, 0 );
setEffMoveKey( spep_3 + 110, hibiware, 70, -60, 0 );
setEffScaleKey( spep_3 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_3 + 110, hibiware, 1.0, 1.0 );
setEffRotateKey( spep_3 + 2, hibiware, 0 );
setEffRotateKey( spep_3 + 110, hibiware, 0 );
setEffAlphaKey( spep_3 + 2, hibiware, 0 );
setEffAlphaKey( spep_3 + 13, hibiware, 0 );
setEffAlphaKey( spep_3 + 14, hibiware, 255 );
setEffAlphaKey( spep_3 + 110, hibiware, 255 );

-- ** 集中線 ** --
shuchusenf1 = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusenf1, 32, 25 );
setEffMoveKey( spep_3 + 14, shuchusenf1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusenf1, 0, 0 , 0 );
setEffScaleKey( spep_3 + 14, shuchusenf1, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusenf1, 1, 1 );
setEffRotateKey( spep_3 + 14, shuchusenf1, 0 );
setEffRotateKey( spep_3 + 46, shuchusenf1, 0 );
setEffAlphaKey( spep_3 + 14, shuchusenf1, 255 );
setEffAlphaKey( spep_3 + 28, shuchusenf1, 255 );
setEffAlphaKey( spep_3 + 30, shuchusenf1, 252 );
setEffAlphaKey( spep_3 + 32, shuchusenf1, 242 );
setEffAlphaKey( spep_3 + 34, shuchusenf1, 227 );
setEffAlphaKey( spep_3 + 36, shuchusenf1, 205 );
setEffAlphaKey( spep_3 + 38, shuchusenf1, 176 );
setEffAlphaKey( spep_3 + 40, shuchusenf1, 142 );
setEffAlphaKey( spep_3 + 42, shuchusenf1, 101 );
setEffAlphaKey( spep_3 + 44, shuchusenf1, 54 );
setEffAlphaKey( spep_3 + 46, shuchusenf1, 0 );

shuchusenf2 = entryEffectLife( spep_3 + 14,  1657, 96, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusenf2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusenf2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 14, shuchusenf2, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusenf2, 1, 1 );
setEffRotateKey( spep_3 + 14, shuchusenf2, 0 );
setEffRotateKey( spep_3 + 100, shuchusenf2, 0 );
setEffAlphaKey( spep_3 + 14, shuchusenf2, 255 );
setEffAlphaKey( spep_3 + 110, shuchusenf2, 255 );

-- ** 書き文字エントリー ** --
ctgaf = entryEffectLife( spep_3 + 14,  10005, 96, 0x100, -1, 0, 4, 310 );  --ガッ
setEffShake( spep_3 + 14, ctgaf, 14, 20 );
setEffMoveKey( spep_3 + 14, ctgaf, 4, 310 , 0 );
setEffMoveKey( spep_3 + 110, ctgaf, 4, 310 , 0 );
setEffScaleKey( spep_3 + 14, ctgaf, 3.5, 3.5 );
setEffScaleKey( spep_3 + 110, ctgaf, 3.5, 3.5 );
setEffRotateKey( spep_3 + 14, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 15, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 16, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 17, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 18, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 19, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 20, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 21, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 22, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 23, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 24, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 25, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 26, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 27, ctgaf, -10.9 );
setEffRotateKey( spep_3 + 28, ctgaf, -14.9 );
setEffRotateKey( spep_3 + 110, ctgaf, -14.9 );
setEffAlphaKey( spep_3 + 14, ctgaf, 255 );
setEffAlphaKey( spep_3 + 110, ctgaf, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_3 + 0, 1, 34.6, 14.4 , 0 );
setMoveKey( spep_3 + 2, 1, 42.8, -5.2 , 0 );
setMoveKey( spep_3 + 4, 1, 16.7, -31.8 , 0 );
setMoveKey( spep_3 + 6, 1, 32.8, -23.7 , 0 );
setMoveKey( spep_3 + 8, 1, -5.1, -84.6 , 0 );
setMoveKey( spep_3 + 10, 1, 42.8, -93.8 , 0 );
setMoveKey( spep_3 + 12, 1, -12.4, -80.6 , 0 );
setMoveKey( spep_3 + 14, 1, -13.1, -77.6 , 0 );
setMoveKey( spep_3 + 16, 1, -12.4, -80.6 , 0 );
setMoveKey( spep_3 + 18, 1, -13.1, -77.6 , 0 );
setMoveKey( spep_3 + 20, 1, -12.4, -80.6 , 0 );
setMoveKey( spep_3 + 22, 1, -13.1, -77.6 , 0 );
setMoveKey( spep_3 + 24, 1, -12.4, -80.6 , 0 );
setMoveKey( spep_3 + 26, 1, -13.1, -77.6 , 0 );
setMoveKey( spep_3 + 110, 1, -13.1, -77.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 2, 1, 105 );
setRotateKey( spep_3 + 4, 1, 240 );
setRotateKey( spep_3 + 6, 1, 405 );
setRotateKey( spep_3 + 8, 1, 600 );
setRotateKey( spep_3 + 10, 1, 825 );
setRotateKey( spep_3 + 12, 1, 1080 );
setRotateKey( spep_3 + 110, 1, 1080 );


-- ** 音 ** --
--画面割れる
SE014 = playSeVer2( spep_3 + 12, 1025, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_3 + 12, 1054, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10);
endPhase( spep_3 + 110 -8);

end
