--1023590:一星龍_暗黒破壊弾
--sp_effect_a1_00335
--sp2318

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
SP_01 = 158866;	--待機から突進	ef_001
SP_02 = 158867;	--蹴り（足のみ）＋背景（前半）	ef_002		ef_009と同時再生
SP_03 = 158876;	--背景のみ	ef_009		ef_002と同時再生
SP_04 = 158868;	--蹴り	ef_003		ef_010と同時再生
SP_05 = 158877;	--背景のみ	ef_010		ef_003と同時再生
SP_06 = 158869;	--飛んでいく	ef_004		ef_011とef_012と同時再生
SP_07 = 158878;	--背景＋エフェクト	ef_011		ef_004とef_012と同時再生　真ん中の背景
SP_08 = 158879;	--背景＋エフェクト	ef_012		ef_004とef_011と同時再生　１番奥の背景
SP_09 = 158870;	--背景と爆発	ef_005
SP_10 = 158871;	--構え	ef_006
SP_11 = 158873;	--気弾発射	ef_007		ef_013と同時再生
SP_12 = 158880;	--背景＋爆煙	ef_013		ef_007及びef_007r （敵側時）に同時再生
SP_13 = 158875;	--ヒット爆発	ef_008

--エフェクト(敵)
SP_14 = 158993;	--待機から突進	ef_001r		敵側用
SP_15 = 158994;	--蹴り（足のみ）＋背景（前半）	ef_002r		敵側用　ef_009と同時再生
SP_16 = 158995;	--蹴り	ef_003r		敵側用　ef_010と同時再生
SP_17 = 158996;	--飛んでいく（テキスト込み）	ef_004r		敵側用　ef_011とef_012と同時再生
SP_18 = 158997;	--背景と爆発	ef_005r		敵側用
SP_19 = 158872;	--構え	ef_006r		敵側
SP_20 = 158874;	--気弾発射	ef_007r		ef_013と同時再生　敵側


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
-- 待機から突進
-------------------------------------------------
-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --待機から突進
setEffMoveKey( spep_1 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_1 + 88 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_1 + 88 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1, 0);
setEffRotateKey( spep_1 + 88 -4, base1, 0);
setEffAlphaKey( spep_1 + 0, base1, 255);
setEffAlphaKey( spep_1 + 88 -5, base1, 255);
setEffAlphaKey( spep_1 + 88 -4, base1, 0);


-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 白フェード ** --
entryFade( spep_1 + 78 -5, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1);	--入り

SE002 = playSeVer2( spep_1 + 72, 9, "",spep_1 + 124, 0, 28, -1);	--向かっていく

SE003 = playSeVer2( spep_1 + 72, 1182, "", 0, 0, 0, -1);	--向かっていく

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1  +50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
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
spep_2 = spep_1 + 88 -4;
-------------------------------------------------
-- 蹴り（足のみ）
-------------------------------------------------
-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); --蹴り（足のみ）＋背景（前半）	ef_002		ef_009と同時再生
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 48 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 48 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 48 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 48 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 48 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); --背景のみ	ef_009		ef_002と同時再生
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 48 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 48 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 48 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 48 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 48 -4, base2_b, 0);

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 14, 1, 1 );
setDisp( spep_2 -4 + 48, 1, 0 );

changeAnime( spep_2 -3 + 14, 1, 107 );

setMoveKey( spep_2 -3 + 14, 1, -57.2, 158.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -83.1, 184 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -7, 232.4 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -7.7, 92.5 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 2.1, 82 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -57.2, 158.8 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -83.1, 184 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -7, 232.4 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -7.7, 92.5 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 2.1, 82 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -57.2, 158.8 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -83.1, 184 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -7, 232.4 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -20.9, 242.4 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -7.7, 92.5 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 2.1, 82 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -57.2, 158.9 , 0 );
setMoveKey( spep_2 -5 + 48, 1, -83.1, 184.1 , 0 );

setScaleKey( spep_2 -3 + 14, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 16, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 18, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 20, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 26, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 28, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 30, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 36, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 38, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 40, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 42, 1, 1.47, 1.47 );
setScaleKey( spep_2 -5 + 48, 1, 1.47, 1.47 );

setRotateKey( spep_2 -3 + 14, 1, -43.4 );
setRotateKey( spep_2 -5 + 48, 1, -43.4 );


-- ** 音 ** --
SE004 = playSeVer2( spep_2 + 2, 1003, "", 0, 0, 0, -1);	--蹴り

SE005 = playSeVer2( spep_2 + 14, 1187, "", 0, 0, 0, -1);	--蹴り
setSeVolumeByWorkId( spep_2 + 14, SE005, 83 );

SE006 = playSeVer2( spep_2 + 14, 1153, "", 0, 0, 0, -1);	--蹴り
setSeVolumeByWorkId( spep_2 + 14, SE006, 86 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 48 -4;

-------------------------------------------------
-- 蹴り
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); --蹴り	ef_003		ef_010と同時再生
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 48 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 48 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 48 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 48 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 48 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0); --背景のみ	ef_010		ef_003と同時再生
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 48 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 48 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 48 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 48 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 48 -4, base3_b, 0);


-- ** 集中線 ** --
shuchusen_3 = entryEffectLife( spep_3 + 0, 906, 48 -5, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen_3, 48 -5, 20 );

setEffMoveKey( spep_3 + 0, shuchusen_3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 48 -5, shuchusen_3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen_3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 48 -5, shuchusen_3, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen_3, 0 );
setEffRotateKey( spep_3 + 48 -5, shuchusen_3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen_3, 255 );
setEffAlphaKey( spep_3 + 48 -5, shuchusen_3, 255 );


-- ** 白フェード ** --
entryFade( spep_3 + 38 -5, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -4 + 48, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );

-- setMoveKey( spep_3 -3 + 0, 1, 124.6, -97 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 168.6, -50.1 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 184.1, -20.1 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 194.8, -17.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 203, 2.2 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 209.7, 2.2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 215.2, 15.6 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 219.9, 14.8 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 224, 25.6 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 227.4, 24.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 230.5, 33.3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 233.1, 31.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 235.4, 38.9 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 237.3, 37.2 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 239.1, 42.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 240.5, 41.7 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 241.8, 45.4 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 242.8, 44.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 243.7, 47.4 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 244.4, 46.8 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 245, 48.7 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 245.4, 48.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 245.7, 49.4 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 245.9, 49 , 0 );
setMoveKey( spep_3 -5 + 48, 1, 246, 49.6 , 0 );

