--1023940:SSR_ベジータ_スーパーダッシュ
--sp_effect_b1_00182

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
SP_01 = 158998;	--敵に接近	ef_001	54	（ef_001とef_001_b同時再生）
SP_02 = 158999;	--敵に接近	ef_001_b	54	（ef_001とef_001_b同時再生）
SP_03 = 159002;	--敵に接近	ef_002	16	（ef_002とef_002_b同時再生）
SP_04 = 159003;	--敵に接近	ef_002_b	16	（ef_002とef_002_b同時再生）
SP_05 = 159006;	--格闘（連撃）	ef_003	75	（ef_003とef_003_b同時再生）
SP_06 = 159007;	--格闘（連撃）	ef_003_b	75	（ef_003とef_003_b同時再生）
SP_07 = 159010;	--かかと落としフェイント	ef_004	86	（ef_004とef_004_b同時再生）
SP_08 = 159011;	--かかと落としフェイント	ef_004_b	86	（ef_004とef_004_b同時再生）
SP_09 = 159014;	--フィニッシュ	ef_005	68	（ef_005とef_005_b同時再生）
SP_10 = 159015;	--フィニッシュ	ef_005_b	68	（ef_005とef_005_b同時再生）

--エフェクト(敵)
SP_11 = 159000;	--敵に接近　敵側	ef_001_r	54	敵側そのまま反転（ef_001_rとef_001_r_b同時再生）
SP_12 = 159001;	--敵に接近　敵側	ef_001_r_b	54	敵側そのまま反転（ef_001_rとef_001_r_b同時再生）
SP_13 = 159004;	--敵に接近　敵側	ef_002_r	16	敵側そのまま反転（ef_002_rとef_002_r_b同時再生）
SP_14 = 159005;	--敵に接近　敵側	ef_002_r_b	16	敵側そのまま反転（ef_001_rとef_001_r_b同時再生）
SP_15 = 159008;	--格闘（連撃）　敵側	ef_003_r	75	敵側そのまま反転（ef_003_rとef_003_r_b同時再生）
SP_16 = 159009;	--格闘（連撃）　敵側	ef_003_r_b	75	敵側そのまま反転（ef_003_rとef_003_r_b同時再生）
SP_17 = 159012;	--かかと落としフェイント　敵側	ef_004_r	86	敵側そのまま反転（ef_004_rとef_004_r_b同時再生）
SP_18 = 159013;	--かかと落としフェイント　敵側	ef_004_r_b	86	敵側そのまま反転（ef_004_rとef_004_r_b同時再生）
SP_19 = 159016;	--フィニッシュ　敵側	ef_005_r	68	敵側そのまま反転（ef_005_rとef_005_r_back同時再生）
SP_20 = 159017;	--フィニッシュ　敵側	ef_005_r_back	68	敵側そのまま反転（ef_005_rとef_005_r_back同時再生）


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

-- setMoveKey(   0,   1,    0, -5136,   0);
-- setMoveKey(   1,   1,    0, -5136,   0);
-- setMoveKey(   2,   1,    0, -5136,   0);
-- setMoveKey(   3,   1,    0, -5136,   0);
-- setMoveKey(   4,   1,    0, -5136,   0);
-- setMoveKey(   5,   1,    0, -5136,   0);
-- setMoveKey(   6,   1,    0, -5136,   0);
-- setScaleKey(  0,   1,  1.6, 1.6);
-- setScaleKey(  1,   1,  1.6, 1.6);
-- setScaleKey(  2,   1,  1.6, 1.6);
-- setScaleKey(  3,   1,  1.6, 1.6);
-- setScaleKey(  4,   1,  1.6, 1.6);
-- setScaleKey(  5,   1,  1.6, 1.6);
-- setScaleKey(  6,   1,  1.6, 1.6);
-- setRotateKey( 0,   1,  0);
-- setRotateKey( 1,   1,  0);
-- setRotateKey( 2,   1,  0);
-- setRotateKey( 3,   1,  0);
-- setRotateKey( 4,   1,  0);
-- setRotateKey( 5,   1,  0);
-- setRotateKey( 6,   1,  0);

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


------------------------------------------------------
-- 敵に接近
------------------------------------------------------
-- ** エフェクト等 ** --
base1_f = entryEffect( spep_1 + 0, SP_01, 0x100, -1, 0, 0, 0); --敵に接近	ef_001
setEffMoveKey( spep_1 + 0, base1_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 108 -4, base1_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 108 -4, base1_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_f, 0);
setEffRotateKey( spep_1 + 108 -4, base1_f, 0);
setEffAlphaKey( spep_1 + 0, base1_f, 255);
setEffAlphaKey( spep_1 + 108 -5, base1_f, 255);
setEffAlphaKey( spep_1 + 108 -4, base1_f, 0);

base1_b = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); --敵に接近	ef_001_b
setEffMoveKey( spep_1 + 0, base1_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 108 -4, base1_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 108 -4, base1_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_b, 0);
setEffRotateKey( spep_1 + 108 -4, base1_b, 0);
setEffAlphaKey( spep_1 + 0, base1_b, 255);
setEffAlphaKey( spep_1 + 108 -5, base1_b, 255);
setEffAlphaKey( spep_1 + 108 -4, base1_b, 0);

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -4 + 108, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );

-- setMoveKey( spep_1 -3 + 0, 1, 243, -125 , 0 );
setMoveKey( spep_1 + 0, 1, 242.8, -124.7 , 0 );
setMoveKey( spep_1 + 1, 1, 242.5, -124.4 , 0 );
setMoveKey( spep_1 + 2, 1, 242.45, -124.2 , 0 );
setMoveKey( spep_1 + 3, 1, 242.4, -124 , 0 );
setMoveKey( spep_1 + 4, 1, 242.25, -123.85 , 0 );
setMoveKey( spep_1 + 5, 1, 242.1, -123.7 , 0 );
setMoveKey( spep_1 + 6, 1, 242.0, -123.55 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 241.9, -123.4 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 241.6, -123.1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 241.3, -122.8 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 241, -122.5 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 240.6, -122.2 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 240.4, -121.8 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 240, -121.5 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 239.6, -121.2 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 239.2, -120.9 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 238.8, -120.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 238.3, -120.3 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 237.9, -120 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 237.4, -119.6 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 237, -119.3 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 236.5, -119 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 235.9, -118.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 235.5, -118.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 234.9, -118.1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 234.4, -117.8 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 233.8, -117.4 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 233.2, -117.1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 232.6, -116.8 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 231.9, -116.5 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 231.3, -116.2 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 230.6, -115.9 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 230, -115.6 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 229.3, -115.2 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 228.6, -114.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 227.9, -114.6 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 227.1, -114.3 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 226.4, -114 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 225.6, -113.7 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 224.8, -113.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 224, -113 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 223.2, -112.7 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 222.4, -112.4 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 221.6, -112.1 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 220.7, -111.8 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 219.8, -111.5 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 218.9, -111.2 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 218, -110.8 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 217.1, -110.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 216.2, -110.2 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 215.3, -109.9 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 214.3, -109.6 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 213.3, -109.2 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 212.3, -109 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 211.3, -108.6 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 210.3, -108.3 , 0 );
setMoveKey( spep_1 -4 + 108, 1, 210.3, -108.3 , 0 );

setScaleKey( spep_1 + 0, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 1, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 2, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 3, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 4, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 5, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 6, 1, 0.31, 0.31 );
--setScaleKey( spep_1 -3 + 40, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 42, 1, 0.3, 0.3 );
--setScaleKey( spep_1 -3 + 82, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 84, 1, 0.29, 0.29 );
setScaleKey( spep_1 -4 + 108, 1, 0.29, 0.29 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 -4 + 108, 1, 0 );


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 20;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40 -20, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40 -20, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40 -20, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, 80 -20, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1);	--入り
setSeVolumeByWorkId( spep_1 + 0, SE001, 85 );

SE002 = playSeVer2( spep_1 + 24 -3, 1018, "", 0, 0, 0, -1);	--顔カットイン


-- ** 次の準備 ** --
spep_c = spep_1 + 108 -4;

