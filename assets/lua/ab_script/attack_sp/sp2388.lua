-- 1024220：SSR_トランクス(青年期)_バスターキャノン
-- sp_effect_a2_00179
-- sp2388

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
SP_01 = 159933;	-- 溜め	ef_001	75	キャラ込み　　書き文字「ズズズンッ」お願いします
SP_02 = 159934;	-- 放つ	ef_002	75	キャラ込み　　書き文字「ズオッ」お願いします
SP_03 = 159935;	-- 着弾・手前	ef_003	50	ef_004とセット。敵の手前に配置。書き文字「ズドドドッ」お願いします
SP_03b = 159936;	-- 着弾・奥	ef_004	50	ef_003とセット。敵の奥に配置。

--エフェクト(敵)
SP_01r = 159937;	-- 敵用：溜め	ef_001_r	50	キャラ込み　　書き文字「ズズズンッ」お願いします
SP_02r = 159938;	-- 敵用：放つ	ef_002_r	50	キャラ込み　　書き文字「ズオッ」お願いします


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
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); --溜め	ef_001	75	キャラ込み　　書き文字「ズズズンッ」お願いします
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 148 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 148 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 148 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 148 -5, base_0, 255);
setEffAlphaKey( spep_0 + 148 -4, base_0, 0);

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 20 -3, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 148 -4 -10, 8, 2+2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 集中線 ** --
shuchusen_0 = entryEffectLife( spep_0 + 20 -3, 906, 148 - 20, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 20 -3, shuchusen_0, 148 - 20, 20 );
setEffMoveKey( spep_0 + 20 -3, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 148 - 20, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 20 -3, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 148 - 20, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 20 -3, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 148 - 20, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 20 -3, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 148 - 20, shuchusen_0, 255 );


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

setEffAlphaKey( spep_0 -3 + 22, ctzuzuzun, 255 );
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
spep_x = spep_0 + 50;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, 80, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--気ダメ
SE002 = playSeVer2( spep_0 + 28, 1035, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_0 + 52, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE003, 71 );

--気弾溜め
SE004 = playSeVer2( spep_0 + 54, 1037, "",spep_0 + 158, 0, 8, 0.6);

--顔カットイン
SE005 = playSeVer2( spep_0 + 60, 1018, "", 0, 0, 0, -1);

--オーラ
SE006 = playSeVer2( spep_0 + 76, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE006, 71 );
SE007 = playSeVer2( spep_0 + 100, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE007, 71 );
SE008 = playSeVer2( spep_0 + 124, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE008, 71 );


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
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); --放つ	ef_002	75	キャラ込み　　書き文字「ズオッ」お願いします
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 88 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 88 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 88 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 88 -5, base_1, 255);
setEffAlphaKey( spep_1 + 88 -4, base_1, 0);

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 28 -3, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 88 -4 -10, 8, 2+2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_1 + 0, 906, 28 -3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen_1, 28 -3, 20 );
setEffMoveKey( spep_1 + 0, shuchusen_1, 0, 0, 0 );
setEffMoveKey( spep_1 + 28 -3, shuchusen_1, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, shuchusen_1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 28 -3, shuchusen_1, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen_1, 0 );
setEffRotateKey( spep_1 + 28 -3, shuchusen_1, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen_1, 255 );
setEffAlphaKey( spep_1 + 28 -3, shuchusen_1, 255 );


--文字エントリー
ctZuo = entryEffectLife( spep_1 -3 + 30, 10012, 88 - 30, 0x100, -1, 0, -31.8, 332.7 ); --ズオッ

setEffMoveKey( spep_1 -3 + 30, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctZuo, -10.7, 331 , 0 );

setEffScaleKey( spep_1 -3 + 30, ctZuo, 2.55, 2.55 );
setEffScaleKey( spep_1 -3 + 80, ctZuo, 2.55, 2.55 );

setEffRotateKey( spep_1 -3 + 30, ctZuo, -13.1 );
setEffRotateKey( spep_1 -3 + 80, ctZuo, -13.1 );

setEffAlphaKey( spep_1 -3 + 30, ctZuo, 255 );
setEffAlphaKey( spep_1 -3 + 80, ctZuo, 255 );


-- ** 音 ** --
--気弾発射前溜め
SE010 = playSeVer2( spep_1 + 0, 1037, "",spep_1 + 42, 0, 4, 0.6);

--気弾発射
SE011 = playSeVer2( spep_1 + 26, 1027, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 26, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 26, SE012, 87 );


-- ** 次の準備 ** --
spep_2 = spep_1 + 88 -4;