-- setScaleKey( spep_3 -3 + 0, 1, 1, 1 );
setScaleKey( spep_3 -2 + 2, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 4, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 6, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 8, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 10, 1, 0.44, 0.44 );
setScaleKey( spep_3 -3 + 12, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 14, 1, 0.37, 0.37 );
setScaleKey( spep_3 -3 + 16, 1, 0.34, 0.34 );
setScaleKey( spep_3 -3 + 18, 1, 0.32, 0.32 );
setScaleKey( spep_3 -3 + 20, 1, 0.3, 0.3 );
setScaleKey( spep_3 -3 + 22, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 24, 1, 0.27, 0.27 );
setScaleKey( spep_3 -3 + 26, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 28, 1, 0.25, 0.25 );
setScaleKey( spep_3 -3 + 30, 1, 0.24, 0.24 );
setScaleKey( spep_3 -3 + 32, 1, 0.23, 0.23 );
setScaleKey( spep_3 -3 + 34, 1, 0.22, 0.22 );
setScaleKey( spep_3 -3 + 36, 1, 0.21, 0.21 );
setScaleKey( spep_3 -3 + 40, 1, 0.21, 0.21 );
setScaleKey( spep_3 -3 + 42, 1, 0.2, 0.2 );
setScaleKey( spep_3 -5 + 48, 1, 0.2, 0.2 );

-- setRotateKey( spep_3 -3 + 0, 1, -23.5 );
setRotateKey( spep_3 -2 + 2, 1, -23.4 );
setRotateKey( spep_3 -3 + 8, 1, -23.4 );
setRotateKey( spep_3 -3 + 10, 1, -23.3 );
setRotateKey( spep_3 -5 + 48, 1, -23.3 );


-- ** 音 ** --
SE007 = playSeVer2( spep_3 + 0, 1183, "",spep_3 + 92, 0, 18, -1);	--敵飛んでいく
setSeVolumeByWorkId( spep_3 + 0, SE007, 79 );

SE008 = playSeVer2( spep_3 + 0, 1121, "",spep_3 + 92, 0, 18, -1);	--敵飛んでいく
setSeVolumeByWorkId( spep_3 + 0, SE008, 77 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 48 -4;


-------------------------------------------------
-- 飛んでいく
-------------------------------------------------
-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0); --飛んでいく	ef_004		ef_011とef_012と同時再生
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 120 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 120 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 120 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 120 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 120 -4, base4_f, 0);

base4_m = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0); --背景＋エフェクト	ef_012		ef_004とef_011と同時再生　１番奥の背景
setEffMoveKey( spep_4 + 0, base4_m, 0, 0 , 0);
setEffMoveKey( spep_4 + 120 -4, base4_m, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_m, 1.0, 1.0);
setEffScaleKey( spep_4 + 120 -4, base4_m, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_m, 0);
setEffRotateKey( spep_4 + 120 -4, base4_m, 0);
setEffAlphaKey( spep_4 + 0, base4_m, 255);
setEffAlphaKey( spep_4 + 120 -5, base4_m, 255);
setEffAlphaKey( spep_4 + 120 -4, base4_m, 0);

base4_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0); --背景＋エフェクト	ef_012		ef_004とef_011と同時再生　１番奥の背景
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 120 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 120 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 120 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 120 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 120 -4, base4_b, 0);


-- ** 白フェード ** --
entryFade( spep_4 + 110 -5, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 20, 1, 1 );
setDisp( spep_4 -3 + 40, 1, 0 );
setDisp( spep_4 -3 + 70, 1, 1 );
setDisp( spep_4 -3 + 88, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );
changeAnime( spep_4 -3 + 70, 1, 107 );

setMoveKey( spep_4 -3 + 20, 1, -147.1, 2.5 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -61, 20.7 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -11.8, 20.4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 21.3, 30.7 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 45, 27.9 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 62.1, 35.2 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 74.4, 33.1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 83, 38 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 88.5, 35.2 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 91.5, 38.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 92.4, 36.8 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -52.4, 72.8 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 201.2, 108.3 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 326.7, 107 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 416.8, 125.6 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 487.3, 121.2 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 544.6, 136.4 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 591.6, 131.8 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 629.7, 143.6 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 658.9, 137.8 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 675.4, 147 , 0 );

setScaleKey( spep_4 -3 + 20, 1, 0.02, 0.02 );
setScaleKey( spep_4 -3 + 22, 1, 0.05, 0.05 );
setScaleKey( spep_4 -3 + 24, 1, 0.06, 0.06 );
setScaleKey( spep_4 -3 + 26, 1, 0.07, 0.07 );
setScaleKey( spep_4 -3 + 28, 1, 0.08, 0.08 );
setScaleKey( spep_4 -3 + 30, 1, 0.09, 0.09 );
setScaleKey( spep_4 -3 + 34, 1, 0.09, 0.09 );
setScaleKey( spep_4 -3 + 36, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 40, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 70, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 72, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 74, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 76, 1, 0.86, 0.86 );
setScaleKey( spep_4 -3 + 78, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 80, 1, 1.07, 1.07 );
setScaleKey( spep_4 -3 + 82, 1, 1.15, 1.15 );
setScaleKey( spep_4 -3 + 84, 1, 1.22, 1.22 );
setScaleKey( spep_4 -3 + 86, 1, 1.27, 1.27 );
setScaleKey( spep_4 -3 + 88, 1, 1.3, 1.3 );

setRotateKey( spep_4 -3 + 20, 1, 0 );
setRotateKey( spep_4 -3 + 40, 1, 0 );
setRotateKey( spep_4 -3 + 42, 1, 0 );
setRotateKey( spep_4 -3 + 70, 1, 0 );
setRotateKey( spep_4 -3 + 88, 1, 0 );


-- ** 音 ** --
SE009 = playSeVer2( spep_4 + 18, 1061, "", 0, 0, 0, -1);	--ビル爆発１
setSeVolumeByWorkId( spep_4 + 18, SE009, 72 );

SE010 = playSeVer2( spep_4 + 18, 1033, "", 0, 0, 0, -1);	--ビル爆発１

SE011 = playSeVer2( spep_4 + 18, 1024, "", 0, 0, 0, -1);	--ビル爆発１

SE012 = playSeVer2( spep_4 + 52, 1061, "", 0, 0, 0, -1);	--ビル爆発２
setSeVolumeByWorkId( spep_4 + 52, SE012, 89 );

SE013 = playSeVer2( spep_4 + 52, 1159, "",spep_4 + 162, 0, 54, -1);	--ビル爆発２
setSeVolumeByWorkId( spep_4 + 52, SE013, 88 );

SE014 = playSeVer2( spep_4 + 52, 1024, "", 0, 0, 0, -1);	--ビル爆発２
setSeVolumeByWorkId( spep_4 + 52, SE014, 80 );

SE015 = playSeVer2( spep_4 + 76, 1278, "",spep_4 + 158, 0, 30, -1);	--追いかける

SE016 = playSeVer2( spep_4 + 88, 1167, "",spep_4 + 146, 0, 24, 0.5);	--追いかける
setSeVolumeByWorkId( spep_4 + 88, SE016, 111 );
setPitch( spep_4 + 88, SE016, -400 );
setTimeStretch( SE016, 0.73, 30, 4 );

