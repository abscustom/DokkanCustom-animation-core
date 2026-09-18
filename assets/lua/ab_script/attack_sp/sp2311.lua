--1023480:SSR_魔人ブウ(純粋)_バーストリジェクション(簡易版)
--sp_effect_b1_00176

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
SP_01 = 158797;	--向かい合う～カットイン　（手前・共有）	ef_001_front	55	そのまま反転（ef_001_front と　ef_001_back同時再生）
SP_02 = 158798;	--向かい合う～カットイン　（奥・共有）	ef_001_back	55	そのまま反転（ef_001_front と　ef_001_back同時再生）
SP_03 = 158799;	--足を地面に突っ込む（共有）	ef_002	26	そのまま反転
SP_04 = 158800;	--地面から蹴り（手前・味方）	ef_003_front	28	味方側（ef_003_front と　ef_003_back同時再生）
SP_05 = 158801;	--地面から蹴り（奥・味方）	ef_003_back	28	味方側（ef_003_front と　ef_003_back同時再生）
SP_06 = 158804;	--蹴りと頭突き（手前・味方）	ef_004_front	86	味方側（ef_004_front と　ef_004_back同時再生）
SP_07 = 158805;	--蹴りと頭突き（奥・味方）	ef_004_back	86	味方側（ef_004_front と　ef_004_back同時再生）
SP_08 = 158808;	--壁に激突（手前・味方）	ef_005_front	83	味方側（ef_005_front と　ef_005_back同時再生）
SP_09 = 158809;	--壁に激突（奥・味方）	ef_005_back	83	味方側（ef_005_front と　ef_005_back同時再生）

--エフェクト(敵)
SP_10 = 158802;	--地面から蹴り（手前・敵）	ef_003_r_front	28	敵側そのまま反転（ef_003_r_front と　ef_003_r_back同時再生）
SP_11 = 158803;	--地面から蹴り（奥・敵）	ef_003_r_back	28	敵側そのまま反転（ef_003_r_front と　ef_003_r_back同時再生）
SP_12 = 158806;	--蹴りと頭突き（手前・敵）	ef_004_r_front	86	敵側そのまま反転（ef_004_r_front と　ef_004_r_back同時再生）
SP_13 = 158807;	--蹴りと頭突き（奥・敵）	ef_004_r_back	86	敵側そのまま反転（ef_004_r_front と　ef_004_r_back同時再生）
SP_14 = 158810;	--壁に激突（手前・敵）	ef_005_r_front	83	敵側そのまま反転（ef_005_r_front と　ef_005_r_back同時再生）
SP_15 = 158811;	--壁に激突（奥・敵）	ef_005_r_back	83	敵側そのまま反転（ef_005_r_front と　ef_005_r_back同時再生）


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
-- 向かい合う～カットイン(110F -4 -2)
------------------------------------------------------

-- ** エフェクト等 ** --
base1_f = entryEffect( spep_1 + 0, SP_01, 0x100, -1, 0, 0, 0); --向かい合う～カットイン　（手前・共有）
setEffMoveKey( spep_1 + 0, base1_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 110 -4 -2, base1_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 110 -4 -2, base1_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_f, 0);
setEffRotateKey( spep_1 + 110 -4 -2, base1_f, 0);
setEffAlphaKey( spep_1 + 0, base1_f, 255);
setEffAlphaKey( spep_1 + 110 -5 -2, base1_f, 255);
setEffAlphaKey( spep_1 + 110 -4 -2, base1_f, 0);

base1_b = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); --向かい合う～カットイン　（奥・共有）
setEffMoveKey( spep_1 + 0, base1_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 110 -4 -2, base1_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 110 -4 -2, base1_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_b, 0);
setEffRotateKey( spep_1 + 110 -4 -2, base1_b, 0);
setEffAlphaKey( spep_1 + 0, base1_b, 255);
setEffAlphaKey( spep_1 + 110 -5 -2, base1_b, 255);
setEffAlphaKey( spep_1 + 110 -4 -2, base1_b, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 18;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40+160, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40+160, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, 80+160, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 110 -4 -2, 1, 0 );

changeAnime( spep_1 + 0, 1, 118 );

-- setMoveKey( spep_1 -3 + 0, 1, 525.8, -87.9 , 0 );
setMoveKey( spep_1 + 0, 1, 472.2, -82.4 , 0 );
setMoveKey( spep_1 + 1, 1, 418.6, -76.8 , 0 );
setMoveKey( spep_1 + 2, 1, 418.6, -76.8 , 0 );
setMoveKey( spep_1 + 3, 1, 365.1, -71.3 , 0 );
setMoveKey( spep_1 + 4, 1, 365.1, -71.3 , 0 );
setMoveKey( spep_1 + 5, 1, 311.5, -65.7 , 0 );
setMoveKey( spep_1 + 6, 1, 311.5, -65.7 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 257.9, -60.2 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 204.4, -54.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 203.8, -54.7 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 203.2, -54.6 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 202.7, -54.6 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 202.2, -54.5 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 201.6, -54.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 201.1, -54.4 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 200.5, -54.3 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 199.9, -54.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 199.4, -54.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 198.9, -54.1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 198.3, -54.1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 197.8, -54 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 197.2, -54 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 196.7, -53.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 196.1, -53.9 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 195.6, -53.8 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 195, -53.8 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 194.5, -53.7 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 194, -53.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 193.4, -53.6 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 192.8, -53.5 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 192.3, -53.5 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 191.8, -53.4 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 191.2, -53.3 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 190.7, -53.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 190.2, -53.2 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 189.6, -53.2 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 189.1, -53.1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 188.5, -53.1 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 188, -53 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 187.4, -53 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 186.9, -52.9 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 186.4, -52.9 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 185.8, -52.8 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 185.2, -52.7 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 184.7, -52.7 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 184.2, -52.6 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 183.6, -52.5 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 183.1, -52.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 182.5, -52.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 182, -52.4 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 181.4, -52.3 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 180.9, -52.3 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 180.3, -52.2 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 179.8, -52.2 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 179.3, -52.1 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 178.7, -52.1 , 0 );
-- setMoveKey( spep_1 -3 + 108, 1, 178.1, -52 , 0 );
setMoveKey( spep_1 -4 + 110 -2, 1, 178.1, -52 , 0 );

