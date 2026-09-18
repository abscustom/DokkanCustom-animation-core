--1023041:LR_ベジータ/孫悟空_超必殺技：アメイジングインパクト
--sp_effect_b1_00163
--sp2250

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
SP_01 = 158087; --対峙_手前
SP_02 = 158088; --対峙_奥
SP_03 = 158089; --突進_手前
SP_04 = 158091; --突進_中
SP_05 = 158092; --突進_奥
SP_06 = 158093; --パンチ構え
SP_07 = 158094; --ラッシュ_手前
SP_08 = 158096; --ラッシュ_中
SP_09 = 158097; --ラッシュ_奥
SP_10 = 158098; --蹴り上げ_手前
SP_11 = 158100; --蹴り上げ_中
SP_12 = 158101; --蹴り上げ_奥
SP_13 = 158102; --追付く_手前
SP_14 = 158104; --追付く_奥
SP_15 = 158105; --振り被る
SP_16 = 158106; --叩き付ける
SP_17 = 158107; --叩き付ける
SP_18 = 158108; --叩き付ける
SP_19 = 158109; --気を溜める
SP_20 = 158110; --落下アップ
SP_21 = 158111; --落下引き
SP_22 = 158112; --爆発
SP_23 = 158113; --着地

--エフェクト(敵側)
SP_01x = 158087; --対峙_手前
SP_02x = 158088; --対峙_奥
SP_03x = 158090; --突進_手前_敵側
SP_04x = 158091; --突進_中
SP_05x = 158092; --突進_奥
SP_06x = 158093; --パンチ構え
SP_07x = 158095; --ラッシュ_手前_敵側
SP_08x = 158096; --ラッシュ_中
SP_09x = 158097; --ラッシュ_奥
SP_10x = 158099; --蹴り上げ_手前_敵側
SP_11x = 158100; --蹴り上げ_中
SP_12x = 158101; --蹴り上げ_奥
SP_13x = 158103; --追付く_手前_敵側
SP_14x = 158104; --追付く_奥
SP_15x = 158105; --振り被る
SP_16x = 158106; --叩き付ける
SP_17x = 158107; --叩き付ける
SP_18x = 158108; --叩き付ける
SP_19x = 158109; --気を溜める
SP_20x = 158110; --落下アップ
SP_21x = 158111; --落下引き
SP_22x = 158112; --爆発
SP_23x = 158113; --着地

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.9);


setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--対峙
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
confrontation_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, confrontation_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 36, confrontation_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 36, confrontation_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation_f, 0 );
setEffRotateKey( spep_0 + 36, confrontation_f, 0 );
setEffAlphaKey( spep_0 + 0, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 34, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 35, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 36, confrontation_f, 0 );

-- ** エフェクト等 ** --
confrontation_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, confrontation_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 36, confrontation_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 36, confrontation_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation_b, 0 );
setEffRotateKey( spep_0 + 36, confrontation_b, 0 );
setEffAlphaKey( spep_0 + 0, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 34, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 35, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 36, confrontation_b, 0 );

--敵の動き
setDisp(spep_0 + 0, 1, 1);

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 110.6, 73.3 , 0 );
setMoveKey( spep_0 + 1, 1, 110.6, 73.3 , 0 );
setMoveKey( spep_0 + 2, 1, 111.2, 73.3 , 0 );
setMoveKey( spep_0 + 3, 1, 111.2, 73.3 , 0 );
setMoveKey( spep_0 + 4, 1, 111.8, 73.3 , 0 );
setMoveKey( spep_0 + 5, 1, 111.8, 73.3 , 0 );
setMoveKey( spep_0 + 6, 1, 112.3, 73.3 , 0 );
setMoveKey( spep_0 + 8, 1, 112.8, 73.3 , 0 );
setMoveKey( spep_0 + 10, 1, 113.2, 73.3 , 0 );
setMoveKey( spep_0 + 12, 1, 113.7, 73.3 , 0 );
setMoveKey( spep_0 + 14, 1, 114.1, 73.3 , 0 );
setMoveKey( spep_0 + 16, 1, 114.4, 73.3 , 0 );
setMoveKey( spep_0 + 18, 1, 114.8, 73.3 , 0 );
setMoveKey( spep_0 + 20, 1, 115.1, 73.3 , 0 );
setMoveKey( spep_0 + 22, 1, 115.4, 73.3 , 0 );
setMoveKey( spep_0 + 24, 1, 115.7, 73.3 , 0 );
setMoveKey( spep_0 + 26, 1, 116, 73.3 , 0 );
setMoveKey( spep_0 + 28, 1, 116.2, 73.3 , 0 );
setMoveKey( spep_0 + 30, 1, 116.5, 73.3 , 0 );
setMoveKey( spep_0 + 32, 1, 116.8, 73.3 , 0 );
setMoveKey( spep_0 + 34, 1, 115.8, 72.1 , 0 );
setMoveKey( spep_0 + 35, 1, 115.8, 72.1 , 0 );

setScaleKey( spep_0 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 1, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 2, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 3, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 4, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 5, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 6, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 32, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 34, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 35, 1, 0.54, 0.54 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 35, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+36;

------------------------------------------------------
--突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0, 2000 );
setEffMoveKey( spep_1 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 26, rush_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 26, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 26, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 24, rush_f, 255 );
setEffAlphaKey( spep_1 + 25, rush_f, 255 );
setEffAlphaKey( spep_1 + 26, rush_f, 0 );

-- ** エフェクト等 ** --
rush_n = entryEffect( spep_1 + 0, SP_04, 0x100, -1, 0, 0, 0, 1000 );
setEffMoveKey( spep_1 + 0, rush_n, 0, 0, 0 );
setEffMoveKey( spep_1 + 26, rush_n, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_n, 1.0, 1.0 );
setEffScaleKey( spep_1 + 26, rush_n, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_n, 0 );
setEffRotateKey( spep_1 + 26, rush_n, 0 );
setEffAlphaKey( spep_1 + 0, rush_n, 255 );
setEffAlphaKey( spep_1 + 24, rush_n, 255 );
setEffAlphaKey( spep_1 + 25, rush_n, 255 );
setEffAlphaKey( spep_1 + 26, rush_n, 0 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_1 + 0, SP_05, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 26, rush_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 26, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 26, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 24, rush_b, 255 );
setEffAlphaKey( spep_1 + 25, rush_b, 255 );
setEffAlphaKey( spep_1 + 26, rush_b, 0 );

--敵の動き
setDisp( spep_1 + 26, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 106.4, 46.5 , 0 );
setMoveKey( spep_1 + 2, 1, 105.7, 45.3 , 0 );
setMoveKey( spep_1 + 4, 1, 105, 44.1 , 0 );
setMoveKey( spep_1 + 6, 1, 104.3, 42.8 , 0 );
setMoveKey( spep_1 + 8, 1, 103.7, 41.6 , 0 );
setMoveKey( spep_1 + 10, 1, 103, 40.3 , 0 );
setMoveKey( spep_1 + 12, 1, 102.3, 39.1 , 0 );
setMoveKey( spep_1 + 14, 1, 101.6, 37.9 , 0 );
setMoveKey( spep_1 + 16, 1, 101, 36.6 , 0 );
setMoveKey( spep_1 + 18, 1, 100.3, 35.4 , 0 );
setMoveKey( spep_1 + 20, 1, 99.6, 34.2 , 0 );
setMoveKey( spep_1 + 22, 1, 98.9, 32.9 , 0 );
setMoveKey( spep_1 + 24, 1, 98.3, 31.7 , 0 );
setMoveKey( spep_1 + 26, 1, 97.6, 30.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 2, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 4, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 6, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 8, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 10, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 12, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 14, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 16, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 18, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 20, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 22, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 24, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 26, 1, 1.38, 1.38 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 26, 1, 0 );

-- ** 音 ** --
--ベジータ向かっていく
SE002 = playSeVer2( spep_1 + 0, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_1 + 0, 44, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 30, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+26;

------------------------------------------------------
--パンチ構え
------------------------------------------------------
-- ** エフェクト等 ** --
panting_ready = entryEffect( spep_2 + 0, SP_06, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, panting_ready, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, panting_ready, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_ready, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, panting_ready, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_ready, 0 );
setEffRotateKey( spep_2 + 56, panting_ready, 0 );
setEffAlphaKey( spep_2 + 0, panting_ready, 255 );
setEffAlphaKey( spep_2 + 54, panting_ready, 255 );
setEffAlphaKey( spep_2 + 55, panting_ready, 255 );
setEffAlphaKey( spep_2 + 56, panting_ready, 0 );

-- ** 音 ** --
--ベジータ振りかぶる
SE004 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 36, 0, 10, -1);
SE005 = playSeVer2( spep_2 + 0, 1004, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 0, 20, "",spep_2 + 70, 18, 36, -1);
SE007 = playSeVer2( spep_2 + 0, 1314, "",spep_2 + 74, 14, 36, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+ 40; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    pauseAll( SP_dodge, 67);

    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);

    do return end
    else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--次の準備 
spep_3=spep_2+56;

------------------------------------------------------
--ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
lush_f = entryEffect( spep_3 + 0, SP_07, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, lush_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 94, lush_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, lush_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 94, lush_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, lush_f, 0 );
setEffRotateKey( spep_3 + 94, lush_f, 0 );
setEffAlphaKey( spep_3 + 0, lush_f, 255 );
setEffAlphaKey( spep_3 + 92, lush_f, 255 );
setEffAlphaKey( spep_3 + 93, lush_f, 255 );
setEffAlphaKey( spep_3 + 94, lush_f, 0 );

-- ** エフェクト等 ** --
lush_n = entryEffect( spep_3 + 0, SP_08, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, lush_n, 0, 0, 0 );
setEffMoveKey( spep_3 + 94, lush_n, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, lush_n, 1.0, 1.0 );
setEffScaleKey( spep_3 + 94, lush_n, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, lush_n, 0 );
setEffRotateKey( spep_3 + 94, lush_n, 0 );
setEffAlphaKey( spep_3 + 0, lush_n, 255 );
setEffAlphaKey( spep_3 + 92, lush_n, 255 );
setEffAlphaKey( spep_3 + 93, lush_n, 255 );
setEffAlphaKey( spep_3 + 94, lush_n, 0 );

-- ** エフェクト等 ** --
lush_b = entryEffect( spep_3 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, lush_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 94, lush_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, lush_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 94, lush_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, lush_b, 0 );
setEffRotateKey( spep_3 + 94, lush_b, 0 );
setEffAlphaKey( spep_3 + 0, lush_b, 255 );
setEffAlphaKey( spep_3 + 92, lush_b, 255 );
setEffAlphaKey( spep_3 + 93, lush_b, 255 );
setEffAlphaKey( spep_3 + 94, lush_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 66, 1, 0 );

changeAnime( spep_3 + 0, 1, 117 );
changeAnime( spep_3-3 + 6, 1, 108 );
changeAnime( spep_3-3 + 46, 1, 106 );
changeAnime( spep_3-3 + 50, 1, 5 );

setMoveKey( spep_3 + 0, 1, 6.7, -30.8 , 0 );
setMoveKey( spep_3-3 + 5, 1, 6.7, -30.8 , 0 );
setMoveKey( spep_3-3 + 6, 1, 49.8, 99.9 , 0 );
setMoveKey( spep_3-3 + 8, 1, 34.7, 55.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, 19.7, 9.8 , 0 );
setMoveKey( spep_3-3 + 12, 1, 24.9, 43.4 , 0 );
setMoveKey( spep_3-3 + 14, 1, 30, 77.4 , 0 );
setMoveKey( spep_3-3 + 16, 1, 28.7, 58.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 27.5, 38.5 , 0 );
setMoveKey( spep_3-3 + 20, 1, 28.6, 57.7 , 0 );
setMoveKey( spep_3-3 + 22, 1, 29.7, 77.1 , 0 );
setMoveKey( spep_3-3 + 24, 1, 27.5, 70.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, 25.8, 65.4 , 0 );
setMoveKey( spep_3-3 + 28, 1, 25.8, 69.6 , 0 );
setMoveKey( spep_3-3 + 30, 1, 25.8, 73.9 , 0 );
setMoveKey( spep_3-3 + 32, 1, 25.8, 78.2 , 0 );
setMoveKey( spep_3-3 + 34, 1, 25.8, 82.4 , 0 );
setMoveKey( spep_3-3 + 36, 1, 25.8, 86.7 , 0 );
setMoveKey( spep_3-3 + 38, 1, 25.8, 90.9 , 0 );
setMoveKey( spep_3-3 + 40, 1, 25.8, 95.2 , 0 );
setMoveKey( spep_3-3 + 42, 1, 25.8, 99.5 , 0 );
setMoveKey( spep_3-3 + 45, 1, 25.8, 103.7 , 0 );
setMoveKey( spep_3-3 + 46, 1, 68.9, 159.4 , 0 );
setMoveKey( spep_3-3 + 49, 1, 46, 206.3 , 0 );
setMoveKey( spep_3-3 + 50, 1, 106.4, 255.7 , 0 );
setMoveKey( spep_3-3 + 52, 1, 195.3, 327.5 , 0 );
setMoveKey( spep_3-3 + 54, 1, 288.2, 402.8 , 0 );
setMoveKey( spep_3-3 + 56, 1, 286.9, 409.1 , 0 );
setMoveKey( spep_3-3 + 58, 1, 281.5, 411.8 , 0 );
setMoveKey( spep_3-3 + 60, 1, 341.5, 469.7 , 0 );
setMoveKey( spep_3-3 + 62, 1, 403.4, 529.5 , 0 );
setMoveKey( spep_3-3 + 64, 1, 431.1, 549.6 , 0 );
setMoveKey( spep_3-3 + 66, 1, 456.8, 567.9 , 0 );

