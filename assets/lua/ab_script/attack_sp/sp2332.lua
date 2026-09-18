--1023860:超サイヤ人孫悟空Jr.&超サイヤ人ベジータJr._勇気と誇りのダブルアタック
--sp_effect_a1_00344
--sp2332.lua

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
SP_01 = 159311;	--構える	ef_001	55	味方用	GV
SP_02 = 159313;	--格闘　手前	ef_002	50	味方用	GV
SP_03 = 159315;	--格闘　奥	ef_002_b	50	そのまま反転	GV
SP_04 = 159316;	--ベジータＪｒが先回り　手前	ef_003	20	そのまま反転	GV
SP_05 = 159317;	--ベジータＪｒが先回り　奥	ef_003_b	20	そのまま反転	GV
SP_06 = 159318;	--ベジータＪｒ　ハイキック　手前	ef_004	35	味方用	GV
SP_07 = 159320;	--ベジータＪｒ　ハイキック　奥	ef_004_b	35	そのまま反転	GV
SP_08 = 159321;	--悟空Jr　振りかぶる～ヒットエフェクト	ef_005	20	味方用	GV
SP_09 = 159323;	--悟空Jrのパンチがヒットする　手前	ef_006	20	味方用	GV
SP_10 = 159325;	--悟空Jrのパンチがヒットする　奥	ef_006_b	20	そのまま反転	GV
SP_11 = 159326;	--敵が吹っ飛ぶ	ef_007	35	反転なし	GV
SP_12 = 159327;	--気溜め	ef_008	40	味方用	GV
SP_13 = 159329;	--気弾を放つ	ef_009	45	味方用	GV
SP_14 = 159331;	--気弾が敵に向かう　手前	ef_010	30	反転なし	GV
SP_15 = 159332;	--気弾が敵に向かう　奥	ef_010_b	30	反転なし	GV
SP_16 = 159333;	--フィニッシュ	ef_011	90	反転なし	GV

-- ** エフェクト(敵) ** --
SP_01r = 159312;	--構える	ef_001_r	55	敵用	GV
SP_02r = 159314;	--格闘　手前	ef_002_r	50	敵用	GV
SP_06r = 159319;	--ベジータＪｒ　ハイキック　手前	ef_004_ｒ	35	敵用	GV
SP_08r = 159322;	--悟空Jr　振りかぶる～ヒットエフェクト	ef_005_r	20	敵用	GV
SP_09r = 159324;	--悟空Jrのパンチがヒットする　手前	ef_006_r	20	敵用	GV
SP_12r = 159328;	--気溜め	ef_008_r	40	敵用	GV
SP_13r = 159330;	--気弾を放つ	ef_009_r	45	敵用	GV
SP_14r = 159433;	--気弾が敵に向かう　手前	ef_010	30

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


spep_1 = 0;


-------------------------------------------------
-- 構える
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --構える	ef_001	55	味方用	GV
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 108 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 108 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 108 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 108 -5, base_1, 255);
setEffAlphaKey( spep_1 + 108 -4, base_1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40 +40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40 +40, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40 +40, 525 , 0);
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
--二人オーラ
SE001 = playSeVer2( spep_1 + 0, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 0, SE001, 79 );

--顔カットイン
SE002 = playSeVer2( spep_1 + 12, 1018, "", 0, 0, 0, -1);

--二人オーラ
SE003 = playSeVer2( spep_1 + 24, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 24, SE003, 79 );
SE004 = playSeVer2( spep_1 + 48, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 48, SE004, 79 );
SE005 = playSeVer2( spep_1 + 72, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 72, SE005, 79 );

--瞬間移動
SE006 = playSeVer2( spep_1 + 90, 1109, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_2 = spep_1 + 108 -4;

-------------------------------------------------
-- 格闘
-------------------------------------------------
-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); --格闘　手前	ef_002	50	味方用	GV
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 100 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 100 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 100 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 100 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 100 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); --格闘　奥	ef_002_b	50	そのまま反転	GV
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 100 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 100 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 100 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 100 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 100 -4, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 -3 + 26, 1, 106 );

setMoveKey( spep_2 + 0, 1, 89.9, -1 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 89.9, -1 , 0 );
setMoveKey( spep_2 -3 + 25, 1, 80.4, -2.4 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 62.7, 11 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 74.9, 17.6 , 0 );

setScaleKey( spep_2 + 0, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 25, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 26, 1, 1.89, 1.89 );


setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 25, 1, 0 );
setRotateKey( spep_2 -3 + 26, 1, -55.7 );
setRotateKey( spep_2 -3 + 28, 1, -52.1 );


--瞬間移動
SE007 = playSeVer2( spep_2 + 0, 1109, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 24; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
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
setDisp( spep_2 -4 + 100, 1, 0 );

changeAnime( spep_2 -3 + 72, 1, 108 );

setMoveKey( spep_2 -3 + 30, 1, 12.6, -9.8 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 56.4, -12.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 14, 25.8 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 31.3, -12.3 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 31.7, 10.4 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 36.3, 15.8 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 29.4, 15.7 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 26.6, 7.6 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 29.1, 1.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 23.4, 4.9 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 22.2, 4.4 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 21.1, 3.9 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 19.9, 3.5 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 18.7, 3 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 17.5, 2.5 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 16.3, 2 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 15.1, 1.6 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 13.9, 1.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 12.8, 0.6 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 23.4, 3.6 , 0 );
setMoveKey( spep_2 -3 + 71, 1, 33.9, 6.6 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 59, -44.1 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 24.5, -26.1 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 59.9, -32.4 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 35.4, -59.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 97.4, -106.1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 111.4, -158.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 155.4, -210.5 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 187.4, -296.8 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 221.4, -347.4 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 255.4, -406.2 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 289.4, -456 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 323.3, -532.2 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 357.4, -582.8 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 391.3, -632.5 , 0 );
-- setMoveKey( spep_2 -5 + 100, 1, 391.3, -632.5 , 0 );

setScaleKey( spep_2 -3 + 71, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 72, 1, 2.25, 2.25 );
setScaleKey( spep_2 -5 + 100, 1, 2.25, 2.25 );

setRotateKey( spep_2 -3 + 30, 1, -48.5 );
setRotateKey( spep_2 -3 + 32, 1, -46.7 );
setRotateKey( spep_2 -3 + 34, 1, -44.8 );
setRotateKey( spep_2 -3 + 36, 1, -43 );
setRotateKey( spep_2 -3 + 38, 1, -41.2 );
setRotateKey( spep_2 -3 + 40, 1, -39.4 );
setRotateKey( spep_2 -3 + 42, 1, -37.6 );
setRotateKey( spep_2 -3 + 44, 1, -35.8 );
setRotateKey( spep_2 -3 + 46, 1, -33.9 );
setRotateKey( spep_2 -3 + 48, 1, -32.1 );
setRotateKey( spep_2 -3 + 50, 1, -30.3 );
setRotateKey( spep_2 -3 + 52, 1, -28.5 );
setRotateKey( spep_2 -3 + 54, 1, -26.7 );
setRotateKey( spep_2 -3 + 56, 1, -24.9 );
setRotateKey( spep_2 -3 + 58, 1, -23.1 );
setRotateKey( spep_2 -3 + 60, 1, -21.2 );
setRotateKey( spep_2 -3 + 62, 1, -19.4 );
setRotateKey( spep_2 -3 + 64, 1, -17.6 );
setRotateKey( spep_2 -3 + 66, 1, -15.8 );
setRotateKey( spep_2 -3 + 68, 1, -13.1 );
setRotateKey( spep_2 -3 + 71, 1, -10.4 );
setRotateKey( spep_2 -3 + 72, 1, 63.4 );
setRotateKey( spep_2 -5 + 100, 1, 63.4 );


-- ** 音 ** --
--ベジータパンチ
SE008 = playSeVer2( spep_2 + 22, 1189, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 28, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 28, 1110, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 28, SE010, 90 );
SE011 = playSeVer2( spep_2 + 28, 1000, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 28, SE011, 94 );

--瞬間移動
SE012 = playSeVer2( spep_2 + 42, 1109, "", 0, 0, 0, -1);

--悟空キック
SE013 = playSeVer2( spep_2 + 64, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 68, 1001, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 72, SE014, 81 );
SE015 = playSeVer2( spep_2 + 70, 1010, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 72, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE017 = playSeVer2( spep_2 + 78, 1183, "",spep_2 + 154, 0, 22, -1);	setSeVolumeByWorkId( spep_2 + 78, SE017, 75 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 100 -4;

-------------------------------------------------
-- ベジータＪｒが先回り
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); --ベジータＪｒが先回り　手前	ef_003	20	そのまま反転	GV
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 40 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 40 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 40 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 40 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 40 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0); --ベジータＪｒが先回り　奥	ef_003_b	20	そのまま反転	GV
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 40 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 40 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 40 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 40 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 40 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -4 + 40, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );

--setMoveKey( spep_3 -3 + 0, 1, -316.9, 421 , 0 );
setMoveKey( spep_3 -2 + 2, 1, -324.7, 424.5 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -332.5, 427.9 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -340.4, 431.3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -348.2, 434.8 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -356, 438.2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -363.9, 441.6 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -371.7, 445.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -379.5, 448.5 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -387.3, 452 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -338.6, 404 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -289.8, 356 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -241.1, 308.1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -192.3, 260.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -143.5, 212.2 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -94.8, 164.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -46, 116.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 2.8, 68.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 51.5, 20.4 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 100.3, -27.6 , 0 );
setMoveKey( spep_3 -5 + 40, 1, 100.3, -27.6 , 0 );

setScaleKey( spep_3 + 0, 1, 2.57, 2.57 );
setScaleKey( spep_3 -5 + 40, 1, 2.57, 2.57 );

setRotateKey( spep_3 + 0, 1, 80.9 );
setRotateKey( spep_3 -5 + 40, 1, 80.9 );