-- setScaleKey( spep_1 -3 + 0, 1, 4.93, 4.93 );
setScaleKey( spep_1 + 0, 1, 4.55, 4.55 );
setScaleKey( spep_1 + 1, 1, 4.17, 4.17 );
setScaleKey( spep_1 + 2, 1, 4.17, 4.17 );
setScaleKey( spep_1 + 3, 1, 3.79, 3.79 );
setScaleKey( spep_1 + 4, 1, 3.79, 3.79 );
setScaleKey( spep_1 + 5, 1, 3.41, 3.41 );
setScaleKey( spep_1 + 6, 1, 3.41, 3.41 );
setScaleKey( spep_1 -3 + 10, 1, 3.03, 3.03 );
setScaleKey( spep_1 -3 + 12, 1, 2.65, 2.65 );
setScaleKey( spep_1 -3 + 14, 1, 2.65, 2.65 );
setScaleKey( spep_1 -3 + 16, 1, 2.64, 2.64 );
setScaleKey( spep_1 -3 + 20, 1, 2.64, 2.64 );
setScaleKey( spep_1 -3 + 22, 1, 2.63, 2.63 );
setScaleKey( spep_1 -3 + 24, 1, 2.63, 2.63 );
setScaleKey( spep_1 -3 + 26, 1, 2.62, 2.62 );
setScaleKey( spep_1 -3 + 30, 1, 2.62, 2.62 );
setScaleKey( spep_1 -3 + 32, 1, 2.61, 2.61 );
setScaleKey( spep_1 -3 + 36, 1, 2.61, 2.61 );
setScaleKey( spep_1 -3 + 38, 1, 2.6, 2.6 );
setScaleKey( spep_1 -3 + 40, 1, 2.6, 2.6 );
setScaleKey( spep_1 -3 + 42, 1, 2.59, 2.59 );
setScaleKey( spep_1 -3 + 46, 1, 2.59, 2.59 );
setScaleKey( spep_1 -3 + 48, 1, 2.58, 2.58 );
setScaleKey( spep_1 -3 + 50, 1, 2.58, 2.58 );
setScaleKey( spep_1 -3 + 52, 1, 2.57, 2.57 );
setScaleKey( spep_1 -3 + 56, 1, 2.57, 2.57 );
setScaleKey( spep_1 -3 + 58, 1, 2.56, 2.56 );
setScaleKey( spep_1 -3 + 60, 1, 2.56, 2.56 );
setScaleKey( spep_1 -3 + 62, 1, 2.55, 2.55 );
setScaleKey( spep_1 -3 + 66, 1, 2.55, 2.55 );
setScaleKey( spep_1 -3 + 68, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 72, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 74, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 76, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 78, 1, 2.52, 2.52 );
setScaleKey( spep_1 -3 + 82, 1, 2.52, 2.52 );
setScaleKey( spep_1 -3 + 84, 1, 2.51, 2.51 );
setScaleKey( spep_1 -3 + 86, 1, 2.51, 2.51 );
setScaleKey( spep_1 -3 + 88, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 92, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 94, 1, 2.49, 2.49 );
setScaleKey( spep_1 -3 + 98, 1, 2.49, 2.49 );
setScaleKey( spep_1 -3 + 100, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 102, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 104, 1, 2.47, 2.47 );
setScaleKey( spep_1 -4 + 110 -2, 1, 2.47, 2.47 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 -4 + 110 -2, 1, 0 );


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1);	--入り
setSeVolumeByWorkId( spep_1 + 0, SE001, 84 );

SE002 = playSeVer2( spep_1 + 26, 1018, "", 0, 0, 0, -1);	--顔カットイン


-- ** 次の準備 ** --
spep_c = spep_1 + 110 -4 -2;

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
-- 足を地面に突っ込む（52F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); --足を地面に突っ込む
setEffMoveKey( spep_2 + 0, base2, 0, 0 , 0);
setEffMoveKey( spep_2 + 52 -4, base2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2, 1.0, 1.0);
setEffScaleKey( spep_2 + 52 -4, base2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2, 0);
setEffRotateKey( spep_2 + 52 -4, base2, 0);
setEffAlphaKey( spep_2 + 0, base2, 255);
setEffAlphaKey( spep_2 + 52 -5, base2, 255);
setEffAlphaKey( spep_2 + 52 -4, base2, 0);


-- ** 音 ** --
SE004 = playSeVer2( spep_2 + 0, 1004, "", 0, 0, 0, -1);	--地面に足突っ込む

SE005 = playSeVer2( spep_2 + 26, 1169, "", 0, 0, 0, -1);	--地面に足突っ込む
setSeVolumeByWorkId( spep_2 + 26, SE005, 85 );

SE006 = playSeVer2( spep_2 + 26, 1153, "", 0, 0, 0, -1);	--地面に足突っ込む
setSeVolumeByWorkId( spep_2 + 26, SE006, 77 );

SE007 = playSeVer2( spep_2 + 26, 1017, "", 0, 0, 0, -1);	--地面に足突っ込む
setSeVolumeByWorkId( spep_2 + 26, SE007, 76 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0 );
stopSe( SP_dodge - 12, SE005, 0 );
stopSe( SP_dodge - 12, SE006, 0 );
stopSe( SP_dodge - 12, SE007, 0 );

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
spep_3 = spep_2 + 52 -4;

-------------------------------------------------
-- 地面から蹴り（56F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); --蹴り
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 56 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 56 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 56 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 56 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 56 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0); --蹴り
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 56 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 56 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 56 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 56 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 56 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 -3 + 0, 1, 117 );

setMoveKey( spep_3 -2 + 2, 1, 42.3, -126.7 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 50.9, -120.7 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 59.7, -114.8 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 68.3, -108.8 , 0 );

setScaleKey( spep_3 -2 + 2, 1, 3.97, 3.97 );
setScaleKey( spep_3 -3 + 4, 1, 3.78, 3.78 );
setScaleKey( spep_3 -3 + 6, 1, 3.6, 3.6 );
setScaleKey( spep_3 -3 + 8, 1, 3.41, 3.41 );

setRotateKey( spep_3 + 0, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -4 + 56, 1, 0 );

changeAnime( spep_3 -3 + 18, 1, 106 );

setMoveKey( spep_3 -3 + 10, 1, 68.7, -108.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 69.1, -108.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 69.6, -107.9 , 0 );
setMoveKey( spep_3 -3 + 17, 1, 70, -107.6 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 79.7, -81.1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 95, 1.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 137.1, 50.5 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 119.4, 19.2 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 129.5, 51.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 139.3, 71.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 109.3, 31.7 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 127.1, 79.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 148.7, 50.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 114.3, 57.8 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 131.7, 68.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 133, 71.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 134.3, 73.5 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 135.5, 75.6 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 136.5, 77.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 137.5, 79 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 138.3, 80.3 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 139.1, 81.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 139.7, 82.2 , 0 );
setMoveKey( spep_3 -4 + 56, 1, 139.7, 82.2 , 0 );

