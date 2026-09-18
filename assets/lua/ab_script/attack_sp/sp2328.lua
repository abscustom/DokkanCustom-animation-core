--1023950:ベジータ&ブルマ_ファイナルブリッドアタック
--sp_effect_b1_00180

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
SP_01 = 159018;	--敵に接近	ef_001	30	（ef_001とef_001_b同時再生）
SP_02 = 159019;	--敵に接近	ef_001_b	30	（ef_001とef_001_b同時再生）
SP_03 = 159022;	--格闘（連撃）	ef_002	75	（ef_002とef_002_b同時再生）
SP_04 = 159023;	--格闘（連撃）	ef_002_b	75	（ef_002とef_002_b同時再生）
SP_05 = 159026;	--かかと落としフェイント	ef_003	102	（ef_003とef_003_b同時再生）
SP_06 = 159027;	--かかと落としフェイント	ef_003_b	102	（ef_003とef_003_b同時再生）
SP_07 = 159030;	--気弾を構える	ef_004	114
SP_08 = 159031;	--気弾を構える	ef_004_r	114	敵側そのまま反転
SP_09 = 159032;	--気弾連射	ef_005	120	（ef_005とef_005_b同時再生）
SP_10 = 159033;	--気弾連射	ef_005_b	120	（ef_005とef_005_b同時再生）

--エフェクト(敵)
SP_11 = 159020;	--敵に接近　敵側	ef_001_r	30	敵側そのまま反転（ef_001_rとef_001_r_b同時再生）
SP_12 = 159021;	--敵に接近　敵側	ef_001_r_b	30	敵側そのまま反転（ef_001_rとef_001_r_b同時再生）
SP_13 = 159024;	--格闘（連撃）　敵側	ef_002_r	75	敵側そのまま反転（ef_002_rとef_002_r_b同時再生）
SP_14 = 159025;	--格闘（連撃）　敵側	ef_002_r_b	75	敵側そのまま反転（ef_001_rとef_001_r_b同時再生）
SP_15 = 159028;	--かかと落としフェイント　敵側	ef_003_r	102	敵側そのまま反転（ef_003_rとef_003_r_b同時再生）
SP_16 = 159029;	--かかと落としフェイント　敵側	ef_003_r_b	102	敵側そのまま反転（ef_003_rとef_003_r_b同時再生）
SP_17 = 159034;	--気弾連射　敵側	ef_005_r	120	敵側そのまま反転（ef_005_rとef_005_r_b同時再生）
SP_18 = 159035;	--気弾連射　敵側	ef_005_r_b	120	敵側そのまま反転（ef_005_rとef_005_r_b同時再生）


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
-- 敵に接近
------------------------------------------------------
-- ** エフェクト等 ** --
base1_f = entryEffect( spep_1 + 0, SP_01, 0x100, -1, 0, 0, 0); --敵に接近
setEffMoveKey( spep_1 + 0, base1_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 60 -4, base1_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 60 -4, base1_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_f, 0);
setEffRotateKey( spep_1 + 60 -4, base1_f, 0);
setEffAlphaKey( spep_1 + 0, base1_f, 255);
setEffAlphaKey( spep_1 + 60 -5, base1_f, 255);
setEffAlphaKey( spep_1 + 60 -4, base1_f, 0);

base1_b = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); --敵に接近
setEffMoveKey( spep_1 + 0, base1_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 60 -4, base1_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 60 -4, base1_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_b, 0);
setEffRotateKey( spep_1 + 60 -4, base1_b, 0);
setEffAlphaKey( spep_1 + 0, base1_b, 255);
setEffAlphaKey( spep_1 + 60 -5, base1_b, 255);
setEffAlphaKey( spep_1 + 60 -4, base1_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 117 );

-- setMoveKey( spep_1 -3 + 0, 1, 243, -125 , 0 );
setMoveKey( spep_1 + 0, 1, 242, -123.8 , 0 );
setMoveKey( spep_1 + 1, 1, 240.9, -122.6 , 0 );
setMoveKey( spep_1 + 2, 1, 240.4, -122.0 , 0 );
setMoveKey( spep_1 + 3, 1, 239.6, -121.4 , 0 );
setMoveKey( spep_1 + 4, 1, 238.8, -120.9 , 0 );
setMoveKey( spep_1 + 5, 1, 237.9, -120.3 , 0 );
setMoveKey( spep_1 + 6, 1, 237.0, -119.7 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 236.2, -119.1 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 234.2, -117.9 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 231.9, -116.7 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 229.6, -115.6 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 227, -114.4 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 224.2, -113.2 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 221.2, -112 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 218, -110.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 214.6, -109.7 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 211.1, -108.6 , 0 );
setMoveKey( spep_1 -3 + 29, 1, 211.1, -108.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 208, -56 , 0 );
setMoveKey( spep_1 -3 + 31, 1, 208, -56 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 159.3, -42.7 , 0 );
setMoveKey( spep_1 -3 + 33, 1, 159.3, -42.7 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 110.6, -29.5 , 0 );
setMoveKey( spep_1 -3 + 35, 1, 110.6, -29.5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 61.8, -16.3 , 0 );
setMoveKey( spep_1 -3 + 37, 1, 61.8, -16.3 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 13.1, -3.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 12.7, -2.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 12.3, -1.8 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 11.9, -1.2 , 0 );


setScaleKey( spep_1 + 0, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 1, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 2, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 3, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 4, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 5, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 6, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 10, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 12, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 22, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 24, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 + 34, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 + 36, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 44, 1, 0.3, 0.3 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );

-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1);	--入り
setSeVolumeByWorkId( spep_1 + 0, SE001, 85 );

SE002 = playSeVer2( spep_1 + 28, 1182, "", 0, 0, 0, -1);	--向かっていく

SE003 = playSeVer2( spep_1 + 28, 1183, "",spep_1 + 102, 0, 42, -1);	--向かっていく


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 42; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 11.9, -1.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 11.4, -0.6 , 0 );
    setMoveKey( SP_dodge + 4, 1, 11, 0 , 0 );
    setMoveKey( SP_dodge + 6, 1, 10.6, 0.7 , 0 );
    setMoveKey( SP_dodge + 8, 1, 10.2, 1.3 , 0 );
    setMoveKey( SP_dodge + 10, 1, 9.8, 1.9 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.3, 0.3 );
    setScaleKey( SP_dodge + 8, 1, 0.31, 0.31 );
    setScaleKey( SP_dodge + 10, 1, 0.32, 0.32 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );  

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
setDisp( spep_1 + 60 -4, 1, 0 );

setMoveKey( spep_1 -3 + 46, 1, 11.4, -0.6 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 11, 0 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 10.6, 0.7 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 10.2, 1.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 9.8, 1.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 9.4, 2.5 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 9, 3.1 , 0 );
setMoveKey( spep_1 -5 + 60, 1, 9, 3.1 , 0 );

setScaleKey( spep_1 -3 + 46, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 52, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 54, 1, 0.32, 0.32 );
setScaleKey( spep_1 -5 + 60, 1, 0.32, 0.32 );

setRotateKey( spep_1 -5 + 60, 1, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 60 -4;

-------------------------------------------------
-- 格闘（連撃）
-------------------------------------------------
-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); --格闘（連撃）	ef_003
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 148 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 148 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 148 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 148 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 148 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0); --格闘（連撃）	ef_003_b
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 148 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 148 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 148 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 148 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 148 -4, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -4 + 148, 1, 0 );

changeAnime( spep_2 + 0, 1, 117 );
changeAnime( spep_2 -3 + 10, 1, 106 );
changeAnime( spep_2 -3 + 60, 1, 108 );
changeAnime( spep_2 -3 + 68, 1, 106 );
changeAnime( spep_2 -3 + 76, 1, 108 );
changeAnime( spep_2 -3 + 84, 1, 106 );
changeAnime( spep_2 -3 + 92, 1, 108 );
changeAnime( spep_2 -3 + 100, 1, 106 );
changeAnime( spep_2 -3 + 108, 1, 108 );
changeAnime( spep_2 -3 + 116, 1, 106 );
changeAnime( spep_2 -3 + 124, 1, 108 );

-- setMoveKey( spep_2 -3 + 0, 1, 30.7, 25.5 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 29.8, 26.3 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 28.9, 27.2 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 27.9, 28 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 27.1, 28.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 70.7, 28 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 106.1, 41.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 113.3, 2.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 96, 25.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 74.7, 8 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 95.5, 32.5 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 98.6, 33.3 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 101.8, 34.2 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 104.9, 35 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 108, 35.9 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 111.3, 36.4 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 114.6, 37 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 117.8, 37.5 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 121.1, 38 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 124.4, 38.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 125.6, 39.1 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 126.8, 39.7 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 127.9, 40.2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 129, 40.8 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 130.2, 41.3 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 131.3, 41.8 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 132.4, 42.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 133.5, 42.9 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 134.6, 43.5 , 0 );
setMoveKey( spep_2 -3 + 59, 1, 135.7, 44 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 2.3, 41.3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 19.5, 56.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 0.9, 32 , 0 );
setMoveKey( spep_2 -3 + 67, 1, 38.1, 18.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -8.5, 12.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 5.6, 27.6 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -13.1, 3.1 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 24.2, -10.1 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 58.1, 34.6 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 72.1, 49.4 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 53.4, 24.9 , 0 );
setMoveKey( spep_2 -3 + 83, 1, 90.8, 11.7 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 44, 5.6 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 58.1, 20.4 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 39.4, -4.1 , 0 );
setMoveKey( spep_2 -3 + 91, 1, 76.7, -17.3 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 110.7, 27.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 124.8, 42.4 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 106, 17.7 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 143.4, 4.5 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 96.6, -1.5 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 110.6, 13.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 91.8, -11.4 , 0 );
setMoveKey( spep_2 -3 + 107, 1, 129.3, -24.6 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 163.3, 20.4 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 177.4, 35.3 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 158.6, 10.6 , 0 );
setMoveKey( spep_2 -3 + 115, 1, 196.1, -2.7 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 149, -8.8 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 163.2, 6.1 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 144.3, -18.6 , 0 );
setMoveKey( spep_2 -3 + 123, 1, 181.9, -31.8 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 215.9, 13.3 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 201.6, 89.6 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 262.7, 7.6 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 235.6, -8.1 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 222.5, 12.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 201.6, 89.6 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 262.7, 7.6 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 262.7, 7.6 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 219.3, 11.9 , 0 );
setMoveKey( spep_2 -5 + 148, 1, 219.3, 11.9 , 0 );