setScaleKey( spep_3 + 0, 1, 1.9, 1.9 );
setScaleKey( spep_3-3 + 5, 1, 1.9, 1.9 );

setScaleKey( spep_3-3 + 6, 1, 2.41,2.41);
setScaleKey( spep_3-3 + 8, 1, 2.25,2.25);
setScaleKey( spep_3-3 + 10, 1, 2.1,2.1);
setScaleKey( spep_3-3 + 12, 1, 2.2,2.2);
setScaleKey( spep_3-3 + 14, 1, 2.31,2.31);
setScaleKey( spep_3-3 + 16, 1, 2.2,2.2);
setScaleKey( spep_3-3 + 18, 1, 2.1,2.1);
setScaleKey( spep_3-3 + 20, 1, 2.15,2.15);
setScaleKey( spep_3-3 + 22, 1, 2.2,2.2);
setScaleKey( spep_3-3 + 24, 1, 2.15,2.15);
setScaleKey( spep_3-3 + 26, 1, 2.1,2.1);
setScaleKey( spep_3-3 + 45, 1, 2.1,2.1);

setScaleKey( spep_3-3 + 46, 1, 2.07, 2.07 );
setScaleKey( spep_3-3 + 49, 1, 1.93, 1.93 );
setScaleKey( spep_3-3 + 50, 1, 1.6, 1.6 );
setScaleKey( spep_3-3 + 52, 1, 1.57, 1.57 );
setScaleKey( spep_3-3 + 54, 1, 1.54, 1.54 );
setScaleKey( spep_3-3 + 56, 1, 1.36, 1.36 );
setScaleKey( spep_3-3 + 58, 1, 1.2, 1.2 );
setScaleKey( spep_3-3 + 60, 1, 1.13, 1.13 );
setScaleKey( spep_3-3 + 62, 1, 1.05, 1.05 );
setScaleKey( spep_3-3 + 64, 1, 0.92, 0.92 );
setScaleKey( spep_3-3 + 66, 1, 0.8, 0.8 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 5, 1, 0 );
setRotateKey( spep_3-3 + 6, 1, -35 );
setRotateKey( spep_3-3 + 8, 1, -35.3 );
setRotateKey( spep_3-3 + 10, 1, -35.6 );
setRotateKey( spep_3-3 + 12, 1, -35.9 );
setRotateKey( spep_3-3 + 14, 1, -36.3 );
setRotateKey( spep_3-3 + 16, 1, -36.6 );
setRotateKey( spep_3-3 + 18, 1, -36.9 );
setRotateKey( spep_3-3 + 20, 1, -37.2 );
setRotateKey( spep_3-3 + 22, 1, -37.5 );
setRotateKey( spep_3-3 + 24, 1, -37.8 );
setRotateKey( spep_3-3 + 26, 1, -38 );
setRotateKey( spep_3-3 + 28, 1, -38.3 );
setRotateKey( spep_3-3 + 30, 1, -38.5 );
setRotateKey( spep_3-3 + 32, 1, -38.7 );
setRotateKey( spep_3-3 + 34, 1, -38.9 );
setRotateKey( spep_3-3 + 36, 1, -39.1 );
setRotateKey( spep_3-3 + 38, 1, -39.3 );
setRotateKey( spep_3-3 + 40, 1, -39.6 );
setRotateKey( spep_3-3 + 42, 1, -39.8 );
setRotateKey( spep_3-3 + 45, 1, -40 );
setRotateKey( spep_3-3 + 46, 1, -80 );
setRotateKey( spep_3-3 + 47, 1, -80 );
setRotateKey( spep_3-3 + 48, 1, -20 );
setRotateKey( spep_3-3 + 49, 1, -20 );
setRotateKey( spep_3-3 + 50, 1, 60 );
setRotateKey( spep_3-3 + 52, 1, 58.7 );
setRotateKey( spep_3-3 + 54, 1, 57.5 );
setRotateKey( spep_3-3 + 56, 1, 56.2 );
setRotateKey( spep_3-3 + 58, 1, 55 );
setRotateKey( spep_3-3 + 60, 1, 53.7 );
setRotateKey( spep_3-3 + 62, 1, 52.5 );
setRotateKey( spep_3-3 + 64, 1, 51.2 );
setRotateKey( spep_3-3 + 66, 1, 50 );

-- ** 音 ** --
--腹パン
SE008 = playSeVer2( spep_3 + 0, 1003, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_3 + 8, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_3 + 8, 1190, "",spep_3 + 58, 0, 24, -1);
SE011 = playSeVer2( spep_3 + 8, 1153, "",spep_3 + 58, 0, 24, -1);
setSeVolumeByWorkId( spep_3 + 8, SE011, 77 );

--パンチ
SE012 = playSeVer2( spep_3 + 44, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 44, SE012, 145 );
SE013 = playSeVer2( spep_3 + 48, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 48, SE013, 89 );
SE014 = playSeVer2( spep_3 + 50, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 50, SE014, 84 );

--回り込む
SE015 = playSeVer2( spep_3 + 76, 1035, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 76, 1011, "",spep_3 + 104, 0, 10, -1);
SE017 = playSeVer2( spep_3 + 76, 9, "",spep_3 + 162, 0, 40, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 96, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_4=spep_3+92;

------------------------------------------------------
--蹴り上げ
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_4 + 0, SP_10, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 130, kick_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 130, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 130, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 128, kick_f, 255 );
setEffAlphaKey( spep_4 + 129, kick_f, 255 );
setEffAlphaKey( spep_4 + 130, kick_f, 0 );

-- ** エフェクト等 ** --
kick_n = entryEffect( spep_4 + 0, SP_11, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, kick_n, 0, 0, 0 );
setEffMoveKey( spep_4 + 130, kick_n, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_n, 1.0, 1.0 );
setEffScaleKey( spep_4 + 130, kick_n, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_n, 0 );
setEffRotateKey( spep_4 + 130, kick_n, 0 );
setEffAlphaKey( spep_4 + 0, kick_n, 255 );
setEffAlphaKey( spep_4 + 128, kick_n, 255 );
setEffAlphaKey( spep_4 + 129, kick_n, 255 );
setEffAlphaKey( spep_4 + 130, kick_n, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_4 + 0, SP_12, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 130, kick_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 130, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 130, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 128, kick_b, 255 );
setEffAlphaKey( spep_4 + 129, kick_b, 255 );
setEffAlphaKey( spep_4 + 130, kick_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-2 + 53, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, -132.3, -88.7 , 0 );
--setMoveKey( spep_4-3 + 2, 1, -132.2, -88.7 , 0 );
setMoveKey( spep_4-3 + 4, 1, -131.7, -88.7 , 0 );
setMoveKey( spep_4-3 + 6, 1, -131, -88.7 , 0 );
setMoveKey( spep_4-3 + 8, 1, -129.9, -88.7 , 0 );
setMoveKey( spep_4-3 + 10, 1, -128.6, -88.7 , 0 );
setMoveKey( spep_4-3 + 12, 1, -127, -88.7 , 0 );
setMoveKey( spep_4-3 + 14, 1, -125.1, -88.7 , 0 );
setMoveKey( spep_4-3 + 16, 1, -123, -88.7 , 0 );
setMoveKey( spep_4-3 + 18, 1, -120.6, -88.7 , 0 );
setMoveKey( spep_4-3 + 20, 1, -117.8, -88.7 , 0 );
setMoveKey( spep_4-3 + 22, 1, -114.8, -88.7 , 0 );
setMoveKey( spep_4-3 + 24, 1, -111.4, -88.7 , 0 );
setMoveKey( spep_4-3 + 26, 1, -107.7, -88.7 , 0 );
setMoveKey( spep_4-3 + 28, 1, -103.7, -88.7 , 0 );
setMoveKey( spep_4-3 + 30, 1, -99.2, -88.7 , 0 );
setMoveKey( spep_4-3 + 32, 1, -94.3, -88.7 , 0 );
setMoveKey( spep_4-3 + 34, 1, -88.9, -88.7 , 0 );
setMoveKey( spep_4-3 + 36, 1, -83, -88.7 , 0 );
setMoveKey( spep_4-3 + 38, 1, -76.3, -88.7 , 0 );
setMoveKey( spep_4-3 + 40, 1, -68.9, -88.7 , 0 );
setMoveKey( spep_4-3 + 42, 1, -60.6, -88.7 , 0 );
setMoveKey( spep_4-3 + 44, 1, -51, -88.7 , 0 );
setMoveKey( spep_4-3 + 46, 1, -39.6, -88.7 , 0 );
setMoveKey( spep_4-3 + 48, 1, -25.6, -88.7 , 0 );
setMoveKey( spep_4-3 + 50, 1, -6.5, -88.7 , 0 );
setMoveKey( spep_4-2 + 53, 1, 43, -88.7 , 0 );

setScaleKey( spep_4 + 0, 1, 0.05, 0.05 );
setScaleKey( spep_4-3 + 4, 1, 0.05, 0.05 );
setScaleKey( spep_4-3 + 6, 1, 0.06, 0.06 );
setScaleKey( spep_4-3 + 10, 1, 0.06, 0.06 );
setScaleKey( spep_4-3 + 12, 1, 0.07, 0.07 );
setScaleKey( spep_4-3 + 14, 1, 0.08, 0.08 );
setScaleKey( spep_4-3 + 16, 1, 0.08, 0.08 );
setScaleKey( spep_4-3 + 18, 1, 0.09, 0.09 );
setScaleKey( spep_4-3 + 20, 1, 0.1, 0.1 );
setScaleKey( spep_4-3 + 22, 1, 0.12, 0.12 );
setScaleKey( spep_4-3 + 24, 1, 0.13, 0.13 );
setScaleKey( spep_4-3 + 26, 1, 0.14, 0.14 );
setScaleKey( spep_4-3 + 28, 1, 0.16, 0.16 );
setScaleKey( spep_4-3 + 30, 1, 0.17, 0.17 );
setScaleKey( spep_4-3 + 32, 1, 0.19, 0.19 );
setScaleKey( spep_4-3 + 34, 1, 0.21, 0.21 );
setScaleKey( spep_4-3 + 36, 1, 0.23, 0.23 );
setScaleKey( spep_4-3 + 38, 1, 0.26, 0.26 );
setScaleKey( spep_4-3 + 40, 1, 0.28, 0.28 );
setScaleKey( spep_4-3 + 42, 1, 0.32, 0.32 );
setScaleKey( spep_4-3 + 44, 1, 0.35, 0.35 );
setScaleKey( spep_4-3 + 46, 1, 0.39, 0.39 );
setScaleKey( spep_4-3 + 48, 1, 0.45, 0.45 );
setScaleKey( spep_4-3 + 50, 1, 0.52, 0.52 );
setScaleKey( spep_4-2 + 53, 1, 0.7, 0.7 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-2 + 53, 1, 0 );

--敵の動き
setDisp( spep_4-3 + 64, 1, 1 );
setDisp( spep_4-1 + 104, 1, 0 );

changeAnime( spep_4-3 + 64, 1, 5 );
changeAnime( spep_4-3 + 68, 1, 106 );

setMoveKey( spep_4-3 + 64, 1, -132.4, -7.4 , 0 );
setMoveKey( spep_4-3 + 66, 1, -58.1, 156.1 , 0 );
setMoveKey( spep_4-3 + 67, 1, -58.1, 156.1 , 0 );