setScaleKey( spep_3 -3 + 10, 1, 3.4, 3.4 );
setScaleKey( spep_3 -3 + 12, 1, 3.39, 3.39 );
setScaleKey( spep_3 -3 + 14, 1, 3.38, 3.38 );
setScaleKey( spep_3 -3 + 17, 1, 3.37, 3.37 );
setScaleKey( spep_3 -3 + 18, 1, 3.34, 3.34 );
setScaleKey( spep_3 -3 + 20, 1, 3.33, 3.33 );
setScaleKey( spep_3 -3 + 22, 1, 3.3, 3.3 );
setScaleKey( spep_3 -3 + 24, 1, 3.28, 3.28 );
setScaleKey( spep_3 -3 + 26, 1, 3.25, 3.25 );
setScaleKey( spep_3 -3 + 28, 1, 3.23, 3.23 );
setScaleKey( spep_3 -3 + 30, 1, 3.2, 3.2 );
setScaleKey( spep_3 -3 + 32, 1, 3.18, 3.18 );
setScaleKey( spep_3 -3 + 34, 1, 3.16, 3.16 );
setScaleKey( spep_3 -3 + 36, 1, 3.14, 3.14 );
setScaleKey( spep_3 -3 + 38, 1, 3.12, 3.12 );
setScaleKey( spep_3 -3 + 40, 1, 3.1, 3.1 );
setScaleKey( spep_3 -3 + 42, 1, 3.08, 3.08 );
setScaleKey( spep_3 -3 + 44, 1, 3.07, 3.07 );
setScaleKey( spep_3 -3 + 46, 1, 3.05, 3.05 );
setScaleKey( spep_3 -3 + 48, 1, 3.04, 3.04 );
setScaleKey( spep_3 -3 + 50, 1, 3.02, 3.02 );
setScaleKey( spep_3 -3 + 52, 1, 3.01, 3.01 );
setScaleKey( spep_3 -3 + 54, 1, 3, 3 );
setScaleKey( spep_3 -4 + 56, 1, 3, 3 );

setRotateKey( spep_3 -3 + 17, 1, 0 );
setRotateKey( spep_3 -3 + 18, 1, -61.2 );
setRotateKey( spep_3 -3 + 20, 1, -61.2 );
setRotateKey( spep_3 -3 + 22, 1, -60 );
setRotateKey( spep_3 -3 + 24, 1, -58.9 );
setRotateKey( spep_3 -3 + 26, 1, -57.9 );
setRotateKey( spep_3 -3 + 28, 1, -57 );
setRotateKey( spep_3 -3 + 30, 1, -56 );
setRotateKey( spep_3 -3 + 32, 1, -55.2 );
setRotateKey( spep_3 -3 + 34, 1, -54.4 );
setRotateKey( spep_3 -3 + 36, 1, -53.6 );
setRotateKey( spep_3 -3 + 38, 1, -52.9 );
setRotateKey( spep_3 -3 + 40, 1, -52.3 );
setRotateKey( spep_3 -3 + 42, 1, -51.7 );
setRotateKey( spep_3 -3 + 44, 1, -51.2 );
setRotateKey( spep_3 -3 + 46, 1, -50.7 );
setRotateKey( spep_3 -3 + 48, 1, -50.3 );
setRotateKey( spep_3 -3 + 50, 1, -50 );
setRotateKey( spep_3 -3 + 52, 1, -49.7 );
setRotateKey( spep_3 -3 + 54, 1, -49.4 );
setRotateKey( spep_3 -4 + 56, 1, -49.4 );


-- ** 音 ** --
SE008 = playSeVer2( spep_3 + 10, 1187, "", 0, 0, 0, -1);	--地面から蹴る
setSeVolumeByWorkId( spep_3 + 10, SE008, 84 );

SE009 = playSeVer2( spep_3 + 10, 20, "", 0, 0, 0, -1);	--地面から蹴る
setSeVolumeByWorkId( spep_3 + 10, SE009, 83 );

SE010 = playSeVer2( spep_3 + 10, 1049, "",spep_3 + 38, 0, 16, -1);	--地面から蹴る
setSeVolumeByWorkId( spep_3 + 10, SE010, 74 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 56 -4;

-------------------------------------------------
-- 蹴りと頭突き（172F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0); --蹴りと頭突き
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 172 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 172 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 172 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 172 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 172 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0); --蹴りと頭突き
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 172 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 172 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 172 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 172 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 172 -4, base4_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 82, 1, 1 );
setDisp( spep_4 -3 + 152, 1, 0 );

changeAnime( spep_4 -3 + 82, 1, 106 );
changeAnime( spep_4 -3 + 88, 1, 108 );
changeAnime( spep_4 -3 + 148, 1, 107 );

setMoveKey( spep_4 -3 + 82, 1, 78, 78.7 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 85.7, 73.5 , 0 );
setMoveKey( spep_4 -3 + 87, 1, 93.7, 68.6 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 57.8, 37.5 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 76, 48.7 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 54.4, 35.9 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 34.6, 15.2 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 50.7, 52.1 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 61, 13.4 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 37.3, 44.6 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 45.5, 19.8 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 53.9, 39.1 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 42.2, 20.3 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 34.5, 39.5 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 38.5, 22.5 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 38.8, 31.7 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 35.2, 27 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 32.4, 25.7 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 29.9, 24.6 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 27.1, 23.3 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 24.3, 21.9 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 34.5, 19.9 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 45, 18.2 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 55.1, 16.1 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 65.5, 14.4 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 98.1, 42.4 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 46.3, -21.9 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 70.8, 38.1 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 112.9, -19.5 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 137.5, 28.5 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 126.1, -15.5 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 102.6, 0.2 , 0 );
setMoveKey( spep_4 -3 + 147, 1, 159.2, -19.7 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 397.4, 318.5 , 0 );
setMoveKey( spep_4 -3 + 150, 1, 540.2, 377.2 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 992.1, 725.5 , 0 );