-- setScaleKey( spep_2 -3 + 0, 1, 2.21, 2.21 );
setScaleKey( spep_2 -2 + 2, 1, 2.1, 2.1 );
setScaleKey( spep_2 -3 + 4, 1, 1.99, 1.99 );
setScaleKey( spep_2 -3 + 6, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 9, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 10, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 12, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 14, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 28, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 30, 1, 1.52, 1.52 );
setScaleKey( spep_2 -3 + 32, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 34, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 36, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 38, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 40, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 42, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 44, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 46, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 48, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 50, 1, 1.61, 1.61 );
setScaleKey( spep_2 -3 + 52, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 54, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 56, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 59, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 60, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 67, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 68, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 75, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 76, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 78, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 80, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 83, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 84, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 91, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 92, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 99, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 100, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 107, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 108, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 115, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 116, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 123, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 124, 1, 1.87, 1.87 );
setScaleKey( spep_2 -5 + 148, 1, 1.87, 1.87 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 9, 1, 0 );
setRotateKey( spep_2 -3 + 10, 1, -43.1 );
setRotateKey( spep_2 -3 + 12, 1, -43.1 );
setRotateKey( spep_2 -3 + 14, 1, -43 );
setRotateKey( spep_2 -3 + 16, 1, -42.8 );
setRotateKey( spep_2 -3 + 18, 1, -42.6 );
setRotateKey( spep_2 -3 + 20, 1, -42.4 );
setRotateKey( spep_2 -3 + 22, 1, -42.2 );
setRotateKey( spep_2 -3 + 24, 1, -42 );
setRotateKey( spep_2 -3 + 26, 1, -41.8 );
setRotateKey( spep_2 -3 + 28, 1, -41.6 );
setRotateKey( spep_2 -3 + 30, 1, -41.4 );
setRotateKey( spep_2 -3 + 32, 1, -41.2 );
setRotateKey( spep_2 -3 + 34, 1, -41 );
setRotateKey( spep_2 -3 + 36, 1, -40.9 );
setRotateKey( spep_2 -3 + 38, 1, -40.7 );
setRotateKey( spep_2 -3 + 59, 1, -40.7 );
setRotateKey( spep_2 -3 + 60, 1, 0 );
setRotateKey( spep_2 -3 + 67, 1, 0 );
setRotateKey( spep_2 -3 + 68, 1, -40.7 );
setRotateKey( spep_2 -3 + 75, 1, -40.7 );
setRotateKey( spep_2 -3 + 76, 1, 0 );
setRotateKey( spep_2 -3 + 83, 1, 0 );
setRotateKey( spep_2 -3 + 84, 1, -40.7 );
setRotateKey( spep_2 -3 + 91, 1, -40.7 );
setRotateKey( spep_2 -3 + 92, 1, 0 );
setRotateKey( spep_2 -3 + 99, 1, 0 );
setRotateKey( spep_2 -3 + 100, 1, -40.7 );
setRotateKey( spep_2 -3 + 107, 1, -40.7 );
setRotateKey( spep_2 -3 + 108, 1, 0 );
setRotateKey( spep_2 -3 + 115, 1, 0 );
setRotateKey( spep_2 -3 + 116, 1, -40.7 );
setRotateKey( spep_2 -3 + 123, 1, -40.7 );
setRotateKey( spep_2 -3 + 124, 1, 0 );
setRotateKey( spep_2 -5 + 148, 1, 0 );


-- ** 音 ** --
SE004 = playSeVer2( spep_2 + 0, 1189, "", 0, 0, 0, -1);	--初手パンチ

SE005 = playSeVer2( spep_2 + 6, 1010, "", 0, 0, 0, -1);	--初手パンチ

SE006 = playSeVer2( spep_2 + 6, 1000, "", 0, 0, 0, -1);	--初手パンチ
setSeVolumeByWorkId( spep_2 + 6, SE006, 85 );

SE007 = playSeVer2( spep_2 + 8, 1110, "", 0, 0, 0, -1);	--初手パンチ
setSeVolumeByWorkId( spep_2 + 8, SE007, 93 );