-------------------------------------------------
--カードカットイン（96）
-------------------------------------------------
-- ** カードカットイン ** --
speffc = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speffc, 1, 1);
setEffReplaceTexture( speffc, 2, 0);-- カード差し替え
setEffReplaceTexture( speffc, 5, 4);-- 技名テクスチャ差し替え
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
-- 敵に接近
-------------------------------------------------
-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); --敵に接近	ef_002
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 32 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 32 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 32 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 32 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 32 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0); --敵に接近	ef_002_b
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 32 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 32 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 32 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 32 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 32 -4, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 -3 + 0, 1, 117 );

-- setMoveKey( spep_2 -3 + 0, 1, 209.4, -82.1 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 208.6, -55.8 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 159.8, -42.6 , 0 );
setMoveKey( spep_2 -3 + 5, 1, 159.8, -42.6 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 111.1, -29.4 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 111.1, -29.4 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 62.3, -16.2 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 62.3, -16.2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 13.5, -3 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 13.1, -2.4 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 12.7, -1.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 12.2, -1.2 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 11.8, -0.5 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 11.3, 0.1 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 10.9, 0.7 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 10.4, 1.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 10, 1.9 , 0 );

setScaleKey( spep_2 + 0, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 4, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 6, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 14, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 16, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 24, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 26, 1, 0.32, 0.32 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 26, 1, 0 );

-- ** 音 ** --
SE004 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);	--向かっていく

SE005 = playSeVer2( spep_2 + 0, 1183, "",spep_2 + 74, 0, 42, -1);	--向かっていく


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 24; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
pauseAll( SP_dodge, 67);

--敵位置の固定
setMoveKey( SP_dodge + 9, 1, 10, 1.9 , 0 );
setScaleKey( SP_dodge + 9, 1, 0.32, 0.32 );
setRotateKey( SP_dodge + 9, 1, 0 );

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
-- ** 敵キャラクター ** --
setDisp( spep_2 -4 + 32, 1, 0 );

setMoveKey( spep_2 -3 + 28, 1, 9.5, 2.5 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 9.1, 3.1 , 0 );
-- setMoveKey( spep_2 -5 + 32, 1, 9.1, 3.1 , 0 );

setScaleKey( spep_2 -5 + 32, 1, 0.32, 0.32 );

setRotateKey( spep_2 -5 + 32, 1, 0 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 32 -4;

-------------------------------------------------
-- 格闘（連撃）
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0); --格闘（連撃）	ef_003
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 148 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 148 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 148 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 148 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 148 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0); --格闘（連撃）	ef_003_b
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 148 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 148 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 148 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 148 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 148 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -4 + 148, 1, 0 );

changeAnime( spep_3 + 0, 1, 117 );
changeAnime( spep_3 -3 + 10, 1, 106 );
changeAnime( spep_3 -3 + 60, 1, 108 );
changeAnime( spep_3 -3 + 68, 1, 106 );
changeAnime( spep_3 -3 + 76, 1, 108 );
changeAnime( spep_3 -3 + 84, 1, 106 );
changeAnime( spep_3 -3 + 92, 1, 108 );
changeAnime( spep_3 -3 + 100, 1, 106 );
changeAnime( spep_3 -3 + 108, 1, 108 );
changeAnime( spep_3 -3 + 116, 1, 106 );
changeAnime( spep_3 -3 + 124, 1, 108 );

-- setMoveKey( spep_3 -3 + 0, 1, 30.7, 25.5 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 29.8, 26.3 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 28.9, 27.2 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 27.9, 28 , 0 );
setMoveKey( spep_3 -3 + 9, 1, 27.1, 28.8 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 70.7, 28 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 106.1, 41.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 113.3, 2.8 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 96, 25.6 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 74.7, 8 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 95.5, 32.5 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 98.6, 33.3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 101.8, 34.2 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 104.9, 35 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 108, 35.9 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 111.3, 36.4 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 114.6, 37 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 117.8, 37.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 121.1, 38 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 124.4, 38.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 125.6, 39.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 126.8, 39.7 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 127.9, 40.2 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 129, 40.8 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 130.2, 41.3 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 131.3, 41.8 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 132.4, 42.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 133.5, 42.9 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 134.6, 43.5 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 135.7, 44 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 2.3, 41.3 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 19.5, 56.5 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 0.9, 32 , 0 );
setMoveKey( spep_3 -3 + 67, 1, 38.1, 18.9 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -8.5, 12.8 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 5.6, 27.6 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -13.1, 3.1 , 0 );
setMoveKey( spep_3 -3 + 75, 1, 24.2, -10.1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 58.1, 34.6 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 72.1, 49.4 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 53.4, 24.9 , 0 );
setMoveKey( spep_3 -3 + 83, 1, 90.8, 11.7 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 44, 5.6 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 58.1, 20.4 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 39.4, -4.1 , 0 );
setMoveKey( spep_3 -3 + 91, 1, 76.7, -17.3 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 110.7, 27.5 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 124.8, 42.4 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 106, 17.7 , 0 );
setMoveKey( spep_3 -3 + 99, 1, 143.4, 4.5 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 96.6, -1.5 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 110.6, 13.3 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 91.8, -11.4 , 0 );
setMoveKey( spep_3 -3 + 107, 1, 129.3, -24.6 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 163.3, 20.4 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 177.4, 35.3 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 158.6, 10.6 , 0 );
setMoveKey( spep_3 -3 + 115, 1, 196.1, -2.7 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 149, -8.8 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 163.2, 6.1 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 144.3, -18.6 , 0 );
setMoveKey( spep_3 -3 + 123, 1, 181.9, -31.8 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 215.9, 13.3 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 201.6, 89.6 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 262.7, 7.6 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 235.6, -8.1 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 222.5, 12.3 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 201.6, 89.6 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 262.7, 7.6 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 262.7, 7.6 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 219.3, 11.9 , 0 );
setMoveKey( spep_3 -5 + 148, 1, 219.3, 11.9 , 0 );

-- setScaleKey( spep_3 -3 + 0, 1, 2.21, 2.21 );
setScaleKey( spep_3 -2 + 2, 1, 2.1, 2.1 );
setScaleKey( spep_3 -3 + 4, 1, 1.99, 1.99 );
setScaleKey( spep_3 -3 + 6, 1, 1.88, 1.88 );
setScaleKey( spep_3 -3 + 9, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 10, 1, 1.73, 1.73 );
setScaleKey( spep_3 -3 + 12, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 14, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 28, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 30, 1, 1.52, 1.52 );
setScaleKey( spep_3 -3 + 32, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 34, 1, 1.54, 1.54 );
setScaleKey( spep_3 -3 + 36, 1, 1.55, 1.55 );
setScaleKey( spep_3 -3 + 38, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 40, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 42, 1, 1.58, 1.58 );
setScaleKey( spep_3 -3 + 44, 1, 1.59, 1.59 );
setScaleKey( spep_3 -3 + 46, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 48, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 50, 1, 1.61, 1.61 );
setScaleKey( spep_3 -3 + 52, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 54, 1, 1.63, 1.63 );
setScaleKey( spep_3 -3 + 56, 1, 1.64, 1.64 );
setScaleKey( spep_3 -3 + 59, 1, 1.65, 1.65 );
setScaleKey( spep_3 -3 + 60, 1, 1.85, 1.85 );
setScaleKey( spep_3 -3 + 67, 1, 1.85, 1.85 );
setScaleKey( spep_3 -3 + 68, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 75, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 76, 1, 1.85, 1.85 );
setScaleKey( spep_3 -3 + 78, 1, 1.85, 1.85 );
setScaleKey( spep_3 -3 + 80, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 83, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 84, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 91, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 92, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 99, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 100, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 107, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 108, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 115, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 116, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 123, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 124, 1, 1.87, 1.87 );
setScaleKey( spep_3 -5 + 148, 1, 1.87, 1.87 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 9, 1, 0 );
setRotateKey( spep_3 -3 + 10, 1, -43.1 );
setRotateKey( spep_3 -3 + 12, 1, -43.1 );
setRotateKey( spep_3 -3 + 14, 1, -43 );
setRotateKey( spep_3 -3 + 16, 1, -42.8 );
setRotateKey( spep_3 -3 + 18, 1, -42.6 );
setRotateKey( spep_3 -3 + 20, 1, -42.4 );
setRotateKey( spep_3 -3 + 22, 1, -42.2 );
setRotateKey( spep_3 -3 + 24, 1, -42 );
setRotateKey( spep_3 -3 + 26, 1, -41.8 );
setRotateKey( spep_3 -3 + 28, 1, -41.6 );
setRotateKey( spep_3 -3 + 30, 1, -41.4 );
setRotateKey( spep_3 -3 + 32, 1, -41.2 );
setRotateKey( spep_3 -3 + 34, 1, -41 );
setRotateKey( spep_3 -3 + 36, 1, -40.9 );
setRotateKey( spep_3 -3 + 38, 1, -40.7 );
setRotateKey( spep_3 -3 + 59, 1, -40.7 );
setRotateKey( spep_3 -3 + 60, 1, 0 );
setRotateKey( spep_3 -3 + 67, 1, 0 );
setRotateKey( spep_3 -3 + 68, 1, -40.7 );
setRotateKey( spep_3 -3 + 75, 1, -40.7 );
setRotateKey( spep_3 -3 + 76, 1, 0 );
setRotateKey( spep_3 -3 + 83, 1, 0 );
setRotateKey( spep_3 -3 + 84, 1, -40.7 );
setRotateKey( spep_3 -3 + 91, 1, -40.7 );
setRotateKey( spep_3 -3 + 92, 1, 0 );
setRotateKey( spep_3 -3 + 99, 1, 0 );
setRotateKey( spep_3 -3 + 100, 1, -40.7 );
setRotateKey( spep_3 -3 + 107, 1, -40.7 );
setRotateKey( spep_3 -3 + 108, 1, 0 );
setRotateKey( spep_3 -3 + 115, 1, 0 );
setRotateKey( spep_3 -3 + 116, 1, -40.7 );
setRotateKey( spep_3 -3 + 123, 1, -40.7 );
setRotateKey( spep_3 -3 + 124, 1, 0 );
setRotateKey( spep_3 -5 + 148, 1, 0 );