setScaleKey( spep_4 -3 + 82, 1, 2.49, 2.49 );
setScaleKey( spep_4 -3 + 84, 1, 2.3, 2.3 );
setScaleKey( spep_4 -3 + 87, 1, 2.11, 2.11 );
setScaleKey( spep_4 -3 + 88, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 90, 1, 2.37, 2.37 );
setScaleKey( spep_4 -3 + 92, 1, 2.4, 2.4 );
setScaleKey( spep_4 -3 + 94, 1, 2.42, 2.42 );
setScaleKey( spep_4 -3 + 96, 1, 2.44, 2.44 );
setScaleKey( spep_4 -3 + 98, 1, 2.46, 2.46 );
setScaleKey( spep_4 -3 + 100, 1, 2.48, 2.48 );
setScaleKey( spep_4 -3 + 102, 1, 2.5, 2.5 );
setScaleKey( spep_4 -3 + 104, 1, 2.52, 2.52 );
setScaleKey( spep_4 -3 + 106, 1, 2.54, 2.54 );
setScaleKey( spep_4 -3 + 108, 1, 2.57, 2.57 );
setScaleKey( spep_4 -3 + 110, 1, 2.59, 2.59 );
setScaleKey( spep_4 -3 + 112, 1, 2.61, 2.61 );
setScaleKey( spep_4 -3 + 114, 1, 2.63, 2.63 );
setScaleKey( spep_4 -3 + 116, 1, 2.66, 2.66 );
setScaleKey( spep_4 -3 + 118, 1, 2.7, 2.7 );
setScaleKey( spep_4 -3 + 120, 1, 2.73, 2.73 );
setScaleKey( spep_4 -3 + 122, 1, 2.76, 2.76 );
setScaleKey( spep_4 -3 + 124, 1, 2.99, 2.99 );
setScaleKey( spep_4 -3 + 126, 1, 3.22, 3.22 );
setScaleKey( spep_4 -3 + 128, 1, 3.45, 3.45 );
setScaleKey( spep_4 -3 + 130, 1, 3.68, 3.68 );
setScaleKey( spep_4 -3 + 132, 1, 3.69, 3.69 );
setScaleKey( spep_4 -3 + 134, 1, 3.7, 3.7 );
setScaleKey( spep_4 -3 + 136, 1, 3.7, 3.7 );
setScaleKey( spep_4 -3 + 138, 1, 3.72, 3.72 );
setScaleKey( spep_4 -3 + 140, 1, 3.72, 3.72 );
setScaleKey( spep_4 -3 + 142, 1, 3.73, 3.73 );
setScaleKey( spep_4 -3 + 144, 1, 3.74, 3.74 );
setScaleKey( spep_4 -3 + 147, 1, 3.75, 3.75 );
setScaleKey( spep_4 -3 + 148, 1, 2.37, 2.37 );
setScaleKey( spep_4 -3 + 150, 1, 2.93, 2.93 );
setScaleKey( spep_4 -3 + 152, 1, 4.63, 4.63 );

setRotateKey( spep_4 -3 + 82, 1, -47.4 );
setRotateKey( spep_4 -3 + 87, 1, -47.4 );
setRotateKey( spep_4 -3 + 88, 1, 0 );
setRotateKey( spep_4 -3 + 147, 1, 0 );
setRotateKey( spep_4 -3 + 148, 1, -31.7 );
setRotateKey( spep_4 -3 + 152, 1, -31.7 );


-- ** 音 ** --
SE011 = playSeVer2( spep_4 + 56, 1321, "",spep_4 + 98, 4, 10, 0.5);	--足伸びる
setStartTimeMs( SE011,  1150 );

SE012 = playSeVer2( spep_4 + 10, 1153, "",spep_4 + 48, 0, 20, -1);	--地面から足を抜く

SE013 = playSeVer2( spep_4 + 36, 1003, "", 0, 0, 0, -1);	--助走

SE014 = playSeVer2( spep_4 + 56, 1027, "",spep_4 + 98, 0, 10, -1);	--足伸びる
setSeVolumeByWorkId( spep_4 + 56, SE014, 84 );

SE015 = playSeVer2( spep_4 + 58, 1177, "",spep_4 + 98, 0, 10, -1);	--足伸びる
setSeVolumeByWorkId( spep_4 + 58, SE015, 82 );

SE016 = playSeVer2( spep_4 + 82, 1110, "", 0, 0, 0, -1);	--キックヒット
setSeVolumeByWorkId( spep_4 + 82, SE016, 87 );

SE017 = playSeVer2( spep_4 + 82, 1187, "",spep_4 + 134, 0, 30, -1);	--キックヒット
setSeVolumeByWorkId( spep_4 + 82, SE017, 87 );

SE018 = playSeVer2( spep_4 + 106, 1320, "",spep_4 + 150, 8, 18, 0.5);	--ブウ近づく
setSeVolumeByWorkId( spep_4 + 106, SE018, 112 );
setStartTimeMs( SE018,  400 );
setPitch( spep_4 + 106, SE018, -300 );
setTimeStretch( SE017, 0.8, 30, 4 );

SE019 = playSeVer2( spep_4 + 128, 1153, "", 0, 0, 0, -1);	--頭突き
setSeVolumeByWorkId( spep_4 + 128, SE019, 81 );

SE020 = playSeVer2( spep_4 + 128, 1120, "", 0, 0, 0, -1);	--頭突き


-- ** 次の準備 ** --
spep_5 = spep_4 + 172 -4;

-------------------------------------------------
-- 壁に激突（166F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base5_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0); --壁に激突
setEffMoveKey( spep_5 + 0, base5_f, 0, 0 , 0);
setEffMoveKey( spep_5 + 166 -4, base5_f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_f, 1.0, 1.0);
setEffScaleKey( spep_5 + 166 -4, base5_f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_f, 0);
setEffRotateKey( spep_5 + 166 -4, base5_f, 0);
setEffAlphaKey( spep_5 + 0, base5_f, 255);
setEffAlphaKey( spep_5 + 166 -5, base5_f, 255);
setEffAlphaKey( spep_5 + 166 -4, base5_f, 0);

base5_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0); --壁に激突
setEffMoveKey( spep_5 + 0, base5_b, 0, 0 , 0);
setEffMoveKey( spep_5 + 166 -4, base5_b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_b, 1.0, 1.0);
setEffScaleKey( spep_5 + 166 -4, base5_b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_b, 0);
setEffRotateKey( spep_5 + 166 -4, base5_b, 0);
setEffAlphaKey( spep_5 + 0, base5_b, 255);
setEffAlphaKey( spep_5 + 166 -5, base5_b, 255);
setEffAlphaKey( spep_5 + 166 -4, base5_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 4, 1, 1 );
setDisp( spep_5 -3 + 20, 1, 0 );

changeAnime( spep_5 -3 + 4, 1, 5 );

setMoveKey( spep_5 -3 + 4, 1, -76.5, -1467.9 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -66.5, -446.2 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -40.5, -270.7 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -28, -185.9 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -18.3, -120.4 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -11.4, -73.9 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -7.3, -46.2 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -6, -36.8 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -5.5, -30.0 , 0 );