SE008 = playSeVer2( spep_2 + 58, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE009 = playSeVer2( spep_2 + 58, 1110, "",spep_2 + 78, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 58, SE009, 89 );

SE010 = playSeVer2( spep_2 + 76, 1000, "", 0, 0, 0, -1);

SE011 = playSeVer2( spep_2 + 66, 1110, "",spep_2 + 86, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 66, SE011, 82 );

SE012 = playSeVer2( spep_2 + 72, 1000, "", 0, 0, 0, -1);

SE013 = playSeVer2( spep_2 + 72, 1110, "",spep_2 + 92, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 72, SE013, 82 );
setPitch( spep_2 + 72, SE013, -200 );
setTimeStretch( SE013, 0.87, 30, 4 );

SE014 = playSeVer2( spep_2 + 78, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE015 = playSeVer2( spep_2 + 78, 1110, "",spep_2 + 98, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 78, SE015, 84 );

SE016 = playSeVer2( spep_2 + 84, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE017 = playSeVer2( spep_2 + 84, 1110, "",spep_2 + 104, 0, 10, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 84, SE017, 78 );
setPitch( spep_2 + 84, SE017, 100 );
setTimeStretch( SE017, 1.07, 30, 4 );

SE018 = playSeVer2( spep_2 + 90, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE019 = playSeVer2( spep_2 + 90, 1110, "",spep_2 + 110, 0, 10, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 90, SE019, 72 );

SE020 = playSeVer2( spep_2 + 98, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE021 = playSeVer2( spep_2 + 98, 1110, "",spep_2 + 118, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 98, SE021, 79 );
setPitch( spep_2 + 98, SE021, -100 );
setTimeStretch( SE021, 0.93, 30, 4 );

SE022 = playSeVer2( spep_2 + 104, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE023 = playSeVer2( spep_2 + 104, 1110, "",spep_2 + 124, 0, 10, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 104, SE023, 84 );

SE024 = playSeVer2( spep_2 + 112, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE025 = playSeVer2( spep_2 + 112, 1110, "",spep_2 + 132, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 112, SE025, 84 );

SE026 = playSeVer2( spep_2 + 120, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE027 = playSeVer2( spep_2 + 120, 1110, "", 0, 0, 0, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 120, SE027, 83 );

SE028 = playSeVer2( spep_2 + 130, 1110, "", 0, 0, 0, -1);	--ラッシュ


-- ** 次の準備 ** --
spep_3 = spep_2 + 148 -4;

-------------------------------------------------
-- かかと落としフェイント
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0); --かかと落としフェイント）
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 204 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 204 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 204 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 204 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 204 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0); --かかと落としフェイント）
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 204 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 204 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 204 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 204 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 204 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 28, 1, 0 );
setDisp( spep_3 -3 + 64, 1, 1 );
setDisp( spep_3 -3 + 170 , 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 -3 + 28, 1, 104 );
changeAnime( spep_3 -3 + 128, 1, 106 );
changeAnime( spep_3 -3 + 130, 1, 5 );

--setMoveKey( spep_3 -3 + 0, 1, 100.1, -12 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 105, -26.2 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 110.1, -40.7 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 115, -55 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 120.1, -69.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 125, -83.8 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 130.1, -98.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 135, -112.5 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 140.2, -127 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 145.1, -141.3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 150.2, -155.8 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 155.1, -170.1 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 100.1, -222.1 , 0 );
setMoveKey( spep_3 -3 + 27, 1, 96.4, -249 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 152.1, -16 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 133.6, -17.3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 140.5, -1.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 48.6, -25.5 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 89.2, -73.3 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 61.7, -20.1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 50.1, -14.4 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 67.4, -6.4 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 56.9, -26.1 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 56.8, -35.5 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 62.1, -39.5 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 67.2, -43.3 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 72.4, -47.3 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 77.8, -51.3 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 83.1, -55.3 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 88.3, -59.2 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 93.6, -63.2 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 98.9, -67.2 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 104.2, -71.2 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 109.5, -75.2 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 114.5, -79 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 119.8, -83 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 125.1, -87 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 130.4, -91 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 135.6, -95 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 140.9, -99 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 146.2, -103 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 151.5, -107 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 156.8, -111 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 162.1, -115 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 167.2, -118.7 , 0 );
setMoveKey( spep_3 -3 + 127, 1, 172.5, -122.7 , 0 );
setMoveKey( spep_3 -3 + 129, 1, 335, -58.2 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 623.9, -354.5 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 708.9, -363.9 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 652.4, -467.5 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 763.2, -511.2 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 737.4, -505.3 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 704.5, -472.9 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 562.2, -380.2 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 420.3, -287.8 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 278.7, -195.5 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 137.3, -103.3 , 0 );
setMoveKey( spep_3 -3 + 150, 1, -3.9, -11 , 0 );
setMoveKey( spep_3 -3 + 152, 1, -1.1, -11.6 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 1.9, -12.1 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 4.8, -12.6 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 7.9, -13.2 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 11.1, -14 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 14.3, -14.6 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 17.6, -15.2 , 0 );
setMoveKey( spep_3 -3 + 170, 1, 20.8, -15.8 , 0 );

--setScaleKey( spep_3 -3 + 0, 1, 2.07, 2.07 );
setScaleKey( spep_3 -2 + 2, 1, 2.1, 2.1 );
setScaleKey( spep_3 -3 + 4, 1, 2.13, 2.13 );
setScaleKey( spep_3 -3 + 6, 1, 2.16, 2.16 );
setScaleKey( spep_3 -3 + 8, 1, 2.19, 2.19 );
setScaleKey( spep_3 -3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_3 -3 + 12, 1, 2.26, 2.26 );
setScaleKey( spep_3 -3 + 14, 1, 2.29, 2.29 );
setScaleKey( spep_3 -3 + 16, 1, 2.32, 2.32 );
setScaleKey( spep_3 -3 + 18, 1, 2.35, 2.35 );
setScaleKey( spep_3 -3 + 20, 1, 2.39, 2.39 );
setScaleKey( spep_3 -3 + 22, 1, 2.42, 2.42 );
setScaleKey( spep_3 -3 + 24, 1, 2.07, 2.07 );
setScaleKey( spep_3 -3 + 27, 1, 2.22, 2.22 );
setScaleKey( spep_3 -3 + 64, 1, 2.16, 2.16 );
setScaleKey( spep_3 -3 + 66, 1, 2.22, 2.22 );
setScaleKey( spep_3 -3 + 68, 1, 2.29, 2.29 );
setScaleKey( spep_3 -3 + 70, 1, 2.35, 2.35 );
setScaleKey( spep_3 -3 + 72, 1, 2.42, 2.42 );
setScaleKey( spep_3 -3 + 74, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 76, 1, 2.55, 2.55 );
setScaleKey( spep_3 -3 + 78, 1, 2.62, 2.62 );
setScaleKey( spep_3 -3 + 80, 1, 2.68, 2.68 );
setScaleKey( spep_3 -3 + 82, 1, 2.75, 2.75 );
setScaleKey( spep_3 -3 + 84, 1, 2.81, 2.81 );
setScaleKey( spep_3 -3 + 86, 1, 2.88, 2.88 );
setScaleKey( spep_3 -3 + 88, 1, 2.95, 2.95 );
setScaleKey( spep_3 -3 + 90, 1, 3.01, 3.01 );
setScaleKey( spep_3 -3 + 92, 1, 3.08, 3.08 );
setScaleKey( spep_3 -3 + 94, 1, 3.15, 3.15 );
setScaleKey( spep_3 -3 + 96, 1, 3.21, 3.21 );
setScaleKey( spep_3 -3 + 98, 1, 3.28, 3.28 );
setScaleKey( spep_3 -3 + 100, 1, 3.35, 3.35 );
setScaleKey( spep_3 -3 + 102, 1, 3.41, 3.41 );
setScaleKey( spep_3 -3 + 104, 1, 3.48, 3.48 );
setScaleKey( spep_3 -3 + 106, 1, 3.55, 3.55 );
setScaleKey( spep_3 -3 + 108, 1, 3.61, 3.61 );
setScaleKey( spep_3 -3 + 110, 1, 3.68, 3.68 );
setScaleKey( spep_3 -3 + 112, 1, 3.75, 3.75 );
setScaleKey( spep_3 -3 + 114, 1, 3.81, 3.81 );
setScaleKey( spep_3 -3 + 116, 1, 3.88, 3.88 );
setScaleKey( spep_3 -3 + 118, 1, 3.95, 3.95 );
setScaleKey( spep_3 -3 + 120, 1, 4.01, 4.01 );
setScaleKey( spep_3 -3 + 122, 1, 4.08, 4.08 );
setScaleKey( spep_3 -3 + 124, 1, 4.15, 4.15 );
setScaleKey( spep_3 -3 + 127, 1, 4.21, 4.21 );
setScaleKey( spep_3 -3 + 129, 1, 4.09, 4.09 );
setScaleKey( spep_3 -3 + 130, 1, 2.54, 2.54 );
setScaleKey( spep_3 -3 + 132, 1, 2.21, 2.21 );
setScaleKey( spep_3 -3 + 134, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 136, 1, 1.52, 1.52 );
setScaleKey( spep_3 -3 + 138, 1, 1.16, 1.16 );
setScaleKey( spep_3 -3 + 140, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 142, 1, 0.76, 0.76 );
setScaleKey( spep_3 -3 + 144, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 146, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 148, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 150, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 152, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 154, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 156, 1, 0.57, 0.57 );
setScaleKey( spep_3 -3 + 158, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 160, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 162, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 164, 1, 0.44, 0.44 );
setScaleKey( spep_3 -3 + 170, 1, 0.41, 0.41 );

setRotateKey( spep_3 + 0, 1, -43.1 );
setRotateKey( spep_3 -3 + 27, 1, -43.1 );
setRotateKey( spep_3 -3 + 64, 1, 0 );
setRotateKey( spep_3 -3 + 72, 1, 0 );
setRotateKey( spep_3 -3 + 74, 1, 0.3 );
setRotateKey( spep_3 -3 + 76, 1, 1.3 );
setRotateKey( spep_3 -3 + 78, 1, 3 );
setRotateKey( spep_3 -3 + 80, 1, 0.7 );
setRotateKey( spep_3 -3 + 82, 1, 0 );
setRotateKey( spep_3 -3 + 127, 1, 0 );
setRotateKey( spep_3 -3 + 129, 1, -29.9 );
setRotateKey( spep_3 -3 + 130, 1, 57.8 );
setRotateKey( spep_3 -3 + 132, 1, 63.2 );
setRotateKey( spep_3 -3 + 134, 1, 68.5 );
setRotateKey( spep_3 -3 + 136, 1, 73.9 );
setRotateKey( spep_3 -3 + 138, 1, 79.3 );
setRotateKey( spep_3 -3 + 140, 1, 84.7 );
setRotateKey( spep_3 -3 + 170, 1, 84.7 );


-- ** 音 ** --
SE029 = playSeVer2( spep_3 + 18, 1183, "",spep_3 + 78, 8, 16, 0.6);	--回転してかかとおとし
setStartTimeMs( SE031,  450 );
setPitch( spep_3 + 18, SE031, -700 )
setTimeStretch( SE031, 0.53, 26, 4 );

SE030 = playSeVer2( spep_3 + 12, 1007, "", 0, 0, 0, -1);	--回転してかかとおとし

SE031 = playSeVer2( spep_3 + 14, 1004, "", 0, 0, 0, -1);	--回転してかかとおとし

SE032 = playSeVer2( spep_3 + 14, 1116, "",spep_3 + 80, 0, 20, 0.6);	--回転してかかとおとし
setTimeStretch( SE034, 1.42, 30, 4 );

SE033 = playSeVer2( spep_3 + 62, 1189, "", 0, 0, 0, -1);	--サマーソルトヒット

SE034 = playSeVer2( spep_3 + 70, 1006, "", 0, 0, 0, -1)	--サマーソルトヒット;
setSeVolumeByWorkId( spep_3 + 70, SE036, 79 );

SE035 = playSeVer2( spep_3 + 70, 1012, "", 0, 0, 0, -1);	--サマーソルトヒット

SE036 = playSeVer2( spep_3 + 126, 1003, "", 0, 0, 0, -1);	--蹴り飛ばし

SE037 = playSeVer2( spep_3 + 126, 1120, "", 0, 0, 0, -1);	--蹴り飛ばし

SE038 = playSeVer2( spep_3 + 194, 1072, "", 0, 8, 0, -1);	--飛び上がる
setStartTimeMs( SE038,  350 );

SE039 = playSeVer2( spep_3 + 180, 1117, "",spep_3 + 260, 0, 44, -1);	--飛び上がる


-- ** 次の準備 ** --
spep_4 = spep_3 + 204 -4;

-------------------------------------------------
-- 気弾を構える
-------------------------------------------------
-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0); --気弾を構える
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 228 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 228 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 228 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 228 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 228 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0); --気弾を構える
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 228 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 228 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 228 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 228 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 228 -4, base4_b, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_4 + 140;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
SE040 = playSeVer2( spep_4 + 44, 1003, "", 0, 0, 0, -1);	--腕広げる

SE041 = playSeVer2( spep_4 + 74, 1296, "",spep_4 + 226, 0, 6, -1);	--気弾溜め

SE042 = playSeVer2( spep_4 + 110, 1296, "",spep_4 + 226, 0, 6, -1);	--気弾溜め

SE043 = playSeVer2( spep_4 + 74, 1295, "",spep_4 + 226, 0, 6, -1);	--気弾溜め
setSeVolumeByWorkId( spep_4 + 74, SE043, 70 );

SE044 = playSeVer2( spep_4 + 74, 1252, "",spep_4 + 226, 0, 6, -1);	--気弾溜め

SE045 = playSeVer2( spep_4 + 140, 1018, "", 0, 0, 0, -1);	--顔カットイン


-- ** 次の準備 ** --
spep_c = spep_4 + 228 -4;

-------------------------------------------------
--カードカットイン（96）
-------------------------------------------------
-- ** カードカットイン ** --
--[[speffc = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speffc, 1, 1);
setEffReplaceTexture( speffc, 2, 0);-- カード差し替え
setEffReplaceTexture( speffc, 5, 4);-- 技名テクスチャ差し替え]]

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
spep_5 = spep_c + 96;

-------------------------------------------------
-- 気弾連射
-------------------------------------------------
-- ** エフェクト等 ** --
base5_f = entryEffect( spep_5 + 0, SP_09, 0x100, -1, 0, 0, 0); --気弾連射
setEffMoveKey( spep_5 + 0, base5_f, 0, 0 , 0);
setEffMoveKey( spep_5 + 240 -4, base5_f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_f, 1.0, 1.0);
setEffScaleKey( spep_5 + 240 -4, base5_f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_f, 0);
setEffRotateKey( spep_5 + 240 -4, base5_f, 0);
setEffAlphaKey( spep_5 + 0, base5_f, 255);
setEffAlphaKey( spep_5 + 240 -5, base5_f, 255);
setEffAlphaKey( spep_5 + 240 -4, base5_f, 0);

base5_b = entryEffect( spep_5 + 0, SP_10, 0x80, -1, 0, 0, 0); --気弾連射
setEffMoveKey( spep_5 + 0, base5_b, 0, 0 , 0);
setEffMoveKey( spep_5 + 240 -4, base5_b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_b, 1.0, 1.0);
setEffScaleKey( spep_5 + 240 -4, base5_b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_b, 0);
setEffRotateKey( spep_5 + 240 -4, base5_b, 0);
setEffAlphaKey( spep_5 + 0, base5_b, 255);
setEffAlphaKey( spep_5 + 240 -5, base5_b, 255);
setEffAlphaKey( spep_5 + 240 -4, base5_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 62, 1, 1 );
setDisp( spep_5 -3 + 80, 1, 0 );

changeAnime( spep_5 -3 + 62, 1, 107 );

setMoveKey( spep_5 -3 + 62, 1, 0.2, -281.6 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 0.3, -278.1 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 0.9, -280.3 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 1.7, -288.2 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 3, -302.3 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 4.7, -322.7 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 6.7, -349.7 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 9.2, -383.5 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 12.1, -424.5 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 15.5, -472.9 , 0 );

setScaleKey( spep_5 -3 + 62, 1, 0.14, 0.14 );
setScaleKey( spep_5 -3 + 64, 1, 0.15, 0.15 );
setScaleKey( spep_5 -3 + 66, 1, 0.17, 0.17 );
setScaleKey( spep_5 -3 + 68, 1, 0.2, 0.2 );
setScaleKey( spep_5 -3 + 70, 1, 0.25, 0.25 );
setScaleKey( spep_5 -3 + 72, 1, 0.32, 0.32 );
setScaleKey( spep_5 -3 + 74, 1, 0.4, 0.4 );
setScaleKey( spep_5 -3 + 76, 1, 0.49, 0.49 );
setScaleKey( spep_5 -3 + 78, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 80, 1, 0.74, 0.74 );

setRotateKey( spep_5 -3 + 62, 1, 30.1 );
setRotateKey( spep_5 -3 + 64, 1, 29.9 );
setRotateKey( spep_5 -3 + 66, 1, 29.3 );
setRotateKey( spep_5 -3 + 68, 1, 28.4 );
setRotateKey( spep_5 -3 + 70, 1, 27.1 );
setRotateKey( spep_5 -3 + 72, 1, 25.5 );
setRotateKey( spep_5 -3 + 74, 1, 23.5 );
setRotateKey( spep_5 -3 + 76, 1, 21.1 );
setRotateKey( spep_5 -3 + 78, 1, 18.4 );
setRotateKey( spep_5 -3 + 80, 1, 15.3 );


-- ** 音 ** --
SE047 = playSeVer2( spep_5 + 0, 1358, "",spep_5 + 24, 0, 14, -1);	--連続気弾

SE048 = playSeVer2( spep_5 + 0, 1016, "", 0, 0, 0, -1);	--連続気弾

SE049 = playSeVer2( spep_5 + 10, 1358, "",spep_5 + 34, 0, 16, -1);	--連続気弾

SE050 = playSeVer2( spep_5 + 10, 1016, "", 0, 0, 0, -1);	--連続気弾
setSeVolumeByWorkId( spep_5 + 10, SE050, 97 );

SE051 = playSeVer2( spep_5 + 18, 1358, "",spep_5 + 42, 0, 14, -1);	--連続気弾
setSeVolumeByWorkId( spep_5 + 18, SE051, 90 );

SE052 = playSeVer2( spep_5 + 18, 1016, "", 0, 0, 0, -1);	--連続気弾
setPitch( spep_5 + 18, SE052, -200 );
setTimeStretch( SE052, 0.87, 30, 4 );

SE053 = playSeVer2( spep_5 + 28, 1358, "",spep_5 + 52, 0, 14, -1);	--連続気弾

SE054 = playSeVer2( spep_5 + 28, 1016, "", 0, 0, 0, -1);	--連続気弾

SE055 = playSeVer2( spep_5 + 38, 1358, "",spep_5 + 62, 0, 14, -1);	--連続気弾

SE056 = playSeVer2( spep_5 + 38, 1016, "", 0, 0, 0, -1);	--連続気弾
setPitch( spep_5 + 38, SE056, -200 );
setTimeStretch( SE056, 0.87, 30, 4 );

SE057 = playSeVer2( spep_5 + 48, 1358, "",spep_5 + 48, 0, 14, -1);	--連続気弾

SE058 = playSeVer2( spep_5 + 48, 1016, "", 0, 0, 0, -1);	--連続気弾
setSeVolumeByWorkId( spep_5 + 48, SE058, 94 );

SE059 = playSeVer2( spep_5 + 58, 1358, "",spep_5 + 82, 0, 14, -1);	--連続気弾

SE060 = playSeVer2( spep_5 + 58, 1016, "", 0, 0, 0, -1);	--連続気弾
setSeVolumeByWorkId( spep_5 + 780, SE060, 94 );

SE061 = playSeVer2( spep_5 + 66, 1358, "",spep_5 + 90, 0, 14, -1);	--連続気弾

SE062 = playSeVer2( spep_5 + 66, 1016, "", 0, 0, 0, -1);	--連続気弾
setSeVolumeByWorkId( spep_5 + 66, SE062, 89 );
setPitch( spep_5 + 66, SE062, 100 );
setTimeStretch( SE062, 1.07, 30, 4 );

SE063 = playSeVer2( spep_5 + 76, 1358, "",spep_5 + 94, 0, 10, 0.5);	--連続気弾

SE064 = playSeVer2( spep_5 + 76, 1016, "", spep_5 + 94, 0, 10, 0.5);	--連続気弾

SE065 = playSeVer2( spep_5 + 76, 1023, "", 0, 0, 0, -1);	--連続爆発

SE066 = playSeVer2( spep_5 + 80, 1008, "", 0, 0, 0, -1);	--連続爆発

SE067 = playSeVer2( spep_5 + 86, 1358, "",spep_5 + 104, 0, 10, 0.5);	--連続気弾

SE068 = playSeVer2( spep_5 + 86, 1016, "", spep_5 + 104, 0, 10, 0.5);	--連続気弾

SE069 = playSeVer2( spep_5 + 96, 1358, "",spep_5 + 112, 0, 8, 0.5);	--連続気弾

SE070 = playSeVer2( spep_5 + 96, 1016, "", spep_5 + 112, 0, 8, 0.5);	--連続気弾

SE071 = playSeVer2( spep_5 + 98, 1024, "", 0, 0, 0, -1);	--連続爆発
setSeVolumeByWorkId( spep_5 + 98, SE071, 99 );

SE072 = playSeVer2( spep_5 + 106, 1358, "",spep_5 + 122, 0, 8, 0.5);	--連続気弾

SE073 = playSeVer2( spep_5 + 106, 1016, "", spep_5 + 122, 0, 8, 0.5);	--連続気弾
setPitch( spep_5 + 106, SE073, -300 );
setTimeStretch( SE073, 0.8, 30, 4 );

SE074 = playSeVer2( spep_5 + 114, 1159, "", 0, 0, 0, -1);	--連続爆発
setSeVolumeByWorkId( spep_5 + 114, SE074, 75 );

SE075 = playSeVer2( spep_5 + 116, 1358, "",spep_5 + 132, 0, 8, 0.5);	--連続気弾

SE076 = playSeVer2( spep_5 + 116, 1016, "", spep_5 + 132, 0, 8, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 116, SE076, 84 );

SE077 = playSeVer2( spep_5 + 124, 1358, "",spep_5 + 142, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 124, SE077, 91 );

SE078 = playSeVer2( spep_5 + 124, 1016, "", spep_5 + 142, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 124, SE078, 89 );

SE079 = playSeVer2( spep_5 + 134, 1358, "",spep_5 + 152, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 134, SE079, 104 );

SE080 = playSeVer2( spep_5 + 134, 1016, "", spep_5 + 152, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 134, SE080, 84 );
setPitch( spep_5 + 134, SE080, -200 );
setTimeStretch( SE080, 0.87, 30, 4 );

SE081 = playSeVer2( spep_5 + 144, 1358, "",spep_5 + 162, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 144, SE081, 93 );

SE082 = playSeVer2( spep_5 + 144, 1016, "", spep_5 + 162, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 144, SE082, 91 );

SE083 = playSeVer2( spep_5 + 154, 1358, "",spep_5 + 172, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 154, SE083, 106 );

SE084 = playSeVer2( spep_5 + 154, 1016, "", spep_5 + 172, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 154, SE084, 91 );

SE085 = playSeVer2( spep_5 + 162, 1358, "",spep_5 + 180, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 162, SE085, 94 );

SE086 = playSeVer2( spep_5 + 162, 1016, "", spep_5 + 180, 0, 10, 0.5);	--連続気弾
setPitch( spep_5 + 162, SE086, 100 );
setTimeStretch( SE086, 1.07, 30, 4 );

SE087 = playSeVer2( spep_5 + 172, 1358, "",spep_5 + 190, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 172, SE087, 63 );

SE088 = playSeVer2( spep_5 + 172, 1016, "", spep_5 + 190, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 172, SE088, 88 );

SE089 = playSeVer2( spep_5 + 182, 1358, "",spep_5 + 200, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 182, SE089, 85 );

SE090 = playSeVer2( spep_5 + 182, 1016, "", spep_5 + 200, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 182, SE090, 81 );

SE091 = playSeVer2( spep_5 + 192, 1358, "",spep_5 + 210, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 192, SE091, 89 );

SE092 = playSeVer2( spep_5 + 192, 1016, "", spep_5 + 210, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 192, SE092, 76 );


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 96);
endPhase( spep_5 + 240 -8);

else


------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


------------------------------------------------------
-- 敵に接近
------------------------------------------------------
-- ** エフェクト等 ** --
base1_f = entryEffect( spep_1 + 0, SP_11, 0x100, -1, 0, 0, 0); --敵に接近
setEffMoveKey( spep_1 + 0, base1_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 60 -4, base1_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 60 -4, base1_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_f, 0);
setEffRotateKey( spep_1 + 60 -4, base1_f, 0);
setEffAlphaKey( spep_1 + 0, base1_f, 255);
setEffAlphaKey( spep_1 + 60 -5, base1_f, 255);
setEffAlphaKey( spep_1 + 60 -4, base1_f, 0);

base1_b = entryEffect( spep_1 + 0, SP_12, 0x80, -1, 0, 0, 0); --敵に接近
setEffMoveKey( spep_1 + 0, base1_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 60 -4, base1_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 60 -4, base1_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1_b, 0);
setEffRotateKey( spep_1 + 60 -4, base1_b, 0);
setEffAlphaKey( spep_1 + 0, base1_b, 255);
setEffAlphaKey( spep_1 + 60 -5, base1_b, 255);
setEffAlphaKey( spep_1 + 60 -4, base1_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 117 );

-- setMoveKey( spep_1 -3 + 0, 1, 243, -125 , 0 );
setMoveKey( spep_1 + 0, 1, 242, -123.8 , 0 );
setMoveKey( spep_1 + 1, 1, 240.9, -122.6 , 0 );
setMoveKey( spep_1 + 2, 1, 240.4, -122.0 , 0 );
setMoveKey( spep_1 + 3, 1, 239.6, -121.4 , 0 );
setMoveKey( spep_1 + 4, 1, 238.8, -120.9 , 0 );
setMoveKey( spep_1 + 5, 1, 237.9, -120.3 , 0 );
setMoveKey( spep_1 + 6, 1, 237.0, -119.7 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 236.2, -119.1 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 234.2, -117.9 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 231.9, -116.7 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 229.6, -115.6 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 227, -114.4 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 224.2, -113.2 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 221.2, -112 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 218, -110.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 214.6, -109.7 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 211.1, -108.6 , 0 );
setMoveKey( spep_1 -3 + 29, 1, 211.1, -108.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 208, -56 , 0 );
setMoveKey( spep_1 -3 + 31, 1, 208, -56 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 159.3, -42.7 , 0 );
setMoveKey( spep_1 -3 + 33, 1, 159.3, -42.7 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 110.6, -29.5 , 0 );
setMoveKey( spep_1 -3 + 35, 1, 110.6, -29.5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 61.8, -16.3 , 0 );
setMoveKey( spep_1 -3 + 37, 1, 61.8, -16.3 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 13.1, -3.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 12.7, -2.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 12.3, -1.8 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 11.9, -1.2 , 0 );


setScaleKey( spep_1 + 0, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 1, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 2, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 3, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 4, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 5, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 6, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 10, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 12, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 22, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 24, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 + 34, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 + 36, 1, 0.3, 0.3 );
setScaleKey( spep_1 -3 + 44, 1, 0.3, 0.3 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );

-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1);	--入り
setSeVolumeByWorkId( spep_1 + 0, SE001, 85 );