-- ** 音 ** --
--瞬間移動
SE018 = playSeVer2( spep_3 + 14, 1109, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 40 -4;

-------------------------------------------------
-- ベジータＪｒ　ハイキック　
-------------------------------------------------
-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0); --ベジータＪｒ　ハイキック　手前	ef_004	35	味方用	GV
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 68 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 68 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 68 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 68 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 68 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0); --ベジータＪｒ　ハイキック　奥	ef_004_b	35	そのまま反転	GV
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 68 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 68 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 68 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 68 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 68 -4, base4_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -4 + 68, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4 -3 + 40, 1, 106 );

--setMoveKey( spep_4 -3 + 0, 1, -332.3, 1537.6 , 0 );
setMoveKey( spep_4 -2 + 2, 1, -189.6, 937.4 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -47, 337.2 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -4.7, -156.6 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 22.7, -111.5 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 33.2, -66.4 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 82.8, -7.9 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 70.6, -11.2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 87.4, -4.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 49.7, -17.8 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 73.3, -14.3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 69.6, -17.6 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 69.4, -14.2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 68.4, -16 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 67.5, -18 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 62.3, -12.2 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 57.1, -6.4 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 64.8, -12 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 72.6, -17.6 , 0 );
setMoveKey( spep_4 -3 + 39, 1, 63.6, -15.2 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -9.6, 35.8 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 0.7, 37.4 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 10.2, 38.9 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 4.5, 23.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -1.8, 7.3 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -0.1, 19.9 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 1.7, 32.4 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 11.4, 23.9 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 21.1, 15.3 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 22.4, 15.2 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 23.8, 15.1 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 25.2, 14.9 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 26.5, 14.8 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 27.8, 14.7 , 0 );
setMoveKey( spep_4 -4 + 68, 1, 29.1, 14.5 , 0 );

setScaleKey( spep_4 + 0, 1, 13.27, 13.27 );
setScaleKey( spep_4 -3 + 6, 1, 13.27, 13.27 );
setScaleKey( spep_4 -3 + 8, 1, 10.86, 10.86 );
setScaleKey( spep_4 -3 + 10, 1, 8.46, 8.46 );
setScaleKey( spep_4 -3 + 12, 1, 6.06, 6.06 );
setScaleKey( spep_4 -3 + 14, 1, 6.04, 6.04 );
setScaleKey( spep_4 -3 + 16, 1, 6.01, 6.01 );
setScaleKey( spep_4 -3 + 18, 1, 5.98, 5.98 );
setScaleKey( spep_4 -3 + 20, 1, 5.95, 5.95 );
setScaleKey( spep_4 -3 + 22, 1, 5.92, 5.92 );
setScaleKey( spep_4 -3 + 24, 1, 5.89, 5.89 );
setScaleKey( spep_4 -3 + 26, 1, 5.87, 5.87 );
setScaleKey( spep_4 -3 + 28, 1, 5.84, 5.84 );
setScaleKey( spep_4 -3 + 30, 1, 5.81, 5.81 );
setScaleKey( spep_4 -3 + 32, 1, 5.78, 5.78 );
setScaleKey( spep_4 -3 + 34, 1, 5.75, 5.75 );
setScaleKey( spep_4 -3 + 36, 1, 5.72, 5.72 );
setScaleKey( spep_4 -3 + 39, 1, 5.7, 5.7 );
setScaleKey( spep_4 -3 + 40, 1, 4.9, 4.9 );
setScaleKey( spep_4 -3 + 42, 1, 4.32, 4.32 );
setScaleKey( spep_4 -3 + 44, 1, 3.75, 3.75 );
setScaleKey( spep_4 -3 + 46, 1, 3.19, 3.19 );
setScaleKey( spep_4 -3 + 48, 1, 2.64, 2.64 );
setScaleKey( spep_4 -3 + 50, 1, 2.59, 2.59 );
setScaleKey( spep_4 -3 + 52, 1, 2.55, 2.55 );
setScaleKey( spep_4 -3 + 54, 1, 2.51, 2.51 );
setScaleKey( spep_4 -3 + 56, 1, 2.46, 2.46 );
setScaleKey( spep_4 -3 + 58, 1, 2.42, 2.42 );
setScaleKey( spep_4 -3 + 60, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 62, 1, 2.34, 2.34 );
setScaleKey( spep_4 -3 + 64, 1, 2.3, 2.3 );
setScaleKey( spep_4 -3 + 66, 1, 2.26, 2.26 );
setScaleKey( spep_4 -4 + 68, 1, 2.22, 2.22 );

--setRotateKey( spep_4 -3 + 0, 1, 46.7 );
setRotateKey( spep_4 -2 + 2, 1, 46.6 );
setRotateKey( spep_4 -3 + 4, 1, 46.5 );
setRotateKey( spep_4 -3 + 6, 1, 46.4 );
setRotateKey( spep_4 -3 + 39, 1, 46.4 );
setRotateKey( spep_4 -3 + 40, 1, -2 );
setRotateKey( spep_4 -3 + 42, 1, -1.2 );
setRotateKey( spep_4 -3 + 44, 1, -0.3 );
setRotateKey( spep_4 -3 + 46, 1, 0.5 );
setRotateKey( spep_4 -3 + 48, 1, 1.3 );
setRotateKey( spep_4 -3 + 50, 1, 2.1 );
setRotateKey( spep_4 -3 + 52, 1, 3 );
setRotateKey( spep_4 -3 + 54, 1, 3.8 );
setRotateKey( spep_4 -3 + 56, 1, 4.6 );
setRotateKey( spep_4 -3 + 58, 1, 5.4 );
setRotateKey( spep_4 -3 + 60, 1, 6.3 );
setRotateKey( spep_4 -3 + 62, 1, 7.1 );
setRotateKey( spep_4 -3 + 64, 1, 7.9 );
setRotateKey( spep_4 -3 + 66, 1, 8.7 );
setRotateKey( spep_4 -4 + 68, 1, 9.6 );


-- ** 音 ** --
--ベジータ蹴り上げ
SE019 = playSeVer2( spep_4 + 2, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 12, 1187, "",spep_4 + 78, 0, 46, -1);
SE021 = playSeVer2( spep_4 + 12, 1153, "", 0, 0, 0, -1);

--瞬間移動
SE022 = playSeVer2( spep_4 + 40, 1109, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_5 = spep_4 + 68 -4;

-------------------------------------------------
-- 悟空Jr　振りかぶる～ヒットエフェクト
-------------------------------------------------
-- ** エフェクト等 ** --
base5 = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0); --悟空Jr　振りかぶる～ヒットエフェクト	ef_005	20	味方用	GV
setEffMoveKey( spep_5 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_5 + 40 -4, base5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5, 1.0, 1.0);
setEffScaleKey( spep_5 + 40 -4, base5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5, 0);
setEffRotateKey( spep_5 + 40 -4, base5, 0);
setEffAlphaKey( spep_5 + 0, base5, 255);
setEffAlphaKey( spep_5 + 40 -5, base5, 255);
setEffAlphaKey( spep_5 + 40 -4, base5, 0);


-- ** 音 ** --
--振りかぶり
SE023 = playSeVer2( spep_5 + 0, 1116, "",spep_5 + 50, 0, 28, -1);
SE024 = playSeVer2( spep_5 + 0, 1003, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_5 + 0, 1278, "",spep_5 + 40, 0, 16, -1);	setSeVolumeByWorkId( spep_5 + 0, SE025, 64 );

--悟空パンチ
SE026 = playSeVer2( spep_5 + 24, 1189, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_5 + 30, 1120, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_6 = spep_5 + 40 -4;

-------------------------------------------------
-- 悟空Jrのパンチがヒットする　手前	ef_006	20	味方用	GV
-------------------------------------------------
-- ** エフェクト等 ** --
base6_f = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0); --悟空Jrのパンチがヒットする　手前	ef_006	20	味方用	GV
setEffMoveKey( spep_6 + 0, base6_f, 0, 0 , 0);
setEffMoveKey( spep_6 + 40 -4, base6_f, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6_f, 1.0, 1.0);
setEffScaleKey( spep_6 + 40 -4, base6_f, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6_f, 0);
setEffRotateKey( spep_6 + 40 -4, base6_f, 0);
setEffAlphaKey( spep_6 + 0, base6_f, 255);
setEffAlphaKey( spep_6 + 40 -5, base6_f, 255);
setEffAlphaKey( spep_6 + 40 -4, base6_f, 0);

base6_b = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0); --悟空Jrのパンチがヒットする　奥	ef_006_b	20	そのまま反転	GV
setEffMoveKey( spep_6 + 0, base6_b, 0, 0 , 0);
setEffMoveKey( spep_6 + 40 -4, base6_b, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6_b, 1.0, 1.0);
setEffScaleKey( spep_6 + 40 -4, base6_b, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6_b, 0);
setEffRotateKey( spep_6 + 40 -4, base6_b, 0);
setEffAlphaKey( spep_6 + 0, base6_b, 255);
setEffAlphaKey( spep_6 + 40 -5, base6_b, 255);
setEffAlphaKey( spep_6 + 40 -4, base6_b, 0);

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 30, 1, 0 );

changeAnime( spep_6 + 0, 1, 107 );

--setMoveKey( spep_6 -3 + 0, 1, 163.7, 43.9 , 0 );
setMoveKey( spep_6 -2 + 2, 1, 170.2, 43.4 , 0 );
setMoveKey( spep_6 -3 + 4, 1, 171.6, 56.8 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 166.9, 50.5 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 176.8, 55.8 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 188.4, 61.5 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 197.9, 65.4 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 209.5, 69.9 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 216.9, 68.8 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 227.3, 68.5 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 247, 74.8 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 271.7, 82.7 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 303.6, 93 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 349.2, 107.5 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 459.2, 140.6 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 459.2, 140.6 , 0 );