setScaleKey( spep_5 -3 + 4, 1, 17.81, 17.81 );
setScaleKey( spep_5 -3 + 6, 1, 6.49, 6.49 );
setScaleKey( spep_5 -3 + 8, 1, 3.93, 3.93 );
setScaleKey( spep_5 -3 + 10, 1, 2.69, 2.69 );
setScaleKey( spep_5 -3 + 12, 1, 1.73, 1.73 );
setScaleKey( spep_5 -3 + 14, 1, 1.04, 1.04 );
setScaleKey( spep_5 -3 + 16, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 18, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 20, 1, 0.45, 0.45 );

setRotateKey( spep_5 -3 + 4, 1, 32.7 );
setRotateKey( spep_5 -3 + 20, 1, 32.7 );


-- ** 音 ** --
SE021 = playSeVer2( spep_5 + 0 -6, 1121, "",spep_5 + 48, 0, 24, -1);	--敵飛んでいく

SE022 = playSeVer2( spep_5 + 24, 1159, "", 0, 0, 0, -1);	--崖爆発

SE023 = playSeVer2( spep_5 + 24, 1011, "", 0, 0, 0, -1);	--崖爆発


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 20);
endPhase( spep_5 + 166 -8);

else


------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


------------------------------------------------------
-- 向かい合う～カットイン(110F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base1_f = entryEffect( spep_1 + 0, SP_01, 0x100, -1, 0, 0, 0); --向かい合う～カットイン　（手前・共有）
setEffMoveKey( spep_1 + 0, base1_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 110 -4 -2, base1_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 110 -4 -2, base1_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_f, 0);
setEffRotateKey( spep_1 + 110 -4 -2, base1_f, 0);
setEffAlphaKey( spep_1 + 0, base1_f, 255);
setEffAlphaKey( spep_1 + 110 -5 -2, base1_f, 255);
setEffAlphaKey( spep_1 + 110 -4 -2, base1_f, 0);

base1_b = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); --向かい合う～カットイン　（奥・共有）
setEffMoveKey( spep_1 + 0, base1_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 110 -4 -2, base1_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 110 -4 -2, base1_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_b, 0);
setEffRotateKey( spep_1 + 110 -4 -2, base1_b, 0);
setEffAlphaKey( spep_1 + 0, base1_b, 255);
setEffAlphaKey( spep_1 + 110 -5 -2, base1_b, 255);
setEffAlphaKey( spep_1 + 110 -4 -2, base1_b, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 18;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40+160, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40+160, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, 80+160, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 110 -4 -2, 1, 0 );

changeAnime( spep_1 + 0, 1, 118 );

-- setMoveKey( spep_1 -3 + 0, 1, 525.8, -87.9 , 0 );
setMoveKey( spep_1 + 0, 1, 472.2, -82.4 , 0 );
setMoveKey( spep_1 + 1, 1, 418.6, -76.8 , 0 );
setMoveKey( spep_1 + 2, 1, 418.6, -76.8 , 0 );
setMoveKey( spep_1 + 3, 1, 365.1, -71.3 , 0 );
setMoveKey( spep_1 + 4, 1, 365.1, -71.3 , 0 );
setMoveKey( spep_1 + 5, 1, 311.5, -65.7 , 0 );
setMoveKey( spep_1 + 6, 1, 311.5, -65.7 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 257.9, -60.2 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 204.4, -54.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 203.8, -54.7 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 203.2, -54.6 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 202.7, -54.6 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 202.2, -54.5 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 201.6, -54.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 201.1, -54.4 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 200.5, -54.3 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 199.9, -54.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 199.4, -54.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 198.9, -54.1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 198.3, -54.1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 197.8, -54 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 197.2, -54 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 196.7, -53.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 196.1, -53.9 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 195.6, -53.8 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 195, -53.8 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 194.5, -53.7 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 194, -53.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 193.4, -53.6 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 192.8, -53.5 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 192.3, -53.5 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 191.8, -53.4 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 191.2, -53.3 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 190.7, -53.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 190.2, -53.2 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 189.6, -53.2 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 189.1, -53.1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 188.5, -53.1 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 188, -53 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 187.4, -53 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 186.9, -52.9 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 186.4, -52.9 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 185.8, -52.8 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 185.2, -52.7 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 184.7, -52.7 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 184.2, -52.6 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 183.6, -52.5 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 183.1, -52.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 182.5, -52.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 182, -52.4 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 181.4, -52.3 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 180.9, -52.3 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 180.3, -52.2 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 179.8, -52.2 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 179.3, -52.1 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 178.7, -52.1 , 0 );
-- setMoveKey( spep_1 -3 + 108, 1, 178.1, -52 , 0 );
setMoveKey( spep_1 -4 + 110 -2, 1, 178.1, -52 , 0 );

-- setScaleKey( spep_1 -3 + 0, 1, 4.93, 4.93 );
setScaleKey( spep_1 + 0, 1, 4.55, 4.55 );
setScaleKey( spep_1 + 1, 1, 4.17, 4.17 );
setScaleKey( spep_1 + 2, 1, 4.17, 4.17 );
setScaleKey( spep_1 + 3, 1, 3.79, 3.79 );
setScaleKey( spep_1 + 4, 1, 3.79, 3.79 );
setScaleKey( spep_1 + 5, 1, 3.41, 3.41 );
setScaleKey( spep_1 + 6, 1, 3.41, 3.41 );
setScaleKey( spep_1 -3 + 10, 1, 3.03, 3.03 );
setScaleKey( spep_1 -3 + 12, 1, 2.65, 2.65 );
setScaleKey( spep_1 -3 + 14, 1, 2.65, 2.65 );
setScaleKey( spep_1 -3 + 16, 1, 2.64, 2.64 );
setScaleKey( spep_1 -3 + 20, 1, 2.64, 2.64 );
setScaleKey( spep_1 -3 + 22, 1, 2.63, 2.63 );
setScaleKey( spep_1 -3 + 24, 1, 2.63, 2.63 );
setScaleKey( spep_1 -3 + 26, 1, 2.62, 2.62 );
setScaleKey( spep_1 -3 + 30, 1, 2.62, 2.62 );
setScaleKey( spep_1 -3 + 32, 1, 2.61, 2.61 );
setScaleKey( spep_1 -3 + 36, 1, 2.61, 2.61 );
setScaleKey( spep_1 -3 + 38, 1, 2.6, 2.6 );
setScaleKey( spep_1 -3 + 40, 1, 2.6, 2.6 );
setScaleKey( spep_1 -3 + 42, 1, 2.59, 2.59 );
setScaleKey( spep_1 -3 + 46, 1, 2.59, 2.59 );
setScaleKey( spep_1 -3 + 48, 1, 2.58, 2.58 );
setScaleKey( spep_1 -3 + 50, 1, 2.58, 2.58 );
setScaleKey( spep_1 -3 + 52, 1, 2.57, 2.57 );
setScaleKey( spep_1 -3 + 56, 1, 2.57, 2.57 );
setScaleKey( spep_1 -3 + 58, 1, 2.56, 2.56 );
setScaleKey( spep_1 -3 + 60, 1, 2.56, 2.56 );
setScaleKey( spep_1 -3 + 62, 1, 2.55, 2.55 );
setScaleKey( spep_1 -3 + 66, 1, 2.55, 2.55 );
setScaleKey( spep_1 -3 + 68, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 72, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 74, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 76, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 78, 1, 2.52, 2.52 );
setScaleKey( spep_1 -3 + 82, 1, 2.52, 2.52 );
setScaleKey( spep_1 -3 + 84, 1, 2.51, 2.51 );
setScaleKey( spep_1 -3 + 86, 1, 2.51, 2.51 );
setScaleKey( spep_1 -3 + 88, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 92, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 94, 1, 2.49, 2.49 );
setScaleKey( spep_1 -3 + 98, 1, 2.49, 2.49 );
setScaleKey( spep_1 -3 + 100, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 102, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 104, 1, 2.47, 2.47 );
setScaleKey( spep_1 -4 + 110 -2, 1, 2.47, 2.47 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 -4 + 110 -2, 1, 0 );


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1);	--入り
setSeVolumeByWorkId( spep_1 + 0, SE001, 84 );