SE002 = playSeVer2( spep_1 + 28, 1182, "", 0, 0, 0, -1);	--向かっていく

SE003 = playSeVer2( spep_1 + 28, 1183, "",spep_1 + 102, 0, 42, -1);	--向かっていく


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 42; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 11.9, -1.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 11.4, -0.6 , 0 );
    setMoveKey( SP_dodge + 4, 1, 11, 0 , 0 );
    setMoveKey( SP_dodge + 6, 1, 10.6, 0.7 , 0 );
    setMoveKey( SP_dodge + 8, 1, 10.2, 1.3 , 0 );
    setMoveKey( SP_dodge + 10, 1, 9.8, 1.9 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.3, 0.3 );
    setScaleKey( SP_dodge + 8, 1, 0.31, 0.31 );
    setScaleKey( SP_dodge + 10, 1, 0.32, 0.32 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );  

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
setDisp( spep_1 + 60 -4, 1, 0 );

setMoveKey( spep_1 -3 + 46, 1, 11.4, -0.6 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 11, 0 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 10.6, 0.7 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 10.2, 1.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 9.8, 1.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 9.4, 2.5 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 9, 3.1 , 0 );
setMoveKey( spep_1 -5 + 60, 1, 9, 3.1 , 0 );

setScaleKey( spep_1 -3 + 46, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 52, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 54, 1, 0.32, 0.32 );
setScaleKey( spep_1 -5 + 60, 1, 0.32, 0.32 );