--setScaleKey( spep_6 -3 + 0, 1, 1.19, 1.2 );
setScaleKey( spep_6 -2 + 2, 1, 1.19, 1.2 );
setScaleKey( spep_6 -3 + 4, 1, 1.21, 1.23 );
setScaleKey( spep_6 -3 + 6, 1, 1.25, 1.26 );
setScaleKey( spep_6 -3 + 8, 1, 1.29, 1.31 );
setScaleKey( spep_6 -3 + 10, 1, 1.36, 1.37 );
setScaleKey( spep_6 -3 + 12, 1, 1.44, 1.46 );
setScaleKey( spep_6 -3 + 14, 1, 1.54, 1.56 );
setScaleKey( spep_6 -3 + 16, 1, 1.66, 1.69 );
setScaleKey( spep_6 -3 + 18, 1, 1.82, 1.84 );
setScaleKey( spep_6 -3 + 20, 1, 2.01, 2.03 );
setScaleKey( spep_6 -3 + 22, 1, 2.24, 2.27 );
setScaleKey( spep_6 -3 + 24, 1, 2.55, 2.58 );
setScaleKey( spep_6 -3 + 26, 1, 2.99, 3.02 );
setScaleKey( spep_6 -3 + 28, 1, 4.03, 4.06 );
setScaleKey( spep_6 -3 + 30, 1, 4.03, 4.06 );

--setRotateKey( spep_6 -3 + 0, 1, 11 );
setRotateKey( spep_6 -2 + 2, 1, 9.4 );
setRotateKey( spep_6 -3 + 4, 1, 7.9 );
setRotateKey( spep_6 -3 + 6, 1, 6.3 );
setRotateKey( spep_6 -3 + 8, 1, 4.7 );
setRotateKey( spep_6 -3 + 10, 1, 3.1 );
setRotateKey( spep_6 -3 + 12, 1, 1.6 );
setRotateKey( spep_6 -3 + 14, 1, 0 );
setRotateKey( spep_6 -3 + 16, 1, -1.6 );
setRotateKey( spep_6 -3 + 18, 1, -3.1 );
setRotateKey( spep_6 -3 + 20, 1, -4.7 );
setRotateKey( spep_6 -3 + 22, 1, -6.3 );
setRotateKey( spep_6 -3 + 24, 1, -7.9 );
setRotateKey( spep_6 -3 + 26, 1, -9.4 );
setRotateKey( spep_6 -3 + 28, 1, -11 );
setRotateKey( spep_6 -3 + 30, 1, -11 );


-- ** 音 ** --
--敵飛んでいく
SE028 = playSeVer2( spep_6 + 24, 1183, "",spep_6 + 110, 0, 6, -1);
SE029 = playSeVer2( spep_6 + 24, 1121, "",spep_6 + 110, 0, 6, -1);	setSeVolumeByWorkId( spep_6 + 24, SE029, 56 );
SE030 = playSeVer2( spep_6 + 24, 1258, "",spep_6 + 110, 20, 6, -1);
SE031 = playSeVer2( spep_6 + 30, 1027, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_6 + 30, SE031, 79 );


-- ** 次の準備 ** --
spep_7 = spep_6 + 40 -4;

-------------------------------------------------
-- 敵が吹っ飛ぶ
-------------------------------------------------
-- ** エフェクト等 ** --
base7 = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0); --敵が吹っ飛ぶ	ef_007	35	反転なし	GV
setEffMoveKey( spep_7 + 0, base7, 0, 0 , 0);
setEffMoveKey( spep_7 + 68 -4, base7, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7, 1.0, 1.0);
setEffScaleKey( spep_7 + 68 -4, base7, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7, 0);
setEffRotateKey( spep_7 + 68 -4, base7, 0);
setEffAlphaKey( spep_7 + 0, base7, 255);
setEffAlphaKey( spep_7 + 68 -5, base7, 255);
setEffAlphaKey( spep_7 + 68 -4, base7, 0);


-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -4 + 68, 1, 0 );

changeAnime( spep_7 + 0, 1, 5 );

--setMoveKey( spep_7 -3 + 0, 1, -29, -136.9 , 0 );
setMoveKey( spep_7 -2 + 2, 1, -36.4, -105.4 , 0 );
setMoveKey( spep_7 -3 + 4, 1, -20.8, -103.1 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -33.8, -82.8 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -15.9, -75.2 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -12.9, -41.8 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -10.4, -42.8 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -8.2, -44.7 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -11.2, -38.4 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -14.6, -32.9 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -12.6, -21.3 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -10.9, -10.2 , 0 );
setMoveKey( spep_7 -3 + 24, 1, -5.9, -6.9 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -0.9, -4 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -3.2, -1.5 , 0 );
setMoveKey( spep_7 -3 + 30, 1, -5.6, 0.6 , 0 );
setMoveKey( spep_7 -3 + 32, 1, -6.1, 4.1 , 0 );
setMoveKey( spep_7 -3 + 34, 1, -6.6, 7.4 , 0 );
setMoveKey( spep_7 -3 + 36, 1, -5.2, 8.2 , 0 );
setMoveKey( spep_7 -3 + 38, 1, -3.8, 8.9 , 0 );
setMoveKey( spep_7 -3 + 40, 1, -2.6, 9.3 , 0 );
setMoveKey( spep_7 -3 + 42, 1, -1.3, 9.5 , 0 );
setMoveKey( spep_7 -3 + 44, 1, -0.2, 9.6 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 0.9, 9.5 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 2, 9.2 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 3.1, 8.8 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 4, 8.3 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 5, 7.6 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 6, 6.8 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 6.8, 6 , 0 );
setMoveKey( spep_7 -3 + 60, 1, 7.6, 5 , 0 );
setMoveKey( spep_7 -3 + 62, 1, 8.5, 4 , 0 );
setMoveKey( spep_7 -3 + 64, 1, 9.3, 2.8 , 0 );
setMoveKey( spep_7 -3 + 66, 1, 10.1, 1.6 , 0 );
setMoveKey( spep_7 -4 + 68, 1, 10.8, 0.4 , 0 );

--setScaleKey( spep_7 -3 + 0, 1, 7.58, 7.58 );
setScaleKey( spep_7 -2 + 2, 1, 6.55, 6.53 );
setScaleKey( spep_7 -3 + 4, 1, 5.74, 5.73 );
setScaleKey( spep_7 -3 + 6, 1, 5.07, 5.06 );
setScaleKey( spep_7 -3 + 8, 1, 4.51, 4.5 );
setScaleKey( spep_7 -3 + 10, 1, 4.02, 4.02 );
setScaleKey( spep_7 -3 + 12, 1, 3.59, 3.59 );
setScaleKey( spep_7 -3 + 14, 1, 3.21, 3.22 );
setScaleKey( spep_7 -3 + 16, 1, 2.87, 2.88 );
setScaleKey( spep_7 -3 + 18, 1, 2.57, 2.58 );
setScaleKey( spep_7 -3 + 20, 1, 2.3, 2.31 );
setScaleKey( spep_7 -3 + 22, 1, 2.06, 2.07 );
setScaleKey( spep_7 -3 + 24, 1, 1.84, 1.85 );
setScaleKey( spep_7 -3 + 26, 1, 1.64, 1.66 );
setScaleKey( spep_7 -3 + 28, 1, 1.46, 1.48 );
setScaleKey( spep_7 -3 + 30, 1, 1.3, 1.32 );
setScaleKey( spep_7 -3 + 32, 1, 1.15, 1.17 );
setScaleKey( spep_7 -3 + 34, 1, 1.02, 1.04 );
setScaleKey( spep_7 -3 + 36, 1, 0.9, 0.92 );
setScaleKey( spep_7 -3 + 38, 1, 0.79, 0.81 );
setScaleKey( spep_7 -3 + 40, 1, 0.7, 0.72 );
setScaleKey( spep_7 -3 + 42, 1, 0.61, 0.63 );
setScaleKey( spep_7 -3 + 44, 1, 0.53, 0.55 );
setScaleKey( spep_7 -3 + 46, 1, 0.47, 0.49 );
setScaleKey( spep_7 -3 + 48, 1, 0.41, 0.43 );
setScaleKey( spep_7 -3 + 50, 1, 0.36, 0.37 );
setScaleKey( spep_7 -3 + 52, 1, 0.31, 0.32 );
setScaleKey( spep_7 -3 + 54, 1, 0.27, 0.28 );
setScaleKey( spep_7 -3 + 56, 1, 0.24, 0.25 );
setScaleKey( spep_7 -3 + 58, 1, 0.21, 0.22 );
setScaleKey( spep_7 -3 + 60, 1, 0.19, 0.19 );
setScaleKey( spep_7 -3 + 62, 1, 0.17, 0.17 );
setScaleKey( spep_7 -3 + 64, 1, 0.15, 0.16 );
setScaleKey( spep_7 -3 + 66, 1, 0.15, 0.15 );
setScaleKey( spep_7 -4 + 68, 1, 0.14, 0.14 );

setRotateKey( spep_7 + 0, 1, 59 );
setRotateKey( spep_7 -4 + 68, 1, 59 );


-- ** 次の準備 ** --
spep_c = spep_7 + 68 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え]]
-- ** 極限用 ** --
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
--playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_8 = spep_c + 96;

-------------------------------------------------
-- 気溜め
-------------------------------------------------
-- ** エフェクト等 ** --
base8 = entryEffect( spep_8 + 0, SP_12, 0x80, -1, 0, 0, 0); --気溜め	ef_008	40	味方用	GV
setEffMoveKey( spep_8 + 0, base8, 0, 0 , 0);
setEffMoveKey( spep_8 + 80 -4, base8, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base8, 1.0, 1.0);
setEffScaleKey( spep_8 + 80 -4, base8, 1.0, 1.0);
setEffRotateKey( spep_8 + 0, base8, 0);
setEffRotateKey( spep_8 + 80 -4, base8, 0);
setEffAlphaKey( spep_8 + 0, base8, 255);
setEffAlphaKey( spep_8 + 80 -5, base8, 255);
setEffAlphaKey( spep_8 + 80 -4, base8, 0);


-- ** 音 ** --
--二人オーラ
SE034 = playSeVer2( spep_8 + 0, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_8 + 0, SE034, 71 );