-- ** 音 ** --
SE006 = playSeVer2( spep_3 + 0, 1189, "", 0, 0, 0, -1);	--初手パンチ

SE007 = playSeVer2( spep_3 + 6, 1010, "", 0, 0, 0, -1);	--初手パンチ

SE008 = playSeVer2( spep_3 + 6, 1000, "", 0, 0, 0, -1);	--初手パンチ
setSeVolumeByWorkId( spep_3 + 6, SE008, 85 );

SE009 = playSeVer2( spep_3 + 8, 1110, "", 0, 0, 0, -1);	--初手パンチ
setSeVolumeByWorkId( spep_3 + 8, SE009, 93 );

SE010 = playSeVer2( spep_3 + 58, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE011 = playSeVer2( spep_3 + 58, 1110, "",spep_3 + 78, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_3 + 58, SE011, 89 );

SE012 = playSeVer2( spep_3 + 66, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE013 = playSeVer2( spep_3 + 66, 1110, "",spep_3 + 86, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_3 + 66, SE013, 82 );

SE014 = playSeVer2( spep_3 + 72, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE015 = playSeVer2( spep_3 + 72, 1110, "",spep_3 + 92, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 72, SE015, 82 );
setPitch( spep_3 + 72, SE015, -200 );
setTimeStretch( SE015, 0.87, 30, 4 );

SE016 = playSeVer2( spep_3 + 78, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE017 = playSeVer2( spep_3 + 78, 1110, "",spep_3 + 98, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_3 + 78, SE017, 84 );

SE018 = playSeVer2( spep_3 + 84, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE019 = playSeVer2( spep_3 + 84, 1110, "",spep_3 + 104, 0, 10, -1);	--ラッシュ
setSeVolumeByWorkId( spep_3 + 84, SE019, 78 );
setPitch( spep_3 + 84, SE019, 100 );
setTimeStretch( SE019, 1.07, 30, 4 );

SE020 = playSeVer2( spep_3 + 90, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE021 = playSeVer2( spep_3 + 90, 1110, "",spep_3 + 110, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_3 + 90, SE021, 72 );

SE022 = playSeVer2( spep_3 + 96, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE023 = playSeVer2( spep_3 + 98, 1110, "",spep_3 + 118, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_3 + 98, SE023, 79 );
setPitch( spep_3 + 98, SE023, -100 );
setTimeStretch( SE023, 0.93, 30, 4 );

SE024 = playSeVer2( spep_3 + 104, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE025 = playSeVer2( spep_3 + 104, 1110, "",spep_3 + 124, 0, 10, -1);	--ラッシュ
setSeVolumeByWorkId( spep_3 + 104, SE025, 84 );

SE026 = playSeVer2( spep_3 + 112, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE027 = playSeVer2( spep_3 + 112, 1110, "",spep_3 + 132, 0, 10, -1);	--ラッシュ
setSeVolumeByWorkId( spep_3 + 112, SE027, 84 );

SE028 = playSeVer2( spep_3 + 120, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE029 = playSeVer2( spep_3 + 120, 1110, "", 0, 0, 0, -1);	--ラッシュ
setSeVolumeByWorkId( spep_3 + 120, SE029, 83 );

SE030 = playSeVer2( spep_3 + 128, 1110, "", 0, 0, 0, -1);	--ラッシュ


-- ** 次の準備 ** --
spep_4 = spep_3 + 148 -4;

-------------------------------------------------
-- かかと落としフェイント
-------------------------------------------------
-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0); --かかと落としフェイント	ef_004
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 168 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 168 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 168 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 168 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 168 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0); --かかと落としフェイント	ef_004_b
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 168 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 168 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 168 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 168 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 168 -4, base4_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 28, 1, 0 );
setDisp( spep_4 -3 + 64, 1, 1 );
setDisp( spep_4 -4 + 168, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 64, 1, 104 );
changeAnime( spep_4 -3 + 129, 1, 106 );
changeAnime( spep_4 -3 + 130, 1, 5 );

-- setMoveKey( spep_4 -3 + 0, 1, 100.1, -12 , 0 );
setMoveKey( spep_4 -2 + 2, 1, 105.1, -26.3 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 110.1, -40.7 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 115.1, -55.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 120.1, -69.4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 125.1, -83.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 130.1, -98.2 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 135.1, -112.6 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 140.1, -126.9 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 145.1, -141.3 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 150.1, -155.7 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 155.1, -170.1 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 100.1, -222.1 , 0 );
setMoveKey( spep_4 -3 + 27, 1, 96.5, -249 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 152.1, -16 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 133.6, -17.3 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 140.5, -1.6 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 48.6, -25.5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 89.2, -73.3 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 61.7, -20.1 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 50.1, -14.4 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 67.4, -6.4 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 56.9, -26.1 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 56.8, -35.4 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 62, -39.4 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 67.3, -43.3 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 72.6, -47.3 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 77.8, -51.3 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 83.1, -55.3 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 88.4, -59.2 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 93.6, -63.2 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 98.8, -67.2 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 104.2, -71.2 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 109.4, -75.2 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 114.6, -79.1 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 119.9, -83.1 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 125.2, -87 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 130.4, -91 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 135.7, -95 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 141, -99 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 146.2, -102.9 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 151.5, -107 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 156.7, -110.9 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 162, -114.9 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 167.3, -118.8 , 0 );
setMoveKey( spep_4 -3 + 127, 1, 172.5, -122.8 , 0 );
setMoveKey( spep_4 -3 + 129, 1, 335.1, -58.3 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 623.9, -354.5 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 708.9, -364 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 652.3, -467.6 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 763.1, -511.1 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 737.3, -505.3 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 704.4, -472.8 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 562.3, -380.3 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 420.4, -287.9 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 278.8, -195.6 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 137.3, -103.3 , 0 );
setMoveKey( spep_4 -3 + 150, 1, -3.9, -11.1 , 0 );
setMoveKey( spep_4 -3 + 152, 1, -0.5, -11.8 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 3, -12.5 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 6.5, -13.3 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 10.1, -14.1 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 13.7, -14.9 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 17.4, -15.7 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 21.1, -16.5 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 25, -17.4 , 0 );
-- setMoveKey( spep_4 -5 + 168, 1, 25, -17.4 , 0 );

-- setScaleKey( spep_4 -3 + 0, 1, 2.07, 2.07 );
setScaleKey( spep_4 -2 + 2, 1, 2.1, 2.1 );
setScaleKey( spep_4 -3 + 4, 1, 2.13, 2.13 );
setScaleKey( spep_4 -3 + 6, 1, 2.16, 2.16 );
setScaleKey( spep_4 -3 + 8, 1, 2.19, 2.19 );
setScaleKey( spep_4 -3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_4 -3 + 12, 1, 2.26, 2.26 );
setScaleKey( spep_4 -3 + 14, 1, 2.29, 2.29 );
setScaleKey( spep_4 -3 + 16, 1, 2.32, 2.32 );
setScaleKey( spep_4 -3 + 18, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 20, 1, 2.39, 2.39 );
setScaleKey( spep_4 -3 + 22, 1, 2.42, 2.42 );
setScaleKey( spep_4 -3 + 24, 1, 2.07, 2.07 );
setScaleKey( spep_4 -3 + 27, 1, 2.22, 2.22 );
setScaleKey( spep_4 -3 + 64, 1, 2.16, 2.16 );
setScaleKey( spep_4 -3 + 66, 1, 2.22, 2.22 );
setScaleKey( spep_4 -3 + 68, 1, 2.29, 2.29 );
setScaleKey( spep_4 -3 + 70, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 72, 1, 2.42, 2.42 );
setScaleKey( spep_4 -3 + 74, 1, 2.48, 2.48 );
setScaleKey( spep_4 -3 + 76, 1, 2.55, 2.55 );
setScaleKey( spep_4 -3 + 78, 1, 2.62, 2.62 );
setScaleKey( spep_4 -3 + 80, 1, 2.68, 2.68 );
setScaleKey( spep_4 -3 + 82, 1, 2.75, 2.75 );
setScaleKey( spep_4 -3 + 84, 1, 2.81, 2.81 );
setScaleKey( spep_4 -3 + 86, 1, 2.88, 2.88 );
setScaleKey( spep_4 -3 + 88, 1, 2.95, 2.95 );
setScaleKey( spep_4 -3 + 90, 1, 3.01, 3.01 );
setScaleKey( spep_4 -3 + 92, 1, 3.08, 3.08 );
setScaleKey( spep_4 -3 + 94, 1, 3.15, 3.15 );
setScaleKey( spep_4 -3 + 96, 1, 3.21, 3.21 );
setScaleKey( spep_4 -3 + 98, 1, 3.28, 3.28 );
setScaleKey( spep_4 -3 + 100, 1, 3.35, 3.35 );
setScaleKey( spep_4 -3 + 102, 1, 3.41, 3.41 );
setScaleKey( spep_4 -3 + 104, 1, 3.48, 3.48 );
setScaleKey( spep_4 -3 + 106, 1, 3.55, 3.55 );
setScaleKey( spep_4 -3 + 108, 1, 3.61, 3.61 );
setScaleKey( spep_4 -3 + 110, 1, 3.68, 3.68 );
setScaleKey( spep_4 -3 + 112, 1, 3.75, 3.75 );
setScaleKey( spep_4 -3 + 114, 1, 3.81, 3.81 );
setScaleKey( spep_4 -3 + 116, 1, 3.88, 3.88 );
setScaleKey( spep_4 -3 + 118, 1, 3.95, 3.95 );
setScaleKey( spep_4 -3 + 120, 1, 4.01, 4.01 );
setScaleKey( spep_4 -3 + 122, 1, 4.08, 4.08 );
setScaleKey( spep_4 -3 + 124, 1, 4.15, 4.15 );
setScaleKey( spep_4 -3 + 127, 1, 4.21, 4.21 );
setScaleKey( spep_4 -3 + 129, 1, 4.09, 4.09 );
setScaleKey( spep_4 -3 + 130, 1, 2.54, 2.54 );
setScaleKey( spep_4 -3 + 132, 1, 2.21, 2.21 );
setScaleKey( spep_4 -3 + 134, 1, 1.87, 1.87 );
setScaleKey( spep_4 -3 + 136, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 138, 1, 1.16, 1.16 );
setScaleKey( spep_4 -3 + 140, 1, 0.79, 0.79 );
setScaleKey( spep_4 -3 + 142, 1, 0.76, 0.76 );
setScaleKey( spep_4 -3 + 144, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 146, 1, 0.72, 0.72 );
setScaleKey( spep_4 -3 + 148, 1, 0.69, 0.69 );
setScaleKey( spep_4 -3 + 150, 1, 0.67, 0.67 );
setScaleKey( spep_4 -3 + 152, 1, 0.64, 0.64 );
setScaleKey( spep_4 -3 + 154, 1, 0.61, 0.61 );
setScaleKey( spep_4 -3 + 156, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 158, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 160, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 162, 1, 0.47, 0.47 );
setScaleKey( spep_4 -3 + 164, 1, 0.44, 0.44 );
setScaleKey( spep_4 -3 + 166, 1, 0.41, 0.41 );
-- setScaleKey( spep_4 -5 + 168, 1, 0.41, 0.41 );

setRotateKey( spep_4 + 0, 1, -43.1 );
setRotateKey( spep_4 -3 + 27, 1, -43.1 );
setRotateKey( spep_4 -3 + 64, 1, 0 );
setRotateKey( spep_4 -3 + 72, 1, 0 );
setRotateKey( spep_4 -3 + 74, 1, 0.3 );
setRotateKey( spep_4 -3 + 76, 1, 1.3 );
setRotateKey( spep_4 -3 + 78, 1, 3 );
setRotateKey( spep_4 -3 + 80, 1, 0.7 );
setRotateKey( spep_4 -3 + 82, 1, 0 );
setRotateKey( spep_4 -3 + 127, 1, 0 );
setRotateKey( spep_4 -3 + 129, 1, -29.9 );
setRotateKey( spep_4 -3 + 130, 1, 57.8 );
setRotateKey( spep_4 -3 + 132, 1, 63.2 );
setRotateKey( spep_4 -3 + 134, 1, 68.5 );
setRotateKey( spep_4 -3 + 136, 1, 73.9 );
setRotateKey( spep_4 -3 + 138, 1, 79.3 );
setRotateKey( spep_4 -3 + 140, 1, 84.7 );
setRotateKey( spep_4 -3 + 166, 1, 84.7 );
-- setRotateKey( spep_4 -5 + 168, 1, 84.7 );


-- ** 音 ** --
SE031 = playSeVer2( spep_4 + 18, 1183, "",spep_4 + 78, 8, 16, 0.6);	--回転してかかとおとし
setStartTimeMs( SE031,  450 );
setPitch( spep_4 + 18, SE031, -700 )
setTimeStretch( SE031, 0.53, 26, 4 );

SE032 = playSeVer2( spep_4 + 12, 1007, "", 0, 0, 0, -1);	--回転してかかとおとし

SE033 = playSeVer2( spep_4 + 14, 1004, "", 0, 0, 0, -1);	--回転してかかとおとし

SE034 = playSeVer2( spep_4 + 14, 1116, "",spep_4 + 80, 0, 20, 0.6);	--回転してかかとおとし
setTimeStretch( SE034, 1.42, 30, 4 );

SE035 = playSeVer2( spep_4 + 62, 1189, "", 0, 0, 0, -1);	--サマーソルトヒット

SE036 = playSeVer2( spep_4 + 70, 1006, "", 0, 0, 0, -1)	--サマーソルトヒット;
setSeVolumeByWorkId( spep_4 + 70, SE036, 79 );

SE037 = playSeVer2( spep_4 + 70, 1012, "", 0, 0, 0, -1);	--サマーソルトヒット

SE038 = playSeVer2( spep_4 + 126, 1003, "", 0, 0, 0, -1);	--蹴り飛ばし

SE039 = playSeVer2( spep_4 + 126, 1120, "", 0, 0, 0, -1);	--蹴り飛ばし


-- ** 次の準備 ** --
spep_5 = spep_4 + 168 -4;

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
base5_b = entryEffect( spep_5 + 0, SP_10, 0x80, -1, 0, 0, 0); --フィニッシュ	ef_005_b
setEffMoveKey( spep_5 + 0, base5_b, 0, 0 , 0);
setEffMoveKey( spep_5 + 136 -4, base5_b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_b, 1.0, 1.0);
setEffScaleKey( spep_5 + 136 -4, base5_b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_b, 0);
setEffRotateKey( spep_5 + 136 -4, base5_b, 0);
setEffAlphaKey( spep_5 + 0, base5_b, 255);
setEffAlphaKey( spep_5 + 136 -5, base5_b, 255);
setEffAlphaKey( spep_5 + 136 -4, base5_b, 0);

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen5, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen5, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen5, 0 );
setEffRotateKey( spep_5 + 46, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen5, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen5, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen5, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen5, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen5, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen5, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen5, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen5, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen5, 0 );

shuchusen6 = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen6, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen6, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen6, 0 );
setEffRotateKey( spep_5 + 100, shuchusen6, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen6, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen6, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_5 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, -40 );
setRotateKey( spep_5 + 1, 1, -40 );
setRotateKey( spep_5 + 2, 1, 80 );
setRotateKey( spep_5 + 3, 1, 80 );
setRotateKey( spep_5 + 4, 1, 200 );
setRotateKey( spep_5 + 5, 1, 200 );
setRotateKey( spep_5 + 6, 1, 360 );
setRotateKey( spep_5 + 7, 1, 360 );
setRotateKey( spep_5 + 8, 1, 558 );
setRotateKey( spep_5 + 9, 1, 558 );
setRotateKey( spep_5 + 10, 1, 425 );
setRotateKey( spep_5 + 11, 1, 425 );
setRotateKey( spep_5 + 12, 1, -40 );
setRotateKey( spep_5 + 110, 1, -40 );

-- ** 音 ** --
SE040 = playSeVer2( spep_5 + 14, 1011, "", 0, 0, 0, -1);	--壁に激突
SE041 = playSeVer2( spep_5 + 14, 1054, "", 0, 0, 0, -1);	--壁に激突

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 100 );

else


------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


------------------------------------------------------
-- 敵に接近
------------------------------------------------------
-- ** エフェクト等 ** --
base1_f = entryEffect( spep_1 + 0, SP_11, 0x100, -1, 0, 0, 0); --敵に接近	ef_001
setEffMoveKey( spep_1 + 0, base1_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 108 -4, base1_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 108 -4, base1_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_f, 0);
setEffRotateKey( spep_1 + 108 -4, base1_f, 0);
setEffAlphaKey( spep_1 + 0, base1_f, 255);
setEffAlphaKey( spep_1 + 108 -5, base1_f, 255);
setEffAlphaKey( spep_1 + 108 -4, base1_f, 0);

base1_b = entryEffect( spep_1 + 0, SP_12, 0x80, -1, 0, 0, 0); --敵に接近	ef_001_b
setEffMoveKey( spep_1 + 0, base1_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 108 -4, base1_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 108 -4, base1_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_b, 0);
setEffRotateKey( spep_1 + 108 -4, base1_b, 0);
setEffAlphaKey( spep_1 + 0, base1_b, 255);
setEffAlphaKey( spep_1 + 108 -5, base1_b, 255);
setEffAlphaKey( spep_1 + 108 -4, base1_b, 0);

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -4 + 108, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );

-- setMoveKey( spep_1 -3 + 0, 1, 243, -125 , 0 );
setMoveKey( spep_1 + 0, 1, 242.8, -124.7 , 0 );
setMoveKey( spep_1 + 1, 1, 242.5, -124.4 , 0 );
setMoveKey( spep_1 + 2, 1, 242.45, -124.2 , 0 );
setMoveKey( spep_1 + 3, 1, 242.4, -124 , 0 );
setMoveKey( spep_1 + 4, 1, 242.25, -123.85 , 0 );
setMoveKey( spep_1 + 5, 1, 242.1, -123.7 , 0 );
setMoveKey( spep_1 + 6, 1, 242.0, -123.55 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 241.9, -123.4 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 241.6, -123.1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 241.3, -122.8 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 241, -122.5 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 240.6, -122.2 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 240.4, -121.8 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 240, -121.5 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 239.6, -121.2 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 239.2, -120.9 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 238.8, -120.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 238.3, -120.3 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 237.9, -120 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 237.4, -119.6 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 237, -119.3 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 236.5, -119 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 235.9, -118.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 235.5, -118.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 234.9, -118.1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 234.4, -117.8 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 233.8, -117.4 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 233.2, -117.1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 232.6, -116.8 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 231.9, -116.5 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 231.3, -116.2 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 230.6, -115.9 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 230, -115.6 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 229.3, -115.2 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 228.6, -114.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 227.9, -114.6 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 227.1, -114.3 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 226.4, -114 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 225.6, -113.7 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 224.8, -113.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 224, -113 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 223.2, -112.7 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 222.4, -112.4 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 221.6, -112.1 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 220.7, -111.8 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 219.8, -111.5 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 218.9, -111.2 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 218, -110.8 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 217.1, -110.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 216.2, -110.2 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 215.3, -109.9 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 214.3, -109.6 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 213.3, -109.2 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 212.3, -109 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 211.3, -108.6 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 210.3, -108.3 , 0 );
setMoveKey( spep_1 -4 + 108, 1, 210.3, -108.3 , 0 );

setScaleKey( spep_1 + 0, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 1, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 2, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 3, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 4, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 5, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 6, 1, 0.31, 0.31 );
--setScaleKey( spep_1 -3 + 40, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 42, 1, 0.3, 0.3 );
--setScaleKey( spep_1 -3 + 82, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 84, 1, 0.29, 0.29 );
setScaleKey( spep_1 -4 + 108, 1, 0.29, 0.29 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 -4 + 108, 1, 0 );


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 20;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, -40 +20, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, -40 +20, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, -40 +20, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, -80 +20, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1);	--入り
setSeVolumeByWorkId( spep_1 + 0, SE001, 85 );

SE002 = playSeVer2( spep_1 + 24 -3, 1018, "", 0, 0, 0, -1);	--顔カットイン


-- ** 次の準備 ** --
spep_c = spep_1 + 108 -4;

-------------------------------------------------
--カードカットイン（96）
-------------------------------------------------
-- ** カードカットイン ** --
speffc = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speffc, 1, 1);
setEffReplaceTexture( speffc, 2, 0);-- カード差し替え
setEffReplaceTexture( speffc, 5, 4);-- 技名テクスチャ差し替え
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
-- 敵に接近
-------------------------------------------------
-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_13, 0x100, -1, 0, 0, 0); --敵に接近	ef_002
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 32 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 32 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 32 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 32 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 32 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_14, 0x80, -1, 0, 0, 0); --敵に接近	ef_002_b
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 32 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 32 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 32 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 32 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 32 -4, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 -3 + 0, 1, 117 );