SE017 = playSeVer2( spep_4 + 88, 1116, "",spep_4 + 124, 0, 18, -1);	--追いかける
setSeVolumeByWorkId( spep_4 + 88, SE017, 141 );


-- ** 次の準備 ** --
spep_5 = spep_4 + 120 -4;

-------------------------------------------------
-- 背景と爆発
-------------------------------------------------
-- ** エフェクト等 ** --
base5 = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0); --背景と爆発	ef_005
setEffMoveKey( spep_5 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_5 + 88 -4, base5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5, 1.0, 1.0);
setEffScaleKey( spep_5 + 88 -4, base5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5, 0);
setEffRotateKey( spep_5 + 88 -4, base5, 0);
setEffAlphaKey( spep_5 + 0, base5, 255);
setEffAlphaKey( spep_5 + 88 -5, base5, 255);
setEffAlphaKey( spep_5 + 88 -4, base5, 0);


-- ** 集中線 ** --
shuchusen_5 = entryEffectLife( spep_5 + 0, 906, 88 -5, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen_5, 88 -5, 20 );

setEffMoveKey( spep_5 + 0, shuchusen_5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 88 -5, shuchusen_5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen_5, 1.6, 1.6 );
setEffScaleKey( spep_5 + 88 -5, shuchusen_5, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen_5, 0 );
setEffRotateKey( spep_5 + 88 -5, shuchusen_5, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen_5, 255 );
setEffAlphaKey( spep_5 + 88 -5, shuchusen_5, 255 );


-- ** 白フェード ** --
entryFade( spep_5 + 78 -5, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 28, 1, 0 );

changeAnime( spep_5 + 0, 1, 108 );

-- setMoveKey( spep_5 -3 + 0, 1, -327, 9.9 , 0 );
setMoveKey( spep_5 -2 + 2, 1, -281.7, 11.6 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -242.4, 12.9 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -208.3, 14 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -178.4, 15 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -152, 16 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -128.7, 16.7 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -108.2, 17.4 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -90.1, 18 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -74.1, 18.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -60.2, 19.1 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -48.2, 19.5 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -37.9, 19.9 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -29.2, 20.1 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -29.2, 20.1 , 0 );

-- setScaleKey( spep_5 -3 + 0, 1, 3, 3 );
setScaleKey( spep_5 -2 + 2, 1, 2.62, 2.62 );
setScaleKey( spep_5 -3 + 4, 1, 2.29, 2.29 );
setScaleKey( spep_5 -3 + 6, 1, 2, 2 );
setScaleKey( spep_5 -3 + 8, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 10, 1, 1.52, 1.52 );
setScaleKey( spep_5 -3 + 12, 1, 1.33, 1.33 );
setScaleKey( spep_5 -3 + 14, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 16, 1, 1, 1 );
setScaleKey( spep_5 -3 + 18, 1, 0.86, 0.86 );
setScaleKey( spep_5 -3 + 20, 1, 0.75, 0.75 );
setScaleKey( spep_5 -3 + 22, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 24, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 26, 1, 0.48, 0.48 );
setScaleKey( spep_5 -3 + 28, 1, 0.48, 0.48 );

-- setRotateKey( spep_5 -3 + 0, 1, 0 );
setRotateKey( spep_5 -2 + 2, 1, 4.7 );
setRotateKey( spep_5 -3 + 4, 1, 8.4 );
setRotateKey( spep_5 -3 + 6, 1, 11.6 );
setRotateKey( spep_5 -3 + 8, 1, 14.4 );
setRotateKey( spep_5 -3 + 10, 1, 16.7 );
setRotateKey( spep_5 -3 + 12, 1, 18.8 );
setRotateKey( spep_5 -3 + 14, 1, 20.6 );
setRotateKey( spep_5 -3 + 16, 1, 22.2 );
setRotateKey( spep_5 -3 + 18, 1, 23.6 );
setRotateKey( spep_5 -3 + 20, 1, 24.8 );
setRotateKey( spep_5 -3 + 22, 1, 25.8 );
setRotateKey( spep_5 -3 + 24, 1, 26.6 );
setRotateKey( spep_5 -3 + 26, 1, 27.4 );
setRotateKey( spep_5 -3 + 28, 1, 27.4 );


-- ** 音 ** --
SE018 = playSeVer2( spep_5 + 0, 1183, "",spep_5 + 92, 0, 18, -1);	--敵飛んでいく

SE019 = playSeVer2( spep_5 + 32, 1159, "",spep_5 + 222, 0, 54, -1);	--ビル爆発3
setSeVolumeByWorkId( spep_5 + 32, SE019, 91 );

SE020 = playSeVer2( spep_5 + 32, 1017, "", 0, 0, 0, -1);	--ビル爆発3

SE021 = playSeVer2( spep_5 + 32, 1188, "", 0, 0, 0, -1);	--ビル爆発3
setSeVolumeByWorkId( spep_5 + 32, SE021, 88 );


-- ** 次の準備 ** --
spep_6 = spep_5 + 88 -4;

-------------------------------------------------
-- 構え
-------------------------------------------------

-- ** エフェクト等 ** --
base6 = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0); --構え	ef_006
setEffMoveKey( spep_6 + 0, base6, 0, 0 , 0);
setEffMoveKey( spep_6 + 124 -4, base6, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6, 1.0, 1.0);
setEffScaleKey( spep_6 + 124 -4, base6, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6, 0);
setEffRotateKey( spep_6 + 124 -4, base6, 0);
setEffAlphaKey( spep_6 + 0, base6, 255);
setEffAlphaKey( spep_6 + 124 -5, base6, 255);
setEffAlphaKey( spep_6 + 124 -4, base6, 0);


-- ** 集中線 ** --
shuchusen_6 = entryEffectLife( spep_6 + 38, 906, 124 -5 -38, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 38, shuchusen_6, 124 -5 -38, 20 );
setEffMoveKey( spep_6 + 38, shuchusen_6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 124 -5, shuchusen_6, 0, 0 , 0 );
setEffScaleKey( spep_6 + 38, shuchusen_6, 1.6, 1.6 );
setEffScaleKey( spep_6 + 124 -5, shuchusen_6, 1.6, 1.6 );
setEffRotateKey( spep_6 + 38, shuchusen_6, 0 );
setEffRotateKey( spep_6 + 124 -5, shuchusen_6, 0 );
setEffAlphaKey( spep_6 + 38, shuchusen_6, 0 );
setEffAlphaKey( spep_6 + 51, shuchusen_6, 0 );
setEffAlphaKey( spep_6 + 52, shuchusen_6, 255 );
setEffAlphaKey( spep_6 + 124 -5, shuchusen_6, 255 );


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_6 + 38;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 白フェード ** --
entryFade( spep_6 + 114 -5, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
SE022 = playSeVer2( spep_6 + 24, 1004, "", 0, 0, 0, -1);	--構える

SE023 = playSeVer2( spep_6 + 34, 1233, "", 0, 0, 0, -1);	--構える

SE024 = playSeVer2( spep_6 + 46, 1018, "", 0, 0, 0, -1);	--顔カットイン

SE025 = playSeVer2( spep_6 + 46, 1006, "", 0, 0, 0, -1);	--構える


-- ** 次の準備 ** --
spep_c = spep_6 + 124 -4;

-------------------------------------------------
--カードカットイン(94F)
-------------------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
--setEffReplaceTexture( speff2, 1, 1);
--setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_c, SE_05);
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
spep_7 = spep_c + 94;