--気弾溜め
SE033 = playSeVer2( spep_8 + 16, 1210, "",spep_8 + 98, 12, 8, 0.6);		setStartTimeMs( SE033,  883 );
SE035 = playSeVer2( spep_8 + 16, 1296, "",spep_8 + 98, 0, 8, -1);
SE036 = playSeVer2( spep_8 + 16, 1209, "",spep_8 + 98, 0, 8, -1);	setSeVolumeByWorkId( spep_8 + 16, SE036, 54 );

--二人オーラ
SE037 = playSeVer2( spep_8 + 24, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_8 + 24, SE037, 71 );
SE038 = playSeVer2( spep_8 + 48, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_8 + 48, SE038, 71 );
SE039 = playSeVer2( spep_8 + 72, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_8 + 72, SE039, 71 );


-- ** 次の準備 ** --
spep_9 = spep_8 + 80 -4;

-------------------------------------------------
-- 気弾を放つ
-------------------------------------------------
-- ** エフェクト等 ** --
base9 = entryEffect( spep_9 + 0, SP_13, 0x80, -1, 0, 0, 0); --気弾を放つ	ef_009	45	味方用	GV
setEffMoveKey( spep_9 + 0, base9, 0, 0 , 0);
setEffMoveKey( spep_9 + 88 -4, base9, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base9, 1.0, 1.0);
setEffScaleKey( spep_9 + 88 -4, base9, 1.0, 1.0);
setEffRotateKey( spep_9 + 0, base9, 0);
setEffRotateKey( spep_9 + 88 -4, base9, 0);
setEffAlphaKey( spep_9 + 0, base9, 255);
setEffAlphaKey( spep_9 + 88 -5, base9, 255);
setEffAlphaKey( spep_9 + 88 -4, base9, 0);


-- ** 音 ** --
--気弾発射
SE040 = playSeVer2( spep_9 + 12, 1027, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_9 + 12, SE040, 76 );
SE041 = playSeVer2( spep_9 + 12, 1022, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_9 + 12, 1146, "",spep_9 + 164, 0, 12, -1);
SE043 = playSeVer2( spep_9 + 12, 1177, "",spep_9 + 164, 0, 12, -1);	setSeVolumeByWorkId( spep_9 + 12, SE043, 61 );


-- ** 次の準備 ** --
spep_10 = spep_9 + 88 -4;

-------------------------------------------------
-- 気弾が敵に向かう　
-------------------------------------------------
-- ** エフェクト等 ** --
base10_f = entryEffect( spep_10 + 0, SP_14, 0x100, -1, 0, 0, 0); --気弾が敵に向かう　手前	ef_010	30	反転なし	GV
setEffMoveKey( spep_10 + 0, base10_f, 0, 0 , 0);
setEffMoveKey( spep_10 + 60 -4, base10_f, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base10_f, 1.0, 1.0);
setEffScaleKey( spep_10 + 60 -4, base10_f, 1.0, 1.0);
setEffRotateKey( spep_10 + 0, base10_f, 0);
setEffRotateKey( spep_10 + 60 -4, base10_f, 0);
setEffAlphaKey( spep_10 + 0, base10_f, 255);
setEffAlphaKey( spep_10 + 60 -5, base10_f, 255);
setEffAlphaKey( spep_10 + 60 -4, base10_f, 0);

base10_b = entryEffect( spep_10 + 0, SP_15, 0x80, -1, 0, 0, 0); --気弾が敵に向かう　奥	ef_010_b	30	反転なし	GV
setEffMoveKey( spep_10 + 0, base10_b, 0, 0 , 0);
setEffMoveKey( spep_10 + 60 -4, base10_b, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base10_b, 1.0, 1.0);
setEffScaleKey( spep_10 + 60 -4, base10_b, 1.0, 1.0);
setEffRotateKey( spep_10 + 0, base10_b, 0);
setEffRotateKey( spep_10 + 60 -4, base10_b, 0);
setEffAlphaKey( spep_10 + 0, base10_b, 255);
setEffAlphaKey( spep_10 + 60 -5, base10_b, 255);
setEffAlphaKey( spep_10 + 60 -4, base10_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 -4 + 60, 1, 0 );

changeAnime( spep_10 + 0, 1, 105 );

--setMoveKey( spep_10 -3 + 0, 1, 1.7, -1.8 , 0 );
setMoveKey( spep_10 -2 + 2, 1, -2.2, -5.6 , 0 );
setMoveKey( spep_10 -3 + 4, 1, 5.5, -1.8 , 0 );
setMoveKey( spep_10 -3 + 6, 1, 1.6, 2.1 , 0 );
setMoveKey( spep_10 -3 + 8, 1, -0.3, 2.1 , 0 );
setMoveKey( spep_10 -3 + 10, 1, 5.4, -5.6 , 0 );
setMoveKey( spep_10 -3 + 12, 1, 9.2, -9.4 , 0 );
setMoveKey( spep_10 -3 + 14, 1, 16.9, -5.6 , 0 );
setMoveKey( spep_10 -3 + 16, 1, 13, 2.2 , 0 );
setMoveKey( spep_10 -3 + 18, 1, 12.9, -3.6 , 0 );
setMoveKey( spep_10 -3 + 20, 1, 12.9, -1.6 , 0 );
setMoveKey( spep_10 -3 + 22, 1, 14.7, -1.6 , 0 );
setMoveKey( spep_10 -3 + 24, 1, 16.6, 6.1 , 0 );
setMoveKey( spep_10 -3 + 26, 1, 14.5, 11.9 , 0 );
setMoveKey( spep_10 -3 + 28, 1, 20.3, 10.1 , 0 );
setMoveKey( spep_10 -3 + 30, 1, 16.3, 10.1 , 0 );
setMoveKey( spep_10 -3 + 32, 1, 16.2, 6.3 , 0 );
setMoveKey( spep_10 -3 + 34, 1, 19.9, 2.6 , 0 );
setMoveKey( spep_10 -3 + 36, 1, 12, 2.6 , 0 );
setMoveKey( spep_10 -3 + 38, 1, 8, 6.6 , 0 );
setMoveKey( spep_10 -3 + 40, 1, 15.5, -1 , 0 );
setMoveKey( spep_10 -3 + 42, 1, 7.6, -4.8 , 0 );
setMoveKey( spep_10 -3 + 44, 1, 15, -12.3 , 0 );
setMoveKey( spep_10 -3 + 46, 1, 7, -4.5 , 0 );
setMoveKey( spep_10 -3 + 48, 1, 6.7, -12 , 0 );
setMoveKey( spep_10 -3 + 50, 1, 6.3, -8 , 0 );
setMoveKey( spep_10 -3 + 52, 1, 5.9, -7.8 , 0 );
setMoveKey( spep_10 -3 + 54, 1, 1.5, -3.7 , 0 );
setMoveKey( spep_10 -3 + 56, 1, 1, 0.4 , 0 );
setMoveKey( spep_10 -3 + 58, 1, 4.3, -7.8 , 0 );
setMoveKey( spep_10 -4 + 60, 1, 4.3, -7.8 , 0 );

--setScaleKey( spep_10 -3 + 0, 1, 0.17, 0.17 );
setScaleKey( spep_10 -2 + 2, 1, 0.17, 0.17 );
setScaleKey( spep_10 -3 + 4, 1, 0.18, 0.18 );
setScaleKey( spep_10 -3 + 6, 1, 0.19, 0.19 );
setScaleKey( spep_10 -3 + 8, 1, 0.2, 0.2 );
setScaleKey( spep_10 -3 + 10, 1, 0.22, 0.22 );
setScaleKey( spep_10 -3 + 12, 1, 0.23, 0.23 );
setScaleKey( spep_10 -3 + 14, 1, 0.25, 0.25 );
setScaleKey( spep_10 -3 + 16, 1, 0.27, 0.27 );
setScaleKey( spep_10 -3 + 18, 1, 0.29, 0.29 );
setScaleKey( spep_10 -3 + 20, 1, 0.32, 0.32 );
setScaleKey( spep_10 -3 + 22, 1, 0.34, 0.34 );
setScaleKey( spep_10 -3 + 24, 1, 0.38, 0.38 );
setScaleKey( spep_10 -3 + 26, 1, 0.41, 0.41 );
setScaleKey( spep_10 -3 + 28, 1, 0.45, 0.45 );
setScaleKey( spep_10 -3 + 30, 1, 0.5, 0.5 );
setScaleKey( spep_10 -3 + 32, 1, 0.55, 0.55 );
setScaleKey( spep_10 -3 + 34, 1, 0.6, 0.6 );
setScaleKey( spep_10 -3 + 36, 1, 0.67, 0.67 );
setScaleKey( spep_10 -3 + 38, 1, 0.74, 0.74 );
setScaleKey( spep_10 -3 + 40, 1, 0.82, 0.82 );
setScaleKey( spep_10 -3 + 42, 1, 0.91, 0.91 );
setScaleKey( spep_10 -3 + 44, 1, 1.02, 1.02 );
setScaleKey( spep_10 -3 + 46, 1, 1.14, 1.14 );
setScaleKey( spep_10 -3 + 48, 1, 1.27, 1.27 );
setScaleKey( spep_10 -3 + 50, 1, 1.42, 1.42 );
setScaleKey( spep_10 -3 + 52, 1, 1.6, 1.6 );
setScaleKey( spep_10 -3 + 54, 1, 1.8, 1.8 );
setScaleKey( spep_10 -3 + 56, 1, 2.03, 2.03 );
setScaleKey( spep_10 -3 + 58, 1, 2.29, 2.29 );
setScaleKey( spep_10 -4 + 60, 1, 2.29, 2.29 );

setRotateKey( spep_10 + 0, 1, 0 );
setRotateKey( spep_10 -4 + 60, 1, 0 );