-- setMoveKey( spep_2 -3 + 0, 1, 209.4, -82.1 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 208.6, -55.8 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 159.8, -42.6 , 0 );
setMoveKey( spep_2 -3 + 5, 1, 159.8, -42.6 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 111.1, -29.4 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 111.1, -29.4 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 62.3, -16.2 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 62.3, -16.2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 13.5, -3 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 13.1, -2.4 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 12.7, -1.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 12.2, -1.2 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 11.8, -0.5 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 11.3, 0.1 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 10.9, 0.7 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 10.4, 1.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 10, 1.9 , 0 );

setScaleKey( spep_2 + 0, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 4, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 6, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 14, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 16, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 24, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 26, 1, 0.32, 0.32 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 26, 1, 0 );

-- ** 音 ** --
SE004 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);	--向かっていく

SE005 = playSeVer2( spep_2 + 0, 1183, "",spep_2 + 74, 0, 42, -1);	--向かっていく


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 24; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
pauseAll( SP_dodge, 67);

--敵位置の固定
setMoveKey( SP_dodge + 9, 1, 10, 1.9 , 0 );
setScaleKey( SP_dodge + 9, 1, 0.32, 0.32 );
setRotateKey( SP_dodge + 9, 1, 0 );

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
-- ** 敵キャラクター ** --
setDisp( spep_2 -4 + 32, 1, 0 );

