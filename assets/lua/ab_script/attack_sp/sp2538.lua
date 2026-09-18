--1026430:魔人ブウ(悪)_アサルトレイン
--sp_effect_a1_00400

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
SP_01 = 161764;	--にやりと笑い方腕上げる	ef_001
SP_02 = 161765;	--手のアップで気弾生成	ef_002
SP_03 = 161766;	--気功を上空に放つ	ef_003
SP_04 = 161767; --上空から大量の気功  ef_004
SP_05 = 161768; --上空から大量の気功  ef_004_b
SP_06 = 161769; --敵に気功が当たる（全体攻撃あり）  ef_005
SP_07 = 161770; --敵に気功が当たる  ef_005_b

--敵側
SP_06r = 161771; --敵に気功が当たる（全体攻撃あり）  ef_005_r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[
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
]]

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;

--------------------------

if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

--テンプレ構文
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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- にやりと笑い方腕上げる(118F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --にやりと笑い方腕上げる	ef_001
setEffMoveKey( spep_0 + 0, first, 0, 0 , 0 );
setEffMoveKey( spep_0 + 118, first, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 118, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 118, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 118, first, 255 );

spep_x = spep_0 + 38 -8;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 0 -28, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -170, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -170, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--ズーム
SE001 = playSeVer2( spep_0 + 6, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE001, 85 );

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--腕上げる
SE003 = playSeVer2( spep_0 + 58, 1004, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 110, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 白背景 ** --
entryFadeBg( spep_0 + 0, 0, 118 + 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);       -- 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 118;

------------------------------------------------------
-- 手のアップで気弾生成(80F)
------------------------------------------------------
-- ** エフェクト等 ** --
hand = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --手のアップで気弾生成    ef_002
setEffMoveKey( spep_1 + 0, hand, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, hand, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hand, 1.0, 1.0 );
setEffScaleKey( spep_1 + 80, hand, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hand, 0 );
setEffRotateKey( spep_1 + 80, hand, 0 );
setEffAlphaKey( spep_1 + 0, hand, 255 );
setEffAlphaKey( spep_1 + 80, hand, 255 );

-- ** 音 ** --
--気弾溜め
SE004 = playSeVer2( spep_1 + 6, 1263, "",spep_1 + 98, 0, 14, 0.6);
SE005 = playSeVer2( spep_1 + 16, 1296, "",spep_1 + 98, 0, 14, 0.6);
SE006 = playSeVer2( spep_1 + 16, 1282, "",spep_1 + 98, 0, 14, 0.6);
SE007 = playSeVer2( spep_1 + 16, 1356, "",spep_1 + 98, 0, 14, 0.6);
SE008 = playSeVer2( spep_1 + 44, 1178, "",spep_1 + 98, 0, 14, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 80 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 80;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 気功を上空に放つ(98F)
------------------------------------------------------
-- ** エフェクト等 ** --
hanatsu = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --気功を上空に放つ	ef_003
setEffMoveKey( spep_3 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 94, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_3 + 94, hanatsu, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hanatsu, 0 );
setEffRotateKey( spep_3 + 94, hanatsu, 0 );
setEffAlphaKey( spep_3 + 0, hanatsu, 255 );
setEffAlphaKey( spep_3 + 94, hanatsu, 255 );

-- ** 音 ** --
--気弾発射
SE010 = playSeVer2( spep_3 + 0, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE010, 84 );
SE011 = playSeVer2( spep_3 + 0, 1213, "",spep_3 + 188, 0, 100, -1);
setSeVolumeByWorkId( spep_3 + 0, SE011, 79 );
SE012 = playSeVer2( spep_3 + 0, 1145, "", 0, 0, 0, -1);
setPitch( spep_3 + 0, SE012, -500 );
setTimeStretch( SE012, 0.67, 30, 4 );
SE013 = playSeVer2( spep_3 + 0, 1226, "",spep_3 + 446, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 0, SE013, 76 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 94 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 上空から大量の気功(158F)
------------------------------------------------------
-- ** エフェクト等 ** --
kikou_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --上空から大量の気功 ef_004
setEffMoveKey( spep_4 + 0, kikou_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 158, kikou_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kikou_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 158, kikou_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kikou_f, 0 );
setEffRotateKey( spep_4 + 158, kikou_f, 0 );
setEffAlphaKey( spep_4 + 0, kikou_f, 255 );
setEffAlphaKey( spep_4 + 158 -2, kikou_f, 255 );
setEffAlphaKey( spep_4 + 158 -1, kikou_f, 255 );
setEffAlphaKey( spep_4 + 158, kikou_f, 0 );

kikou_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --上空から大量の気功 ef_004_b
setEffMoveKey( spep_4 + 0, kikou_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 158, kikou_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kikou_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 158, kikou_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kikou_b, 0 );
setEffRotateKey( spep_4 + 158, kikou_b, 0 );
setEffAlphaKey( spep_4 + 0, kikou_b, 255 );
setEffAlphaKey( spep_4 + 158 -2, kikou_b, 255 );
setEffAlphaKey( spep_4 + 158 -1, kikou_b, 255 );
setEffAlphaKey( spep_4 + 158, kikou_b, 0 );

offset = -1;

-- ** 敵キャラクター ** --
setDisp( spep_4 + 39, 1, 1 );
changeAnime( spep_4 + 39, 1, 102 );

setMoveKey( spep_4 + 40 + offset, 1, 194.1, -350.7 , 0 );
setMoveKey( spep_4 + 41 + offset, 1, 194.1, -350.7 , 0 );
setMoveKey( spep_4 + 42 + offset, 1, 193.7, -350.5 , 0 );
setMoveKey( spep_4 + 43 + offset, 1, 193.7, -350.5 , 0 );
setMoveKey( spep_4 + 44 + offset, 1, 193.3, -350.3 , 0 );
setMoveKey( spep_4 + 45 + offset, 1, 193.3, -350.3 , 0 );
setMoveKey( spep_4 + 46 + offset, 1, 192.9, -350.1 , 0 );
setMoveKey( spep_4 + 47 + offset, 1, 192.9, -350.1 , 0 );
setMoveKey( spep_4 + 48 + offset, 1, 192.5, -349.9 , 0 );
setMoveKey( spep_4 + 49 + offset, 1, 192.5, -349.9 , 0 );
setMoveKey( spep_4 + 50 + offset, 1, 192.1, -349.6 , 0 );
setMoveKey( spep_4 + 51 + offset, 1, 192.1, -349.6 , 0 );
setMoveKey( spep_4 + 52 + offset, 1, 191.7, -349.4 , 0 );
setMoveKey( spep_4 + 53 + offset, 1, 191.7, -349.4 , 0 );
setMoveKey( spep_4 + 54 + offset, 1, 191.3, -349.1 , 0 );
setMoveKey( spep_4 + 55 + offset, 1, 191.3, -349.1 , 0 );
setMoveKey( spep_4 + 56 + offset, 1, 190.9, -349 , 0 );
setMoveKey( spep_4 + 57 + offset, 1, 190.9, -349 , 0 );
setMoveKey( spep_4 + 58 + offset, 1, 190.5, -348.7 , 0 );
setMoveKey( spep_4 + 59 + offset, 1, 190.5, -348.7 , 0 );
setMoveKey( spep_4 + 60 + offset, 1, 194.4, -344.2 , 0 );
setMoveKey( spep_4 + 61 + offset, 1, 194.4, -344.2 , 0 );
setMoveKey( spep_4 + 62 + offset, 1, 190, -345.9 , 0 );
setMoveKey( spep_4 + 63 + offset, 1, 190, -345.9 , 0 );
setMoveKey( spep_4 + 64 + offset, 1, 191.8, -349.6 , 0 );
setMoveKey( spep_4 + 65 + offset, 1, 191.8, -349.6 , 0 );
setMoveKey( spep_4 + 66 + offset, 1, 189.5, -345.1 , 0 );
setMoveKey( spep_4 + 67 + offset, 1, 189.5, -345.1 , 0 );
setMoveKey( spep_4 + 68 + offset, 1, 191.4, -344.7 , 0 );
setMoveKey( spep_4 + 69 + offset, 1, 191.4, -344.7 , 0 );
setMoveKey( spep_4 + 70 + offset, 1, 189.1, -346.4 , 0 );
setMoveKey( spep_4 + 71 + offset, 1, 189.1, -346.4 , 0 );
setMoveKey( spep_4 + 72 + offset, 1, 186.9, -343.9 , 0 );
setMoveKey( spep_4 + 73 + offset, 1, 186.9, -343.9 , 0 );
setMoveKey( spep_4 + 74 + offset, 1, 188.8, -341.5 , 0 );
setMoveKey( spep_4 + 75 + offset, 1, 188.8, -341.5 , 0 );
setMoveKey( spep_4 + 76 + offset, 1, 190.6, -343.2 , 0 );
setMoveKey( spep_4 + 77 + offset, 1, 190.6, -343.2 , 0 );
setMoveKey( spep_4 + 78 + offset, 1, 188.3, -342.8 , 0 );
setMoveKey( spep_4 + 79 + offset, 1, 188.3, -342.8 , 0 );
setMoveKey( spep_4 + 80 + offset, 1, 186, -340.4 , 0 );
setMoveKey( spep_4 + 81 + offset, 1, 186, -340.4 , 0 );
setMoveKey( spep_4 + 82 + offset, 1, 187.9, -338 , 0 );
setMoveKey( spep_4 + 83 + offset, 1, 187.9, -338 , 0 );
setMoveKey( spep_4 + 84 + offset, 1, 189.8, -339.8 , 0 );
setMoveKey( spep_4 + 85 + offset, 1, 189.8, -339.8 , 0 );
setMoveKey( spep_4 + 86 + offset, 1, 187.5, -341.5 , 0 );
setMoveKey( spep_4 + 87 + offset, 1, 187.5, -341.5 , 0 );
setMoveKey( spep_4 + 88 + offset, 1, 187.3, -341.2 , 0 );
setMoveKey( spep_4 + 89 + offset, 1, 187.3, -341.2 , 0 );
setMoveKey( spep_4 + 90 + offset, 1, 191.2, -344.9 , 0 );
setMoveKey( spep_4 + 91 + offset, 1, 191.2, -344.9 , 0 );
setMoveKey( spep_4 + 92 + offset, 1, 187.7, -345.3 , 0 );
setMoveKey( spep_4 + 93 + offset, 1, 187.7, -345.3 , 0 );
setMoveKey( spep_4 + 94 + offset, 1, 188.4, -341.8 , 0 );
setMoveKey( spep_4 + 95 + offset, 1, 188.4, -341.8 , 0 );
setMoveKey( spep_4 + 96 + offset, 1, 190.2, -339.2 , 0 );
setMoveKey( spep_4 + 97 + offset, 1, 190.2, -339.2 , 0 );
setMoveKey( spep_4 + 98 + offset, 1, 186, -338.5 , 0 );
setMoveKey( spep_4 + 99 + offset, 1, 186, -338.5 , 0 );

setScaleKey( spep_4 + 40 + offset, 1, 0.69, 0.69 );
setScaleKey( spep_4 + 69 + offset, 1, 0.69, 0.69 );
setScaleKey( spep_4 + 70 + offset, 1, 0.68, 0.68 );

setRotateKey( spep_4 + 40 + offset, 1, -31 );

-- ** 音 ** --
--アサルトレイン
SE014 = playSeVer2( spep_4 + 0, 1409, "",spep_4 + 352, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 0, SE014, 248 );
SE015 = playSeVer2( spep_4 + 0, 1410, "",spep_4 + 352, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 0, SE015, 248 );
SE016 = playSeVer2( spep_4 + 6, 1403, "",spep_4 + 352, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 6, SE016, 108 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 158 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 98; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 186, -338.5 , 0 );
    setMoveKey( SP_dodge + 2, 1, 188.6, -339.7 , 0 );
    setMoveKey( SP_dodge + 4, 1, 186.7, -332.4 , 0 );
    setMoveKey( SP_dodge + 6, 1, 192.9, -333.2 , 0 );
    setMoveKey( SP_dodge + 8, 1, 187.6, -337.4 , 0 );
    setMoveKey( SP_dodge + 10, 1, 190.5, -339.6 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.68, 0.68 );
    setScaleKey( SP_dodge + 10, 1, 0.68, 0.68 );

    setRotateKey( SP_dodge + 0, 1, -31 );
    setRotateKey( SP_dodge + 10, 1, -31 );

    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** 敵キャラクター ** --
setMoveKey( spep_4 + 100 + offset, 1, 188.6, -339.7 , 0 );
setMoveKey( spep_4 + 101 + offset, 1, 188.6, -339.7 , 0 );
setMoveKey( spep_4 + 102 + offset, 1, 186.7, -332.4 , 0 );
setMoveKey( spep_4 + 103 + offset, 1, 186.7, -332.4 , 0 );
setMoveKey( spep_4 + 104 + offset, 1, 192.9, -333.2 , 0 );
setMoveKey( spep_4 + 105 + offset, 1, 192.9, -333.2 , 0 );
setMoveKey( spep_4 + 106 + offset, 1, 187.6, -337.4 , 0 );
setMoveKey( spep_4 + 107 + offset, 1, 187.6, -337.4 , 0 );
setMoveKey( spep_4 + 108 + offset, 1, 190.5, -339.6 , 0 );
setMoveKey( spep_4 + 109 + offset, 1, 190.5, -339.6 , 0 );
setMoveKey( spep_4 + 110 + offset, 1, 189.2, -333.6 , 0 );
setMoveKey( spep_4 + 111 + offset, 1, 189.2, -333.6 , 0 );
setMoveKey( spep_4 + 112 + offset, 1, 184.8, -335.3 , 0 );
setMoveKey( spep_4 + 113 + offset, 1, 184.8, -335.3 , 0 );
setMoveKey( spep_4 + 114 + offset, 1, 186.7, -339 , 0 );
setMoveKey( spep_4 + 115 + offset, 1, 186.7, -339 , 0 );
setMoveKey( spep_4 + 116 + offset, 1, 184.4, -334.4 , 0 );
setMoveKey( spep_4 + 117 + offset, 1, 184.4, -334.4 , 0 );
setMoveKey( spep_4 + 118 + offset, 1, 186.2, -334.1 , 0 );
setMoveKey( spep_4 + 119 + offset, 1, 186.2, -334.1 , 0 );
setMoveKey( spep_4 + 120 + offset, 1, 183.9, -335.8 , 0 );
setMoveKey( spep_4 + 121 + offset, 1, 183.9, -335.8 , 0 );
setMoveKey( spep_4 + 122 + offset, 1, 181.7, -333.3 , 0 );
setMoveKey( spep_4 + 123 + offset, 1, 181.7, -333.3 , 0 );
setMoveKey( spep_4 + 124 + offset, 1, 183.6, -330.8 , 0 );
setMoveKey( spep_4 + 125 + offset, 1, 183.6, -330.8 , 0 );
setMoveKey( spep_4 + 126 + offset, 1, 185.4, -332.6 , 0 );
setMoveKey( spep_4 + 127 + offset, 1, 185.4, -332.6 , 0 );
setMoveKey( spep_4 + 128 + offset, 1, 183.1, -332.2 , 0 );
setMoveKey( spep_4 + 129 + offset, 1, 183.1, -332.2 , 0 );
setMoveKey( spep_4 + 130 + offset, 1, 180.9, -329.8 , 0 );
setMoveKey( spep_4 + 131 + offset, 1, 180.9, -329.8 , 0 );
setMoveKey( spep_4 + 132 + offset, 1, 182.8, -327.4 , 0 );
setMoveKey( spep_4 + 133 + offset, 1, 182.8, -327.4 , 0 );
setMoveKey( spep_4 + 134 + offset, 1, 184.6, -329.2 , 0 );
setMoveKey( spep_4 + 135 + offset, 1, 184.6, -329.2 , 0 );
setMoveKey( spep_4 + 136 + offset, 1, 182.3, -330.9 , 0 );
setMoveKey( spep_4 + 137 + offset, 1, 182.3, -330.9 , 0 );
setMoveKey( spep_4 + 138 + offset, 1, 182.1, -330.5 , 0 );
setMoveKey( spep_4 + 139 + offset, 1, 182.1, -330.5 , 0 );
setMoveKey( spep_4 + 140 + offset, 1, 186, -334.3 , 0 );
setMoveKey( spep_4 + 141 + offset, 1, 186, -334.3 , 0 );
setMoveKey( spep_4 + 142 + offset, 1, 182.6, -334.7 , 0 );
setMoveKey( spep_4 + 143 + offset, 1, 182.6, -334.7 , 0 );
setMoveKey( spep_4 + 144 + offset, 1, 183.3, -331.2 , 0 );
setMoveKey( spep_4 + 145 + offset, 1, 183.3, -331.2 , 0 );
setMoveKey( spep_4 + 146 + offset, 1, 185, -328.6 , 0 );
setMoveKey( spep_4 + 147 + offset, 1, 185, -328.6 , 0 );
setMoveKey( spep_4 + 148 + offset, 1, 181.2, -329.6 , 0 );
setMoveKey( spep_4 + 149 + offset, 1, 181.2, -329.6 , 0 );
setMoveKey( spep_4 + 150 + offset, 1, 182.9, -327.3 , 0 );
setMoveKey( spep_4 + 151 + offset, 1, 182.9, -327.3 , 0 );
setMoveKey( spep_4 + 152 + offset, 1, 180.6, -329 , 0 );
setMoveKey( spep_4 + 153 + offset, 1, 180.6, -329 , 0 );
setMoveKey( spep_4 + 154 + offset, 1, 178.4, -326.5 , 0 );
setMoveKey( spep_4 + 155 + offset, 1, 178.4, -326.5 , 0 );
setMoveKey( spep_4 + 156 + offset, 1, 180.3, -324.1 , 0 );
setMoveKey( spep_4 + 157 + offset, 1, 180.3, -324.1 , 0 );
setMoveKey( spep_4 + 158 + offset, 1, 182.1, -325.8 , 0 );

setScaleKey( spep_4 + 110 + offset, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 111 + offset, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 112 + offset, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 152 + offset, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 153 + offset, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 154 + offset, 1, 0.66, 0.66 );
setScaleKey( spep_4 + 158 + offset, 1, 0.66, 0.66 );

setRotateKey( spep_4 + 158 + offset, 1, -31 );

-- ** 音 ** --
--連続爆発
SE017 = playSeVer2( spep_4 + 98 -20, 1024, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_4 + 126 -20, 1023, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_5 = spep_4 + 158;

------------------------------------------------------
-- 敵に気功が当たる(178F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --敵に気功が当たる（全体攻撃あり） ef_005
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 178, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 178, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 178, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 178, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --敵に気功が当たる ef_005_b
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 178, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 178, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 178, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 178, finish_b, 255 );

a1 = 1;
-- ** 敵キャラクター ** --
changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5 -a1 + 32, 1, 106 );

setMoveKey( spep_5 + 0, 1, 233.9, -387.1 , 0 );
setMoveKey( spep_5 -a1 + 2, 1, 188.3, -329.9 , 0 );
setMoveKey( spep_5 -a1 + 3, 1, 188.3, -329.9 , 0 );
setMoveKey( spep_5 -a1 + 4, 1, 168.7, -304.9 , 0 );
setMoveKey( spep_5 -a1 + 5, 1, 168.7, -304.9 , 0 );
setMoveKey( spep_5 -a1 + 5, 1, 168.7, -304.9 , 0 );
setMoveKey( spep_5 -a1 + 6, 1, 153.5, -285.4 , 0 );
setMoveKey( spep_5 -a1 + 7, 1, 153.5, -285.4 , 0 );
setMoveKey( spep_5 -a1 + 7, 1, 153.5, -285.4 , 0 );
setMoveKey( spep_5 -a1 + 8, 1, 140.8, -269 , 0 );
setMoveKey( spep_5 -a1 + 9, 1, 140.8, -269 , 0 );
setMoveKey( spep_5 -a1 + 9, 1, 140.8, -269 , 0 );
setMoveKey( spep_5 -a1 + 10, 1, 129.7, -254.5 , 0 );
setMoveKey( spep_5 -a1 + 11, 1, 129.7, -254.5 , 0 );
setMoveKey( spep_5 -a1 + 11, 1, 129.7, -254.5 , 0 );
setMoveKey( spep_5 -a1 + 12, 1, 119.9, -241.6 , 0 );
setMoveKey( spep_5 -a1 + 13, 1, 119.9, -241.6 , 0 );
setMoveKey( spep_5 -a1 + 13, 1, 119.9, -241.6 , 0 );
setMoveKey( spep_5 -a1 + 14, 1, 111.2, -230.1 , 0 );
setMoveKey( spep_5 -a1 + 31, 1, 111.2, -230.1 , 0 );
setMoveKey( spep_5 -a1 + 31, 1, 111.2, -230.1 , 0 );
setMoveKey( spep_5 -a1 + 32, 1, 113.8, -212.5 , 0 ); --106
setMoveKey( spep_5 -a1 + 33, 1, 113.8, -212.5 , 0 );
setMoveKey( spep_5 -a1 + 34, 1, 110.9, -216.7 , 0 );
setMoveKey( spep_5 -a1 + 35, 1, 110.9, -216.7 , 0 );
setMoveKey( spep_5 -a1 + 36, 1, 114.3, -218.1 , 0 );
setMoveKey( spep_5 -a1 + 37, 1, 114.3, -218.1 , 0 );
setMoveKey( spep_5 -a1 + 38, 1, 112.3, -215.7 , 0 );
setMoveKey( spep_5 -a1 + 39, 1, 112.3, -215.7 , 0 );
setMoveKey( spep_5 -a1 + 40, 1, 115.1, -218.1 , 0 );
setMoveKey( spep_5 -a1 + 41, 1, 115.1, -218.1 , 0 );
setMoveKey( spep_5 -a1 + 42, 1, 110.6, -215.6 , 0 );
setMoveKey( spep_5 -a1 + 43, 1, 110.6, -215.6 , 0 );
setMoveKey( spep_5 -a1 + 44, 1, 115.1, -218.9 , 0 );
setMoveKey( spep_5 -a1 + 45, 1, 115.1, -218.9 , 0 );
setMoveKey( spep_5 -a1 + 46, 1, 112.1, -216 , 0 );
setMoveKey( spep_5 -a1 + 47, 1, 112.1, -216 , 0 );
setMoveKey( spep_5 -a1 + 48, 1, 112.2, -218.3 , 0 );
setMoveKey( spep_5 -a1 + 49, 1, 112.2, -218.3 , 0 );
setMoveKey( spep_5 -a1 + 50, 1, 113.1, -218.6 , 0 );
setMoveKey( spep_5 -a1 + 51, 1, 113.1, -218.6 , 0 );
setMoveKey( spep_5 -a1 + 52, 1, 114, -218.7 , 0 );
setMoveKey( spep_5 -a1 + 53, 1, 114, -218.7 , 0 );
setMoveKey( spep_5 -a1 + 54, 1, 87.8, -220.6 , 0 );
setMoveKey( spep_5 -a1 + 55, 1, 87.8, -220.6 , 0 );
setMoveKey( spep_5 -a1 + 56, 1, 130, -232.3 , 0 );
setMoveKey( spep_5 -a1 + 57, 1, 130, -232.3 , 0 );
setMoveKey( spep_5 -a1 + 58, 1, 94.4, -216.5 , 0 );
setMoveKey( spep_5 -a1 + 59, 1, 94.4, -216.5 , 0 );
setMoveKey( spep_5 -a1 + 60, 1, 121.1, -222.7 , 0 );
setMoveKey( spep_5 -a1 + 61, 1, 121.1, -222.7 , 0 );
setMoveKey( spep_5 -a1 + 62, 1, 96.1, -226.2 , 0 );
setMoveKey( spep_5 -a1 + 63, 1, 96.1, -226.2 , 0 );
setMoveKey( spep_5 -a1 + 64, 1, 110.5, -210.6 , 0 );
setMoveKey( spep_5 -a1 + 65, 1, 110.5, -210.6 , 0 );
setMoveKey( spep_5 -a1 + 66, 1, 111.2, -228.8 , 0 );
setMoveKey( spep_5 -a1 + 67, 1, 111.2, -228.8 , 0 );
setMoveKey( spep_5 -a1 + 68, 1, 110.5, -213.2 , 0 );
setMoveKey( spep_5 -a1 + 69, 1, 110.5, -213.2 , 0 );
setMoveKey( spep_5 -a1 + 70, 1, 122.9, -224.6 , 0 );
setMoveKey( spep_5 -a1 + 71, 1, 122.9, -224.6 , 0 );
setMoveKey( spep_5 -a1 + 72, 1, 110, -216.6 , 0 );
setMoveKey( spep_5 -a1 + 73, 1, 110, -216.6 , 0 );
setMoveKey( spep_5 -a1 + 74, 1, 114.3, -211 , 0 );
setMoveKey( spep_5 -a1 + 75, 1, 114.3, -211 , 0 );
setMoveKey( spep_5 -a1 + 76, 1, 106.2, -220.6 , 0 );
setMoveKey( spep_5 -a1 + 77, 1, 106.2, -220.6 , 0 );
setMoveKey( spep_5 -a1 + 78, 1, 113.2, -223.5 , 0 );
setMoveKey( spep_5 -a1 + 79, 1, 113.2, -223.5 , 0 );
setMoveKey( spep_5 -a1 + 80, 1, 114.7, -218.2 , 0 );
setMoveKey( spep_5 -a1 + 81, 1, 114.7, -218.2 , 0 );
setMoveKey( spep_5 -a1 + 82, 1, 111.6, -224.1 , 0 );
setMoveKey( spep_5 -a1 + 83, 1, 111.6, -224.1 , 0 );
setMoveKey( spep_5 -a1 + 84, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_5 -a1 + 85, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_5 -a1 + 86, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 87, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 88, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 89, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 90, 1, 113.1, -217.5 , 0 );
setMoveKey( spep_5 -a1 + 91, 1, 113.1, -217.5 , 0 );
setMoveKey( spep_5 -a1 + 92, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 93, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 94, 1, 113.9, -216.6 , 0 );
setMoveKey( spep_5 -a1 + 95, 1, 113.9, -216.6 , 0 );
setMoveKey( spep_5 -a1 + 96, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 97, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 98, 1, 114.1, -218 , 0 );
setMoveKey( spep_5 -a1 + 99, 1, 114.1, -218 , 0 );
setMoveKey( spep_5 -a1 + 100, 1, 112.3, -218.7 , 0 );
setMoveKey( spep_5 -a1 + 101, 1, 112.3, -218.7 , 0 );
setMoveKey( spep_5 -a1 + 102, 1, 114.7, -221.7 , 0 );
setMoveKey( spep_5 -a1 + 103, 1, 114.7, -221.7 , 0 );
setMoveKey( spep_5 -a1 + 104, 1, 111.6, -220 , 0 );
setMoveKey( spep_5 -a1 + 105, 1, 111.6, -220 , 0 );
setMoveKey( spep_5 -a1 + 106, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_5 -a1 + 107, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_5 -a1 + 108, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 109, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 110, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 111, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 112, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 113, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 114, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_5 -a1 + 115, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_5 -a1 + 116, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 117, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 118, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_5 -a1 + 119, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_5 -a1 + 120, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 121, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 122, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_5 -a1 + 123, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_5 -a1 + 124, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 125, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 126, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_5 -a1 + 127, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_5 -a1 + 128, 1, 112.1, -219 , 0 );
setMoveKey( spep_5 -a1 + 129, 1, 112.1, -219 , 0 );
setMoveKey( spep_5 -a1 + 130, 1, 115.3, -220.6 , 0 );
setMoveKey( spep_5 -a1 + 131, 1, 115.3, -220.6 , 0 );
setMoveKey( spep_5 -a1 + 132, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 133, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 134, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 135, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 136, 1, 113.7, -219.9 , 0 );
setMoveKey( spep_5 -a1 + 137, 1, 113.7, -219.9 , 0 );
setMoveKey( spep_5 -a1 + 138, 1, 112.1, -219.4 , 0 );
setMoveKey( spep_5 -a1 + 139, 1, 112.1, -219.4 , 0 );
setMoveKey( spep_5 -a1 + 140, 1, 113.9, -220.2 , 0 );
setMoveKey( spep_5 -a1 + 141, 1, 113.9, -220.2 , 0 );
setMoveKey( spep_5 -a1 + 142, 1, 115.6, -220.9 , 0 );
setMoveKey( spep_5 -a1 + 143, 1, 115.6, -220.9 , 0 );
setMoveKey( spep_5 -a1 + 144, 1, 113.9, -220.2 , 0 );
setMoveKey( spep_5 -a1 + 145, 1, 113.9, -220.2 , 0 );
setMoveKey( spep_5 -a1 + 146, 1, 112.1, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 147, 1, 112.1, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 148, 1, 113.9, -219.6 , 0 );
setMoveKey( spep_5 -a1 + 149, 1, 113.9, -219.6 , 0 );
setMoveKey( spep_5 -a1 + 150, 1, 115.6, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 151, 1, 115.6, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 152, 1, 114.5, -220 , 0 );
setMoveKey( spep_5 -a1 + 153, 1, 114.5, -220 , 0 );
setMoveKey( spep_5 -a1 + 154, 1, 113.4, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 155, 1, 113.4, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 156, 1, 112.9, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 157, 1, 112.9, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 158, 1, 112.3, -218.7 , 0 );
setMoveKey( spep_5 -a1 + 159, 1, 112.3, -218.7 , 0 );
setMoveKey( spep_5 -a1 + 160, 1, 114, -219.1 , 0 );
setMoveKey( spep_5 -a1 + 161, 1, 114, -219.1 , 0 );
setMoveKey( spep_5 -a1 + 162, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 163, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 164, 1, 113.9, -219.9 , 0 );
setMoveKey( spep_5 -a1 + 165, 1, 113.9, -219.9 , 0 );
setMoveKey( spep_5 -a1 + 166, 1, 112.1, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 167, 1, 112.1, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 168, 1, 113.9, -219.6 , 0 );
setMoveKey( spep_5 -a1 + 169, 1, 113.9, -219.6 , 0 );
setMoveKey( spep_5 -a1 + 170, 1, 115.6, -218.8 , 0 );
setMoveKey( spep_5 -a1 + 171, 1, 115.6, -218.8 , 0 );
setMoveKey( spep_5 -a1 + 172, 1, 114.5, -219.2 , 0 );
setMoveKey( spep_5 -a1 + 173, 1, 114.5, -219.2 , 0 );
setMoveKey( spep_5 -a1 + 174, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 175, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 176, 1, 112.9, -219.2 , 0 );
setMoveKey( spep_5 -a1 + 177, 1, 112.9, -219.2 , 0 );
setMoveKey( spep_5 + 178, 1, 112.3, -218.7 , 0 );

setScaleKey( spep_5 + 0, 1, 1.12, 1.12 );
setScaleKey( spep_5 -a1 + 2, 1, 1.22, 1.22 );
setScaleKey( spep_5 -a1 + 3, 1, 1.22, 1.22 );
setScaleKey( spep_5 -a1 + 4, 1, 1.25, 1.26 );
setScaleKey( spep_5 -a1 + 5, 1, 1.25, 1.26 );
setScaleKey( spep_5 -a1 + 5, 1, 1.25, 1.26 );
setScaleKey( spep_5 -a1 + 6, 1, 1.28, 1.28 );
setScaleKey( spep_5 -a1 + 7, 1, 1.28, 1.28 );
setScaleKey( spep_5 -a1 + 7, 1, 1.28, 1.28 );
setScaleKey( spep_5 -a1 + 8, 1, 1.29, 1.3 );
setScaleKey( spep_5 -a1 + 9, 1, 1.29, 1.3 );
setScaleKey( spep_5 -a1 + 9, 1, 1.29, 1.3 );
setScaleKey( spep_5 -a1 + 10, 1, 1.3, 1.31 );
setScaleKey( spep_5 -a1 + 31, 1, 1.3, 1.31 );
setScaleKey( spep_5 -a1 + 31, 1, 1.3, 1.31 );
setScaleKey( spep_5 -a1 + 32, 1, 1.26, 1.27 );
setScaleKey( spep_5 + 178, 1, 1.26, 1.27 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 -a1 + 31, 1, 0 );
setRotateKey( spep_5 -a1 + 31, 1, 0 );
setRotateKey( spep_5 -a1 + 32, 1, -15 );
setRotateKey( spep_5 -a1 + 33, 1, -15 );
setRotateKey( spep_5 -a1 + 34, 1, -14.2 );
setRotateKey( spep_5 -a1 + 35, 1, -14.2 );
setRotateKey( spep_5 -a1 + 36, 1, -13.9 );
setRotateKey( spep_5 -a1 + 37, 1, -13.9 );
setRotateKey( spep_5 -a1 + 38, 1, -13.7 );
setRotateKey( spep_5 -a1 + 39, 1, -13.7 );
setRotateKey( spep_5 -a1 + 40, 1, -13.6 );
setRotateKey( spep_5 -a1 + 41, 1, -13.6 );
setRotateKey( spep_5 -a1 + 42, 1, -13.4 );
setRotateKey( spep_5 -a1 + 43, 1, -13.4 );
setRotateKey( spep_5 -a1 + 44, 1, -13.3 );
setRotateKey( spep_5 -a1 + 45, 1, -13.3 );
setRotateKey( spep_5 -a1 + 46, 1, -13.2 );
setRotateKey( spep_5 -a1 + 48, 1, -13.2 );
setRotateKey( spep_5 -a1 + 49, 1, -13.2 );
setRotateKey( spep_5 -a1 + 50, 1, -13.1 );
setRotateKey( spep_5 -a1 + 51, 1, -13.1 );
setRotateKey( spep_5 -a1 + 52, 1, -13 );
setRotateKey( spep_5 + 178, 1, -13 );

-- ** 音 ** --
--連続爆発
SE019 = playSeVer2( spep_5 + 8 -8, 1159, "",spep_5 + 194, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 8 -8, SE019, 79 );
SE020 = playSeVer2( spep_5 + 32 -8, 1068, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_5 + 60 -8, 1067, "",spep_5 + 194, 0, 14, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 178 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 54 );
endPhase( spep_5 + 178 -2 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- にやりと笑い方腕上げる(118F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --にやりと笑い方腕上げる    ef_001
setEffMoveKey( spep_0 + 0, first, 0, 0 , 0 );
setEffMoveKey( spep_0 + 118, first, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first, -1.0, 1.0 );
setEffScaleKey( spep_0 + 118, first, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 118, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 118, first, 255 );

spep_x = spep_0 + 38 -8;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 0 -28, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0 -28, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0 -28, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--ズーム
SE001 = playSeVer2( spep_0 + 6, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE001, 85 );

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--腕上げる
SE003 = playSeVer2( spep_0 + 58, 1004, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 110, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 白背景 ** --
entryFadeBg( spep_0 + 0, 0, 118 + 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);       -- 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 118;

------------------------------------------------------
-- 手のアップで気弾生成(80F)
------------------------------------------------------
-- ** エフェクト等 ** --
hand = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --手のアップで気弾生成    ef_002
setEffMoveKey( spep_1 + 0, hand, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, hand, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hand, -1.0, 1.0 );
setEffScaleKey( spep_1 + 80, hand, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hand, 0 );
setEffRotateKey( spep_1 + 80, hand, 0 );
setEffAlphaKey( spep_1 + 0, hand, 255 );
setEffAlphaKey( spep_1 + 80, hand, 255 );

-- ** 音 ** --
--気弾溜め
SE004 = playSeVer2( spep_1 + 6, 1263, "",spep_1 + 98, 0, 14, 0.6);
SE005 = playSeVer2( spep_1 + 16, 1296, "",spep_1 + 98, 0, 14, 0.6);
SE006 = playSeVer2( spep_1 + 16, 1282, "",spep_1 + 98, 0, 14, 0.6);
SE007 = playSeVer2( spep_1 + 16, 1356, "",spep_1 + 98, 0, 14, 0.6);
SE008 = playSeVer2( spep_1 + 44, 1178, "",spep_1 + 98, 0, 14, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 80 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 80;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 気功を上空に放つ(98F)
------------------------------------------------------
-- ** エフェクト等 ** --
hanatsu = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --気功を上空に放つ  ef_003
setEffMoveKey( spep_3 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 94, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hanatsu, -1.0, 1.0 );
setEffScaleKey( spep_3 + 94, hanatsu, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hanatsu, 0 );
setEffRotateKey( spep_3 + 94, hanatsu, 0 );
setEffAlphaKey( spep_3 + 0, hanatsu, 255 );
setEffAlphaKey( spep_3 + 94, hanatsu, 255 );

-- ** 音 ** --
--気弾発射
SE010 = playSeVer2( spep_3 + 0, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE010, 84 );
SE011 = playSeVer2( spep_3 + 0, 1213, "",spep_3 + 188, 0, 100, -1);
setSeVolumeByWorkId( spep_3 + 0, SE011, 79 );
SE012 = playSeVer2( spep_3 + 0, 1145, "", 0, 0, 0, -1);
setPitch( spep_3 + 0, SE012, -500 );
setTimeStretch( SE012, 0.67, 30, 4 );
SE013 = playSeVer2( spep_3 + 0, 1226, "",spep_3 + 446, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 0, SE013, 76 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 94 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 上空から大量の気功(158F)
------------------------------------------------------
-- ** エフェクト等 ** --
kikou_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --上空から大量の気功 ef_004
setEffMoveKey( spep_4 + 0, kikou_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 158, kikou_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kikou_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 158, kikou_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kikou_f, 0 );
setEffRotateKey( spep_4 + 158, kikou_f, 0 );
setEffAlphaKey( spep_4 + 0, kikou_f, 255 );
setEffAlphaKey( spep_4 + 158 -2, kikou_f, 255 );
setEffAlphaKey( spep_4 + 158 -1, kikou_f, 255 );
setEffAlphaKey( spep_4 + 158, kikou_f, 0 );

kikou_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --上空から大量の気功 ef_004_b
setEffMoveKey( spep_4 + 0, kikou_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 158, kikou_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kikou_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 158, kikou_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kikou_b, 0 );
setEffRotateKey( spep_4 + 158, kikou_b, 0 );
setEffAlphaKey( spep_4 + 0, kikou_b, 255 );
setEffAlphaKey( spep_4 + 158 -2, kikou_b, 255 );
setEffAlphaKey( spep_4 + 158 -1, kikou_b, 255 );
setEffAlphaKey( spep_4 + 158, kikou_b, 0 );

offset = -1;
-- ** 敵キャラクター ** --
setDisp( spep_4 + 39, 1, 1 );
changeAnime( spep_4 + 39, 1, 2 );

setMoveKey( spep_4 + 40 + offset, 1, -194.1, -350.7 , 0 );
setMoveKey( spep_4 + 41 + offset, 1, -194.1, -350.7 , 0 );
setMoveKey( spep_4 + 42 + offset, 1, -193.7, -350.5 , 0 );
setMoveKey( spep_4 + 43 + offset, 1, -193.7, -350.5 , 0 );
setMoveKey( spep_4 + 44 + offset, 1, -193.3, -350.3 , 0 );
setMoveKey( spep_4 + 45 + offset, 1, -193.3, -350.3 , 0 );
setMoveKey( spep_4 + 46 + offset, 1, -192.9, -350.1 , 0 );
setMoveKey( spep_4 + 47 + offset, 1, -192.9, -350.1 , 0 );
setMoveKey( spep_4 + 48 + offset, 1, -192.5, -349.9 , 0 );
setMoveKey( spep_4 + 49 + offset, 1, -192.5, -349.9 , 0 );
setMoveKey( spep_4 + 50 + offset, 1, -192.1, -349.6 , 0 );
setMoveKey( spep_4 + 51 + offset, 1, -192.1, -349.6 , 0 );
setMoveKey( spep_4 + 52 + offset, 1, -191.7, -349.4 , 0 );
setMoveKey( spep_4 + 53 + offset, 1, -191.7, -349.4 , 0 );
setMoveKey( spep_4 + 54 + offset, 1, -191.3, -349.1 , 0 );
setMoveKey( spep_4 + 55 + offset, 1, -191.3, -349.1 , 0 );
setMoveKey( spep_4 + 56 + offset, 1, -190.9, -349 , 0 );
setMoveKey( spep_4 + 57 + offset, 1, -190.9, -349 , 0 );
setMoveKey( spep_4 + 58 + offset, 1, -190.5, -348.7 , 0 );
setMoveKey( spep_4 + 59 + offset, 1, -190.5, -348.7 , 0 );
setMoveKey( spep_4 + 60 + offset, 1, -194.4, -344.2 , 0 );
setMoveKey( spep_4 + 61 + offset, 1, -194.4, -344.2 , 0 );
setMoveKey( spep_4 + 62 + offset, 1, -190, -345.9 , 0 );
setMoveKey( spep_4 + 63 + offset, 1, -190, -345.9 , 0 );
setMoveKey( spep_4 + 64 + offset, 1, -191.8, -349.6 , 0 );
setMoveKey( spep_4 + 65 + offset, 1, -191.8, -349.6 , 0 );
setMoveKey( spep_4 + 66 + offset, 1, -189.5, -345.1 , 0 );
setMoveKey( spep_4 + 67 + offset, 1, -189.5, -345.1 , 0 );
setMoveKey( spep_4 + 68 + offset, 1, -191.4, -344.7 , 0 );
setMoveKey( spep_4 + 69 + offset, 1, -191.4, -344.7 , 0 );
setMoveKey( spep_4 + 70 + offset, 1, -189.1, -346.4 , 0 );
setMoveKey( spep_4 + 71 + offset, 1, -189.1, -346.4 , 0 );
setMoveKey( spep_4 + 72 + offset, 1, -186.9, -343.9 , 0 );
setMoveKey( spep_4 + 73 + offset, 1, -186.9, -343.9 , 0 );
setMoveKey( spep_4 + 74 + offset, 1, -188.8, -341.5 , 0 );
setMoveKey( spep_4 + 75 + offset, 1, -188.8, -341.5 , 0 );
setMoveKey( spep_4 + 76 + offset, 1, -190.6, -343.2 , 0 );
setMoveKey( spep_4 + 77 + offset, 1, -190.6, -343.2 , 0 );
setMoveKey( spep_4 + 78 + offset, 1, -188.3, -342.8 , 0 );
setMoveKey( spep_4 + 79 + offset, 1, -188.3, -342.8 , 0 );
setMoveKey( spep_4 + 80 + offset, 1, -186, -340.4 , 0 );
setMoveKey( spep_4 + 81 + offset, 1, -186, -340.4 , 0 );
setMoveKey( spep_4 + 82 + offset, 1, -187.9, -338 , 0 );
setMoveKey( spep_4 + 83 + offset, 1, -187.9, -338 , 0 );
setMoveKey( spep_4 + 84 + offset, 1, -189.8, -339.8 , 0 );
setMoveKey( spep_4 + 85 + offset, 1, -189.8, -339.8 , 0 );
setMoveKey( spep_4 + 86 + offset, 1, -187.5, -341.5 , 0 );
setMoveKey( spep_4 + 87 + offset, 1, -187.5, -341.5 , 0 );
setMoveKey( spep_4 + 88 + offset, 1, -187.3, -341.2 , 0 );
setMoveKey( spep_4 + 89 + offset, 1, -187.3, -341.2 , 0 );
setMoveKey( spep_4 + 90 + offset, 1, -191.2, -344.9 , 0 );
setMoveKey( spep_4 + 91 + offset, 1, -191.2, -344.9 , 0 );
setMoveKey( spep_4 + 92 + offset, 1, -187.7, -345.3 , 0 );
setMoveKey( spep_4 + 93 + offset, 1, -187.7, -345.3 , 0 );
setMoveKey( spep_4 + 94 + offset, 1, -188.4, -341.8 , 0 );
setMoveKey( spep_4 + 95 + offset, 1, -188.4, -341.8 , 0 );
setMoveKey( spep_4 + 96 + offset, 1, -190.2, -339.2 , 0 );
setMoveKey( spep_4 + 97 + offset, 1, -190.2, -339.2 , 0 );
setMoveKey( spep_4 + 98 + offset, 1, -186, -338.5 , 0 );
setMoveKey( spep_4 + 99 + offset, 1, -186, -338.5 , 0 );

setScaleKey( spep_4 + 40 + offset, 1, 0.69, 0.69 );
setScaleKey( spep_4 + 69 + offset, 1, 0.69, 0.69 );
setScaleKey( spep_4 + 70 + offset, 1, 0.68, 0.68 );

setRotateKey( spep_4 + 40 + offset, 1, 31 );

-- ** 音 ** --
--アサルトレイン
SE014 = playSeVer2( spep_4 + 0, 1409, "",spep_4 + 352, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 0, SE014, 248 );
SE015 = playSeVer2( spep_4 + 0, 1410, "",spep_4 + 352, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 0, SE015, 248 );
SE016 = playSeVer2( spep_4 + 6, 1403, "",spep_4 + 352, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 6, SE016, 108 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 158 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 98; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -186, -338.5 , 0 );
    setMoveKey( SP_dodge + 2, 1, -188.6, -339.7 , 0 );
    setMoveKey( SP_dodge + 4, 1, -186.7, -332.4 , 0 );
    setMoveKey( SP_dodge + 6, 1, -192.9, -333.2 , 0 );
    setMoveKey( SP_dodge + 8, 1, -187.6, -337.4 , 0 );
    setMoveKey( SP_dodge + 10, 1, -190.5, -339.6 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.68, 0.68 );
    setScaleKey( SP_dodge + 10, 1, 0.68, 0.68 );

    setRotateKey( SP_dodge + 0, 1, 31 );
    setRotateKey( SP_dodge + 10, 1, 31 );

    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** 敵キャラクター ** --
setMoveKey( spep_4 + 100 + offset, 1, -188.6, -339.7 , 0 );
setMoveKey( spep_4 + 101 + offset, 1, -188.6, -339.7 , 0 );
setMoveKey( spep_4 + 102 + offset, 1, -186.7, -332.4 , 0 );
setMoveKey( spep_4 + 103 + offset, 1, -186.7, -332.4 , 0 );
setMoveKey( spep_4 + 104 + offset, 1, -192.9, -333.2 , 0 );
setMoveKey( spep_4 + 105 + offset, 1, -192.9, -333.2 , 0 );
setMoveKey( spep_4 + 106 + offset, 1, -187.6, -337.4 , 0 );
setMoveKey( spep_4 + 107 + offset, 1, -187.6, -337.4 , 0 );
setMoveKey( spep_4 + 108 + offset, 1, -190.5, -339.6 , 0 );
setMoveKey( spep_4 + 109 + offset, 1, -190.5, -339.6 , 0 );
setMoveKey( spep_4 + 110 + offset, 1, -189.2, -333.6 , 0 );
setMoveKey( spep_4 + 111 + offset, 1, -189.2, -333.6 , 0 );
setMoveKey( spep_4 + 112 + offset, 1, -184.8, -335.3 , 0 );
setMoveKey( spep_4 + 113 + offset, 1, -184.8, -335.3 , 0 );
setMoveKey( spep_4 + 114 + offset, 1, -186.7, -339 , 0 );
setMoveKey( spep_4 + 115 + offset, 1, -186.7, -339 , 0 );
setMoveKey( spep_4 + 116 + offset, 1, -184.4, -334.4 , 0 );
setMoveKey( spep_4 + 117 + offset, 1, -184.4, -334.4 , 0 );
setMoveKey( spep_4 + 118 + offset, 1, -186.2, -334.1 , 0 );
setMoveKey( spep_4 + 119 + offset, 1, -186.2, -334.1 , 0 );
setMoveKey( spep_4 + 120 + offset, 1, -183.9, -335.8 , 0 );
setMoveKey( spep_4 + 121 + offset, 1, -183.9, -335.8 , 0 );
setMoveKey( spep_4 + 122 + offset, 1, -181.7, -333.3 , 0 );
setMoveKey( spep_4 + 123 + offset, 1, -181.7, -333.3 , 0 );
setMoveKey( spep_4 + 124 + offset, 1, -183.6, -330.8 , 0 );
setMoveKey( spep_4 + 125 + offset, 1, -183.6, -330.8 , 0 );
setMoveKey( spep_4 + 126 + offset, 1, -185.4, -332.6 , 0 );
setMoveKey( spep_4 + 127 + offset, 1, -185.4, -332.6 , 0 );
setMoveKey( spep_4 + 128 + offset, 1, -183.1, -332.2 , 0 );
setMoveKey( spep_4 + 129 + offset, 1, -183.1, -332.2 , 0 );
setMoveKey( spep_4 + 130 + offset, 1, -180.9, -329.8 , 0 );
setMoveKey( spep_4 + 131 + offset, 1, -180.9, -329.8 , 0 );
setMoveKey( spep_4 + 132 + offset, 1, -182.8, -327.4 , 0 );
setMoveKey( spep_4 + 133 + offset, 1, -182.8, -327.4 , 0 );
setMoveKey( spep_4 + 134 + offset, 1, -184.6, -329.2 , 0 );
setMoveKey( spep_4 + 135 + offset, 1, -184.6, -329.2 , 0 );
setMoveKey( spep_4 + 136 + offset, 1, -182.3, -330.9 , 0 );
setMoveKey( spep_4 + 137 + offset, 1, -182.3, -330.9 , 0 );
setMoveKey( spep_4 + 138 + offset, 1, -182.1, -330.5 , 0 );
setMoveKey( spep_4 + 139 + offset, 1, -182.1, -330.5 , 0 );
setMoveKey( spep_4 + 140 + offset, 1, -186, -334.3 , 0 );
setMoveKey( spep_4 + 141 + offset, 1, -186, -334.3 , 0 );
setMoveKey( spep_4 + 142 + offset, 1, -182.6, -334.7 , 0 );
setMoveKey( spep_4 + 143 + offset, 1, -182.6, -334.7 , 0 );
setMoveKey( spep_4 + 144 + offset, 1, -183.3, -331.2 , 0 );
setMoveKey( spep_4 + 145 + offset, 1, -183.3, -331.2 , 0 );
setMoveKey( spep_4 + 146 + offset, 1, -185, -328.6 , 0 );
setMoveKey( spep_4 + 147 + offset, 1, -185, -328.6 , 0 );
setMoveKey( spep_4 + 148 + offset, 1, -181.2, -329.6 , 0 );
setMoveKey( spep_4 + 149 + offset, 1, -181.2, -329.6 , 0 );
setMoveKey( spep_4 + 150 + offset, 1, -182.9, -327.3 , 0 );
setMoveKey( spep_4 + 151 + offset, 1, -182.9, -327.3 , 0 );
setMoveKey( spep_4 + 152 + offset, 1, -180.6, -329 , 0 );
setMoveKey( spep_4 + 153 + offset, 1, -180.6, -329 , 0 );
setMoveKey( spep_4 + 154 + offset, 1, -178.4, -326.5 , 0 );
setMoveKey( spep_4 + 155 + offset, 1, -178.4, -326.5 , 0 );
setMoveKey( spep_4 + 156 + offset, 1, -180.3, -324.1 , 0 );
setMoveKey( spep_4 + 157 + offset, 1, -180.3, -324.1 , 0 );
setMoveKey( spep_4 + 158 + offset, 1, -182.1, -325.8 , 0 );

setScaleKey( spep_4 + 110 + offset, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 111 + offset, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 112 + offset, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 152 + offset, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 153 + offset, 1, 0.67, 0.67 );
setScaleKey( spep_4 + 154 + offset, 1, 0.66, 0.66 );
setScaleKey( spep_4 + 158 + offset, 1, 0.66, 0.66 );

setRotateKey( spep_4 + 158 + offset, 1, 31 );

-- ** 音 ** --
--連続爆発
SE017 = playSeVer2( spep_4 + 98 -20, 1024, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_4 + 126 -20, 1023, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_5 = spep_4 + 158;

------------------------------------------------------
-- 敵に気功が当たる(178F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_06r, 0x100, -1, 0, 0, 0 );  --敵に気功が当たる（全体攻撃あり） ef_005
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 178, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 178, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 178, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 178, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --敵に気功が当たる ef_005_b
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 178, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 178, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 178, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 178, finish_b, 255 );

a1 = 1;
-- ** 敵キャラクター ** --
changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5 -a1 + 32, 1, 106 );

setMoveKey( spep_5 + 0, 1, 233.9, -387.1 , 0 );
setMoveKey( spep_5 -a1 + 2, 1, 188.3, -329.9 , 0 );
setMoveKey( spep_5 -a1 + 3, 1, 188.3, -329.9 , 0 );
setMoveKey( spep_5 -a1 + 4, 1, 168.7, -304.9 , 0 );
setMoveKey( spep_5 -a1 + 5, 1, 168.7, -304.9 , 0 );
setMoveKey( spep_5 -a1 + 5, 1, 168.7, -304.9 , 0 );
setMoveKey( spep_5 -a1 + 6, 1, 153.5, -285.4 , 0 );
setMoveKey( spep_5 -a1 + 7, 1, 153.5, -285.4 , 0 );
setMoveKey( spep_5 -a1 + 7, 1, 153.5, -285.4 , 0 );
setMoveKey( spep_5 -a1 + 8, 1, 140.8, -269 , 0 );
setMoveKey( spep_5 -a1 + 9, 1, 140.8, -269 , 0 );
setMoveKey( spep_5 -a1 + 9, 1, 140.8, -269 , 0 );
setMoveKey( spep_5 -a1 + 10, 1, 129.7, -254.5 , 0 );
setMoveKey( spep_5 -a1 + 11, 1, 129.7, -254.5 , 0 );
setMoveKey( spep_5 -a1 + 11, 1, 129.7, -254.5 , 0 );
setMoveKey( spep_5 -a1 + 12, 1, 119.9, -241.6 , 0 );
setMoveKey( spep_5 -a1 + 13, 1, 119.9, -241.6 , 0 );
setMoveKey( spep_5 -a1 + 13, 1, 119.9, -241.6 , 0 );
setMoveKey( spep_5 -a1 + 14, 1, 111.2, -230.1 , 0 );
setMoveKey( spep_5 -a1 + 31, 1, 111.2, -230.1 , 0 );
setMoveKey( spep_5 -a1 + 31, 1, 111.2, -230.1 , 0 );
setMoveKey( spep_5 -a1 + 32, 1, 113.8, -212.5 , 0 ); --106
setMoveKey( spep_5 -a1 + 33, 1, 113.8, -212.5 , 0 );
setMoveKey( spep_5 -a1 + 34, 1, 110.9, -216.7 , 0 );
setMoveKey( spep_5 -a1 + 35, 1, 110.9, -216.7 , 0 );
setMoveKey( spep_5 -a1 + 36, 1, 114.3, -218.1 , 0 );
setMoveKey( spep_5 -a1 + 37, 1, 114.3, -218.1 , 0 );
setMoveKey( spep_5 -a1 + 38, 1, 112.3, -215.7 , 0 );
setMoveKey( spep_5 -a1 + 39, 1, 112.3, -215.7 , 0 );
setMoveKey( spep_5 -a1 + 40, 1, 115.1, -218.1 , 0 );
setMoveKey( spep_5 -a1 + 41, 1, 115.1, -218.1 , 0 );
setMoveKey( spep_5 -a1 + 42, 1, 110.6, -215.6 , 0 );
setMoveKey( spep_5 -a1 + 43, 1, 110.6, -215.6 , 0 );
setMoveKey( spep_5 -a1 + 44, 1, 115.1, -218.9 , 0 );
setMoveKey( spep_5 -a1 + 45, 1, 115.1, -218.9 , 0 );
setMoveKey( spep_5 -a1 + 46, 1, 112.1, -216 , 0 );
setMoveKey( spep_5 -a1 + 47, 1, 112.1, -216 , 0 );
setMoveKey( spep_5 -a1 + 48, 1, 112.2, -218.3 , 0 );
setMoveKey( spep_5 -a1 + 49, 1, 112.2, -218.3 , 0 );
setMoveKey( spep_5 -a1 + 50, 1, 113.1, -218.6 , 0 );
setMoveKey( spep_5 -a1 + 51, 1, 113.1, -218.6 , 0 );
setMoveKey( spep_5 -a1 + 52, 1, 114, -218.7 , 0 );
setMoveKey( spep_5 -a1 + 53, 1, 114, -218.7 , 0 );
setMoveKey( spep_5 -a1 + 54, 1, 87.8, -220.6 , 0 );
setMoveKey( spep_5 -a1 + 55, 1, 87.8, -220.6 , 0 );
setMoveKey( spep_5 -a1 + 56, 1, 130, -232.3 , 0 );
setMoveKey( spep_5 -a1 + 57, 1, 130, -232.3 , 0 );
setMoveKey( spep_5 -a1 + 58, 1, 94.4, -216.5 , 0 );
setMoveKey( spep_5 -a1 + 59, 1, 94.4, -216.5 , 0 );
setMoveKey( spep_5 -a1 + 60, 1, 121.1, -222.7 , 0 );
setMoveKey( spep_5 -a1 + 61, 1, 121.1, -222.7 , 0 );
setMoveKey( spep_5 -a1 + 62, 1, 96.1, -226.2 , 0 );
setMoveKey( spep_5 -a1 + 63, 1, 96.1, -226.2 , 0 );
setMoveKey( spep_5 -a1 + 64, 1, 110.5, -210.6 , 0 );
setMoveKey( spep_5 -a1 + 65, 1, 110.5, -210.6 , 0 );
setMoveKey( spep_5 -a1 + 66, 1, 111.2, -228.8 , 0 );
setMoveKey( spep_5 -a1 + 67, 1, 111.2, -228.8 , 0 );
setMoveKey( spep_5 -a1 + 68, 1, 110.5, -213.2 , 0 );
setMoveKey( spep_5 -a1 + 69, 1, 110.5, -213.2 , 0 );
setMoveKey( spep_5 -a1 + 70, 1, 122.9, -224.6 , 0 );
setMoveKey( spep_5 -a1 + 71, 1, 122.9, -224.6 , 0 );
setMoveKey( spep_5 -a1 + 72, 1, 110, -216.6 , 0 );
setMoveKey( spep_5 -a1 + 73, 1, 110, -216.6 , 0 );
setMoveKey( spep_5 -a1 + 74, 1, 114.3, -211 , 0 );
setMoveKey( spep_5 -a1 + 75, 1, 114.3, -211 , 0 );
setMoveKey( spep_5 -a1 + 76, 1, 106.2, -220.6 , 0 );
setMoveKey( spep_5 -a1 + 77, 1, 106.2, -220.6 , 0 );
setMoveKey( spep_5 -a1 + 78, 1, 113.2, -223.5 , 0 );
setMoveKey( spep_5 -a1 + 79, 1, 113.2, -223.5 , 0 );
setMoveKey( spep_5 -a1 + 80, 1, 114.7, -218.2 , 0 );
setMoveKey( spep_5 -a1 + 81, 1, 114.7, -218.2 , 0 );
setMoveKey( spep_5 -a1 + 82, 1, 111.6, -224.1 , 0 );
setMoveKey( spep_5 -a1 + 83, 1, 111.6, -224.1 , 0 );
setMoveKey( spep_5 -a1 + 84, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_5 -a1 + 85, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_5 -a1 + 86, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 87, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 88, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 89, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 90, 1, 113.1, -217.5 , 0 );
setMoveKey( spep_5 -a1 + 91, 1, 113.1, -217.5 , 0 );
setMoveKey( spep_5 -a1 + 92, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 93, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 94, 1, 113.9, -216.6 , 0 );
setMoveKey( spep_5 -a1 + 95, 1, 113.9, -216.6 , 0 );
setMoveKey( spep_5 -a1 + 96, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 97, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 98, 1, 114.1, -218 , 0 );
setMoveKey( spep_5 -a1 + 99, 1, 114.1, -218 , 0 );
setMoveKey( spep_5 -a1 + 100, 1, 112.3, -218.7 , 0 );
setMoveKey( spep_5 -a1 + 101, 1, 112.3, -218.7 , 0 );
setMoveKey( spep_5 -a1 + 102, 1, 114.7, -221.7 , 0 );
setMoveKey( spep_5 -a1 + 103, 1, 114.7, -221.7 , 0 );
setMoveKey( spep_5 -a1 + 104, 1, 111.6, -220 , 0 );
setMoveKey( spep_5 -a1 + 105, 1, 111.6, -220 , 0 );
setMoveKey( spep_5 -a1 + 106, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_5 -a1 + 107, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_5 -a1 + 108, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 109, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 110, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 111, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 112, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 113, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 114, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_5 -a1 + 115, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_5 -a1 + 116, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 117, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 118, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_5 -a1 + 119, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_5 -a1 + 120, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 121, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 122, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_5 -a1 + 123, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_5 -a1 + 124, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 125, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 126, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_5 -a1 + 127, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_5 -a1 + 128, 1, 112.1, -219 , 0 );
setMoveKey( spep_5 -a1 + 129, 1, 112.1, -219 , 0 );
setMoveKey( spep_5 -a1 + 130, 1, 115.3, -220.6 , 0 );
setMoveKey( spep_5 -a1 + 131, 1, 115.3, -220.6 , 0 );
setMoveKey( spep_5 -a1 + 132, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 133, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 134, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 135, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 136, 1, 113.7, -219.9 , 0 );
setMoveKey( spep_5 -a1 + 137, 1, 113.7, -219.9 , 0 );
setMoveKey( spep_5 -a1 + 138, 1, 112.1, -219.4 , 0 );
setMoveKey( spep_5 -a1 + 139, 1, 112.1, -219.4 , 0 );
setMoveKey( spep_5 -a1 + 140, 1, 113.9, -220.2 , 0 );
setMoveKey( spep_5 -a1 + 141, 1, 113.9, -220.2 , 0 );
setMoveKey( spep_5 -a1 + 142, 1, 115.6, -220.9 , 0 );
setMoveKey( spep_5 -a1 + 143, 1, 115.6, -220.9 , 0 );
setMoveKey( spep_5 -a1 + 144, 1, 113.9, -220.2 , 0 );
setMoveKey( spep_5 -a1 + 145, 1, 113.9, -220.2 , 0 );
setMoveKey( spep_5 -a1 + 146, 1, 112.1, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 147, 1, 112.1, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 148, 1, 113.9, -219.6 , 0 );
setMoveKey( spep_5 -a1 + 149, 1, 113.9, -219.6 , 0 );
setMoveKey( spep_5 -a1 + 150, 1, 115.6, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 151, 1, 115.6, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 152, 1, 114.5, -220 , 0 );
setMoveKey( spep_5 -a1 + 153, 1, 114.5, -220 , 0 );
setMoveKey( spep_5 -a1 + 154, 1, 113.4, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 155, 1, 113.4, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 156, 1, 112.9, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 157, 1, 112.9, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 158, 1, 112.3, -218.7 , 0 );
setMoveKey( spep_5 -a1 + 159, 1, 112.3, -218.7 , 0 );
setMoveKey( spep_5 -a1 + 160, 1, 114, -219.1 , 0 );
setMoveKey( spep_5 -a1 + 161, 1, 114, -219.1 , 0 );
setMoveKey( spep_5 -a1 + 162, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 163, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_5 -a1 + 164, 1, 113.9, -219.9 , 0 );
setMoveKey( spep_5 -a1 + 165, 1, 113.9, -219.9 , 0 );
setMoveKey( spep_5 -a1 + 166, 1, 112.1, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 167, 1, 112.1, -220.4 , 0 );
setMoveKey( spep_5 -a1 + 168, 1, 113.9, -219.6 , 0 );
setMoveKey( spep_5 -a1 + 169, 1, 113.9, -219.6 , 0 );
setMoveKey( spep_5 -a1 + 170, 1, 115.6, -218.8 , 0 );
setMoveKey( spep_5 -a1 + 171, 1, 115.6, -218.8 , 0 );
setMoveKey( spep_5 -a1 + 172, 1, 114.5, -219.2 , 0 );
setMoveKey( spep_5 -a1 + 173, 1, 114.5, -219.2 , 0 );
setMoveKey( spep_5 -a1 + 174, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 175, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_5 -a1 + 176, 1, 112.9, -219.2 , 0 );
setMoveKey( spep_5 -a1 + 177, 1, 112.9, -219.2 , 0 );
setMoveKey( spep_5 + 178, 1, 112.3, -218.7 , 0 );

setScaleKey( spep_5 + 0, 1, 1.12, 1.12 );
setScaleKey( spep_5 -a1 + 2, 1, 1.22, 1.22 );
setScaleKey( spep_5 -a1 + 3, 1, 1.22, 1.22 );
setScaleKey( spep_5 -a1 + 4, 1, 1.25, 1.26 );
setScaleKey( spep_5 -a1 + 5, 1, 1.25, 1.26 );
setScaleKey( spep_5 -a1 + 5, 1, 1.25, 1.26 );
setScaleKey( spep_5 -a1 + 6, 1, 1.28, 1.28 );
setScaleKey( spep_5 -a1 + 7, 1, 1.28, 1.28 );
setScaleKey( spep_5 -a1 + 7, 1, 1.28, 1.28 );
setScaleKey( spep_5 -a1 + 8, 1, 1.29, 1.3 );
setScaleKey( spep_5 -a1 + 9, 1, 1.29, 1.3 );
setScaleKey( spep_5 -a1 + 9, 1, 1.29, 1.3 );
setScaleKey( spep_5 -a1 + 10, 1, 1.3, 1.31 );
setScaleKey( spep_5 -a1 + 31, 1, 1.3, 1.31 );
setScaleKey( spep_5 -a1 + 31, 1, 1.3, 1.31 );
setScaleKey( spep_5 -a1 + 32, 1, 1.26, 1.27 );
setScaleKey( spep_5 + 178, 1, 1.26, 1.27 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 -a1 + 31, 1, 0 );
setRotateKey( spep_5 -a1 + 31, 1, 0 );
setRotateKey( spep_5 -a1 + 32, 1, -15 );
setRotateKey( spep_5 -a1 + 33, 1, -15 );
setRotateKey( spep_5 -a1 + 34, 1, -14.2 );
setRotateKey( spep_5 -a1 + 35, 1, -14.2 );
setRotateKey( spep_5 -a1 + 36, 1, -13.9 );
setRotateKey( spep_5 -a1 + 37, 1, -13.9 );
setRotateKey( spep_5 -a1 + 38, 1, -13.7 );
setRotateKey( spep_5 -a1 + 39, 1, -13.7 );
setRotateKey( spep_5 -a1 + 40, 1, -13.6 );
setRotateKey( spep_5 -a1 + 41, 1, -13.6 );
setRotateKey( spep_5 -a1 + 42, 1, -13.4 );
setRotateKey( spep_5 -a1 + 43, 1, -13.4 );
setRotateKey( spep_5 -a1 + 44, 1, -13.3 );
setRotateKey( spep_5 -a1 + 45, 1, -13.3 );
setRotateKey( spep_5 -a1 + 46, 1, -13.2 );
setRotateKey( spep_5 -a1 + 48, 1, -13.2 );
setRotateKey( spep_5 -a1 + 49, 1, -13.2 );
setRotateKey( spep_5 -a1 + 50, 1, -13.1 );
setRotateKey( spep_5 -a1 + 51, 1, -13.1 );
setRotateKey( spep_5 -a1 + 52, 1, -13 );
setRotateKey( spep_5 + 178, 1, -13 );

-- ** 音 ** --
--連続爆発
SE019 = playSeVer2( spep_5 + 8 -8, 1159, "",spep_5 + 194, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 8 -8, SE019, 79 );
SE020 = playSeVer2( spep_5 + 32 -8, 1068, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_5 + 60 -8, 1067, "",spep_5 + 194, 0, 14, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 178 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 54 );
endPhase( spep_5 + 178 -2 );

end
end



------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 敵に気功が当たる (178F)
------------------------------------------------------
spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

    if(_IS_DODGE_ == 1) then

    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
        if (_IS_PLAYER_SIDE_ == 1) then

            setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

        else

            setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

        end

    setEffAlphaKey( SP_dodge, kaihi, 255);

    pauseAll( SP_dodge, 67);

    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

    endPhase(SP_dodge+10);
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_z + 0, SP_06, 0x100, -1, 0, 0, 0 );  --敵に気功が当たる（全体攻撃あり） ef_005
setEffMoveKey( spep_z + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_z + 178, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_z + 178, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, finish_f, 0 );
setEffRotateKey( spep_z + 178, finish_f, 0 );
setEffAlphaKey( spep_z + 0, finish_f, 255 );
setEffAlphaKey( spep_z + 178, finish_f, 255 );

finish_b = entryEffect( spep_z + 0, SP_07, 0x80, -1, 0, 0, 0 );  --敵に気功が当たる ef_005_b
setEffMoveKey( spep_z + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_z + 178, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_z + 178, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, finish_b, 0 );
setEffRotateKey( spep_z + 178, finish_b, 0 );
setEffAlphaKey( spep_z + 0, finish_b, 255 );
setEffAlphaKey( spep_z + 178, finish_b, 255 );

a1 = 1;
-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
changeAnime( spep_z + 0, 1, 104 );
changeAnime( spep_z -a1 + 32, 1, 106 );

setMoveKey( spep_z + 0, 1, 233.9, -387.1 , 0 );
setMoveKey( spep_z -a1 + 2, 1, 188.3, -329.9 , 0 );
setMoveKey( spep_z -a1 + 3, 1, 188.3, -329.9 , 0 );
setMoveKey( spep_z -a1 + 4, 1, 168.7, -304.9 , 0 );
setMoveKey( spep_z -a1 + 5, 1, 168.7, -304.9 , 0 );
setMoveKey( spep_z -a1 + 5, 1, 168.7, -304.9 , 0 );
setMoveKey( spep_z -a1 + 6, 1, 153.5, -285.4 , 0 );
setMoveKey( spep_z -a1 + 7, 1, 153.5, -285.4 , 0 );
setMoveKey( spep_z -a1 + 7, 1, 153.5, -285.4 , 0 );
setMoveKey( spep_z -a1 + 8, 1, 140.8, -269 , 0 );
setMoveKey( spep_z -a1 + 9, 1, 140.8, -269 , 0 );
setMoveKey( spep_z -a1 + 9, 1, 140.8, -269 , 0 );
setMoveKey( spep_z -a1 + 10, 1, 129.7, -254.5 , 0 );
setMoveKey( spep_z -a1 + 11, 1, 129.7, -254.5 , 0 );
setMoveKey( spep_z -a1 + 11, 1, 129.7, -254.5 , 0 );
setMoveKey( spep_z -a1 + 12, 1, 119.9, -241.6 , 0 );
setMoveKey( spep_z -a1 + 13, 1, 119.9, -241.6 , 0 );
setMoveKey( spep_z -a1 + 13, 1, 119.9, -241.6 , 0 );
setMoveKey( spep_z -a1 + 14, 1, 111.2, -230.1 , 0 );
setMoveKey( spep_z -a1 + 31, 1, 111.2, -230.1 , 0 );
setMoveKey( spep_z -a1 + 31, 1, 111.2, -230.1 , 0 );
setMoveKey( spep_z -a1 + 32, 1, 113.8, -212.5 , 0 ); --106
setMoveKey( spep_z -a1 + 33, 1, 113.8, -212.5 , 0 ); 
setMoveKey( spep_z -a1 + 34, 1, 110.9, -216.7 , 0 );
setMoveKey( spep_z -a1 + 35, 1, 110.9, -216.7 , 0 );
setMoveKey( spep_z -a1 + 36, 1, 114.3, -218.1 , 0 );
setMoveKey( spep_z -a1 + 37, 1, 114.3, -218.1 , 0 );
setMoveKey( spep_z -a1 + 38, 1, 112.3, -215.7 , 0 );
setMoveKey( spep_z -a1 + 39, 1, 112.3, -215.7 , 0 );
setMoveKey( spep_z -a1 + 40, 1, 115.1, -218.1 , 0 );
setMoveKey( spep_z -a1 + 41, 1, 115.1, -218.1 , 0 );
setMoveKey( spep_z -a1 + 42, 1, 110.6, -215.6 , 0 );
setMoveKey( spep_z -a1 + 43, 1, 110.6, -215.6 , 0 );
setMoveKey( spep_z -a1 + 44, 1, 115.1, -218.9 , 0 );
setMoveKey( spep_z -a1 + 45, 1, 115.1, -218.9 , 0 );
setMoveKey( spep_z -a1 + 46, 1, 112.1, -216 , 0 );
setMoveKey( spep_z -a1 + 47, 1, 112.1, -216 , 0 );
setMoveKey( spep_z -a1 + 48, 1, 112.2, -218.3 , 0 );
setMoveKey( spep_z -a1 + 49, 1, 112.2, -218.3 , 0 );
setMoveKey( spep_z -a1 + 50, 1, 113.1, -218.6 , 0 );
setMoveKey( spep_z -a1 + 51, 1, 113.1, -218.6 , 0 );
setMoveKey( spep_z -a1 + 52, 1, 114, -218.7 , 0 );
setMoveKey( spep_z -a1 + 53, 1, 114, -218.7 , 0 );
setMoveKey( spep_z -a1 + 54, 1, 87.8, -220.6 , 0 );
setMoveKey( spep_z -a1 + 55, 1, 87.8, -220.6 , 0 );
setMoveKey( spep_z -a1 + 56, 1, 130, -232.3 , 0 );
setMoveKey( spep_z -a1 + 57, 1, 130, -232.3 , 0 );
setMoveKey( spep_z -a1 + 58, 1, 94.4, -216.5 , 0 );
setMoveKey( spep_z -a1 + 59, 1, 94.4, -216.5 , 0 );
setMoveKey( spep_z -a1 + 60, 1, 121.1, -222.7 , 0 );
setMoveKey( spep_z -a1 + 61, 1, 121.1, -222.7 , 0 );
setMoveKey( spep_z -a1 + 62, 1, 96.1, -226.2 , 0 );
setMoveKey( spep_z -a1 + 63, 1, 96.1, -226.2 , 0 );
setMoveKey( spep_z -a1 + 64, 1, 110.5, -210.6 , 0 );
setMoveKey( spep_z -a1 + 65, 1, 110.5, -210.6 , 0 );
setMoveKey( spep_z -a1 + 66, 1, 111.2, -228.8 , 0 );
setMoveKey( spep_z -a1 + 67, 1, 111.2, -228.8 , 0 );
setMoveKey( spep_z -a1 + 68, 1, 110.5, -213.2 , 0 );
setMoveKey( spep_z -a1 + 69, 1, 110.5, -213.2 , 0 );
setMoveKey( spep_z -a1 + 70, 1, 122.9, -224.6 , 0 );
setMoveKey( spep_z -a1 + 71, 1, 122.9, -224.6 , 0 );
setMoveKey( spep_z -a1 + 72, 1, 110, -216.6 , 0 );
setMoveKey( spep_z -a1 + 73, 1, 110, -216.6 , 0 );
setMoveKey( spep_z -a1 + 74, 1, 114.3, -211 , 0 );
setMoveKey( spep_z -a1 + 75, 1, 114.3, -211 , 0 );
setMoveKey( spep_z -a1 + 76, 1, 106.2, -220.6 , 0 );
setMoveKey( spep_z -a1 + 77, 1, 106.2, -220.6 , 0 );
setMoveKey( spep_z -a1 + 78, 1, 113.2, -223.5 , 0 );
setMoveKey( spep_z -a1 + 79, 1, 113.2, -223.5 , 0 );
setMoveKey( spep_z -a1 + 80, 1, 114.7, -218.2 , 0 );
setMoveKey( spep_z -a1 + 81, 1, 114.7, -218.2 , 0 );
setMoveKey( spep_z -a1 + 82, 1, 111.6, -224.1 , 0 );
setMoveKey( spep_z -a1 + 83, 1, 111.6, -224.1 , 0 );
setMoveKey( spep_z -a1 + 84, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_z -a1 + 85, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_z -a1 + 86, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_z -a1 + 87, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_z -a1 + 88, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_z -a1 + 89, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_z -a1 + 90, 1, 113.1, -217.5 , 0 );
setMoveKey( spep_z -a1 + 91, 1, 113.1, -217.5 , 0 );
setMoveKey( spep_z -a1 + 92, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 93, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 94, 1, 113.9, -216.6 , 0 );
setMoveKey( spep_z -a1 + 95, 1, 113.9, -216.6 , 0 );
setMoveKey( spep_z -a1 + 96, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_z -a1 + 97, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_z -a1 + 98, 1, 114.1, -218 , 0 );
setMoveKey( spep_z -a1 + 99, 1, 114.1, -218 , 0 );
setMoveKey( spep_z -a1 + 100, 1, 112.3, -218.7 , 0 );
setMoveKey( spep_z -a1 + 101, 1, 112.3, -218.7 , 0 );
setMoveKey( spep_z -a1 + 102, 1, 114.7, -221.7 , 0 );
setMoveKey( spep_z -a1 + 103, 1, 114.7, -221.7 , 0 );
setMoveKey( spep_z -a1 + 104, 1, 111.6, -220 , 0 );
setMoveKey( spep_z -a1 + 105, 1, 111.6, -220 , 0 );
setMoveKey( spep_z -a1 + 106, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_z -a1 + 107, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_z -a1 + 108, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_z -a1 + 109, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_z -a1 + 110, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_z -a1 + 111, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_z -a1 + 112, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 113, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 114, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_z -a1 + 115, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_z -a1 + 116, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_z -a1 + 117, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_z -a1 + 118, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_z -a1 + 119, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_z -a1 + 120, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_z -a1 + 121, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_z -a1 + 122, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_z -a1 + 123, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_z -a1 + 124, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 125, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 126, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_z -a1 + 127, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_z -a1 + 128, 1, 112.1, -219 , 0 );
setMoveKey( spep_z -a1 + 129, 1, 112.1, -219 , 0 );
setMoveKey( spep_z -a1 + 130, 1, 115.3, -220.6 , 0 );
setMoveKey( spep_z -a1 + 131, 1, 115.3, -220.6 , 0 );
setMoveKey( spep_z -a1 + 132, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 133, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 134, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_z -a1 + 135, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_z -a1 + 136, 1, 113.7, -219.9 , 0 );
setMoveKey( spep_z -a1 + 137, 1, 113.7, -219.9 , 0 );
setMoveKey( spep_z -a1 + 138, 1, 112.1, -219.4 , 0 );
setMoveKey( spep_z -a1 + 139, 1, 112.1, -219.4 , 0 );
setMoveKey( spep_z -a1 + 140, 1, 113.9, -220.2 , 0 );
setMoveKey( spep_z -a1 + 141, 1, 113.9, -220.2 , 0 );
setMoveKey( spep_z -a1 + 142, 1, 115.6, -220.9 , 0 );
setMoveKey( spep_z -a1 + 143, 1, 115.6, -220.9 , 0 );
setMoveKey( spep_z -a1 + 144, 1, 113.9, -220.2 , 0 );
setMoveKey( spep_z -a1 + 145, 1, 113.9, -220.2 , 0 );
setMoveKey( spep_z -a1 + 146, 1, 112.1, -219.5 , 0 );
setMoveKey( spep_z -a1 + 147, 1, 112.1, -219.5 , 0 );
setMoveKey( spep_z -a1 + 148, 1, 113.9, -219.6 , 0 );
setMoveKey( spep_z -a1 + 149, 1, 113.9, -219.6 , 0 );
setMoveKey( spep_z -a1 + 150, 1, 115.6, -219.7 , 0 );
setMoveKey( spep_z -a1 + 151, 1, 115.6, -219.7 , 0 );
setMoveKey( spep_z -a1 + 152, 1, 114.5, -220 , 0 );
setMoveKey( spep_z -a1 + 153, 1, 114.5, -220 , 0 );
setMoveKey( spep_z -a1 + 154, 1, 113.4, -220.4 , 0 );
setMoveKey( spep_z -a1 + 155, 1, 113.4, -220.4 , 0 );
setMoveKey( spep_z -a1 + 156, 1, 112.9, -219.5 , 0 );
setMoveKey( spep_z -a1 + 157, 1, 112.9, -219.5 , 0 );
setMoveKey( spep_z -a1 + 158, 1, 112.3, -218.7 , 0 );
setMoveKey( spep_z -a1 + 159, 1, 112.3, -218.7 , 0 );
setMoveKey( spep_z -a1 + 160, 1, 114, -219.1 , 0 );
setMoveKey( spep_z -a1 + 161, 1, 114, -219.1 , 0 );
setMoveKey( spep_z -a1 + 162, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 163, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 164, 1, 113.9, -219.9 , 0 );
setMoveKey( spep_z -a1 + 165, 1, 113.9, -219.9 , 0 );
setMoveKey( spep_z -a1 + 166, 1, 112.1, -220.4 , 0 );
setMoveKey( spep_z -a1 + 167, 1, 112.1, -220.4 , 0 );
setMoveKey( spep_z -a1 + 168, 1, 113.9, -219.6 , 0 );
setMoveKey( spep_z -a1 + 169, 1, 113.9, -219.6 , 0 );
setMoveKey( spep_z -a1 + 170, 1, 115.6, -218.8 , 0 );
setMoveKey( spep_z -a1 + 171, 1, 115.6, -218.8 , 0 );
setMoveKey( spep_z -a1 + 172, 1, 114.5, -219.2 , 0 );
setMoveKey( spep_z -a1 + 173, 1, 114.5, -219.2 , 0 );
setMoveKey( spep_z -a1 + 174, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_z -a1 + 175, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_z -a1 + 176, 1, 112.9, -219.2 , 0 );
setMoveKey( spep_z -a1 + 177, 1, 112.9, -219.2 , 0 );
setMoveKey( spep_z -a1 + 178, 1, 112.3, -218.7 , 0 );
setMoveKey( spep_z + 178, 1, 112.3, -218.7 , 0 );

setScaleKey( spep_z + 0, 1, 1.12, 1.12 );
setScaleKey( spep_z -a1 + 2, 1, 1.22, 1.22 );
setScaleKey( spep_z -a1 + 3, 1, 1.22, 1.22 );
setScaleKey( spep_z -a1 + 4, 1, 1.25, 1.26 );
setScaleKey( spep_z -a1 + 5, 1, 1.25, 1.26 );
setScaleKey( spep_z -a1 + 5, 1, 1.25, 1.26 );
setScaleKey( spep_z -a1 + 6, 1, 1.28, 1.28 );
setScaleKey( spep_z -a1 + 7, 1, 1.28, 1.28 );
setScaleKey( spep_z -a1 + 7, 1, 1.28, 1.28 );
setScaleKey( spep_z -a1 + 8, 1, 1.29, 1.3 );
setScaleKey( spep_z -a1 + 9, 1, 1.29, 1.3 );
setScaleKey( spep_z -a1 + 9, 1, 1.29, 1.3 );
setScaleKey( spep_z -a1 + 10, 1, 1.3, 1.31 );
setScaleKey( spep_z -a1 + 31, 1, 1.3, 1.31 );
setScaleKey( spep_z -a1 + 31, 1, 1.3, 1.31 );
setScaleKey( spep_z -a1 + 32, 1, 1.26, 1.27 );
setScaleKey( spep_z + 178, 1, 1.26, 1.27 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z -a1 + 31, 1, 0 );
setRotateKey( spep_z -a1 + 31, 1, 0 );
setRotateKey( spep_z -a1 + 32, 1, -15 );
setRotateKey( spep_z -a1 + 33, 1, -15 );
setRotateKey( spep_z -a1 + 34, 1, -14.2 );
setRotateKey( spep_z -a1 + 35, 1, -14.2 );
setRotateKey( spep_z -a1 + 36, 1, -13.9 );
setRotateKey( spep_z -a1 + 37, 1, -13.9 );
setRotateKey( spep_z -a1 + 38, 1, -13.7 );
setRotateKey( spep_z -a1 + 39, 1, -13.7 );
setRotateKey( spep_z -a1 + 40, 1, -13.6 );
setRotateKey( spep_z -a1 + 41, 1, -13.6 );
setRotateKey( spep_z -a1 + 42, 1, -13.4 );
setRotateKey( spep_z -a1 + 43, 1, -13.4 );
setRotateKey( spep_z -a1 + 44, 1, -13.3 );
setRotateKey( spep_z -a1 + 45, 1, -13.3 );
setRotateKey( spep_z -a1 + 46, 1, -13.2 );
setRotateKey( spep_z -a1 + 48, 1, -13.2 );
setRotateKey( spep_z -a1 + 49, 1, -13.2 );
setRotateKey( spep_z -a1 + 50, 1, -13.1 );
setRotateKey( spep_z -a1 + 51, 1, -13.1 );
setRotateKey( spep_z -a1 + 52, 1, -13 );
setRotateKey( spep_z + 178, 1, -13 );

-- ** 音 ** --
--【全体攻撃】アサルトレイン音
SE022 = playSeVer2( spep_z + 0 , 1409, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 0 , SE022, 200 );
SE022_02 = playSeVer2( spep_z + 0, 1403, "",0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 0, SE022_02, 130 );

--【全体攻撃】爆発
SE023 = playSeVer2( spep_z + 28 -2, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 28 -2, SE023, 110 );

--【全体攻撃】アサルトレイン音
SE024 = playSeVer2( spep_z + 0, 1410, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 0, SE024, 200 );

--【全体攻撃】爆発
SE025 = playSeVer2( spep_z + 44 +6, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 44 +6, SE025, 110 );

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, 178 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_z + 54 );
endPhase( spep_z + 178 -2 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 敵に気功が当たる (178F)
------------------------------------------------------
spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

    if(_IS_DODGE_ == 1) then

    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
        if (_IS_PLAYER_SIDE_ == 1) then

            setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

        else

            setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

        end

    setEffAlphaKey( SP_dodge, kaihi, 255);

    pauseAll( SP_dodge, 67);

    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

    endPhase(SP_dodge+10);
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_z + 0, SP_06r, 0x100, -1, 0, 0, 0 );  --敵に気功が当たる（全体攻撃あり） ef_005
setEffMoveKey( spep_z + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_z + 178, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_z + 178, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_z + 0, finish_f, 0 );
setEffRotateKey( spep_z + 178, finish_f, 0 );
setEffAlphaKey( spep_z + 0, finish_f, 255 );
setEffAlphaKey( spep_z + 178, finish_f, 255 );

finish_b = entryEffect( spep_z + 0, SP_07, 0x80, -1, 0, 0, 0 );  --敵に気功が当たる ef_005_b
setEffMoveKey( spep_z + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_z + 178, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_z + 178, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, finish_b, 0 );
setEffRotateKey( spep_z + 178, finish_b, 0 );
setEffAlphaKey( spep_z + 0, finish_b, 255 );
setEffAlphaKey( spep_z + 178, finish_b, 255 );

a1 = 1;
-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
changeAnime( spep_z + 0, 1, 104 );
changeAnime( spep_z -a1 + 32, 1, 106 );

setMoveKey( spep_z + 0, 1, 233.9, -387.1 , 0 );
setMoveKey( spep_z -a1 + 2, 1, 188.3, -329.9 , 0 );
setMoveKey( spep_z -a1 + 3, 1, 188.3, -329.9 , 0 );
setMoveKey( spep_z -a1 + 4, 1, 168.7, -304.9 , 0 );
setMoveKey( spep_z -a1 + 5, 1, 168.7, -304.9 , 0 );
setMoveKey( spep_z -a1 + 5, 1, 168.7, -304.9 , 0 );
setMoveKey( spep_z -a1 + 6, 1, 153.5, -285.4 , 0 );
setMoveKey( spep_z -a1 + 7, 1, 153.5, -285.4 , 0 );
setMoveKey( spep_z -a1 + 7, 1, 153.5, -285.4 , 0 );
setMoveKey( spep_z -a1 + 8, 1, 140.8, -269 , 0 );
setMoveKey( spep_z -a1 + 9, 1, 140.8, -269 , 0 );
setMoveKey( spep_z -a1 + 9, 1, 140.8, -269 , 0 );
setMoveKey( spep_z -a1 + 10, 1, 129.7, -254.5 , 0 );
setMoveKey( spep_z -a1 + 11, 1, 129.7, -254.5 , 0 );
setMoveKey( spep_z -a1 + 11, 1, 129.7, -254.5 , 0 );
setMoveKey( spep_z -a1 + 12, 1, 119.9, -241.6 , 0 );
setMoveKey( spep_z -a1 + 13, 1, 119.9, -241.6 , 0 );
setMoveKey( spep_z -a1 + 13, 1, 119.9, -241.6 , 0 );
setMoveKey( spep_z -a1 + 14, 1, 111.2, -230.1 , 0 );
setMoveKey( spep_z -a1 + 31, 1, 111.2, -230.1 , 0 );
setMoveKey( spep_z -a1 + 31, 1, 111.2, -230.1 , 0 );
setMoveKey( spep_z -a1 + 32, 1, 113.8, -212.5 , 0 ); --106
setMoveKey( spep_z -a1 + 33, 1, 113.8, -212.5 , 0 ); 
setMoveKey( spep_z -a1 + 34, 1, 110.9, -216.7 , 0 );
setMoveKey( spep_z -a1 + 35, 1, 110.9, -216.7 , 0 );
setMoveKey( spep_z -a1 + 36, 1, 114.3, -218.1 , 0 );
setMoveKey( spep_z -a1 + 37, 1, 114.3, -218.1 , 0 );
setMoveKey( spep_z -a1 + 38, 1, 112.3, -215.7 , 0 );
setMoveKey( spep_z -a1 + 39, 1, 112.3, -215.7 , 0 );
setMoveKey( spep_z -a1 + 40, 1, 115.1, -218.1 , 0 );
setMoveKey( spep_z -a1 + 41, 1, 115.1, -218.1 , 0 );
setMoveKey( spep_z -a1 + 42, 1, 110.6, -215.6 , 0 );
setMoveKey( spep_z -a1 + 43, 1, 110.6, -215.6 , 0 );
setMoveKey( spep_z -a1 + 44, 1, 115.1, -218.9 , 0 );
setMoveKey( spep_z -a1 + 45, 1, 115.1, -218.9 , 0 );
setMoveKey( spep_z -a1 + 46, 1, 112.1, -216 , 0 );
setMoveKey( spep_z -a1 + 47, 1, 112.1, -216 , 0 );
setMoveKey( spep_z -a1 + 48, 1, 112.2, -218.3 , 0 );
setMoveKey( spep_z -a1 + 49, 1, 112.2, -218.3 , 0 );
setMoveKey( spep_z -a1 + 50, 1, 113.1, -218.6 , 0 );
setMoveKey( spep_z -a1 + 51, 1, 113.1, -218.6 , 0 );
setMoveKey( spep_z -a1 + 52, 1, 114, -218.7 , 0 );
setMoveKey( spep_z -a1 + 53, 1, 114, -218.7 , 0 );
setMoveKey( spep_z -a1 + 54, 1, 87.8, -220.6 , 0 );
setMoveKey( spep_z -a1 + 55, 1, 87.8, -220.6 , 0 );
setMoveKey( spep_z -a1 + 56, 1, 130, -232.3 , 0 );
setMoveKey( spep_z -a1 + 57, 1, 130, -232.3 , 0 );
setMoveKey( spep_z -a1 + 58, 1, 94.4, -216.5 , 0 );
setMoveKey( spep_z -a1 + 59, 1, 94.4, -216.5 , 0 );
setMoveKey( spep_z -a1 + 60, 1, 121.1, -222.7 , 0 );
setMoveKey( spep_z -a1 + 61, 1, 121.1, -222.7 , 0 );
setMoveKey( spep_z -a1 + 62, 1, 96.1, -226.2 , 0 );
setMoveKey( spep_z -a1 + 63, 1, 96.1, -226.2 , 0 );
setMoveKey( spep_z -a1 + 64, 1, 110.5, -210.6 , 0 );
setMoveKey( spep_z -a1 + 65, 1, 110.5, -210.6 , 0 );
setMoveKey( spep_z -a1 + 66, 1, 111.2, -228.8 , 0 );
setMoveKey( spep_z -a1 + 67, 1, 111.2, -228.8 , 0 );
setMoveKey( spep_z -a1 + 68, 1, 110.5, -213.2 , 0 );
setMoveKey( spep_z -a1 + 69, 1, 110.5, -213.2 , 0 );
setMoveKey( spep_z -a1 + 70, 1, 122.9, -224.6 , 0 );
setMoveKey( spep_z -a1 + 71, 1, 122.9, -224.6 , 0 );
setMoveKey( spep_z -a1 + 72, 1, 110, -216.6 , 0 );
setMoveKey( spep_z -a1 + 73, 1, 110, -216.6 , 0 );
setMoveKey( spep_z -a1 + 74, 1, 114.3, -211 , 0 );
setMoveKey( spep_z -a1 + 75, 1, 114.3, -211 , 0 );
setMoveKey( spep_z -a1 + 76, 1, 106.2, -220.6 , 0 );
setMoveKey( spep_z -a1 + 77, 1, 106.2, -220.6 , 0 );
setMoveKey( spep_z -a1 + 78, 1, 113.2, -223.5 , 0 );
setMoveKey( spep_z -a1 + 79, 1, 113.2, -223.5 , 0 );
setMoveKey( spep_z -a1 + 80, 1, 114.7, -218.2 , 0 );
setMoveKey( spep_z -a1 + 81, 1, 114.7, -218.2 , 0 );
setMoveKey( spep_z -a1 + 82, 1, 111.6, -224.1 , 0 );
setMoveKey( spep_z -a1 + 83, 1, 111.6, -224.1 , 0 );
setMoveKey( spep_z -a1 + 84, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_z -a1 + 85, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_z -a1 + 86, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_z -a1 + 87, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_z -a1 + 88, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_z -a1 + 89, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_z -a1 + 90, 1, 113.1, -217.5 , 0 );
setMoveKey( spep_z -a1 + 91, 1, 113.1, -217.5 , 0 );
setMoveKey( spep_z -a1 + 92, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 93, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 94, 1, 113.9, -216.6 , 0 );
setMoveKey( spep_z -a1 + 95, 1, 113.9, -216.6 , 0 );
setMoveKey( spep_z -a1 + 96, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_z -a1 + 97, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_z -a1 + 98, 1, 114.1, -218 , 0 );
setMoveKey( spep_z -a1 + 99, 1, 114.1, -218 , 0 );
setMoveKey( spep_z -a1 + 100, 1, 112.3, -218.7 , 0 );
setMoveKey( spep_z -a1 + 101, 1, 112.3, -218.7 , 0 );
setMoveKey( spep_z -a1 + 102, 1, 114.7, -221.7 , 0 );
setMoveKey( spep_z -a1 + 103, 1, 114.7, -221.7 , 0 );
setMoveKey( spep_z -a1 + 104, 1, 111.6, -220 , 0 );
setMoveKey( spep_z -a1 + 105, 1, 111.6, -220 , 0 );
setMoveKey( spep_z -a1 + 106, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_z -a1 + 107, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_z -a1 + 108, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_z -a1 + 109, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_z -a1 + 110, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_z -a1 + 111, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_z -a1 + 112, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 113, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 114, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_z -a1 + 115, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_z -a1 + 116, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_z -a1 + 117, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_z -a1 + 118, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_z -a1 + 119, 1, 115.8, -217.6 , 0 );
setMoveKey( spep_z -a1 + 120, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_z -a1 + 121, 1, 112.1, -219.7 , 0 );
setMoveKey( spep_z -a1 + 122, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_z -a1 + 123, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_z -a1 + 124, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 125, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 126, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_z -a1 + 127, 1, 115.3, -221.4 , 0 );
setMoveKey( spep_z -a1 + 128, 1, 112.1, -219 , 0 );
setMoveKey( spep_z -a1 + 129, 1, 112.1, -219 , 0 );
setMoveKey( spep_z -a1 + 130, 1, 115.3, -220.6 , 0 );
setMoveKey( spep_z -a1 + 131, 1, 115.3, -220.6 , 0 );
setMoveKey( spep_z -a1 + 132, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 133, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 134, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_z -a1 + 135, 1, 115.3, -220.4 , 0 );
setMoveKey( spep_z -a1 + 136, 1, 113.7, -219.9 , 0 );
setMoveKey( spep_z -a1 + 137, 1, 113.7, -219.9 , 0 );
setMoveKey( spep_z -a1 + 138, 1, 112.1, -219.4 , 0 );
setMoveKey( spep_z -a1 + 139, 1, 112.1, -219.4 , 0 );
setMoveKey( spep_z -a1 + 140, 1, 113.9, -220.2 , 0 );
setMoveKey( spep_z -a1 + 141, 1, 113.9, -220.2 , 0 );
setMoveKey( spep_z -a1 + 142, 1, 115.6, -220.9 , 0 );
setMoveKey( spep_z -a1 + 143, 1, 115.6, -220.9 , 0 );
setMoveKey( spep_z -a1 + 144, 1, 113.9, -220.2 , 0 );
setMoveKey( spep_z -a1 + 145, 1, 113.9, -220.2 , 0 );
setMoveKey( spep_z -a1 + 146, 1, 112.1, -219.5 , 0 );
setMoveKey( spep_z -a1 + 147, 1, 112.1, -219.5 , 0 );
setMoveKey( spep_z -a1 + 148, 1, 113.9, -219.6 , 0 );
setMoveKey( spep_z -a1 + 149, 1, 113.9, -219.6 , 0 );
setMoveKey( spep_z -a1 + 150, 1, 115.6, -219.7 , 0 );
setMoveKey( spep_z -a1 + 151, 1, 115.6, -219.7 , 0 );
setMoveKey( spep_z -a1 + 152, 1, 114.5, -220 , 0 );
setMoveKey( spep_z -a1 + 153, 1, 114.5, -220 , 0 );
setMoveKey( spep_z -a1 + 154, 1, 113.4, -220.4 , 0 );
setMoveKey( spep_z -a1 + 155, 1, 113.4, -220.4 , 0 );
setMoveKey( spep_z -a1 + 156, 1, 112.9, -219.5 , 0 );
setMoveKey( spep_z -a1 + 157, 1, 112.9, -219.5 , 0 );
setMoveKey( spep_z -a1 + 158, 1, 112.3, -218.7 , 0 );
setMoveKey( spep_z -a1 + 159, 1, 112.3, -218.7 , 0 );
setMoveKey( spep_z -a1 + 160, 1, 114, -219.1 , 0 );
setMoveKey( spep_z -a1 + 161, 1, 114, -219.1 , 0 );
setMoveKey( spep_z -a1 + 162, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 163, 1, 115.6, -219.5 , 0 );
setMoveKey( spep_z -a1 + 164, 1, 113.9, -219.9 , 0 );
setMoveKey( spep_z -a1 + 165, 1, 113.9, -219.9 , 0 );
setMoveKey( spep_z -a1 + 166, 1, 112.1, -220.4 , 0 );
setMoveKey( spep_z -a1 + 167, 1, 112.1, -220.4 , 0 );
setMoveKey( spep_z -a1 + 168, 1, 113.9, -219.6 , 0 );
setMoveKey( spep_z -a1 + 169, 1, 113.9, -219.6 , 0 );
setMoveKey( spep_z -a1 + 170, 1, 115.6, -218.8 , 0 );
setMoveKey( spep_z -a1 + 171, 1, 115.6, -218.8 , 0 );
setMoveKey( spep_z -a1 + 172, 1, 114.5, -219.2 , 0 );
setMoveKey( spep_z -a1 + 173, 1, 114.5, -219.2 , 0 );
setMoveKey( spep_z -a1 + 174, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_z -a1 + 175, 1, 113.4, -219.7 , 0 );
setMoveKey( spep_z -a1 + 176, 1, 112.9, -219.2 , 0 );
setMoveKey( spep_z -a1 + 177, 1, 112.9, -219.2 , 0 );
setMoveKey( spep_z -a1 + 178, 1, 112.3, -218.7 , 0 );
setMoveKey( spep_z + 178, 1, 112.3, -218.7 , 0 );

setScaleKey( spep_z + 0, 1, 1.12, 1.12 );
setScaleKey( spep_z -a1 + 2, 1, 1.22, 1.22 );
setScaleKey( spep_z -a1 + 3, 1, 1.22, 1.22 );
setScaleKey( spep_z -a1 + 4, 1, 1.25, 1.26 );
setScaleKey( spep_z -a1 + 5, 1, 1.25, 1.26 );
setScaleKey( spep_z -a1 + 5, 1, 1.25, 1.26 );
setScaleKey( spep_z -a1 + 6, 1, 1.28, 1.28 );
setScaleKey( spep_z -a1 + 7, 1, 1.28, 1.28 );
setScaleKey( spep_z -a1 + 7, 1, 1.28, 1.28 );
setScaleKey( spep_z -a1 + 8, 1, 1.29, 1.3 );
setScaleKey( spep_z -a1 + 9, 1, 1.29, 1.3 );
setScaleKey( spep_z -a1 + 9, 1, 1.29, 1.3 );
setScaleKey( spep_z -a1 + 10, 1, 1.3, 1.31 );
setScaleKey( spep_z -a1 + 31, 1, 1.3, 1.31 );
setScaleKey( spep_z -a1 + 31, 1, 1.3, 1.31 );
setScaleKey( spep_z -a1 + 32, 1, 1.26, 1.27 );
setScaleKey( spep_z + 178, 1, 1.26, 1.27 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z -a1 + 31, 1, 0 );
setRotateKey( spep_z -a1 + 31, 1, 0 );
setRotateKey( spep_z -a1 + 32, 1, -15 );
setRotateKey( spep_z -a1 + 33, 1, -15 );
setRotateKey( spep_z -a1 + 34, 1, -14.2 );
setRotateKey( spep_z -a1 + 35, 1, -14.2 );
setRotateKey( spep_z -a1 + 36, 1, -13.9 );
setRotateKey( spep_z -a1 + 37, 1, -13.9 );
setRotateKey( spep_z -a1 + 38, 1, -13.7 );
setRotateKey( spep_z -a1 + 39, 1, -13.7 );
setRotateKey( spep_z -a1 + 40, 1, -13.6 );
setRotateKey( spep_z -a1 + 41, 1, -13.6 );
setRotateKey( spep_z -a1 + 42, 1, -13.4 );
setRotateKey( spep_z -a1 + 43, 1, -13.4 );
setRotateKey( spep_z -a1 + 44, 1, -13.3 );
setRotateKey( spep_z -a1 + 45, 1, -13.3 );
setRotateKey( spep_z -a1 + 46, 1, -13.2 );
setRotateKey( spep_z -a1 + 48, 1, -13.2 );
setRotateKey( spep_z -a1 + 49, 1, -13.2 );
setRotateKey( spep_z -a1 + 50, 1, -13.1 );
setRotateKey( spep_z -a1 + 51, 1, -13.1 );
setRotateKey( spep_z -a1 + 52, 1, -13 );
setRotateKey( spep_z + 178, 1, -13 );

-- ** 音 ** --
--【全体攻撃】アサルトレイン音
SE022 = playSeVer2( spep_z + 0 , 1409, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 0 , SE022, 200 );
SE022_02 = playSeVer2( spep_z + 0, 1403, "",0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 0, SE022_02, 130 );

--【全体攻撃】爆発
SE023 = playSeVer2( spep_z + 28 -2, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 28 -2, SE023, 110 );

--【全体攻撃】アサルトレイン音
SE024 = playSeVer2( spep_z + 0, 1410, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 0, SE024, 200 );

--【全体攻撃】爆発
SE025 = playSeVer2( spep_z + 44 +6, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 44 +6, SE025, 110 );

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, 178 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_z + 54 );
endPhase( spep_z + 178 -2 );

end
end