setMoveKey( spep_4-3 + 68, 1, 17.5, 147.3 , 0 );
setMoveKey( spep_4-3 + 70, 1, 15.9, 76.5 , 0 );
setMoveKey( spep_4-3 + 72, 1, 16.7, 113.5 , 0 );
setMoveKey( spep_4-3 + 74, 1, 17.5, 150.9 , 0 );
setMoveKey( spep_4-3 + 76, 1, 16.7, 120.1 , 0 );
setMoveKey( spep_4-3 + 78, 1, 15.9, 89 , 0 );
setMoveKey( spep_4-3 + 80, 1, 16.3, 109.3 , 0 );
setMoveKey( spep_4-3 + 82, 1, 16.7, 129.9 , 0 );
setMoveKey( spep_4-3 + 84, 1, 16.3, 115.7 , 0 );
setMoveKey( spep_4-3 + 86, 1, 15.9, 101.4 , 0 );
setMoveKey( spep_4-3 + 88, 1, 15.9, 104.5 , 0 );
setMoveKey( spep_4-3 + 90, 1, 15.9, 107.6 , 0 );
setMoveKey( spep_4-3 + 92, 1, 15.9, 110.8 , 0 );
setMoveKey( spep_4-3 + 94, 1, 15.9, 113.9 , 0 );
setMoveKey( spep_4-3 + 96, 1, 15.9, 232 , 0 );
setMoveKey( spep_4-3 + 98, 1, 15.9, 350.1 , 0 );
setMoveKey( spep_4-3 + 100, 1, 15.9, 468.2 , 0 );
setMoveKey( spep_4-3 + 102, 1, 15.9, 586.3 , 0 );
setMoveKey( spep_4-1 + 104, 1, 15.9, 704.4 , 0 );

setScaleKey( spep_4-3 + 64, 1, 2.4, 2.4 );
setScaleKey( spep_4-3 + 67, 1, 2.4, 2.4 );

setScaleKey( spep_4-3 + 68, 1, 1.98,1.98);
setScaleKey( spep_4-3 + 70, 1, 1.81,1.81);
setScaleKey( spep_4-3 + 72, 1, 1.9,1.9);
setScaleKey( spep_4-3 + 74, 1, 1.98,1.98);
setScaleKey( spep_4-3 + 76, 1, 1.9,1.9);
setScaleKey( spep_4-3 + 78, 1, 1.81,1.81);
setScaleKey( spep_4-3 + 80, 1, 1.85,1.85);
setScaleKey( spep_4-3 + 82, 1, 1.9,1.9);
setScaleKey( spep_4-3 + 84, 1, 1.85,1.85);
setScaleKey( spep_4-3 + 86, 1, 1.81,1.81);
setScaleKey( spep_4-1 + 104, 1, 1.81,1.81);

setRotateKey( spep_4-3 + 64, 1, 90 );
setRotateKey( spep_4-3 + 67, 1, 90 );

setRotateKey( spep_4-3 + 68, 1, 30 );
setRotateKey( spep_4-1 + 104, 1, 30 );

-- ** 音 ** --
--回り込む
SE018 = playSeVer2( spep_4 + 14, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 14, SE018, 164 );

--蹴り上げる
SE019 = playSeVer2( spep_4 + 62, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 62, SE019, 79 );
SE020 = playSeVer2( spep_4 + 62, 1153, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 62, 1011, "", 0, 0, 0, -1);

