--1024680:SSRシェン_龍神連撃_sp2391
--sp_effect_b1_00204

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
SP_01 = 159967;	--セリフ	ef_001
SP_02 = 159968;	--顔正面アップメガネ光	ef_002
SP_03 = 159969;	--瞬間移動	ef_003
SP_04 = 159970;	--敵殴り_敵より前	ef_004
SP_05 = 159971;	--敵殴り_敵より後ろ	ef_005
SP_06 = 159972;	--空中落下	ef_006
SP_07 = 159973;	--上空からの膝蹴り_敵より前	ef_007
SP_08 = 159974;	--上空からの膝蹴り_敵より後ろ	ef_008

--敵側
SP_01r = 159975;	--セリフ：反転用	ef_001_r
SP_03r = 159976;	--瞬間移動：反転用	ef_003_r
SP_04r = 159977;	--敵殴り_敵より前：反転用	ef_004_r
SP_05r = 159978;	--敵殴り_敵より後ろ：反転用	ef_005_r
SP_06r = 159979;	--空中落下：反転用	ef_006_r
SP_07r = 159980;	--上空から膝蹴り_敵より前：反転用	ef_007_r


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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- セリフ(174F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_b = entryEffectLife( spep_0 + 0, SP_01, 174, 0x80, -1, 0, 0, 0 );  --セリフ	ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 174, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 174, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 174, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 174 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 174, first_b, 0 );

spep_x = spep_0 + 89;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 177, 1, 0 );
changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 145.3, -83.6 , 0 );
setMoveKey( spep_0 + 1, 1, 145.8, -83.6 , 0 );
setMoveKey( spep_0 + 2, 1, 147.3, -83.5 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 149.8, -83.3 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 149.8, -83.3 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 153.3, -83.1 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 153.3, -83.1 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 157.9, -82.8 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 163.4, -82.5 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 170, -82.1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 177.5, -81.6 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 186.1, -81 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 195.7, -80.4 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 206.3, -79.8 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 217.9, -79.1 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 230.5, -78.3 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 244.2, -77.4 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 258.8, -76.5 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 274.5, -75.5 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 291.1, -74.5 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 308.8, -73.4 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 327.5, -72.2 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 347.1, -71 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 367.8, -69.7 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 389.6, -68.3 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 412.3, -66.9 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 436, -65.4 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 460.7, -63.8 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 486.5, -62.2 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 513.3, -60.5 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 541, -58.8 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 569.8, -57 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 599.6, -55.1 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 630.4, -53.2 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 662.2, -51.2 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 695.1, -49.1 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 728.9, -46.9 , 0 );
setMoveKey( spep_0 -3 + 177, 1, 728.9, -46.9 , 0 );