SE002 = playSeVer2( spep_1 + 26, 1018, "", 0, 0, 0, -1);	--顔カットイン


-- ** 次の準備 ** --
spep_c = spep_1 + 110 -4 -2;

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
-- 足を地面に突っ込む（52F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); --足を地面に突っ込む
setEffMoveKey( spep_2 + 0, base2, 0, 0 , 0);
setEffMoveKey( spep_2 + 52 -4, base2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2, 1.0, 1.0);
setEffScaleKey( spep_2 + 52 -4, base2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2, 0);
setEffRotateKey( spep_2 + 52 -4, base2, 0);
setEffAlphaKey( spep_2 + 0, base2, 255);
setEffAlphaKey( spep_2 + 52 -5, base2, 255);
setEffAlphaKey( spep_2 + 52 -4, base2, 0);


-- ** 音 ** --
SE004 = playSeVer2( spep_2 + 0, 1004, "", 0, 0, 0, -1);	--地面に足突っ込む

SE005 = playSeVer2( spep_2 + 26, 1169, "", 0, 0, 0, -1);	--地面に足突っ込む
setSeVolumeByWorkId( spep_2 + 26, SE005, 85 );

SE006 = playSeVer2( spep_2 + 26, 1153, "", 0, 0, 0, -1);	--地面に足突っ込む
setSeVolumeByWorkId( spep_2 + 26, SE006, 77 );

SE007 = playSeVer2( spep_2 + 26, 1017, "", 0, 0, 0, -1);	--地面に足突っ込む
setSeVolumeByWorkId( spep_2 + 26, SE007, 76 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0 );
stopSe( SP_dodge - 12, SE005, 0 );
stopSe( SP_dodge - 12, SE006, 0 );
stopSe( SP_dodge - 12, SE007, 0 );

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
spep_3 = spep_2 + 52 -4;

-------------------------------------------------
-- 地面から蹴り（56F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_10, 0x100, -1, 0, 0, 0); --蹴り
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 56 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 56 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 56 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 56 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 56 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_11, 0x80, -1, 0, 0, 0); --蹴り
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 56 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 56 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 56 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 56 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 56 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 -3 + 0, 1, 117 );

setMoveKey( spep_3 -2 + 2, 1, 42.3, -126.7 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 50.9, -120.7 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 59.7, -114.8 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 68.3, -108.8 , 0 );

setScaleKey( spep_3 -2 + 2, 1, 3.97, 3.97 );
setScaleKey( spep_3 -3 + 4, 1, 3.78, 3.78 );
setScaleKey( spep_3 -3 + 6, 1, 3.6, 3.6 );
setScaleKey( spep_3 -3 + 8, 1, 3.41, 3.41 );

setRotateKey( spep_3 + 0, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -4 + 56, 1, 0 );

changeAnime( spep_3 -3 + 18, 1, 106 );

setMoveKey( spep_3 -3 + 10, 1, 68.7, -108.5 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 69.1, -108.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 69.6, -107.9 , 0 );
setMoveKey( spep_3 -3 + 17, 1, 70, -107.6 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 79.7, -81.1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 95, 1.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 137.1, 50.5 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 119.4, 19.2 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 129.5, 51.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 139.3, 71.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 109.3, 31.7 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 127.1, 79.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 148.7, 50.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 114.3, 57.8 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 131.7, 68.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 133, 71.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 134.3, 73.5 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 135.5, 75.6 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 136.5, 77.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 137.5, 79 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 138.3, 80.3 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 139.1, 81.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 139.7, 82.2 , 0 );
setMoveKey( spep_3 -4 + 56, 1, 139.7, 82.2 , 0 );

setScaleKey( spep_3 -3 + 10, 1, 3.4, 3.4 );
setScaleKey( spep_3 -3 + 12, 1, 3.39, 3.39 );
setScaleKey( spep_3 -3 + 14, 1, 3.38, 3.38 );
setScaleKey( spep_3 -3 + 17, 1, 3.37, 3.37 );
setScaleKey( spep_3 -3 + 18, 1, 3.34, 3.34 );
setScaleKey( spep_3 -3 + 20, 1, 3.33, 3.33 );
setScaleKey( spep_3 -3 + 22, 1, 3.3, 3.3 );
setScaleKey( spep_3 -3 + 24, 1, 3.28, 3.28 );
setScaleKey( spep_3 -3 + 26, 1, 3.25, 3.25 );
setScaleKey( spep_3 -3 + 28, 1, 3.23, 3.23 );
setScaleKey( spep_3 -3 + 30, 1, 3.2, 3.2 );
setScaleKey( spep_3 -3 + 32, 1, 3.18, 3.18 );
setScaleKey( spep_3 -3 + 34, 1, 3.16, 3.16 );
setScaleKey( spep_3 -3 + 36, 1, 3.14, 3.14 );
setScaleKey( spep_3 -3 + 38, 1, 3.12, 3.12 );
setScaleKey( spep_3 -3 + 40, 1, 3.1, 3.1 );
setScaleKey( spep_3 -3 + 42, 1, 3.08, 3.08 );
setScaleKey( spep_3 -3 + 44, 1, 3.07, 3.07 );
setScaleKey( spep_3 -3 + 46, 1, 3.05, 3.05 );
setScaleKey( spep_3 -3 + 48, 1, 3.04, 3.04 );
setScaleKey( spep_3 -3 + 50, 1, 3.02, 3.02 );
setScaleKey( spep_3 -3 + 52, 1, 3.01, 3.01 );
setScaleKey( spep_3 -3 + 54, 1, 3, 3 );
setScaleKey( spep_3 -4 + 56, 1, 3, 3 );