-------------------------------------------------
-- 気弾発射
-------------------------------------------------
-- ** エフェクト等 ** --
base7_f = entryEffect( spep_7 + 0, SP_11, 0x100, -1, 0, 0, 0); --気弾発射	ef_007		ef_013と同時再生
setEffMoveKey( spep_7 + 0, base7_f, 0, 0 , 0);
setEffMoveKey( spep_7 + 76 -4, base7_f, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7_f, 1.0, 1.0);
setEffScaleKey( spep_7 + 76 -4, base7_f, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7_f, 0);
setEffRotateKey( spep_7 + 76 -4, base7_f, 0);
setEffAlphaKey( spep_7 + 0, base7_f, 255);
setEffAlphaKey( spep_7 + 76 -5, base7_f, 255);
setEffAlphaKey( spep_7 + 76 -4, base7_f, 0);

base7_b = entryEffect( spep_7 + 0, SP_12, 0x80, -1, 0, 0, 0); --背景＋爆煙	ef_013		ef_007及びef_007r （敵側時）に同時再生
setEffMoveKey( spep_7 + 0, base7_b, 0, 0 , 0);
setEffMoveKey( spep_7 + 76 -4, base7_b, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7_b, 1.0, 1.0);
setEffScaleKey( spep_7 + 76 -4, base7_b, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7_b, 0);
setEffRotateKey( spep_7 + 76 -4, base7_b, 0);
setEffAlphaKey( spep_7 + 0, base7_b, 255);
setEffAlphaKey( spep_7 + 76 -5, base7_b, 255);
setEffAlphaKey( spep_7 + 76 -4, base7_b, 0);


-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 白フェード ** --
entryFade( spep_7 + 66 -5, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
-- setDisp( spep_7 -5 + 76, 1, 0 );
setDisp( spep_7 -4 + 76, 1, 0 );

changeAnime( spep_7 + 0, 1, 106 );

-- setMoveKey( spep_7 -3 + 0, 1, 198.6, 151.8 , 0 );
setMoveKey( spep_7 -2 + 2, 1, 185.1, 141 , 0 );
setMoveKey( spep_7 -3 + 4, 1, 180.9, 137.6 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 178.1, 135.4 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 176.1, 133.7 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 174.5, 132.5 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 173.2, 131.5 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 172.2, 130.7 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 171.4, 130.1 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 170.8, 129.5 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 170.3, 129.1 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 169.9, 128.7 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 169.5, 128.5 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 169.3, 128.3 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 169, 128.1 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 168.9, 128 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 168.9, 128 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 168.8, 127.9 , 0 );
setMoveKey( spep_7 -5 + 76, 1, 168.8, 127.9 , 0 );

-- setScaleKey( spep_7 -3 + 0, 1, 0.95, 0.95 );
setScaleKey( spep_7 -2 + 2, 1, 0.81, 0.81 );
setScaleKey( spep_7 -3 + 4, 1, 0.77, 0.77 );
setScaleKey( spep_7 -3 + 6, 1, 0.74, 0.74 );
setScaleKey( spep_7 -3 + 8, 1, 0.72, 0.72 );
setScaleKey( spep_7 -3 + 10, 1, 0.71, 0.71 );
setScaleKey( spep_7 -3 + 12, 1, 0.69, 0.69 );
setScaleKey( spep_7 -3 + 14, 1, 0.68, 0.68 );
setScaleKey( spep_7 -3 + 16, 1, 0.67, 0.67 );
setScaleKey( spep_7 -3 + 18, 1, 0.67, 0.67 );
setScaleKey( spep_7 -3 + 20, 1, 0.66, 0.66 );
setScaleKey( spep_7 -3 + 24, 1, 0.66, 0.66 );
setScaleKey( spep_7 -3 + 26, 1, 0.65, 0.65 );
setScaleKey( spep_7 -5 + 76, 1, 0.65, 0.65 );

setRotateKey( spep_7 + 0, 1, -51.2 );
setRotateKey( spep_7 -5 + 76, 1, -51.2 );


-- ** 音 ** --
SE027 = playSeVer2( spep_7 + 0, 1296, "",spep_7 + 34, 4, 16, -1);	--気弾溜め
setSeVolumeByWorkId( spep_7 + 0, SE027, 92 );
setStartTimeMs( SE027,  433 );

SE028 = playSeVer2( spep_7 + 0, 1257, "", 0, 0, 0, 0.6);	--気弾溜め
setSeVolumeByWorkId( spep_7 + 0, SE028, 86 );

SE029 = playSeVer2( spep_7 + 0, 1224, "",spep_7 + 42, 0, 12, 0.6);	--気弾溜め
setSeVolumeByWorkId( spep_7 + 0, SE029, 86 );

SE030 = playSeVer2( spep_7 + 14, 1225, "", 0, 0, 0, -1);	--気弾溜め

SE031 = playSeVer2( spep_7 + 60, 1128, "",spep_7 + 128, 14, 30, 0.5);	--気弾飛んでいく
setStartTimeMs( SE031,  600 );

SE032 = playSeVer2( spep_7 + 36, 1027, "", 0, 0, 0, -1);	--気弾発射
setSeVolumeByWorkId( spep_7 + 36, SE032, 83 );

SE033 = playSeVer2( spep_7 + 36, 1213, "",spep_7 + 124, 0, 14, -1);	--気弾発射
setSeVolumeByWorkId( spep_7 + 36, SE033, 88 );


-- ** 次の準備 ** --
spep_8 = spep_7 + 76 -4;

-------------------------------------------------
-- ヒット爆発
-------------------------------------------------

-- ** エフェクト等 ** --
base8 = entryEffect( spep_8 + 0, SP_13, 0x80, -1, 0, 0, 0); --ヒット爆発	ef_008
setEffMoveKey( spep_8 + 0, base8, 0, 0 , 0);
setEffMoveKey( spep_8 + 150 -4, base8, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base8, 1.0, 1.0);
setEffScaleKey( spep_8 + 150 -4, base8, 1.0, 1.0);
setEffRotateKey( spep_8 + 0, base8, 0);
setEffRotateKey( spep_8 + 150 -4, base8, 0);
setEffAlphaKey( spep_8 + 0, base8, 255);
setEffAlphaKey( spep_8 + 150 -5, base8, 255);
setEffAlphaKey( spep_8 + 150 -4, base8, 0);


-- ** 音 ** --
SE034 = playSeVer2( spep_8 + 0, 1021, "", 0, 0, 0, -1);	--気弾飛んでいく

SE035 = playSeVer2( spep_8 + 32, 1011, "", 0, 0, 0, -1);	--気弾ヒット

SE036 = playSeVer2( spep_8 + 32, 1024, "", 0, 0, 0, -1);	--気弾ヒット

SE037 = playSeVer2( spep_8 + 52, 1068, "", 0, 0, 0, -1);	--爆発

SE038 = playSeVer2( spep_8 + 52, 1160, "", 0, 0, 0, -1);	--爆発


-- ** ダメージ表示 ** --
dealDamage( spep_8 + 56 -16);
endPhase( spep_8 + 150 -8);

else


------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 待機から突進
-------------------------------------------------
-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_14, 0x80, -1, 0, 0, 0); --待機から突進	ef_001r		敵側用
setEffMoveKey( spep_1 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_1 + 88 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_1 + 88 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1, 0);
setEffRotateKey( spep_1 + 88 -4, base1, 0);
setEffAlphaKey( spep_1 + 0, base1, 255);
setEffAlphaKey( spep_1 + 88 -5, base1, 255);
setEffAlphaKey( spep_1 + 88 -4, base1, 0);