setRotateKey( spep_1 -5 + 60, 1, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 60 -4;

-------------------------------------------------
-- 格闘（連撃）
-------------------------------------------------
-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_13, 0x100, -1, 0, 0, 0); --格闘（連撃）	ef_003
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 148 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 148 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 148 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 148 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 148 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_14, 0x80, -1, 0, 0, 0); --格闘（連撃）	ef_003_b
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 148 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 148 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 148 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 148 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 148 -4, base2_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -4 + 148, 1, 0 );

changeAnime( spep_2 + 0, 1, 117 );
changeAnime( spep_2 -3 + 10, 1, 106 );
changeAnime( spep_2 -3 + 60, 1, 108 );
changeAnime( spep_2 -3 + 68, 1, 106 );
changeAnime( spep_2 -3 + 76, 1, 108 );
changeAnime( spep_2 -3 + 84, 1, 106 );
changeAnime( spep_2 -3 + 92, 1, 108 );
changeAnime( spep_2 -3 + 100, 1, 106 );
changeAnime( spep_2 -3 + 108, 1, 108 );
changeAnime( spep_2 -3 + 116, 1, 106 );
changeAnime( spep_2 -3 + 124, 1, 108 );

-- setMoveKey( spep_2 -3 + 0, 1, 30.7, 25.5 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 29.8, 26.3 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 28.9, 27.2 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 27.9, 28 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 27.1, 28.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 70.7, 28 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 106.1, 41.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 113.3, 2.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 96, 25.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 74.7, 8 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 95.5, 32.5 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 98.6, 33.3 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 101.8, 34.2 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 104.9, 35 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 108, 35.9 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 111.3, 36.4 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 114.6, 37 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 117.8, 37.5 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 121.1, 38 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 124.4, 38.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 125.6, 39.1 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 126.8, 39.7 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 127.9, 40.2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 129, 40.8 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 130.2, 41.3 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 131.3, 41.8 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 132.4, 42.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 133.5, 42.9 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 134.6, 43.5 , 0 );
setMoveKey( spep_2 -3 + 59, 1, 135.7, 44 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 2.3, 41.3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 19.5, 56.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 0.9, 32 , 0 );
setMoveKey( spep_2 -3 + 67, 1, 38.1, 18.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -8.5, 12.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 5.6, 27.6 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -13.1, 3.1 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 24.2, -10.1 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 58.1, 34.6 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 72.1, 49.4 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 53.4, 24.9 , 0 );
setMoveKey( spep_2 -3 + 83, 1, 90.8, 11.7 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 44, 5.6 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 58.1, 20.4 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 39.4, -4.1 , 0 );
setMoveKey( spep_2 -3 + 91, 1, 76.7, -17.3 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 110.7, 27.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 124.8, 42.4 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 106, 17.7 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 143.4, 4.5 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 96.6, -1.5 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 110.6, 13.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 91.8, -11.4 , 0 );
setMoveKey( spep_2 -3 + 107, 1, 129.3, -24.6 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 163.3, 20.4 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 177.4, 35.3 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 158.6, 10.6 , 0 );
setMoveKey( spep_2 -3 + 115, 1, 196.1, -2.7 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 149, -8.8 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 163.2, 6.1 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 144.3, -18.6 , 0 );
setMoveKey( spep_2 -3 + 123, 1, 181.9, -31.8 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 215.9, 13.3 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 201.6, 89.6 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 262.7, 7.6 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 235.6, -8.1 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 222.5, 12.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 201.6, 89.6 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 262.7, 7.6 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 262.7, 7.6 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 219.3, 11.9 , 0 );
setMoveKey( spep_2 -5 + 148, 1, 219.3, 11.9 , 0 );