-- ** 音 ** --
--気弾飲み込まれる
SE044 = playSeVer2( spep_10 + 12, 1021, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_11 = spep_10 + 60 -4;

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base11 = entryEffect( spep_11 + 0, SP_16, 0x80, -1, 0, 0, 0); --フィニッシュ	ef_011	90	反転なし	GV
setEffMoveKey( spep_11 + 0, base11, 0, 0 , 0);
setEffMoveKey( spep_11 + 180 -4, base11, 0, 0 , 0);
setEffScaleKey( spep_11 + 0, base11, 1.0, 1.0);
setEffScaleKey( spep_11 + 180 -4, base11, 1.0, 1.0);
setEffRotateKey( spep_11 + 0, base11, 0);
setEffRotateKey( spep_11 + 180 -4, base11, 0);
setEffAlphaKey( spep_11 + 0, base11, 255);
setEffAlphaKey( spep_11 + 180 -4, base11, 255);


-- ** 音 ** --
--ラスト爆発
SE045 = playSeVer2( spep_11 + 6, 1023, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_11 + 16, 1159, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_11 + 16, SE046, 67 );
SE047 = playSeVer2( spep_11 + 24, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 24 -3); -- ダメージ表示フレーム
endPhase( spep_11 + 180 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 構える
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01r, 0x80, -1, 0, 0, 0); --構える	ef_001_r	55	敵用	GV
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 108 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, -1.0, 1.0);
setEffScaleKey( spep_1 + 108 -4, base_1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 108 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 108 -5, base_1, 255);
setEffAlphaKey( spep_1 + 108 -4, base_1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 0;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, -40 -40, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, -40 -40, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, -40 -40, 525 , 0);
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
--二人オーラ
SE001 = playSeVer2( spep_1 + 0, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 0, SE001, 79 );

--顔カットイン
SE002 = playSeVer2( spep_1 + 12, 1018, "", 0, 0, 0, -1);

--二人オーラ
SE003 = playSeVer2( spep_1 + 24, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 24, SE003, 79 );
SE004 = playSeVer2( spep_1 + 48, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 48, SE004, 79 );
SE005 = playSeVer2( spep_1 + 72, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_1 + 72, SE005, 79 );

--瞬間移動
SE006 = playSeVer2( spep_1 + 90, 1109, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_2 = spep_1 + 108 -4;

-------------------------------------------------
-- 格闘
-------------------------------------------------
-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); --格闘　手前	ef_002_r	50	敵用	GV
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 100 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, -1.0, 1.0);
setEffScaleKey( spep_2 + 100 -4, base2_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 100 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 100 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 100 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); --格闘　奥	ef_002_b	50	そのまま反転	GV
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 100 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 100 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 100 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 100 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 100 -4, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 -3 + 26, 1, 106 );

setMoveKey( spep_2 + 0, 1, 89.9, -1 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 89.9, -1 , 0 );
setMoveKey( spep_2 -3 + 25, 1, 80.4, -2.4 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 62.7, 11 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 74.9, 17.6 , 0 );

setScaleKey( spep_2 + 0, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 25, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 26, 1, 1.89, 1.89 );


setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 25, 1, 0 );
setRotateKey( spep_2 -3 + 26, 1, -55.7 );
setRotateKey( spep_2 -3 + 28, 1, -52.1 );


--瞬間移動
SE007 = playSeVer2( spep_2 + 0, 1109, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 24; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
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
setDisp( spep_2 -4 + 100, 1, 0 );

changeAnime( spep_2 -3 + 72, 1, 108 );

setMoveKey( spep_2 -3 + 30, 1, 12.6, -9.8 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 56.4, -12.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 14, 25.8 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 31.3, -12.3 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 31.7, 10.4 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 36.3, 15.8 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 29.4, 15.7 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 26.6, 7.6 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 29.1, 1.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 23.4, 4.9 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 22.2, 4.4 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 21.1, 3.9 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 19.9, 3.5 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 18.7, 3 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 17.5, 2.5 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 16.3, 2 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 15.1, 1.6 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 13.9, 1.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 12.8, 0.6 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 23.4, 3.6 , 0 );
setMoveKey( spep_2 -3 + 71, 1, 33.9, 6.6 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 59, -44.1 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 24.5, -26.1 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 59.9, -32.4 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 35.4, -59.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 97.4, -106.1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 111.4, -158.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 155.4, -210.5 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 187.4, -296.8 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 221.4, -347.4 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 255.4, -406.2 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 289.4, -456 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 323.3, -532.2 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 357.4, -582.8 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 391.3, -632.5 , 0 );
-- setMoveKey( spep_2 -5 + 100, 1, 391.3, -632.5 , 0 );

setScaleKey( spep_2 -3 + 71, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 72, 1, 2.25, 2.25 );
setScaleKey( spep_2 -5 + 100, 1, 2.25, 2.25 );

setRotateKey( spep_2 -3 + 30, 1, -48.5 );
setRotateKey( spep_2 -3 + 32, 1, -46.7 );
setRotateKey( spep_2 -3 + 34, 1, -44.8 );
setRotateKey( spep_2 -3 + 36, 1, -43 );
setRotateKey( spep_2 -3 + 38, 1, -41.2 );
setRotateKey( spep_2 -3 + 40, 1, -39.4 );
setRotateKey( spep_2 -3 + 42, 1, -37.6 );
setRotateKey( spep_2 -3 + 44, 1, -35.8 );
setRotateKey( spep_2 -3 + 46, 1, -33.9 );
setRotateKey( spep_2 -3 + 48, 1, -32.1 );
setRotateKey( spep_2 -3 + 50, 1, -30.3 );
setRotateKey( spep_2 -3 + 52, 1, -28.5 );
setRotateKey( spep_2 -3 + 54, 1, -26.7 );
setRotateKey( spep_2 -3 + 56, 1, -24.9 );
setRotateKey( spep_2 -3 + 58, 1, -23.1 );
setRotateKey( spep_2 -3 + 60, 1, -21.2 );
setRotateKey( spep_2 -3 + 62, 1, -19.4 );
setRotateKey( spep_2 -3 + 64, 1, -17.6 );
setRotateKey( spep_2 -3 + 66, 1, -15.8 );
setRotateKey( spep_2 -3 + 68, 1, -13.1 );
setRotateKey( spep_2 -3 + 71, 1, -10.4 );
setRotateKey( spep_2 -3 + 72, 1, 63.4 );
setRotateKey( spep_2 -5 + 100, 1, 63.4 );


-- ** 音 ** --
--ベジータパンチ
SE008 = playSeVer2( spep_2 + 22, 1189, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 28, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 28, 1110, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 28, SE010, 90 );
SE011 = playSeVer2( spep_2 + 28, 1000, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 28, SE011, 94 );

--瞬間移動
SE012 = playSeVer2( spep_2 + 42, 1109, "", 0, 0, 0, -1);

--悟空キック
SE013 = playSeVer2( spep_2 + 64, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 68, 1001, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 72, SE014, 81 );
SE015 = playSeVer2( spep_2 + 70, 1010, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 72, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE017 = playSeVer2( spep_2 + 78, 1183, "",spep_2 + 154, 0, 22, -1);	setSeVolumeByWorkId( spep_2 + 78, SE017, 75 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 100 -4;

-------------------------------------------------
-- ベジータＪｒが先回り
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); --ベジータＪｒが先回り　手前	ef_003	20	そのまま反転	GV
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 40 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 40 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 40 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 40 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 40 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0); --ベジータＪｒが先回り　奥	ef_003_b	20	そのまま反転	GV
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 40 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 40 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 40 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 40 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 40 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -4 + 40, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );

--setMoveKey( spep_3 -3 + 0, 1, -316.9, 421 , 0 );
setMoveKey( spep_3 -2 + 2, 1, -324.7, 424.5 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -332.5, 427.9 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -340.4, 431.3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -348.2, 434.8 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -356, 438.2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -363.9, 441.6 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -371.7, 445.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -379.5, 448.5 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -387.3, 452 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -338.6, 404 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -289.8, 356 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -241.1, 308.1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -192.3, 260.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -143.5, 212.2 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -94.8, 164.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -46, 116.3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 2.8, 68.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 51.5, 20.4 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 100.3, -27.6 , 0 );
setMoveKey( spep_3 -5 + 40, 1, 100.3, -27.6 , 0 );

setScaleKey( spep_3 + 0, 1, 2.57, 2.57 );
setScaleKey( spep_3 -5 + 40, 1, 2.57, 2.57 );

setRotateKey( spep_3 + 0, 1, 80.9 );
setRotateKey( spep_3 -5 + 40, 1, 80.9 );


-- ** 音 ** --
--瞬間移動
SE018 = playSeVer2( spep_3 + 14, 1109, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 40 -4;

-------------------------------------------------
-- ベジータＪｒ　ハイキック　
-------------------------------------------------
-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_06r, 0x100, -1, 0, 0, 0); --ベジータＪｒ　ハイキック　手前	ef_004_ｒ	35	敵用	GV
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 68 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, -1.0, 1.0);
setEffScaleKey( spep_4 + 68 -4, base4_f, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 68 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 68 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 68 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0); --ベジータＪｒ　ハイキック　奥	ef_004_b	35	そのまま反転	GV
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 68 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 68 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 68 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 68 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 68 -4, base4_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -4 + 68, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4 -3 + 40, 1, 106 );

--setMoveKey( spep_4 -3 + 0, 1, -332.3, 1537.6 , 0 );
setMoveKey( spep_4 -2 + 2, 1, -189.6, 937.4 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -47, 337.2 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -4.7, -156.6 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 22.7, -111.5 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 33.2, -66.4 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 82.8, -7.9 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 70.6, -11.2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 87.4, -4.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 49.7, -17.8 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 73.3, -14.3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 69.6, -17.6 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 69.4, -14.2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 68.4, -16 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 67.5, -18 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 62.3, -12.2 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 57.1, -6.4 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 64.8, -12 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 72.6, -17.6 , 0 );
setMoveKey( spep_4 -3 + 39, 1, 63.6, -15.2 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -9.6, 35.8 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 0.7, 37.4 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 10.2, 38.9 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 4.5, 23.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -1.8, 7.3 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -0.1, 19.9 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 1.7, 32.4 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 11.4, 23.9 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 21.1, 15.3 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 22.4, 15.2 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 23.8, 15.1 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 25.2, 14.9 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 26.5, 14.8 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 27.8, 14.7 , 0 );
setMoveKey( spep_4 -4 + 68, 1, 29.1, 14.5 , 0 );

