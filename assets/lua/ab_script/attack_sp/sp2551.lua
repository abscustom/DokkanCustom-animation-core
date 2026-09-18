--1026610：LR_ブルマ(少女期)_ブルマとウーロンの生存戦略
--sp_effect_b3_00005
--sp2551

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

--エフェクト(味方)
SP_01 = 161848; -- ブルマがウーロンをにらむ   ef_001 手前　味方側
SP_01b = 161849; -- ブルマがウーロンをにらむ   ef_001_b 奥　敵味方兼用　反転あり
SP_02 = 161851; -- ウーロン変身～ロケット   ef_002 味方側
SP_03 = 161853; -- 敵にロケットが突っ込む   ef_003 手前　味方側
SP_03b = 161854; -- 敵にロケットが突っ込む   ef_003_b 奥　敵味方兼用　反転あり
SP_04 = 161856; -- ブルマがカプセルを選ぶ   ef_004 味方側
SP_05 = 161858; -- 上空にカプセルを投げる～ロケラン発射   ef_005 味方側
SP_06 = 161860; -- 敵に命中し爆発   ef_006 手前　味方側
SP_06b = 161861; -- 敵に命中し爆発   ef_006_b 奥　敵味方兼用　反転あり

--エフェクト(てき)
SP_01r = 161850; -- ブルマがウーロンをにらむ   ef_001r 手前　敵側
SP_02r = 161852; -- ウーロン変身～ロケット   ef_002_r 敵側
SP_03r = 161855; -- 敵にロケットが突っ込む   ef_003r 手前　敵側
SP_04r = 161857; -- ブルマがカプセルを選ぶ   ef_004_r 敵側
SP_05r = 161859; -- 上空にカプセルを投げる～ロケラン発射   ef_005_r 敵側
SP_06r = 161862; -- 敵に命中し爆発   ef_006_r 手前　敵側

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
-- changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
-- setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

-- setMoveKey(   0,   1,    0, -5000,   0 );
-- setMoveKey(   1,   1,    0, -5000,   0 );
-- setMoveKey(   2,   1,    0, -5000,   0 );
-- setMoveKey(   3,   1,    0, -5000,   0 );
-- setMoveKey(   4,   1,    0, -5000,   0 );
-- setMoveKey(   5,   1,    0, -5000,   0 );
-- setMoveKey(   6,   1,    0, -5000,   0 );
-- setScaleKey(  0,   1,  1.6, 1.6 );
-- setScaleKey(  1,   1,  1.6, 1.6 );
-- setScaleKey(  2,   1,  1.6, 1.6 );
-- setScaleKey(  3,   1,  1.6, 1.6 );
-- setScaleKey(  4,   1,  1.6, 1.6 );
-- setScaleKey(  5,   1,  1.6, 1.6 );
-- setScaleKey(  6,   1,  1.6, 1.6 );
-- setRotateKey( 0,   1,  0 );
-- setRotateKey( 1,   1,  0 );
-- setRotateKey( 2,   1,  0 );
-- setRotateKey( 3,   1,  0 );
-- setRotateKey( 4,   1,  0 );
-- setRotateKey( 5,   1,  0 );
-- setRotateKey( 6,   1,  0 );

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- ブルマがウーロンをにらむ
-------------------------------------------------
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001 手前　味方側
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + 58, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + 58, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + 58, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + 58 -2, base_0f, 255);
setEffAlphaKey( spep_0 + 58 -1, base_0f, 255);
setEffAlphaKey( spep_0 + 58, base_0f, 0);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001_b 奥　敵味方兼用　反転あり
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + 58, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + 58, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + 58, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + 58 -2, base_0b, 255);
setEffAlphaKey( spep_0 + 58 -1, base_0b, 255);
setEffAlphaKey( spep_0 + 58, base_0b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 58 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 100 );

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 58, 1, 0 );

setMoveKey( spep_0 + 0, 1, 271.2, 285.8 , 0 );
setMoveKey( spep_0 + 1, 1, 267, 328.2 , 0 );
setMoveKey( spep_0 + 2, 1, 267, 328.2 , 0 );
setMoveKey( spep_0 + 3, 1, 263.5, 363.7 , 0 );
setMoveKey( spep_0 + 4, 1, 263.5, 363.7 , 0 );
setMoveKey( spep_0 + 5, 1, 260.4, 394.5 , 0 );
setMoveKey( spep_0 + 6, 1, 260.4, 394.5 , 0 );
setMoveKey( spep_0 -1 + 8, 1, 257.7, 421.5 , 0 );
setMoveKey( spep_0 -1 + 10, 1, 255.3, 445.7 , 0 );
setMoveKey( spep_0 -1 + 12, 1, 253.1, 467.5 , 0 );
setMoveKey( spep_0 -1 + 14, 1, 251.2, 487.3 , 0 );
setMoveKey( spep_0 -1 + 16, 1, 249.4, 505.3 , 0 );
setMoveKey( spep_0 -1 + 18, 1, 247.8, 521.9 , 0 );
setMoveKey( spep_0 -1 + 20, 1, 246.3, 537.2 , 0 );
setMoveKey( spep_0 -1 + 22, 1, 244.9, 551.3 , 0 );
setMoveKey( spep_0 -1 + 24, 1, 243.6, 564.4 , 0 );
setMoveKey( spep_0 -1 + 26, 1, 242.4, 576.5 , 0 );
setMoveKey( spep_0 -1 + 28, 1, 241.3, 587.8 , 0 );
setMoveKey( spep_0 -1 + 30, 1, 240.3, 598.3 , 0 );
setMoveKey( spep_0 -1 + 32, 1, 239.4, 608.1 , 0 );
setMoveKey( spep_0 -1 + 34, 1, 238.5, 617.2 , 0 );
setMoveKey( spep_0 -1 + 36, 1, 237.6, 625.7 , 0 );
setMoveKey( spep_0 -1 + 38, 1, 236.9, 633.6 , 0 );
setMoveKey( spep_0 -1 + 40, 1, 236.2, 641 , 0 );
setMoveKey( spep_0 -1 + 42, 1, 235.6, 647.9 , 0 );
setMoveKey( spep_0 -1 + 44, 1, 234.9, 654.3 , 0 );
setMoveKey( spep_0 -1 + 46, 1, 234.4, 660.3 , 0 );
setMoveKey( spep_0 -1 + 48, 1, 233.8, 665.8 , 0 );
setMoveKey( spep_0 -1 + 50, 1, 233.4, 670.9 , 0 );
setMoveKey( spep_0 -1 + 52, 1, 232.9, 675.7 , 0 );
setMoveKey( spep_0 -1 + 54, 1, 232.5, 680.1 , 0 );
setMoveKey( spep_0 -1 + 56, 1, 232.1, 684.1 , 0 );
setMoveKey( spep_0 -1 + 58, 1, 231.8, 687.8 , 0 );
setMoveKey( spep_0 + 58, 1, 231.8, 687.8 , 0 );