setScaleKey( spep_0 + 0, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 1, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 2, 1, 2.02, 2.02 );
setScaleKey( spep_0 -3 + 6, 1, 2.03, 2.03 );
setScaleKey( spep_0 -3 + 7, 1, 2.03, 2.03 );
setScaleKey( spep_0 -3 + 8, 1, 2.04, 2.04 );
setScaleKey( spep_0 -3 + 9, 1, 2.04, 2.04 );
setScaleKey( spep_0 -3 + 10, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 12, 1, 2.09, 2.09 );
setScaleKey( spep_0 -3 + 14, 1, 2.12, 2.12 );
setScaleKey( spep_0 -3 + 16, 1, 2.15, 2.15 );
setScaleKey( spep_0 -3 + 18, 1, 2.18, 2.18 );
setScaleKey( spep_0 -3 + 20, 1, 2.23, 2.23 );
setScaleKey( spep_0 -3 + 22, 1, 2.27, 2.27 );
setScaleKey( spep_0 -3 + 24, 1, 2.32, 2.32 );
setScaleKey( spep_0 -3 + 26, 1, 2.37, 2.37 );
setScaleKey( spep_0 -3 + 28, 1, 2.43, 2.43 );
setScaleKey( spep_0 -3 + 30, 1, 2.49, 2.49 );
setScaleKey( spep_0 -3 + 32, 1, 2.56, 2.56 );
setScaleKey( spep_0 -3 + 34, 1, 2.63, 2.63 );
setScaleKey( spep_0 -3 + 36, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 38, 1, 2.79, 2.79 );
setScaleKey( spep_0 -3 + 40, 1, 2.87, 2.87 );
setScaleKey( spep_0 -3 + 42, 1, 2.96, 2.96 );
setScaleKey( spep_0 -3 + 44, 1, 3.05, 3.05 );
setScaleKey( spep_0 -3 + 46, 1, 3.15, 3.15 );
setScaleKey( spep_0 -3 + 48, 1, 3.25, 3.25 );
setScaleKey( spep_0 -3 + 50, 1, 3.36, 3.36 );
setScaleKey( spep_0 -3 + 52, 1, 3.47, 3.47 );
setScaleKey( spep_0 -3 + 54, 1, 3.58, 3.58 );
setScaleKey( spep_0 -3 + 56, 1, 3.7, 3.7 );
setScaleKey( spep_0 -3 + 58, 1, 3.82, 3.82 );
setScaleKey( spep_0 -3 + 60, 1, 3.95, 3.95 );
setScaleKey( spep_0 -3 + 62, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 64, 1, 4.22, 4.22 );
setScaleKey( spep_0 -3 + 66, 1, 4.36, 4.36 );
setScaleKey( spep_0 -3 + 68, 1, 4.5, 4.5 );
setScaleKey( spep_0 -3 + 177, 1, 4.5, 4.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 177, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 196, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--腕の動き
SE002 = playSeVer2( spep_0 + 12, 4, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 12, 1151, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 38, 4, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 38, 1151, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 54, 4, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 54, 1151, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 66, 4, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 66, 1151, "", 0, 0, 0, -1);

--顔カットイン
SE010 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 174 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 174;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 顔正面アップメガネ光	(44F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
glasses = entryEffectLife( spep_2 + 0, SP_02, 44, 0x100, -1, 0, 0, 0 );  --顔正面アップメガネ光	ef_002
setEffMoveKey( spep_2 + 0, glasses, 0, 0 , 0 );
setEffMoveKey( spep_2 + 44, glasses, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, glasses, 1.0, 1.0 );
setEffScaleKey( spep_2 + 44, glasses, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, glasses, 0 );
setEffRotateKey( spep_2 + 44, glasses, 0 );
setEffAlphaKey( spep_2 + 0, glasses, 255 );
setEffAlphaKey( spep_2 + 44 -1, glasses, 255 );
setEffAlphaKey( spep_2 + 44, glasses, 0 );

-- ** 音 ** --
--メガネ光る
SE012 = playSeVer2( spep_2 + 0, 1042, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 44 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 44;


------------------------------------------------------
-- 瞬間移動(54F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
move = entryEffectLife( spep_3 + 0, SP_03, 54, 0x100, -1, 0, 0, 0 );  --瞬間移動	ef_003
setEffMoveKey( spep_3 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_3 + 54, move, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move, 1.0, 1.0 );
setEffScaleKey( spep_3 + 54, move, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move, 0 );
setEffRotateKey( spep_3 + 54, move, 0 );
setEffAlphaKey( spep_3 + 0, move, 255 );
setEffAlphaKey( spep_3 + 54 -1, move, 255 );
setEffAlphaKey( spep_3 + 54, move, 0 );

-- ** 音 ** --
--高速移動
SE013 = playSeVer2( spep_3 + 20, 1179, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 20, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 54 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
   
    pauseAll( SP_dodge, 67);  
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 次の準備 ** --
spep_4 = spep_3 + 54;


------------------------------------------------------
-- 敵殴り(80F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
elbow_f = entryEffectLife( spep_4 + 0, SP_04, 80, 0x100, -1, 0, 0, 0 );  --敵殴り_敵より前	ef_004
setEffMoveKey( spep_4 + 0, elbow_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, elbow_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, elbow_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, elbow_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, elbow_f, 0 );
setEffRotateKey( spep_4 + 80, elbow_f, 0 );
setEffAlphaKey( spep_4 + 0, elbow_f, 255 );
setEffAlphaKey( spep_4 + 80 -1, elbow_f, 255 );
setEffAlphaKey( spep_4 + 80, elbow_f, 0 );

elbow_b = entryEffectLife( spep_4 + 0, SP_05, 80, 0x80, -1, 0, 0, 0 );  --敵殴り_敵より後ろ	ef_005
setEffMoveKey( spep_4 + 0, elbow_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, elbow_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, elbow_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, elbow_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, elbow_b, 0 );
setEffRotateKey( spep_4 + 80, elbow_b, 0 );
setEffAlphaKey( spep_4 + 0, elbow_b, 255 );
setEffAlphaKey( spep_4 + 80 -1, elbow_b, 255 );
setEffAlphaKey( spep_4 + 80, elbow_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 50, 1, 0 );
changeAnime( spep_4 + 0, 1, 118 );
changeAnime( spep_4 -3 + 32, 1, 106 );

setMoveKey( spep_4 + 0, 1, 289, -43.9 , 0 );
setMoveKey( spep_4 + 1, 1, 272.7, -43.9 , 0 );
setMoveKey( spep_4 + 2, 1, 256.3, -43.9 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 240, -43.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 223.6, -43.8 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 207.3, -43.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 191, -43.8 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 171.4, -38.9 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 151.8, -34 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 132.2, -29.1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 112.6, -24.2 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 93, -19.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 92.9, -19.3 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 92.9, -19.2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 166.4, 77.9 , 0 );
setMoveKey( spep_4 -3 + 31, 1, 215.5, 120.3 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 160, 135.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 238.7, 145.1 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 317.4, 154.6 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 396.1, 164.1 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 474.8, 173.6 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 553.5, 183.1 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 632.2, 192.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 710.9, 202.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 789.6, 211.6 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 789.6, 211.6 , 0 );

setScaleKey( spep_4 + 0, 1, 4.18, 4.18 );
setScaleKey( spep_4 + 1, 1, 4.12, 4.12 );
setScaleKey( spep_4 + 2, 1, 4.07, 4.07 );
setScaleKey( spep_4 -3 + 6, 1, 4.01, 4.01 );
setScaleKey( spep_4 -3 + 8, 1, 3.95, 3.95 );
setScaleKey( spep_4 -3 + 10, 1, 3.9, 3.9 );
setScaleKey( spep_4 -3 + 12, 1, 3.84, 3.84 );
setScaleKey( spep_4 -3 + 14, 1, 3.75, 3.75 );
setScaleKey( spep_4 -3 + 16, 1, 3.66, 3.66 );
setScaleKey( spep_4 -3 + 18, 1, 3.58, 3.58 );
setScaleKey( spep_4 -3 + 20, 1, 3.49, 3.49 );
setScaleKey( spep_4 -3 + 22, 1, 3.4, 3.4 );
setScaleKey( spep_4 -3 + 28, 1, 3.4, 3.4 );
setScaleKey( spep_4 -3 + 31, 1, 3.39, 3.39 );
setScaleKey( spep_4 -3 + 32, 1, 3.5, 3.5 );
setScaleKey( spep_4 -3 + 50, 1, 3.5, 3.5 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 26, 1, 0 );
setRotateKey( spep_4 -3 + 28, 1, 9 );
setRotateKey( spep_4 -3 + 31, 1, 15 );
setRotateKey( spep_4 -3 + 32, 1, -45 );
setRotateKey( spep_4 -3 + 34, 1, -38.9 );
setRotateKey( spep_4 -3 + 36, 1, -32.9 );
setRotateKey( spep_4 -3 + 38, 1, -26.8 );
setRotateKey( spep_4 -3 + 40, 1, -20.8 );
setRotateKey( spep_4 -3 + 42, 1, -14.7 );
setRotateKey( spep_4 -3 + 44, 1, -8.7 );
setRotateKey( spep_4 -3 + 46, 1, -2.6 );
setRotateKey( spep_4 -3 + 48, 1, 3.5 );
setRotateKey( spep_4 -3 + 50, 1, 3.5 );

-- ** 音 ** --
--アッパー
SE015 = playSeVer2( spep_4 + 14, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_4 + 22, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_4 + 22, 1009, "", 0, 0, 0, -1);

--瞬間移動
SE018 = playSeVer2( spep_4 + 48, 1109, "", 0, 0, 0, -1);

--空中から飛んでくる
SE019 = playSeVer2( spep_4 + 78, 1117, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 80 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 80;


------------------------------------------------------
-- 空中落下(56F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
fall = entryEffectLife( spep_5 + 0, SP_06, 56, 0x100, -1, 0, 0, 0 );  --空中落下	ef_006
setEffMoveKey( spep_5 + 0, fall, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, fall, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, fall, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, fall, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fall, 0 );
setEffRotateKey( spep_5 + 56, fall, 0 );
setEffAlphaKey( spep_5 + 0, fall, 255 );
setEffAlphaKey( spep_5 + 56 -1, fall, 255 );
setEffAlphaKey( spep_5 + 56, fall, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;


------------------------------------------------------
-- 上空からの膝蹴り_敵より後ろ(120F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
knees_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --上空からの膝蹴り_敵より前	ef_007
setEffMoveKey( spep_6 + 0, knees_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, knees_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, knees_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, knees_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, knees_f, 0 );
setEffRotateKey( spep_6 + 116, knees_f, 0 );
setEffAlphaKey( spep_6 + 0, knees_f, 255 );
setEffAlphaKey( spep_6 + 116, knees_f, 0255 );

knees_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --上空からの膝蹴り_敵より後ろ	ef_008
setEffMoveKey( spep_6 + 0, knees_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, knees_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, knees_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, knees_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, knees_b, 0 );
setEffRotateKey( spep_6 + 116, knees_b, 0 );
setEffAlphaKey( spep_6 + 0, knees_b, 255 );
setEffAlphaKey( spep_6 + 116, knees_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 36, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );
changeAnime( spep_6 -3 + 16, 1, 108 );

setMoveKey( spep_6 + 0, 1, -665.3, -151.6 , 0 );
setMoveKey( spep_6 + 1, 1, -570.6, -173.5 , 0 );
setMoveKey( spep_6 + 2, 1, -476, -195.4 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -381.4, -217.3 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -286.8, -239.2 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -192.2, -261.1 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -97.6, -283 , 0 );
setMoveKey( spep_6 -3 + 15, 1, 58.3, -324.6 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 73.6, -420.3 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 12.3, -400.7 , 0 );
setMoveKey( spep_6 -3 + 20, 1, -61.3, -459.7 , 0 );
setMoveKey( spep_6 -3 + 22, 1, -110.3, -508.7 , 0 );
setMoveKey( spep_6 -3 + 24, 1, -32.7, -522.5 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 16.3, -473.5 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 10.6, -482.4 , 0 );
setMoveKey( spep_6 -3 + 30, 1, -38.4, -531.4 , 0 );
setMoveKey( spep_6 -3 + 32, 1, -56.3, -552.7 , 0 );
setMoveKey( spep_6 -3 + 34, 1, -6.3, -508.9 , 0 );
setMoveKey( spep_6 -3 + 36, 1, -6.3, -508.9 , 0 );

setScaleKey( spep_6 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_6 -3 + 15, 1, 2.5, 2.5 );
setScaleKey( spep_6 -3 + 16, 1, 3.35, 3.35 );
setScaleKey( spep_6 -3 + 36, 1, 3.35, 3.35 );

setRotateKey( spep_6 + 0, 1, 10.5 );
setRotateKey( spep_6 + 1, 1, 13.7 );
setRotateKey( spep_6 + 2, 1, 17 );
setRotateKey( spep_6 -3 + 6, 1, 20.2 );
setRotateKey( spep_6 -3 + 8, 1, 23.4 );
setRotateKey( spep_6 -3 + 10, 1, 26.6 );
setRotateKey( spep_6 -3 + 12, 1, 29.9 );
setRotateKey( spep_6 -3 + 15, 1, 33.1 );
setRotateKey( spep_6 -3 + 16, 1, 84 );
setRotateKey( spep_6 -3 + 18, 1, 84 );
setRotateKey( spep_6 -3 + 20, 1, 94 );
setRotateKey( spep_6 -3 + 22, 1, 94 );
setRotateKey( spep_6 -3 + 24, 1, 76.5 );
setRotateKey( spep_6 -3 + 26, 1, 76.5 );
setRotateKey( spep_6 -3 + 28, 1, 84 );
setRotateKey( spep_6 -3 + 36, 1, 84 );

-- ** 音 ** --
--地面激突
SE020 = playSeVer2( spep_6 + 6, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0,116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 16 );
endPhase( spep_6 + 106 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- セリフ(174F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_b = entryEffectLife( spep_0 + 0, SP_01r, 174, 0x80, -1, 0, 0, 0 );  --セリフ  ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 174, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 174, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 174, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 174 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 174, first_b, 0 );

spep_x = spep_0 + 89;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 177, 1, 0 );
changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 145.3, -83.6 , 0 );
setMoveKey( spep_0 + 1, 1, 145.8, -83.6 , 0 );
setMoveKey( spep_0 + 2, 1, 147.3, -83.5 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 149.8, -83.3 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 149.8, -83.3 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 153.3, -83.1 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 153.3, -83.1 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 157.9, -82.8 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 163.4, -82.5 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 170, -82.1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 177.5, -81.6 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 186.1, -81 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 195.7, -80.4 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 206.3, -79.8 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 217.9, -79.1 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 230.5, -78.3 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 244.2, -77.4 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 258.8, -76.5 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 274.5, -75.5 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 291.1, -74.5 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 308.8, -73.4 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 327.5, -72.2 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 347.1, -71 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 367.8, -69.7 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 389.6, -68.3 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 412.3, -66.9 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 436, -65.4 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 460.7, -63.8 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 486.5, -62.2 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 513.3, -60.5 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 541, -58.8 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 569.8, -57 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 599.6, -55.1 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 630.4, -53.2 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 662.2, -51.2 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 695.1, -49.1 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 728.9, -46.9 , 0 );
setMoveKey( spep_0 -3 + 177, 1, 728.9, -46.9 , 0 );

setScaleKey( spep_0 + 0, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 1, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 2, 1, 2.02, 2.02 );
setScaleKey( spep_0 -3 + 6, 1, 2.03, 2.03 );
setScaleKey( spep_0 -3 + 7, 1, 2.03, 2.03 );
setScaleKey( spep_0 -3 + 8, 1, 2.04, 2.04 );
setScaleKey( spep_0 -3 + 9, 1, 2.04, 2.04 );
setScaleKey( spep_0 -3 + 10, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 12, 1, 2.09, 2.09 );
setScaleKey( spep_0 -3 + 14, 1, 2.12, 2.12 );
setScaleKey( spep_0 -3 + 16, 1, 2.15, 2.15 );
setScaleKey( spep_0 -3 + 18, 1, 2.18, 2.18 );
setScaleKey( spep_0 -3 + 20, 1, 2.23, 2.23 );
setScaleKey( spep_0 -3 + 22, 1, 2.27, 2.27 );
setScaleKey( spep_0 -3 + 24, 1, 2.32, 2.32 );
setScaleKey( spep_0 -3 + 26, 1, 2.37, 2.37 );
setScaleKey( spep_0 -3 + 28, 1, 2.43, 2.43 );
setScaleKey( spep_0 -3 + 30, 1, 2.49, 2.49 );
setScaleKey( spep_0 -3 + 32, 1, 2.56, 2.56 );
setScaleKey( spep_0 -3 + 34, 1, 2.63, 2.63 );
setScaleKey( spep_0 -3 + 36, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 38, 1, 2.79, 2.79 );
setScaleKey( spep_0 -3 + 40, 1, 2.87, 2.87 );
setScaleKey( spep_0 -3 + 42, 1, 2.96, 2.96 );
setScaleKey( spep_0 -3 + 44, 1, 3.05, 3.05 );
setScaleKey( spep_0 -3 + 46, 1, 3.15, 3.15 );
setScaleKey( spep_0 -3 + 48, 1, 3.25, 3.25 );
setScaleKey( spep_0 -3 + 50, 1, 3.36, 3.36 );
setScaleKey( spep_0 -3 + 52, 1, 3.47, 3.47 );
setScaleKey( spep_0 -3 + 54, 1, 3.58, 3.58 );
setScaleKey( spep_0 -3 + 56, 1, 3.7, 3.7 );
setScaleKey( spep_0 -3 + 58, 1, 3.82, 3.82 );
setScaleKey( spep_0 -3 + 60, 1, 3.95, 3.95 );
setScaleKey( spep_0 -3 + 62, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 64, 1, 4.22, 4.22 );
setScaleKey( spep_0 -3 + 66, 1, 4.36, 4.36 );
setScaleKey( spep_0 -3 + 68, 1, 4.5, 4.5 );
setScaleKey( spep_0 -3 + 177, 1, 4.5, 4.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 177, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 196, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--腕の動き
SE002 = playSeVer2( spep_0 + 12, 4, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 12, 1151, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 38, 4, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 38, 1151, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 54, 4, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 54, 1151, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 66, 4, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 66, 1151, "", 0, 0, 0, -1);

--顔カットイン
SE010 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 174 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 174;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 顔正面アップメガネ光   (44F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
glasses = entryEffectLife( spep_2 + 0, SP_02, 44, 0x100, -1, 0, 0, 0 );  --顔正面アップメガネ光   ef_002
setEffMoveKey( spep_2 + 0, glasses, 0, 0 , 0 );
setEffMoveKey( spep_2 + 44, glasses, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, glasses, -1.0, 1.0 );
setEffScaleKey( spep_2 + 44, glasses, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, glasses, 0 );
setEffRotateKey( spep_2 + 44, glasses, 0 );
setEffAlphaKey( spep_2 + 0, glasses, 255 );
setEffAlphaKey( spep_2 + 44 -1, glasses, 255 );
setEffAlphaKey( spep_2 + 44, glasses, 0 );

-- ** 音 ** --
--メガネ光る
SE012 = playSeVer2( spep_2 + 0, 1042, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 44 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 44;


------------------------------------------------------
-- 瞬間移動(54F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
move = entryEffectLife( spep_3 + 0, SP_03r, 54, 0x100, -1, 0, 0, 0 );  --瞬間移動    ef_003
setEffMoveKey( spep_3 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_3 + 54, move, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move, 1.0, 1.0 );
setEffScaleKey( spep_3 + 54, move, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move, 0 );
setEffRotateKey( spep_3 + 54, move, 0 );
setEffAlphaKey( spep_3 + 0, move, 255 );
setEffAlphaKey( spep_3 + 54 -1, move, 255 );
setEffAlphaKey( spep_3 + 54, move, 0 );

-- ** 音 ** --
--高速移動
SE013 = playSeVer2( spep_3 + 20, 1179, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 20, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 54 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
   
    pauseAll( SP_dodge, 67);  
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 次の準備 ** --
spep_4 = spep_3 + 54;


------------------------------------------------------
-- 敵殴り(80F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
elbow_f = entryEffectLife( spep_4 + 0, SP_04r, 80, 0x100, -1, 0, 0, 0 );  --敵殴り_敵より前 ef_004
setEffMoveKey( spep_4 + 0, elbow_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, elbow_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, elbow_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, elbow_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, elbow_f, 0 );
setEffRotateKey( spep_4 + 80, elbow_f, 0 );
setEffAlphaKey( spep_4 + 0, elbow_f, 255 );
setEffAlphaKey( spep_4 + 80 -1, elbow_f, 255 );
setEffAlphaKey( spep_4 + 80, elbow_f, 0 );

elbow_b = entryEffectLife( spep_4 + 0, SP_05r, 80, 0x80, -1, 0, 0, 0 );  --敵殴り_敵より後ろ ef_005
setEffMoveKey( spep_4 + 0, elbow_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, elbow_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, elbow_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, elbow_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, elbow_b, 0 );
setEffRotateKey( spep_4 + 80, elbow_b, 0 );
setEffAlphaKey( spep_4 + 0, elbow_b, 255 );
setEffAlphaKey( spep_4 + 80 -1, elbow_b, 255 );
setEffAlphaKey( spep_4 + 80, elbow_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 50, 1, 0 );
changeAnime( spep_4 + 0, 1, 118 );
changeAnime( spep_4 -3 + 32, 1, 106 );

setMoveKey( spep_4 + 0, 1, 289, -43.9 , 0 );
setMoveKey( spep_4 + 1, 1, 272.7, -43.9 , 0 );
setMoveKey( spep_4 + 2, 1, 256.3, -43.9 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 240, -43.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 223.6, -43.8 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 207.3, -43.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 191, -43.8 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 171.4, -38.9 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 151.8, -34 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 132.2, -29.1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 112.6, -24.2 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 93, -19.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 92.9, -19.3 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 92.9, -19.2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 166.4, 77.9 , 0 );
setMoveKey( spep_4 -3 + 31, 1, 215.5, 120.3 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 160, 135.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 238.7, 145.1 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 317.4, 154.6 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 396.1, 164.1 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 474.8, 173.6 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 553.5, 183.1 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 632.2, 192.6 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 710.9, 202.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 789.6, 211.6 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 789.6, 211.6 , 0 );

setScaleKey( spep_4 + 0, 1, 4.18, 4.18 );
setScaleKey( spep_4 + 1, 1, 4.12, 4.12 );
setScaleKey( spep_4 + 2, 1, 4.07, 4.07 );
setScaleKey( spep_4 -3 + 6, 1, 4.01, 4.01 );
setScaleKey( spep_4 -3 + 8, 1, 3.95, 3.95 );
setScaleKey( spep_4 -3 + 10, 1, 3.9, 3.9 );
setScaleKey( spep_4 -3 + 12, 1, 3.84, 3.84 );
setScaleKey( spep_4 -3 + 14, 1, 3.75, 3.75 );
setScaleKey( spep_4 -3 + 16, 1, 3.66, 3.66 );
setScaleKey( spep_4 -3 + 18, 1, 3.58, 3.58 );
setScaleKey( spep_4 -3 + 20, 1, 3.49, 3.49 );
setScaleKey( spep_4 -3 + 22, 1, 3.4, 3.4 );
setScaleKey( spep_4 -3 + 28, 1, 3.4, 3.4 );
setScaleKey( spep_4 -3 + 31, 1, 3.39, 3.39 );
setScaleKey( spep_4 -3 + 32, 1, 3.5, 3.5 );
setScaleKey( spep_4 -3 + 50, 1, 3.5, 3.5 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 26, 1, 0 );
setRotateKey( spep_4 -3 + 28, 1, 9 );
setRotateKey( spep_4 -3 + 31, 1, 15 );
setRotateKey( spep_4 -3 + 32, 1, -45 );
setRotateKey( spep_4 -3 + 34, 1, -38.9 );
setRotateKey( spep_4 -3 + 36, 1, -32.9 );
setRotateKey( spep_4 -3 + 38, 1, -26.8 );
setRotateKey( spep_4 -3 + 40, 1, -20.8 );
setRotateKey( spep_4 -3 + 42, 1, -14.7 );
setRotateKey( spep_4 -3 + 44, 1, -8.7 );
setRotateKey( spep_4 -3 + 46, 1, -2.6 );
setRotateKey( spep_4 -3 + 48, 1, 3.5 );
setRotateKey( spep_4 -3 + 50, 1, 3.5 );

-- ** 音 ** --
--アッパー
SE015 = playSeVer2( spep_4 + 14, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_4 + 22, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_4 + 22, 1009, "", 0, 0, 0, -1);

--瞬間移動
SE018 = playSeVer2( spep_4 + 48, 1109, "", 0, 0, 0, -1);

--空中から飛んでくる
SE019 = playSeVer2( spep_4 + 78, 1117, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 80 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 80;


------------------------------------------------------
-- 空中落下(56F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
fall = entryEffectLife( spep_5 + 0, SP_06r, 56, 0x100, -1, 0, 0, 0 );  --空中落下    ef_006
setEffMoveKey( spep_5 + 0, fall, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, fall, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, fall, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, fall, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fall, 0 );
setEffRotateKey( spep_5 + 56, fall, 0 );
setEffAlphaKey( spep_5 + 0, fall, 255 );
setEffAlphaKey( spep_5 + 56 -1, fall, 255 );
setEffAlphaKey( spep_5 + 56, fall, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;


------------------------------------------------------
-- 上空からの膝蹴り_敵より後ろ(120F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
knees_f = entryEffect( spep_6 + 0, SP_07r, 0x100, -1, 0, 0, 0 );  --上空からの膝蹴り_敵より前    ef_007
setEffMoveKey( spep_6 + 0, knees_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, knees_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, knees_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, knees_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, knees_f, 0 );
setEffRotateKey( spep_6 + 116, knees_f, 0 );
setEffAlphaKey( spep_6 + 0, knees_f, 255 );
setEffAlphaKey( spep_6 + 116, knees_f, 0255 );

knees_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --上空からの膝蹴り_敵より後ろ    ef_008
setEffMoveKey( spep_6 + 0, knees_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, knees_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, knees_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, knees_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, knees_b, 0 );
setEffRotateKey( spep_6 + 116, knees_b, 0 );
setEffAlphaKey( spep_6 + 0, knees_b, 255 );
setEffAlphaKey( spep_6 + 116, knees_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 36, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );
changeAnime( spep_6 -3 + 16, 1, 108 );

setMoveKey( spep_6 + 0, 1, -665.3, -151.6 , 0 );
setMoveKey( spep_6 + 1, 1, -570.6, -173.5 , 0 );
setMoveKey( spep_6 + 2, 1, -476, -195.4 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -381.4, -217.3 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -286.8, -239.2 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -192.2, -261.1 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -97.6, -283 , 0 );
setMoveKey( spep_6 -3 + 15, 1, 58.3, -324.6 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 73.6, -420.3 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 12.3, -400.7 , 0 );
setMoveKey( spep_6 -3 + 20, 1, -61.3, -459.7 , 0 );
setMoveKey( spep_6 -3 + 22, 1, -110.3, -508.7 , 0 );
setMoveKey( spep_6 -3 + 24, 1, -32.7, -522.5 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 16.3, -473.5 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 10.6, -482.4 , 0 );
setMoveKey( spep_6 -3 + 30, 1, -38.4, -531.4 , 0 );
setMoveKey( spep_6 -3 + 32, 1, -56.3, -552.7 , 0 );
setMoveKey( spep_6 -3 + 34, 1, -6.3, -508.9 , 0 );
setMoveKey( spep_6 -3 + 36, 1, -6.3, -508.9 , 0 );

setScaleKey( spep_6 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_6 -3 + 15, 1, 2.5, 2.5 );
setScaleKey( spep_6 -3 + 16, 1, 3.35, 3.35 );
setScaleKey( spep_6 -3 + 36, 1, 3.35, 3.35 );

setRotateKey( spep_6 + 0, 1, 10.5 );
setRotateKey( spep_6 + 1, 1, 13.7 );
setRotateKey( spep_6 + 2, 1, 17 );
setRotateKey( spep_6 -3 + 6, 1, 20.2 );
setRotateKey( spep_6 -3 + 8, 1, 23.4 );
setRotateKey( spep_6 -3 + 10, 1, 26.6 );
setRotateKey( spep_6 -3 + 12, 1, 29.9 );
setRotateKey( spep_6 -3 + 15, 1, 33.1 );
setRotateKey( spep_6 -3 + 16, 1, 84 );
setRotateKey( spep_6 -3 + 18, 1, 84 );
setRotateKey( spep_6 -3 + 20, 1, 94 );
setRotateKey( spep_6 -3 + 22, 1, 94 );
setRotateKey( spep_6 -3 + 24, 1, 76.5 );
setRotateKey( spep_6 -3 + 26, 1, 76.5 );
setRotateKey( spep_6 -3 + 28, 1, 84 );
setRotateKey( spep_6 -3 + 36, 1, 84 );

-- ** 音 ** --
--地面激突
SE020 = playSeVer2( spep_6 + 6, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0,116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 16 );
endPhase( spep_6 + 106 );


end