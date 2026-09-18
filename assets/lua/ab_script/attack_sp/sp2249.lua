--1023041:LR_ベジータ/孫悟空_必殺技：ジェノサイドブレイカー
--sp_effect_a3_00085
--sp2249

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
SP_01 = 158066; --対峙 ef_001a
SP_02 = 158067; --蹴り_手前 ef_002a
SP_03 = 158069; --蹴り_中 ef_002b
SP_04 = 158070; --蹴り_奥 ef_002c
SP_05 = 158071; --突進_手前 ef_003a
SP_06 = 158073; --突進_中 ef_003b
SP_07 = 158074; --突進_奥 ef_003c
SP_08 = 158075; --手刀_手前 ef_004a
SP_09 = 158077; --手刀_中 ef_004b
SP_10 = 158078; --手刀_奥 ef_004c
SP_11 = 158079; --手刀余韻_手前 ef_005a
SP_12 = 158080; --手刀余韻_奥 ef_005b
SP_13 = 158081; --手構え_手前 ef_006a
SP_14 = 158082; --手構え_奥 ef_006b
SP_15 = 158083; --笑うベジータ ef_007a
SP_16 = 158084; --発射_手前 ef_008a
SP_17 = 158085; --発射_中 ef_008b
SP_18 = 158086; --発射_奥 ef_008c

--敵側
SP_02r = 158068; --蹴り_手前 ef_002a_r
SP_05r = 158072; --突進_手前 ef_003a_r
SP_08r = 158076; --手刀_手前 ef_004a_r
SP_16r = 158308; --発射_手前 ef_008a_r

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
-- 対峙(86F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 86 -1, 0x80, -1, 0, 0, 0 );  -- 対峙(ef_001a)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86 -1, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86 -1, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 86 -1, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 86 -1 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 86 -1, first_f, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
--setDisp( spep_0 -3 + 89, 1, 0 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 295.2, -212.2 , 0 );
setMoveKey( spep_0 + 1, 1, 297.1, -212.2 , 0 );
setMoveKey( spep_0 + 2, 1, 299, -212.2 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 300.8, -212.2 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 300.8, -212.2 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 302.6, -212.2 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 302.6, -212.2 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 304.2, -212.2 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 305.8, -212.2 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 307.2, -212.2 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 308.7, -212.2 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 310, -212.2 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 311.4, -212.2 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 312.6, -212.2 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 313.8, -212.2 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 315, -212.2 , 0 );