setScaleKey( spep_4 + 0, 1, 13.27, 13.27 );
setScaleKey( spep_4 -3 + 6, 1, 13.27, 13.27 );
setScaleKey( spep_4 -3 + 8, 1, 10.86, 10.86 );
setScaleKey( spep_4 -3 + 10, 1, 8.46, 8.46 );
setScaleKey( spep_4 -3 + 12, 1, 6.06, 6.06 );
setScaleKey( spep_4 -3 + 14, 1, 6.04, 6.04 );
setScaleKey( spep_4 -3 + 16, 1, 6.01, 6.01 );
setScaleKey( spep_4 -3 + 18, 1, 5.98, 5.98 );
setScaleKey( spep_4 -3 + 20, 1, 5.95, 5.95 );
setScaleKey( spep_4 -3 + 22, 1, 5.92, 5.92 );
setScaleKey( spep_4 -3 + 24, 1, 5.89, 5.89 );
setScaleKey( spep_4 -3 + 26, 1, 5.87, 5.87 );
setScaleKey( spep_4 -3 + 28, 1, 5.84, 5.84 );
setScaleKey( spep_4 -3 + 30, 1, 5.81, 5.81 );
setScaleKey( spep_4 -3 + 32, 1, 5.78, 5.78 );
setScaleKey( spep_4 -3 + 34, 1, 5.75, 5.75 );
setScaleKey( spep_4 -3 + 36, 1, 5.72, 5.72 );
setScaleKey( spep_4 -3 + 39, 1, 5.7, 5.7 );
setScaleKey( spep_4 -3 + 40, 1, 4.9, 4.9 );
setScaleKey( spep_4 -3 + 42, 1, 4.32, 4.32 );
setScaleKey( spep_4 -3 + 44, 1, 3.75, 3.75 );
setScaleKey( spep_4 -3 + 46, 1, 3.19, 3.19 );
setScaleKey( spep_4 -3 + 48, 1, 2.64, 2.64 );
setScaleKey( spep_4 -3 + 50, 1, 2.59, 2.59 );
setScaleKey( spep_4 -3 + 52, 1, 2.55, 2.55 );
setScaleKey( spep_4 -3 + 54, 1, 2.51, 2.51 );
setScaleKey( spep_4 -3 + 56, 1, 2.46, 2.46 );
setScaleKey( spep_4 -3 + 58, 1, 2.42, 2.42 );
setScaleKey( spep_4 -3 + 60, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 62, 1, 2.34, 2.34 );
setScaleKey( spep_4 -3 + 64, 1, 2.3, 2.3 );
setScaleKey( spep_4 -3 + 66, 1, 2.26, 2.26 );
setScaleKey( spep_4 -4 + 68, 1, 2.22, 2.22 );

--setRotateKey( spep_4 -3 + 0, 1, 46.7 );
setRotateKey( spep_4 -2 + 2, 1, 46.6 );
setRotateKey( spep_4 -3 + 4, 1, 46.5 );
setRotateKey( spep_4 -3 + 6, 1, 46.4 );
setRotateKey( spep_4 -3 + 39, 1, 46.4 );
setRotateKey( spep_4 -3 + 40, 1, -2 );
setRotateKey( spep_4 -3 + 42, 1, -1.2 );
setRotateKey( spep_4 -3 + 44, 1, -0.3 );
setRotateKey( spep_4 -3 + 46, 1, 0.5 );
setRotateKey( spep_4 -3 + 48, 1, 1.3 );
setRotateKey( spep_4 -3 + 50, 1, 2.1 );
setRotateKey( spep_4 -3 + 52, 1, 3 );
setRotateKey( spep_4 -3 + 54, 1, 3.8 );
setRotateKey( spep_4 -3 + 56, 1, 4.6 );
setRotateKey( spep_4 -3 + 58, 1, 5.4 );
setRotateKey( spep_4 -3 + 60, 1, 6.3 );
setRotateKey( spep_4 -3 + 62, 1, 7.1 );
setRotateKey( spep_4 -3 + 64, 1, 7.9 );
setRotateKey( spep_4 -3 + 66, 1, 8.7 );
setRotateKey( spep_4 -4 + 68, 1, 9.6 );


-- ** 音 ** --
--ベジータ蹴り上げ
SE019 = playSeVer2( spep_4 + 2, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 12, 1187, "",spep_4 + 78, 0, 46, -1);
SE021 = playSeVer2( spep_4 + 12, 1153, "", 0, 0, 0, -1);

--瞬間移動
SE022 = playSeVer2( spep_4 + 40, 1109, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_5 = spep_4 + 68 -4;

-------------------------------------------------
-- 悟空Jr　振りかぶる～ヒットエフェクト
-------------------------------------------------
-- ** エフェクト等 ** --
base5 = entryEffect( spep_5 + 0, SP_08r, 0x80, -1, 0, 0, 0); --悟空Jr　振りかぶる～ヒットエフェクト	ef_005_r	20	敵用	GV
setEffMoveKey( spep_5 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_5 + 40 -4, base5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5, -1.0, 1.0);
setEffScaleKey( spep_5 + 40 -4, base5, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5, 0);
setEffRotateKey( spep_5 + 40 -4, base5, 0);
setEffAlphaKey( spep_5 + 0, base5, 255);
setEffAlphaKey( spep_5 + 40 -5, base5, 255);
setEffAlphaKey( spep_5 + 40 -4, base5, 0);


-- ** 音 ** --
--振りかぶり
SE023 = playSeVer2( spep_5 + 0, 1116, "",spep_5 + 50, 0, 28, -1);
SE024 = playSeVer2( spep_5 + 0, 1003, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_5 + 0, 1278, "",spep_5 + 40, 0, 16, -1);	setSeVolumeByWorkId( spep_5 + 0, SE025, 64 );

--悟空パンチ
SE026 = playSeVer2( spep_5 + 24, 1189, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_5 + 30, 1120, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_6 = spep_5 + 40 -4;

-------------------------------------------------
-- 悟空Jrのパンチがヒットする　手前	ef_006	20	味方用	GV
-------------------------------------------------
-- ** エフェクト等 ** --
base6_f = entryEffect( spep_6 + 0, SP_09r, 0x100, -1, 0, 0, 0); --悟空Jrのパンチがヒットする　手前	ef_006_r	20	敵用	GV
setEffMoveKey( spep_6 + 0, base6_f, 0, 0 , 0);
setEffMoveKey( spep_6 + 40 -4, base6_f, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6_f, -1.0, 1.0);
setEffScaleKey( spep_6 + 40 -4, base6_f, -1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6_f, 0);
setEffRotateKey( spep_6 + 40 -4, base6_f, 0);
setEffAlphaKey( spep_6 + 0, base6_f, 255);
setEffAlphaKey( spep_6 + 40 -5, base6_f, 255);
setEffAlphaKey( spep_6 + 40 -4, base6_f, 0);

base6_b = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0); --悟空Jrのパンチがヒットする　奥	ef_006_b	20	そのまま反転	GV
setEffMoveKey( spep_6 + 0, base6_b, 0, 0 , 0);
setEffMoveKey( spep_6 + 40 -4, base6_b, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6_b, 1.0, 1.0);
setEffScaleKey( spep_6 + 40 -4, base6_b, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6_b, 0);
setEffRotateKey( spep_6 + 40 -4, base6_b, 0);
setEffAlphaKey( spep_6 + 0, base6_b, 255);
setEffAlphaKey( spep_6 + 40 -5, base6_b, 255);
setEffAlphaKey( spep_6 + 40 -4, base6_b, 0);

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 30, 1, 0 );

changeAnime( spep_6 + 0, 1, 107 );

--setMoveKey( spep_6 -3 + 0, 1, 163.7, 43.9 , 0 );
setMoveKey( spep_6 -2 + 2, 1, 170.2, 43.4 , 0 );
setMoveKey( spep_6 -3 + 4, 1, 171.6, 56.8 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 166.9, 50.5 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 176.8, 55.8 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 188.4, 61.5 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 197.9, 65.4 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 209.5, 69.9 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 216.9, 68.8 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 227.3, 68.5 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 247, 74.8 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 271.7, 82.7 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 303.6, 93 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 349.2, 107.5 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 459.2, 140.6 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 459.2, 140.6 , 0 );

--setScaleKey( spep_6 -3 + 0, 1, 1.19, 1.2 );
setScaleKey( spep_6 -2 + 2, 1, 1.19, 1.2 );
setScaleKey( spep_6 -3 + 4, 1, 1.21, 1.23 );
setScaleKey( spep_6 -3 + 6, 1, 1.25, 1.26 );
setScaleKey( spep_6 -3 + 8, 1, 1.29, 1.31 );
setScaleKey( spep_6 -3 + 10, 1, 1.36, 1.37 );
setScaleKey( spep_6 -3 + 12, 1, 1.44, 1.46 );
setScaleKey( spep_6 -3 + 14, 1, 1.54, 1.56 );
setScaleKey( spep_6 -3 + 16, 1, 1.66, 1.69 );
setScaleKey( spep_6 -3 + 18, 1, 1.82, 1.84 );
setScaleKey( spep_6 -3 + 20, 1, 2.01, 2.03 );
setScaleKey( spep_6 -3 + 22, 1, 2.24, 2.27 );
setScaleKey( spep_6 -3 + 24, 1, 2.55, 2.58 );
setScaleKey( spep_6 -3 + 26, 1, 2.99, 3.02 );
setScaleKey( spep_6 -3 + 28, 1, 4.03, 4.06 );
setScaleKey( spep_6 -3 + 30, 1, 4.03, 4.06 );