-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 白フェード ** --
entryFade( spep_1 + 78 -5, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
SE001 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1);	--入り

SE002 = playSeVer2( spep_1 + 72, 9, "",spep_1 + 124, 0, 28, -1);	--向かっていく

SE003 = playSeVer2( spep_1 + 72, 1182, "", 0, 0, 0, -1);	--向かっていく

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
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
spep_2 = spep_1 + 88 -4;

-------------------------------------------------
-- 蹴り（足のみ）
-------------------------------------------------
-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_15, 0x100, -1, 0, 0, 0); --蹴り（足のみ）＋背景（前半）	ef_002r		敵側用　ef_009と同時再生
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 48 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 48 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 48 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 48 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 48 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); --背景のみ	ef_009		ef_002と同時再生
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 48 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 48 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 48 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 48 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 48 -4, base2_b, 0);

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 14, 1, 1 );
setDisp( spep_2 -4 + 48, 1, 0 );

changeAnime( spep_2 -3 + 14, 1, 107 );

setMoveKey( spep_2 -3 + 14, 1, -57.2, 158.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -83.1, 184 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -7, 232.4 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -7.7, 92.5 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 2.1, 82 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -57.2, 158.8 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -83.1, 184 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -7, 232.4 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -7.7, 92.5 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 2.1, 82 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -57.2, 158.8 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -83.1, 184 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -7, 232.4 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -20.9, 242.4 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -7.7, 92.5 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 2.1, 82 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -57.2, 158.9 , 0 );
setMoveKey( spep_2 -5 + 48, 1, -83.1, 184.1 , 0 );

setScaleKey( spep_2 -3 + 14, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 16, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 18, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 20, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 26, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 28, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 30, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 36, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 38, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 40, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 42, 1, 1.47, 1.47 );
setScaleKey( spep_2 -5 + 48, 1, 1.47, 1.47 );

setRotateKey( spep_2 -3 + 14, 1, -43.4 );
setRotateKey( spep_2 -5 + 48, 1, -43.4 );


-- ** 音 ** --
SE004 = playSeVer2( spep_2 + 2, 1003, "", 0, 0, 0, -1);	--蹴り

SE005 = playSeVer2( spep_2 + 14, 1187, "", 0, 0, 0, -1);	--蹴り
setSeVolumeByWorkId( spep_2 + 14, SE005, 83 );

SE006 = playSeVer2( spep_2 + 14, 1153, "", 0, 0, 0, -1);	--蹴り
setSeVolumeByWorkId( spep_2 + 14, SE006, 86 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 48 -4;

-------------------------------------------------
-- 蹴り
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_16, 0x100, -1, 0, 0, 0); --蹴り	ef_003r		敵側用　ef_010と同時再生
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 48 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 48 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 48 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 48 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 48 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0); --背景のみ	ef_010		ef_003と同時再生
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 48 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 48 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 48 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 48 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 48 -4, base3_b, 0);


-- ** 集中線 ** --
shuchusen_3 = entryEffectLife( spep_3 + 0, 906, 48 -5, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen_3, 48 -5, 20 );

setEffMoveKey( spep_3 + 0, shuchusen_3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 48 -5, shuchusen_3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen_3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 48 -5, shuchusen_3, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen_3, 0 );
setEffRotateKey( spep_3 + 48 -5, shuchusen_3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen_3, 255 );
setEffAlphaKey( spep_3 + 48 -5, shuchusen_3, 255 );


-- ** 白フェード ** --
entryFade( spep_3 + 38 -5, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -4 + 48, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );

-- setMoveKey( spep_3 -3 + 0, 1, 124.6, -97 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 168.6, -50.1 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 184.1, -20.1 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 194.8, -17.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 203, 2.2 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 209.7, 2.2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 215.2, 15.6 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 219.9, 14.8 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 224, 25.6 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 227.4, 24.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 230.5, 33.3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 233.1, 31.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 235.4, 38.9 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 237.3, 37.2 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 239.1, 42.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 240.5, 41.7 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 241.8, 45.4 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 242.8, 44.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 243.7, 47.4 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 244.4, 46.8 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 245, 48.7 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 245.4, 48.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 245.7, 49.4 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 245.9, 49 , 0 );
setMoveKey( spep_3 -5 + 48, 1, 246, 49.6 , 0 );

-- setScaleKey( spep_3 -3 + 0, 1, 1, 1 );
setScaleKey( spep_3 -2 + 2, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 4, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 6, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 8, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 10, 1, 0.44, 0.44 );
setScaleKey( spep_3 -3 + 12, 1, 0.4, 0.4 );
setScaleKey( spep_3 -3 + 14, 1, 0.37, 0.37 );
setScaleKey( spep_3 -3 + 16, 1, 0.34, 0.34 );
setScaleKey( spep_3 -3 + 18, 1, 0.32, 0.32 );
setScaleKey( spep_3 -3 + 20, 1, 0.3, 0.3 );
setScaleKey( spep_3 -3 + 22, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 24, 1, 0.27, 0.27 );
setScaleKey( spep_3 -3 + 26, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 28, 1, 0.25, 0.25 );
setScaleKey( spep_3 -3 + 30, 1, 0.24, 0.24 );
setScaleKey( spep_3 -3 + 32, 1, 0.23, 0.23 );
setScaleKey( spep_3 -3 + 34, 1, 0.22, 0.22 );
setScaleKey( spep_3 -3 + 36, 1, 0.21, 0.21 );
setScaleKey( spep_3 -3 + 40, 1, 0.21, 0.21 );
setScaleKey( spep_3 -3 + 42, 1, 0.2, 0.2 );
setScaleKey( spep_3 -5 + 48, 1, 0.2, 0.2 );