setMoveKey( spep_2 -3 + 28, 1, 9.5, 2.5 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 9.1, 3.1 , 0 );
-- setMoveKey( spep_2 -5 + 32, 1, 9.1, 3.1 , 0 );

setScaleKey( spep_2 -5 + 32, 1, 0.32, 0.32 );

setRotateKey( spep_2 -5 + 32, 1, 0 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 32 -4;

-------------------------------------------------
-- 格闘（連撃）
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_15, 0x100, -1, 0, 0, 0); --格闘（連撃）	ef_003
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 148 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 148 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 148 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 148 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 148 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_16, 0x80, -1, 0, 0, 0); --格闘（連撃）	ef_003_b
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 148 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 148 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 148 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 148 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 148 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -4 + 148, 1, 0 );

changeAnime( spep_3 + 0, 1, 117 );
changeAnime( spep_3 -3 + 10, 1, 106 );
changeAnime( spep_3 -3 + 60, 1, 108 );
changeAnime( spep_3 -3 + 68, 1, 106 );
changeAnime( spep_3 -3 + 76, 1, 108 );
changeAnime( spep_3 -3 + 84, 1, 106 );
changeAnime( spep_3 -3 + 92, 1, 108 );
changeAnime( spep_3 -3 + 100, 1, 106 );
changeAnime( spep_3 -3 + 108, 1, 108 );
changeAnime( spep_3 -3 + 116, 1, 106 );
changeAnime( spep_3 -3 + 124, 1, 108 );