-------------------------------------------------
-- 着弾
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); --着弾・手前	ef_003	50	ef_004とセット。敵の手前に配置。書き文字「ズドドドッ」お願いします
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 88 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 88 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 88 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 88 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 88 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); --着弾・奥	ef_004	50	ef_003とセット。敵の奥に配置。
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 88 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 88 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 88 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 88 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 88 -4, base_2b, 0);


-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -4 + 88, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 -3 + 30, 1, 108 );

setMoveKey( spep_2 -2 + 2, 1, -16.7, -87 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -0.3, -62.6 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 8.8, -48.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 26.6, -17.2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 37, 3.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 56.2, 34.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 64, 58.7 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 78.6, 74.2 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 81.4, 78.2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 92.4, 98.8 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 95.6, 107.9 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 107, 125.6 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 106.6, 131.8 , 0 );

setScaleKey( spep_2 -2 + 2, 1, 3.15, 3.15 );
setScaleKey( spep_2 -3 + 4, 1, 2.98, 2.98 );
setScaleKey( spep_2 -3 + 6, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 8, 1, 2.6, 2.6 );
setScaleKey( spep_2 -3 + 10, 1, 2.38, 2.38 );
setScaleKey( spep_2 -3 + 12, 1, 2.14, 2.14 );
setScaleKey( spep_2 -3 + 14, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 16, 1, 1.83, 1.83 );
setScaleKey( spep_2 -3 + 18, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 20, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 22, 1, 1.61, 1.61 );
setScaleKey( spep_2 -3 + 24, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 26, 1, 1.44, 1.44 );

setRotateKey( spep_2 -2 + 2, 1, -2.1 );
setRotateKey( spep_2 -3 + 4, 1, -2.3 );
setRotateKey( spep_2 -3 + 6, 1, -2.4 );
setRotateKey( spep_2 -3 + 8, 1, -2.5 );
setRotateKey( spep_2 -3 + 10, 1, -2.6 );
setRotateKey( spep_2 -3 + 12, 1, -2.8 );
setRotateKey( spep_2 -3 + 14, 1, -2.9 );
setRotateKey( spep_2 -3 + 16, 1, -3 );
setRotateKey( spep_2 -3 + 18, 1, -3.1 );
setRotateKey( spep_2 -3 + 20, 1, -3.3 );
setRotateKey( spep_2 -3 + 22, 1, -3.4 );
setRotateKey( spep_2 -3 + 24, 1, -3.5 );
setRotateKey( spep_2 -3 + 26, 1, -3.6 );


-- ** 音 ** --
--気弾飛んでいく
SE013 = playSeVer2( spep_2 + 16, 1021, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 18; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 0, SE013, 0);
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