-- setRotateKey( spep_3 -3 + 0, 1, -23.5 );
setRotateKey( spep_3 -2 + 2, 1, -23.4 );
setRotateKey( spep_3 -3 + 8, 1, -23.4 );
setRotateKey( spep_3 -3 + 10, 1, -23.3 );
setRotateKey( spep_3 -5 + 48, 1, -23.3 );


-- ** 音 ** --
SE007 = playSeVer2( spep_3 + 0, 1183, "",spep_3 + 92, 0, 18, -1);	--敵飛んでいく
setSeVolumeByWorkId( spep_3 + 0, SE007, 79 );

SE008 = playSeVer2( spep_3 + 0, 1121, "",spep_3 + 92, 0, 18, -1);	--敵飛んでいく
setSeVolumeByWorkId( spep_3 + 0, SE008, 77 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 48 -4;


-------------------------------------------------
-- 飛んでいく
-------------------------------------------------
-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_17, 0x100, -1, 0, 0, 0); --飛んでいく（テキスト込み）	ef_004r		敵側用　ef_011とef_012と同時再生
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 120 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 120 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 120 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 120 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 120 -4, base4_f, 0);

base4_m = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0); --背景＋エフェクト	ef_012		ef_004とef_011と同時再生　１番奥の背景
setEffMoveKey( spep_4 + 0, base4_m, 0, 0 , 0);
setEffMoveKey( spep_4 + 120 -4, base4_m, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_m, 1.0, 1.0);
setEffScaleKey( spep_4 + 120 -4, base4_m, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_m, 0);
setEffRotateKey( spep_4 + 120 -4, base4_m, 0);
setEffAlphaKey( spep_4 + 0, base4_m, 255);
setEffAlphaKey( spep_4 + 120 -5, base4_m, 255);
setEffAlphaKey( spep_4 + 120 -4, base4_m, 0);

base4_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0); --背景＋エフェクト	ef_012		ef_004とef_011と同時再生　１番奥の背景
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 120 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 120 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 120 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 120 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 120 -4, base4_b, 0);


-- ** 白フェード ** --
entryFade( spep_4 + 110 -5, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 20, 1, 1 );
setDisp( spep_4 -3 + 40, 1, 0 );
setDisp( spep_4 -3 + 70, 1, 1 );
setDisp( spep_4 -3 + 88, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );
changeAnime( spep_4 -3 + 70, 1, 107 );

setMoveKey( spep_4 -3 + 20, 1, -147.1, 2.5 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -61, 20.7 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -11.8, 20.4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 21.3, 30.7 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 45, 27.9 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 62.1, 35.2 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 74.4, 33.1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 83, 38 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 88.5, 35.2 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 91.5, 38.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 92.4, 36.8 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -52.4, 72.8 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 201.2, 108.3 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 326.7, 107 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 416.8, 125.6 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 487.3, 121.2 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 544.6, 136.4 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 591.6, 131.8 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 629.7, 143.6 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 658.9, 137.8 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 675.4, 147 , 0 );

setScaleKey( spep_4 -3 + 20, 1, 0.02, 0.02 );
setScaleKey( spep_4 -3 + 22, 1, 0.05, 0.05 );
setScaleKey( spep_4 -3 + 24, 1, 0.06, 0.06 );
setScaleKey( spep_4 -3 + 26, 1, 0.07, 0.07 );
setScaleKey( spep_4 -3 + 28, 1, 0.08, 0.08 );
setScaleKey( spep_4 -3 + 30, 1, 0.09, 0.09 );
setScaleKey( spep_4 -3 + 34, 1, 0.09, 0.09 );
setScaleKey( spep_4 -3 + 36, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 40, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 70, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 72, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 74, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 76, 1, 0.86, 0.86 );
setScaleKey( spep_4 -3 + 78, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 80, 1, 1.07, 1.07 );
setScaleKey( spep_4 -3 + 82, 1, 1.15, 1.15 );
setScaleKey( spep_4 -3 + 84, 1, 1.22, 1.22 );
setScaleKey( spep_4 -3 + 86, 1, 1.27, 1.27 );
setScaleKey( spep_4 -3 + 88, 1, 1.3, 1.3 );

setRotateKey( spep_4 -3 + 20, 1, 0 );
setRotateKey( spep_4 -3 + 40, 1, 0 );
setRotateKey( spep_4 -3 + 42, 1, 0 );
setRotateKey( spep_4 -3 + 70, 1, 0 );
setRotateKey( spep_4 -3 + 88, 1, 0 );


-- ** 音 ** --
SE009 = playSeVer2( spep_4 + 18, 1061, "", 0, 0, 0, -1);	--ビル爆発１
setSeVolumeByWorkId( spep_4 + 18, SE009, 72 );

SE010 = playSeVer2( spep_4 + 18, 1033, "", 0, 0, 0, -1);	--ビル爆発１

SE011 = playSeVer2( spep_4 + 18, 1024, "", 0, 0, 0, -1);	--ビル爆発１

SE012 = playSeVer2( spep_4 + 52, 1061, "", 0, 0, 0, -1);	--ビル爆発２
setSeVolumeByWorkId( spep_4 + 52, SE012, 89 );

SE013 = playSeVer2( spep_4 + 52, 1159, "",spep_4 + 162, 0, 54, -1);	--ビル爆発２
setSeVolumeByWorkId( spep_4 + 52, SE013, 88 );

SE014 = playSeVer2( spep_4 + 52, 1024, "", 0, 0, 0, -1);	--ビル爆発２
setSeVolumeByWorkId( spep_4 + 52, SE014, 80 );

SE015 = playSeVer2( spep_4 + 76, 1278, "",spep_4 + 158, 0, 30, -1);	--追いかける

SE016 = playSeVer2( spep_4 + 88, 1167, "",spep_4 + 146, 0, 24, 0.5);	--追いかける
setSeVolumeByWorkId( spep_4 + 88, SE016, 111 );
setPitch( spep_4 + 88, SE016, -400 );
setTimeStretch( SE016, 0.73, 30, 4 );

SE017 = playSeVer2( spep_4 + 88, 1116, "",spep_4 + 124, 0, 18, -1);	--追いかける
setSeVolumeByWorkId( spep_4 + 88, SE017, 141 );


-- ** 次の準備 ** --
spep_5 = spep_4 + 120 -4;

-------------------------------------------------
-- 背景と爆発
-------------------------------------------------
-- ** エフェクト等 ** --
base5 = entryEffect( spep_5 + 0, SP_18, 0x80, -1, 0, 0, 0); --背景と爆発	ef_005r		敵側用
setEffMoveKey( spep_5 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_5 + 88 -4, base5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5, 1.0, 1.0);
setEffScaleKey( spep_5 + 88 -4, base5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5, 0);
setEffRotateKey( spep_5 + 88 -4, base5, 0);
setEffAlphaKey( spep_5 + 0, base5, 255);
setEffAlphaKey( spep_5 + 88 -5, base5, 255);
setEffAlphaKey( spep_5 + 88 -4, base5, 0);