-- setMoveKey( spep_3 -3 + 0, 1, 30.7, 25.5 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 29.8, 26.3 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 28.9, 27.2 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 27.9, 28 , 0 );
setMoveKey( spep_3 -3 + 9, 1, 27.1, 28.8 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 70.7, 28 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 106.1, 41.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 113.3, 2.8 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 96, 25.6 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 74.7, 8 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 95.5, 32.5 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 98.6, 33.3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 101.8, 34.2 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 104.9, 35 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 108, 35.9 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 111.3, 36.4 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 114.6, 37 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 117.8, 37.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 121.1, 38 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 124.4, 38.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 125.6, 39.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 126.8, 39.7 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 127.9, 40.2 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 129, 40.8 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 130.2, 41.3 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 131.3, 41.8 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 132.4, 42.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 133.5, 42.9 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 134.6, 43.5 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 135.7, 44 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 2.3, 41.3 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 19.5, 56.5 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 0.9, 32 , 0 );
setMoveKey( spep_3 -3 + 67, 1, 38.1, 18.9 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -8.5, 12.8 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 5.6, 27.6 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -13.1, 3.1 , 0 );
setMoveKey( spep_3 -3 + 75, 1, 24.2, -10.1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 58.1, 34.6 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 72.1, 49.4 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 53.4, 24.9 , 0 );
setMoveKey( spep_3 -3 + 83, 1, 90.8, 11.7 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 44, 5.6 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 58.1, 20.4 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 39.4, -4.1 , 0 );
setMoveKey( spep_3 -3 + 91, 1, 76.7, -17.3 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 110.7, 27.5 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 124.8, 42.4 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 106, 17.7 , 0 );
setMoveKey( spep_3 -3 + 99, 1, 143.4, 4.5 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 96.6, -1.5 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 110.6, 13.3 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 91.8, -11.4 , 0 );
setMoveKey( spep_3 -3 + 107, 1, 129.3, -24.6 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 163.3, 20.4 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 177.4, 35.3 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 158.6, 10.6 , 0 );
setMoveKey( spep_3 -3 + 115, 1, 196.1, -2.7 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 149, -8.8 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 163.2, 6.1 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 144.3, -18.6 , 0 );
setMoveKey( spep_3 -3 + 123, 1, 181.9, -31.8 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 215.9, 13.3 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 201.6, 89.6 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 262.7, 7.6 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 235.6, -8.1 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 222.5, 12.3 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 201.6, 89.6 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 262.7, 7.6 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 262.7, 7.6 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 219.3, 11.9 , 0 );
setMoveKey( spep_3 -5 + 148, 1, 219.3, 11.9 , 0 );

-- setScaleKey( spep_3 -3 + 0, 1, 2.21, 2.21 );
setScaleKey( spep_3 -2 + 2, 1, 2.1, 2.1 );
setScaleKey( spep_3 -3 + 4, 1, 1.99, 1.99 );
setScaleKey( spep_3 -3 + 6, 1, 1.88, 1.88 );
setScaleKey( spep_3 -3 + 9, 1, 1.78, 1.78 );
setScaleKey( spep_3 -3 + 10, 1, 1.73, 1.73 );
setScaleKey( spep_3 -3 + 12, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 14, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 28, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 30, 1, 1.52, 1.52 );
setScaleKey( spep_3 -3 + 32, 1, 1.53, 1.53 );
setScaleKey( spep_3 -3 + 34, 1, 1.54, 1.54 );
setScaleKey( spep_3 -3 + 36, 1, 1.55, 1.55 );
setScaleKey( spep_3 -3 + 38, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 40, 1, 1.57, 1.57 );
setScaleKey( spep_3 -3 + 42, 1, 1.58, 1.58 );
setScaleKey( spep_3 -3 + 44, 1, 1.59, 1.59 );
setScaleKey( spep_3 -3 + 46, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 48, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 50, 1, 1.61, 1.61 );
setScaleKey( spep_3 -3 + 52, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 54, 1, 1.63, 1.63 );
setScaleKey( spep_3 -3 + 56, 1, 1.64, 1.64 );
setScaleKey( spep_3 -3 + 59, 1, 1.65, 1.65 );
setScaleKey( spep_3 -3 + 60, 1, 1.85, 1.85 );
setScaleKey( spep_3 -3 + 67, 1, 1.85, 1.85 );
setScaleKey( spep_3 -3 + 68, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 75, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 76, 1, 1.85, 1.85 );
setScaleKey( spep_3 -3 + 78, 1, 1.85, 1.85 );
setScaleKey( spep_3 -3 + 80, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 83, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 84, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 91, 1, 1.66, 1.66 );
setScaleKey( spep_3 -3 + 92, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 99, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 100, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 107, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 108, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 115, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 116, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 123, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 124, 1, 1.87, 1.87 );
setScaleKey( spep_3 -5 + 148, 1, 1.87, 1.87 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 9, 1, 0 );
setRotateKey( spep_3 -3 + 10, 1, -43.1 );
setRotateKey( spep_3 -3 + 12, 1, -43.1 );
setRotateKey( spep_3 -3 + 14, 1, -43 );
setRotateKey( spep_3 -3 + 16, 1, -42.8 );
setRotateKey( spep_3 -3 + 18, 1, -42.6 );
setRotateKey( spep_3 -3 + 20, 1, -42.4 );
setRotateKey( spep_3 -3 + 22, 1, -42.2 );
setRotateKey( spep_3 -3 + 24, 1, -42 );
setRotateKey( spep_3 -3 + 26, 1, -41.8 );
setRotateKey( spep_3 -3 + 28, 1, -41.6 );
setRotateKey( spep_3 -3 + 30, 1, -41.4 );
setRotateKey( spep_3 -3 + 32, 1, -41.2 );
setRotateKey( spep_3 -3 + 34, 1, -41 );
setRotateKey( spep_3 -3 + 36, 1, -40.9 );
setRotateKey( spep_3 -3 + 38, 1, -40.7 );
setRotateKey( spep_3 -3 + 59, 1, -40.7 );
setRotateKey( spep_3 -3 + 60, 1, 0 );
setRotateKey( spep_3 -3 + 67, 1, 0 );
setRotateKey( spep_3 -3 + 68, 1, -40.7 );
setRotateKey( spep_3 -3 + 75, 1, -40.7 );
setRotateKey( spep_3 -3 + 76, 1, 0 );
setRotateKey( spep_3 -3 + 83, 1, 0 );
setRotateKey( spep_3 -3 + 84, 1, -40.7 );
setRotateKey( spep_3 -3 + 91, 1, -40.7 );
setRotateKey( spep_3 -3 + 92, 1, 0 );
setRotateKey( spep_3 -3 + 99, 1, 0 );
setRotateKey( spep_3 -3 + 100, 1, -40.7 );
setRotateKey( spep_3 -3 + 107, 1, -40.7 );
setRotateKey( spep_3 -3 + 108, 1, 0 );
setRotateKey( spep_3 -3 + 115, 1, 0 );
setRotateKey( spep_3 -3 + 116, 1, -40.7 );
setRotateKey( spep_3 -3 + 123, 1, -40.7 );
setRotateKey( spep_3 -3 + 124, 1, 0 );
setRotateKey( spep_3 -5 + 148, 1, 0 );