--setRotateKey( spep_6 -3 + 0, 1, 11 );
setRotateKey( spep_6 -2 + 2, 1, 9.4 );
setRotateKey( spep_6 -3 + 4, 1, 7.9 );
setRotateKey( spep_6 -3 + 6, 1, 6.3 );
setRotateKey( spep_6 -3 + 8, 1, 4.7 );
setRotateKey( spep_6 -3 + 10, 1, 3.1 );
setRotateKey( spep_6 -3 + 12, 1, 1.6 );
setRotateKey( spep_6 -3 + 14, 1, 0 );
setRotateKey( spep_6 -3 + 16, 1, -1.6 );
setRotateKey( spep_6 -3 + 18, 1, -3.1 );
setRotateKey( spep_6 -3 + 20, 1, -4.7 );
setRotateKey( spep_6 -3 + 22, 1, -6.3 );
setRotateKey( spep_6 -3 + 24, 1, -7.9 );
setRotateKey( spep_6 -3 + 26, 1, -9.4 );
setRotateKey( spep_6 -3 + 28, 1, -11 );
setRotateKey( spep_6 -3 + 30, 1, -11 );


-- ** 音 ** --
--敵飛んでいく
SE028 = playSeVer2( spep_6 + 24, 1183, "",spep_6 + 110, 0, 6, -1);
SE029 = playSeVer2( spep_6 + 24, 1121, "",spep_6 + 110, 0, 6, -1);	setSeVolumeByWorkId( spep_6 + 24, SE029, 56 );
SE030 = playSeVer2( spep_6 + 24, 1258, "",spep_6 + 110, 20, 6, -1);
SE031 = playSeVer2( spep_6 + 30, 1027, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_6 + 30, SE031, 79 );


-- ** 次の準備 ** --
spep_7 = spep_6 + 40 -4;

-------------------------------------------------
-- 敵が吹っ飛ぶ
-------------------------------------------------
-- ** エフェクト等 ** --
base7 = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0); --敵が吹っ飛ぶ	ef_007	35	反転なし	GV
setEffMoveKey( spep_7 + 0, base7, 0, 0 , 0);
setEffMoveKey( spep_7 + 68 -4, base7, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7, 1.0, 1.0);
setEffScaleKey( spep_7 + 68 -4, base7, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7, 0);
setEffRotateKey( spep_7 + 68 -4, base7, 0);
setEffAlphaKey( spep_7 + 0, base7, 255);
setEffAlphaKey( spep_7 + 68 -5, base7, 255);
setEffAlphaKey( spep_7 + 68 -4, base7, 0);


-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -4 + 68, 1, 0 );

changeAnime( spep_7 + 0, 1, 5 );

--setMoveKey( spep_7 -3 + 0, 1, -29, -136.9 , 0 );
setMoveKey( spep_7 -2 + 2, 1, -36.4, -105.4 , 0 );
setMoveKey( spep_7 -3 + 4, 1, -20.8, -103.1 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -33.8, -82.8 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -15.9, -75.2 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -12.9, -41.8 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -10.4, -42.8 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -8.2, -44.7 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -11.2, -38.4 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -14.6, -32.9 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -12.6, -21.3 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -10.9, -10.2 , 0 );
setMoveKey( spep_7 -3 + 24, 1, -5.9, -6.9 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -0.9, -4 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -3.2, -1.5 , 0 );
setMoveKey( spep_7 -3 + 30, 1, -5.6, 0.6 , 0 );
setMoveKey( spep_7 -3 + 32, 1, -6.1, 4.1 , 0 );
setMoveKey( spep_7 -3 + 34, 1, -6.6, 7.4 , 0 );
setMoveKey( spep_7 -3 + 36, 1, -5.2, 8.2 , 0 );
setMoveKey( spep_7 -3 + 38, 1, -3.8, 8.9 , 0 );
setMoveKey( spep_7 -3 + 40, 1, -2.6, 9.3 , 0 );
setMoveKey( spep_7 -3 + 42, 1, -1.3, 9.5 , 0 );
setMoveKey( spep_7 -3 + 44, 1, -0.2, 9.6 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 0.9, 9.5 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 2, 9.2 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 3.1, 8.8 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 4, 8.3 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 5, 7.6 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 6, 6.8 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 6.8, 6 , 0 );
setMoveKey( spep_7 -3 + 60, 1, 7.6, 5 , 0 );
setMoveKey( spep_7 -3 + 62, 1, 8.5, 4 , 0 );
setMoveKey( spep_7 -3 + 64, 1, 9.3, 2.8 , 0 );
setMoveKey( spep_7 -3 + 66, 1, 10.1, 1.6 , 0 );
setMoveKey( spep_7 -4 + 68, 1, 10.8, 0.4 , 0 );

--setScaleKey( spep_7 -3 + 0, 1, 7.58, 7.58 );
setScaleKey( spep_7 -2 + 2, 1, 6.55, 6.53 );
setScaleKey( spep_7 -3 + 4, 1, 5.74, 5.73 );
setScaleKey( spep_7 -3 + 6, 1, 5.07, 5.06 );
setScaleKey( spep_7 -3 + 8, 1, 4.51, 4.5 );
setScaleKey( spep_7 -3 + 10, 1, 4.02, 4.02 );
setScaleKey( spep_7 -3 + 12, 1, 3.59, 3.59 );
setScaleKey( spep_7 -3 + 14, 1, 3.21, 3.22 );
setScaleKey( spep_7 -3 + 16, 1, 2.87, 2.88 );
setScaleKey( spep_7 -3 + 18, 1, 2.57, 2.58 );
setScaleKey( spep_7 -3 + 20, 1, 2.3, 2.31 );
setScaleKey( spep_7 -3 + 22, 1, 2.06, 2.07 );
setScaleKey( spep_7 -3 + 24, 1, 1.84, 1.85 );
setScaleKey( spep_7 -3 + 26, 1, 1.64, 1.66 );
setScaleKey( spep_7 -3 + 28, 1, 1.46, 1.48 );
setScaleKey( spep_7 -3 + 30, 1, 1.3, 1.32 );
setScaleKey( spep_7 -3 + 32, 1, 1.15, 1.17 );
setScaleKey( spep_7 -3 + 34, 1, 1.02, 1.04 );
setScaleKey( spep_7 -3 + 36, 1, 0.9, 0.92 );
setScaleKey( spep_7 -3 + 38, 1, 0.79, 0.81 );
setScaleKey( spep_7 -3 + 40, 1, 0.7, 0.72 );
setScaleKey( spep_7 -3 + 42, 1, 0.61, 0.63 );
setScaleKey( spep_7 -3 + 44, 1, 0.53, 0.55 );
setScaleKey( spep_7 -3 + 46, 1, 0.47, 0.49 );
setScaleKey( spep_7 -3 + 48, 1, 0.41, 0.43 );
setScaleKey( spep_7 -3 + 50, 1, 0.36, 0.37 );
setScaleKey( spep_7 -3 + 52, 1, 0.31, 0.32 );
setScaleKey( spep_7 -3 + 54, 1, 0.27, 0.28 );
setScaleKey( spep_7 -3 + 56, 1, 0.24, 0.25 );
setScaleKey( spep_7 -3 + 58, 1, 0.21, 0.22 );
setScaleKey( spep_7 -3 + 60, 1, 0.19, 0.19 );
setScaleKey( spep_7 -3 + 62, 1, 0.17, 0.17 );
setScaleKey( spep_7 -3 + 64, 1, 0.15, 0.16 );
setScaleKey( spep_7 -3 + 66, 1, 0.15, 0.15 );
setScaleKey( spep_7 -4 + 68, 1, 0.14, 0.14 );

setRotateKey( spep_7 + 0, 1, 59 );
setRotateKey( spep_7 -4 + 68, 1, 59 );


-- ** 次の準備 ** --
spep_c = spep_7 + 68 -4;

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
spep_8 = spep_c + 96;

-------------------------------------------------
-- 気溜め
-------------------------------------------------
-- ** エフェクト等 ** --
base8 = entryEffect( spep_8 + 0, SP_12r, 0x80, -1, 0, 0, 0); --気溜め	ef_008_r	40	敵用	GV
setEffMoveKey( spep_8 + 0, base8, 0, 0 , 0);
setEffMoveKey( spep_8 + 80 -4, base8, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base8, -1.0, 1.0);
setEffScaleKey( spep_8 + 80 -4, base8, -1.0, 1.0);
setEffRotateKey( spep_8 + 0, base8, 0);
setEffRotateKey( spep_8 + 80 -4, base8, 0);
setEffAlphaKey( spep_8 + 0, base8, 255);
setEffAlphaKey( spep_8 + 80 -5, base8, 255);
setEffAlphaKey( spep_8 + 80 -4, base8, 0);


-- ** 音 ** --
--二人オーラ
SE034 = playSeVer2( spep_8 + 0, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_8 + 0, SE034, 71 );

--気弾溜め
SE033 = playSeVer2( spep_8 + 16, 1210, "",spep_8 + 98, 12, 8, 0.6);		setStartTimeMs( SE033,  883 );
SE035 = playSeVer2( spep_8 + 16, 1296, "",spep_8 + 98, 0, 8, -1);
SE036 = playSeVer2( spep_8 + 16, 1209, "",spep_8 + 98, 0, 8, -1);	setSeVolumeByWorkId( spep_8 + 16, SE036, 54 );

--二人オーラ
SE037 = playSeVer2( spep_8 + 24, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_8 + 24, SE037, 71 );
SE038 = playSeVer2( spep_8 + 48, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_8 + 48, SE038, 71 );
SE039 = playSeVer2( spep_8 + 72, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_8 + 72, SE039, 71 );


-- ** 次の準備 ** --
spep_9 = spep_8 + 80 -4;