setScaleKey( spep_0 + 0, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 1, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 2, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 3, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 4, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 5, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 6, 1, 0.64, 0.64 );
setScaleKey( spep_0 -1 + 8, 1, 0.66, 0.66 );
setScaleKey( spep_0 -1 + 10, 1, 0.68, 0.68 );
setScaleKey( spep_0 -1 + 12, 1, 0.69, 0.69 );
setScaleKey( spep_0 -1 + 14, 1, 0.71, 0.7 );
setScaleKey( spep_0 -1 + 16, 1, 0.72, 0.72 );
setScaleKey( spep_0 -1 + 18, 1, 0.73, 0.73 );
setScaleKey( spep_0 -1 + 20, 1, 0.74, 0.74 );
setScaleKey( spep_0 -1 + 22, 1, 0.75, 0.75 );
setScaleKey( spep_0 -1 + 24, 1, 0.76, 0.76 );
setScaleKey( spep_0 -1 + 26, 1, 0.77, 0.77 );
setScaleKey( spep_0 -1 + 28, 1, 0.78, 0.77 );
setScaleKey( spep_0 -1 + 30, 1, 0.78, 0.78 );
setScaleKey( spep_0 -1 + 32, 1, 0.79, 0.79 );
setScaleKey( spep_0 -1 + 34, 1, 0.8, 0.79 );
setScaleKey( spep_0 -1 + 36, 1, 0.8, 0.8 );
setScaleKey( spep_0 -1 + 38, 1, 0.81, 0.8 );
setScaleKey( spep_0 -1 + 40, 1, 0.81, 0.81 );
setScaleKey( spep_0 -1 + 42, 1, 0.82, 0.81 );
setScaleKey( spep_0 -1 + 44, 1, 0.82, 0.82 );
setScaleKey( spep_0 -1 + 46, 1, 0.82, 0.82 );
setScaleKey( spep_0 -1 + 48, 1, 0.83, 0.83 );
setScaleKey( spep_0 -1 + 50, 1, 0.83, 0.83 );
setScaleKey( spep_0 -1 + 52, 1, 0.84, 0.83 );
setScaleKey( spep_0 -1 + 54, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 58, 1, 0.84, 0.84 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 58, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--ウーロン手をふる
SE002 = playSeVer2( spep_0 + 12, 1113, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 18, 1113, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 38, 1113, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 42, 1113, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 58;


-------------------------------------------------
-- ウーロン変身～ロケット
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002 味方側
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 224, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 224, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 224, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 224 -2, base_1, 255);
setEffAlphaKey( spep_1 + 224 -1, base_1, 255);
setEffAlphaKey( spep_1 + 224, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 224 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--腕あげる
SE006 = playSeVer2( spep_1 + 14, 1003, "", 0, 0, 0, -1);

--ウーロン変化
SE007 = playSeVer2( spep_1 + 24, 1291, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 24, 1246, "",spep_1 + 36, 0, 4, -1);
SE009 = playSeVer2( spep_1 + 24, 31, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 24, SE009, 130 );
SE010 = playSeVer2( spep_1 + 24, 1214, "",spep_1 + 96, 0, 32, -1);
SE011 = playSeVer2( spep_1 + 24, 1354, "", 0, 0, 0, -1);

--ミサイルになって飛び立つ
SE012 = playSeVer2( spep_1 + 72, 1027, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 72, 1117, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 72, 63, "", 0, 0, 0, -1);

--ミサイルで飛行中
SE015 = playSeVer2( spep_1 + 130, 1121, "",spep_1 + 262, 0, 12, -1);
SE016 = playSeVer2( spep_1 + 130, 1019, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 180; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
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

-- ** 音 ** --
--ミサイル加速する
SE017 = playSeVer2( spep_1 + 194, 1019, "",spep_1 + 262, 0, 10, -1);
SE018 = playSeVer2( spep_1 + 194, 1258, "",spep_1 + 268, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 194, SE018, 63 );
SE019 = playSeVer2( spep_1 + 200, 1116, "",spep_1 + 268, 0, 16, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 224;


-------------------------------------------------
-- 敵にロケットが突っ込む
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- ef_003 手前　味方側
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 56, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 56, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 56, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 56 -2, base_2f, 255);
setEffAlphaKey( spep_2 + 56 -1, base_2f, 255);
setEffAlphaKey( spep_2 + 56, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- ef_003_b 奥　敵味方兼用　反転あり
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 56, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 56, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 56, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 56 -2, base_2b, 255);
setEffAlphaKey( spep_2 + 56 -1, base_2b, 255);
setEffAlphaKey( spep_2 + 56, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 56, 1, 0 );

changeAnime( spep_2 + 0, 1, 117 );
changeAnime( spep_2 -1 + 26, 1, 104 );
changeAnime( spep_2 -1 + 32, 1, 106 );

setMoveKey( spep_2 + 0, 1, 274.6, 20.4 , 0 );
setMoveKey( spep_2 -1 + 2, 1, 257.2, 20.4 , 0 );
setMoveKey( spep_2 -1 + 4, 1, 239.9, 20.4 , 0 );
setMoveKey( spep_2 -1 + 6, 1, 222.5, 20.4 , 0 );
setMoveKey( spep_2 -1 + 8, 1, 205.2, 20.4 , 0 );
setMoveKey( spep_2 -1 + 10, 1, 187.8, 20.4 , 0 );
setMoveKey( spep_2 -1 + 12, 1, 170.4, 20.4 , 0 );
setMoveKey( spep_2 -1 + 14, 1, 153.1, 20.4 , 0 );
setMoveKey( spep_2 -1 + 16, 1, 135.7, 20.4 , 0 );
setMoveKey( spep_2 -1 + 18, 1, 118.3, 20.4 , 0 );
setMoveKey( spep_2 -1 + 20, 1, 101, 20.4 , 0 );
setMoveKey( spep_2 -1 + 22, 1, 83.6, 20.4 , 0 );
setMoveKey( spep_2 -1 + 24, 1, 66.3, 20.4 , 0 );
setMoveKey( spep_2 -1 + 26, 1, 3, 20.4 , 0 );
setMoveKey( spep_2 -1 + 27, 1, 3, 20.4 , 0 );
setMoveKey( spep_2 -1 + 28, 1, -7.5, 20.4 , 0 );
setMoveKey( spep_2 -1 + 29, 1, -7.5, 20.4 , 0 );
setMoveKey( spep_2 -1 + 30, 1, 6.2, 50.7 , 0 );
setMoveKey( spep_2 -1 + 31, 1, 6.2, 50.7 , 0 );
setMoveKey( spep_2 -1 + 32, 1, -65.3, -15.2 , 0 );
setMoveKey( spep_2 -1 + 33, 1, -65.3, -15.2 , 0 );
setMoveKey( spep_2 -1 + 34, 1, 81, -60.4 , 0 );
setMoveKey( spep_2 -1 + 35, 1, 81, -60.4 , 0 );
setMoveKey( spep_2 -1 + 36, 1, 134.5, -81.3 , 0 );
setMoveKey( spep_2 -1 + 37, 1, 134.5, -81.3 , 0 );
setMoveKey( spep_2 -1 + 38, 1, 260.6, -118.5 , 0 );
setMoveKey( spep_2 -1 + 39, 1, 260.6, -118.5 , 0 );
setMoveKey( spep_2 -1 + 40, 1, 294, -220.1 , 0 );
setMoveKey( spep_2 -1 + 41, 1, 294, -220.1 , 0 );
setMoveKey( spep_2 -1 + 42, 1, 440.3, -265.2 , 0 );
setMoveKey( spep_2 -1 + 43, 1, 440.3, -265.2 , 0 );
setMoveKey( spep_2 -1 + 44, 1, 493.8, -286.2 , 0 );
setMoveKey( spep_2 -1 + 45, 1, 493.8, -286.2 , 0 );
setMoveKey( spep_2 -1 + 46, 1, 613.2, -347.3 , 0 );
setMoveKey( spep_2 -1 + 48, 1, 674.1, -409.8 , 0 );
setMoveKey( spep_2 -1 + 50, 1, 781.7, -457.7 , 0 );
setMoveKey( spep_2 -1 + 52, 1, 867.1, -506.6 , 0 );
setMoveKey( spep_2 -1 + 54, 1, 952.5, -555.3 , 0 );
setMoveKey( spep_2 -1 + 56, 1, 1043.6, -608.2 , 0 );
setMoveKey( spep_2 + 56, 1, 1043.6, -608.2 , 0 );

setScaleKey( spep_2 + 0, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 56, 1, 1.59, 1.59 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -1 + 31, 1, 0 );
setRotateKey( spep_2 -1 + 32, 1, -39.4 );
setRotateKey( spep_2 -1 + 33, 1, -39.4 );
setRotateKey( spep_2 -1 + 34, 1, -34.3 );
setRotateKey( spep_2 -1 + 35, 1, -34.3 );
setRotateKey( spep_2 -1 + 36, 1, -29.2 );
setRotateKey( spep_2 -1 + 37, 1, -29.2 );
setRotateKey( spep_2 -1 + 38, 1, -24.1 );
setRotateKey( spep_2 -1 + 39, 1, -24.1 );
setRotateKey( spep_2 -1 + 40, 1, -19 );
setRotateKey( spep_2 -1 + 41, 1, -19 );
setRotateKey( spep_2 -1 + 42, 1, -13.9 );
setRotateKey( spep_2 -1 + 43, 1, -13.9 );
setRotateKey( spep_2 -1 + 44, 1, -8.8 );
setRotateKey( spep_2 -1 + 45, 1, -8.8 );
setRotateKey( spep_2 -1 + 46, 1, -3.7 );
setRotateKey( spep_2 -1 + 48, 1, 1.5 );
setRotateKey( spep_2 -1 + 50, 1, 6.6 );
setRotateKey( spep_2 -1 + 52, 1, 11.7 );
setRotateKey( spep_2 -1 + 54, 1, 16.8 );
setRotateKey( spep_2 -1 + 56, 1, 21.9 );
setRotateKey( spep_2 + 56, 1, 21.9 );

-- ** 音 ** --
--敵ヒット
SE020 = playSeVer2( spep_2 + 28, 1024, "",spep_2 + 98, 0, 50, -1);
SE021 = playSeVer2( spep_2 + 28, 1023, "",spep_2 + 90, 0, 40, -1);

--環境音
SE022 = playSeVer2( spep_2 + 28, 1269, "",spep_2 + 126, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 28, SE022, 25 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;


-------------------------------------------------
-- ブルマがカプセルを選ぶ
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0); -- ef_004 味方側
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 60, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, 1.0, 1.0);
setEffScaleKey( spep_3 + 60, base_3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 60, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 60, base_3, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 60 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--選ぶ
SE023 = playSeVer2( spep_3 + 6, 4, "", 0, 0, 0, -1);

--決める
SE024 = playSeVer2( spep_3 + 38, 1317, "",spep_3 + 50, 0, 4, -1);

-- ** 次の準備 ** --
spep_c = spep_3 + 60;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -188 );
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );

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
playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_c + 94;


-------------------------------------------------
-- 上空にカプセルを投げる～ロケラン発射
-------------------------------------------------
-- ** エフェクト等 ** --
base_4 = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0); -- ef_005 味方側
setEffMoveKey( spep_4 + 0, base_4, 0, 0 , 0);
setEffMoveKey( spep_4 + 274, base_4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4, 1.0, 1.0);
setEffScaleKey( spep_4 + 274, base_4, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4, 0);
setEffRotateKey( spep_4 + 274, base_4, 0);
setEffAlphaKey( spep_4 + 0, base_4, 255);
setEffAlphaKey( spep_4 + 274 -2, base_4, 255);
setEffAlphaKey( spep_4 + 274 -1, base_4, 255);
setEffAlphaKey( spep_4 + 274, base_4, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 274 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_4 + 152;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--カプセル投げる
SE026 = playSeVer2( spep_4 + 14, 1003, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 16, 1117, "",spep_4 + 68, 0, 28, -1);
SE028 = playSeVer2( spep_4 + 16, 1119, "",spep_4 + 68, 0, 12, -1);

--爆発する
SE029 = playSeVer2( spep_4 + 62, 1017, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_4 + 62, 1236, "",spep_4 + 154, 0, 42, -1);

--バズーカ落ちてくる
SE031 = playSeVer2( spep_4 + 106, 1118, "",spep_4 + 162, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 106, SE031, 63 );

--バズーカキャッチする
SE033 = playSeVer2( spep_4 + 154, 1006, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_4 + 156, 1007, "", 0, 0, 0, -1);

--バズーカ撃つ
SE035 = playSeVer2( spep_4 + 240, 1030, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_4 + 240, 1028, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_4 + 240, 1193, "",spep_4 + 364, 0, 66, 0.6);
SE038 = playSeVer2( spep_4 + 240, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 240, SE038, 76 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 274;


-------------------------------------------------
-- 敵に命中し爆発
-------------------------------------------------
-- ** エフェクト等 ** --
base_5f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0); -- ef_006 手前　味方側
setEffMoveKey( spep_5 + 0, base_5f, 0, 0 , 0);
setEffMoveKey( spep_5 + 174, base_5f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5f, 1.0, 1.0);
setEffScaleKey( spep_5 + 174, base_5f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5f, 0);
setEffRotateKey( spep_5 + 174, base_5f, 0);
setEffAlphaKey( spep_5 + 0, base_5f, 255);
setEffAlphaKey( spep_5 + 174 , base_5f, 255);

base_5b = entryEffect( spep_5 + 0, SP_06b, 0x80, -1, 0, 0, 0); -- ef_006_b 奥　敵味方兼用　反転あり
setEffMoveKey( spep_5 + 0, base_5b, 0, 0 , 0);
setEffMoveKey( spep_5 + 174, base_5b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5b, 1.0, 1.0);
setEffScaleKey( spep_5 + 174, base_5b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5b, 0);
setEffRotateKey( spep_5 + 174, base_5b, 0);
setEffAlphaKey( spep_5 + 0, base_5b, 255);
setEffAlphaKey( spep_5 + 174, base_5b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 174 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 174, 1, 0 );

changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 + 0, 1, 229.3, 187 , 0 );
setMoveKey( spep_5 -1 + 2, 1, 209.5, 207.5 , 0 );
setMoveKey( spep_5 -1 + 3, 1, 209.5, 207.5 , 0 );
setMoveKey( spep_5 -1 + 4, 1, 249.8, 168 , 0 );
setMoveKey( spep_5 -1 + 5, 1, 249.8, 168 , 0 );
setMoveKey( spep_5 -1 + 6, 1, 252, 198.7 , 0 );
setMoveKey( spep_5 -1 + 7, 1, 252, 198.7 , 0 );
setMoveKey( spep_5 -1 + 8, 1, 213.9, 144.7 , 0 );
setMoveKey( spep_5 -1 + 9, 1, 213.9, 144.7 , 0 );
setMoveKey( spep_5 -1 + 10, 1, 222.3, 239.9 , 0 );
setMoveKey( spep_5 -1 + 11, 1, 222.3, 239.9 , 0 );
setMoveKey( spep_5 -1 + 12, 1, 196.3, 183.9 , 0 );
setMoveKey( spep_5 -1 + 13, 1, 196.3, 183.9 , 0 );
setMoveKey( spep_5 -1 + 14, 1, 279.2, 170.3 , 0 );
setMoveKey( spep_5 -1 + 15, 1, 279.2, 170.3 , 0 );
setMoveKey( spep_5 -1 + 16, 1, 211.2, 210.8 , 0 );
setMoveKey( spep_5 -1 + 17, 1, 211.2, 210.8 , 0 );
setMoveKey( spep_5 -1 + 18, 1, 251.4, 171.2 , 0 );
setMoveKey( spep_5 -1 + 19, 1, 251.4, 171.2 , 0 );
setMoveKey( spep_5 -1 + 20, 1, 253.6, 201.9 , 0 );
setMoveKey( spep_5 -1 + 21, 1, 253.6, 201.9 , 0 );
setMoveKey( spep_5 -1 + 22, 1, 215.5, 147.9 , 0 );
setMoveKey( spep_5 -1 + 23, 1, 215.5, 147.9 , 0 );
setMoveKey( spep_5 -1 + 24, 1, 223.9, 243.2 , 0 );
setMoveKey( spep_5 -1 + 25, 1, 223.9, 243.2 , 0 );
setMoveKey( spep_5 -1 + 26, 1, 197.9, 187.2 , 0 );
setMoveKey( spep_5 -1 + 27, 1, 197.9, 187.2 , 0 );
setMoveKey( spep_5 -1 + 28, 1, 232.5, 193.5 , 0 );
setMoveKey( spep_5 -1 + 29, 1, 232.5, 193.5 , 0 );
setMoveKey( spep_5 -1 + 30, 1, 231.4, 194 , 0 );
setMoveKey( spep_5 -1 + 31, 1, 231.4, 194 , 0 );
setMoveKey( spep_5 -1 + 32, 1, 230.3, 194.5 , 0 );
setMoveKey( spep_5 -1 + 33, 1, 230.3, 194.5 , 0 );
setMoveKey( spep_5 -1 + 34, 1, 229.2, 194.9 , 0 );
setMoveKey( spep_5 -1 + 35, 1, 229.2, 194.9 , 0 );
setMoveKey( spep_5 -1 + 36, 1, 228.1, 195.4 , 0 );
setMoveKey( spep_5 -1 + 37, 1, 228.1, 195.4 , 0 );
setMoveKey( spep_5 -1 + 38, 1, 226.9, 195.8 , 0 );
setMoveKey( spep_5 -1 + 39, 1, 226.9, 195.8 , 0 );
setMoveKey( spep_5 -1 + 40, 1, 225.8, 196.3 , 0 );
setMoveKey( spep_5 -1 + 41, 1, 225.8, 196.3 , 0 );
setMoveKey( spep_5 -1 + 42, 1, 224.7, 196.8 , 0 );
setMoveKey( spep_5 -1 + 43, 1, 224.7, 196.8 , 0 );
setMoveKey( spep_5 -1 + 44, 1, 223.6, 197.2 , 0 );
setMoveKey( spep_5 -1 + 45, 1, 223.6, 197.2 , 0 );
setMoveKey( spep_5 -1 + 46, 1, 222.5, 197.7 , 0 );
setMoveKey( spep_5 -1 + 47, 1, 222.5, 197.7 , 0 );
setMoveKey( spep_5 -1 + 48, 1, 221.4, 198.2 , 0 );
setMoveKey( spep_5 -1 + 49, 1, 221.4, 198.2 , 0 );
setMoveKey( spep_5 -1 + 50, 1, 220.2, 198.6 , 0 );
setMoveKey( spep_5 -1 + 51, 1, 220.2, 198.6 , 0 );
setMoveKey( spep_5 -1 + 52, 1, 219.1, 199.1 , 0 );
setMoveKey( spep_5 -1 + 53, 1, 219.1, 199.1 , 0 );
setMoveKey( spep_5 -1 + 54, 1, 218, 199.5 , 0 );
setMoveKey( spep_5 -1 + 55, 1, 218, 199.5 , 0 );
setMoveKey( spep_5 -1 + 56, 1, 210.4, 187 , 0 );
setMoveKey( spep_5 -1 + 57, 1, 210.4, 187 , 0 );
setMoveKey( spep_5 -1 + 58, 1, 209.3, 187.5 , 0 );
setMoveKey( spep_5 -1 + 59, 1, 209.3, 187.5 , 0 );
setMoveKey( spep_5 -1 + 60, 1, 224.9, 177 , 0 );
setMoveKey( spep_5 -1 + 61, 1, 224.9, 177 , 0 );
setMoveKey( spep_5 -1 + 62, 1, 190.7, 192.2 , 0 );
setMoveKey( spep_5 -1 + 63, 1, 190.7, 192.2 , 0 );
setMoveKey( spep_5 -1 + 64, 1, 244.1, 227.4 , 0 );
setMoveKey( spep_5 -1 + 65, 1, 244.1, 227.4 , 0 );
setMoveKey( spep_5 -1 + 66, 1, 200, 157.3 , 0 );
setMoveKey( spep_5 -1 + 67, 1, 200, 157.3 , 0 );
setMoveKey( spep_5 -1 + 68, 1, 180.1, 232.3 , 0 );
setMoveKey( spep_5 -1 + 69, 1, 180.1, 232.3 , 0 );
setMoveKey( spep_5 -1 + 70, 1, 240.8, 148.1 , 0 );
setMoveKey( spep_5 -1 + 71, 1, 240.8, 148.1 , 0 );
setMoveKey( spep_5 -1 + 72, 1, 241.1, 188.9 , 0 );
setMoveKey( spep_5 -1 + 73, 1, 241.1, 188.9 , 0 );
setMoveKey( spep_5 -1 + 74, 1, 191.2, 197.1 , 0 );
setMoveKey( spep_5 -1 + 75, 1, 191.2, 197.1 , 0 );
setMoveKey( spep_5 -1 + 76, 1, 211.4, 191.7 , 0 );
setMoveKey( spep_5 -1 + 77, 1, 211.4, 191.7 , 0 );
setMoveKey( spep_5 -1 + 78, 1, 213.6, 194.1 , 0 );
setMoveKey( spep_5 -1 + 79, 1, 213.6, 194.1 , 0 );
setMoveKey( spep_5 -1 + 80, 1, 209.9, 194.6 , 0 );
setMoveKey( spep_5 -1 + 81, 1, 209.9, 194.6 , 0 );
setMoveKey( spep_5 -1 + 82, 1, 212.1, 199.1 , 0 );
setMoveKey( spep_5 -1 + 83, 1, 212.1, 199.1 , 0 );
setMoveKey( spep_5 -1 + 84, 1, 216.3, 191.5 , 0 );
setMoveKey( spep_5 -1 + 85, 1, 216.3, 191.5 , 0 );
setMoveKey( spep_5 -1 + 86, 1, 208.6, 192 , 0 );
setMoveKey( spep_5 -1 + 87, 1, 208.6, 192 , 0 );
setMoveKey( spep_5 -1 + 88, 1, 204.8, 196.5 , 0 );
setMoveKey( spep_5 -1 + 89, 1, 204.8, 196.5 , 0 );
setMoveKey( spep_5 -1 + 90, 1, 210, 196.9 , 0 );
setMoveKey( spep_5 -1 + 91, 1, 210, 196.9 , 0 );
setMoveKey( spep_5 -1 + 92, 1, 215.3, 197.4 , 0 );
setMoveKey( spep_5 -1 + 93, 1, 215.3, 197.4 , 0 );
setMoveKey( spep_5 -1 + 94, 1, 214.5, 196.8 , 0 );
setMoveKey( spep_5 -1 + 95, 1, 214.5, 196.8 , 0 );
setMoveKey( spep_5 -1 + 96, 1, 213.7, 196.3 , 0 );
setMoveKey( spep_5 -1 + 97, 1, 213.7, 196.3 , 0 );
setMoveKey( spep_5 -1 + 98, 1, 214, 196.8 , 0 );
setMoveKey( spep_5 -1 + 99, 1, 214, 196.8 , 0 );
setMoveKey( spep_5 -1 + 100, 1, 214.2, 197.2 , 0 );
setMoveKey( spep_5 -1 + 101, 1, 214.2, 197.2 , 0 );
setMoveKey( spep_5 -1 + 102, 1, 214.4, 197.7 , 0 );
setMoveKey( spep_5 -1 + 103, 1, 214.4, 197.7 , 0 );
setMoveKey( spep_5 -1 + 104, 1, 214.7, 198.2 , 0 );
setMoveKey( spep_5 -1 + 105, 1, 214.7, 198.2 , 0 );
setMoveKey( spep_5 -1 + 106, 1, 214.9, 198.6 , 0 );
setMoveKey( spep_5 -1 + 107, 1, 214.9, 198.6 , 0 );
setMoveKey( spep_5 -1 + 108, 1, 215.1, 199.1 , 0 );
setMoveKey( spep_5 -1 + 109, 1, 215.1, 199.1 , 0 );
setMoveKey( spep_5 -1 + 110, 1, 215.4, 199.5 , 0 );
setMoveKey( spep_5 -1 + 111, 1, 215.4, 199.5 , 0 );
setMoveKey( spep_5 -1 + 112, 1, 209.1, 187 , 0 );
setMoveKey( spep_5 -1 + 113, 1, 209.1, 187 , 0 );
setMoveKey( spep_5 -1 + 114, 1, 209.3, 187.5 , 0 );
setMoveKey( spep_5 -1 + 115, 1, 209.3, 187.5 , 0 );
setMoveKey( spep_5 -1 + 116, 1, 209.6, 188 , 0 );
setMoveKey( spep_5 -1 + 117, 1, 209.6, 188 , 0 );
setMoveKey( spep_5 -1 + 118, 1, 209.8, 188.4 , 0 );
setMoveKey( spep_5 -1 + 119, 1, 209.8, 188.4 , 0 );
setMoveKey( spep_5 -1 + 120, 1, 210, 188.9 , 0 );
setMoveKey( spep_5 -1 + 121, 1, 210, 188.9 , 0 );
setMoveKey( spep_5 -1 + 122, 1, 210.3, 189.4 , 0 );
setMoveKey( spep_5 -1 + 123, 1, 210.3, 189.4 , 0 );
setMoveKey( spep_5 -1 + 124, 1, 210.5, 189.8 , 0 );
setMoveKey( spep_5 -1 + 125, 1, 210.5, 189.8 , 0 );
setMoveKey( spep_5 -1 + 126, 1, 210.7, 190.3 , 0 );
setMoveKey( spep_5 -1 + 127, 1, 210.7, 190.3 , 0 );
setMoveKey( spep_5 -1 + 128, 1, 211, 190.8 , 0 );
setMoveKey( spep_5 -1 + 129, 1, 211, 190.8 , 0 );
setMoveKey( spep_5 -1 + 130, 1, 211.2, 191.2 , 0 );
setMoveKey( spep_5 -1 + 131, 1, 211.2, 191.2 , 0 );
setMoveKey( spep_5 -1 + 132, 1, 211.4, 191.7 , 0 );
setMoveKey( spep_5 -1 + 133, 1, 211.4, 191.7 , 0 );
setMoveKey( spep_5 -1 + 134, 1, 211.6, 192.1 , 0 );
setMoveKey( spep_5 -1 + 135, 1, 211.6, 192.1 , 0 );
setMoveKey( spep_5 -1 + 136, 1, 211.9, 192.6 , 0 );
setMoveKey( spep_5 -1 + 137, 1, 211.9, 192.6 , 0 );
setMoveKey( spep_5 -1 + 138, 1, 212.1, 193.1 , 0 );
setMoveKey( spep_5 -1 + 139, 1, 212.1, 193.1 , 0 );
setMoveKey( spep_5 -1 + 140, 1, 212.3, 193.5 , 0 );
setMoveKey( spep_5 -1 + 141, 1, 212.3, 193.5 , 0 );
setMoveKey( spep_5 -1 + 142, 1, 212.6, 194 , 0 );
setMoveKey( spep_5 -1 + 143, 1, 212.6, 194 , 0 );
setMoveKey( spep_5 -1 + 144, 1, 212.8, 194.5 , 0 );
setMoveKey( spep_5 -1 + 145, 1, 212.8, 194.5 , 0 );
setMoveKey( spep_5 -1 + 146, 1, 213, 194.9 , 0 );
setMoveKey( spep_5 -1 + 147, 1, 213, 194.9 , 0 );
setMoveKey( spep_5 -1 + 148, 1, 213.3, 195.4 , 0 );
setMoveKey( spep_5 -1 + 149, 1, 213.3, 195.4 , 0 );
setMoveKey( spep_5 -1 + 150, 1, 213.5, 195.8 , 0 );
setMoveKey( spep_5 -1 + 151, 1, 213.5, 195.8 , 0 );
setMoveKey( spep_5 -1 + 152, 1, 213.7, 196.3 , 0 );
setMoveKey( spep_5 -1 + 153, 1, 213.7, 196.3 , 0 );
setMoveKey( spep_5 -1 + 154, 1, 214, 196.8 , 0 );
setMoveKey( spep_5 -1 + 155, 1, 214, 196.8 , 0 );
setMoveKey( spep_5 -1 + 156, 1, 214.2, 197.2 , 0 );
setMoveKey( spep_5 -1 + 157, 1, 214.2, 197.2 , 0 );
setMoveKey( spep_5 -1 + 158, 1, 214.4, 197.7 , 0 );
setMoveKey( spep_5 -1 + 159, 1, 214.4, 197.7 , 0 );
setMoveKey( spep_5 -1 + 160, 1, 214.7, 198.2 , 0 );
setMoveKey( spep_5 -1 + 161, 1, 214.7, 198.2 , 0 );
setMoveKey( spep_5 -1 + 162, 1, 214.9, 198.6 , 0 );
setMoveKey( spep_5 -1 + 163, 1, 214.9, 198.6 , 0 );
setMoveKey( spep_5 -1 + 164, 1, 215.1, 199.1 , 0 );
setMoveKey( spep_5 -1 + 165, 1, 215.1, 199.1 , 0 );
setMoveKey( spep_5 -1 + 166, 1, 215.4, 199.5 , 0 );
setMoveKey( spep_5 -1 + 167, 1, 215.4, 199.5 , 0 );
setMoveKey( spep_5 -1 + 168, 1, 209.1, 187 , 0 );
setMoveKey( spep_5 -1 + 169, 1, 209.1, 187 , 0 );
setMoveKey( spep_5 -1 + 170, 1, 209.3, 187.5 , 0 );
setMoveKey( spep_5 -1 + 171, 1, 209.3, 187.5 , 0 );
setMoveKey( spep_5 -1 + 172, 1, 209.6, 188 , 0 );
setMoveKey( spep_5 -1 + 173, 1, 209.6, 188 , 0 );
setMoveKey( spep_5 -1 + 174, 1, 209.8, 188.4 , 0 );
setMoveKey( spep_5 + 174, 1, 209.8, 188.4 , 0 );