-- setScaleKey( spep_2 -3 + 0, 1, 2.21, 2.21 );
setScaleKey( spep_2 -2 + 2, 1, 2.1, 2.1 );
setScaleKey( spep_2 -3 + 4, 1, 1.99, 1.99 );
setScaleKey( spep_2 -3 + 6, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 9, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 10, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 12, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 14, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 28, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 30, 1, 1.52, 1.52 );
setScaleKey( spep_2 -3 + 32, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 34, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 36, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 38, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 40, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 42, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 44, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 46, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 48, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 50, 1, 1.61, 1.61 );
setScaleKey( spep_2 -3 + 52, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 54, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 56, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 59, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 60, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 67, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 68, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 75, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 76, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 78, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 80, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 83, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 84, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 91, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 92, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 99, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 100, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 107, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 108, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 115, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 116, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 123, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 124, 1, 1.87, 1.87 );
setScaleKey( spep_2 -5 + 148, 1, 1.87, 1.87 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 9, 1, 0 );
setRotateKey( spep_2 -3 + 10, 1, -43.1 );
setRotateKey( spep_2 -3 + 12, 1, -43.1 );
setRotateKey( spep_2 -3 + 14, 1, -43 );
setRotateKey( spep_2 -3 + 16, 1, -42.8 );
setRotateKey( spep_2 -3 + 18, 1, -42.6 );
setRotateKey( spep_2 -3 + 20, 1, -42.4 );
setRotateKey( spep_2 -3 + 22, 1, -42.2 );
setRotateKey( spep_2 -3 + 24, 1, -42 );
setRotateKey( spep_2 -3 + 26, 1, -41.8 );
setRotateKey( spep_2 -3 + 28, 1, -41.6 );
setRotateKey( spep_2 -3 + 30, 1, -41.4 );
setRotateKey( spep_2 -3 + 32, 1, -41.2 );
setRotateKey( spep_2 -3 + 34, 1, -41 );
setRotateKey( spep_2 -3 + 36, 1, -40.9 );
setRotateKey( spep_2 -3 + 38, 1, -40.7 );
setRotateKey( spep_2 -3 + 59, 1, -40.7 );
setRotateKey( spep_2 -3 + 60, 1, 0 );
setRotateKey( spep_2 -3 + 67, 1, 0 );
setRotateKey( spep_2 -3 + 68, 1, -40.7 );
setRotateKey( spep_2 -3 + 75, 1, -40.7 );
setRotateKey( spep_2 -3 + 76, 1, 0 );
setRotateKey( spep_2 -3 + 83, 1, 0 );
setRotateKey( spep_2 -3 + 84, 1, -40.7 );
setRotateKey( spep_2 -3 + 91, 1, -40.7 );
setRotateKey( spep_2 -3 + 92, 1, 0 );
setRotateKey( spep_2 -3 + 99, 1, 0 );
setRotateKey( spep_2 -3 + 100, 1, -40.7 );
setRotateKey( spep_2 -3 + 107, 1, -40.7 );
setRotateKey( spep_2 -3 + 108, 1, 0 );
setRotateKey( spep_2 -3 + 115, 1, 0 );
setRotateKey( spep_2 -3 + 116, 1, -40.7 );
setRotateKey( spep_2 -3 + 123, 1, -40.7 );
setRotateKey( spep_2 -3 + 124, 1, 0 );
setRotateKey( spep_2 -5 + 148, 1, 0 );


-- ** 音 ** --
SE004 = playSeVer2( spep_2 + 0, 1189, "", 0, 0, 0, -1);	--初手パンチ

SE005 = playSeVer2( spep_2 + 6, 1010, "", 0, 0, 0, -1);	--初手パンチ

SE006 = playSeVer2( spep_2 + 6, 1000, "", 0, 0, 0, -1);	--初手パンチ
setSeVolumeByWorkId( spep_2 + 6, SE006, 85 );

SE007 = playSeVer2( spep_2 + 8, 1110, "", 0, 0, 0, -1);	--初手パンチ
setSeVolumeByWorkId( spep_2 + 8, SE007, 93 );