setRotateKey( spep_3 -3 + 17, 1, 0 );
setRotateKey( spep_3 -3 + 18, 1, -61.2 );
setRotateKey( spep_3 -3 + 20, 1, -61.2 );
setRotateKey( spep_3 -3 + 22, 1, -60 );
setRotateKey( spep_3 -3 + 24, 1, -58.9 );
setRotateKey( spep_3 -3 + 26, 1, -57.9 );
setRotateKey( spep_3 -3 + 28, 1, -57 );
setRotateKey( spep_3 -3 + 30, 1, -56 );
setRotateKey( spep_3 -3 + 32, 1, -55.2 );
setRotateKey( spep_3 -3 + 34, 1, -54.4 );
setRotateKey( spep_3 -3 + 36, 1, -53.6 );
setRotateKey( spep_3 -3 + 38, 1, -52.9 );
setRotateKey( spep_3 -3 + 40, 1, -52.3 );
setRotateKey( spep_3 -3 + 42, 1, -51.7 );
setRotateKey( spep_3 -3 + 44, 1, -51.2 );
setRotateKey( spep_3 -3 + 46, 1, -50.7 );
setRotateKey( spep_3 -3 + 48, 1, -50.3 );
setRotateKey( spep_3 -3 + 50, 1, -50 );
setRotateKey( spep_3 -3 + 52, 1, -49.7 );
setRotateKey( spep_3 -3 + 54, 1, -49.4 );
setRotateKey( spep_3 -4 + 56, 1, -49.4 );


-- ** 音 ** --
SE008 = playSeVer2( spep_3 + 10, 1187, "", 0, 0, 0, -1);	--地面から蹴る
setSeVolumeByWorkId( spep_3 + 10, SE008, 84 );

SE009 = playSeVer2( spep_3 + 10, 20, "", 0, 0, 0, -1);	--地面から蹴る
setSeVolumeByWorkId( spep_3 + 10, SE009, 83 );

SE010 = playSeVer2( spep_3 + 10, 1049, "",spep_3 + 38, 0, 16, -1);	--地面から蹴る
setSeVolumeByWorkId( spep_3 + 10, SE010, 74 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 56 -4;

-------------------------------------------------
-- 蹴りと頭突き（172F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_12, 0x100, -1, 0, 0, 0); --蹴りと頭突き
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 172 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 172 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 172 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 172 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 172 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_13, 0x80, -1, 0, 0, 0); --蹴りと頭突き
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 172 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 172 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 172 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 172 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 172 -4, base4_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 82, 1, 1 );
setDisp( spep_4 -3 + 152, 1, 0 );

changeAnime( spep_4 -3 + 82, 1, 106 );
changeAnime( spep_4 -3 + 88, 1, 108 );
changeAnime( spep_4 -3 + 148, 1, 107 );

setMoveKey( spep_4 -3 + 82, 1, 78, 78.7 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 85.7, 73.5 , 0 );
setMoveKey( spep_4 -3 + 87, 1, 93.7, 68.6 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 57.8, 37.5 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 76, 48.7 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 54.4, 35.9 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 34.6, 15.2 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 50.7, 52.1 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 61, 13.4 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 37.3, 44.6 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 45.5, 19.8 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 53.9, 39.1 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 42.2, 20.3 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 34.5, 39.5 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 38.5, 22.5 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 38.8, 31.7 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 35.2, 27 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 32.4, 25.7 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 29.9, 24.6 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 27.1, 23.3 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 24.3, 21.9 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 34.5, 19.9 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 45, 18.2 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 55.1, 16.1 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 65.5, 14.4 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 98.1, 42.4 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 46.3, -21.9 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 70.8, 38.1 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 112.9, -19.5 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 137.5, 28.5 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 126.1, -15.5 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 102.6, 0.2 , 0 );
setMoveKey( spep_4 -3 + 147, 1, 159.2, -19.7 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 397.4, 318.5 , 0 );
setMoveKey( spep_4 -3 + 150, 1, 540.2, 377.2 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 992.1, 725.5 , 0 );

setScaleKey( spep_4 -3 + 82, 1, 2.49, 2.49 );
setScaleKey( spep_4 -3 + 84, 1, 2.3, 2.3 );
setScaleKey( spep_4 -3 + 87, 1, 2.11, 2.11 );
setScaleKey( spep_4 -3 + 88, 1, 2.35, 2.35 );
setScaleKey( spep_4 -3 + 90, 1, 2.37, 2.37 );
setScaleKey( spep_4 -3 + 92, 1, 2.4, 2.4 );
setScaleKey( spep_4 -3 + 94, 1, 2.42, 2.42 );
setScaleKey( spep_4 -3 + 96, 1, 2.44, 2.44 );
setScaleKey( spep_4 -3 + 98, 1, 2.46, 2.46 );
setScaleKey( spep_4 -3 + 100, 1, 2.48, 2.48 );
setScaleKey( spep_4 -3 + 102, 1, 2.5, 2.5 );
setScaleKey( spep_4 -3 + 104, 1, 2.52, 2.52 );
setScaleKey( spep_4 -3 + 106, 1, 2.54, 2.54 );
setScaleKey( spep_4 -3 + 108, 1, 2.57, 2.57 );
setScaleKey( spep_4 -3 + 110, 1, 2.59, 2.59 );
setScaleKey( spep_4 -3 + 112, 1, 2.61, 2.61 );
setScaleKey( spep_4 -3 + 114, 1, 2.63, 2.63 );
setScaleKey( spep_4 -3 + 116, 1, 2.66, 2.66 );
setScaleKey( spep_4 -3 + 118, 1, 2.7, 2.7 );
setScaleKey( spep_4 -3 + 120, 1, 2.73, 2.73 );
setScaleKey( spep_4 -3 + 122, 1, 2.76, 2.76 );
setScaleKey( spep_4 -3 + 124, 1, 2.99, 2.99 );
setScaleKey( spep_4 -3 + 126, 1, 3.22, 3.22 );
setScaleKey( spep_4 -3 + 128, 1, 3.45, 3.45 );
setScaleKey( spep_4 -3 + 130, 1, 3.68, 3.68 );
setScaleKey( spep_4 -3 + 132, 1, 3.69, 3.69 );
setScaleKey( spep_4 -3 + 134, 1, 3.7, 3.7 );
setScaleKey( spep_4 -3 + 136, 1, 3.7, 3.7 );
setScaleKey( spep_4 -3 + 138, 1, 3.72, 3.72 );
setScaleKey( spep_4 -3 + 140, 1, 3.72, 3.72 );
setScaleKey( spep_4 -3 + 142, 1, 3.73, 3.73 );
setScaleKey( spep_4 -3 + 144, 1, 3.74, 3.74 );
setScaleKey( spep_4 -3 + 147, 1, 3.75, 3.75 );
setScaleKey( spep_4 -3 + 148, 1, 2.37, 2.37 );
setScaleKey( spep_4 -3 + 150, 1, 2.93, 2.93 );
setScaleKey( spep_4 -3 + 152, 1, 4.63, 4.63 );