-- ** 白フェード ** --
entryFade( spep_2 + 30 -3, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_2 + 88 -4 -10, 8, 2+2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


--文字エントリー
ctZud = entryEffectLife( spep_2 -3 + 24,  10014, 62 -24, 0x100, -1, 0, -419, 438.3 );	-- ズドドドッ

setEffMoveKey( spep_2 -3 + 24, ctZud, -419, 438.3 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctZud, -141.9, 278.9 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctZud, -149.7, 305.3 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctZud, -137.2, 278.7 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctZud, -144.7, 304.3 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctZud, -132.5, 278.5 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctZud, -139.6, 303.3 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctZud, -127.7, 278.2 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctZud, -134.6, 302.3 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctZud, -123, 278 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctZud, -129.6, 301.3 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctZud, -118.3, 277.8 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctZud, -124.6, 300.3 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctZud, -113.6, 277.6 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctZud, -119.6, 299.3 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctZud, -108.9, 277.3 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctZud, -114.6, 298.3 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctZud, -104.2, 277.1 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctZud, -179.1, 365.8 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctZud, -246.2, 434 , 0 );

ss_2 = 3;
setEffScaleKey( spep_2 -3 + 24, ctZud, 2.67 *ss_2, 2.67 *ss_2);
setEffScaleKey( spep_2 -3 + 26, ctZud, 1.00 *ss_2, 1.00 *ss_2);
setEffScaleKey( spep_2 -3 + 28, ctZud, 0.99 *ss_2, 0.99 *ss_2);
setEffScaleKey( spep_2 -3 + 30, ctZud, 0.97 *ss_2, 0.97 *ss_2);
setEffScaleKey( spep_2 -3 + 32, ctZud, 0.96 *ss_2, 0.96 *ss_2);
setEffScaleKey( spep_2 -3 + 34, ctZud, 0.94 *ss_2, 0.94 *ss_2);
setEffScaleKey( spep_2 -3 + 36, ctZud, 0.93 *ss_2, 0.93 *ss_2);
setEffScaleKey( spep_2 -3 + 38, ctZud, 0.91 *ss_2, 0.91 *ss_2);
setEffScaleKey( spep_2 -3 + 40, ctZud, 0.90 *ss_2, 0.90 *ss_2);
setEffScaleKey( spep_2 -3 + 42, ctZud, 0.88 *ss_2, 0.88 *ss_2);
setEffScaleKey( spep_2 -3 + 44, ctZud, 0.87 *ss_2, 0.87 *ss_2);
setEffScaleKey( spep_2 -3 + 46, ctZud, 0.85 *ss_2, 0.85 *ss_2);
setEffScaleKey( spep_2 -3 + 48, ctZud, 0.84 *ss_2, 0.84 *ss_2);
setEffScaleKey( spep_2 -3 + 50, ctZud, 0.82 *ss_2, 0.82 *ss_2);
setEffScaleKey( spep_2 -3 + 52, ctZud, 0.81 *ss_2, 0.81 *ss_2);
setEffScaleKey( spep_2 -3 + 54, ctZud, 0.79 *ss_2, 0.79 *ss_2);
setEffScaleKey( spep_2 -3 + 56, ctZud, 0.78 *ss_2, 0.78 *ss_2);
setEffScaleKey( spep_2 -3 + 58, ctZud, 0.77 *ss_2, 0.77 *ss_2);
setEffScaleKey( spep_2 -3 + 60, ctZud, 1.48 *ss_2, 1.48 *ss_2);
setEffScaleKey( spep_2 -3 + 62, ctZud, 2.19 *ss_2, 2.19 *ss_2);

sr_2 = 70;
setEffRotateKey( spep_2 -3 + 24, ctZud, -77.2 +sr_2);
setEffRotateKey( spep_2 -3 + 62, ctZud, -77.2 +sr_2);

setEffAlphaKey( spep_2 -3 + 24, ctZud, 77 );
setEffAlphaKey( spep_2 -3 + 26, ctZud, 255 );
setEffAlphaKey( spep_2 -3 + 58, ctZud, 255 );
setEffAlphaKey( spep_2 -3 + 60, ctZud, 128 );
setEffAlphaKey( spep_2 -3 + 62, ctZud, 0 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -4 + 88, 1, 0 );

changeAnime( spep_2 -3 + 30, 1, 108 );

setMoveKey( spep_2 -3 + 29, 1, 122.3, 154.6 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 163.7, 199.4 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 161, 189.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 119.1, 176.3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 145.9, 210 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 143.3, 212.4 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 146.6, 215.3 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 137.9, 206.2 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 145.2, 213 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 140.6, 207.9 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 143.9, 210.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 135.3, 201.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 142.6, 208.5 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 138, 203.3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 141.4, 206.1 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 132.8, 196.9 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 140.2, 203.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 135.6, 198.6 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 139, 201.4 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 130.4, 192.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 137.8, 198.9 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 133.3, 193.7 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 136.7, 196.5 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 128.2, 187.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 135.7, 194 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 131.1, 188.7 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 130.6, 187.5 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 126.1, 174.2 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 129.6, 184.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 121.1, 179.6 , 0 );
-- setMoveKey( spep_2 -5 + 88, 1, 128.6, 182.3 , 0 );

setScaleKey( spep_2 -3 + 29, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 30, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 32, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 34, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 36, 1, 0.61, 0.61 );
setScaleKey( spep_2 -3 + 38, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 42, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 44, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 50, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 52, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 58, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 60, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 66, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 68, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 74, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 76, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 82, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 84, 1, 0.26, 0.26 );
setScaleKey( spep_2 -5 + 88, 1, 0.26, 0.26 );

setRotateKey( spep_2 -3 + 29, 1, -3.8 );
setRotateKey( spep_2 -3 + 30, 1, 21 );
setRotateKey( spep_2 -3 + 32, 1, 18.5 );
setRotateKey( spep_2 -3 + 34, 1, 16.1 );
setRotateKey( spep_2 -3 + 36, 1, 13.8 );
setRotateKey( spep_2 -3 + 38, 1, 11.6 );
setRotateKey( spep_2 -3 + 40, 1, 11.4 );
setRotateKey( spep_2 -3 + 42, 1, 11.3 );
setRotateKey( spep_2 -3 + 44, 1, 11.1 );
setRotateKey( spep_2 -3 + 46, 1, 10.9 );
setRotateKey( spep_2 -3 + 48, 1, 10.8 );
setRotateKey( spep_2 -3 + 50, 1, 10.6 );
setRotateKey( spep_2 -3 + 52, 1, 10.4 );
setRotateKey( spep_2 -3 + 54, 1, 10.3 );
setRotateKey( spep_2 -3 + 56, 1, 10.1 );
setRotateKey( spep_2 -3 + 58, 1, 9.9 );
setRotateKey( spep_2 -3 + 60, 1, 9.8 );
setRotateKey( spep_2 -3 + 62, 1, 9.6 );
setRotateKey( spep_2 -3 + 64, 1, 9.4 );
setRotateKey( spep_2 -3 + 66, 1, 9.3 );
setRotateKey( spep_2 -3 + 68, 1, 9.1 );
setRotateKey( spep_2 -3 + 70, 1, 8.9 );
setRotateKey( spep_2 -3 + 72, 1, 8.8 );
setRotateKey( spep_2 -3 + 74, 1, 8.6 );
setRotateKey( spep_2 -3 + 76, 1, 8.4 );
setRotateKey( spep_2 -3 + 78, 1, 8.3 );
setRotateKey( spep_2 -3 + 80, 1, 8.1 );
setRotateKey( spep_2 -3 + 82, 1, 7.9 );
setRotateKey( spep_2 -3 + 84, 1, 7.8 );
setRotateKey( spep_2 -3 + 86, 1, 7.6 );
setRotateKey( spep_2 -5 + 88, 1, 7.4 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 88 -4;

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** 爆発 ** --
explode = entryEffect( spep_3 + 0, 1509,  0x80,  -1,  0,  0,  0);	-- 爆発
setEffMoveKey( spep_3 + 0, explode, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, explode, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, explode, 0.8, 0.8 );
setEffScaleKey( spep_3 + 110, explode, 0.8, 0.8 );
setEffRotateKey( spep_3 + 0, explode, 0 );
setEffRotateKey( spep_3 + 110, explode, 0 );
setEffAlphaKey( spep_3 + 0, explode, 255 );
setEffAlphaKey( spep_3 + 110, explode, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_3 + 2, 1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
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


-- ** 集中線黒 ** --
shuchusenf3 = entryEffectLife( spep_3 + 14, 1657, 96, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusenf3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, shuchusenf3, 0, 0 , 0 );
setEffScaleKey( spep_3 + 14, shuchusenf3, 1, 1 );
setEffScaleKey( spep_3 + 110, shuchusenf3, 1, 1 );
setEffRotateKey( spep_3 + 14, shuchusenf3, 0 );
setEffRotateKey( spep_3 + 110, shuchusenf3, 0 );
setEffAlphaKey( spep_3 + 14, shuchusenf3, 255 );
setEffAlphaKey( spep_3 + 110, shuchusenf3, 255 );


-- ** 書き文字エントリー ** --
ctgaf = entryEffectLife( spep_3 + 14, 10005, 96, 0x100, -1, 0, 4, 310 );  --ガッ
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
changeAnime( spep_3 + 0, 1, 107 );

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
setMoveKey( spep_3 -3 + 110, 1, -13.1, -77.6 , 0 );

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
setScaleKey( spep_3 -3 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 2, 1, 105 );
setRotateKey( spep_3 + 4, 1, 240 );
setRotateKey( spep_3 + 6, 1, 405 );
setRotateKey( spep_3 + 8, 1, 600 );
setRotateKey( spep_3 + 10, 1, 825 );
setRotateKey( spep_3 + 12, 1, 1080 );
setRotateKey( spep_3 + 110, 1, 1080 );


-- ** 集中線 ** --
shuchusenf2 = entryEffectLife( spep_3 + 14, 906, 96, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 14, shuchusenf2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, shuchusenf2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 14, shuchusenf2, 1, 1 );
setEffScaleKey( spep_3 + 110, shuchusenf2, 1, 1 );
setEffRotateKey( spep_3 + 14, shuchusenf2, 0 );
setEffRotateKey( spep_3 + 110, shuchusenf2, 0 );
setEffAlphaKey( spep_3 + 14, shuchusenf2, 255 );
setEffAlphaKey( spep_3 + 110, shuchusenf2, 255 );


-- ** 音 ** --
--爆発
SE014 = playSeVer2( spep_3 + 0, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE014, 75 );

--画面激突
SE015 = playSeVer2( spep_3 + 12, 1054, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 12, 1025, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10); -- ダメージ表示フレーム
endPhase( spep_3 + 110 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 溜め
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); --溜め	ef_001	75	キャラ込み　　書き文字「ズズズンッ」お願いします
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 148 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 148 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 148 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 148 -5, base_0, 255);
setEffAlphaKey( spep_0 + 148 -4, base_0, 0);

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 20 -3, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 148 -4 -10, 8, 2+2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 集中線 ** --
shuchusen_0 = entryEffectLife( spep_0 + 20 -3, 906, 148 - 20, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 20 -3, shuchusen_0, 148 - 20, 20 );
setEffMoveKey( spep_0 + 20 -3, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 148 - 20, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 20 -3, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 148 - 20, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 20 -3, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 148 - 20, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 20 -3, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 148 - 20, shuchusen_0, 255 );


--文字エントリー
ctzuzuzun = entryEffectLife( spep_0 -3 + 22,  10013, 62 - 22, 0x100, -1, 0, 20.1, 249.8 );	-- ズズズンッ

smx_0 = -80;
setEffMoveKey( spep_0 -3 + 22, ctzuzuzun, 20.1 +smx_0, 249.8 , 0 );
setEffMoveKey( spep_0 -3 + 24, ctzuzuzun, 29.2 +smx_0, 317.4 , 0 );
setEffMoveKey( spep_0 -3 + 26, ctzuzuzun, 51.2 +smx_0, 394.7 , 0 );
setEffMoveKey( spep_0 -3 + 28, ctzuzuzun, 38.3 +smx_0, 377.6 , 0 );
setEffMoveKey( spep_0 -3 + 30, ctzuzuzun, 43.3 +smx_0, 371.9 , 0 );
setEffMoveKey( spep_0 -3 + 32, ctzuzuzun, 30.9 +smx_0, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 34, ctzuzuzun, 40.9 +smx_0, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 36, ctzuzuzun, 30.9 +smx_0, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 38, ctzuzuzun, 40.9 +smx_0, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 40, ctzuzuzun, 30.9 +smx_0, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctzuzuzun, 40.9 +smx_0, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 44, ctzuzuzun, 30.9 +smx_0, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 46, ctzuzuzun, 40.9 +smx_0, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 48, ctzuzuzun, 30.9 +smx_0, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctzuzuzun, 40.9 +smx_0, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctzuzuzun, 30.9 +smx_0, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctzuzuzun, 40.9 +smx_0, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctzuzuzun, 30.9 +smx_0, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctzuzuzun, 40.9 +smx_0, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctzuzuzun, 30.9 +smx_0, 354.4 , 0 );

setEffScaleKey( spep_0 -3 + 22, ctzuzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 -3 + 24, ctzuzuzun, 1.99, 1.99 );
setEffScaleKey( spep_0 -3 + 26, ctzuzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 -3 + 28, ctzuzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 -3 + 62, ctzuzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 -3 + 22, ctzuzuzun, -5 );
setEffRotateKey( spep_0 -3 + 62, ctzuzuzun, -5 );

setEffAlphaKey( spep_0 -3 + 22, ctzuzuzun, 255 );
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
spep_x = spep_0 + 50;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, -40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, -40, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, -40, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, -80, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--気ダメ
SE002 = playSeVer2( spep_0 + 28, 1035, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_0 + 52, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE003, 71 );

--気弾溜め
SE004 = playSeVer2( spep_0 + 54, 1037, "",spep_0 + 158, 0, 8, 0.6);

--顔カットイン
SE005 = playSeVer2( spep_0 + 60, 1018, "", 0, 0, 0, -1);

--オーラ
SE006 = playSeVer2( spep_0 + 76, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE006, 71 );
SE007 = playSeVer2( spep_0 + 100, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE007, 71 );
SE008 = playSeVer2( spep_0 + 124, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE008, 71 );


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
base_1 = entryEffect( spep_1 + 0, SP_02r, 0x80, -1, 0, 0, 0); --放つ	ef_002	75	キャラ込み　　書き文字「ズオッ」お願いします
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 88 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 88 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 88 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 88 -5, base_1, 255);
setEffAlphaKey( spep_1 + 88 -4, base_1, 0);

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 28 -3, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 88 -4 -10, 8, 2+2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_1 + 0, 906, 28 -3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen_1, 28 -3, 20 );
setEffMoveKey( spep_1 + 0, shuchusen_1, 0, 0, 0 );
setEffMoveKey( spep_1 + 28 -3, shuchusen_1, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, shuchusen_1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 28 -3, shuchusen_1, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen_1, 0 );
setEffRotateKey( spep_1 + 28 -3, shuchusen_1, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen_1, 255 );
setEffAlphaKey( spep_1 + 28 -3, shuchusen_1, 255 );