SE008 = playSeVer2( spep_2 + 58, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE009 = playSeVer2( spep_2 + 58, 1110, "",spep_2 + 78, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 58, SE009, 89 );

SE010 = playSeVer2( spep_2 + 76, 1000, "", 0, 0, 0, -1);

SE011 = playSeVer2( spep_2 + 66, 1110, "",spep_2 + 86, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 66, SE011, 82 );

SE012 = playSeVer2( spep_2 + 72, 1000, "", 0, 0, 0, -1);

SE013 = playSeVer2( spep_2 + 72, 1110, "",spep_2 + 92, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 72, SE013, 82 );
setPitch( spep_2 + 72, SE013, -200 );
setTimeStretch( SE013, 0.87, 30, 4 );

SE014 = playSeVer2( spep_2 + 78, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE015 = playSeVer2( spep_2 + 78, 1110, "",spep_2 + 98, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 78, SE015, 84 );

SE016 = playSeVer2( spep_2 + 84, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE017 = playSeVer2( spep_2 + 84, 1110, "",spep_2 + 104, 0, 10, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 84, SE017, 78 );
setPitch( spep_2 + 84, SE017, 100 );
setTimeStretch( SE017, 1.07, 30, 4 );

SE018 = playSeVer2( spep_2 + 90, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE019 = playSeVer2( spep_2 + 90, 1110, "",spep_2 + 110, 0, 10, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 90, SE019, 72 );

SE020 = playSeVer2( spep_2 + 98, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE021 = playSeVer2( spep_2 + 98, 1110, "",spep_2 + 118, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 98, SE021, 79 );
setPitch( spep_2 + 98, SE021, -100 );
setTimeStretch( SE021, 0.93, 30, 4 );

SE022 = playSeVer2( spep_2 + 104, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE023 = playSeVer2( spep_2 + 104, 1110, "",spep_2 + 124, 0, 10, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 104, SE023, 84 );

SE024 = playSeVer2( spep_2 + 112, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE025 = playSeVer2( spep_2 + 112, 1110, "",spep_2 + 132, 0, 12, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 112, SE025, 84 );

SE026 = playSeVer2( spep_2 + 120, 1000, "", 0, 0, 0, -1);	--ラッシュ

SE027 = playSeVer2( spep_2 + 120, 1110, "", 0, 0, 0, -1);	--ラッシュ
setSeVolumeByWorkId( spep_2 + 120, SE027, 83 );

SE028 = playSeVer2( spep_2 + 130, 1110, "", 0, 0, 0, -1);	--ラッシュ


-- ** 次の準備 ** --
spep_3 = spep_2 + 148 -4;

-------------------------------------------------
-- かかと落としフェイント
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_15, 0x100, -1, 0, 0, 0); --かかと落としフェイント）
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 204 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 204 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 204 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 204 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 204 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_16, 0x80, -1, 0, 0, 0); --かかと落としフェイント）
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 204 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 204 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 204 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 204 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 204 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 28, 1, 0 );
setDisp( spep_3 -3 + 64, 1, 1 );
setDisp( spep_3 -3 + 170 , 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 -3 + 28, 1, 104 );
changeAnime( spep_3 -3 + 128, 1, 106 );
changeAnime( spep_3 -3 + 130, 1, 5 );

--setMoveKey( spep_3 -3 + 0, 1, 100.1, -12 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 105, -26.2 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 110.1, -40.7 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 115, -55 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 120.1, -69.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 125, -83.8 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 130.1, -98.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 135, -112.5 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 140.2, -127 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 145.1, -141.3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 150.2, -155.8 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 155.1, -170.1 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 100.1, -222.1 , 0 );
setMoveKey( spep_3 -3 + 27, 1, 96.4, -249 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 152.1, -16 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 133.6, -17.3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 140.5, -1.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 48.6, -25.5 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 89.2, -73.3 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 61.7, -20.1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 50.1, -14.4 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 67.4, -6.4 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 56.9, -26.1 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 56.8, -35.5 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 62.1, -39.5 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 67.2, -43.3 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 72.4, -47.3 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 77.8, -51.3 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 83.1, -55.3 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 88.3, -59.2 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 93.6, -63.2 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 98.9, -67.2 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 104.2, -71.2 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 109.5, -75.2 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 114.5, -79 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 119.8, -83 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 125.1, -87 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 130.4, -91 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 135.6, -95 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 140.9, -99 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 146.2, -103 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 151.5, -107 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 156.8, -111 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 162.1, -115 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 167.2, -118.7 , 0 );
setMoveKey( spep_3 -3 + 127, 1, 172.5, -122.7 , 0 );
setMoveKey( spep_3 -3 + 129, 1, 335, -58.2 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 623.9, -354.5 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 708.9, -363.9 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 652.4, -467.5 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 763.2, -511.2 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 737.4, -505.3 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 704.5, -472.9 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 562.2, -380.2 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 420.3, -287.8 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 278.7, -195.5 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 137.3, -103.3 , 0 );
setMoveKey( spep_3 -3 + 150, 1, -3.9, -11 , 0 );
setMoveKey( spep_3 -3 + 152, 1, -1.1, -11.6 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 1.9, -12.1 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 4.8, -12.6 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 7.9, -13.2 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 11.1, -14 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 14.3, -14.6 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 17.6, -15.2 , 0 );
setMoveKey( spep_3 -3 + 170, 1, 20.8, -15.8 , 0 );

--setScaleKey( spep_3 -3 + 0, 1, 2.07, 2.07 );
setScaleKey( spep_3 -2 + 2, 1, 2.1, 2.1 );
setScaleKey( spep_3 -3 + 4, 1, 2.13, 2.13 );
setScaleKey( spep_3 -3 + 6, 1, 2.16, 2.16 );
setScaleKey( spep_3 -3 + 8, 1, 2.19, 2.19 );
setScaleKey( spep_3 -3 + 10, 1, 2.23, 2.23 );
setScaleKey( spep_3 -3 + 12, 1, 2.26, 2.26 );
setScaleKey( spep_3 -3 + 14, 1, 2.29, 2.29 );
setScaleKey( spep_3 -3 + 16, 1, 2.32, 2.32 );
setScaleKey( spep_3 -3 + 18, 1, 2.35, 2.35 );
setScaleKey( spep_3 -3 + 20, 1, 2.39, 2.39 );
setScaleKey( spep_3 -3 + 22, 1, 2.42, 2.42 );
setScaleKey( spep_3 -3 + 24, 1, 2.07, 2.07 );
setScaleKey( spep_3 -3 + 27, 1, 2.22, 2.22 );
setScaleKey( spep_3 -3 + 64, 1, 2.16, 2.16 );
setScaleKey( spep_3 -3 + 66, 1, 2.22, 2.22 );
setScaleKey( spep_3 -3 + 68, 1, 2.29, 2.29 );
setScaleKey( spep_3 -3 + 70, 1, 2.35, 2.35 );
setScaleKey( spep_3 -3 + 72, 1, 2.42, 2.42 );
setScaleKey( spep_3 -3 + 74, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 76, 1, 2.55, 2.55 );
setScaleKey( spep_3 -3 + 78, 1, 2.62, 2.62 );
setScaleKey( spep_3 -3 + 80, 1, 2.68, 2.68 );
setScaleKey( spep_3 -3 + 82, 1, 2.75, 2.75 );
setScaleKey( spep_3 -3 + 84, 1, 2.81, 2.81 );
setScaleKey( spep_3 -3 + 86, 1, 2.88, 2.88 );
setScaleKey( spep_3 -3 + 88, 1, 2.95, 2.95 );
setScaleKey( spep_3 -3 + 90, 1, 3.01, 3.01 );
setScaleKey( spep_3 -3 + 92, 1, 3.08, 3.08 );
setScaleKey( spep_3 -3 + 94, 1, 3.15, 3.15 );
setScaleKey( spep_3 -3 + 96, 1, 3.21, 3.21 );
setScaleKey( spep_3 -3 + 98, 1, 3.28, 3.28 );
setScaleKey( spep_3 -3 + 100, 1, 3.35, 3.35 );
setScaleKey( spep_3 -3 + 102, 1, 3.41, 3.41 );
setScaleKey( spep_3 -3 + 104, 1, 3.48, 3.48 );
setScaleKey( spep_3 -3 + 106, 1, 3.55, 3.55 );
setScaleKey( spep_3 -3 + 108, 1, 3.61, 3.61 );
setScaleKey( spep_3 -3 + 110, 1, 3.68, 3.68 );
setScaleKey( spep_3 -3 + 112, 1, 3.75, 3.75 );
setScaleKey( spep_3 -3 + 114, 1, 3.81, 3.81 );
setScaleKey( spep_3 -3 + 116, 1, 3.88, 3.88 );
setScaleKey( spep_3 -3 + 118, 1, 3.95, 3.95 );
setScaleKey( spep_3 -3 + 120, 1, 4.01, 4.01 );
setScaleKey( spep_3 -3 + 122, 1, 4.08, 4.08 );
setScaleKey( spep_3 -3 + 124, 1, 4.15, 4.15 );
setScaleKey( spep_3 -3 + 127, 1, 4.21, 4.21 );
setScaleKey( spep_3 -3 + 129, 1, 4.09, 4.09 );
setScaleKey( spep_3 -3 + 130, 1, 2.54, 2.54 );
setScaleKey( spep_3 -3 + 132, 1, 2.21, 2.21 );
setScaleKey( spep_3 -3 + 134, 1, 1.87, 1.87 );
setScaleKey( spep_3 -3 + 136, 1, 1.52, 1.52 );
setScaleKey( spep_3 -3 + 138, 1, 1.16, 1.16 );
setScaleKey( spep_3 -3 + 140, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 142, 1, 0.76, 0.76 );
setScaleKey( spep_3 -3 + 144, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 146, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 148, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 150, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 152, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 154, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 156, 1, 0.57, 0.57 );
setScaleKey( spep_3 -3 + 158, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 160, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 162, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 164, 1, 0.44, 0.44 );
setScaleKey( spep_3 -3 + 170, 1, 0.41, 0.41 );

setRotateKey( spep_3 + 0, 1, -43.1 );
setRotateKey( spep_3 -3 + 27, 1, -43.1 );
setRotateKey( spep_3 -3 + 64, 1, 0 );
setRotateKey( spep_3 -3 + 72, 1, 0 );
setRotateKey( spep_3 -3 + 74, 1, 0.3 );
setRotateKey( spep_3 -3 + 76, 1, 1.3 );
setRotateKey( spep_3 -3 + 78, 1, 3 );
setRotateKey( spep_3 -3 + 80, 1, 0.7 );
setRotateKey( spep_3 -3 + 82, 1, 0 );
setRotateKey( spep_3 -3 + 127, 1, 0 );
setRotateKey( spep_3 -3 + 129, 1, -29.9 );
setRotateKey( spep_3 -3 + 130, 1, 57.8 );
setRotateKey( spep_3 -3 + 132, 1, 63.2 );
setRotateKey( spep_3 -3 + 134, 1, 68.5 );
setRotateKey( spep_3 -3 + 136, 1, 73.9 );
setRotateKey( spep_3 -3 + 138, 1, 79.3 );
setRotateKey( spep_3 -3 + 140, 1, 84.7 );
setRotateKey( spep_3 -3 + 170, 1, 84.7 );


-- ** 音 ** --
SE029 = playSeVer2( spep_3 + 18, 1183, "",spep_3 + 78, 8, 16, 0.6);	--回転してかかとおとし
setStartTimeMs( SE031,  450 );
setPitch( spep_3 + 18, SE031, -700 )
setTimeStretch( SE031, 0.53, 26, 4 );

SE030 = playSeVer2( spep_3 + 12, 1007, "", 0, 0, 0, -1);	--回転してかかとおとし

SE031 = playSeVer2( spep_3 + 14, 1004, "", 0, 0, 0, -1);	--回転してかかとおとし

SE032 = playSeVer2( spep_3 + 14, 1116, "",spep_3 + 80, 0, 20, 0.6);	--回転してかかとおとし
setTimeStretch( SE034, 1.42, 30, 4 );

SE033 = playSeVer2( spep_3 + 62, 1189, "", 0, 0, 0, -1);	--サマーソルトヒット

SE034 = playSeVer2( spep_3 + 70, 1006, "", 0, 0, 0, -1)	--サマーソルトヒット;
setSeVolumeByWorkId( spep_3 + 70, SE036, 79 );

SE035 = playSeVer2( spep_3 + 70, 1012, "", 0, 0, 0, -1);	--サマーソルトヒット

SE036 = playSeVer2( spep_3 + 126, 1003, "", 0, 0, 0, -1);	--蹴り飛ばし

SE037 = playSeVer2( spep_3 + 126, 1120, "", 0, 0, 0, -1);	--蹴り飛ばし

SE038 = playSeVer2( spep_3 + 194, 1072, "", 0, 8, 0, -1);	--飛び上がる
setStartTimeMs( SE038,  350 );

SE039 = playSeVer2( spep_3 + 180, 1117, "",spep_3 + 260, 0, 44, -1);	--飛び上がる


-- ** 次の準備 ** --
spep_4 = spep_3 + 204 -4;

-------------------------------------------------
-- 気弾を構える
-------------------------------------------------
-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0); --気弾を構える
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 228 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 228 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 228 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 228 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 228 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0); --気弾を構える
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 228 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 228 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 228 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 228 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 228 -4, base4_b, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_4 + 140;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
SE040 = playSeVer2( spep_4 + 44, 1003, "", 0, 0, 0, -1);	--腕広げる

SE041 = playSeVer2( spep_4 + 74, 1296, "",spep_4 + 226, 0, 6, -1);	--気弾溜め

SE042 = playSeVer2( spep_4 + 110, 1296, "",spep_4 + 226, 0, 6, -1);	--気弾溜め

SE043 = playSeVer2( spep_4 + 74, 1295, "",spep_4 + 226, 0, 6, -1);	--気弾溜め
setSeVolumeByWorkId( spep_4 + 74, SE043, 70 );

SE044 = playSeVer2( spep_4 + 74, 1252, "",spep_4 + 226, 0, 6, -1);	--気弾溜め

SE045 = playSeVer2( spep_4 + 140, 1018, "", 0, 0, 0, -1);	--顔カットイン


-- ** 次の準備 ** --
spep_c = spep_4 + 228 -4;

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
spep_5 = spep_c + 96;

-------------------------------------------------
-- 気弾連射
-------------------------------------------------
-- ** エフェクト等 ** --
base5_f = entryEffect( spep_5 + 0, SP_17, 0x100, -1, 0, 0, 0); --気弾連射
setEffMoveKey( spep_5 + 0, base5_f, 0, 0 , 0);
setEffMoveKey( spep_5 + 240 -4, base5_f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_f, 1.0, 1.0);
setEffScaleKey( spep_5 + 240 -4, base5_f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_f, 0);
setEffRotateKey( spep_5 + 240 -4, base5_f, 0);
setEffAlphaKey( spep_5 + 0, base5_f, 255);
setEffAlphaKey( spep_5 + 240 -5, base5_f, 255);
setEffAlphaKey( spep_5 + 240 -4, base5_f, 0);

base5_b = entryEffect( spep_5 + 0, SP_18, 0x80, -1, 0, 0, 0); --気弾連射
setEffMoveKey( spep_5 + 0, base5_b, 0, 0 , 0);
setEffMoveKey( spep_5 + 240 -4, base5_b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_b, 1.0, 1.0);
setEffScaleKey( spep_5 + 240 -4, base5_b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_b, 0);
setEffRotateKey( spep_5 + 240 -4, base5_b, 0);
setEffAlphaKey( spep_5 + 0, base5_b, 255);
setEffAlphaKey( spep_5 + 240 -5, base5_b, 255);
setEffAlphaKey( spep_5 + 240 -4, base5_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 62, 1, 1 );
setDisp( spep_5 -3 + 80, 1, 0 );

changeAnime( spep_5 -3 + 62, 1, 107 );

setMoveKey( spep_5 -3 + 62, 1, 0.2, -281.6 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 0.3, -278.1 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 0.9, -280.3 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 1.7, -288.2 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 3, -302.3 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 4.7, -322.7 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 6.7, -349.7 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 9.2, -383.5 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 12.1, -424.5 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 15.5, -472.9 , 0 );

setScaleKey( spep_5 -3 + 62, 1, 0.14, 0.14 );
setScaleKey( spep_5 -3 + 64, 1, 0.15, 0.15 );
setScaleKey( spep_5 -3 + 66, 1, 0.17, 0.17 );
setScaleKey( spep_5 -3 + 68, 1, 0.2, 0.2 );
setScaleKey( spep_5 -3 + 70, 1, 0.25, 0.25 );
setScaleKey( spep_5 -3 + 72, 1, 0.32, 0.32 );
setScaleKey( spep_5 -3 + 74, 1, 0.4, 0.4 );
setScaleKey( spep_5 -3 + 76, 1, 0.49, 0.49 );
setScaleKey( spep_5 -3 + 78, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 80, 1, 0.74, 0.74 );

setRotateKey( spep_5 -3 + 62, 1, 30.1 );
setRotateKey( spep_5 -3 + 64, 1, 29.9 );
setRotateKey( spep_5 -3 + 66, 1, 29.3 );
setRotateKey( spep_5 -3 + 68, 1, 28.4 );
setRotateKey( spep_5 -3 + 70, 1, 27.1 );
setRotateKey( spep_5 -3 + 72, 1, 25.5 );
setRotateKey( spep_5 -3 + 74, 1, 23.5 );
setRotateKey( spep_5 -3 + 76, 1, 21.1 );
setRotateKey( spep_5 -3 + 78, 1, 18.4 );
setRotateKey( spep_5 -3 + 80, 1, 15.3 );


-- ** 音 ** --
SE047 = playSeVer2( spep_5 + 0, 1358, "",spep_5 + 24, 0, 14, -1);	--連続気弾

SE048 = playSeVer2( spep_5 + 0, 1016, "", 0, 0, 0, -1);	--連続気弾

SE049 = playSeVer2( spep_5 + 10, 1358, "",spep_5 + 34, 0, 16, -1);	--連続気弾

SE050 = playSeVer2( spep_5 + 10, 1016, "", 0, 0, 0, -1);	--連続気弾
setSeVolumeByWorkId( spep_5 + 10, SE050, 97 );

SE051 = playSeVer2( spep_5 + 18, 1358, "",spep_5 + 42, 0, 14, -1);	--連続気弾
setSeVolumeByWorkId( spep_5 + 18, SE051, 90 );

SE052 = playSeVer2( spep_5 + 18, 1016, "", 0, 0, 0, -1);	--連続気弾
setPitch( spep_5 + 18, SE052, -200 );
setTimeStretch( SE052, 0.87, 30, 4 );

SE053 = playSeVer2( spep_5 + 28, 1358, "",spep_5 + 52, 0, 14, -1);	--連続気弾

SE054 = playSeVer2( spep_5 + 28, 1016, "", 0, 0, 0, -1);	--連続気弾

SE055 = playSeVer2( spep_5 + 38, 1358, "",spep_5 + 62, 0, 14, -1);	--連続気弾

SE056 = playSeVer2( spep_5 + 38, 1016, "", 0, 0, 0, -1);	--連続気弾
setPitch( spep_5 + 38, SE056, -200 );
setTimeStretch( SE056, 0.87, 30, 4 );

SE057 = playSeVer2( spep_5 + 48, 1358, "",spep_5 + 48, 0, 14, -1);	--連続気弾

SE058 = playSeVer2( spep_5 + 48, 1016, "", 0, 0, 0, -1);	--連続気弾
setSeVolumeByWorkId( spep_5 + 48, SE058, 94 );

SE059 = playSeVer2( spep_5 + 58, 1358, "",spep_5 + 82, 0, 14, -1);	--連続気弾

SE060 = playSeVer2( spep_5 + 58, 1016, "", 0, 0, 0, -1);	--連続気弾
setSeVolumeByWorkId( spep_5 + 780, SE060, 94 );

SE061 = playSeVer2( spep_5 + 66, 1358, "",spep_5 + 90, 0, 14, -1);	--連続気弾

SE062 = playSeVer2( spep_5 + 66, 1016, "", 0, 0, 0, -1);	--連続気弾
setSeVolumeByWorkId( spep_5 + 66, SE062, 89 );
setPitch( spep_5 + 66, SE062, 100 );
setTimeStretch( SE062, 1.07, 30, 4 );

SE063 = playSeVer2( spep_5 + 76, 1358, "",spep_5 + 94, 0, 10, 0.5);	--連続気弾

SE064 = playSeVer2( spep_5 + 76, 1016, "", spep_5 + 94, 0, 10, 0.5);	--連続気弾

SE065 = playSeVer2( spep_5 + 76, 1023, "", 0, 0, 0, -1);	--連続爆発

SE066 = playSeVer2( spep_5 + 80, 1008, "", 0, 0, 0, -1);	--連続爆発

SE067 = playSeVer2( spep_5 + 86, 1358, "",spep_5 + 104, 0, 10, 0.5);	--連続気弾

SE068 = playSeVer2( spep_5 + 86, 1016, "", spep_5 + 104, 0, 10, 0.5);	--連続気弾

SE069 = playSeVer2( spep_5 + 96, 1358, "",spep_5 + 112, 0, 8, 0.5);	--連続気弾

SE070 = playSeVer2( spep_5 + 96, 1016, "", spep_5 + 112, 0, 8, 0.5);	--連続気弾

SE071 = playSeVer2( spep_5 + 98, 1024, "", 0, 0, 0, -1);	--連続爆発
setSeVolumeByWorkId( spep_5 + 98, SE071, 99 );

SE072 = playSeVer2( spep_5 + 106, 1358, "",spep_5 + 122, 0, 8, 0.5);	--連続気弾

SE073 = playSeVer2( spep_5 + 106, 1016, "", spep_5 + 122, 0, 8, 0.5);	--連続気弾
setPitch( spep_5 + 106, SE073, -300 );
setTimeStretch( SE073, 0.8, 30, 4 );

SE074 = playSeVer2( spep_5 + 114, 1159, "", 0, 0, 0, -1);	--連続爆発
setSeVolumeByWorkId( spep_5 + 114, SE074, 75 );

SE075 = playSeVer2( spep_5 + 116, 1358, "",spep_5 + 132, 0, 8, 0.5);	--連続気弾

SE076 = playSeVer2( spep_5 + 116, 1016, "", spep_5 + 132, 0, 8, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 116, SE076, 84 );

SE077 = playSeVer2( spep_5 + 124, 1358, "",spep_5 + 142, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 124, SE077, 91 );

SE078 = playSeVer2( spep_5 + 124, 1016, "", spep_5 + 142, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 124, SE078, 89 );

SE079 = playSeVer2( spep_5 + 134, 1358, "",spep_5 + 152, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 134, SE079, 104 );

SE080 = playSeVer2( spep_5 + 134, 1016, "", spep_5 + 152, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 134, SE080, 84 );
setPitch( spep_5 + 134, SE080, -200 );
setTimeStretch( SE080, 0.87, 30, 4 );

SE081 = playSeVer2( spep_5 + 144, 1358, "",spep_5 + 162, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 144, SE081, 93 );

SE082 = playSeVer2( spep_5 + 144, 1016, "", spep_5 + 162, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 144, SE082, 91 );

SE083 = playSeVer2( spep_5 + 154, 1358, "",spep_5 + 172, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 154, SE083, 106 );

SE084 = playSeVer2( spep_5 + 154, 1016, "", spep_5 + 172, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 154, SE084, 91 );

SE085 = playSeVer2( spep_5 + 162, 1358, "",spep_5 + 180, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 162, SE085, 94 );

SE086 = playSeVer2( spep_5 + 162, 1016, "", spep_5 + 180, 0, 10, 0.5);	--連続気弾
setPitch( spep_5 + 162, SE086, 100 );
setTimeStretch( SE086, 1.07, 30, 4 );

SE087 = playSeVer2( spep_5 + 172, 1358, "",spep_5 + 190, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 172, SE087, 63 );

SE088 = playSeVer2( spep_5 + 172, 1016, "", spep_5 + 190, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 172, SE088, 88 );

SE089 = playSeVer2( spep_5 + 182, 1358, "",spep_5 + 200, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 182, SE089, 85 );

SE090 = playSeVer2( spep_5 + 182, 1016, "", spep_5 + 200, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 182, SE090, 81 );

SE091 = playSeVer2( spep_5 + 192, 1358, "",spep_5 + 210, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 192, SE091, 89 );

SE092 = playSeVer2( spep_5 + 192, 1016, "", spep_5 + 210, 0, 10, 0.5);	--連続気弾
setSeVolumeByWorkId( spep_5 + 192, SE092, 76 );


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 96);
endPhase( spep_5 + 240 -8);

end