setRotateKey( spep_4 -3 + 82, 1, -47.4 );
setRotateKey( spep_4 -3 + 87, 1, -47.4 );
setRotateKey( spep_4 -3 + 88, 1, 0 );
setRotateKey( spep_4 -3 + 147, 1, 0 );
setRotateKey( spep_4 -3 + 148, 1, -31.7 );
setRotateKey( spep_4 -3 + 152, 1, -31.7 );


-- ** 音 ** --
SE011 = playSeVer2( spep_4 + 56, 1321, "",spep_4 + 98, 4, 10, 0.5);	--足伸びる
setStartTimeMs( SE011,  1150 );

SE012 = playSeVer2( spep_4 + 10, 1153, "",spep_4 + 48, 0, 20, -1);	--地面から足を抜く

SE013 = playSeVer2( spep_4 + 36, 1003, "", 0, 0, 0, -1);	--助走

SE014 = playSeVer2( spep_4 + 56, 1027, "",spep_4 + 98, 0, 10, -1);	--足伸びる
setSeVolumeByWorkId( spep_4 + 56, SE014, 84 );

SE015 = playSeVer2( spep_4 + 58, 1177, "",spep_4 + 98, 0, 10, -1);	--足伸びる
setSeVolumeByWorkId( spep_4 + 58, SE015, 82 );

SE016 = playSeVer2( spep_4 + 82, 1110, "", 0, 0, 0, -1);	--キックヒット
setSeVolumeByWorkId( spep_4 + 82, SE016, 87 );

SE017 = playSeVer2( spep_4 + 82, 1187, "",spep_4 + 134, 0, 30, -1);	--キックヒット
setSeVolumeByWorkId( spep_4 + 82, SE017, 87 );

SE018 = playSeVer2( spep_4 + 106, 1320, "",spep_4 + 150, 8, 18, 0.5);	--ブウ近づく
setSeVolumeByWorkId( spep_4 + 106, SE018, 112 );
setStartTimeMs( SE018,  400 );
setPitch( spep_4 + 106, SE018, -300 );
setTimeStretch( SE017, 0.8, 30, 4 );

SE019 = playSeVer2( spep_4 + 128, 1153, "", 0, 0, 0, -1);	--頭突き
setSeVolumeByWorkId( spep_4 + 128, SE019, 81 );

SE020 = playSeVer2( spep_4 + 128, 1120, "", 0, 0, 0, -1);	--頭突き


-- ** 次の準備 ** --
spep_5 = spep_4 + 172 -4;

-------------------------------------------------
-- 壁に激突（166F -4）
-------------------------------------------------

-- ** エフェクト等 ** --
base5_f = entryEffect( spep_5 + 0, SP_14, 0x100, -1, 0, 0, 0); --壁に激突
setEffMoveKey( spep_5 + 0, base5_f, 0, 0 , 0);
setEffMoveKey( spep_5 + 166 -4, base5_f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_f, 1.0, 1.0);
setEffScaleKey( spep_5 + 166 -4, base5_f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_f, 0);
setEffRotateKey( spep_5 + 166 -4, base5_f, 0);
setEffAlphaKey( spep_5 + 0, base5_f, 255);
setEffAlphaKey( spep_5 + 166 -5, base5_f, 255);
setEffAlphaKey( spep_5 + 166 -4, base5_f, 0);

base5_b = entryEffect( spep_5 + 0, SP_15, 0x80, -1, 0, 0, 0); --壁に激突
setEffMoveKey( spep_5 + 0, base5_b, 0, 0 , 0);
setEffMoveKey( spep_5 + 166 -4, base5_b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_b, 1.0, 1.0);
setEffScaleKey( spep_5 + 166 -4, base5_b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_b, 0);
setEffRotateKey( spep_5 + 166 -4, base5_b, 0);
setEffAlphaKey( spep_5 + 0, base5_b, 255);
setEffAlphaKey( spep_5 + 166 -5, base5_b, 255);
setEffAlphaKey( spep_5 + 166 -4, base5_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 4, 1, 1 );
setDisp( spep_5 -3 + 20, 1, 0 );

changeAnime( spep_5 -3 + 4, 1, 5 );

setMoveKey( spep_5 -3 + 4, 1, -76.5, -1467.9 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -66.5, -446.2 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -40.5, -270.7 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -28, -185.9 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -18.3, -120.4 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -11.4, -73.9 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -7.3, -46.2 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -6, -36.8 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -5.5, -30.0 , 0 );

setScaleKey( spep_5 -3 + 4, 1, 17.81, 17.81 );
setScaleKey( spep_5 -3 + 6, 1, 6.49, 6.49 );
setScaleKey( spep_5 -3 + 8, 1, 3.93, 3.93 );
setScaleKey( spep_5 -3 + 10, 1, 2.69, 2.69 );
setScaleKey( spep_5 -3 + 12, 1, 1.73, 1.73 );
setScaleKey( spep_5 -3 + 14, 1, 1.04, 1.04 );
setScaleKey( spep_5 -3 + 16, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 18, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 20, 1, 0.45, 0.45 );

setRotateKey( spep_5 -3 + 4, 1, 32.7 );
setRotateKey( spep_5 -3 + 20, 1, 32.7 );


-- ** 音 ** --
SE021 = playSeVer2( spep_5 + 0 -6, 1121, "",spep_5 + 48, 0, 24, -1);	--敵飛んでいく

SE022 = playSeVer2( spep_5 + 24, 1159, "", 0, 0, 0, -1);	--崖爆発

SE023 = playSeVer2( spep_5 + 24, 1011, "", 0, 0, 0, -1);	--崖爆発


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 20);
endPhase( spep_5 + 166 -8);


end