-------------------------------------------------
-- 気弾を放つ
-------------------------------------------------
-- ** エフェクト等 ** --
base9 = entryEffect( spep_9 + 0, SP_13r, 0x80, -1, 0, 0, 0); --気弾を放つ	ef_009_r	45	敵用	GV
setEffMoveKey( spep_9 + 0, base9, 0, 0 , 0);
setEffMoveKey( spep_9 + 88 -4, base9, 0, 0 , 0);
setEffScaleKey( spep_9 + 0, base9, -1.0, 1.0);
setEffScaleKey( spep_9 + 88 -4, base9, -1.0, 1.0);
setEffRotateKey( spep_9 + 0, base9, 0);
setEffRotateKey( spep_9 + 88 -4, base9, 0);
setEffAlphaKey( spep_9 + 0, base9, 255);
setEffAlphaKey( spep_9 + 88 -5, base9, 255);
setEffAlphaKey( spep_9 + 88 -4, base9, 0);


-- ** 音 ** --
--気弾発射
SE040 = playSeVer2( spep_9 + 12, 1027, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_9 + 12, SE040, 76 );
SE041 = playSeVer2( spep_9 + 12, 1022, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_9 + 12, 1146, "",spep_9 + 164, 0, 12, -1);
SE043 = playSeVer2( spep_9 + 12, 1177, "",spep_9 + 164, 0, 12, -1);	setSeVolumeByWorkId( spep_9 + 12, SE043, 61 );


-- ** 次の準備 ** --
spep_10 = spep_9 + 88 -4;

-------------------------------------------------
-- 気弾が敵に向かう　
-------------------------------------------------
-- ** エフェクト等 ** --
base10_f = entryEffect( spep_10 + 0, SP_14r, 0x100, -1, 0, 0, 0); --気弾が敵に向かう　手前	ef_010	30	反転なし	GV
setEffMoveKey( spep_10 + 0, base10_f, 0, 0 , 0);
setEffMoveKey( spep_10 + 60 -4, base10_f, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base10_f, -1.0, 1.0);
setEffScaleKey( spep_10 + 60 -4, base10_f, -1.0, 1.0);
setEffRotateKey( spep_10 + 0, base10_f, 0);
setEffRotateKey( spep_10 + 60 -4, base10_f, 0);
setEffAlphaKey( spep_10 + 0, base10_f, 255);
setEffAlphaKey( spep_10 + 60 -5, base10_f, 255);
setEffAlphaKey( spep_10 + 60 -4, base10_f, 0);

base10_b = entryEffect( spep_10 + 0, SP_15, 0x80, -1, 0, 0, 0); --気弾が敵に向かう　奥	ef_010_b	30	反転なし	GV
setEffMoveKey( spep_10 + 0, base10_b, 0, 0 , 0);
setEffMoveKey( spep_10 + 60 -4, base10_b, 0, 0 , 0);
setEffScaleKey( spep_10 + 0, base10_b, 1.0, 1.0);
setEffScaleKey( spep_10 + 60 -4, base10_b, 1.0, 1.0);
setEffRotateKey( spep_10 + 0, base10_b, 0);
setEffRotateKey( spep_10 + 60 -4, base10_b, 0);
setEffAlphaKey( spep_10 + 0, base10_b, 255);
setEffAlphaKey( spep_10 + 60 -5, base10_b, 255);
setEffAlphaKey( spep_10 + 60 -4, base10_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 -4 + 60, 1, 0 );

changeAnime( spep_10 + 0, 1, 105 );

--setMoveKey( spep_10 -3 + 0, 1, 1.7, -1.8 , 0 );
setMoveKey( spep_10 -2 + 2, 1, -2.2, -5.6 , 0 );
setMoveKey( spep_10 -3 + 4, 1, 5.5, -1.8 , 0 );
setMoveKey( spep_10 -3 + 6, 1, 1.6, 2.1 , 0 );
setMoveKey( spep_10 -3 + 8, 1, -0.3, 2.1 , 0 );
setMoveKey( spep_10 -3 + 10, 1, 5.4, -5.6 , 0 );
setMoveKey( spep_10 -3 + 12, 1, 9.2, -9.4 , 0 );
setMoveKey( spep_10 -3 + 14, 1, 16.9, -5.6 , 0 );
setMoveKey( spep_10 -3 + 16, 1, 13, 2.2 , 0 );
setMoveKey( spep_10 -3 + 18, 1, 12.9, -3.6 , 0 );
setMoveKey( spep_10 -3 + 20, 1, 12.9, -1.6 , 0 );
setMoveKey( spep_10 -3 + 22, 1, 14.7, -1.6 , 0 );
setMoveKey( spep_10 -3 + 24, 1, 16.6, 6.1 , 0 );
setMoveKey( spep_10 -3 + 26, 1, 14.5, 11.9 , 0 );
setMoveKey( spep_10 -3 + 28, 1, 20.3, 10.1 , 0 );
setMoveKey( spep_10 -3 + 30, 1, 16.3, 10.1 , 0 );
setMoveKey( spep_10 -3 + 32, 1, 16.2, 6.3 , 0 );
setMoveKey( spep_10 -3 + 34, 1, 19.9, 2.6 , 0 );
setMoveKey( spep_10 -3 + 36, 1, 12, 2.6 , 0 );
setMoveKey( spep_10 -3 + 38, 1, 8, 6.6 , 0 );
setMoveKey( spep_10 -3 + 40, 1, 15.5, -1 , 0 );
setMoveKey( spep_10 -3 + 42, 1, 7.6, -4.8 , 0 );
setMoveKey( spep_10 -3 + 44, 1, 15, -12.3 , 0 );
setMoveKey( spep_10 -3 + 46, 1, 7, -4.5 , 0 );
setMoveKey( spep_10 -3 + 48, 1, 6.7, -12 , 0 );
setMoveKey( spep_10 -3 + 50, 1, 6.3, -8 , 0 );
setMoveKey( spep_10 -3 + 52, 1, 5.9, -7.8 , 0 );
setMoveKey( spep_10 -3 + 54, 1, 1.5, -3.7 , 0 );
setMoveKey( spep_10 -3 + 56, 1, 1, 0.4 , 0 );
setMoveKey( spep_10 -3 + 58, 1, 4.3, -7.8 , 0 );
setMoveKey( spep_10 -4 + 60, 1, 4.3, -7.8 , 0 );

--setScaleKey( spep_10 -3 + 0, 1, 0.17, 0.17 );
setScaleKey( spep_10 -2 + 2, 1, 0.17, 0.17 );
setScaleKey( spep_10 -3 + 4, 1, 0.18, 0.18 );
setScaleKey( spep_10 -3 + 6, 1, 0.19, 0.19 );
setScaleKey( spep_10 -3 + 8, 1, 0.2, 0.2 );
setScaleKey( spep_10 -3 + 10, 1, 0.22, 0.22 );
setScaleKey( spep_10 -3 + 12, 1, 0.23, 0.23 );
setScaleKey( spep_10 -3 + 14, 1, 0.25, 0.25 );
setScaleKey( spep_10 -3 + 16, 1, 0.27, 0.27 );
setScaleKey( spep_10 -3 + 18, 1, 0.29, 0.29 );
setScaleKey( spep_10 -3 + 20, 1, 0.32, 0.32 );
setScaleKey( spep_10 -3 + 22, 1, 0.34, 0.34 );
setScaleKey( spep_10 -3 + 24, 1, 0.38, 0.38 );
setScaleKey( spep_10 -3 + 26, 1, 0.41, 0.41 );
setScaleKey( spep_10 -3 + 28, 1, 0.45, 0.45 );
setScaleKey( spep_10 -3 + 30, 1, 0.5, 0.5 );
setScaleKey( spep_10 -3 + 32, 1, 0.55, 0.55 );
setScaleKey( spep_10 -3 + 34, 1, 0.6, 0.6 );
setScaleKey( spep_10 -3 + 36, 1, 0.67, 0.67 );
setScaleKey( spep_10 -3 + 38, 1, 0.74, 0.74 );
setScaleKey( spep_10 -3 + 40, 1, 0.82, 0.82 );
setScaleKey( spep_10 -3 + 42, 1, 0.91, 0.91 );
setScaleKey( spep_10 -3 + 44, 1, 1.02, 1.02 );
setScaleKey( spep_10 -3 + 46, 1, 1.14, 1.14 );
setScaleKey( spep_10 -3 + 48, 1, 1.27, 1.27 );
setScaleKey( spep_10 -3 + 50, 1, 1.42, 1.42 );
setScaleKey( spep_10 -3 + 52, 1, 1.6, 1.6 );
setScaleKey( spep_10 -3 + 54, 1, 1.8, 1.8 );
setScaleKey( spep_10 -3 + 56, 1, 2.03, 2.03 );
setScaleKey( spep_10 -3 + 58, 1, 2.29, 2.29 );
setScaleKey( spep_10 -4 + 60, 1, 2.29, 2.29 );

setRotateKey( spep_10 + 0, 1, 0 );
setRotateKey( spep_10 -4 + 60, 1, 0 );


-- ** 音 ** --
--気弾飲み込まれる
SE044 = playSeVer2( spep_10 + 12, 1021, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_11 = spep_10 + 60 -4;

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base11 = entryEffect( spep_11 + 0, SP_16, 0x80, -1, 0, 0, 0); --フィニッシュ	ef_011	90	反転なし	GV
setEffMoveKey( spep_11 + 0, base11, 0, 0 , 0);
setEffMoveKey( spep_11 + 180 -4, base11, 0, 0 , 0);
setEffScaleKey( spep_11 + 0, base11, 1.0, 1.0);
setEffScaleKey( spep_11 + 180 -4, base11, 1.0, 1.0);
setEffRotateKey( spep_11 + 0, base11, 0);
setEffRotateKey( spep_11 + 180 -4, base11, 0);
setEffAlphaKey( spep_11 + 0, base11, 255);
setEffAlphaKey( spep_11 + 180 -4, base11, 255);


-- ** 音 ** --
--ラスト爆発
SE045 = playSeVer2( spep_11 + 6, 1023, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_11 + 16, 1159, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_11 + 16, SE046, 67 );
SE047 = playSeVer2( spep_11 + 24, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 24 -3); -- ダメージ表示フレーム
endPhase( spep_11 + 180 -8); -- 終了フレーム

end