setScaleKey( spep_0 + 0, 1, 5, 5 );
setScaleKey( spep_0 + 1, 1, 5, 5 );
setScaleKey( spep_0 + 2, 1, 5, 5 );
setScaleKey( spep_0 + 3, 1, 5, 5 );
setScaleKey( spep_0 + 4, 1, 5, 5 );
setScaleKey( spep_0 + 5, 1, 5, 5 );
setScaleKey( spep_0 + 6, 1, 5, 5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 +86 + 58, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 43 );
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 +86 + 58, 0, 86, 0.7);
setSeVolumeByWorkId( spep_0 + 0, SE002, 91 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 86 -1 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 24 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);

    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 315, -212.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 316.1, -212.2 , 0 );
    setMoveKey( SP_dodge + 4, 1, 317.1, -212.2 , 0 );
    setMoveKey( SP_dodge + 6, 1, 318.2, -212.2 , 0 );
    setMoveKey( SP_dodge + 8, 1, 319.1, -212.2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 320.1, -212.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 5, 5 );
    setScaleKey( SP_dodge + 10, 1, 5, 5 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    
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

-- ** 敵キャラクター ** --
--setDisp( spep_0 -3 + 89, 1, 0 );

setMoveKey( spep_0 -3 + 28, 1, 316.1, -212.2 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 317.1, -212.2 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 318.2, -212.2 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 319.1, -212.2 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 320.1, -212.2 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 321, -212.2 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 321.9, -212.2 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 322.7, -212.2 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 323.5, -212.2 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 324.3, -212.2 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 325.1, -212.2 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 325.8, -212.2 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 326.5, -212.2 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 327.2, -212.2 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 327.8, -212.2 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 328.4, -212.2 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 329, -212.2 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 329.6, -212.2 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 330.2, -212.2 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 330.7, -212.2 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 331.3, -212.2 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 331.8, -212.2 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 332.3, -212.2 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 332.7, -212.2 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 333.2, -212.2 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 333.6, -212.2 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 334.1, -212.2 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 334.5, -212.2 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 334.9, -212.2 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 335.3, -212.2 , 0 );
setMoveKey( spep_0 -3 + 87, 1, 335.7, -212.2 , 0 );
--setMoveKey( spep_0 -3 + 88, 1, 335.7, -212.2 , 0 );
--setMoveKey( spep_0 -3 + 89, 1, 335.7, -212.2 , 0 );

setScaleKey( spep_0 -3 + 87, 1, 5, 5 );
--setScaleKey( spep_0 -3 + 88, 1, 5, 5 );
--setScaleKey( spep_0 -3 + 89, 1, 5, 5 );

setRotateKey( spep_0 -3 + 87, 1, 0 );
--setRotateKey( spep_0 -3 + 88, 1, 0 );
--setRotateKey( spep_0 -3 + 89, 1, 0 );

-- ** 音 ** --
--瞬間移動
SE003 = playSeVer2( spep_0 + 60, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 86 -1;

------------------------------------------------------
-- 蹴り(66F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
kick_b = entryEffectLife( spep_1 + 0, SP_03, 66 -1, 0x100, -1, 0, 0, 0 );  -- 蹴り_中(ef_002b)
setEffMoveKey( spep_1 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 66 -1, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 66 -1, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 66 -1, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 66 -1 -1, kick_b, 255 );
setEffAlphaKey( spep_1 + 66 -1, kick_b, 0 );

kick_f = entryEffectLife( spep_1 + 0, SP_02, 66 -1, 0x100, -1, 0, 0, 0 );  -- 蹴り_手前(ef_002a)
setEffMoveKey( spep_1 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 66 -1, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 66 -1, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 66 -1, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 66 -1 -1, kick_f, 255 );
setEffAlphaKey( spep_1 + 66 -1, kick_f, 0 );

kick_e = entryEffectLife( spep_1 + 0, SP_04, 66 -1, 0x80, -1, 0, 0, 0 );  -- 蹴り_奥(ef_002c)
setEffMoveKey( spep_1 + 0, kick_e, 0, 0 , 0 );
setEffMoveKey( spep_1 + 66 -1, kick_e, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_e, 1.0, 1.0 );
setEffScaleKey( spep_1 + 66 -1, kick_e, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_e, 0 );
setEffRotateKey( spep_1 + 66 -1, kick_e, 0 );
setEffAlphaKey( spep_1 + 0, kick_e, 255 );
setEffAlphaKey( spep_1 + 66 -1 -1, kick_e, 255 );
setEffAlphaKey( spep_1 + 66 -1, kick_e, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_1 + 0, 1, 1 );
--setDisp( spep_1 + 66, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 -3 + 30, 1, 5 );

setMoveKey( spep_1 + 0, 1, 79.1, 44.2 , 0 );
setMoveKey( spep_1 -3 + 29, 1, 79.1, 44.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 277.1, 143.7 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 222.8, 83.7 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 168.4, 23.5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 186.2, 27.8 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 204.3, 32.3 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 190.7, 31.5 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 177, 30.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 185.7, 37.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 194.4, 44.1 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 197.1, 45.9 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 199.7, 47.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 202.4, 49.4 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 205.1, 51.2 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 207.8, 53 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 210.4, 54.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 213.1, 56.5 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 258.5, 111.7 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 304, 166.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 349.4, 222.2 , 0 );
setMoveKey( spep_1 -3 + 67, 1, 394.8, 277.6 , 0 );
--setMoveKey( spep_1 -3 + 68, 1, 394.8, 277.6 , 0 );
--setMoveKey( spep_1 -3 + 69, 1, 394.8, 277.6 , 0 );

setScaleKey( spep_1 + 0, 1, 2.64, 2.64 );
setScaleKey( spep_1 -3 + 29, 1, 2.64, 2.64 );
setScaleKey( spep_1 -3 + 30, 1, 2.86, 2.86 );
setScaleKey( spep_1 -3 + 32, 1, 2.717, 2.717 );
setScaleKey( spep_1 -3 + 34, 1, 2.574, 2.574 );
setScaleKey( spep_1 -3 + 36, 1, 2.639, 2.639 );
setScaleKey( spep_1 -3 + 38, 1, 2.691, 2.691 );
setScaleKey( spep_1 -3 + 40, 1, 2.613, 2.613 );
setScaleKey( spep_1 -3 + 42, 1, 2.548, 2.548 );
setScaleKey( spep_1 -3 + 44, 1, 2.535, 2.535 );
setScaleKey( spep_1 -3 + 46, 1, 2.522, 2.522 );
setScaleKey( spep_1 -3 + 48, 1, 2.522, 2.522 );
setScaleKey( spep_1 -3 + 50, 1, 2.509, 2.509 );
setScaleKey( spep_1 -3 + 52, 1, 2.496, 2.496 );
setScaleKey( spep_1 -3 + 54, 1, 2.496, 2.496 );
setScaleKey( spep_1 -3 + 56, 1, 2.483, 2.483 );
setScaleKey( spep_1 -3 + 58, 1, 2.47, 2.47 );
setScaleKey( spep_1 -3 + 60, 1, 2.47, 2.47 );
setScaleKey( spep_1 -3 + 62, 1, 1.80, 1.80 );
setScaleKey( spep_1 -3 + 64, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 66, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 67, 1, 0.36, 0.36 );
--setScaleKey( spep_1 -3 + 68, 1, 0.36, 0.36 );
--setScaleKey( spep_1 -3 + 69, 1, 0.36, 0.36 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 29, 1, 0 );
setRotateKey( spep_1 -3 + 30, 1, 19.8 );
setRotateKey( spep_1 -3 + 32, 1, 20.1 );
setRotateKey( spep_1 -3 + 34, 1, 20.5 );
setRotateKey( spep_1 -3 + 36, 1, 20.8 );
setRotateKey( spep_1 -3 + 38, 1, 21.2 );
setRotateKey( spep_1 -3 + 40, 1, 21.5 );
setRotateKey( spep_1 -3 + 42, 1, 21.9 );
setRotateKey( spep_1 -3 + 44, 1, 22.2 );
setRotateKey( spep_1 -3 + 46, 1, 22.6 );
setRotateKey( spep_1 -3 + 48, 1, 22.9 );
setRotateKey( spep_1 -3 + 50, 1, 23.3 );
setRotateKey( spep_1 -3 + 52, 1, 23.6 );
setRotateKey( spep_1 -3 + 54, 1, 24 );
setRotateKey( spep_1 -3 + 56, 1, 24.3 );
setRotateKey( spep_1 -3 + 58, 1, 24.7 );
setRotateKey( spep_1 -3 + 60, 1, 25 );
setRotateKey( spep_1 -3 + 67, 1, 25 );
--setRotateKey( spep_1 -3 + 68, 1, 25 );
--setRotateKey( spep_1 -3 + 69, 1, 25 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 28 -1, 906, 14 -1, 0x100, -1, 200, 150, 0 );  --集中線
setEffShake( spep_1 + 28 -1, shuchusen1, 90, 20 );
setEffMoveKey( spep_1 + 28 -1, shuchusen1, 200, 150 , 0 );
setEffMoveKey( spep_1 + 40, shuchusen1,200, 150 , 0 );
setEffScaleKey( spep_1 + 28 -1, shuchusen1, 1.7, 1.4 );
setEffScaleKey( spep_1 + 40, shuchusen1, 1.7, 1.4 );
setEffRotateKey( spep_1 + 28 -1, shuchusen1, 0 );
setEffRotateKey( spep_1 + 40, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 28 -1, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 40, shuchusen1, 255 );

-- ** 音 ** --
--蹴り上げ
SE004 = playSeVer2( spep_1 + 16, 1003, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 22, 1010, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 22, 1187, "",spep_1 +66 + 36, 0, 70, -1);
setSeVolumeByWorkId( spep_1 + 22, SE006, 84 );
SE007 = playSeVer2( spep_1 + 24, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE008 = playSeVer2( spep_1 + 52, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 52, SE008, 79 );
SE009 = playSeVer2( spep_1 + 52, 1183, "",spep_1 +66 +46 + 14, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 52, SE009, 91 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 66 -1 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 66 -1;

------------------------------------------------------
-- 突進(46F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
attack_b = entryEffectLife( spep_2 + 0, SP_06, 46 -1, 0x100, -1, 0, 0, 0 );  -- 突進_中(ef_003b)
setEffMoveKey( spep_2 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46 -1, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46 -1, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_b, 0 );
setEffRotateKey( spep_2 + 46 -1, attack_b, 0 );
setEffAlphaKey( spep_2 + 0, attack_b, 255 );
setEffAlphaKey( spep_2 + 46 -1 -1, attack_b, 255 );
setEffAlphaKey( spep_2 + 46 -1, attack_b, 0 );

attack_f = entryEffectLife( spep_2 + 0, SP_05, 46 -1, 0x100, -1, 0, 0, 0 );  -- 突進_手前(ef_003a)
setEffMoveKey( spep_2 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46 -1, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46 -1, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_f, 0 );
setEffRotateKey( spep_2 + 46 -1, attack_f, 0 );
setEffAlphaKey( spep_2 + 0, attack_f, 255 );
setEffAlphaKey( spep_2 + 46 -1 -1, attack_f, 255 );
setEffAlphaKey( spep_2 + 46 -1, attack_f, 0 );

attack_e = entryEffectLife( spep_2 + 0, SP_07, 46 -1, 0x80, -1, 0, 0, 0 );  -- 突進_奥(ef_003c)
setEffMoveKey( spep_2 + 0, attack_e, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46 -1, attack_e, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_e, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46 -1, attack_e, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_e, 0 );
setEffRotateKey( spep_2 + 46 -1, attack_e, 0 );
setEffAlphaKey( spep_2 + 0, attack_e, 255 );
setEffAlphaKey( spep_2 + 46 -1 -1, attack_e, 255 );
setEffAlphaKey( spep_2 + 46 -1, attack_e, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
--setDisp( spep_2 -3 + 49, 1, 0 );
changeAnime( spep_2 + 0, 1, 5 );

setMoveKey( spep_2 + 0, 1, -190.7, -24 , 0 );
setMoveKey( spep_2 + 1, 1, -116.1, 6.7 , 0 );
setMoveKey( spep_2 + 2, 1, -57.6, 30.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -9.4, 50.6 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 31.3, 67.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 66.5, 81.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 97.2, 94.4 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 124.2, 105.5 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 148.2, 115.4 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 169.6, 124.2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 188.8, 132.1 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 206, 139.2 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 221.5, 145.6 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 235.4, 151.3 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 247.9, 156.5 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 259.2, 161.1 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 269.4, 165.3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 278.6, 169.1 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 286.8, 172.5 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 294.2, 175.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 300.9, 178.3 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 306.9, 180.7 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 312.2, 182.9 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 317.1, 184.9 , 0 );
setMoveKey( spep_2 -3 + 47, 1, 321.2, 186.7 , 0 );
--setMoveKey( spep_2 -3 + 48, 1, 321.2, 186.7 , 0 );
--setMoveKey( spep_2 -3 + 49, 1, 321.2, 186.7 , 0 );

setScaleKey( spep_2 + 0, 1, 4.99, 4.99 );
setScaleKey( spep_2 + 1, 1, 4.34, 4.34 );
setScaleKey( spep_2 + 2, 1, 3.83, 3.83 );
setScaleKey( spep_2 -3 + 6, 1, 3.4, 3.4 );
setScaleKey( spep_2 -3 + 8, 1, 3.05, 3.05 );
setScaleKey( spep_2 -3 + 10, 1, 2.74, 2.74 );
setScaleKey( spep_2 -3 + 12, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 14, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 16, 1, 2.02, 2.02 );
setScaleKey( spep_2 -3 + 18, 1, 1.83, 1.83 );
setScaleKey( spep_2 -3 + 20, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 22, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 24, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 26, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 28, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 30, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 32, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 34, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 36, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 38, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 40, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 42, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 44, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 46, 1, 0.54, 0.54 );
setScaleKey( spep_2 -3 + 47, 1, 0.5, 0.5 );
--setScaleKey( spep_2 -3 + 48, 1, 0.5, 0.5 );
--setScaleKey( spep_2 -3 + 49, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 0, 1, 119.9 );
setRotateKey( spep_2 + 1, 1, 125.7 );
setRotateKey( spep_2 + 2, 1, 130.3 );
setRotateKey( spep_2 -3 + 6, 1, 134.1 );
setRotateKey( spep_2 -3 + 8, 1, 137.2 );
setRotateKey( spep_2 -3 + 10, 1, 140 );
setRotateKey( spep_2 -3 + 12, 1, 142.4 );
setRotateKey( spep_2 -3 + 14, 1, 144.5 );
setRotateKey( spep_2 -3 + 16, 1, 146.4 );
setRotateKey( spep_2 -3 + 18, 1, 148.1 );
setRotateKey( spep_2 -3 + 20, 1, 149.6 );
setRotateKey( spep_2 -3 + 22, 1, 150.9 );
setRotateKey( spep_2 -3 + 24, 1, 152.1 );
setRotateKey( spep_2 -3 + 26, 1, 153.2 );
setRotateKey( spep_2 -3 + 28, 1, 154.2 );
setRotateKey( spep_2 -3 + 30, 1, 155.1 );
setRotateKey( spep_2 -3 + 32, 1, 155.9 );
setRotateKey( spep_2 -3 + 34, 1, 156.6 );
setRotateKey( spep_2 -3 + 36, 1, 157.3 );
setRotateKey( spep_2 -3 + 38, 1, 157.8 );
setRotateKey( spep_2 -3 + 40, 1, 158.4 );
setRotateKey( spep_2 -3 + 42, 1, 158.8 );
setRotateKey( spep_2 -3 + 44, 1, 159.3 );
setRotateKey( spep_2 -3 + 46, 1, 159.6 );
setRotateKey( spep_2 -3 + 47, 1, 160 );
--setRotateKey( spep_2 -3 + 48, 1, 160 );
--setRotateKey( spep_2 -3 + 49, 1, 160 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 26 -1, 906, 20, 0x100, -1, 350, 200, 0 );  --集中線
setEffShake( spep_2 + 26 -1, shuchusen2, 90, 20 );
setEffMoveKey( spep_2 + 26 -1, shuchusen2, 350, 200 , 0 );
setEffMoveKey( spep_2 + 46 -1, shuchusen2, 350, 200 , 0 );
setEffScaleKey( spep_2 + 26 -1, shuchusen2, 2.2, 1.6 );
setEffScaleKey( spep_2 + 46 -1, shuchusen2, 2.2, 1.6 );
setEffRotateKey( spep_2 + 26 -1, shuchusen2, 0 );
setEffRotateKey( spep_2 + 46 -1, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 26 -1, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 46 -1, shuchusen2, 255 );

-- ** 音 ** --
--向かっていく
SE010 = playSeVer2( spep_2 + 18, 9, "",spep_2 +46 + 10, 0, 10, -1);
SE011 = playSeVer2( spep_2 + 18, 1182, "",spep_2 +46 + 10, 0, 10, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 46 -1 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 46 -1;

------------------------------------------------------
-- 手刀(76F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
chop_b = entryEffectLife( spep_3 + 0, SP_09, 76, 0x100, -1, 0, 0, 0 );  -- 手刀_中(ef_004b)
setEffMoveKey( spep_3 + 0, chop_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, chop_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, chop_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, chop_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, chop_b, 0 );
setEffRotateKey( spep_3 + 76, chop_b, 0 );
setEffAlphaKey( spep_3 + 0, chop_b, 255 );
setEffAlphaKey( spep_3 + 76 -1, chop_b, 255 );
setEffAlphaKey( spep_3 + 76, chop_b, 0 );

chop_f = entryEffectLife( spep_3 + 0, SP_08, 76, 0x100, -1, 0, 0, 0 );  -- 手刀_手前(ef_004a)
setEffMoveKey( spep_3 + 0, chop_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, chop_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, chop_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, chop_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, chop_f, 0 );
setEffRotateKey( spep_3 + 76, chop_f, 0 );
setEffAlphaKey( spep_3 + 0, chop_f, 255 );
setEffAlphaKey( spep_3 + 76 -1, chop_f, 255 );
setEffAlphaKey( spep_3 + 76, chop_f, 0 );

chop_e = entryEffectLife( spep_3 + 0, SP_10, 76, 0x80, -1, 0, 0, 0 );  -- 手刀_奥(ef_004c)
setEffMoveKey( spep_3 + 0, chop_e, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, chop_e, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, chop_e, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, chop_e, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, chop_e, 0 );
setEffRotateKey( spep_3 + 76, chop_e, 0 );
setEffAlphaKey( spep_3 + 0, chop_e, 255 );
setEffAlphaKey( spep_3 + 76 -1, chop_e, 255 );
setEffAlphaKey( spep_3 + 76, chop_e, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_3 + 0, 1, 1 );
--setDisp( spep_3 -3 + 79, 1, 0 );
changeAnime( spep_3 + 0, 1, 105 );
changeAnime( spep_3 -3 + 46, 1, 8 );

setMoveKey( spep_3 + 0, 1, 375.6, 320.6 , 0 );
setMoveKey( spep_3 + 1, 1, 385.1, 267.4 , 0 );
setMoveKey( spep_3 + 2, 1, 389.1, 245.5 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 391.3, 233.3 , 0 );
setMoveKey( spep_3 -3 + 7, 1, 391.3, 233.3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 649.9, 386.6 , 0 );
setMoveKey( spep_3 -3 + 9, 1, 649.9, 386.6 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 521, 307.9 , 0 );
setMoveKey( spep_3 -3 + 11, 1, 521, 307.9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 392, 229.2 , 0 );
setMoveKey( spep_3 -3 + 13, 1, 392, 229.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 431.6, 260.6 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 431.6, 260.6 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 471.1, 292.1 , 0 );
setMoveKey( spep_3 -3 + 17, 1, 471.1, 292.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 431.6, 260.7 , 0 );
setMoveKey( spep_3 -3 + 19, 1, 431.6, 260.7 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 392, 229.2 , 0 );
setMoveKey( spep_3 -3 + 21, 1, 392, 229.2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 410.8, 246.9 , 0 );
setMoveKey( spep_3 -3 + 23, 1, 410.8, 246.9 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 429.5, 264.6 , 0 );
setMoveKey( spep_3 -3 + 25, 1, 429.5, 264.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 410.8, 246.9 , 0 );
setMoveKey( spep_3 -3 + 27, 1, 410.8, 246.9 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 392, 229.2 , 0 );
setMoveKey( spep_3 -3 + 41, 1, 392, 229.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 317.8, 212.9 , 0 );
setMoveKey( spep_3 -3 + 43, 1, 317.8, 212.9 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 267.3, 201.8 , 0 );
setMoveKey( spep_3 -3 + 45, 1, 267.3, 201.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 221.2, 89.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 221.4, 91.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 221.6, 93.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 221.7, 95.1 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 221.9, 97.1 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 222, 99 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 222.2, 100.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 222.3, 102.6 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 222.5, 104.4 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 222.6, 106.1 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 222.7, 107.8 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 222.9, 109.5 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 223, 111.1 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 223.1, 112.6 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 223.2, 114.2 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 223.3, 115.7 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 223.2, 117.1 , 0 );
--setMoveKey( spep_3 -3 + 79, 1, 223.2, 117.1 , 0 );

setScaleKey( spep_3 + 0, 1, 14.48, 14.48 );
setScaleKey( spep_3 + 1, 1, 14.19, 14.19 );
setScaleKey( spep_3 + 2, 1, 14.07, 14.07 );
setScaleKey( spep_3 -3 + 6, 1, 14.01, 14.01 );
setScaleKey( spep_3 -3 + 7, 1, 14.01, 14.01 );
setScaleKey( spep_3 -3 + 8, 1, 17.48, 17.48 );
setScaleKey( spep_3 -3 + 9, 1, 17.48, 17.48 );
setScaleKey( spep_3 -3 + 10, 1, 15.73, 15.73 );
setScaleKey( spep_3 -3 + 11, 1, 15.73, 15.73 );
setScaleKey( spep_3 -3 + 12, 1, 13.98, 13.98 );
setScaleKey( spep_3 -3 + 13, 1, 13.98, 13.98 );
setScaleKey( spep_3 -3 + 14, 1, 14.68, 14.68 );
setScaleKey( spep_3 -3 + 15, 1, 14.68, 14.68 );
setScaleKey( spep_3 -3 + 16, 1, 15.38, 15.38 );
setScaleKey( spep_3 -3 + 17, 1, 15.38, 15.38 );
setScaleKey( spep_3 -3 + 18, 1, 14.68, 14.68 );
setScaleKey( spep_3 -3 + 19, 1, 14.68, 14.68 );
setScaleKey( spep_3 -3 + 20, 1, 13.98, 13.98 );
setScaleKey( spep_3 -3 + 21, 1, 13.98, 13.98 );
setScaleKey( spep_3 -3 + 22, 1, 14.33, 14.33 );
setScaleKey( spep_3 -3 + 23, 1, 14.33, 14.33 );
setScaleKey( spep_3 -3 + 24, 1, 14.68, 14.68 );
setScaleKey( spep_3 -3 + 25, 1, 14.68, 14.68 );
setScaleKey( spep_3 -3 + 26, 1, 14.33, 14.33 );
setScaleKey( spep_3 -3 + 27, 1, 14.33, 14.33 );
setScaleKey( spep_3 -3 + 28, 1, 13.98, 13.98 );
setScaleKey( spep_3 -3 + 41, 1, 13.98, 13.98 );
setScaleKey( spep_3 -3 + 42, 1, 10.11, 10.11 );
setScaleKey( spep_3 -3 + 43, 1, 10.11, 10.11 );
setScaleKey( spep_3 -3 + 44, 1, 7.47, 7.47 );
setScaleKey( spep_3 -3 + 45, 1, 7.47, 7.47 );
setScaleKey( spep_3 -3 + 46, 1, 5.5, 5.5 );
setScaleKey( spep_3 -3 + 48, 1, 5.48, 5.48 );
setScaleKey( spep_3 -3 + 50, 1, 5.46, 5.46 );
setScaleKey( spep_3 -3 + 52, 1, 5.45, 5.45 );
setScaleKey( spep_3 -3 + 54, 1, 5.43, 5.43 );
setScaleKey( spep_3 -3 + 56, 1, 5.41, 5.41 );
setScaleKey( spep_3 -3 + 58, 1, 5.39, 5.39 );
setScaleKey( spep_3 -3 + 60, 1, 5.38, 5.38 );
setScaleKey( spep_3 -3 + 62, 1, 5.36, 5.36 );
setScaleKey( spep_3 -3 + 64, 1, 5.35, 5.35 );
setScaleKey( spep_3 -3 + 66, 1, 5.33, 5.33 );
setScaleKey( spep_3 -3 + 68, 1, 5.32, 5.32 );
setScaleKey( spep_3 -3 + 70, 1, 5.3, 5.3 );
setScaleKey( spep_3 -3 + 72, 1, 5.29, 5.29 );
setScaleKey( spep_3 -3 + 74, 1, 5.28, 5.28 );
setScaleKey( spep_3 -3 + 76, 1, 5.26, 5.26 );
setScaleKey( spep_3 -3 + 78, 1, 5.25, 5.25 );
--setScaleKey( spep_3 -3 + 79, 1, 5.25, 5.25 );

setRotateKey( spep_3 + 0, 1, -160 );
setRotateKey( spep_3 -3 + 41, 1, -160 );
setRotateKey( spep_3 -3 + 42, 1, -169.1 );
setRotateKey( spep_3 -3 + 43, 1, -169.1 );
setRotateKey( spep_3 -3 + 44, 1, -175.4 );
setRotateKey( spep_3 -3 + 45, 1, -175.4 );
setRotateKey( spep_3 -3 + 46, 1, -185 );
setRotateKey( spep_3 -3 + 48, 1, -185.4 );
setRotateKey( spep_3 -3 + 50, 1, -185.7 );
setRotateKey( spep_3 -3 + 52, 1, -186.1 );
setRotateKey( spep_3 -3 + 54, 1, -186.4 );
setRotateKey( spep_3 -3 + 56, 1, -186.8 );
setRotateKey( spep_3 -3 + 58, 1, -187.1 );
setRotateKey( spep_3 -3 + 60, 1, -187.4 );
setRotateKey( spep_3 -3 + 62, 1, -187.7 );
setRotateKey( spep_3 -3 + 64, 1, -188 );
setRotateKey( spep_3 -3 + 66, 1, -188.3 );
setRotateKey( spep_3 -3 + 68, 1, -188.6 );
setRotateKey( spep_3 -3 + 70, 1, -188.9 );
setRotateKey( spep_3 -3 + 72, 1, -189.2 );
setRotateKey( spep_3 -3 + 74, 1, -189.5 );
setRotateKey( spep_3 -3 + 76, 1, -189.7 );
setRotateKey( spep_3 -3 + 78, 1, -190 );
--setRotateKey( spep_3 -3 + 79, 1, -190 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 6 -1, 906, 10 -1, 0x100, -1, -30, 0, 0 );  --集中線
setEffShake( spep_3 + 6 -1, shuchusen3, 90, 20 );
setEffMoveKey( spep_3 + 6 -1, shuchusen3, -30, 0 , 0 );
setEffMoveKey( spep_3 + 14, shuchusen3, -30, 0 , 0 );
setEffScaleKey( spep_3 + 6 -1, shuchusen3, 1.2, 1.2 );
setEffScaleKey( spep_3 + 14, shuchusen3, 1.2, 1.2 );
setEffRotateKey( spep_3 + 6 -1, shuchusen3, 0 );
setEffRotateKey( spep_3 + 14, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 6 -1, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 14, shuchusen3, 255 );

-- ** 音 ** --
--手刀
SE012 = playSeVer2( spep_3 + 0, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE012, 87 );
SE013 = playSeVer2( spep_3 + 2, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 2, SE013, 79 );

--画面遷移
SE014 = playSeVer2( spep_3 + 56, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;

------------------------------------------------------
-- 手刀余韻(40F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
form_f = entryEffectLife( spep_4 + 0, SP_11, 40, 0x100, -1, 0, 0, 0 );  -- 手刀余韻_手前(ef_005a)
setEffMoveKey( spep_4 + 0, form_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 40, form_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, form_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 40, form_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, form_f, 0 );
setEffRotateKey( spep_4 + 40, form_f, 0 );
setEffAlphaKey( spep_4 + 0, form_f, 255 );
setEffAlphaKey( spep_4 + 40 -1, form_f, 255 );
setEffAlphaKey( spep_4 + 40, form_f, 0 );

form_b = entryEffectLife( spep_4 + 0, SP_12, 40, 0x80, -1, 0, 0, 0 );  -- 手刀余韻_奥(ef_005b)
setEffMoveKey( spep_4 + 0, form_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 40, form_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, form_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 40, form_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, form_b, 0 );
setEffRotateKey( spep_4 + 40, form_b, 0 );
setEffAlphaKey( spep_4 + 0, form_b, 255 );
setEffAlphaKey( spep_4 + 40 -1, form_b, 255 );
setEffAlphaKey( spep_4 + 40, form_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
--setDisp( spep_4 -3 + 43, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4 + 0, 1, -15.4, 179.2 , 0 );
setMoveKey( spep_4 + 1, 1, -20.3, 160.3 , 0 );
setMoveKey( spep_4 + 2, 1, -22.8, 150.6 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -24.7, 143.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -26.4, 136.6 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -27.9, 130.9 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -29.2, 125.7 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -30.5, 120.9 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -31.6, 116.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -32.7, 112.1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -33.8, 108.1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -34.8, 104.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -35.7, 100.7 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -36.6, 97.3 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -37.4, 94 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -38.3, 90.8 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -39, 87.8 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -39.8, 84.9 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -40.5, 82.2 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -41.2, 79.6 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -41.8, 77.2 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -42.4, 75 , 0 );
--setMoveKey( spep_4 -3 + 43, 1, -42.4, 75 , 0 );

setScaleKey( spep_4 + 0, 1, 3.2, 3.2 );
setScaleKey( spep_4 -3 + 42, 1, 3.2, 3.2 );
--setScaleKey( spep_4 -3 + 43, 1, 3.2, 3.2 );

setRotateKey( spep_4 + 0, 1, 115 );
setRotateKey( spep_4 + 1, 1, 115.5 );
setRotateKey( spep_4 + 2, 1, 115.8 );
setRotateKey( spep_4 -3 + 6, 1, 116 );
setRotateKey( spep_4 -3 + 8, 1, 116.2 );
setRotateKey( spep_4 -3 + 10, 1, 116.3 );
setRotateKey( spep_4 -3 + 12, 1, 116.5 );
setRotateKey( spep_4 -3 + 14, 1, 116.6 );
setRotateKey( spep_4 -3 + 16, 1, 116.7 );
setRotateKey( spep_4 -3 + 18, 1, 116.8 );
setRotateKey( spep_4 -3 + 20, 1, 116.9 );
setRotateKey( spep_4 -3 + 22, 1, 117 );
setRotateKey( spep_4 -3 + 24, 1, 117.1 );
setRotateKey( spep_4 -3 + 26, 1, 117.2 );
setRotateKey( spep_4 -3 + 28, 1, 117.3 );
setRotateKey( spep_4 -3 + 30, 1, 117.4 );
setRotateKey( spep_4 -3 + 32, 1, 117.5 );
setRotateKey( spep_4 -3 + 34, 1, 117.6 );
setRotateKey( spep_4 -3 + 36, 1, 117.6 );
setRotateKey( spep_4 -3 + 38, 1, 117.7 );
setRotateKey( spep_4 -3 + 40, 1, 117.8 );
setRotateKey( spep_4 -3 + 42, 1, 117.8 );
--setRotateKey( spep_4 -3 + 43, 1, 117.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 40 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 40;

------------------------------------------------------
-- 手構え(40F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_5 + 0, SP_13, 40, 0x100, -1, 0, 0, 0 );  -- 手構え_手前(ef_006a)
setEffMoveKey( spep_5 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 40, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 40, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tame_f, 0 );
setEffRotateKey( spep_5 + 40, tame_f, 0 );
setEffAlphaKey( spep_5 + 0, tame_f, 255 );
setEffAlphaKey( spep_5 + 40 -1, tame_f, 255 );
setEffAlphaKey( spep_5 + 40, tame_f, 0 );

tame_b = entryEffectLife( spep_5 + 0, SP_14, 40, 0x80, -1, 0, 0, 0 );  -- 手構え_奥(ef_006b)
setEffMoveKey( spep_5 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 40, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 40, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tame_b, 0 );
setEffRotateKey( spep_5 + 40, tame_b, 0 );
setEffAlphaKey( spep_5 + 0, tame_b, 255 );
setEffAlphaKey( spep_5 + 40 -1, tame_b, 255 );
setEffAlphaKey( spep_5 + 40, tame_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 43, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 28, 266.2 , 0 );
setMoveKey( spep_5 + 1, 1, 28, 259.5 , 0 );
setMoveKey( spep_5 + 2, 1, 28, 253.4 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 28, 248 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 28, 243 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 28, 238.5 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 28, 234.4 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 28, 230.7 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 28, 227.3 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 28, 224.2 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 28, 221.4 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 28, 218.8 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 28, 216.5 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 28, 214.4 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 28, 212.6 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 28, 211 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 28, 209.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 28, 208.4 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 28, 207.5 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 28, 206.8 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 28, 206.3 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 28.1, 206.1 , 0 );
setMoveKey( spep_5 -3 + 43, 1, 28.1, 206.1 , 0 );

setScaleKey( spep_5 + 0, 1, 3, 3 );
setScaleKey( spep_5 -3 + 43, 1, 3, 3 );

setRotateKey( spep_5 + 0, 1, 90 );
setRotateKey( spep_5 -3 + 43, 1, 90 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 26 -1, 906, 14, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 26 -1, shuchusen4, 90, 20 );
setEffMoveKey( spep_5 + 26 -1, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 40 -1, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_5 + 26 -1, shuchusen4, 1.4, 1.4 );
setEffScaleKey( spep_5 + 40 -1, shuchusen4, 1.4, 1.4 );
setEffRotateKey( spep_5 + 26 -1, shuchusen4, 0 );
setEffRotateKey( spep_5 + 40 -1, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 26 -1, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 40 -1, shuchusen4, 255 );

-- ** 音 ** --
--手を向ける
SE015 = playSeVer2( spep_5 + 14, 1003, "", 0, 0, 0, -1);

SE016 = playSeVer2( spep_5 + 16, 1006, "",spep_5 + 40 + 2, 0, 6, -1);
setPitch( spep_5 + 16, SE016, -300 );
setTimeStretch( SE016, 0.8, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 40 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 40;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_6 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_6 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;

------------------------------------------------------
-- 笑うベジータ(116F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
bsmile = entryEffectLife( spep_7 + 0, SP_15, 116, 0x100, -1, 0, 0, 0 );  -- 笑うベジータ(ef_007a)
setEffMoveKey( spep_7 + 0, bsmile, 0, 0 , 0 );
setEffMoveKey( spep_7 + 116, bsmile, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, bsmile, 1.0, 1.0 );
setEffScaleKey( spep_7 + 116, bsmile, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, bsmile, 0 );
setEffRotateKey( spep_7 + 116, bsmile, 0 );
setEffAlphaKey( spep_7 + 0, bsmile, 255 );
setEffAlphaKey( spep_7 + 116 -1, bsmile, 255 );
setEffAlphaKey( spep_7 + 116, bsmile, 0 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_7 + 22;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 15, 515.5 , 0 );
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

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_7 + 0, 906, 116 -1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen5, 90, 20 );
setEffMoveKey( spep_7 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7 + 116 -1, shuchusen5, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, shuchusen5, 1.4, 1.4 );
setEffScaleKey( spep_7 + 116 -1, shuchusen5, 1.4, 1.4 );
setEffRotateKey( spep_7 + 0, shuchusen5, 0 );
setEffRotateKey( spep_7 + 116 -1, shuchusen5, 0 );
setEffAlphaKey( spep_7 + 0, shuchusen5, 0 );
setEffAlphaKey( spep_7 + 36 -2, shuchusen5, 0 );
setEffAlphaKey( spep_7 + 36 -1, shuchusen5, 255 );
setEffAlphaKey( spep_7 + 116 -1, shuchusen5, 255 );

-- ** 音 ** --
--顔カットイン
SE018 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_7 + 100, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 116;

------------------------------------------------------
-- 発射(236F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_8 + 0, SP_16, 0x100, -1, 0, 0, 0 );  -- 発射_手前(ef_008a)
setEffMoveKey( spep_8 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 236, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 236, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_f, 0 );
setEffRotateKey( spep_8 + 236, finish_f, 0 );
setEffAlphaKey( spep_8 + 0, finish_f, 255 );
setEffAlphaKey( spep_8 + 236, finish_f, 255 );

finish_b = entryEffect( spep_8 + 0, SP_17, 0x100, -1, 0, 0, 0 );  -- 発射_中(ef_008b)
setEffMoveKey( spep_8 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 236, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 236, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_b, 0 );
setEffRotateKey( spep_8 + 236, finish_b, 0 );
setEffAlphaKey( spep_8 + 0, finish_b, 255 );
setEffAlphaKey( spep_8 + 236, finish_b, 255 );

finish_e = entryEffect( spep_8 + 0, SP_18, 0x80, -1, 0, 0, 0 );  -- 発射_奥(ef_008c)
setEffMoveKey( spep_8 + 0, finish_e, 0, 0 , 0 );
setEffMoveKey( spep_8 + 236, finish_e, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish_e, 1.0, 1.0 );
setEffScaleKey( spep_8 + 236, finish_e, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_e, 0 );
setEffRotateKey( spep_8 + 236, finish_e, 0 );
setEffAlphaKey( spep_8 + 0, finish_e, 255 );
setEffAlphaKey( spep_8 + 236, finish_e, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 -3 + 28, 1, 0 );
changeAnime( spep_8 + 0, 1, 6 );

setMoveKey( spep_8 + 0, 1, 74.4, 112.2 , 0 );
setMoveKey( spep_8 + 1, 1, 74.4, 111.8 , 0 );
setMoveKey( spep_8 + 2, 1, 74.4, 111.4 , 0 );
setMoveKey( spep_8 -3 + 6, 1, 74.4, 111 , 0 );
setMoveKey( spep_8 -3 + 8, 1, 74.4, 110.6 , 0 );
setMoveKey( spep_8 -3 + 10, 1, 74.4, 110.2 , 0 );
setMoveKey( spep_8 -3 + 12, 1, 74.4, 109.8 , 0 );
setMoveKey( spep_8 -3 + 14, 1, 74.4, 109.5 , 0 );
setMoveKey( spep_8 -3 + 16, 1, 74.4, 109.1 , 0 );
setMoveKey( spep_8 -3 + 18, 1, 74.5, 108.7 , 0 );
setMoveKey( spep_8 -3 + 20, 1, 74.5, 108.3 , 0 );
setMoveKey( spep_8 -3 + 22, 1, 74.5, 107.9 , 0 );
setMoveKey( spep_8 -3 + 24, 1, 74.5, 107.5 , 0 );
setMoveKey( spep_8 -3 + 26, 1, 74.5, 107.2 , 0 );
setMoveKey( spep_8 -3 + 28, 1, 74.5, 107.2 , 0 );

setScaleKey( spep_8 + 0, 1, 1.76, 1.76 );
setScaleKey( spep_8 -3 + 28, 1, 1.76, 1.76 );

setRotateKey( spep_8 + 0, 1, -115 );
setRotateKey( spep_8 -3 + 28, 1, -115 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_8 + 26 -1, 906, 210, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 26 -1, shuchusen6, 90, 20 );
setEffMoveKey( spep_8 + 26 -1, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_8 + 236 -1, shuchusen6, 0, 0 , 0 );
setEffScaleKey( spep_8 + 26 -1, shuchusen6, 1.5, 1.5 );
setEffScaleKey( spep_8 + 236 -1, shuchusen6, 1.5, 1.5 );
setEffRotateKey( spep_8 + 26 -1, shuchusen6, 0 );
setEffRotateKey( spep_8 + 236 -1, shuchusen6, 0 );
setEffAlphaKey( spep_8 + 26 -1, shuchusen6, 255 );
setEffAlphaKey( spep_8 + 236 -1, shuchusen6, 255 );

-- ** 音 ** --
--気弾発射
SE019 = playSeVer2( spep_8 + 22, 1193, "",spep_8 + 126, 0, 72, -1);
setSeVolumeByWorkId( spep_8 + 22, SE019, 135 );
SE020 = playSeVer2( spep_8 + 22, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 22, SE020, 79 );
SE021 = playSeVer2( spep_8 + 22, 1284, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_8 + 24, 1109, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_8 + 28, 1213, "", 0, 38, 0, -1);
SE024 = playSeVer2( spep_8 + 30, 1179, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 236 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 26 );
endPhase( spep_8 + 156 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 対峙(86F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 86 -1, 0x80, -1, 0, 0, 0 );  -- 対峙(ef_001a)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86 -1, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86 -1, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 86 -1, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 86 -1 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 86 -1, first_f, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
--setDisp( spep_0 -3 + 89, 1, 0 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 295.2, -212.2 , 0 );
setMoveKey( spep_0 + 1, 1, 297.1, -212.2 , 0 );
setMoveKey( spep_0 + 2, 1, 299, -212.2 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 300.8, -212.2 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 300.8, -212.2 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 302.6, -212.2 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 302.6, -212.2 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 304.2, -212.2 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 305.8, -212.2 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 307.2, -212.2 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 308.7, -212.2 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 310, -212.2 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 311.4, -212.2 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 312.6, -212.2 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 313.8, -212.2 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 315, -212.2 , 0 );

setScaleKey( spep_0 + 0, 1, 5, 5 );
setScaleKey( spep_0 + 1, 1, 5, 5 );
setScaleKey( spep_0 + 2, 1, 5, 5 );
setScaleKey( spep_0 + 3, 1, 5, 5 );
setScaleKey( spep_0 + 4, 1, 5, 5 );
setScaleKey( spep_0 + 5, 1, 5, 5 );
setScaleKey( spep_0 + 6, 1, 5, 5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 +86 + 58, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 43 );
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 +86 + 58, 0, 86, 0.7);
setSeVolumeByWorkId( spep_0 + 0, SE002, 91 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 86 -1 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 24 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);

    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 315, -212.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 316.1, -212.2 , 0 );
    setMoveKey( SP_dodge + 4, 1, 317.1, -212.2 , 0 );
    setMoveKey( SP_dodge + 6, 1, 318.2, -212.2 , 0 );
    setMoveKey( SP_dodge + 8, 1, 319.1, -212.2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 320.1, -212.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 5, 5 );
    setScaleKey( SP_dodge + 10, 1, 5, 5 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    

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

-- ** 敵キャラクター ** --
--setDisp( spep_0 -3 + 89, 1, 0 );

setMoveKey( spep_0 -3 + 28, 1, 316.1, -212.2 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 317.1, -212.2 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 318.2, -212.2 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 319.1, -212.2 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 320.1, -212.2 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 321, -212.2 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 321.9, -212.2 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 322.7, -212.2 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 323.5, -212.2 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 324.3, -212.2 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 325.1, -212.2 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 325.8, -212.2 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 326.5, -212.2 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 327.2, -212.2 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 327.8, -212.2 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 328.4, -212.2 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 329, -212.2 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 329.6, -212.2 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 330.2, -212.2 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 330.7, -212.2 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 331.3, -212.2 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 331.8, -212.2 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 332.3, -212.2 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 332.7, -212.2 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 333.2, -212.2 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 333.6, -212.2 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 334.1, -212.2 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 334.5, -212.2 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 334.9, -212.2 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 335.3, -212.2 , 0 );
setMoveKey( spep_0 -3 + 87, 1, 335.7, -212.2 , 0 );
--setMoveKey( spep_0 -3 + 88, 1, 335.7, -212.2 , 0 );
--setMoveKey( spep_0 -3 + 89, 1, 335.7, -212.2 , 0 );

setScaleKey( spep_0 -3 + 87, 1, 5, 5 );
--setScaleKey( spep_0 -3 + 88, 1, 5, 5 );
--setScaleKey( spep_0 -3 + 89, 1, 5, 5 );

setRotateKey( spep_0 -3 + 87, 1, 0 );
--setRotateKey( spep_0 -3 + 88, 1, 0 );
--setRotateKey( spep_0 -3 + 89, 1, 0 );

-- ** 音 ** --
--瞬間移動
SE003 = playSeVer2( spep_0 + 60, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 86 -1;


------------------------------------------------------
-- 蹴り(66F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
kick_b = entryEffectLife( spep_1 + 0, SP_03, 66 -1, 0x100, -1, 0, 0, 0 );  -- 蹴り_中(ef_002b)
setEffMoveKey( spep_1 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 66 -1, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 66 -1, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 66 -1, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 66 -1 -1, kick_b, 255 );
setEffAlphaKey( spep_1 + 66 -1, kick_b, 0 );

kick_f = entryEffectLife( spep_1 + 0, SP_02r, 66 -1, 0x100, -1, 0, 0, 0 );  -- 蹴り_手前(ef_002a)
setEffMoveKey( spep_1 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 66 -1, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 66 -1, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 66 -1, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 66 -1 -1, kick_f, 255 );
setEffAlphaKey( spep_1 + 66 -1, kick_f, 0 );

kick_e = entryEffectLife( spep_1 + 0, SP_04, 66 -1, 0x80, -1, 0, 0, 0 );  -- 蹴り_奥(ef_002c)
setEffMoveKey( spep_1 + 0, kick_e, 0, 0 , 0 );
setEffMoveKey( spep_1 + 66 -1, kick_e, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_e, 1.0, 1.0 );
setEffScaleKey( spep_1 + 66 -1, kick_e, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_e, 0 );
setEffRotateKey( spep_1 + 66 -1, kick_e, 0 );
setEffAlphaKey( spep_1 + 0, kick_e, 255 );
setEffAlphaKey( spep_1 + 66 -1 -1, kick_e, 255 );
setEffAlphaKey( spep_1 + 66 -1, kick_e, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_1 + 0, 1, 1 );
--setDisp( spep_1 + 66, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 -3 + 30, 1, 5 );

setMoveKey( spep_1 + 0, 1, 79.1, 44.2 , 0 );
setMoveKey( spep_1 -3 + 29, 1, 79.1, 44.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 277.1, 143.7 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 222.8, 83.7 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 168.4, 23.5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 186.2, 27.8 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 204.3, 32.3 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 190.7, 31.5 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 177, 30.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 185.7, 37.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 194.4, 44.1 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 197.1, 45.9 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 199.7, 47.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 202.4, 49.4 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 205.1, 51.2 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 207.8, 53 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 210.4, 54.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 213.1, 56.5 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 258.5, 111.7 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 304, 166.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 349.4, 222.2 , 0 );
setMoveKey( spep_1 -3 + 67, 1, 394.8, 277.6 , 0 );
--setMoveKey( spep_1 -3 + 68, 1, 394.8, 277.6 , 0 );
--setMoveKey( spep_1 -3 + 69, 1, 394.8, 277.6 , 0 );

setScaleKey( spep_1 + 0, 1, 2.64, 2.64 );
setScaleKey( spep_1 -3 + 29, 1, 2.64, 2.64 );
setScaleKey( spep_1 -3 + 30, 1, 2.86, 2.86 );
setScaleKey( spep_1 -3 + 32, 1, 2.717, 2.717 );
setScaleKey( spep_1 -3 + 34, 1, 2.574, 2.574 );
setScaleKey( spep_1 -3 + 36, 1, 2.639, 2.639 );
setScaleKey( spep_1 -3 + 38, 1, 2.691, 2.691 );
setScaleKey( spep_1 -3 + 40, 1, 2.613, 2.613 );
setScaleKey( spep_1 -3 + 42, 1, 2.548, 2.548 );
setScaleKey( spep_1 -3 + 44, 1, 2.535, 2.535 );
setScaleKey( spep_1 -3 + 46, 1, 2.522, 2.522 );
setScaleKey( spep_1 -3 + 48, 1, 2.522, 2.522 );
setScaleKey( spep_1 -3 + 50, 1, 2.509, 2.509 );
setScaleKey( spep_1 -3 + 52, 1, 2.496, 2.496 );
setScaleKey( spep_1 -3 + 54, 1, 2.496, 2.496 );
setScaleKey( spep_1 -3 + 56, 1, 2.483, 2.483 );
setScaleKey( spep_1 -3 + 58, 1, 2.47, 2.47 );
setScaleKey( spep_1 -3 + 60, 1, 2.47, 2.47 );
setScaleKey( spep_1 -3 + 62, 1, 1.80, 1.80 );
setScaleKey( spep_1 -3 + 64, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 66, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 67, 1, 0.36, 0.36 );
--setScaleKey( spep_1 -3 + 68, 1, 0.36, 0.36 );
--setScaleKey( spep_1 -3 + 69, 1, 0.36, 0.36 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 29, 1, 0 );
setRotateKey( spep_1 -3 + 30, 1, 19.8 );
setRotateKey( spep_1 -3 + 32, 1, 20.1 );
setRotateKey( spep_1 -3 + 34, 1, 20.5 );
setRotateKey( spep_1 -3 + 36, 1, 20.8 );
setRotateKey( spep_1 -3 + 38, 1, 21.2 );
setRotateKey( spep_1 -3 + 40, 1, 21.5 );
setRotateKey( spep_1 -3 + 42, 1, 21.9 );
setRotateKey( spep_1 -3 + 44, 1, 22.2 );
setRotateKey( spep_1 -3 + 46, 1, 22.6 );
setRotateKey( spep_1 -3 + 48, 1, 22.9 );
setRotateKey( spep_1 -3 + 50, 1, 23.3 );
setRotateKey( spep_1 -3 + 52, 1, 23.6 );
setRotateKey( spep_1 -3 + 54, 1, 24 );
setRotateKey( spep_1 -3 + 56, 1, 24.3 );
setRotateKey( spep_1 -3 + 58, 1, 24.7 );
setRotateKey( spep_1 -3 + 60, 1, 25 );
setRotateKey( spep_1 -3 + 67, 1, 25 );
--setRotateKey( spep_1 -3 + 68, 1, 25 );
--setRotateKey( spep_1 -3 + 69, 1, 25 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 28 -1, 906, 14 -1, 0x100, -1, 200, 150, 0 );  --集中線
setEffShake( spep_1 + 28 -1, shuchusen1, 90, 20 );
setEffMoveKey( spep_1 + 28 -1, shuchusen1, 200, 150 , 0 );
setEffMoveKey( spep_1 + 40, shuchusen1,200, 150 , 0 );
setEffScaleKey( spep_1 + 28 -1, shuchusen1, 1.7, 1.4 );
setEffScaleKey( spep_1 + 40, shuchusen1, 1.7, 1.4 );
setEffRotateKey( spep_1 + 28 -1, shuchusen1, 0 );
setEffRotateKey( spep_1 + 40, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 28 -1, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 40, shuchusen1, 255 );

-- ** 音 ** --
--蹴り上げ
SE004 = playSeVer2( spep_1 + 16, 1003, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 22, 1010, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 22, 1187, "",spep_1 +66 + 36, 0, 70, -1);
setSeVolumeByWorkId( spep_1 + 22, SE006, 84 );
SE007 = playSeVer2( spep_1 + 24, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE008 = playSeVer2( spep_1 + 52, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 52, SE008, 79 );
SE009 = playSeVer2( spep_1 + 52, 1183, "",spep_1 +66 +46 + 14, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 52, SE009, 91 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 66 -1 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 66 -1;

------------------------------------------------------
-- 突進(46F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
attack_b = entryEffectLife( spep_2 + 0, SP_06, 46 -1, 0x100, -1, 0, 0, 0 );  -- 突進_中(ef_003b)
setEffMoveKey( spep_2 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46 -1, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46 -1, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_b, 0 );
setEffRotateKey( spep_2 + 46 -1, attack_b, 0 );
setEffAlphaKey( spep_2 + 0, attack_b, 255 );
setEffAlphaKey( spep_2 + 46 -1 -1, attack_b, 255 );
setEffAlphaKey( spep_2 + 46 -1, attack_b, 0 );

attack_f = entryEffectLife( spep_2 + 0, SP_05r, 46 -1, 0x100, -1, 0, 0, 0 );  -- 突進_手前(ef_003a)
setEffMoveKey( spep_2 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46 -1, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46 -1, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_f, 0 );
setEffRotateKey( spep_2 + 46 -1, attack_f, 0 );
setEffAlphaKey( spep_2 + 0, attack_f, 255 );
setEffAlphaKey( spep_2 + 46 -1 -1, attack_f, 255 );
setEffAlphaKey( spep_2 + 46 -1, attack_f, 0 );

attack_e = entryEffectLife( spep_2 + 0, SP_07, 46 -1, 0x80, -1, 0, 0, 0 );  -- 突進_奥(ef_003c)
setEffMoveKey( spep_2 + 0, attack_e, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46 -1, attack_e, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_e, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46 -1, attack_e, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_e, 0 );
setEffRotateKey( spep_2 + 46 -1, attack_e, 0 );
setEffAlphaKey( spep_2 + 0, attack_e, 255 );
setEffAlphaKey( spep_2 + 46 -1 -1, attack_e, 255 );
setEffAlphaKey( spep_2 + 46 -1, attack_e, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
--setDisp( spep_2 -3 + 49, 1, 0 );
changeAnime( spep_2 + 0, 1, 5 );

setMoveKey( spep_2 + 0, 1, -190.7, -24 , 0 );
setMoveKey( spep_2 + 1, 1, -116.1, 6.7 , 0 );
setMoveKey( spep_2 + 2, 1, -57.6, 30.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -9.4, 50.6 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 31.3, 67.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 66.5, 81.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 97.2, 94.4 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 124.2, 105.5 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 148.2, 115.4 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 169.6, 124.2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 188.8, 132.1 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 206, 139.2 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 221.5, 145.6 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 235.4, 151.3 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 247.9, 156.5 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 259.2, 161.1 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 269.4, 165.3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 278.6, 169.1 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 286.8, 172.5 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 294.2, 175.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 300.9, 178.3 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 306.9, 180.7 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 312.2, 182.9 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 317.1, 184.9 , 0 );
setMoveKey( spep_2 -3 + 47, 1, 321.2, 186.7 , 0 );
--setMoveKey( spep_2 -3 + 48, 1, 321.2, 186.7 , 0 );
--setMoveKey( spep_2 -3 + 49, 1, 321.2, 186.7 , 0 );

setScaleKey( spep_2 + 0, 1, 4.99, 4.99 );
setScaleKey( spep_2 + 1, 1, 4.34, 4.34 );
setScaleKey( spep_2 + 2, 1, 3.83, 3.83 );
setScaleKey( spep_2 -3 + 6, 1, 3.4, 3.4 );
setScaleKey( spep_2 -3 + 8, 1, 3.05, 3.05 );
setScaleKey( spep_2 -3 + 10, 1, 2.74, 2.74 );
setScaleKey( spep_2 -3 + 12, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 14, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 16, 1, 2.02, 2.02 );
setScaleKey( spep_2 -3 + 18, 1, 1.83, 1.83 );
setScaleKey( spep_2 -3 + 20, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 22, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 24, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 26, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 28, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 30, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 32, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 34, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 36, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 38, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 40, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 42, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 44, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 46, 1, 0.54, 0.54 );
setScaleKey( spep_2 -3 + 47, 1, 0.5, 0.5 );
--setScaleKey( spep_2 -3 + 48, 1, 0.5, 0.5 );
--setScaleKey( spep_2 -3 + 49, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 0, 1, 119.9 );
setRotateKey( spep_2 + 1, 1, 125.7 );
setRotateKey( spep_2 + 2, 1, 130.3 );
setRotateKey( spep_2 -3 + 6, 1, 134.1 );
setRotateKey( spep_2 -3 + 8, 1, 137.2 );
setRotateKey( spep_2 -3 + 10, 1, 140 );
setRotateKey( spep_2 -3 + 12, 1, 142.4 );
setRotateKey( spep_2 -3 + 14, 1, 144.5 );
setRotateKey( spep_2 -3 + 16, 1, 146.4 );
setRotateKey( spep_2 -3 + 18, 1, 148.1 );
setRotateKey( spep_2 -3 + 20, 1, 149.6 );
setRotateKey( spep_2 -3 + 22, 1, 150.9 );
setRotateKey( spep_2 -3 + 24, 1, 152.1 );
setRotateKey( spep_2 -3 + 26, 1, 153.2 );
setRotateKey( spep_2 -3 + 28, 1, 154.2 );
setRotateKey( spep_2 -3 + 30, 1, 155.1 );
setRotateKey( spep_2 -3 + 32, 1, 155.9 );
setRotateKey( spep_2 -3 + 34, 1, 156.6 );
setRotateKey( spep_2 -3 + 36, 1, 157.3 );
setRotateKey( spep_2 -3 + 38, 1, 157.8 );
setRotateKey( spep_2 -3 + 40, 1, 158.4 );
setRotateKey( spep_2 -3 + 42, 1, 158.8 );
setRotateKey( spep_2 -3 + 44, 1, 159.3 );
setRotateKey( spep_2 -3 + 46, 1, 159.6 );
setRotateKey( spep_2 -3 + 47, 1, 160 );
--setRotateKey( spep_2 -3 + 48, 1, 160 );
--setRotateKey( spep_2 -3 + 49, 1, 160 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 26 -1, 906, 20, 0x100, -1, 350, 200, 0 );  --集中線
setEffShake( spep_2 + 26 -1, shuchusen2, 90, 20 );
setEffMoveKey( spep_2 + 26 -1, shuchusen2, 350, 200 , 0 );
setEffMoveKey( spep_2 + 46 -1, shuchusen2, 350, 200 , 0 );
setEffScaleKey( spep_2 + 26 -1, shuchusen2, 2.2, 1.6 );
setEffScaleKey( spep_2 + 46 -1, shuchusen2, 2.2, 1.6 );
setEffRotateKey( spep_2 + 26 -1, shuchusen2, 0 );
setEffRotateKey( spep_2 + 46 -1, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 26 -1, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 46 -1, shuchusen2, 255 );

-- ** 音 ** --
--向かっていく
SE010 = playSeVer2( spep_2 + 18, 9, "",spep_2 +46 + 10, 0, 10, -1);
SE011 = playSeVer2( spep_2 + 18, 1182, "",spep_2 +46 + 10, 0, 10, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 46 -1 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 46 -1;

------------------------------------------------------
-- 手刀(76F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
chop_b = entryEffectLife( spep_3 + 0, SP_09, 76, 0x100, -1, 0, 0, 0 );  -- 手刀_中(ef_004b)ß
setEffMoveKey( spep_3 + 0, chop_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, chop_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, chop_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, chop_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, chop_b, 0 );
setEffRotateKey( spep_3 + 76, chop_b, 0 );
setEffAlphaKey( spep_3 + 0, chop_b, 255 );
setEffAlphaKey( spep_3 + 76 -1, chop_b, 255 );
setEffAlphaKey( spep_3 + 76, chop_b, 0 );

chop_f = entryEffectLife( spep_3 + 0, SP_08r, 76, 0x100, -1, 0, 0, 0 );  -- 手刀_手前(ef_004a)
setEffMoveKey( spep_3 + 0, chop_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, chop_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, chop_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, chop_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, chop_f, 0 );
setEffRotateKey( spep_3 + 76, chop_f, 0 );
setEffAlphaKey( spep_3 + 0, chop_f, 255 );
setEffAlphaKey( spep_3 + 76 -1, chop_f, 255 );
setEffAlphaKey( spep_3 + 76, chop_f, 0 );

chop_e = entryEffectLife( spep_3 + 0, SP_10, 76, 0x80, -1, 0, 0, 0 );  -- 手刀_奥(ef_004c)
setEffMoveKey( spep_3 + 0, chop_e, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, chop_e, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, chop_e, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, chop_e, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, chop_e, 0 );
setEffRotateKey( spep_3 + 76, chop_e, 0 );
setEffAlphaKey( spep_3 + 0, chop_e, 255 );
setEffAlphaKey( spep_3 + 76 -1, chop_e, 255 );
setEffAlphaKey( spep_3 + 76, chop_e, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_3 + 0, 1, 1 );
--setDisp( spep_3 -3 + 79, 1, 0 );
changeAnime( spep_3 + 0, 1, 105 );
changeAnime( spep_3 -3 + 46, 1, 8 );

setMoveKey( spep_3 + 0, 1, 375.6, 320.6 , 0 );
setMoveKey( spep_3 + 1, 1, 385.1, 267.4 , 0 );
setMoveKey( spep_3 + 2, 1, 389.1, 245.5 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 391.3, 233.3 , 0 );
setMoveKey( spep_3 -3 + 7, 1, 391.3, 233.3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 649.9, 386.6 , 0 );
setMoveKey( spep_3 -3 + 9, 1, 649.9, 386.6 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 521, 307.9 , 0 );
setMoveKey( spep_3 -3 + 11, 1, 521, 307.9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 392, 229.2 , 0 );
setMoveKey( spep_3 -3 + 13, 1, 392, 229.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 431.6, 260.6 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 431.6, 260.6 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 471.1, 292.1 , 0 );
setMoveKey( spep_3 -3 + 17, 1, 471.1, 292.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 431.6, 260.7 , 0 );
setMoveKey( spep_3 -3 + 19, 1, 431.6, 260.7 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 392, 229.2 , 0 );
setMoveKey( spep_3 -3 + 21, 1, 392, 229.2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 410.8, 246.9 , 0 );
setMoveKey( spep_3 -3 + 23, 1, 410.8, 246.9 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 429.5, 264.6 , 0 );
setMoveKey( spep_3 -3 + 25, 1, 429.5, 264.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 410.8, 246.9 , 0 );
setMoveKey( spep_3 -3 + 27, 1, 410.8, 246.9 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 392, 229.2 , 0 );
setMoveKey( spep_3 -3 + 41, 1, 392, 229.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 317.8, 212.9 , 0 );
setMoveKey( spep_3 -3 + 43, 1, 317.8, 212.9 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 267.3, 201.8 , 0 );
setMoveKey( spep_3 -3 + 45, 1, 267.3, 201.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 221.2, 89.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 221.4, 91.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 221.6, 93.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 221.7, 95.1 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 221.9, 97.1 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 222, 99 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 222.2, 100.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 222.3, 102.6 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 222.5, 104.4 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 222.6, 106.1 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 222.7, 107.8 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 222.9, 109.5 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 223, 111.1 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 223.1, 112.6 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 223.2, 114.2 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 223.3, 115.7 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 223.2, 117.1 , 0 );
--setMoveKey( spep_3 -3 + 79, 1, 223.2, 117.1 , 0 );

setScaleKey( spep_3 + 0, 1, 14.48, 14.48 );
setScaleKey( spep_3 + 1, 1, 14.19, 14.19 );
setScaleKey( spep_3 + 2, 1, 14.07, 14.07 );
setScaleKey( spep_3 -3 + 6, 1, 14.01, 14.01 );
setScaleKey( spep_3 -3 + 7, 1, 14.01, 14.01 );
setScaleKey( spep_3 -3 + 8, 1, 17.48, 17.48 );
setScaleKey( spep_3 -3 + 9, 1, 17.48, 17.48 );
setScaleKey( spep_3 -3 + 10, 1, 15.73, 15.73 );
setScaleKey( spep_3 -3 + 11, 1, 15.73, 15.73 );
setScaleKey( spep_3 -3 + 12, 1, 13.98, 13.98 );
setScaleKey( spep_3 -3 + 13, 1, 13.98, 13.98 );
setScaleKey( spep_3 -3 + 14, 1, 14.68, 14.68 );
setScaleKey( spep_3 -3 + 15, 1, 14.68, 14.68 );
setScaleKey( spep_3 -3 + 16, 1, 15.38, 15.38 );
setScaleKey( spep_3 -3 + 17, 1, 15.38, 15.38 );
setScaleKey( spep_3 -3 + 18, 1, 14.68, 14.68 );
setScaleKey( spep_3 -3 + 19, 1, 14.68, 14.68 );
setScaleKey( spep_3 -3 + 20, 1, 13.98, 13.98 );
setScaleKey( spep_3 -3 + 21, 1, 13.98, 13.98 );
setScaleKey( spep_3 -3 + 22, 1, 14.33, 14.33 );
setScaleKey( spep_3 -3 + 23, 1, 14.33, 14.33 );
setScaleKey( spep_3 -3 + 24, 1, 14.68, 14.68 );
setScaleKey( spep_3 -3 + 25, 1, 14.68, 14.68 );
setScaleKey( spep_3 -3 + 26, 1, 14.33, 14.33 );
setScaleKey( spep_3 -3 + 27, 1, 14.33, 14.33 );
setScaleKey( spep_3 -3 + 28, 1, 13.98, 13.98 );
setScaleKey( spep_3 -3 + 41, 1, 13.98, 13.98 );
setScaleKey( spep_3 -3 + 42, 1, 10.11, 10.11 );
setScaleKey( spep_3 -3 + 43, 1, 10.11, 10.11 );
setScaleKey( spep_3 -3 + 44, 1, 7.47, 7.47 );
setScaleKey( spep_3 -3 + 45, 1, 7.47, 7.47 );
setScaleKey( spep_3 -3 + 46, 1, 5.5, 5.5 );
setScaleKey( spep_3 -3 + 48, 1, 5.48, 5.48 );
setScaleKey( spep_3 -3 + 50, 1, 5.46, 5.46 );
setScaleKey( spep_3 -3 + 52, 1, 5.45, 5.45 );
setScaleKey( spep_3 -3 + 54, 1, 5.43, 5.43 );
setScaleKey( spep_3 -3 + 56, 1, 5.41, 5.41 );
setScaleKey( spep_3 -3 + 58, 1, 5.39, 5.39 );
setScaleKey( spep_3 -3 + 60, 1, 5.38, 5.38 );
setScaleKey( spep_3 -3 + 62, 1, 5.36, 5.36 );
setScaleKey( spep_3 -3 + 64, 1, 5.35, 5.35 );
setScaleKey( spep_3 -3 + 66, 1, 5.33, 5.33 );
setScaleKey( spep_3 -3 + 68, 1, 5.32, 5.32 );
setScaleKey( spep_3 -3 + 70, 1, 5.3, 5.3 );
setScaleKey( spep_3 -3 + 72, 1, 5.29, 5.29 );
setScaleKey( spep_3 -3 + 74, 1, 5.28, 5.28 );
setScaleKey( spep_3 -3 + 76, 1, 5.26, 5.26 );
setScaleKey( spep_3 -3 + 78, 1, 5.25, 5.25 );
--setScaleKey( spep_3 -3 + 79, 1, 5.25, 5.25 );

setRotateKey( spep_3 + 0, 1, -160 );
setRotateKey( spep_3 -3 + 41, 1, -160 );
setRotateKey( spep_3 -3 + 42, 1, -169.1 );
setRotateKey( spep_3 -3 + 43, 1, -169.1 );
setRotateKey( spep_3 -3 + 44, 1, -175.4 );
setRotateKey( spep_3 -3 + 45, 1, -175.4 );
setRotateKey( spep_3 -3 + 46, 1, -185 );
setRotateKey( spep_3 -3 + 48, 1, -185.4 );
setRotateKey( spep_3 -3 + 50, 1, -185.7 );
setRotateKey( spep_3 -3 + 52, 1, -186.1 );
setRotateKey( spep_3 -3 + 54, 1, -186.4 );
setRotateKey( spep_3 -3 + 56, 1, -186.8 );
setRotateKey( spep_3 -3 + 58, 1, -187.1 );
setRotateKey( spep_3 -3 + 60, 1, -187.4 );
setRotateKey( spep_3 -3 + 62, 1, -187.7 );
setRotateKey( spep_3 -3 + 64, 1, -188 );
setRotateKey( spep_3 -3 + 66, 1, -188.3 );
setRotateKey( spep_3 -3 + 68, 1, -188.6 );
setRotateKey( spep_3 -3 + 70, 1, -188.9 );
setRotateKey( spep_3 -3 + 72, 1, -189.2 );
setRotateKey( spep_3 -3 + 74, 1, -189.5 );
setRotateKey( spep_3 -3 + 76, 1, -189.7 );
setRotateKey( spep_3 -3 + 78, 1, -190 );
--setRotateKey( spep_3 -3 + 79, 1, -190 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 6 -1, 906, 10 -1, 0x100, -1, -30, 0, 0 );  --集中線
setEffShake( spep_3 + 6 -1, shuchusen3, 90, 20 );
setEffMoveKey( spep_3 + 6 -1, shuchusen3, -30, 0 , 0 );
setEffMoveKey( spep_3 + 14, shuchusen3, -30, 0 , 0 );
setEffScaleKey( spep_3 + 6 -1, shuchusen3, 1.2, 1.2 );
setEffScaleKey( spep_3 + 14, shuchusen3, 1.2, 1.2 );
setEffRotateKey( spep_3 + 6 -1, shuchusen3, 0 );
setEffRotateKey( spep_3 + 14, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 6 -1, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 14, shuchusen3, 255 );

-- ** 音 ** --
--手刀
SE012 = playSeVer2( spep_3 + 0, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE012, 87 );
SE013 = playSeVer2( spep_3 + 2, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 2, SE013, 79 );

--画面遷移
SE014 = playSeVer2( spep_3 + 56, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;

------------------------------------------------------
-- 手刀余韻(40F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
form_f = entryEffectLife( spep_4 + 0, SP_11, 40, 0x100, -1, 0, 0, 0 );  -- 手刀余韻_手前(ef_005a)
setEffMoveKey( spep_4 + 0, form_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 40, form_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, form_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 40, form_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, form_f, 0 );
setEffRotateKey( spep_4 + 40, form_f, 0 );
setEffAlphaKey( spep_4 + 0, form_f, 255 );
setEffAlphaKey( spep_4 + 40 -1, form_f, 255 );
setEffAlphaKey( spep_4 + 40, form_f, 0 );

form_b = entryEffectLife( spep_4 + 0, SP_12, 40, 0x80, -1, 0, 0, 0 );  -- 手刀余韻_奥(ef_005b)
setEffMoveKey( spep_4 + 0, form_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 40, form_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, form_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 40, form_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, form_b, 0 );
setEffRotateKey( spep_4 + 40, form_b, 0 );
setEffAlphaKey( spep_4 + 0, form_b, 255 );
setEffAlphaKey( spep_4 + 40 -1, form_b, 255 );
setEffAlphaKey( spep_4 + 40, form_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
--setDisp( spep_4 -3 + 43, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4 + 0, 1, -15.4, 179.2 , 0 );
setMoveKey( spep_4 + 1, 1, -20.3, 160.3 , 0 );
setMoveKey( spep_4 + 2, 1, -22.8, 150.6 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -24.7, 143.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -26.4, 136.6 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -27.9, 130.9 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -29.2, 125.7 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -30.5, 120.9 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -31.6, 116.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -32.7, 112.1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -33.8, 108.1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -34.8, 104.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -35.7, 100.7 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -36.6, 97.3 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -37.4, 94 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -38.3, 90.8 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -39, 87.8 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -39.8, 84.9 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -40.5, 82.2 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -41.2, 79.6 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -41.8, 77.2 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -42.4, 75 , 0 );
--setMoveKey( spep_4 -3 + 43, 1, -42.4, 75 , 0 );

setScaleKey( spep_4 + 0, 1, 3.2, 3.2 );
setScaleKey( spep_4 -3 + 42, 1, 3.2, 3.2 );
--setScaleKey( spep_4 -3 + 43, 1, 3.2, 3.2 );

setRotateKey( spep_4 + 0, 1, 115 );
setRotateKey( spep_4 + 1, 1, 115.5 );
setRotateKey( spep_4 + 2, 1, 115.8 );
setRotateKey( spep_4 -3 + 6, 1, 116 );
setRotateKey( spep_4 -3 + 8, 1, 116.2 );
setRotateKey( spep_4 -3 + 10, 1, 116.3 );
setRotateKey( spep_4 -3 + 12, 1, 116.5 );
setRotateKey( spep_4 -3 + 14, 1, 116.6 );
setRotateKey( spep_4 -3 + 16, 1, 116.7 );
setRotateKey( spep_4 -3 + 18, 1, 116.8 );
setRotateKey( spep_4 -3 + 20, 1, 116.9 );
setRotateKey( spep_4 -3 + 22, 1, 117 );
setRotateKey( spep_4 -3 + 24, 1, 117.1 );
setRotateKey( spep_4 -3 + 26, 1, 117.2 );
setRotateKey( spep_4 -3 + 28, 1, 117.3 );
setRotateKey( spep_4 -3 + 30, 1, 117.4 );
setRotateKey( spep_4 -3 + 32, 1, 117.5 );
setRotateKey( spep_4 -3 + 34, 1, 117.6 );
setRotateKey( spep_4 -3 + 36, 1, 117.6 );
setRotateKey( spep_4 -3 + 38, 1, 117.7 );
setRotateKey( spep_4 -3 + 40, 1, 117.8 );
setRotateKey( spep_4 -3 + 42, 1, 117.8 );
--setRotateKey( spep_4 -3 + 43, 1, 117.8 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 40 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 40;

------------------------------------------------------
-- 手構え(40F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
tame_f = entryEffectLife( spep_5 + 0, SP_13, 40, 0x100, -1, 0, 0, 0 );  -- 手構え_手前(ef_006a)
setEffMoveKey( spep_5 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 40, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 40, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tame_f, 0 );
setEffRotateKey( spep_5 + 40, tame_f, 0 );
setEffAlphaKey( spep_5 + 0, tame_f, 255 );
setEffAlphaKey( spep_5 + 40 -1, tame_f, 255 );
setEffAlphaKey( spep_5 + 40, tame_f, 0 );

tame_b = entryEffectLife( spep_5 + 0, SP_14, 40, 0x80, -1, 0, 0, 0 );  -- 手構え_奥(ef_006b)
setEffMoveKey( spep_5 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 40, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 40, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tame_b, 0 );
setEffRotateKey( spep_5 + 40, tame_b, 0 );
setEffAlphaKey( spep_5 + 0, tame_b, 255 );
setEffAlphaKey( spep_5 + 40 -1, tame_b, 255 );
setEffAlphaKey( spep_5 + 40, tame_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 43, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 28, 266.2 , 0 );
setMoveKey( spep_5 + 1, 1, 28, 259.5 , 0 );
setMoveKey( spep_5 + 2, 1, 28, 253.4 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 28, 248 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 28, 243 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 28, 238.5 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 28, 234.4 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 28, 230.7 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 28, 227.3 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 28, 224.2 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 28, 221.4 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 28, 218.8 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 28, 216.5 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 28, 214.4 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 28, 212.6 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 28, 211 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 28, 209.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 28, 208.4 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 28, 207.5 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 28, 206.8 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 28, 206.3 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 28.1, 206.1 , 0 );
setMoveKey( spep_5 -3 + 43, 1, 28.1, 206.1 , 0 );

setScaleKey( spep_5 + 0, 1, 3, 3 );
setScaleKey( spep_5 -3 + 43, 1, 3, 3 );

setRotateKey( spep_5 + 0, 1, 90 );
setRotateKey( spep_5 -3 + 43, 1, 90 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 26 -1, 906, 14, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 26 -1, shuchusen4, 90, 20 );
setEffMoveKey( spep_5 + 26 -1, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 40 -1, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_5 + 26 -1, shuchusen4, 1.4, 1.4 );
setEffScaleKey( spep_5 + 40 -1, shuchusen4, 1.4, 1.4 );
setEffRotateKey( spep_5 + 26 -1, shuchusen4, 0 );
setEffRotateKey( spep_5 + 40 -1, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 26 -1, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 40 -1, shuchusen4, 255 );

-- ** 音 ** --
--手を向ける
SE015 = playSeVer2( spep_5 + 14, 1003, "", 0, 0, 0, -1);

SE016 = playSeVer2( spep_5 + 16, 1006, "",spep_5 + 40 + 2, 0, 6, -1);
setPitch( spep_5 + 16, SE016, -300 );
setTimeStretch( SE016, 0.8, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 40 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 40;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_6 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;

------------------------------------------------------
-- 笑うベジータ(116F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
bsmile = entryEffectLife( spep_7 + 0, SP_15, 116, 0x100, -1, 0, 0, 0 );  -- 笑うベジータ(ef_007a)
setEffMoveKey( spep_7 + 0, bsmile, 0, 0 , 0 );
setEffMoveKey( spep_7 + 116, bsmile, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, bsmile, 1.0, 1.0 );
setEffScaleKey( spep_7 + 116, bsmile, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, bsmile, 0 );
setEffRotateKey( spep_7 + 116, bsmile, 0 );
setEffAlphaKey( spep_7 + 0, bsmile, 255 );
setEffAlphaKey( spep_7 + 116 -1, bsmile, 255 );
setEffAlphaKey( spep_7 + 116, bsmile, 0 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_7 + 22;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 15, 515.5 , 0 );
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

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_7 + 0, 906, 116 -1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen5, 90, 20 );
setEffMoveKey( spep_7 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7 + 116 -1, shuchusen5, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, shuchusen5, 1.4, 1.4 );
setEffScaleKey( spep_7 + 116 -1, shuchusen5, 1.4, 1.4 );
setEffRotateKey( spep_7 + 0, shuchusen5, 0 );
setEffRotateKey( spep_7 + 116 -1, shuchusen5, 0 );
setEffAlphaKey( spep_7 + 0, shuchusen5, 0 );
setEffAlphaKey( spep_7 + 36 -2, shuchusen5, 0 );
setEffAlphaKey( spep_7 + 36 -1, shuchusen5, 255 );
setEffAlphaKey( spep_7 + 116 -1, shuchusen5, 255 );

-- ** 音 ** --
--顔カットイン
SE018 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_7 + 100, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 116;

------------------------------------------------------
-- 発射(236F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_8 + 0, SP_16r, 0x100, -1, 0, 0, 0 );  -- 発射_手前(ef_008a)
setEffMoveKey( spep_8 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 236, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 236, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_f, 0 );
setEffRotateKey( spep_8 + 236, finish_f, 0 );
setEffAlphaKey( spep_8 + 0, finish_f, 255 );
setEffAlphaKey( spep_8 + 236, finish_f, 255 );

finish_b = entryEffect( spep_8 + 0, SP_17, 0x100, -1, 0, 0, 0 );  -- 発射_中(ef_008b)
setEffMoveKey( spep_8 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 236, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 236, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_b, 0 );
setEffRotateKey( spep_8 + 236, finish_b, 0 );
setEffAlphaKey( spep_8 + 0, finish_b, 255 );
setEffAlphaKey( spep_8 + 236, finish_b, 255 );

finish_e = entryEffect( spep_8 + 0, SP_18, 0x80, -1, 0, 0, 0 );  -- 発射_奥(ef_008c)
setEffMoveKey( spep_8 + 0, finish_e, 0, 0 , 0 );
setEffMoveKey( spep_8 + 236, finish_e, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish_e, 1.0, 1.0 );
setEffScaleKey( spep_8 + 236, finish_e, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_e, 0 );
setEffRotateKey( spep_8 + 236, finish_e, 0 );
setEffAlphaKey( spep_8 + 0, finish_e, 255 );
setEffAlphaKey( spep_8 + 236, finish_e, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 -3 + 28, 1, 0 );
changeAnime( spep_8 + 0, 1, 6 );

setMoveKey( spep_8 + 0, 1, 74.4, 112.2 , 0 );
setMoveKey( spep_8 + 1, 1, 74.4, 111.8 , 0 );
setMoveKey( spep_8 + 2, 1, 74.4, 111.4 , 0 );
setMoveKey( spep_8 -3 + 6, 1, 74.4, 111 , 0 );
setMoveKey( spep_8 -3 + 8, 1, 74.4, 110.6 , 0 );
setMoveKey( spep_8 -3 + 10, 1, 74.4, 110.2 , 0 );
setMoveKey( spep_8 -3 + 12, 1, 74.4, 109.8 , 0 );
setMoveKey( spep_8 -3 + 14, 1, 74.4, 109.5 , 0 );
setMoveKey( spep_8 -3 + 16, 1, 74.4, 109.1 , 0 );
setMoveKey( spep_8 -3 + 18, 1, 74.5, 108.7 , 0 );
setMoveKey( spep_8 -3 + 20, 1, 74.5, 108.3 , 0 );
setMoveKey( spep_8 -3 + 22, 1, 74.5, 107.9 , 0 );
setMoveKey( spep_8 -3 + 24, 1, 74.5, 107.5 , 0 );
setMoveKey( spep_8 -3 + 26, 1, 74.5, 107.2 , 0 );
setMoveKey( spep_8 -3 + 28, 1, 74.5, 107.2 , 0 );

setScaleKey( spep_8 + 0, 1, 1.76, 1.76 );
setScaleKey( spep_8 -3 + 28, 1, 1.76, 1.76 );

setRotateKey( spep_8 + 0, 1, -115 );
setRotateKey( spep_8 -3 + 28, 1, -115 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_8 + 26 -1, 906, 210, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 26 -1, shuchusen6, 90, 20 );
setEffMoveKey( spep_8 + 26 -1, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_8 + 236 -1, shuchusen6, 0, 0 , 0 );
setEffScaleKey( spep_8 + 26 -1, shuchusen6, 1.5, 1.5 );
setEffScaleKey( spep_8 + 236 -1, shuchusen6, 1.5, 1.5 );
setEffRotateKey( spep_8 + 26 -1, shuchusen6, 0 );
setEffRotateKey( spep_8 + 236 -1, shuchusen6, 0 );
setEffAlphaKey( spep_8 + 26 -1, shuchusen6, 255 );
setEffAlphaKey( spep_8 + 236 -1, shuchusen6, 255 );

-- ** 音 ** --
--気弾発射
SE019 = playSeVer2( spep_8 + 22, 1193, "",spep_8 + 126, 0, 72, -1);
setSeVolumeByWorkId( spep_8 + 22, SE019, 135 );
SE020 = playSeVer2( spep_8 + 22, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 22, SE020, 79 );
SE021 = playSeVer2( spep_8 + 22, 1284, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_8 + 24, 1109, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_8 + 28, 1213, "", 0, 38, 0, -1);
SE024 = playSeVer2( spep_8 + 30, 1179, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 236 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 26 );
endPhase( spep_8 + 156 );

end