--文字エントリー
ctZuo = entryEffectLife( spep_1 -3 + 30, 10012, 88 - 30, 0x100, -1, 0, -31.8, 332.7 ); --ズオッ

setEffMoveKey( spep_1 -3 + 30, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctZuo, -10.7, 331 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctZuo, -31.8, 332.7 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctZuo, -10.7, 331 , 0 );

setEffScaleKey( spep_1 -3 + 30, ctZuo, 2.55, 2.55 );
setEffScaleKey( spep_1 -3 + 80, ctZuo, 2.55, 2.55 );

sr_1 = -10;
setEffRotateKey( spep_1 -3 + 30, ctZuo, -13.1 +sr_1 );
setEffRotateKey( spep_1 -3 + 80, ctZuo, -13.1 +sr_1 );

setEffAlphaKey( spep_1 -3 + 30, ctZuo, 255 );
setEffAlphaKey( spep_1 -3 + 80, ctZuo, 255 );


-- ** 音 ** --
--気弾発射前溜め
SE010 = playSeVer2( spep_1 + 0, 1037, "",spep_1 + 42, 0, 4, 0.6);

--気弾発射
SE011 = playSeVer2( spep_1 + 26, 1027, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 26, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 26, SE012, 87 );


-- ** 次の準備 ** --
spep_2 = spep_1 + 88 -4;