-- ** 音 ** --
SE006 = playSeVer2( spep_3 + 0, 1189, "", 0, 0, 0, -1);	--初手パンチ

SE007 = playSeVer2( spep_3 + 6, 1010, "", 0, 0, 0, -1);	--初手パンチ

SE008 = playSeVer2( spep_3 + 6, 1000, "", 0, 0, 0, -1);	--初手パンチ
setSeVolumeByWorkId( spep_3 + 6, SE008, 85 );

SE009 = playSeVer2( spep_3 + 8, 1110, "", 0, 0, 0, -1);	--初手パンチ
setSeVolumeByWorkId( spep_3 + 8, SE009, 93 );

SE010 = playSeVer2( spep_3 + 58, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE011 = playSeVer2( spep_3 + 58, 1110, "",spep_3 + 78, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_3 + 58, SE011, 89 );

SE012 = playSeVer2( spep_3 + 66, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE013 = playSeVer2( spep_3 + 66, 1110, "",spep_3 + 86, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_3 + 66, SE013, 82 );

SE014 = playSeVer2( spep_3 + 72, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE015 = playSeVer2( spep_3 + 72, 1110, "",spep_3 + 92, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 72, SE015, 82 );
setPitch( spep_3 + 72, SE015, -200 );
setTimeStretch( SE015, 0.87, 30, 4 );

SE016 = playSeVer2( spep_3 + 78, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE017 = playSeVer2( spep_3 + 78, 1110, "",spep_3 + 98, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_3 + 78, SE017, 84 );

SE018 = playSeVer2( spep_3 + 84, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE019 = playSeVer2( spep_3 + 84, 1110, "",spep_3 + 104, 0, 10, -1);	--ラッシュ
setSeVolumeByWorkId( spep_3 + 84, SE019, 78 );
setPitch( spep_3 + 84, SE019, 100 );
setTimeStretch( SE019, 1.07, 30, 4 );

SE020 = playSeVer2( spep_3 + 90, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE021 = playSeVer2( spep_3 + 90, 1110, "",spep_3 + 110, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_3 + 90, SE021, 72 );

SE022 = playSeVer2( spep_3 + 96, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE023 = playSeVer2( spep_3 + 98, 1110, "",spep_3 + 118, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_3 + 98, SE023, 79 );
setPitch( spep_3 + 98, SE023, -100 );
setTimeStretch( SE023, 0.93, 30, 4 );

SE024 = playSeVer2( spep_3 + 104, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE025 = playSeVer2( spep_3 + 104, 1110, "",spep_3 + 124, 0, 10, -1);	--ラッシュ
setSeVolumeByWorkId( spep_3 + 104, SE025, 84 );

SE026 = playSeVer2( spep_3 + 112, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE027 = playSeVer2( spep_3 + 112, 1110, "",spep_3 + 132, 0, 10, -1);	--ラッシュ
setSeVolumeByWorkId( spep_3 + 112, SE027, 84 );

SE028 = playSeVer2( spep_3 + 120, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE029 = playSeVer2( spep_3 + 120, 1110, "", 0, 0, 0, -1);	--ラッシュ
setSeVolumeByWorkId( spep_3 + 120, SE029, 83 );

SE030 = playSeVer2( spep_3 + 128, 1110, "", 0, 0, 0, -1);	--ラッシュ


-- ** 次の準備 ** --
spep_4 = spep_3 + 148 -4;

-------------------------------------------------
-- かかと落としフェイント
-------------------------------------------------
-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_17, 0x100, -1, 0, 0, 0); --かかと落としフェイント	ef_004
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 168 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 168 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 168 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 168 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 168 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_18, 0x80, -1, 0, 0, 0); --かかと落としフェイント	ef_004_b
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 168 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 168 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 168 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 168 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 168 -4, base4_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 28, 1, 0 );
setDisp( spep_4 -3 + 64, 1, 1 );
setDisp( spep_4 -4 + 168, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 64, 1, 104 );
changeAnime( spep_4 -3 + 129, 1, 106 );
changeAnime( spep_4 -3 + 130, 1, 5 );

-- setMoveKey( spep_4 -3 + 0, 1, 100.1, -12 , 0 );
setMoveKey( spep_4 -2 + 2, 1, 105.1, -26.3 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 110.1, -40.7 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 115.1, -55.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 120.1, -69.4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 125.1, -83.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 130.1, -98.2 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 135.1, -112.6 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 140.1, -126.9 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 145.1, -141.3 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 150.1, -155.7 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 155.1, -170.1 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 100.1, -222.1 , 0 );
setMoveKey( spep_4 -3 + 27, 1, 96.5, -249 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 152.1, -16 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 133.6, -17.3 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 140.5, -1.6 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 48.6, -25.5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 89.2, -73.3 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 61.7, -20.1 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 50.1, -14.4 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 67.4, -6.4 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 56.9, -26.1 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 56.8, -35.4 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 62, -39.4 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 67.3, -43.3 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 72.6, -47.3 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 77.8, -51.3 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 83.1, -55.3 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 88.4, -59.2 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 93.6, -63.2 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 98.8, -67.2 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 104.2, -71.2 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 109.4, -75.2 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 114.6, -79.1 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 119.9, -83.1 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 125.2, -87 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 130.4, -91 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 135.7, -95 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 141, -99 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 146.2, -102.9 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 151.5, -107 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 156.7, -110.9 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 162, -114.9 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 167.3, -118.8 , 0 );
setMoveKey( spep_4 -3 + 127, 1, 172.5, -122.8 , 0 );
setMoveKey( spep_4 -3 + 129, 1, 335.1, -58.3 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 623.9, -354.5 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 708.9, -364 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 652.3, -467.6 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 763.1, -511.1 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 737.3, -505.3 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 704.4, -472.8 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 562.3, -380.3 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 420.4, -287.9 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 278.8, -195.6 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 137.3, -103.3 , 0 );
setMoveKey( spep_4 -3 + 150, 1, -3.9, -11.1 , 0 );
setMoveKey( spep_4 -3 + 152, 1, -0.5, -11.8 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 3, -12.5 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 6.5, -13.3 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 10.1, -14.1 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 13.7, -14.9 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 17.4, -15.7 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 21.1, -16.5 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 25, -17.4 , 0 );
-- setMoveKey( spep_4 -5 + 168, 1, 25, -17.4 , 0 );

-- setScaleKey( spep_4 -3 + 0, 1, 2.07, 2.07 );
setScaleKey( spep_4 -2 + 2, 1, 2.1, 2.1 );
setScaleKey( spep_4 -3 + 4, 1, 2.13, 2.13 );
setScaleKey( spep_4 -3 + 6, 1, 2.16, 2.16 );
setScaleKey( spep_4 -3 + 8, 1, 2.19, 2.19 );
setScaleKey( spep_4 -3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_4 -3 + 12, 1, 2.26, 2.26 );
setScaleKey( spep_4 -3 + 14, 1, 2.29, 2.29 );
setScaleKey( spep_4 -3 + 16, 1, 2.32, 2.32 );
setScaleKey( spep_4 -3 + 18, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 20, 1, 2.39, 2.39 );
setScaleKey( spep_4 -3 + 22, 1, 2.42, 2.42 );
setScaleKey( spep_4 -3 + 24, 1, 2.07, 2.07 );
setScaleKey( spep_4 -3 + 27, 1, 2.22, 2.22 );
setScaleKey( spep_4 -3 + 64, 1, 2.16, 2.16 );
setScaleKey( spep_4 -3 + 66, 1, 2.22, 2.22 );
setScaleKey( spep_4 -3 + 68, 1, 2.29, 2.29 );
setScaleKey( spep_4 -3 + 70, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 72, 1, 2.42, 2.42 );
setScaleKey( spep_4 -3 + 74, 1, 2.48, 2.48 );
setScaleKey( spep_4 -3 + 76, 1, 2.55, 2.55 );
setScaleKey( spep_4 -3 + 78, 1, 2.62, 2.62 );
setScaleKey( spep_4 -3 + 80, 1, 2.68, 2.68 );
setScaleKey( spep_4 -3 + 82, 1, 2.75, 2.75 );
setScaleKey( spep_4 -3 + 84, 1, 2.81, 2.81 );
setScaleKey( spep_4 -3 + 86, 1, 2.88, 2.88 );
setScaleKey( spep_4 -3 + 88, 1, 2.95, 2.95 );
setScaleKey( spep_4 -3 + 90, 1, 3.01, 3.01 );
setScaleKey( spep_4 -3 + 92, 1, 3.08, 3.08 );
setScaleKey( spep_4 -3 + 94, 1, 3.15, 3.15 );
setScaleKey( spep_4 -3 + 96, 1, 3.21, 3.21 );
setScaleKey( spep_4 -3 + 98, 1, 3.28, 3.28 );
setScaleKey( spep_4 -3 + 100, 1, 3.35, 3.35 );
setScaleKey( spep_4 -3 + 102, 1, 3.41, 3.41 );
setScaleKey( spep_4 -3 + 104, 1, 3.48, 3.48 );
setScaleKey( spep_4 -3 + 106, 1, 3.55, 3.55 );
setScaleKey( spep_4 -3 + 108, 1, 3.61, 3.61 );
setScaleKey( spep_4 -3 + 110, 1, 3.68, 3.68 );
setScaleKey( spep_4 -3 + 112, 1, 3.75, 3.75 );
setScaleKey( spep_4 -3 + 114, 1, 3.81, 3.81 );
setScaleKey( spep_4 -3 + 116, 1, 3.88, 3.88 );
setScaleKey( spep_4 -3 + 118, 1, 3.95, 3.95 );
setScaleKey( spep_4 -3 + 120, 1, 4.01, 4.01 );
setScaleKey( spep_4 -3 + 122, 1, 4.08, 4.08 );
setScaleKey( spep_4 -3 + 124, 1, 4.15, 4.15 );
setScaleKey( spep_4 -3 + 127, 1, 4.21, 4.21 );
setScaleKey( spep_4 -3 + 129, 1, 4.09, 4.09 );
setScaleKey( spep_4 -3 + 130, 1, 2.54, 2.54 );
setScaleKey( spep_4 -3 + 132, 1, 2.21, 2.21 );
setScaleKey( spep_4 -3 + 134, 1, 1.87, 1.87 );
setScaleKey( spep_4 -3 + 136, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 138, 1, 1.16, 1.16 );
setScaleKey( spep_4 -3 + 140, 1, 0.79, 0.79 );
setScaleKey( spep_4 -3 + 142, 1, 0.76, 0.76 );
setScaleKey( spep_4 -3 + 144, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 146, 1, 0.72, 0.72 );
setScaleKey( spep_4 -3 + 148, 1, 0.69, 0.69 );
setScaleKey( spep_4 -3 + 150, 1, 0.67, 0.67 );
setScaleKey( spep_4 -3 + 152, 1, 0.64, 0.64 );
setScaleKey( spep_4 -3 + 154, 1, 0.61, 0.61 );
setScaleKey( spep_4 -3 + 156, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 158, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 160, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 162, 1, 0.47, 0.47 );
setScaleKey( spep_4 -3 + 164, 1, 0.44, 0.44 );
setScaleKey( spep_4 -3 + 166, 1, 0.41, 0.41 );
-- setScaleKey( spep_4 -5 + 168, 1, 0.41, 0.41 );

setRotateKey( spep_4 + 0, 1, -43.1 );
setRotateKey( spep_4 -3 + 27, 1, -43.1 );
setRotateKey( spep_4 -3 + 64, 1, 0 );
setRotateKey( spep_4 -3 + 72, 1, 0 );
setRotateKey( spep_4 -3 + 74, 1, 0.3 );
setRotateKey( spep_4 -3 + 76, 1, 1.3 );
setRotateKey( spep_4 -3 + 78, 1, 3 );
setRotateKey( spep_4 -3 + 80, 1, 0.7 );
setRotateKey( spep_4 -3 + 82, 1, 0 );
setRotateKey( spep_4 -3 + 127, 1, 0 );
setRotateKey( spep_4 -3 + 129, 1, -29.9 );
setRotateKey( spep_4 -3 + 130, 1, 57.8 );
setRotateKey( spep_4 -3 + 132, 1, 63.2 );
setRotateKey( spep_4 -3 + 134, 1, 68.5 );
setRotateKey( spep_4 -3 + 136, 1, 73.9 );
setRotateKey( spep_4 -3 + 138, 1, 79.3 );
setRotateKey( spep_4 -3 + 140, 1, 84.7 );
setRotateKey( spep_4 -3 + 166, 1, 84.7 );
-- setRotateKey( spep_4 -5 + 168, 1, 84.7 );


-- ** 音 ** --
SE031 = playSeVer2( spep_4 + 18, 1183, "",spep_4 + 78, 8, 16, 0.6);	--回転してかかとおとし
setStartTimeMs( SE031,  450 );
setPitch( spep_4 + 18, SE031, -700 )
setTimeStretch( SE031, 0.53, 26, 4 );

SE032 = playSeVer2( spep_4 + 12, 1007, "", 0, 0, 0, -1);	--回転してかかとおとし

SE033 = playSeVer2( spep_4 + 14, 1004, "", 0, 0, 0, -1);	--回転してかかとおとし

SE034 = playSeVer2( spep_4 + 14, 1116, "",spep_4 + 80, 0, 20, 0.6);	--回転してかかとおとし
setTimeStretch( SE034, 1.42, 30, 4 );

SE035 = playSeVer2( spep_4 + 62, 1189, "", 0, 0, 0, -1);	--サマーソルトヒット

SE036 = playSeVer2( spep_4 + 70, 1006, "", 0, 0, 0, -1)	--サマーソルトヒット;
setSeVolumeByWorkId( spep_4 + 70, SE036, 79 );

SE037 = playSeVer2( spep_4 + 70, 1012, "", 0, 0, 0, -1);	--サマーソルトヒット

SE038 = playSeVer2( spep_4 + 126, 1003, "", 0, 0, 0, -1);	--蹴り飛ばし

SE039 = playSeVer2( spep_4 + 126, 1120, "", 0, 0, 0, -1);	--蹴り飛ばし


-- ** 次の準備 ** --
spep_5 = spep_4 + 168 -4;

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
base5_b = entryEffect( spep_5 + 0, SP_10, 0x80, -1, 0, 0, 0); --フィニッシュ	ef_005_b
setEffMoveKey( spep_5 + 0, base5_b, 0, 0 , 0);
setEffMoveKey( spep_5 + 136 -4, base5_b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_b, 1.0, 1.0);
setEffScaleKey( spep_5 + 136 -4, base5_b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_b, 0);
setEffRotateKey( spep_5 + 136 -4, base5_b, 0);
setEffAlphaKey( spep_5 + 0, base5_b, 255);
setEffAlphaKey( spep_5 + 136 -5, base5_b, 255);
setEffAlphaKey( spep_5 + 136 -4, base5_b, 0);

-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen5, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen5, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen5, 0 );
setEffRotateKey( spep_5 + 46, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen5, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen5, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen5, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen5, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen5, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen5, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen5, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen5, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen5, 0 );

shuchusen6 = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen6, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen6, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen6, 0 );
setEffRotateKey( spep_5 + 100, shuchusen6, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen6, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen6, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_5 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, -40 );
setRotateKey( spep_5 + 1, 1, -40 );
setRotateKey( spep_5 + 2, 1, 80 );
setRotateKey( spep_5 + 3, 1, 80 );
setRotateKey( spep_5 + 4, 1, 200 );
setRotateKey( spep_5 + 5, 1, 200 );
setRotateKey( spep_5 + 6, 1, 360 );
setRotateKey( spep_5 + 7, 1, 360 );
setRotateKey( spep_5 + 8, 1, 558 );
setRotateKey( spep_5 + 9, 1, 558 );
setRotateKey( spep_5 + 10, 1, 425 );
setRotateKey( spep_5 + 11, 1, 425 );
setRotateKey( spep_5 + 12, 1, -40 );
setRotateKey( spep_5 + 110, 1, -40 );

-- ** 音 ** --
SE040 = playSeVer2( spep_5 + 14, 1011, "", 0, 0, 0, -1);	--壁に激突
SE041 = playSeVer2( spep_5 + 14, 1054, "", 0, 0, 0, -1);	--壁に激突

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 100 );

end