-- ** 集中線 ** --
shuchusen_5 = entryEffectLife( spep_5 + 0, 906, 88 -5, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen_5, 88 -5, 20 );

setEffMoveKey( spep_5 + 0, shuchusen_5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 88 -5, shuchusen_5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen_5, 1.6, 1.6 );
setEffScaleKey( spep_5 + 88 -5, shuchusen_5, 1.6, 1.6 );

setEffRotateKey( spep_5 + 0, shuchusen_5, 0 );
setEffRotateKey( spep_5 + 88 -5, shuchusen_5, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen_5, 255 );
setEffAlphaKey( spep_5 + 88 -5, shuchusen_5, 255 );


-- ** 白フェード ** --
entryFade( spep_5 + 78 -5, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 28, 1, 0 );

changeAnime( spep_5 + 0, 1, 108 );

-- setMoveKey( spep_5 -3 + 0, 1, -327, 9.9 , 0 );
setMoveKey( spep_5 -2 + 2, 1, -281.7, 11.6 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -242.4, 12.9 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -208.3, 14 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -178.4, 15 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -152, 16 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -128.7, 16.7 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -108.2, 17.4 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -90.1, 18 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -74.1, 18.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -60.2, 19.1 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -48.2, 19.5 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -37.9, 19.9 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -29.2, 20.1 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -29.2, 20.1 , 0 );

-- setScaleKey( spep_5 -3 + 0, 1, 3, 3 );
setScaleKey( spep_5 -2 + 2, 1, 2.62, 2.62 );
setScaleKey( spep_5 -3 + 4, 1, 2.29, 2.29 );
setScaleKey( spep_5 -3 + 6, 1, 2, 2 );
setScaleKey( spep_5 -3 + 8, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 10, 1, 1.52, 1.52 );
setScaleKey( spep_5 -3 + 12, 1, 1.33, 1.33 );
setScaleKey( spep_5 -3 + 14, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 16, 1, 1, 1 );
setScaleKey( spep_5 -3 + 18, 1, 0.86, 0.86 );
setScaleKey( spep_5 -3 + 20, 1, 0.75, 0.75 );
setScaleKey( spep_5 -3 + 22, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 24, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 26, 1, 0.48, 0.48 );
setScaleKey( spep_5 -3 + 28, 1, 0.48, 0.48 );

-- setRotateKey( spep_5 -3 + 0, 1, 0 );
setRotateKey( spep_5 -2 + 2, 1, 4.7 );
setRotateKey( spep_5 -3 + 4, 1, 8.4 );
setRotateKey( spep_5 -3 + 6, 1, 11.6 );
setRotateKey( spep_5 -3 + 8, 1, 14.4 );
setRotateKey( spep_5 -3 + 10, 1, 16.7 );
setRotateKey( spep_5 -3 + 12, 1, 18.8 );
setRotateKey( spep_5 -3 + 14, 1, 20.6 );
setRotateKey( spep_5 -3 + 16, 1, 22.2 );
setRotateKey( spep_5 -3 + 18, 1, 23.6 );
setRotateKey( spep_5 -3 + 20, 1, 24.8 );
setRotateKey( spep_5 -3 + 22, 1, 25.8 );
setRotateKey( spep_5 -3 + 24, 1, 26.6 );
setRotateKey( spep_5 -3 + 26, 1, 27.4 );
setRotateKey( spep_5 -3 + 28, 1, 27.4 );


-- ** 音 ** --
SE018 = playSeVer2( spep_5 + 0, 1183, "",spep_5 + 92, 0, 18, -1);	--敵飛んでいく

SE019 = playSeVer2( spep_5 + 32, 1159, "",spep_5 + 222, 0, 54, -1);	--ビル爆発3
setSeVolumeByWorkId( spep_5 + 32, SE019, 91 );

SE020 = playSeVer2( spep_5 + 32, 1017, "", 0, 0, 0, -1);	--ビル爆発3

SE021 = playSeVer2( spep_5 + 32, 1188, "", 0, 0, 0, -1);	--ビル爆発3
setSeVolumeByWorkId( spep_5 + 32, SE021, 88 );


-- ** 次の準備 ** --
spep_6 = spep_5 + 88 -4;

-------------------------------------------------
-- 構え
-------------------------------------------------

-- ** エフェクト等 ** --
base6 = entryEffect( spep_6 + 0, SP_19, 0x80, -1, 0, 0, 0); --構え	ef_006r		敵側
setEffMoveKey( spep_6 + 0, base6, 0, 0 , 0);
setEffMoveKey( spep_6 + 124 -4, base6, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base6, 1.0, 1.0);
setEffScaleKey( spep_6 + 124 -4, base6, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base6, 0);
setEffRotateKey( spep_6 + 124 -4, base6, 0);
setEffAlphaKey( spep_6 + 0, base6, 255);
setEffAlphaKey( spep_6 + 124 -5, base6, 255);
setEffAlphaKey( spep_6 + 124 -4, base6, 0);