-------------------------------------------------
-- 着弾
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); --着弾・手前	ef_003	50	ef_004とセット。敵の手前に配置。書き文字「ズドドドッ」お願いします
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 88 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 88 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 88 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 88 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 88 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); --着弾・奥	ef_004	50	ef_003とセット。敵の奥に配置。
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 88 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 88 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 88 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 88 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 88 -4, base_2b, 0);


-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -4 + 88, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 -3 + 30, 1, 108 );

setMoveKey( spep_2 -2 + 2, 1, -16.7, -87 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -0.3, -62.6 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 8.8, -48.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 26.6, -17.2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 37, 3.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 56.2, 34.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 64, 58.7 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 78.6, 74.2 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 81.4, 78.2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 92.4, 98.8 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 95.6, 107.9 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 107, 125.6 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 106.6, 131.8 , 0 );

setScaleKey( spep_2 -2 + 2, 1, 3.15, 3.15 );
setScaleKey( spep_2 -3 + 4, 1, 2.98, 2.98 );
setScaleKey( spep_2 -3 + 6, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 8, 1, 2.6, 2.6 );
setScaleKey( spep_2 -3 + 10, 1, 2.38, 2.38 );
setScaleKey( spep_2 -3 + 12, 1, 2.14, 2.14 );
setScaleKey( spep_2 -3 + 14, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 16, 1, 1.83, 1.83 );
setScaleKey( spep_2 -3 + 18, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 20, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 22, 1, 1.61, 1.61 );
setScaleKey( spep_2 -3 + 24, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 26, 1, 1.44, 1.44 );