--回り込む２
SE022 = playSeVer2( spep_4 + 112, 1035, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_4 + 112, 1182, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_4 + 112, 44, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 136, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_5=spep_4+128;

------------------------------------------------------
--追付く
------------------------------------------------------
-- ** エフェクト等 ** --
catch_f = entryEffect( spep_5 + 0, SP_13, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, catch_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 36, catch_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, catch_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 36, catch_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, catch_f, 0 );
setEffRotateKey( spep_5 + 36, catch_f, 0 );
setEffAlphaKey( spep_5 + 0, catch_f, 255 );
setEffAlphaKey( spep_5 + 34, catch_f, 255 );
setEffAlphaKey( spep_5 + 35, catch_f, 255 );
setEffAlphaKey( spep_5 + 36, catch_f, 0 );

-- ** エフェクト等 ** --
catch_b = entryEffect( spep_5 + 0, SP_14, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, catch_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 36, catch_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, catch_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 36, catch_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, catch_b, 0 );
setEffRotateKey( spep_5 + 36, catch_b, 0 );
setEffAlphaKey( spep_5 + 0, catch_b, 255 );
setEffAlphaKey( spep_5 + 34, catch_b, 255 );
setEffAlphaKey( spep_5 + 35, catch_b, 255 );
setEffAlphaKey( spep_5 + 36, catch_b, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-1 + 38, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, -37.9, -372.3 , 0 );
--setMoveKey( spep_5-3 + 2, 1, -29.5, -346 , 0 );
setMoveKey( spep_5-3 + 4, 1, -21.7, -321.2 , 0 );
setMoveKey( spep_5-3 + 6, 1, -14.2, -297.6 , 0 );
setMoveKey( spep_5-3 + 8, 1, -7.1, -275 , 0 );
setMoveKey( spep_5-3 + 10, 1, -0.3, -253.5 , 0 );
setMoveKey( spep_5-3 + 12, 1, 6.2, -233.1 , 0 );
setMoveKey( spep_5-3 + 14, 1, 12.4, -213.7 , 0 );
setMoveKey( spep_5-3 + 16, 1, 18.2, -195.3 , 0 );
setMoveKey( spep_5-3 + 18, 1, 23.7, -177.9 , 0 );
setMoveKey( spep_5-3 + 20, 1, 28.8, -161.6 , 0 );
setMoveKey( spep_5-3 + 22, 1, 33.6, -146.5 , 0 );
setMoveKey( spep_5-3 + 24, 1, 38.1, -132.5 , 0 );
setMoveKey( spep_5-3 + 26, 1, 42.1, -119.7 , 0 );
setMoveKey( spep_5-3 + 28, 1, 45.7, -108.3 , 0 );
setMoveKey( spep_5-3 + 30, 1, 48.9, -98.3 , 0 );
setMoveKey( spep_5-3 + 32, 1, 51.6, -89.8 , 0 );
setMoveKey( spep_5-3 + 34, 1, 53.8, -83 , 0 );
setMoveKey( spep_5-3 + 36, 1, 55.3, -78 , 0 );
setMoveKey( spep_5-1 + 38, 1, 56.5, -75 , 0 );

setScaleKey( spep_5 + 0, 1, 0.15,0.15);
setScaleKey( spep_5-3 + 4, 1, 0.37,0.37);
setScaleKey( spep_5-3 + 6, 1, 0.48,0.48);
setScaleKey( spep_5-3 + 8, 1, 0.58,0.58);
setScaleKey( spep_5-3 + 10, 1, 0.68,0.68);
setScaleKey( spep_5-3 + 12, 1, 0.77,0.77);
setScaleKey( spep_5-3 + 14, 1, 0.86,0.86);
setScaleKey( spep_5-3 + 16, 1, 0.93,0.93);
setScaleKey( spep_5-3 + 18, 1, 1.01,1.01);
setScaleKey( spep_5-3 + 20, 1, 1.09,1.09);
setScaleKey( spep_5-3 + 22, 1, 1.15,1.15);
setScaleKey( spep_5-3 + 24, 1, 1.21,1.21);
setScaleKey( spep_5-3 + 26, 1, 1.27,1.27);
setScaleKey( spep_5-3 + 28, 1, 1.32,1.32);
setScaleKey( spep_5-3 + 30, 1, 1.36,1.36);
setScaleKey( spep_5-3 + 32, 1, 1.4,1.4);
setScaleKey( spep_5-3 + 34, 1, 1.43,1.43);
setScaleKey( spep_5-3 + 36, 1, 1.45,1.45);
setScaleKey( spep_5-1 + 38, 1, 1.47,1.47);

setRotateKey( spep_5 + 0, 1, 42 );
--setRotateKey( spep_5-3 + 2, 1, 43.9 );
setRotateKey( spep_5-3 + 4, 1, 45.8 );
setRotateKey( spep_5-3 + 6, 1, 47.5 );
setRotateKey( spep_5-3 + 8, 1, 49.2 );
setRotateKey( spep_5-3 + 10, 1, 50.8 );
setRotateKey( spep_5-3 + 12, 1, 52.3 );
setRotateKey( spep_5-3 + 14, 1, 53.7 );
setRotateKey( spep_5-3 + 16, 1, 55.1 );
setRotateKey( spep_5-3 + 18, 1, 56.4 );
setRotateKey( spep_5-3 + 20, 1, 57.6 );
setRotateKey( spep_5-3 + 22, 1, 58.7 );
setRotateKey( spep_5-3 + 24, 1, 59.8 );
setRotateKey( spep_5-3 + 26, 1, 60.7 );
setRotateKey( spep_5-3 + 28, 1, 61.5 );
setRotateKey( spep_5-3 + 30, 1, 62.3 );
setRotateKey( spep_5-3 + 32, 1, 62.9 );
setRotateKey( spep_5-3 + 34, 1, 63.4 );
setRotateKey( spep_5-3 + 36, 1, 63.8 );
setRotateKey( spep_5-1 + 38, 1, 64 );

-- ** 音 ** --
--気を解除する
SE025 = playSeVer2( spep_5 + 16, 1026, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_6=spep_5+34;

------------------------------------------------------
--振り被る
------------------------------------------------------
-- ** エフェクト等 ** --
shake = entryEffect( spep_6 + 0, SP_15, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, shake, 0, 0, 0 );
setEffMoveKey( spep_6 + 46, shake, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, shake, 1.0, 1.0 );
setEffScaleKey( spep_6 + 46, shake, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, shake, 0 );
setEffRotateKey( spep_6 + 46, shake, 0 );
setEffAlphaKey( spep_6 + 0, shake, 255 );
setEffAlphaKey( spep_6 + 44, shake, 255 );
setEffAlphaKey( spep_6 + 45, shake, 255 );
setEffAlphaKey( spep_6 + 46, shake, 0 );

-- ** 音 ** --
--振りかぶる
SE026 = playSeVer2( spep_6 + 0, 1116, "",spep_6 + 30, 0, 8, -1);
SE027 = playSeVer2( spep_6 + 6, 1011, "",spep_6 + 52, 14, 22, -1);
setSeVolumeByWorkId( spep_6 + 6, SE027, 81 );

--叩きつける
SE028 = playSeVer2( spep_6 + 42, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 42, SE028, 132 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_7=spep_6+46;

------------------------------------------------------
--叩き付ける
------------------------------------------------------
-- ** エフェクト等 ** --
down_f = entryEffect( spep_7 + 0, SP_16, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, down_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 86, down_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, down_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 86, down_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, down_f, 0 );
setEffRotateKey( spep_7 + 86, down_f, 0 );
setEffAlphaKey( spep_7 + 0, down_f, 255 );
setEffAlphaKey( spep_7 + 84, down_f, 255 );
setEffAlphaKey( spep_7 + 85, down_f, 255 );
setEffAlphaKey( spep_7 + 86, down_f, 0 );

-- ** エフェクト等 ** --
down_n = entryEffect( spep_7 + 0, SP_17, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, down_n, 0, 0, 0 );
setEffMoveKey( spep_7 + 86, down_n, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, down_n, 1.0, 1.0 );
setEffScaleKey( spep_7 + 86, down_n, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, down_n, 0 );
setEffRotateKey( spep_7 + 86, down_n, 0 );
setEffAlphaKey( spep_7 + 0, down_n, 255 );
setEffAlphaKey( spep_7 + 84, down_n, 255 );
setEffAlphaKey( spep_7 + 85, down_n, 255 );
setEffAlphaKey( spep_7 + 86, down_n, 0 );

-- ** エフェクト等 ** --
down_b = entryEffect( spep_7 + 0, SP_18, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, down_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 86, down_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, down_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 86, down_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, down_b, 0 );
setEffRotateKey( spep_7 + 86, down_b, 0 );
setEffAlphaKey( spep_7 + 0, down_b, 255 );
setEffAlphaKey( spep_7 + 84, down_b, 255 );
setEffAlphaKey( spep_7 + 85, down_b, 255 );
setEffAlphaKey( spep_7 + 86, down_b, 0 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7-1 + 68, 1, 0 );

changeAnime( spep_7 + 0, 1, 106 );
changeAnime( spep_7-3 + 4, 1, 108 );
changeAnime( spep_7-3 + 30, 1, 106 );

setMoveKey( spep_7 + 0, 1, -33.3, -150.6 , 0 );
--setMoveKey( spep_7 + 3, 1, -33.2, -90.7 , 0 );
setMoveKey( spep_7-3 + 4, 1, -45.1, -141.3 , 0 );
setMoveKey( spep_7-3 + 6, 1, -40.3, -87.6 , 0 );
setMoveKey( spep_7-3 + 8, 1, -35.5, -33.5 , 0 );
setMoveKey( spep_7-3 + 10, 1, -34, -48.4 , 0 );
setMoveKey( spep_7-3 + 12, 1, -32.5, -63.5 , 0 );
setMoveKey( spep_7-3 + 14, 1, -37, -53.3 , 0 );
setMoveKey( spep_7-3 + 16, 1, -41.5, -42.9 , 0 );
setMoveKey( spep_7-3 + 18, 1, -37.7, -50.7 , 0 );
setMoveKey( spep_7-3 + 20, 1, -34, -58.7 , 0 );
setMoveKey( spep_7-3 + 22, 1, -34.7, -55.6 , 0 );
setMoveKey( spep_7-3 + 24, 1, -35.5, -52.3 , 0 );
setMoveKey( spep_7-3 + 26, 1, -35.5, -54.7 , 0 );
setMoveKey( spep_7-3 + 29, 1, -35.5, -57 , 0 );
setMoveKey( spep_7-3 + 30, 1, -32.6, -30.3 , 0 );
setMoveKey( spep_7-3 + 32, 1, -24.6, -33 , 0 );
setMoveKey( spep_7-3 + 34, 1, -21.3, -34.1 , 0 );
setMoveKey( spep_7-3 + 36, 1, -18.8, -34.9 , 0 );
setMoveKey( spep_7-3 + 38, 1, -16.6, -35.6 , 0 );
setMoveKey( spep_7-3 + 40, 1, -14.7, -36.3 , 0 );
setMoveKey( spep_7-3 + 42, 1, -12.9, -36.9 , 0 );
setMoveKey( spep_7-3 + 44, 1, -11.2, -37.5 , 0 );
setMoveKey( spep_7-3 + 46, 1, -9.6, -38 , 0 );
setMoveKey( spep_7-3 + 48, 1, -8.1, -38.5 , 0 );
setMoveKey( spep_7-3 + 50, 1, -6.6, -39 , 0 );
setMoveKey( spep_7-3 + 52, 1, -5.1, -39.5 , 0 );
setMoveKey( spep_7-3 + 54, 1, -3.7, -40 , 0 );
setMoveKey( spep_7-3 + 56, 1, -2.4, -40.4 , 0 );
setMoveKey( spep_7-3 + 58, 1, -1, -40.9 , 0 );
setMoveKey( spep_7-3 + 60, 1, 0.3, -41.3 , 0 );
setMoveKey( spep_7-3 + 62, 1, 1.7, -41.8 , 0 );
setMoveKey( spep_7-3 + 64, 1, 3, -42.2 , 0 );
setMoveKey( spep_7-3 + 66, 1, 4.3, -42.7 , 0 );
setMoveKey( spep_7-1 + 68, 1, 6.2, -42.4 , 0 );

setScaleKey( spep_7 + 0, 1, 1.9, 1.9 );
--setScaleKey( spep_7-3 + 3, 1, 1.8, 1.8 );
setScaleKey( spep_7-3 + 4, 1, 2.64,2.64);
setScaleKey( spep_7-3 + 6, 1, 2.47,2.47);
setScaleKey( spep_7-3 + 8, 1, 2.3,2.3);
setScaleKey( spep_7-3 + 10, 1, 2.41,2.41);
setScaleKey( spep_7-3 + 12, 1, 2.53,2.53);
setScaleKey( spep_7-3 + 14, 1, 2.41,2.41);
setScaleKey( spep_7-3 + 16, 1, 2.3,2.3);
setScaleKey( spep_7-3 + 18, 1, 2.35,2.35);
setScaleKey( spep_7-3 + 20, 1, 2.41,2.41);
setScaleKey( spep_7-3 + 22, 1, 2.35,2.35);
setScaleKey( spep_7-3 + 24, 1, 2.3,2.3);
setScaleKey( spep_7-3 + 29, 1, 2.3,2.3);
setScaleKey( spep_7-3 + 30, 1, 1.84,1.84);
setScaleKey( spep_7-3 + 32, 1, 1.74,1.74);
setScaleKey( spep_7-3 + 34, 1, 1.7,1.7);
setScaleKey( spep_7-3 + 36, 1, 1.66,1.66);
setScaleKey( spep_7-3 + 38, 1, 1.64,1.64);
setScaleKey( spep_7-3 + 40, 1, 1.62,1.62);
setScaleKey( spep_7-3 + 42, 1, 1.59,1.59);
setScaleKey( spep_7-3 + 44, 1, 1.57,1.57);
setScaleKey( spep_7-3 + 46, 1, 1.56,1.56);
setScaleKey( spep_7-3 + 48, 1, 1.54,1.54);
setScaleKey( spep_7-3 + 50, 1, 1.52,1.52);
setScaleKey( spep_7-3 + 52, 1, 1.5,1.5);
setScaleKey( spep_7-3 + 54, 1, 1.49,1.49);
setScaleKey( spep_7-3 + 56, 1, 1.47,1.47);
setScaleKey( spep_7-3 + 58, 1, 1.46,1.46);
setScaleKey( spep_7-3 + 60, 1, 1.43,1.43);
setScaleKey( spep_7-3 + 62, 1, 1.42,1.42);
setScaleKey( spep_7-3 + 64, 1, 1.41,1.41);
setScaleKey( spep_7-3 + 66, 1, 1.39,1.39);
setScaleKey( spep_7-1 + 68, 1, 1.38,1.38);

setRotateKey( spep_7 + 0, 1, 15 );
--setRotateKey( spep_7-3 + 3, 1, 15 );
setRotateKey( spep_7-3 + 4, 1, 80 );
setRotateKey( spep_7-3 + 29, 1, 80 );
setRotateKey( spep_7-3 + 30, 1, 90 );
setRotateKey( spep_7-3 + 32, 1, 96.2 );
setRotateKey( spep_7-3 + 34, 1, 98.8 );
setRotateKey( spep_7-3 + 36, 1, 100.8 );
setRotateKey( spep_7-3 + 38, 1, 102.5 );
setRotateKey( spep_7-3 + 40, 1, 104 );
setRotateKey( spep_7-3 + 42, 1, 105.4 );
setRotateKey( spep_7-3 + 44, 1, 106.7 );
setRotateKey( spep_7-3 + 46, 1, 108 );
setRotateKey( spep_7-3 + 48, 1, 109.2 );
setRotateKey( spep_7-3 + 50, 1, 110.3 );
setRotateKey( spep_7-3 + 52, 1, 111.4 );
setRotateKey( spep_7-3 + 54, 1, 112.5 );
setRotateKey( spep_7-3 + 56, 1, 113.6 );
setRotateKey( spep_7-3 + 58, 1, 114.7 );
setRotateKey( spep_7-3 + 60, 1, 115.7 );
setRotateKey( spep_7-3 + 62, 1, 116.8 );
setRotateKey( spep_7-3 + 64, 1, 117.8 );
setRotateKey( spep_7-3 + 66, 1, 118.8 );
setRotateKey( spep_7-1 + 68, 1, 119.8 );

-- ** 音 ** --
--叩きつける
SE029 = playSeVer2( spep_7 + 2, 1123, "", 0, 0, 0, -1);

--敵落ちていく
SE030 = playSeVer2( spep_7 + 28, 1121, "",spep_7 + 80, 0, 10, -1);
setSeVolumeByWorkId( spep_7 + 28, SE030, 60 );

--岩に激突
SE031 = playSeVer2( spep_7 + 68, 1159, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_8=spep_7+84;

------------------------------------------------------
--気を溜める
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_8 + 0, SP_19, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_8 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_8 + 104, tame, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_8 + 104, tame, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, tame, 0 );
setEffRotateKey( spep_8 + 104, tame, 0 );
setEffAlphaKey( spep_8 + 0, tame, 255 );
setEffAlphaKey( spep_8 + 104, tame, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
--顔カットインのタイミング指定
spep_x=spep_8 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 150, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  150,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  150,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

-- ** 音 ** --
--気ダメ
SE032 = playSeVer2( spep_8 + 10, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 10, SE032, 138 );
SE033 = playSeVer2( spep_8 + 10, 1298, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 10, SE033, 70 );

--顔カットイン
SE034 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE035 = playSeVer2( spep_8 + 30, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 30, SE035, 63 );
SE036 = playSeVer2( spep_8 + 54, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 54, SE036, 63 );
SE037 = playSeVer2( spep_8 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 78, SE037, 63 );

--白フェード
entryFade( spep_8 + 96, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 104, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_9=spep_8+104;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffect( spep_9 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_9, SE_05);
    speff = entryEffect( spep_9, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_9, SE_05);
    speff = entryEffect( spep_9, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_9, SE_05);
    speff = entryEffect( spep_9, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_9 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_9 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_9 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_9 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_9 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_9 + 0, shuchusen, 0 );
setEffRotateKey( spep_9 + 90, shuchusen, 0 );
setEffAlphaKey( spep_9 + 0, shuchusen, 255 );
setEffAlphaKey( spep_9 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_9 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_9 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_9 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_9 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_10= spep_9 + 94; 

------------------------------------------------------
--落下アップ
------------------------------------------------------
-- ** エフェクト等 ** --
down_up = entryEffect( spep_10 + 0, SP_20, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_10 + 0, down_up, 0, 0, 0 );
setEffMoveKey( spep_10 + 48, down_up, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, down_up, 1.0, 1.0 );
setEffScaleKey( spep_10 + 48, down_up, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, down_up, 0 );
setEffRotateKey( spep_10 + 48, down_up, 0 );
setEffAlphaKey( spep_10 + 0, down_up, 255 );
setEffAlphaKey( spep_10 + 46, down_up, 255 );
setEffAlphaKey( spep_10 + 47, down_up, 255 );
setEffAlphaKey( spep_10 + 48, down_up, 0 );

-- ** 音 ** --
--アップで向かっていく
SE039 = playSeVer2( spep_10 + 0, 1019, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_10 + 0, 1343, "",spep_10 + 108, 0, 8, -1);
setSeVolumeByWorkId( spep_10 + 0, SE040, 54 );
SE041 = playSeVer2( spep_10 + 0, 1227, "",spep_10 + 108, 0, 8, -1);
setSeVolumeByWorkId( spep_10 + 0, SE041, 145 );
SE042 = playSeVer2( spep_10 + 0, 1183, "",spep_10 + 108, 0, 8, -1);
SE043 = playSeVer2( spep_10 + 0, 9, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_10 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_11=spep_10+48;

------------------------------------------------------
--落下引き
------------------------------------------------------
-- ** エフェクト等 ** --
down_pull = entryEffect( spep_11 + 0, SP_21, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_11 + 0, down_pull, 0, 0, 0 );
setEffMoveKey( spep_11 + 26, down_pull, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, down_pull, 1.0, 1.0 );
setEffScaleKey( spep_11 + 26, down_pull, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, down_pull, 0 );
setEffRotateKey( spep_11 + 26, down_pull, 0 );
setEffAlphaKey( spep_11 + 0, down_pull, 255 );
setEffAlphaKey( spep_11 + 24, down_pull, 255 );
setEffAlphaKey( spep_11 + 25, down_pull, 255 );
setEffAlphaKey( spep_11 + 26, down_pull, 0 );

-- ** 音 ** --
--下に横切る
SE044 = playSeVer2( spep_11 + 0, 1304, "",spep_11 + 60, 0, 8, -1);
setSeVolumeByWorkId( spep_11 + 0, SE044, 69 );
SE045 = playSeVer2( spep_11 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 0, SE045, 67 );

-- ** くろ背景 ** --
entryFadeBg( spep_11 , 0, 26, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_12=spep_11+26;

------------------------------------------------------
--爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_12 + 0, SP_22, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_12 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_12 + 116, explosion, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_12 + 116, explosion, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, explosion, 0 );
setEffRotateKey( spep_12 + 116, explosion, 0 );
setEffAlphaKey( spep_12 + 0, explosion, 255 );
setEffAlphaKey( spep_12 + 114, explosion, 255 );
setEffAlphaKey( spep_12 + 115, explosion, 255 );
setEffAlphaKey( spep_12 + 116, explosion, 0 );

-- ** 音 ** --
--岩爆発
SE046 = playSeVer2( spep_12 + 8, 1159, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_12 + 10, 1061, "", 0, 0, 0, -1);

--爆発
SE048 = playSeVer2( spep_12 + 46, 1024, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_12 + 50, 1067, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_12 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_13=spep_12+116;

------------------------------------------------------
--爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_13 + 0, SP_23, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_13 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_13 + 240, finish, 0, 0, 0 );
setEffScaleKey( spep_13 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_13 + 240, finish, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, finish, 0 );
setEffRotateKey( spep_13 + 240, finish, 0 );
setEffAlphaKey( spep_13 + 0, finish, 255 );
setEffAlphaKey( spep_13 + 240, finish, 255 );

-- ** 音 ** --
--着地
SE050 = playSeVer2( spep_13 + 0, 44, "",spep_13 + 40, 0, 16, -1);
SE051 = playSeVer2( spep_13 + 20, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 20, SE051, 251 );
SE052 = playSeVer2( spep_13 + 22, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 22, SE052, 224 );

--終わり
dealDamage(spep_13+28);
endPhase( spep_13 + 130 );

else

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--対峙
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
confrontation_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, confrontation_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 36, confrontation_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 36, confrontation_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation_f, 0 );
setEffRotateKey( spep_0 + 36, confrontation_f, 0 );
setEffAlphaKey( spep_0 + 0, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 34, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 35, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 36, confrontation_f, 0 );

-- ** エフェクト等 ** --
confrontation_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, confrontation_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 36, confrontation_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 36, confrontation_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation_b, 0 );
setEffRotateKey( spep_0 + 36, confrontation_b, 0 );
setEffAlphaKey( spep_0 + 0, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 34, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 35, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 36, confrontation_b, 0 );

--敵の動き
setDisp(spep_0 + 0, 1, 1);

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 110.6, 73.3 , 0 );
setMoveKey( spep_0 + 1, 1, 110.6, 73.3 , 0 );
setMoveKey( spep_0 + 2, 1, 111.2, 73.3 , 0 );
setMoveKey( spep_0 + 3, 1, 111.2, 73.3 , 0 );
setMoveKey( spep_0 + 4, 1, 111.8, 73.3 , 0 );
setMoveKey( spep_0 + 5, 1, 111.8, 73.3 , 0 );
setMoveKey( spep_0 + 6, 1, 112.3, 73.3 , 0 );
setMoveKey( spep_0 + 8, 1, 112.8, 73.3 , 0 );
setMoveKey( spep_0 + 10, 1, 113.2, 73.3 , 0 );
setMoveKey( spep_0 + 12, 1, 113.7, 73.3 , 0 );
setMoveKey( spep_0 + 14, 1, 114.1, 73.3 , 0 );
setMoveKey( spep_0 + 16, 1, 114.4, 73.3 , 0 );
setMoveKey( spep_0 + 18, 1, 114.8, 73.3 , 0 );
setMoveKey( spep_0 + 20, 1, 115.1, 73.3 , 0 );
setMoveKey( spep_0 + 22, 1, 115.4, 73.3 , 0 );
setMoveKey( spep_0 + 24, 1, 115.7, 73.3 , 0 );
setMoveKey( spep_0 + 26, 1, 116, 73.3 , 0 );
setMoveKey( spep_0 + 28, 1, 116.2, 73.3 , 0 );
setMoveKey( spep_0 + 30, 1, 116.5, 73.3 , 0 );
setMoveKey( spep_0 + 32, 1, 116.8, 73.3 , 0 );
setMoveKey( spep_0 + 34, 1, 115.8, 72.1 , 0 );
setMoveKey( spep_0 + 35, 1, 115.8, 72.1 , 0 );

setScaleKey( spep_0 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 1, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 2, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 3, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 4, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 5, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 6, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 32, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 34, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 35, 1, 0.54, 0.54 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 35, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+36;

------------------------------------------------------
--突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 , 2000 );
setEffMoveKey( spep_1 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 26, rush_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 26, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 26, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 24, rush_f, 255 );
setEffAlphaKey( spep_1 + 25, rush_f, 255 );
setEffAlphaKey( spep_1 + 26, rush_f, 0 );

-- ** エフェクト等 ** --
rush_n = entryEffect( spep_1 + 0, SP_04x, 0x100, -1, 0, 0, 0, 1000 );
setEffMoveKey( spep_1 + 0, rush_n, 0, 0, 0 );
setEffMoveKey( spep_1 + 26, rush_n, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_n, 1.0, 1.0 );
setEffScaleKey( spep_1 + 26, rush_n, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_n, 0 );
setEffRotateKey( spep_1 + 26, rush_n, 0 );
setEffAlphaKey( spep_1 + 0, rush_n, 255 );
setEffAlphaKey( spep_1 + 24, rush_n, 255 );
setEffAlphaKey( spep_1 + 25, rush_n, 255 );
setEffAlphaKey( spep_1 + 26, rush_n, 0 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_1 + 0, SP_05x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 26, rush_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 26, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 26, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 24, rush_b, 255 );
setEffAlphaKey( spep_1 + 25, rush_b, 255 );
setEffAlphaKey( spep_1 + 26, rush_b, 0 );

--敵の動き
setDisp( spep_1 + 26, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 106.4, 46.5 , 0 );
setMoveKey( spep_1 + 2, 1, 105.7, 45.3 , 0 );
setMoveKey( spep_1 + 4, 1, 105, 44.1 , 0 );
setMoveKey( spep_1 + 6, 1, 104.3, 42.8 , 0 );
setMoveKey( spep_1 + 8, 1, 103.7, 41.6 , 0 );
setMoveKey( spep_1 + 10, 1, 103, 40.3 , 0 );
setMoveKey( spep_1 + 12, 1, 102.3, 39.1 , 0 );
setMoveKey( spep_1 + 14, 1, 101.6, 37.9 , 0 );
setMoveKey( spep_1 + 16, 1, 101, 36.6 , 0 );
setMoveKey( spep_1 + 18, 1, 100.3, 35.4 , 0 );
setMoveKey( spep_1 + 20, 1, 99.6, 34.2 , 0 );
setMoveKey( spep_1 + 22, 1, 98.9, 32.9 , 0 );
setMoveKey( spep_1 + 24, 1, 98.3, 31.7 , 0 );
setMoveKey( spep_1 + 26, 1, 97.6, 30.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 2, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 4, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 6, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 8, 1, 1.2, 1.2 );
setScaleKey( spep_1 + 10, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 12, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 14, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 16, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 18, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 20, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 22, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 24, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 26, 1, 1.38, 1.38 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 26, 1, 0 );

-- ** 音 ** --
--ベジータ向かっていく
SE002 = playSeVer2( spep_1 + 0, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_1 + 0, 44, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 30, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_2=spep_1+26;

------------------------------------------------------
--パンチ構え
------------------------------------------------------
-- ** エフェクト等 ** --
panting_ready = entryEffect( spep_2 + 0, SP_06x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, panting_ready, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, panting_ready, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_ready, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, panting_ready, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_ready, 0 );
setEffRotateKey( spep_2 + 56, panting_ready, 0 );
setEffAlphaKey( spep_2 + 0, panting_ready, 255 );
setEffAlphaKey( spep_2 + 54, panting_ready, 255 );
setEffAlphaKey( spep_2 + 55, panting_ready, 255 );
setEffAlphaKey( spep_2 + 56, panting_ready, 0 );

-- ** 音 ** --
--ベジータ振りかぶる
SE004 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 36, 0, 10, -1);
SE005 = playSeVer2( spep_2 + 0, 1004, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 0, 20, "",spep_2 + 70, 18, 36, -1);
SE007 = playSeVer2( spep_2 + 0, 1314, "",spep_2 + 74, 14, 36, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+ 40; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    pauseAll( SP_dodge, 67);

    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);

    do return end
    else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--次の準備 
spep_3=spep_2+56;

------------------------------------------------------
--ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
lush_f = entryEffect( spep_3 + 0, SP_07x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, lush_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 94, lush_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, lush_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 94, lush_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, lush_f, 0 );
setEffRotateKey( spep_3 + 94, lush_f, 0 );
setEffAlphaKey( spep_3 + 0, lush_f, 255 );
setEffAlphaKey( spep_3 + 92, lush_f, 255 );
setEffAlphaKey( spep_3 + 93, lush_f, 255 );
setEffAlphaKey( spep_3 + 94, lush_f, 0 );

-- ** エフェクト等 ** --
lush_n = entryEffect( spep_3 + 0, SP_08x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, lush_n, 0, 0, 0 );
setEffMoveKey( spep_3 + 94, lush_n, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, lush_n, 1.0, 1.0 );
setEffScaleKey( spep_3 + 94, lush_n, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, lush_n, 0 );
setEffRotateKey( spep_3 + 94, lush_n, 0 );
setEffAlphaKey( spep_3 + 0, lush_n, 255 );
setEffAlphaKey( spep_3 + 92, lush_n, 255 );
setEffAlphaKey( spep_3 + 93, lush_n, 255 );
setEffAlphaKey( spep_3 + 94, lush_n, 0 );

-- ** エフェクト等 ** --
lush_b = entryEffect( spep_3 + 0, SP_09x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, lush_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 94, lush_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, lush_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 94, lush_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, lush_b, 0 );
setEffRotateKey( spep_3 + 94, lush_b, 0 );
setEffAlphaKey( spep_3 + 0, lush_b, 255 );
setEffAlphaKey( spep_3 + 92, lush_b, 255 );
setEffAlphaKey( spep_3 + 93, lush_b, 255 );
setEffAlphaKey( spep_3 + 94, lush_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 66, 1, 0 );

changeAnime( spep_3 + 0, 1, 117 );
changeAnime( spep_3-3 + 6, 1, 108 );
changeAnime( spep_3-3 + 46, 1, 106 );
changeAnime( spep_3-3 + 50, 1, 5 );

setMoveKey( spep_3 + 0, 1, 6.7, -30.8 , 0 );
setMoveKey( spep_3-3 + 5, 1, 6.7, -30.8 , 0 );
setMoveKey( spep_3-3 + 6, 1, 49.8, 99.9 , 0 );
setMoveKey( spep_3-3 + 8, 1, 34.7, 55.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, 19.7, 9.8 , 0 );
setMoveKey( spep_3-3 + 12, 1, 24.9, 43.4 , 0 );
setMoveKey( spep_3-3 + 14, 1, 30, 77.4 , 0 );
setMoveKey( spep_3-3 + 16, 1, 28.7, 58.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 27.5, 38.5 , 0 );
setMoveKey( spep_3-3 + 20, 1, 28.6, 57.7 , 0 );
setMoveKey( spep_3-3 + 22, 1, 29.7, 77.1 , 0 );
setMoveKey( spep_3-3 + 24, 1, 27.5, 70.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, 25.8, 65.4 , 0 );
setMoveKey( spep_3-3 + 28, 1, 25.8, 69.6 , 0 );
setMoveKey( spep_3-3 + 30, 1, 25.8, 73.9 , 0 );
setMoveKey( spep_3-3 + 32, 1, 25.8, 78.2 , 0 );
setMoveKey( spep_3-3 + 34, 1, 25.8, 82.4 , 0 );
setMoveKey( spep_3-3 + 36, 1, 25.8, 86.7 , 0 );
setMoveKey( spep_3-3 + 38, 1, 25.8, 90.9 , 0 );
setMoveKey( spep_3-3 + 40, 1, 25.8, 95.2 , 0 );
setMoveKey( spep_3-3 + 42, 1, 25.8, 99.5 , 0 );
setMoveKey( spep_3-3 + 45, 1, 25.8, 103.7 , 0 );
setMoveKey( spep_3-3 + 46, 1, 68.9, 159.4 , 0 );
setMoveKey( spep_3-3 + 49, 1, 46, 206.3 , 0 );
setMoveKey( spep_3-3 + 50, 1, 106.4, 255.7 , 0 );
setMoveKey( spep_3-3 + 52, 1, 195.3, 327.5 , 0 );
setMoveKey( spep_3-3 + 54, 1, 288.2, 402.8 , 0 );
setMoveKey( spep_3-3 + 56, 1, 286.9, 409.1 , 0 );
setMoveKey( spep_3-3 + 58, 1, 281.5, 411.8 , 0 );
setMoveKey( spep_3-3 + 60, 1, 341.5, 469.7 , 0 );
setMoveKey( spep_3-3 + 62, 1, 403.4, 529.5 , 0 );
setMoveKey( spep_3-3 + 64, 1, 431.1, 549.6 , 0 );
setMoveKey( spep_3-3 + 66, 1, 456.8, 567.9 , 0 );

setScaleKey( spep_3 + 0, 1, 1.9, 1.9 );
setScaleKey( spep_3-3 + 5, 1, 1.9, 1.9 );

setScaleKey( spep_3-3 + 6, 1, 2.41,2.41);
setScaleKey( spep_3-3 + 8, 1, 2.25,2.25);
setScaleKey( spep_3-3 + 10, 1, 2.1,2.1);
setScaleKey( spep_3-3 + 12, 1, 2.2,2.2);
setScaleKey( spep_3-3 + 14, 1, 2.31,2.31);
setScaleKey( spep_3-3 + 16, 1, 2.2,2.2);
setScaleKey( spep_3-3 + 18, 1, 2.1,2.1);
setScaleKey( spep_3-3 + 20, 1, 2.15,2.15);
setScaleKey( spep_3-3 + 22, 1, 2.2,2.2);
setScaleKey( spep_3-3 + 24, 1, 2.15,2.15);
setScaleKey( spep_3-3 + 26, 1, 2.1,2.1);
setScaleKey( spep_3-3 + 45, 1, 2.1,2.1);

setScaleKey( spep_3-3 + 46, 1, 2.07, 2.07 );
setScaleKey( spep_3-3 + 49, 1, 1.93, 1.93 );
setScaleKey( spep_3-3 + 50, 1, 1.6, 1.6 );
setScaleKey( spep_3-3 + 52, 1, 1.57, 1.57 );
setScaleKey( spep_3-3 + 54, 1, 1.54, 1.54 );
setScaleKey( spep_3-3 + 56, 1, 1.36, 1.36 );
setScaleKey( spep_3-3 + 58, 1, 1.2, 1.2 );
setScaleKey( spep_3-3 + 60, 1, 1.13, 1.13 );
setScaleKey( spep_3-3 + 62, 1, 1.05, 1.05 );
setScaleKey( spep_3-3 + 64, 1, 0.92, 0.92 );
setScaleKey( spep_3-3 + 66, 1, 0.8, 0.8 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 5, 1, 0 );
setRotateKey( spep_3-3 + 6, 1, -35 );
setRotateKey( spep_3-3 + 8, 1, -35.3 );
setRotateKey( spep_3-3 + 10, 1, -35.6 );
setRotateKey( spep_3-3 + 12, 1, -35.9 );
setRotateKey( spep_3-3 + 14, 1, -36.3 );
setRotateKey( spep_3-3 + 16, 1, -36.6 );
setRotateKey( spep_3-3 + 18, 1, -36.9 );
setRotateKey( spep_3-3 + 20, 1, -37.2 );
setRotateKey( spep_3-3 + 22, 1, -37.5 );
setRotateKey( spep_3-3 + 24, 1, -37.8 );
setRotateKey( spep_3-3 + 26, 1, -38 );
setRotateKey( spep_3-3 + 28, 1, -38.3 );
setRotateKey( spep_3-3 + 30, 1, -38.5 );
setRotateKey( spep_3-3 + 32, 1, -38.7 );
setRotateKey( spep_3-3 + 34, 1, -38.9 );
setRotateKey( spep_3-3 + 36, 1, -39.1 );
setRotateKey( spep_3-3 + 38, 1, -39.3 );
setRotateKey( spep_3-3 + 40, 1, -39.6 );
setRotateKey( spep_3-3 + 42, 1, -39.8 );
setRotateKey( spep_3-3 + 45, 1, -40 );
setRotateKey( spep_3-3 + 46, 1, -80 );
setRotateKey( spep_3-3 + 47, 1, -80 );
setRotateKey( spep_3-3 + 48, 1, -20 );
setRotateKey( spep_3-3 + 49, 1, -20 );
setRotateKey( spep_3-3 + 50, 1, 60 );
setRotateKey( spep_3-3 + 52, 1, 58.7 );
setRotateKey( spep_3-3 + 54, 1, 57.5 );
setRotateKey( spep_3-3 + 56, 1, 56.2 );
setRotateKey( spep_3-3 + 58, 1, 55 );
setRotateKey( spep_3-3 + 60, 1, 53.7 );
setRotateKey( spep_3-3 + 62, 1, 52.5 );
setRotateKey( spep_3-3 + 64, 1, 51.2 );
setRotateKey( spep_3-3 + 66, 1, 50 );

-- ** 音 ** --
--腹パン
SE008 = playSeVer2( spep_3 + 0, 1003, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_3 + 8, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_3 + 8, 1190, "",spep_3 + 58, 0, 24, -1);
SE011 = playSeVer2( spep_3 + 8, 1153, "",spep_3 + 58, 0, 24, -1);
setSeVolumeByWorkId( spep_3 + 8, SE011, 77 );

--パンチ
SE012 = playSeVer2( spep_3 + 44, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 44, SE012, 145 );
SE013 = playSeVer2( spep_3 + 48, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 48, SE013, 89 );
SE014 = playSeVer2( spep_3 + 50, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 50, SE014, 84 );

--回り込む
SE015 = playSeVer2( spep_3 + 76, 1035, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 76, 1011, "",spep_3 + 104, 0, 10, -1);
SE017 = playSeVer2( spep_3 + 76, 9, "",spep_3 + 162, 0, 40, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 96, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_4=spep_3+92;

------------------------------------------------------
--蹴り上げ
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_4 + 0, SP_10x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 130, kick_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 130, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 130, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 128, kick_f, 255 );
setEffAlphaKey( spep_4 + 129, kick_f, 255 );
setEffAlphaKey( spep_4 + 130, kick_f, 0 );

-- ** エフェクト等 ** --
kick_n = entryEffect( spep_4 + 0, SP_11x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, kick_n, 0, 0, 0 );
setEffMoveKey( spep_4 + 130, kick_n, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_n, 1.0, 1.0 );
setEffScaleKey( spep_4 + 130, kick_n, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_n, 0 );
setEffRotateKey( spep_4 + 130, kick_n, 0 );
setEffAlphaKey( spep_4 + 0, kick_n, 255 );
setEffAlphaKey( spep_4 + 128, kick_n, 255 );
setEffAlphaKey( spep_4 + 129, kick_n, 255 );
setEffAlphaKey( spep_4 + 130, kick_n, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_4 + 0, SP_12x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 130, kick_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 130, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 130, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 128, kick_b, 255 );
setEffAlphaKey( spep_4 + 129, kick_b, 255 );
setEffAlphaKey( spep_4 + 130, kick_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-2 + 53, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, -132.3, -88.7 , 0 );
--setMoveKey( spep_4-3 + 2, 1, -132.2, -88.7 , 0 );
setMoveKey( spep_4-3 + 4, 1, -131.7, -88.7 , 0 );
setMoveKey( spep_4-3 + 6, 1, -131, -88.7 , 0 );
setMoveKey( spep_4-3 + 8, 1, -129.9, -88.7 , 0 );
setMoveKey( spep_4-3 + 10, 1, -128.6, -88.7 , 0 );
setMoveKey( spep_4-3 + 12, 1, -127, -88.7 , 0 );
setMoveKey( spep_4-3 + 14, 1, -125.1, -88.7 , 0 );
setMoveKey( spep_4-3 + 16, 1, -123, -88.7 , 0 );
setMoveKey( spep_4-3 + 18, 1, -120.6, -88.7 , 0 );
setMoveKey( spep_4-3 + 20, 1, -117.8, -88.7 , 0 );
setMoveKey( spep_4-3 + 22, 1, -114.8, -88.7 , 0 );
setMoveKey( spep_4-3 + 24, 1, -111.4, -88.7 , 0 );
setMoveKey( spep_4-3 + 26, 1, -107.7, -88.7 , 0 );
setMoveKey( spep_4-3 + 28, 1, -103.7, -88.7 , 0 );
setMoveKey( spep_4-3 + 30, 1, -99.2, -88.7 , 0 );
setMoveKey( spep_4-3 + 32, 1, -94.3, -88.7 , 0 );
setMoveKey( spep_4-3 + 34, 1, -88.9, -88.7 , 0 );
setMoveKey( spep_4-3 + 36, 1, -83, -88.7 , 0 );
setMoveKey( spep_4-3 + 38, 1, -76.3, -88.7 , 0 );
setMoveKey( spep_4-3 + 40, 1, -68.9, -88.7 , 0 );
setMoveKey( spep_4-3 + 42, 1, -60.6, -88.7 , 0 );
setMoveKey( spep_4-3 + 44, 1, -51, -88.7 , 0 );
setMoveKey( spep_4-3 + 46, 1, -39.6, -88.7 , 0 );
setMoveKey( spep_4-3 + 48, 1, -25.6, -88.7 , 0 );
setMoveKey( spep_4-3 + 50, 1, -6.5, -88.7 , 0 );
setMoveKey( spep_4-2 + 53, 1, 43, -88.7 , 0 );

setScaleKey( spep_4 + 0, 1, 0.05, 0.05 );
setScaleKey( spep_4-3 + 4, 1, 0.05, 0.05 );
setScaleKey( spep_4-3 + 6, 1, 0.06, 0.06 );
setScaleKey( spep_4-3 + 10, 1, 0.06, 0.06 );
setScaleKey( spep_4-3 + 12, 1, 0.07, 0.07 );
setScaleKey( spep_4-3 + 14, 1, 0.08, 0.08 );
setScaleKey( spep_4-3 + 16, 1, 0.08, 0.08 );
setScaleKey( spep_4-3 + 18, 1, 0.09, 0.09 );
setScaleKey( spep_4-3 + 20, 1, 0.1, 0.1 );
setScaleKey( spep_4-3 + 22, 1, 0.12, 0.12 );
setScaleKey( spep_4-3 + 24, 1, 0.13, 0.13 );
setScaleKey( spep_4-3 + 26, 1, 0.14, 0.14 );
setScaleKey( spep_4-3 + 28, 1, 0.16, 0.16 );
setScaleKey( spep_4-3 + 30, 1, 0.17, 0.17 );
setScaleKey( spep_4-3 + 32, 1, 0.19, 0.19 );
setScaleKey( spep_4-3 + 34, 1, 0.21, 0.21 );
setScaleKey( spep_4-3 + 36, 1, 0.23, 0.23 );
setScaleKey( spep_4-3 + 38, 1, 0.26, 0.26 );
setScaleKey( spep_4-3 + 40, 1, 0.28, 0.28 );
setScaleKey( spep_4-3 + 42, 1, 0.32, 0.32 );
setScaleKey( spep_4-3 + 44, 1, 0.35, 0.35 );
setScaleKey( spep_4-3 + 46, 1, 0.39, 0.39 );
setScaleKey( spep_4-3 + 48, 1, 0.45, 0.45 );
setScaleKey( spep_4-3 + 50, 1, 0.52, 0.52 );
setScaleKey( spep_4-2 + 53, 1, 0.7, 0.7 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-2 + 53, 1, 0 );

--敵の動き
setDisp( spep_4-3 + 64, 1, 1 );
setDisp( spep_4-1 + 104, 1, 0 );

changeAnime( spep_4-3 + 64, 1, 5 );
changeAnime( spep_4-3 + 68, 1, 106 );

setMoveKey( spep_4-3 + 64, 1, -132.4, -7.4 , 0 );
setMoveKey( spep_4-3 + 66, 1, -58.1, 156.1 , 0 );
setMoveKey( spep_4-3 + 67, 1, -58.1, 156.1 , 0 );

setMoveKey( spep_4-3 + 68, 1, 17.5, 147.3 , 0 );
setMoveKey( spep_4-3 + 70, 1, 15.9, 76.5 , 0 );
setMoveKey( spep_4-3 + 72, 1, 16.7, 113.5 , 0 );
setMoveKey( spep_4-3 + 74, 1, 17.5, 150.9 , 0 );
setMoveKey( spep_4-3 + 76, 1, 16.7, 120.1 , 0 );
setMoveKey( spep_4-3 + 78, 1, 15.9, 89 , 0 );
setMoveKey( spep_4-3 + 80, 1, 16.3, 109.3 , 0 );
setMoveKey( spep_4-3 + 82, 1, 16.7, 129.9 , 0 );
setMoveKey( spep_4-3 + 84, 1, 16.3, 115.7 , 0 );
setMoveKey( spep_4-3 + 86, 1, 15.9, 101.4 , 0 );
setMoveKey( spep_4-3 + 88, 1, 15.9, 104.5 , 0 );
setMoveKey( spep_4-3 + 90, 1, 15.9, 107.6 , 0 );
setMoveKey( spep_4-3 + 92, 1, 15.9, 110.8 , 0 );
setMoveKey( spep_4-3 + 94, 1, 15.9, 113.9 , 0 );
setMoveKey( spep_4-3 + 96, 1, 15.9, 232 , 0 );
setMoveKey( spep_4-3 + 98, 1, 15.9, 350.1 , 0 );
setMoveKey( spep_4-3 + 100, 1, 15.9, 468.2 , 0 );
setMoveKey( spep_4-3 + 102, 1, 15.9, 586.3 , 0 );
setMoveKey( spep_4-1 + 104, 1, 15.9, 704.4 , 0 );

setScaleKey( spep_4-3 + 64, 1, 2.4, 2.4 );
setScaleKey( spep_4-3 + 67, 1, 2.4, 2.4 );

setScaleKey( spep_4-3 + 68, 1, 1.98,1.98);
setScaleKey( spep_4-3 + 70, 1, 1.81,1.81);
setScaleKey( spep_4-3 + 72, 1, 1.9,1.9);
setScaleKey( spep_4-3 + 74, 1, 1.98,1.98);
setScaleKey( spep_4-3 + 76, 1, 1.9,1.9);
setScaleKey( spep_4-3 + 78, 1, 1.81,1.81);
setScaleKey( spep_4-3 + 80, 1, 1.85,1.85);
setScaleKey( spep_4-3 + 82, 1, 1.9,1.9);
setScaleKey( spep_4-3 + 84, 1, 1.85,1.85);
setScaleKey( spep_4-3 + 86, 1, 1.81,1.81);
setScaleKey( spep_4-1 + 104, 1, 1.81,1.81);

setRotateKey( spep_4-3 + 64, 1, 90 );
setRotateKey( spep_4-3 + 67, 1, 90 );

setRotateKey( spep_4-3 + 68, 1, 30 );
setRotateKey( spep_4-1 + 104, 1, 30 );

-- ** 音 ** --
--回り込む
SE018 = playSeVer2( spep_4 + 14, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 14, SE018, 164 );

--蹴り上げる
SE019 = playSeVer2( spep_4 + 62, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 62, SE019, 79 );
SE020 = playSeVer2( spep_4 + 62, 1153, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 62, 1011, "", 0, 0, 0, -1);

--回り込む２
SE022 = playSeVer2( spep_4 + 112, 1035, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_4 + 112, 1182, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_4 + 112, 44, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 136, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_5=spep_4+128;

------------------------------------------------------
--追付く
------------------------------------------------------
-- ** エフェクト等 ** --
catch_f = entryEffect( spep_5 + 0, SP_13x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, catch_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 36, catch_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, catch_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 36, catch_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, catch_f, 0 );
setEffRotateKey( spep_5 + 36, catch_f, 0 );
setEffAlphaKey( spep_5 + 0, catch_f, 255 );
setEffAlphaKey( spep_5 + 34, catch_f, 255 );
setEffAlphaKey( spep_5 + 35, catch_f, 255 );
setEffAlphaKey( spep_5 + 36, catch_f, 0 );

-- ** エフェクト等 ** --
catch_b = entryEffect( spep_5 + 0, SP_14x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 0, catch_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 36, catch_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, catch_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 36, catch_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, catch_b, 0 );
setEffRotateKey( spep_5 + 36, catch_b, 0 );
setEffAlphaKey( spep_5 + 0, catch_b, 255 );
setEffAlphaKey( spep_5 + 34, catch_b, 255 );
setEffAlphaKey( spep_5 + 35, catch_b, 255 );
setEffAlphaKey( spep_5 + 36, catch_b, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-1 + 38, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, -37.9, -372.3 , 0 );
--setMoveKey( spep_5-3 + 2, 1, -29.5, -346 , 0 );
setMoveKey( spep_5-3 + 4, 1, -21.7, -321.2 , 0 );
setMoveKey( spep_5-3 + 6, 1, -14.2, -297.6 , 0 );
setMoveKey( spep_5-3 + 8, 1, -7.1, -275 , 0 );
setMoveKey( spep_5-3 + 10, 1, -0.3, -253.5 , 0 );
setMoveKey( spep_5-3 + 12, 1, 6.2, -233.1 , 0 );
setMoveKey( spep_5-3 + 14, 1, 12.4, -213.7 , 0 );
setMoveKey( spep_5-3 + 16, 1, 18.2, -195.3 , 0 );
setMoveKey( spep_5-3 + 18, 1, 23.7, -177.9 , 0 );
setMoveKey( spep_5-3 + 20, 1, 28.8, -161.6 , 0 );
setMoveKey( spep_5-3 + 22, 1, 33.6, -146.5 , 0 );
setMoveKey( spep_5-3 + 24, 1, 38.1, -132.5 , 0 );
setMoveKey( spep_5-3 + 26, 1, 42.1, -119.7 , 0 );
setMoveKey( spep_5-3 + 28, 1, 45.7, -108.3 , 0 );
setMoveKey( spep_5-3 + 30, 1, 48.9, -98.3 , 0 );
setMoveKey( spep_5-3 + 32, 1, 51.6, -89.8 , 0 );
setMoveKey( spep_5-3 + 34, 1, 53.8, -83 , 0 );
setMoveKey( spep_5-3 + 36, 1, 55.3, -78 , 0 );
setMoveKey( spep_5-1 + 38, 1, 56.5, -75 , 0 );

setScaleKey( spep_5 + 0, 1, 0.15,0.15);
setScaleKey( spep_5-3 + 4, 1, 0.37,0.37);
setScaleKey( spep_5-3 + 6, 1, 0.48,0.48);
setScaleKey( spep_5-3 + 8, 1, 0.58,0.58);
setScaleKey( spep_5-3 + 10, 1, 0.68,0.68);
setScaleKey( spep_5-3 + 12, 1, 0.77,0.77);
setScaleKey( spep_5-3 + 14, 1, 0.86,0.86);
setScaleKey( spep_5-3 + 16, 1, 0.93,0.93);
setScaleKey( spep_5-3 + 18, 1, 1.01,1.01);
setScaleKey( spep_5-3 + 20, 1, 1.09,1.09);
setScaleKey( spep_5-3 + 22, 1, 1.15,1.15);
setScaleKey( spep_5-3 + 24, 1, 1.21,1.21);
setScaleKey( spep_5-3 + 26, 1, 1.27,1.27);
setScaleKey( spep_5-3 + 28, 1, 1.32,1.32);
setScaleKey( spep_5-3 + 30, 1, 1.36,1.36);
setScaleKey( spep_5-3 + 32, 1, 1.4,1.4);
setScaleKey( spep_5-3 + 34, 1, 1.43,1.43);
setScaleKey( spep_5-3 + 36, 1, 1.45,1.45);
setScaleKey( spep_5-1 + 38, 1, 1.47,1.47);

setRotateKey( spep_5 + 0, 1, 42 );
--setRotateKey( spep_5-3 + 2, 1, 43.9 );
setRotateKey( spep_5-3 + 4, 1, 45.8 );
setRotateKey( spep_5-3 + 6, 1, 47.5 );
setRotateKey( spep_5-3 + 8, 1, 49.2 );
setRotateKey( spep_5-3 + 10, 1, 50.8 );
setRotateKey( spep_5-3 + 12, 1, 52.3 );
setRotateKey( spep_5-3 + 14, 1, 53.7 );
setRotateKey( spep_5-3 + 16, 1, 55.1 );
setRotateKey( spep_5-3 + 18, 1, 56.4 );
setRotateKey( spep_5-3 + 20, 1, 57.6 );
setRotateKey( spep_5-3 + 22, 1, 58.7 );
setRotateKey( spep_5-3 + 24, 1, 59.8 );
setRotateKey( spep_5-3 + 26, 1, 60.7 );
setRotateKey( spep_5-3 + 28, 1, 61.5 );
setRotateKey( spep_5-3 + 30, 1, 62.3 );
setRotateKey( spep_5-3 + 32, 1, 62.9 );
setRotateKey( spep_5-3 + 34, 1, 63.4 );
setRotateKey( spep_5-3 + 36, 1, 63.8 );
setRotateKey( spep_5-1 + 38, 1, 64 );

-- ** 音 ** --
--気を解除する
SE025 = playSeVer2( spep_5 + 16, 1026, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_6=spep_5+34;

------------------------------------------------------
--振り被る
------------------------------------------------------
-- ** エフェクト等 ** --
shake = entryEffect( spep_6 + 0, SP_15x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, shake, 0, 0, 0 );
setEffMoveKey( spep_6 + 46, shake, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, shake, 1.0, 1.0 );
setEffScaleKey( spep_6 + 46, shake, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, shake, 0 );
setEffRotateKey( spep_6 + 46, shake, 0 );
setEffAlphaKey( spep_6 + 0, shake, 255 );
setEffAlphaKey( spep_6 + 44, shake, 255 );
setEffAlphaKey( spep_6 + 45, shake, 255 );
setEffAlphaKey( spep_6 + 46, shake, 0 );

-- ** 音 ** --
--振りかぶる
SE026 = playSeVer2( spep_6 + 0, 1116, "",spep_6 + 30, 0, 8, -1);
SE027 = playSeVer2( spep_6 + 6, 1011, "",spep_6 + 52, 14, 22, -1);
setSeVolumeByWorkId( spep_6 + 6, SE027, 81 );

--叩きつける
SE028 = playSeVer2( spep_6 + 42, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 42, SE028, 132 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_7=spep_6+46;

------------------------------------------------------
--叩き付ける
------------------------------------------------------
-- ** エフェクト等 ** --
down_f = entryEffect( spep_7 + 0, SP_16x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, down_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 86, down_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, down_f, -1.0, 1.0 );
setEffScaleKey( spep_7 + 86, down_f, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, down_f, 0 );
setEffRotateKey( spep_7 + 86, down_f, 0 );
setEffAlphaKey( spep_7 + 0, down_f, 255 );
setEffAlphaKey( spep_7 + 84, down_f, 255 );
setEffAlphaKey( spep_7 + 85, down_f, 255 );
setEffAlphaKey( spep_7 + 86, down_f, 0 );

-- ** エフェクト等 ** --
down_n = entryEffect( spep_7 + 0, SP_17x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, down_n, 0, 0, 0 );
setEffMoveKey( spep_7 + 86, down_n, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, down_n, 1.0, 1.0 );
setEffScaleKey( spep_7 + 86, down_n, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, down_n, 0 );
setEffRotateKey( spep_7 + 86, down_n, 0 );
setEffAlphaKey( spep_7 + 0, down_n, 255 );
setEffAlphaKey( spep_7 + 84, down_n, 255 );
setEffAlphaKey( spep_7 + 85, down_n, 255 );
setEffAlphaKey( spep_7 + 86, down_n, 0 );

-- ** エフェクト等 ** --
down_b = entryEffect( spep_7 + 0, SP_18x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, down_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 86, down_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, down_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 86, down_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, down_b, 0 );
setEffRotateKey( spep_7 + 86, down_b, 0 );
setEffAlphaKey( spep_7 + 0, down_b, 255 );
setEffAlphaKey( spep_7 + 84, down_b, 255 );
setEffAlphaKey( spep_7 + 85, down_b, 255 );
setEffAlphaKey( spep_7 + 86, down_b, 0 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7-1 + 68, 1, 0 );

changeAnime( spep_7 + 0, 1, 106 );
changeAnime( spep_7-3 + 4, 1, 108 );
changeAnime( spep_7-3 + 30, 1, 106 );

setMoveKey( spep_7 + 0, 1, -33.3, -150.6 , 0 );
--setMoveKey( spep_7 + 3, 1, -33.2, -90.7 , 0 );
setMoveKey( spep_7-3 + 4, 1, -45.1, -141.3 , 0 );
setMoveKey( spep_7-3 + 6, 1, -40.3, -87.6 , 0 );
setMoveKey( spep_7-3 + 8, 1, -35.5, -33.5 , 0 );
setMoveKey( spep_7-3 + 10, 1, -34, -48.4 , 0 );
setMoveKey( spep_7-3 + 12, 1, -32.5, -63.5 , 0 );
setMoveKey( spep_7-3 + 14, 1, -37, -53.3 , 0 );
setMoveKey( spep_7-3 + 16, 1, -41.5, -42.9 , 0 );
setMoveKey( spep_7-3 + 18, 1, -37.7, -50.7 , 0 );
setMoveKey( spep_7-3 + 20, 1, -34, -58.7 , 0 );
setMoveKey( spep_7-3 + 22, 1, -34.7, -55.6 , 0 );
setMoveKey( spep_7-3 + 24, 1, -35.5, -52.3 , 0 );
setMoveKey( spep_7-3 + 26, 1, -35.5, -54.7 , 0 );
setMoveKey( spep_7-3 + 29, 1, -35.5, -57 , 0 );
setMoveKey( spep_7-3 + 30, 1, -32.6, -30.3 , 0 );
setMoveKey( spep_7-3 + 32, 1, -24.6, -33 , 0 );
setMoveKey( spep_7-3 + 34, 1, -21.3, -34.1 , 0 );
setMoveKey( spep_7-3 + 36, 1, -18.8, -34.9 , 0 );
setMoveKey( spep_7-3 + 38, 1, -16.6, -35.6 , 0 );
setMoveKey( spep_7-3 + 40, 1, -14.7, -36.3 , 0 );
setMoveKey( spep_7-3 + 42, 1, -12.9, -36.9 , 0 );
setMoveKey( spep_7-3 + 44, 1, -11.2, -37.5 , 0 );
setMoveKey( spep_7-3 + 46, 1, -9.6, -38 , 0 );
setMoveKey( spep_7-3 + 48, 1, -8.1, -38.5 , 0 );
setMoveKey( spep_7-3 + 50, 1, -6.6, -39 , 0 );
setMoveKey( spep_7-3 + 52, 1, -5.1, -39.5 , 0 );
setMoveKey( spep_7-3 + 54, 1, -3.7, -40 , 0 );
setMoveKey( spep_7-3 + 56, 1, -2.4, -40.4 , 0 );
setMoveKey( spep_7-3 + 58, 1, -1, -40.9 , 0 );
setMoveKey( spep_7-3 + 60, 1, 0.3, -41.3 , 0 );
setMoveKey( spep_7-3 + 62, 1, 1.7, -41.8 , 0 );
setMoveKey( spep_7-3 + 64, 1, 3, -42.2 , 0 );
setMoveKey( spep_7-3 + 66, 1, 4.3, -42.7 , 0 );
setMoveKey( spep_7-1 + 68, 1, 6.2, -42.4 , 0 );

setScaleKey( spep_7 + 0, 1, 1.9, 1.9 );
--setScaleKey( spep_7-3 + 3, 1, 1.8, 1.8 );
setScaleKey( spep_7-3 + 4, 1, 2.64,2.64);
setScaleKey( spep_7-3 + 6, 1, 2.47,2.47);
setScaleKey( spep_7-3 + 8, 1, 2.3,2.3);
setScaleKey( spep_7-3 + 10, 1, 2.41,2.41);
setScaleKey( spep_7-3 + 12, 1, 2.53,2.53);
setScaleKey( spep_7-3 + 14, 1, 2.41,2.41);
setScaleKey( spep_7-3 + 16, 1, 2.3,2.3);
setScaleKey( spep_7-3 + 18, 1, 2.35,2.35);
setScaleKey( spep_7-3 + 20, 1, 2.41,2.41);
setScaleKey( spep_7-3 + 22, 1, 2.35,2.35);
setScaleKey( spep_7-3 + 24, 1, 2.3,2.3);
setScaleKey( spep_7-3 + 29, 1, 2.3,2.3);
setScaleKey( spep_7-3 + 30, 1, 1.84,1.84);
setScaleKey( spep_7-3 + 32, 1, 1.74,1.74);
setScaleKey( spep_7-3 + 34, 1, 1.7,1.7);
setScaleKey( spep_7-3 + 36, 1, 1.66,1.66);
setScaleKey( spep_7-3 + 38, 1, 1.64,1.64);
setScaleKey( spep_7-3 + 40, 1, 1.62,1.62);
setScaleKey( spep_7-3 + 42, 1, 1.59,1.59);
setScaleKey( spep_7-3 + 44, 1, 1.57,1.57);
setScaleKey( spep_7-3 + 46, 1, 1.56,1.56);
setScaleKey( spep_7-3 + 48, 1, 1.54,1.54);
setScaleKey( spep_7-3 + 50, 1, 1.52,1.52);
setScaleKey( spep_7-3 + 52, 1, 1.5,1.5);
setScaleKey( spep_7-3 + 54, 1, 1.49,1.49);
setScaleKey( spep_7-3 + 56, 1, 1.47,1.47);
setScaleKey( spep_7-3 + 58, 1, 1.46,1.46);
setScaleKey( spep_7-3 + 60, 1, 1.43,1.43);
setScaleKey( spep_7-3 + 62, 1, 1.42,1.42);
setScaleKey( spep_7-3 + 64, 1, 1.41,1.41);
setScaleKey( spep_7-3 + 66, 1, 1.39,1.39);
setScaleKey( spep_7-1 + 68, 1, 1.38,1.38);

setRotateKey( spep_7 + 0, 1, 15 );
--setRotateKey( spep_7-3 + 3, 1, 15 );
setRotateKey( spep_7-3 + 4, 1, 80 );
setRotateKey( spep_7-3 + 29, 1, 80 );
setRotateKey( spep_7-3 + 30, 1, 90 );
setRotateKey( spep_7-3 + 32, 1, 96.2 );
setRotateKey( spep_7-3 + 34, 1, 98.8 );
setRotateKey( spep_7-3 + 36, 1, 100.8 );
setRotateKey( spep_7-3 + 38, 1, 102.5 );
setRotateKey( spep_7-3 + 40, 1, 104 );
setRotateKey( spep_7-3 + 42, 1, 105.4 );
setRotateKey( spep_7-3 + 44, 1, 106.7 );
setRotateKey( spep_7-3 + 46, 1, 108 );
setRotateKey( spep_7-3 + 48, 1, 109.2 );
setRotateKey( spep_7-3 + 50, 1, 110.3 );
setRotateKey( spep_7-3 + 52, 1, 111.4 );
setRotateKey( spep_7-3 + 54, 1, 112.5 );
setRotateKey( spep_7-3 + 56, 1, 113.6 );
setRotateKey( spep_7-3 + 58, 1, 114.7 );
setRotateKey( spep_7-3 + 60, 1, 115.7 );
setRotateKey( spep_7-3 + 62, 1, 116.8 );
setRotateKey( spep_7-3 + 64, 1, 117.8 );
setRotateKey( spep_7-3 + 66, 1, 118.8 );
setRotateKey( spep_7-1 + 68, 1, 119.8 );

-- ** 音 ** --
--叩きつける
SE029 = playSeVer2( spep_7 + 2, 1123, "", 0, 0, 0, -1);

--敵落ちていく
SE030 = playSeVer2( spep_7 + 28, 1121, "",spep_7 + 80, 0, 10, -1);
setSeVolumeByWorkId( spep_7 + 28, SE030, 60 );

--岩に激突
SE031 = playSeVer2( spep_7 + 68, 1159, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_8=spep_7+84;

------------------------------------------------------
--気を溜める
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_8 + 0, SP_19x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_8 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_8 + 104, tame, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_8 + 104, tame, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, tame, 0 );
setEffRotateKey( spep_8 + 104, tame, 0 );
setEffAlphaKey( spep_8 + 0, tame, 255 );
setEffAlphaKey( spep_8 + 104, tame, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
--顔カットインのタイミング指定
spep_x=spep_8 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 150, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  150,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  150,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

-- ** 音 ** --
--気ダメ
SE032 = playSeVer2( spep_8 + 10, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 10, SE032, 138 );
SE033 = playSeVer2( spep_8 + 10, 1298, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 10, SE033, 70 );

--顔カットイン
SE034 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE035 = playSeVer2( spep_8 + 30, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 30, SE035, 63 );
SE036 = playSeVer2( spep_8 + 54, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 54, SE036, 63 );
SE037 = playSeVer2( spep_8 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 78, SE037, 63 );

--白フェード
entryFade( spep_8 + 96, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 104, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_9=spep_8+104;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_9 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_9 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_9 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_9 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_9 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_9 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_9 + 0, shuchusen, 0 );
setEffRotateKey( spep_9 + 90, shuchusen, 0 );
setEffAlphaKey( spep_9 + 0, shuchusen, 255 );
setEffAlphaKey( spep_9 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_9 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_9 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_9 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_9 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_10= spep_9 + 94;

------------------------------------------------------
--落下アップ
------------------------------------------------------
-- ** エフェクト等 ** --
down_up = entryEffect( spep_10 + 0, SP_20x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_10 + 0, down_up, 0, 0, 0 );
setEffMoveKey( spep_10 + 48, down_up, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, down_up, 1.0, 1.0 );
setEffScaleKey( spep_10 + 48, down_up, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, down_up, 0 );
setEffRotateKey( spep_10 + 48, down_up, 0 );
setEffAlphaKey( spep_10 + 0, down_up, 255 );
setEffAlphaKey( spep_10 + 46, down_up, 255 );
setEffAlphaKey( spep_10 + 47, down_up, 255 );
setEffAlphaKey( spep_10 + 48, down_up, 0 );

-- ** 音 ** --
--アップで向かっていく
SE039 = playSeVer2( spep_10 + 0, 1019, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_10 + 0, 1343, "",spep_10 + 108, 0, 8, -1);
setSeVolumeByWorkId( spep_10 + 0, SE040, 54 );
SE041 = playSeVer2( spep_10 + 0, 1227, "",spep_10 + 108, 0, 8, -1);
setSeVolumeByWorkId( spep_10 + 0, SE041, 145 );
SE042 = playSeVer2( spep_10 + 0, 1183, "",spep_10 + 108, 0, 8, -1);
SE043 = playSeVer2( spep_10 + 0, 9, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_10 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_11=spep_10+48;

------------------------------------------------------
--落下引き
------------------------------------------------------
-- ** エフェクト等 ** --
down_pull = entryEffect( spep_11 + 0, SP_21x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_11 + 0, down_pull, 0, 0, 0 );
setEffMoveKey( spep_11 + 26, down_pull, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, down_pull, 1.0, 1.0 );
setEffScaleKey( spep_11 + 26, down_pull, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, down_pull, 0 );
setEffRotateKey( spep_11 + 26, down_pull, 0 );
setEffAlphaKey( spep_11 + 0, down_pull, 255 );
setEffAlphaKey( spep_11 + 24, down_pull, 255 );
setEffAlphaKey( spep_11 + 25, down_pull, 255 );
setEffAlphaKey( spep_11 + 26, down_pull, 0 );

-- ** 音 ** --
--下に横切る
SE044 = playSeVer2( spep_11 + 0, 1304, "",spep_11 + 60, 0, 8, -1);
setSeVolumeByWorkId( spep_11 + 0, SE044, 69 );
SE045 = playSeVer2( spep_11 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 0, SE045, 67 );

-- ** くろ背景 ** --
entryFadeBg( spep_11 , 0, 26, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_12=spep_11+26;

------------------------------------------------------
--爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_12 + 0, SP_22x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_12 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_12 + 116, explosion, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_12 + 116, explosion, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, explosion, 0 );
setEffRotateKey( spep_12 + 116, explosion, 0 );
setEffAlphaKey( spep_12 + 0, explosion, 255 );
setEffAlphaKey( spep_12 + 114, explosion, 255 );
setEffAlphaKey( spep_12 + 115, explosion, 255 );
setEffAlphaKey( spep_12 + 116, explosion, 0 );

-- ** 音 ** --
--岩爆発
SE046 = playSeVer2( spep_12 + 8, 1159, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_12 + 10, 1061, "", 0, 0, 0, -1);

--爆発
SE048 = playSeVer2( spep_12 + 46, 1024, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_12 + 50, 1067, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_12 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_13=spep_12+116;

------------------------------------------------------
--爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_13 + 0, SP_23x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_13 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_13 + 240, finish, 0, 0, 0 );
setEffScaleKey( spep_13 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_13 + 240, finish, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, finish, 0 );
setEffRotateKey( spep_13 + 240, finish, 0 );
setEffAlphaKey( spep_13 + 0, finish, 255 );
setEffAlphaKey( spep_13 + 240, finish, 255 );

-- ** 音 ** --
--着地
SE050 = playSeVer2( spep_13 + 0, 44, "",spep_13 + 40, 0, 16, -1);
SE051 = playSeVer2( spep_13 + 20, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 20, SE051, 251 );
SE052 = playSeVer2( spep_13 + 22, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 22, SE052, 224 );

--終わり
dealDamage(spep_13+28);
endPhase( spep_13 + 130 );

end