setScaleKey( spep_5 + 0, 1, 0.41, 0.41 );
setScaleKey( spep_5 -1 + 2, 1, 0.4, 0.4 );
setScaleKey( spep_5 -1 + 3, 1, 0.4, 0.4 );
setScaleKey( spep_5 -1 + 4, 1, 0.39, 0.39 );
setScaleKey( spep_5 -1 + 5, 1, 0.39, 0.39 );
setScaleKey( spep_5 -1 + 6, 1, 0.38, 0.38 );
setScaleKey( spep_5 -1 + 8, 1, 0.38, 0.38 );
setScaleKey( spep_5 -1 + 9, 1, 0.38, 0.38 );
setScaleKey( spep_5 -1 + 10, 1, 0.37, 0.37 );
setScaleKey( spep_5 -1 + 11, 1, 0.37, 0.37 );
setScaleKey( spep_5 -1 + 12, 1, 0.36, 0.36 );
setScaleKey( spep_5 -1 + 14, 1, 0.36, 0.36 );
setScaleKey( spep_5 -1 + 15, 1, 0.36, 0.36 );
setScaleKey( spep_5 -1 + 16, 1, 0.35, 0.35 );
setScaleKey( spep_5 -1 + 17, 1, 0.35, 0.35 );
setScaleKey( spep_5 -1 + 18, 1, 0.34, 0.34 );
setScaleKey( spep_5 -1 + 20, 1, 0.34, 0.34 );
setScaleKey( spep_5 -1 + 21, 1, 0.34, 0.34 );
setScaleKey( spep_5 -1 + 22, 1, 0.33, 0.33 );
setScaleKey( spep_5 -1 + 23, 1, 0.33, 0.33 );
setScaleKey( spep_5 -1 + 24, 1, 0.32, 0.32 );
setScaleKey( spep_5 -1 + 26, 1, 0.32, 0.32 );
setScaleKey( spep_5 -1 + 27, 1, 0.32, 0.32 );
setScaleKey( spep_5 -1 + 28, 1, 0.31, 0.31 );
setScaleKey( spep_5 -1 + 29, 1, 0.31, 0.31 );
setScaleKey( spep_5 -1 + 30, 1, 0.3, 0.3 );
setScaleKey( spep_5 -1 + 31, 1, 0.3, 0.3 );
setScaleKey( spep_5 -1 + 32, 1, 0.29, 0.29 );
setScaleKey( spep_5 -1 + 34, 1, 0.29, 0.29 );
setScaleKey( spep_5 -1 + 35, 1, 0.29, 0.29 );
setScaleKey( spep_5 -1 + 36, 1, 0.28, 0.28 );
setScaleKey( spep_5 -1 + 37, 1, 0.28, 0.28 );
setScaleKey( spep_5 -1 + 38, 1, 0.27, 0.27 );
setScaleKey( spep_5 -1 + 40, 1, 0.27, 0.27 );
setScaleKey( spep_5 -1 + 41, 1, 0.27, 0.27 );
setScaleKey( spep_5 -1 + 42, 1, 0.26, 0.26 );
setScaleKey( spep_5 -1 + 43, 1, 0.26, 0.26 );
setScaleKey( spep_5 -1 + 44, 1, 0.25, 0.25 );
setScaleKey( spep_5 -1 + 46, 1, 0.25, 0.25 );
setScaleKey( spep_5 -1 + 47, 1, 0.25, 0.25 );
setScaleKey( spep_5 -1 + 48, 1, 0.24, 0.24 );
setScaleKey( spep_5 -1 + 49, 1, 0.24, 0.24 );
setScaleKey( spep_5 -1 + 50, 1, 0.23, 0.23 );
setScaleKey( spep_5 -1 + 52, 1, 0.23, 0.23 );
setScaleKey( spep_5 -1 + 53, 1, 0.23, 0.23 );
setScaleKey( spep_5 -1 + 54, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 174, 1, 0.22, 0.22 );