setRotateKey( spep_2 -2 + 2, 1, -2.1 );
setRotateKey( spep_2 -3 + 4, 1, -2.3 );
setRotateKey( spep_2 -3 + 6, 1, -2.4 );
setRotateKey( spep_2 -3 + 8, 1, -2.5 );
setRotateKey( spep_2 -3 + 10, 1, -2.6 );
setRotateKey( spep_2 -3 + 12, 1, -2.8 );
setRotateKey( spep_2 -3 + 14, 1, -2.9 );
setRotateKey( spep_2 -3 + 16, 1, -3.0 );
setRotateKey( spep_2 -3 + 18, 1, -3.1 );
setRotateKey( spep_2 -3 + 20, 1, -3.3 );
setRotateKey( spep_2 -3 + 22, 1, -3.4 );
setRotateKey( spep_2 -3 + 24, 1, -3.5 );
setRotateKey( spep_2 -3 + 26, 1, -3.6 );


-- ** 音 ** --
--気弾飛んでいく
SE013 = playSeVer2( spep_2 + 16, 1021, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 18; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 0, SE013, 0);
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

-- ** 白フェード ** --
entryFade( spep_2 + 30 -3, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_2 + 88 -4 -10, 8, 2+2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


--文字エントリー
ctZud = entryEffectLife( spep_2 -3 + 24,  10014, 62 -24, 0x100, -1, 0, -419, 438.3 );	-- ズドドドッ

setEffMoveKey( spep_2 -3 + 24, ctZud, -419, 438.3 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctZud, -141.9, 278.9 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctZud, -149.7, 305.3 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctZud, -137.2, 278.7 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctZud, -144.7, 304.3 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctZud, -132.5, 278.5 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctZud, -139.6, 303.3 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctZud, -127.7, 278.2 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctZud, -134.6, 302.3 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctZud, -123, 278 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctZud, -129.6, 301.3 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctZud, -118.3, 277.8 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctZud, -124.6, 300.3 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctZud, -113.6, 277.6 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctZud, -119.6, 299.3 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctZud, -108.9, 277.3 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctZud, -114.6, 298.3 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctZud, -104.2, 277.1 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctZud, -179.1, 365.8 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctZud, -246.2, 434 , 0 );

ss_2 = 3;
setEffScaleKey( spep_2 -3 + 24, ctZud, 2.67 *ss_2, 2.67 *ss_2);
setEffScaleKey( spep_2 -3 + 26, ctZud, 1.00 *ss_2, 1.00 *ss_2);
setEffScaleKey( spep_2 -3 + 28, ctZud, 0.99 *ss_2, 0.99 *ss_2);
setEffScaleKey( spep_2 -3 + 30, ctZud, 0.97 *ss_2, 0.97 *ss_2);
setEffScaleKey( spep_2 -3 + 32, ctZud, 0.96 *ss_2, 0.96 *ss_2);
setEffScaleKey( spep_2 -3 + 34, ctZud, 0.94 *ss_2, 0.94 *ss_2);
setEffScaleKey( spep_2 -3 + 36, ctZud, 0.93 *ss_2, 0.93 *ss_2);
setEffScaleKey( spep_2 -3 + 38, ctZud, 0.91 *ss_2, 0.91 *ss_2);
setEffScaleKey( spep_2 -3 + 40, ctZud, 0.90 *ss_2, 0.90 *ss_2);
setEffScaleKey( spep_2 -3 + 42, ctZud, 0.88 *ss_2, 0.88 *ss_2);
setEffScaleKey( spep_2 -3 + 44, ctZud, 0.87 *ss_2, 0.87 *ss_2);
setEffScaleKey( spep_2 -3 + 46, ctZud, 0.85 *ss_2, 0.85 *ss_2);
setEffScaleKey( spep_2 -3 + 48, ctZud, 0.84 *ss_2, 0.84 *ss_2);
setEffScaleKey( spep_2 -3 + 50, ctZud, 0.82 *ss_2, 0.82 *ss_2);
setEffScaleKey( spep_2 -3 + 52, ctZud, 0.81 *ss_2, 0.81 *ss_2);
setEffScaleKey( spep_2 -3 + 54, ctZud, 0.79 *ss_2, 0.79 *ss_2);
setEffScaleKey( spep_2 -3 + 56, ctZud, 0.78 *ss_2, 0.78 *ss_2);
setEffScaleKey( spep_2 -3 + 58, ctZud, 0.77 *ss_2, 0.77 *ss_2);
setEffScaleKey( spep_2 -3 + 60, ctZud, 1.48 *ss_2, 1.48 *ss_2);
setEffScaleKey( spep_2 -3 + 62, ctZud, 2.19 *ss_2, 2.19 *ss_2);

sr_2 = 20;
setEffRotateKey( spep_2 -3 + 24, ctZud, -77.2 +sr_2);
setEffRotateKey( spep_2 -3 + 62, ctZud, -77.2 +sr_2);

setEffAlphaKey( spep_2 -3 + 24, ctZud, 77 );
setEffAlphaKey( spep_2 -3 + 26, ctZud, 255 );
setEffAlphaKey( spep_2 -3 + 58, ctZud, 255 );
setEffAlphaKey( spep_2 -3 + 60, ctZud, 128 );
setEffAlphaKey( spep_2 -3 + 62, ctZud, 0 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -4 + 88, 1, 0 );

changeAnime( spep_2 -3 + 30, 1, 108 );

setMoveKey( spep_2 -3 + 29, 1, 122.3, 154.6 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 163.7, 199.4 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 161, 189.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 119.1, 176.3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 145.9, 210 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 143.3, 212.4 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 146.6, 215.3 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 137.9, 206.2 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 145.2, 213 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 140.6, 207.9 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 143.9, 210.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 135.3, 201.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 142.6, 208.5 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 138, 203.3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 141.4, 206.1 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 132.8, 196.9 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 140.2, 203.8 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 135.6, 198.6 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 139, 201.4 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 130.4, 192.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 137.8, 198.9 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 133.3, 193.7 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 136.7, 196.5 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 128.2, 187.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 135.7, 194 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 131.1, 188.7 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 130.6, 187.5 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 126.1, 174.2 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 129.6, 184.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 121.1, 179.6 , 0 );
-- setMoveKey( spep_2 -5 + 88, 1, 128.6, 182.3 , 0 );

setScaleKey( spep_2 -3 + 29, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 30, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 32, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 34, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 36, 1, 0.61, 0.61 );
setScaleKey( spep_2 -3 + 38, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 42, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 44, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 50, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 52, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 58, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 60, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 66, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 68, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 74, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 76, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 82, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 84, 1, 0.26, 0.26 );
setScaleKey( spep_2 -5 + 88, 1, 0.26, 0.26 );

setRotateKey( spep_2 -3 + 29, 1, -3.8 );
setRotateKey( spep_2 -3 + 30, 1, 21 );
setRotateKey( spep_2 -3 + 32, 1, 18.5 );
setRotateKey( spep_2 -3 + 34, 1, 16.1 );
setRotateKey( spep_2 -3 + 36, 1, 13.8 );
setRotateKey( spep_2 -3 + 38, 1, 11.6 );
setRotateKey( spep_2 -3 + 40, 1, 11.4 );
setRotateKey( spep_2 -3 + 42, 1, 11.3 );
setRotateKey( spep_2 -3 + 44, 1, 11.1 );
setRotateKey( spep_2 -3 + 46, 1, 10.9 );
setRotateKey( spep_2 -3 + 48, 1, 10.8 );
setRotateKey( spep_2 -3 + 50, 1, 10.6 );
setRotateKey( spep_2 -3 + 52, 1, 10.4 );
setRotateKey( spep_2 -3 + 54, 1, 10.3 );
setRotateKey( spep_2 -3 + 56, 1, 10.1 );
setRotateKey( spep_2 -3 + 58, 1, 9.9 );
setRotateKey( spep_2 -3 + 60, 1, 9.8 );
setRotateKey( spep_2 -3 + 62, 1, 9.6 );
setRotateKey( spep_2 -3 + 64, 1, 9.4 );
setRotateKey( spep_2 -3 + 66, 1, 9.3 );
setRotateKey( spep_2 -3 + 68, 1, 9.1 );
setRotateKey( spep_2 -3 + 70, 1, 8.9 );
setRotateKey( spep_2 -3 + 72, 1, 8.8 );
setRotateKey( spep_2 -3 + 74, 1, 8.6 );
setRotateKey( spep_2 -3 + 76, 1, 8.4 );
setRotateKey( spep_2 -3 + 78, 1, 8.3 );
setRotateKey( spep_2 -3 + 80, 1, 8.1 );
setRotateKey( spep_2 -3 + 82, 1, 7.9 );
setRotateKey( spep_2 -3 + 84, 1, 7.8 );
setRotateKey( spep_2 -3 + 86, 1, 7.6 );
setRotateKey( spep_2 -5 + 88, 1, 7.4 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 88 -4;

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** 爆発 ** --
explode = entryEffect( spep_3 + 0, 1509,  0x80,  -1,  0,  0,  0);	-- 爆発
setEffMoveKey( spep_3 + 0, explode, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, explode, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, explode, 0.8, 0.8 );
setEffScaleKey( spep_3 + 110, explode, 0.8, 0.8 );
setEffRotateKey( spep_3 + 0, explode, 0 );
setEffRotateKey( spep_3 + 110, explode, 0 );
setEffAlphaKey( spep_3 + 0, explode, 255 );
setEffAlphaKey( spep_3 + 110, explode, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_3 + 2, 1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
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


-- ** 集中線黒 ** --
shuchusenf3 = entryEffectLife( spep_3 + 14, 1657, 96, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusenf3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, shuchusenf3, 0, 0 , 0 );
setEffScaleKey( spep_3 + 14, shuchusenf3, 1, 1 );
setEffScaleKey( spep_3 + 110, shuchusenf3, 1, 1 );
setEffRotateKey( spep_3 + 14, shuchusenf3, 0 );
setEffRotateKey( spep_3 + 110, shuchusenf3, 0 );
setEffAlphaKey( spep_3 + 14, shuchusenf3, 255 );
setEffAlphaKey( spep_3 + 110, shuchusenf3, 255 );


-- ** 書き文字エントリー ** --
ctgaf = entryEffectLife( spep_3 + 14, 10005, 96, 0x100, -1, 0, 4, 310 );  --ガッ
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
changeAnime( spep_3 + 0, 1, 107 );

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
setMoveKey( spep_3 -3 + 110, 1, -13.1, -77.6 , 0 );

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
setScaleKey( spep_3 -3 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 2, 1, 105 );
setRotateKey( spep_3 + 4, 1, 240 );
setRotateKey( spep_3 + 6, 1, 405 );
setRotateKey( spep_3 + 8, 1, 600 );
setRotateKey( spep_3 + 10, 1, 825 );
setRotateKey( spep_3 + 12, 1, 1080 );
setRotateKey( spep_3 + 110, 1, 1080 );


-- ** 集中線 ** --
shuchusenf2 = entryEffectLife( spep_3 + 14, 906, 96, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 14, shuchusenf2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 110, shuchusenf2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 14, shuchusenf2, 1, 1 );
setEffScaleKey( spep_3 + 110, shuchusenf2, 1, 1 );
setEffRotateKey( spep_3 + 14, shuchusenf2, 0 );
setEffRotateKey( spep_3 + 110, shuchusenf2, 0 );
setEffAlphaKey( spep_3 + 14, shuchusenf2, 255 );
setEffAlphaKey( spep_3 + 110, shuchusenf2, 255 );


-- ** 音 ** --
--爆発
SE014 = playSeVer2( spep_3 + 0, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE014, 75 );

--画面激突
SE015 = playSeVer2( spep_3 + 12, 1054, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 12, 1025, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10); -- ダメージ表示フレーム
endPhase( spep_3 + 110 -8); -- 終了フレーム

end