-- ** 集中線 ** --
shuchusen_6 = entryEffectLife( spep_6 + 38, 906, 124 -5 -38, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 38, shuchusen_6, 124 -5 -38, 20 );
setEffMoveKey( spep_6 + 38, shuchusen_6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 124 -5, shuchusen_6, 0, 0 , 0 );
setEffScaleKey( spep_6 + 38, shuchusen_6, 1.6, 1.6 );
setEffScaleKey( spep_6 + 124 -5, shuchusen_6, 1.6, 1.6 );
setEffRotateKey( spep_6 + 38, shuchusen_6, 0 );
setEffRotateKey( spep_6 + 124 -5, shuchusen_6, 0 );
setEffAlphaKey( spep_6 + 38, shuchusen_6, 0 );
setEffAlphaKey( spep_6 + 51, shuchusen_6, 0 );
setEffAlphaKey( spep_6 + 52, shuchusen_6, 255 );
setEffAlphaKey( spep_6 + 124 -5, shuchusen_6, 255 );


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_6 + 38;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 白フェード ** --
entryFade( spep_6 + 114 -5, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
SE022 = playSeVer2( spep_6 + 24, 1004, "", 0, 0, 0, -1);	--構える

SE023 = playSeVer2( spep_6 + 34, 1233, "", 0, 0, 0, -1);	--構える

--SE024 = playSeVer2( spep_6 + 46, 1018, "", 0, 0, 0, -1);	--顔カットイン

SE025 = playSeVer2( spep_6 + 46, 1006, "", 0, 0, 0, -1);	--構える


-- ** 次の準備 ** --
spep_c = spep_6 + 124 -4;

-------------------------------------------------
--カードカットイン(94F)
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
spep_7 = spep_c + 94;

-------------------------------------------------
-- 気弾発射
-------------------------------------------------
-- ** エフェクト等 ** --
base7_f = entryEffect( spep_7 + 0, SP_20, 0x100, -1, 0, 0, 0); --気弾発射	ef_007r		ef_013と同時再生　敵側
setEffMoveKey( spep_7 + 0, base7_f, 0, 0 , 0);
setEffMoveKey( spep_7 + 76 -4, base7_f, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7_f, 1.0, 1.0);
setEffScaleKey( spep_7 + 76 -4, base7_f, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7_f, 0);
setEffRotateKey( spep_7 + 76 -4, base7_f, 0);
setEffAlphaKey( spep_7 + 0, base7_f, 255);
setEffAlphaKey( spep_7 + 76 -5, base7_f, 255);
setEffAlphaKey( spep_7 + 76 -4, base7_f, 0);

base7_b = entryEffect( spep_7 + 0, SP_12, 0x80, -1, 0, 0, 0); --背景＋爆煙	ef_013		ef_007及びef_007r （敵側時）に同時再生
setEffMoveKey( spep_7 + 0, base7_b, 0, 0 , 0);
setEffMoveKey( spep_7 + 76 -4, base7_b, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base7_b, 1.0, 1.0);
setEffScaleKey( spep_7 + 76 -4, base7_b, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base7_b, 0);
setEffRotateKey( spep_7 + 76 -4, base7_b, 0);
setEffAlphaKey( spep_7 + 0, base7_b, 255);
setEffAlphaKey( spep_7 + 76 -5, base7_b, 255);
setEffAlphaKey( spep_7 + 76 -4, base7_b, 0);


-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 白フェード ** --
entryFade( spep_7 + 66 -5, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
-- setDisp( spep_7 -5 + 76, 1, 0 );
setDisp( spep_7 -4 + 76, 1, 0 );

changeAnime( spep_7 + 0, 1, 106 );

-- setMoveKey( spep_7 -3 + 0, 1, 198.6, 151.8 , 0 );
setMoveKey( spep_7 -2 + 2, 1, 185.1, 141 , 0 );
setMoveKey( spep_7 -3 + 4, 1, 180.9, 137.6 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 178.1, 135.4 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 176.1, 133.7 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 174.5, 132.5 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 173.2, 131.5 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 172.2, 130.7 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 171.4, 130.1 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 170.8, 129.5 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 170.3, 129.1 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 169.9, 128.7 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 169.5, 128.5 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 169.3, 128.3 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 169, 128.1 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 168.9, 128 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 168.9, 128 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 168.8, 127.9 , 0 );
setMoveKey( spep_7 -5 + 76, 1, 168.8, 127.9 , 0 );

-- setScaleKey( spep_7 -3 + 0, 1, 0.95, 0.95 );
setScaleKey( spep_7 -2 + 2, 1, 0.81, 0.81 );
setScaleKey( spep_7 -3 + 4, 1, 0.77, 0.77 );
setScaleKey( spep_7 -3 + 6, 1, 0.74, 0.74 );
setScaleKey( spep_7 -3 + 8, 1, 0.72, 0.72 );
setScaleKey( spep_7 -3 + 10, 1, 0.71, 0.71 );
setScaleKey( spep_7 -3 + 12, 1, 0.69, 0.69 );
setScaleKey( spep_7 -3 + 14, 1, 0.68, 0.68 );
setScaleKey( spep_7 -3 + 16, 1, 0.67, 0.67 );
setScaleKey( spep_7 -3 + 18, 1, 0.67, 0.67 );
setScaleKey( spep_7 -3 + 20, 1, 0.66, 0.66 );
setScaleKey( spep_7 -3 + 24, 1, 0.66, 0.66 );
setScaleKey( spep_7 -3 + 26, 1, 0.65, 0.65 );
setScaleKey( spep_7 -5 + 76, 1, 0.65, 0.65 );

setRotateKey( spep_7 + 0, 1, -51.2 );
setRotateKey( spep_7 -5 + 76, 1, -51.2 );


-- ** 音 ** --
SE027 = playSeVer2( spep_7 + 0, 1296, "",spep_7 + 34, 4, 16, -1);	--気弾溜め
setSeVolumeByWorkId( spep_7 + 0, SE027, 92 );
setStartTimeMs( SE027,  433 );

SE028 = playSeVer2( spep_7 + 0, 1257, "", 0, 0, 0, 0.6);	--気弾溜め
setSeVolumeByWorkId( spep_7 + 0, SE028, 86 );

SE029 = playSeVer2( spep_7 + 0, 1224, "",spep_7 + 42, 0, 12, 0.6);	--気弾溜め
setSeVolumeByWorkId( spep_7 + 0, SE029, 86 );

SE030 = playSeVer2( spep_7 + 14, 1225, "", 0, 0, 0, -1);	--気弾溜め

SE031 = playSeVer2( spep_7 + 60, 1128, "",spep_7 + 128, 14, 30, 0.5);	--気弾飛んでいく
setStartTimeMs( SE031,  600 );

SE032 = playSeVer2( spep_7 + 36, 1027, "", 0, 0, 0, -1);	--気弾発射
setSeVolumeByWorkId( spep_7 + 36, SE032, 83 );

SE033 = playSeVer2( spep_7 + 36, 1213, "",spep_7 + 124, 0, 14, -1);	--気弾発射
setSeVolumeByWorkId( spep_7 + 36, SE033, 88 );


-- ** 次の準備 ** --
spep_8 = spep_7 + 76 -4;

-------------------------------------------------
-- ヒット爆発
-------------------------------------------------

-- ** エフェクト等 ** --
base8 = entryEffect( spep_8 + 0, SP_13, 0x80, -1, 0, 0, 0); --ヒット爆発	ef_008
setEffMoveKey( spep_8 + 0, base8, 0, 0 , 0);
setEffMoveKey( spep_8 + 150 -4, base8, 0, 0 , 0);
setEffScaleKey( spep_8 + 0, base8, 1.0, 1.0);
setEffScaleKey( spep_8 + 150 -4, base8, 1.0, 1.0);
setEffRotateKey( spep_8 + 0, base8, 0);
setEffRotateKey( spep_8 + 150 -4, base8, 0);
setEffAlphaKey( spep_8 + 0, base8, 255);
setEffAlphaKey( spep_8 + 150 -5, base8, 255);
setEffAlphaKey( spep_8 + 150 -4, base8, 0);


-- ** 音 ** --
SE034 = playSeVer2( spep_8 + 0, 1021, "", 0, 0, 0, -1);	--気弾飛んでいく

SE035 = playSeVer2( spep_8 + 32, 1011, "", 0, 0, 0, -1);	--気弾ヒット

SE036 = playSeVer2( spep_8 + 32, 1024, "", 0, 0, 0, -1);	--気弾ヒット

SE037 = playSeVer2( spep_8 + 52, 1068, "", 0, 0, 0, -1);	--爆発

SE038 = playSeVer2( spep_8 + 52, 1160, "", 0, 0, 0, -1);	--爆発


-- ** ダメージ表示 ** --
dealDamage( spep_8 + 56 -16);
endPhase( spep_8 + 150 -8);

end