setRotateKey( spep_5 + 0, 1, -3.7 );
setRotateKey( spep_5 + 174, 1, -3.7 );

-- ** 音 ** --
----爆発する
SE039 = playSeVer2( spep_5 + 60, 1024, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_5 + 62, 1159, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_5 + 98, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 84); -- ダメージ表示フレーム
endPhase( spep_5 + 174 -4); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- ブルマがウーロンをにらむ
-------------------------------------------------
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_001 手前　敵側
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + 58, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + 58, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + 58, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + 58 -2, base_0f, 255);
setEffAlphaKey( spep_0 + 58 -1, base_0f, 255);
setEffAlphaKey( spep_0 + 58, base_0f, 0);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001_b 奥　敵味方兼用　反転あり
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + 58, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + 58, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + 58, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + 58 -2, base_0b, 255);
setEffAlphaKey( spep_0 + 58 -1, base_0b, 255);
setEffAlphaKey( spep_0 + 58, base_0b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 58 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 100 );

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 58, 1, 0 );

setMoveKey( spep_0 + 0, 1, 271.2, 285.8 , 0 );
setMoveKey( spep_0 + 1, 1, 267, 328.2 , 0 );
setMoveKey( spep_0 + 2, 1, 267, 328.2 , 0 );
setMoveKey( spep_0 + 3, 1, 263.5, 363.7 , 0 );
setMoveKey( spep_0 + 4, 1, 263.5, 363.7 , 0 );
setMoveKey( spep_0 + 5, 1, 260.4, 394.5 , 0 );
setMoveKey( spep_0 + 6, 1, 260.4, 394.5 , 0 );
setMoveKey( spep_0 -1 + 8, 1, 257.7, 421.5 , 0 );
setMoveKey( spep_0 -1 + 10, 1, 255.3, 445.7 , 0 );
setMoveKey( spep_0 -1 + 12, 1, 253.1, 467.5 , 0 );
setMoveKey( spep_0 -1 + 14, 1, 251.2, 487.3 , 0 );
setMoveKey( spep_0 -1 + 16, 1, 249.4, 505.3 , 0 );
setMoveKey( spep_0 -1 + 18, 1, 247.8, 521.9 , 0 );
setMoveKey( spep_0 -1 + 20, 1, 246.3, 537.2 , 0 );
setMoveKey( spep_0 -1 + 22, 1, 244.9, 551.3 , 0 );
setMoveKey( spep_0 -1 + 24, 1, 243.6, 564.4 , 0 );
setMoveKey( spep_0 -1 + 26, 1, 242.4, 576.5 , 0 );
setMoveKey( spep_0 -1 + 28, 1, 241.3, 587.8 , 0 );
setMoveKey( spep_0 -1 + 30, 1, 240.3, 598.3 , 0 );
setMoveKey( spep_0 -1 + 32, 1, 239.4, 608.1 , 0 );
setMoveKey( spep_0 -1 + 34, 1, 238.5, 617.2 , 0 );
setMoveKey( spep_0 -1 + 36, 1, 237.6, 625.7 , 0 );
setMoveKey( spep_0 -1 + 38, 1, 236.9, 633.6 , 0 );
setMoveKey( spep_0 -1 + 40, 1, 236.2, 641 , 0 );
setMoveKey( spep_0 -1 + 42, 1, 235.6, 647.9 , 0 );
setMoveKey( spep_0 -1 + 44, 1, 234.9, 654.3 , 0 );
setMoveKey( spep_0 -1 + 46, 1, 234.4, 660.3 , 0 );
setMoveKey( spep_0 -1 + 48, 1, 233.8, 665.8 , 0 );
setMoveKey( spep_0 -1 + 50, 1, 233.4, 670.9 , 0 );
setMoveKey( spep_0 -1 + 52, 1, 232.9, 675.7 , 0 );
setMoveKey( spep_0 -1 + 54, 1, 232.5, 680.1 , 0 );
setMoveKey( spep_0 -1 + 56, 1, 232.1, 684.1 , 0 );
setMoveKey( spep_0 -1 + 58, 1, 231.8, 687.8 , 0 );
setMoveKey( spep_0 + 58, 1, 231.8, 687.8 , 0 );

setScaleKey( spep_0 + 0, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 1, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 2, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 3, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 4, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 5, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 6, 1, 0.64, 0.64 );
setScaleKey( spep_0 -1 + 8, 1, 0.66, 0.66 );
setScaleKey( spep_0 -1 + 10, 1, 0.68, 0.68 );
setScaleKey( spep_0 -1 + 12, 1, 0.69, 0.69 );
setScaleKey( spep_0 -1 + 14, 1, 0.71, 0.7 );
setScaleKey( spep_0 -1 + 16, 1, 0.72, 0.72 );
setScaleKey( spep_0 -1 + 18, 1, 0.73, 0.73 );
setScaleKey( spep_0 -1 + 20, 1, 0.74, 0.74 );
setScaleKey( spep_0 -1 + 22, 1, 0.75, 0.75 );
setScaleKey( spep_0 -1 + 24, 1, 0.76, 0.76 );
setScaleKey( spep_0 -1 + 26, 1, 0.77, 0.77 );
setScaleKey( spep_0 -1 + 28, 1, 0.78, 0.77 );
setScaleKey( spep_0 -1 + 30, 1, 0.78, 0.78 );
setScaleKey( spep_0 -1 + 32, 1, 0.79, 0.79 );
setScaleKey( spep_0 -1 + 34, 1, 0.8, 0.79 );
setScaleKey( spep_0 -1 + 36, 1, 0.8, 0.8 );
setScaleKey( spep_0 -1 + 38, 1, 0.81, 0.8 );
setScaleKey( spep_0 -1 + 40, 1, 0.81, 0.81 );
setScaleKey( spep_0 -1 + 42, 1, 0.82, 0.81 );
setScaleKey( spep_0 -1 + 44, 1, 0.82, 0.82 );
setScaleKey( spep_0 -1 + 46, 1, 0.82, 0.82 );
setScaleKey( spep_0 -1 + 48, 1, 0.83, 0.83 );
setScaleKey( spep_0 -1 + 50, 1, 0.83, 0.83 );
setScaleKey( spep_0 -1 + 52, 1, 0.84, 0.83 );
setScaleKey( spep_0 -1 + 54, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 58, 1, 0.84, 0.84 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 58, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--ウーロン手をふる
SE002 = playSeVer2( spep_0 + 12, 1113, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 18, 1113, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 38, 1113, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 42, 1113, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 58;


-------------------------------------------------
-- ウーロン変身～ロケット
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- ef_002 敵側
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 224, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, -1.0, 1.0);
setEffScaleKey( spep_1 + 224, base_1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 224, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 224 -2, base_1, 255);
setEffAlphaKey( spep_1 + 224 -1, base_1, 255);
setEffAlphaKey( spep_1 + 224, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 224 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--腕あげる
SE006 = playSeVer2( spep_1 + 14, 1003, "", 0, 0, 0, -1);

--ウーロン変化
SE007 = playSeVer2( spep_1 + 24, 1291, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 24, 1246, "",spep_1 + 36, 0, 4, -1);
SE009 = playSeVer2( spep_1 + 24, 31, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 24, SE009, 130 );
SE010 = playSeVer2( spep_1 + 24, 1214, "",spep_1 + 96, 0, 32, -1);
SE011 = playSeVer2( spep_1 + 24, 1354, "", 0, 0, 0, -1);

--ミサイルになって飛び立つ
SE012 = playSeVer2( spep_1 + 72, 1027, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 72, 1117, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 72, 63, "", 0, 0, 0, -1);

--ミサイルで飛行中
SE015 = playSeVer2( spep_1 + 130, 1121, "",spep_1 + 262, 0, 12, -1);
SE016 = playSeVer2( spep_1 + 130, 1019, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 180; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
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

-- ** 音 ** --
--ミサイル加速する
SE017 = playSeVer2( spep_1 + 194, 1019, "",spep_1 + 262, 0, 10, -1);
SE018 = playSeVer2( spep_1 + 194, 1258, "",spep_1 + 268, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 194, SE018, 63 );
SE019 = playSeVer2( spep_1 + 200, 1116, "",spep_1 + 268, 0, 16, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 224;


-------------------------------------------------
-- 敵にロケットが突っ込む
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- ef_003 手前　敵側
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 56, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, -1.0, 1.0);
setEffScaleKey( spep_2 + 56, base_2f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 56, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 56 -2, base_2f, 255);
setEffAlphaKey( spep_2 + 56 -1, base_2f, 255);
setEffAlphaKey( spep_2 + 56, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- ef_003_b 奥　敵味方兼用　反転あり
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 56, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 56, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 56, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 56 -2, base_2b, 255);
setEffAlphaKey( spep_2 + 56 -1, base_2b, 255);
setEffAlphaKey( spep_2 + 56, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 56, 1, 0 );

changeAnime( spep_2 + 0, 1, 117 );
changeAnime( spep_2 -1 + 26, 1, 104 );
changeAnime( spep_2 -1 + 32, 1, 106 );

setMoveKey( spep_2 + 0, 1, 274.6, 20.4 , 0 );
setMoveKey( spep_2 -1 + 2, 1, 257.2, 20.4 , 0 );
setMoveKey( spep_2 -1 + 4, 1, 239.9, 20.4 , 0 );
setMoveKey( spep_2 -1 + 6, 1, 222.5, 20.4 , 0 );
setMoveKey( spep_2 -1 + 8, 1, 205.2, 20.4 , 0 );
setMoveKey( spep_2 -1 + 10, 1, 187.8, 20.4 , 0 );
setMoveKey( spep_2 -1 + 12, 1, 170.4, 20.4 , 0 );
setMoveKey( spep_2 -1 + 14, 1, 153.1, 20.4 , 0 );
setMoveKey( spep_2 -1 + 16, 1, 135.7, 20.4 , 0 );
setMoveKey( spep_2 -1 + 18, 1, 118.3, 20.4 , 0 );
setMoveKey( spep_2 -1 + 20, 1, 101, 20.4 , 0 );
setMoveKey( spep_2 -1 + 22, 1, 83.6, 20.4 , 0 );
setMoveKey( spep_2 -1 + 24, 1, 66.3, 20.4 , 0 );
setMoveKey( spep_2 -1 + 26, 1, 3, 20.4 , 0 );
setMoveKey( spep_2 -1 + 27, 1, 3, 20.4 , 0 );
setMoveKey( spep_2 -1 + 28, 1, -7.5, 20.4 , 0 );
setMoveKey( spep_2 -1 + 29, 1, -7.5, 20.4 , 0 );
setMoveKey( spep_2 -1 + 30, 1, 6.2, 50.7 , 0 );
setMoveKey( spep_2 -1 + 31, 1, 6.2, 50.7 , 0 );
setMoveKey( spep_2 -1 + 32, 1, -65.3, -15.2 , 0 );
setMoveKey( spep_2 -1 + 33, 1, -65.3, -15.2 , 0 );
setMoveKey( spep_2 -1 + 34, 1, 81, -60.4 , 0 );
setMoveKey( spep_2 -1 + 35, 1, 81, -60.4 , 0 );
setMoveKey( spep_2 -1 + 36, 1, 134.5, -81.3 , 0 );
setMoveKey( spep_2 -1 + 37, 1, 134.5, -81.3 , 0 );
setMoveKey( spep_2 -1 + 38, 1, 260.6, -118.5 , 0 );
setMoveKey( spep_2 -1 + 39, 1, 260.6, -118.5 , 0 );
setMoveKey( spep_2 -1 + 40, 1, 294, -220.1 , 0 );
setMoveKey( spep_2 -1 + 41, 1, 294, -220.1 , 0 );
setMoveKey( spep_2 -1 + 42, 1, 440.3, -265.2 , 0 );
setMoveKey( spep_2 -1 + 43, 1, 440.3, -265.2 , 0 );
setMoveKey( spep_2 -1 + 44, 1, 493.8, -286.2 , 0 );
setMoveKey( spep_2 -1 + 45, 1, 493.8, -286.2 , 0 );
setMoveKey( spep_2 -1 + 46, 1, 613.2, -347.3 , 0 );
setMoveKey( spep_2 -1 + 48, 1, 674.1, -409.8 , 0 );
setMoveKey( spep_2 -1 + 50, 1, 781.7, -457.7 , 0 );
setMoveKey( spep_2 -1 + 52, 1, 867.1, -506.6 , 0 );
setMoveKey( spep_2 -1 + 54, 1, 952.5, -555.3 , 0 );
setMoveKey( spep_2 -1 + 56, 1, 1043.6, -608.2 , 0 );
setMoveKey( spep_2 + 56, 1, 1043.6, -608.2 , 0 );

setScaleKey( spep_2 + 0, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 56, 1, 1.59, 1.59 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -1 + 31, 1, 0 );
setRotateKey( spep_2 -1 + 32, 1, -39.4 );
setRotateKey( spep_2 -1 + 33, 1, -39.4 );
setRotateKey( spep_2 -1 + 34, 1, -34.3 );
setRotateKey( spep_2 -1 + 35, 1, -34.3 );
setRotateKey( spep_2 -1 + 36, 1, -29.2 );
setRotateKey( spep_2 -1 + 37, 1, -29.2 );
setRotateKey( spep_2 -1 + 38, 1, -24.1 );
setRotateKey( spep_2 -1 + 39, 1, -24.1 );
setRotateKey( spep_2 -1 + 40, 1, -19 );
setRotateKey( spep_2 -1 + 41, 1, -19 );
setRotateKey( spep_2 -1 + 42, 1, -13.9 );
setRotateKey( spep_2 -1 + 43, 1, -13.9 );
setRotateKey( spep_2 -1 + 44, 1, -8.8 );
setRotateKey( spep_2 -1 + 45, 1, -8.8 );
setRotateKey( spep_2 -1 + 46, 1, -3.7 );
setRotateKey( spep_2 -1 + 48, 1, 1.5 );
setRotateKey( spep_2 -1 + 50, 1, 6.6 );
setRotateKey( spep_2 -1 + 52, 1, 11.7 );
setRotateKey( spep_2 -1 + 54, 1, 16.8 );
setRotateKey( spep_2 -1 + 56, 1, 21.9 );
setRotateKey( spep_2 + 56, 1, 21.9 );

-- ** 音 ** --
--敵ヒット
SE020 = playSeVer2( spep_2 + 28, 1024, "",spep_2 + 98, 0, 50, -1);
SE021 = playSeVer2( spep_2 + 28, 1023, "",spep_2 + 90, 0, 40, -1);

--環境音
SE022 = playSeVer2( spep_2 + 28, 1269, "",spep_2 + 126, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 28, SE022, 25 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;


-------------------------------------------------
-- ブルマがカプセルを選ぶ
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_04r, 0x80, -1, 0, 0, 0); -- ef_004 敵側
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 60, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, -1.0, 1.0);
setEffScaleKey( spep_3 + 60, base_3, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 60, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 60, base_3, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 60 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--選ぶ
SE023 = playSeVer2( spep_3 + 6, 4, "", 0, 0, 0, -1);

--決める
SE024 = playSeVer2( spep_3 + 38, 1317, "",spep_3 + 50, 0, 4, -1);

-- ** 次の準備 ** --
spep_c = spep_3 + 60;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);
setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0);
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -188 );
setEffScaleKey( spep_c + 0, spname, -1.0, 1.0);
setEffScaleKey( spep_c + 90, spname, -1.0, 1.0);
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );

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
playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_c + 94;


-------------------------------------------------
-- 上空にカプセルを投げる～ロケラン発射
-------------------------------------------------
-- ** エフェクト等 ** --
base_4 = entryEffect( spep_4 + 0, SP_05r, 0x80, -1, 0, 0, 0); -- ef_005 敵側
setEffMoveKey( spep_4 + 0, base_4, 0, 0 , 0);
setEffMoveKey( spep_4 + 274, base_4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4, -1.0, 1.0);
setEffScaleKey( spep_4 + 274, base_4, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4, 0);
setEffRotateKey( spep_4 + 274, base_4, 0);
setEffAlphaKey( spep_4 + 0, base_4, 255);
setEffAlphaKey( spep_4 + 274 -2, base_4, 255);
setEffAlphaKey( spep_4 + 274 -1, base_4, 255);
setEffAlphaKey( spep_4 + 274, base_4, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 274 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_4 + 152;

-- ** 顔カットイン ** --
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--カプセル投げる
SE026 = playSeVer2( spep_4 + 14, 1003, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 16, 1117, "",spep_4 + 68, 0, 28, -1);
SE028 = playSeVer2( spep_4 + 16, 1119, "",spep_4 + 68, 0, 12, -1);

--爆発する
SE029 = playSeVer2( spep_4 + 62, 1017, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_4 + 62, 1236, "",spep_4 + 154, 0, 42, -1);

--バズーカ落ちてくる
SE031 = playSeVer2( spep_4 + 106, 1118, "",spep_4 + 162, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 106, SE031, 63 );

--バズーカキャッチする
SE033 = playSeVer2( spep_4 + 154, 1006, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_4 + 156, 1007, "", 0, 0, 0, -1);

--バズーカ撃つ
SE035 = playSeVer2( spep_4 + 240, 1030, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_4 + 240, 1028, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_4 + 240, 1193, "",spep_4 + 364, 0, 66, 0.6);
SE038 = playSeVer2( spep_4 + 240, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 240, SE038, 76 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 274;


-------------------------------------------------
-- 敵に命中し爆発
-------------------------------------------------
-- ** エフェクト等 ** --
base_5f = entryEffect( spep_5 + 0, SP_06r, 0x100, -1, 0, 0, 0); -- ef_006 手前　敵側
setEffMoveKey( spep_5 + 0, base_5f, 0, 0 , 0);
setEffMoveKey( spep_5 + 174, base_5f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5f, -1.0, 1.0);
setEffScaleKey( spep_5 + 174, base_5f, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5f, 0);
setEffRotateKey( spep_5 + 174, base_5f, 0);
setEffAlphaKey( spep_5 + 0, base_5f, 255);
setEffAlphaKey( spep_5 + 174 , base_5f, 255);

base_5b = entryEffect( spep_5 + 0, SP_06b, 0x80, -1, 0, 0, 0); -- ef_006_b 奥　敵味方兼用　反転あり
setEffMoveKey( spep_5 + 0, base_5b, 0, 0 , 0);
setEffMoveKey( spep_5 + 174, base_5b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5b, 1.0, 1.0);
setEffScaleKey( spep_5 + 174, base_5b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5b, 0);
setEffRotateKey( spep_5 + 174, base_5b, 0);
setEffAlphaKey( spep_5 + 0, base_5b, 255);
setEffAlphaKey( spep_5 + 174, base_5b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 174 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 174, 1, 0 );

changeAnime( spep_5 + 0, 1, 108 );

setMoveKey( spep_5 + 0, 1, 229.3, 187 , 0 );
setMoveKey( spep_5 -1 + 2, 1, 209.5, 207.5 , 0 );
setMoveKey( spep_5 -1 + 3, 1, 209.5, 207.5 , 0 );
setMoveKey( spep_5 -1 + 4, 1, 249.8, 168 , 0 );
setMoveKey( spep_5 -1 + 5, 1, 249.8, 168 , 0 );
setMoveKey( spep_5 -1 + 6, 1, 252, 198.7 , 0 );
setMoveKey( spep_5 -1 + 7, 1, 252, 198.7 , 0 );
setMoveKey( spep_5 -1 + 8, 1, 213.9, 144.7 , 0 );
setMoveKey( spep_5 -1 + 9, 1, 213.9, 144.7 , 0 );
setMoveKey( spep_5 -1 + 10, 1, 222.3, 239.9 , 0 );
setMoveKey( spep_5 -1 + 11, 1, 222.3, 239.9 , 0 );
setMoveKey( spep_5 -1 + 12, 1, 196.3, 183.9 , 0 );
setMoveKey( spep_5 -1 + 13, 1, 196.3, 183.9 , 0 );
setMoveKey( spep_5 -1 + 14, 1, 279.2, 170.3 , 0 );
setMoveKey( spep_5 -1 + 15, 1, 279.2, 170.3 , 0 );
setMoveKey( spep_5 -1 + 16, 1, 211.2, 210.8 , 0 );
setMoveKey( spep_5 -1 + 17, 1, 211.2, 210.8 , 0 );
setMoveKey( spep_5 -1 + 18, 1, 251.4, 171.2 , 0 );
setMoveKey( spep_5 -1 + 19, 1, 251.4, 171.2 , 0 );
setMoveKey( spep_5 -1 + 20, 1, 253.6, 201.9 , 0 );
setMoveKey( spep_5 -1 + 21, 1, 253.6, 201.9 , 0 );
setMoveKey( spep_5 -1 + 22, 1, 215.5, 147.9 , 0 );
setMoveKey( spep_5 -1 + 23, 1, 215.5, 147.9 , 0 );
setMoveKey( spep_5 -1 + 24, 1, 223.9, 243.2 , 0 );
setMoveKey( spep_5 -1 + 25, 1, 223.9, 243.2 , 0 );
setMoveKey( spep_5 -1 + 26, 1, 197.9, 187.2 , 0 );
setMoveKey( spep_5 -1 + 27, 1, 197.9, 187.2 , 0 );
setMoveKey( spep_5 -1 + 28, 1, 232.5, 193.5 , 0 );
setMoveKey( spep_5 -1 + 29, 1, 232.5, 193.5 , 0 );
setMoveKey( spep_5 -1 + 30, 1, 231.4, 194 , 0 );
setMoveKey( spep_5 -1 + 31, 1, 231.4, 194 , 0 );
setMoveKey( spep_5 -1 + 32, 1, 230.3, 194.5 , 0 );
setMoveKey( spep_5 -1 + 33, 1, 230.3, 194.5 , 0 );
setMoveKey( spep_5 -1 + 34, 1, 229.2, 194.9 , 0 );
setMoveKey( spep_5 -1 + 35, 1, 229.2, 194.9 , 0 );
setMoveKey( spep_5 -1 + 36, 1, 228.1, 195.4 , 0 );
setMoveKey( spep_5 -1 + 37, 1, 228.1, 195.4 , 0 );
setMoveKey( spep_5 -1 + 38, 1, 226.9, 195.8 , 0 );
setMoveKey( spep_5 -1 + 39, 1, 226.9, 195.8 , 0 );
setMoveKey( spep_5 -1 + 40, 1, 225.8, 196.3 , 0 );
setMoveKey( spep_5 -1 + 41, 1, 225.8, 196.3 , 0 );
setMoveKey( spep_5 -1 + 42, 1, 224.7, 196.8 , 0 );
setMoveKey( spep_5 -1 + 43, 1, 224.7, 196.8 , 0 );
setMoveKey( spep_5 -1 + 44, 1, 223.6, 197.2 , 0 );
setMoveKey( spep_5 -1 + 45, 1, 223.6, 197.2 , 0 );
setMoveKey( spep_5 -1 + 46, 1, 222.5, 197.7 , 0 );
setMoveKey( spep_5 -1 + 47, 1, 222.5, 197.7 , 0 );
setMoveKey( spep_5 -1 + 48, 1, 221.4, 198.2 , 0 );
setMoveKey( spep_5 -1 + 49, 1, 221.4, 198.2 , 0 );
setMoveKey( spep_5 -1 + 50, 1, 220.2, 198.6 , 0 );
setMoveKey( spep_5 -1 + 51, 1, 220.2, 198.6 , 0 );
setMoveKey( spep_5 -1 + 52, 1, 219.1, 199.1 , 0 );
setMoveKey( spep_5 -1 + 53, 1, 219.1, 199.1 , 0 );
setMoveKey( spep_5 -1 + 54, 1, 218, 199.5 , 0 );
setMoveKey( spep_5 -1 + 55, 1, 218, 199.5 , 0 );
setMoveKey( spep_5 -1 + 56, 1, 210.4, 187 , 0 );
setMoveKey( spep_5 -1 + 57, 1, 210.4, 187 , 0 );
setMoveKey( spep_5 -1 + 58, 1, 209.3, 187.5 , 0 );
setMoveKey( spep_5 -1 + 59, 1, 209.3, 187.5 , 0 );
setMoveKey( spep_5 -1 + 60, 1, 224.9, 177 , 0 );
setMoveKey( spep_5 -1 + 61, 1, 224.9, 177 , 0 );
setMoveKey( spep_5 -1 + 62, 1, 190.7, 192.2 , 0 );
setMoveKey( spep_5 -1 + 63, 1, 190.7, 192.2 , 0 );
setMoveKey( spep_5 -1 + 64, 1, 244.1, 227.4 , 0 );
setMoveKey( spep_5 -1 + 65, 1, 244.1, 227.4 , 0 );
setMoveKey( spep_5 -1 + 66, 1, 200, 157.3 , 0 );
setMoveKey( spep_5 -1 + 67, 1, 200, 157.3 , 0 );
setMoveKey( spep_5 -1 + 68, 1, 180.1, 232.3 , 0 );
setMoveKey( spep_5 -1 + 69, 1, 180.1, 232.3 , 0 );
setMoveKey( spep_5 -1 + 70, 1, 240.8, 148.1 , 0 );
setMoveKey( spep_5 -1 + 71, 1, 240.8, 148.1 , 0 );
setMoveKey( spep_5 -1 + 72, 1, 241.1, 188.9 , 0 );
setMoveKey( spep_5 -1 + 73, 1, 241.1, 188.9 , 0 );
setMoveKey( spep_5 -1 + 74, 1, 191.2, 197.1 , 0 );
setMoveKey( spep_5 -1 + 75, 1, 191.2, 197.1 , 0 );
setMoveKey( spep_5 -1 + 76, 1, 211.4, 191.7 , 0 );
setMoveKey( spep_5 -1 + 77, 1, 211.4, 191.7 , 0 );
setMoveKey( spep_5 -1 + 78, 1, 213.6, 194.1 , 0 );
setMoveKey( spep_5 -1 + 79, 1, 213.6, 194.1 , 0 );
setMoveKey( spep_5 -1 + 80, 1, 209.9, 194.6 , 0 );
setMoveKey( spep_5 -1 + 81, 1, 209.9, 194.6 , 0 );
setMoveKey( spep_5 -1 + 82, 1, 212.1, 199.1 , 0 );
setMoveKey( spep_5 -1 + 83, 1, 212.1, 199.1 , 0 );
setMoveKey( spep_5 -1 + 84, 1, 216.3, 191.5 , 0 );
setMoveKey( spep_5 -1 + 85, 1, 216.3, 191.5 , 0 );
setMoveKey( spep_5 -1 + 86, 1, 208.6, 192 , 0 );
setMoveKey( spep_5 -1 + 87, 1, 208.6, 192 , 0 );
setMoveKey( spep_5 -1 + 88, 1, 204.8, 196.5 , 0 );
setMoveKey( spep_5 -1 + 89, 1, 204.8, 196.5 , 0 );
setMoveKey( spep_5 -1 + 90, 1, 210, 196.9 , 0 );
setMoveKey( spep_5 -1 + 91, 1, 210, 196.9 , 0 );
setMoveKey( spep_5 -1 + 92, 1, 215.3, 197.4 , 0 );
setMoveKey( spep_5 -1 + 93, 1, 215.3, 197.4 , 0 );
setMoveKey( spep_5 -1 + 94, 1, 214.5, 196.8 , 0 );
setMoveKey( spep_5 -1 + 95, 1, 214.5, 196.8 , 0 );
setMoveKey( spep_5 -1 + 96, 1, 213.7, 196.3 , 0 );
setMoveKey( spep_5 -1 + 97, 1, 213.7, 196.3 , 0 );
setMoveKey( spep_5 -1 + 98, 1, 214, 196.8 , 0 );
setMoveKey( spep_5 -1 + 99, 1, 214, 196.8 , 0 );
setMoveKey( spep_5 -1 + 100, 1, 214.2, 197.2 , 0 );
setMoveKey( spep_5 -1 + 101, 1, 214.2, 197.2 , 0 );
setMoveKey( spep_5 -1 + 102, 1, 214.4, 197.7 , 0 );
setMoveKey( spep_5 -1 + 103, 1, 214.4, 197.7 , 0 );
setMoveKey( spep_5 -1 + 104, 1, 214.7, 198.2 , 0 );
setMoveKey( spep_5 -1 + 105, 1, 214.7, 198.2 , 0 );
setMoveKey( spep_5 -1 + 106, 1, 214.9, 198.6 , 0 );
setMoveKey( spep_5 -1 + 107, 1, 214.9, 198.6 , 0 );
setMoveKey( spep_5 -1 + 108, 1, 215.1, 199.1 , 0 );
setMoveKey( spep_5 -1 + 109, 1, 215.1, 199.1 , 0 );
setMoveKey( spep_5 -1 + 110, 1, 215.4, 199.5 , 0 );
setMoveKey( spep_5 -1 + 111, 1, 215.4, 199.5 , 0 );
setMoveKey( spep_5 -1 + 112, 1, 209.1, 187 , 0 );
setMoveKey( spep_5 -1 + 113, 1, 209.1, 187 , 0 );
setMoveKey( spep_5 -1 + 114, 1, 209.3, 187.5 , 0 );
setMoveKey( spep_5 -1 + 115, 1, 209.3, 187.5 , 0 );
setMoveKey( spep_5 -1 + 116, 1, 209.6, 188 , 0 );
setMoveKey( spep_5 -1 + 117, 1, 209.6, 188 , 0 );
setMoveKey( spep_5 -1 + 118, 1, 209.8, 188.4 , 0 );
setMoveKey( spep_5 -1 + 119, 1, 209.8, 188.4 , 0 );
setMoveKey( spep_5 -1 + 120, 1, 210, 188.9 , 0 );
setMoveKey( spep_5 -1 + 121, 1, 210, 188.9 , 0 );
setMoveKey( spep_5 -1 + 122, 1, 210.3, 189.4 , 0 );
setMoveKey( spep_5 -1 + 123, 1, 210.3, 189.4 , 0 );
setMoveKey( spep_5 -1 + 124, 1, 210.5, 189.8 , 0 );
setMoveKey( spep_5 -1 + 125, 1, 210.5, 189.8 , 0 );
setMoveKey( spep_5 -1 + 126, 1, 210.7, 190.3 , 0 );
setMoveKey( spep_5 -1 + 127, 1, 210.7, 190.3 , 0 );
setMoveKey( spep_5 -1 + 128, 1, 211, 190.8 , 0 );
setMoveKey( spep_5 -1 + 129, 1, 211, 190.8 , 0 );
setMoveKey( spep_5 -1 + 130, 1, 211.2, 191.2 , 0 );
setMoveKey( spep_5 -1 + 131, 1, 211.2, 191.2 , 0 );
setMoveKey( spep_5 -1 + 132, 1, 211.4, 191.7 , 0 );
setMoveKey( spep_5 -1 + 133, 1, 211.4, 191.7 , 0 );
setMoveKey( spep_5 -1 + 134, 1, 211.6, 192.1 , 0 );
setMoveKey( spep_5 -1 + 135, 1, 211.6, 192.1 , 0 );
setMoveKey( spep_5 -1 + 136, 1, 211.9, 192.6 , 0 );
setMoveKey( spep_5 -1 + 137, 1, 211.9, 192.6 , 0 );
setMoveKey( spep_5 -1 + 138, 1, 212.1, 193.1 , 0 );
setMoveKey( spep_5 -1 + 139, 1, 212.1, 193.1 , 0 );
setMoveKey( spep_5 -1 + 140, 1, 212.3, 193.5 , 0 );
setMoveKey( spep_5 -1 + 141, 1, 212.3, 193.5 , 0 );
setMoveKey( spep_5 -1 + 142, 1, 212.6, 194 , 0 );
setMoveKey( spep_5 -1 + 143, 1, 212.6, 194 , 0 );
setMoveKey( spep_5 -1 + 144, 1, 212.8, 194.5 , 0 );
setMoveKey( spep_5 -1 + 145, 1, 212.8, 194.5 , 0 );
setMoveKey( spep_5 -1 + 146, 1, 213, 194.9 , 0 );
setMoveKey( spep_5 -1 + 147, 1, 213, 194.9 , 0 );
setMoveKey( spep_5 -1 + 148, 1, 213.3, 195.4 , 0 );
setMoveKey( spep_5 -1 + 149, 1, 213.3, 195.4 , 0 );
setMoveKey( spep_5 -1 + 150, 1, 213.5, 195.8 , 0 );
setMoveKey( spep_5 -1 + 151, 1, 213.5, 195.8 , 0 );
setMoveKey( spep_5 -1 + 152, 1, 213.7, 196.3 , 0 );
setMoveKey( spep_5 -1 + 153, 1, 213.7, 196.3 , 0 );
setMoveKey( spep_5 -1 + 154, 1, 214, 196.8 , 0 );
setMoveKey( spep_5 -1 + 155, 1, 214, 196.8 , 0 );
setMoveKey( spep_5 -1 + 156, 1, 214.2, 197.2 , 0 );
setMoveKey( spep_5 -1 + 157, 1, 214.2, 197.2 , 0 );
setMoveKey( spep_5 -1 + 158, 1, 214.4, 197.7 , 0 );
setMoveKey( spep_5 -1 + 159, 1, 214.4, 197.7 , 0 );
setMoveKey( spep_5 -1 + 160, 1, 214.7, 198.2 , 0 );
setMoveKey( spep_5 -1 + 161, 1, 214.7, 198.2 , 0 );
setMoveKey( spep_5 -1 + 162, 1, 214.9, 198.6 , 0 );
setMoveKey( spep_5 -1 + 163, 1, 214.9, 198.6 , 0 );
setMoveKey( spep_5 -1 + 164, 1, 215.1, 199.1 , 0 );
setMoveKey( spep_5 -1 + 165, 1, 215.1, 199.1 , 0 );
setMoveKey( spep_5 -1 + 166, 1, 215.4, 199.5 , 0 );
setMoveKey( spep_5 -1 + 167, 1, 215.4, 199.5 , 0 );
setMoveKey( spep_5 -1 + 168, 1, 209.1, 187 , 0 );
setMoveKey( spep_5 -1 + 169, 1, 209.1, 187 , 0 );
setMoveKey( spep_5 -1 + 170, 1, 209.3, 187.5 , 0 );
setMoveKey( spep_5 -1 + 171, 1, 209.3, 187.5 , 0 );
setMoveKey( spep_5 -1 + 172, 1, 209.6, 188 , 0 );
setMoveKey( spep_5 -1 + 173, 1, 209.6, 188 , 0 );
setMoveKey( spep_5 -1 + 174, 1, 209.8, 188.4 , 0 );
setMoveKey( spep_5 + 174, 1, 209.8, 188.4 , 0 );

setScaleKey( spep_5 + 0, 1, 0.41, 0.41 );
setScaleKey( spep_5 -1 + 2, 1, 0.4, 0.4 );
setScaleKey( spep_5 -1 + 3, 1, 0.4, 0.4 );
setScaleKey( spep_5 -1 + 4, 1, 0.39, 0.39 );
setScaleKey( spep_5 -1 + 5, 1, 0.39, 0.39 );
setScaleKey( spep_5 -1 + 6, 1, 0.38, 0.38 );
setScaleKey( spep_5 -1 + 8, 1, 0.38, 0.38 );
setScaleKey( spep_5 -1 + 9, 1, 0.38, 0.38 );
setScaleKey( spep_5 -1 + 10, 1, 0.37, 0.37 );
setScaleKey( spep_5 -1 + 11, 1, 0.37, 0.37 );
setScaleKey( spep_5 -1 + 12, 1, 0.36, 0.36 );
setScaleKey( spep_5 -1 + 14, 1, 0.36, 0.36 );
setScaleKey( spep_5 -1 + 15, 1, 0.36, 0.36 );
setScaleKey( spep_5 -1 + 16, 1, 0.35, 0.35 );
setScaleKey( spep_5 -1 + 17, 1, 0.35, 0.35 );
setScaleKey( spep_5 -1 + 18, 1, 0.34, 0.34 );
setScaleKey( spep_5 -1 + 20, 1, 0.34, 0.34 );
setScaleKey( spep_5 -1 + 21, 1, 0.34, 0.34 );
setScaleKey( spep_5 -1 + 22, 1, 0.33, 0.33 );
setScaleKey( spep_5 -1 + 23, 1, 0.33, 0.33 );
setScaleKey( spep_5 -1 + 24, 1, 0.32, 0.32 );
setScaleKey( spep_5 -1 + 26, 1, 0.32, 0.32 );
setScaleKey( spep_5 -1 + 27, 1, 0.32, 0.32 );
setScaleKey( spep_5 -1 + 28, 1, 0.31, 0.31 );
setScaleKey( spep_5 -1 + 29, 1, 0.31, 0.31 );
setScaleKey( spep_5 -1 + 30, 1, 0.3, 0.3 );
setScaleKey( spep_5 -1 + 31, 1, 0.3, 0.3 );
setScaleKey( spep_5 -1 + 32, 1, 0.29, 0.29 );
setScaleKey( spep_5 -1 + 34, 1, 0.29, 0.29 );
setScaleKey( spep_5 -1 + 35, 1, 0.29, 0.29 );
setScaleKey( spep_5 -1 + 36, 1, 0.28, 0.28 );
setScaleKey( spep_5 -1 + 37, 1, 0.28, 0.28 );
setScaleKey( spep_5 -1 + 38, 1, 0.27, 0.27 );
setScaleKey( spep_5 -1 + 40, 1, 0.27, 0.27 );
setScaleKey( spep_5 -1 + 41, 1, 0.27, 0.27 );
setScaleKey( spep_5 -1 + 42, 1, 0.26, 0.26 );
setScaleKey( spep_5 -1 + 43, 1, 0.26, 0.26 );
setScaleKey( spep_5 -1 + 44, 1, 0.25, 0.25 );
setScaleKey( spep_5 -1 + 46, 1, 0.25, 0.25 );
setScaleKey( spep_5 -1 + 47, 1, 0.25, 0.25 );
setScaleKey( spep_5 -1 + 48, 1, 0.24, 0.24 );
setScaleKey( spep_5 -1 + 49, 1, 0.24, 0.24 );
setScaleKey( spep_5 -1 + 50, 1, 0.23, 0.23 );
setScaleKey( spep_5 -1 + 52, 1, 0.23, 0.23 );
setScaleKey( spep_5 -1 + 53, 1, 0.23, 0.23 );
setScaleKey( spep_5 -1 + 54, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 174, 1, 0.22, 0.22 );

setRotateKey( spep_5 + 0, 1, -3.7 );
setRotateKey( spep_5 + 174, 1, -3.7 );

-- ** 音 ** --
----爆発する
SE039 = playSeVer2( spep_5 + 60, 1024, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_5 + 62, 1159, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_5 + 98, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 84); -- ダメージ表示フレーム
endPhase( spep_5 + 174 -4); -- 終了フレーム

end