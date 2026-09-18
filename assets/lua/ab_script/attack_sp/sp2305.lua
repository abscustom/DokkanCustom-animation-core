--4023430:LR_超サイヤ人孫悟飯(未来)_必殺技：激烈魔閃光
--sp_effect_a1_00330
--sp2305

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
SP_01 = 158698; --敵を見据える    ef_001
SP_02 = 158700; --気弾を構える    ef_002
SP_03 = 158701; --気弾を放つ ef_003
SP_04 = 158702; --気弾ヒット ef_004
SP_05 = 158711; --気弾ヒット時の背景 ef_013
SP_06 = 158703; --煙の中を突っ込む  ef_005
SP_07 = 158712; --煙に突っ込む際の背景    ef_014
SP_08 = 158704; --敵に沿う煙 ef_006
SP_09 = 158713; --敵に沿う煙の背景  ef_015
SP_10 = 158705; --ジャンプして気タメ ef_007
SP_11 = 158706; --気タメ　バストアップ    ef_008
SP_12 = 158707; --気タメ　顔のアップ ef_009
SP_13 = 158708; --攻撃放つ  ef_010
SP_14 = 158709; --敵に向かっていくビーム   ef_011
SP_15 = 158710; --爆発    ef_012

--敵側
SP_01r = 158699;    --敵を見据える    ef_001r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 敵を見据える(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 96, 0x100, -1, 0, 0, 0 );  --敵を見据える   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 30, 4 );

--画面遷移
SE002 = playSeVer2( spep_0 +82, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE002, 81 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 6 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 80 -1, 16 +1, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


------------------------------------------------------
-- 気弾を構える(66F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_1 + 0, SP_02, 66, 0x100, -1, 0, 0, 0 );  --気弾を構える ef_002
setEffMoveKey( spep_1 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_1 + 66, kamae, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_1 + 66, kamae, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kamae, 0 );
setEffRotateKey( spep_1 + 66, kamae, 0 );
setEffAlphaKey( spep_1 + 0, kamae, 255 );
setEffAlphaKey( spep_1 + 66 -1, kamae, 255 );
setEffAlphaKey( spep_1 + 66, kamae, 0 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 14 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);

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

-- ** 音 ** --
--顔アップ
SE003 = playSeVer2( spep_1 + 16, 1044, "",spep_1 +66, 0, 38, -1);
setSeVolumeByWorkId( spep_1 + 16, SE003, 79 );
setPitch( spep_1 + 16, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
SE004 = playSeVer2( spep_1 +30, 1264, "",spep_1 +66 + 26, 0, 28, -1);
setSeVolumeByWorkId( spep_1 + 30, SE004, 71 );
SE005 = playSeVer2( spep_1 + 30, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 30, SE005, 74 );

--連続気弾１
SE006 = playSeVer2( spep_1 + 60, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 60, SE006, 132 );
setPitch( spep_1 + 60, SE006, -200 );
setTimeStretch( SE006, 0.87, 30, 4 );
SE007 = playSeVer2( spep_1 + 60, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 60, SE007, 116 );
SE008 = playSeVer2( spep_1 + 60, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 60, SE008, 126 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
--entryFade( spep_1 + 0, 0, 0, 6 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 66;


------------------------------------------------------
-- 気弾を放つ(68F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
shot = entryEffectLife( spep_2 + 0, SP_03, 68, 0x100, -1, 0, 0, 0 );  --気弾を放つ   ef_003
setEffMoveKey( spep_2 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_2 + 68, shot, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_2 + 68, shot, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot, 0 );
setEffRotateKey( spep_2 + 68, shot, 0 );
setEffAlphaKey( spep_2 + 0, shot, 255 );
setEffAlphaKey( spep_2 + 68 -1, shot, 255 );
setEffAlphaKey( spep_2 + 68, shot, 0 );

-- ** 音 ** --
--連続気弾２
SE009 = playSeVer2( spep_2 + 20, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE009, 116 );
setPitch( spep_2 + 20, SE009, -200 );
setTimeStretch( SE009, 0.87, 30, 4 );
SE010 = playSeVer2( spep_2 + 20, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE010, 108 );
SE011 = playSeVer2( spep_2 + 20, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE011, 133 );

--連続気弾３
SE012 = playSeVer2( spep_2 + 44, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE012, 127 );
SE013 = playSeVer2( spep_2 + 44, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE013, 129 );
SE014 = playSeVer2( spep_2 + 44, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE014, 116 );

--気弾飛んでいく
SE015 = playSeVer2( spep_2 + 54, 1202, "",spep_2 +68 + 36, 0, 16, 0.6);
setSeVolumeByWorkId( spep_2 + 54, SE015, 162 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 68 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_2 + 62 -1, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 68;


------------------------------------------------------
-- 気弾ヒット(66F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_3 + 0, SP_04, 66 -1, 0x100, -1, 0, 0, 0 );  --気弾ヒット  ef_004
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66 -1, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66 -1, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 66 -1, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 66 -2, hit_f, 255 );
setEffAlphaKey( spep_3 + 66 -1, hit_f, 0 );

hit_b = entryEffectLife( spep_3 + 0, SP_05, 66 -1, 0x80, -1, 0, 0, 0 );  --気弾ヒット時の背景   ef_013
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66 -1, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66 -1, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 66 -1, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 66 -2, hit_b, 255 );
setEffAlphaKey( spep_3 + 66 -1, hit_b, 0 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 66 -1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66 -1, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 66 -1, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 66 -1, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 66 -2, shuchusen, 255 );
setEffAlphaKey( spep_3 + 66 -1, shuchusen, 0 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 68, 1, 0 );
changeAnime( spep_3 + 0, 1, 104 );

setMoveKey( spep_3 + 0, 1, 61.7, -20.5 , 0 );
setMoveKey( spep_3 + 1, 1, 67.8, -20.8 , 0 );
setMoveKey( spep_3 + 2, 1, 70.6, -20.9 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 73.7, -0.8 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 74.6, -42 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 75.4, -8.1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 75.3, -33.4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 75.2, -14.5 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 75.4, -32.3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 75.5, -17.2 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 75.5, -26.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 75.6, -17.2 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 75.6, -21.1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 76.9, -4.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 76.1, -40 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 75.9, 4.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 75.9, -32.7 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 75.9, -4.4 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 76, -33.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 76, -8.2 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 76.1, -30.5 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 76.1, -12.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 76.2, -30.3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 77.4, 3.9 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 76.6, -38.6 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 76.4, -4.4 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 76.4, -33.5 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 76.5, -10.1 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 76.5, -32 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 76.6, -14.6 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 76.6, -28.4 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 76.7, -16.6 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 76.8, -26.9 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 76.8, -16.4 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 76.9, -21.9 , 0 );
--setMoveKey( spep_3 -3 + 69, 1, 76.9, -21.9 , 0 );

setScaleKey( spep_3 + 0, 1, 1.9, 1.9 );
setScaleKey( spep_3 + 1, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 2, 1, 1.54, 1.54 );
setScaleKey( spep_3 -3 + 6, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 8, 1, 1.43, 1.43 );
setScaleKey( spep_3 -3 + 10, 1, 1.36, 1.36 );
setScaleKey( spep_3 -3 + 12, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 14, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 16, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 22, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 24, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 26, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 28, 1, 1.36, 1.36 );
setScaleKey( spep_3 -3 + 30, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 32, 1, 1.32, 1.32 );
setScaleKey( spep_3 -3 + 40, 1, 1.32, 1.32 );
setScaleKey( spep_3 -3 + 42, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 44, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 46, 1, 1.44, 1.44 );
setScaleKey( spep_3 -3 + 48, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 50, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 52, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 56, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 58, 1, 1.29, 1.29 );
setScaleKey( spep_3 -3 + 64, 1, 1.29, 1.29 );
setScaleKey( spep_3 -3 + 66, 1, 1.28, 1.28 );
setScaleKey( spep_3 -3 + 68, 1, 1.28, 1.28 );
--setScaleKey( spep_3 -3 + 69, 1, 1.28, 1.28 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 68, 1, 0 );
--setRotateKey( spep_3 -3 + 69, 1, 0 );

-- ** 音 ** --
--気弾飛んでいく
SE017 = playSeVer2( spep_3 + 2, 1202, "",spep_3 + 50, 0, 16, 0.6);
setSeVolumeByWorkId( spep_3 + 2, SE017, 170 );
SE019 = playSeVer2( spep_3 + 22, 1202, "",spep_3 +62 + 8 -1, 0, 14, 0.6);
setSeVolumeByWorkId( spep_3 + 22, SE019, 182 );

--連続爆発
SE016 = playSeVer2( spep_3 + 0, 1023, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 14, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 14, SE018, 70 );
SE020 = playSeVer2( spep_3 + 30, 1024, "", 0, 0, 0, -1);

--悟飯向かっていく
SE021 = playSeVer2( spep_3 + 62, 9, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_3 + 62, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_3 + 62, SE022, 80 );
setPitch( spep_3 + 62 + 0, SE022, -600 );
setTimeStretch( SE022, 0.6, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 66 -1 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_3 + 58 -1, 8 -1, 1, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 66 -1;


------------------------------------------------------
-- 煙の中を突っ込む(86F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_4 + 0, SP_06, 86, 0x100, -1, 0, 0, 0 );  --煙の中を突っ込む    ef_005
setEffMoveKey( spep_4 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, attack_f, 0 );
setEffRotateKey( spep_4 + 86, attack_f, 0 );
setEffAlphaKey( spep_4 + 0, attack_f, 255 );
setEffAlphaKey( spep_4 + 86 -1, attack_f, 255 );
setEffAlphaKey( spep_4 + 86, attack_f, 0 );

attack_b = entryEffectLife( spep_4 + 0, SP_07, 86, 0x80, -1, 0, 0, 0 );  --煙に突っ込む際の背景   ef_014
setEffMoveKey( spep_4 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, attack_b, 0 );
setEffRotateKey( spep_4 + 86, attack_b, 0 );
setEffAlphaKey( spep_4 + 0, attack_b, 255 );
setEffAlphaKey( spep_4 + 86 -1, attack_b, 255 );
setEffAlphaKey( spep_4 + 86, attack_b, 0 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_4 -3 + 42, 1, 1 );
setDisp( spep_4 -3 + 89, 1, 0 );
changeAnime( spep_4 -3 + 42, 1, 106 );
changeAnime( spep_4 -3 + 74, 1, 108 );

setMoveKey( spep_4 -3 + 42, 1, 372, 2.2 , 0 );
setMoveKey( spep_4 -3 + 43, 1, 372, 2.2 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 304.1, -3 , 0 );
setMoveKey( spep_4 -3 + 45, 1, 304.1, -3 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 235.4, 2 , 0 );
setMoveKey( spep_4 -3 + 47, 1, 235.4, 2 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 166, -3 , 0 );
setMoveKey( spep_4 -3 + 49, 1, 166, -3 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 95.3, 1.8 , 0 );
setMoveKey( spep_4 -3 + 51, 1, 95.3, 1.8 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 23.4, -2.4 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 23.4, -2.4 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 24.1, 9.9 , 0 );
setMoveKey( spep_4 -3 + 55, 1, 24.1, 9.9 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 95.3, -24 , 0 );
setMoveKey( spep_4 -3 + 57, 1, 95.3, -24 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -58.3, 28.1 , 0 );
setMoveKey( spep_4 -3 + 59, 1, -58.3, 28.1 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 87, -30.9 , 0 );
setMoveKey( spep_4 -3 + 61, 1, 87, -30.9 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -28.3, 7.3 , 0 );
setMoveKey( spep_4 -3 + 63, 1, -28.3, 7.3 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 17, -24.5 , 0 );
setMoveKey( spep_4 -3 + 65, 1, 17, -24.5 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 99.6, 19.5 , 0 );
setMoveKey( spep_4 -3 + 67, 1, 99.6, 19.5 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 46.4, -21 , 0 );
setMoveKey( spep_4 -3 + 69, 1, 46.4, -21 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 85.9, -1.2 , 0 );
setMoveKey( spep_4 -3 + 71, 1, 85.9, -1.2 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 60.8, -16.2 , 0 );
setMoveKey( spep_4 -3 + 73, 1, 60.8, -16.2 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 117.1, -10.6 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 152.9, -18.6 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 278.1, -14.4 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 482.7, -20.3 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 674.6, -20.2 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 801.6, -24.8 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 873.2, -23.6 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 907.6, -26.3 , 0 );
setMoveKey( spep_4 -3 + 89, 1, 907.6, -26.3 , 0 );

setScaleKey( spep_4 -3 + 42, 1, 1.771, 1.738 );
setScaleKey( spep_4 -3 + 43, 1, 1.771, 1.738 );
setScaleKey( spep_4 -3 + 44, 1, 1.782, 1.749 );
setScaleKey( spep_4 -3 + 45, 1, 1.782, 1.749 );
setScaleKey( spep_4 -3 + 46, 1, 1.793, 1.76 );
setScaleKey( spep_4 -3 + 47, 1, 1.793, 1.76 );
setScaleKey( spep_4 -3 + 48, 1, 1.815, 1.782 );
setScaleKey( spep_4 -3 + 49, 1, 1.815, 1.782 );
setScaleKey( spep_4 -3 + 50, 1, 1.826, 1.793 );
setScaleKey( spep_4 -3 + 51, 1, 1.826, 1.793 );
setScaleKey( spep_4 -3 + 52, 1, 1.848, 1.826 );
setScaleKey( spep_4 -3 + 53, 1, 1.848, 1.826 );
setScaleKey( spep_4 -3 + 54, 1, 1.881, 1.848 );
setScaleKey( spep_4 -3 + 55, 1, 1.881, 1.848 );
setScaleKey( spep_4 -3 + 56, 1, 1.914, 1.881 );
setScaleKey( spep_4 -3 + 57, 1, 1.914, 1.881 );
setScaleKey( spep_4 -3 + 58, 1, 1.958, 1.925 );
setScaleKey( spep_4 -3 + 59, 1, 1.958, 1.925 );
setScaleKey( spep_4 -3 + 60, 1, 2.024, 1.991 );
setScaleKey( spep_4 -3 + 61, 1, 2.024, 1.991 );
setScaleKey( spep_4 -3 + 62, 1, 2.112, 2.079 );
setScaleKey( spep_4 -3 + 63, 1, 2.112, 2.079 );
setScaleKey( spep_4 -3 + 64, 1, 2.42, 2.376 );
setScaleKey( spep_4 -3 + 65, 1, 2.42, 2.376 );
setScaleKey( spep_4 -3 + 66, 1, 2.431, 2.387 );
setScaleKey( spep_4 -3 + 67, 1, 2.431, 2.387 );
setScaleKey( spep_4 -3 + 68, 1, 2.431, 2.398 );
setScaleKey( spep_4 -3 + 69, 1, 2.431, 2.398 );
setScaleKey( spep_4 -3 + 70, 1, 2.453, 2.409 );
setScaleKey( spep_4 -3 + 71, 1, 2.453, 2.409 );
setScaleKey( spep_4 -3 + 72, 1, 2.464, 2.42 );
setScaleKey( spep_4 -3 + 73, 1, 2.464, 2.42 );
setScaleKey( spep_4 -3 + 74, 1, 2.7, 2.652 );
setScaleKey( spep_4 -3 + 76, 1, 2.724, 2.676 );
setScaleKey( spep_4 -3 + 78, 1, 2.736, 2.688 );
setScaleKey( spep_4 -3 + 80, 1, 2.76, 2.712 );
setScaleKey( spep_4 -3 + 82, 1, 2.784, 2.736 );
setScaleKey( spep_4 -3 + 84, 1, 2.808, 2.76 );
setScaleKey( spep_4 -3 + 86, 1, 2.844, 2.796 );
setScaleKey( spep_4 -3 + 88, 1, 2.904, 2.856 );
setScaleKey( spep_4 -3 + 89, 1, 2.904, 2.856 );

setRotateKey( spep_4 -3 + 42, 1, -28.9 );
setRotateKey( spep_4 -3 + 43, 1, -28.9 );
setRotateKey( spep_4 -3 + 44, 1, -31.5 );
setRotateKey( spep_4 -3 + 45, 1, -31.5 );
setRotateKey( spep_4 -3 + 46, 1, -34.1 );
setRotateKey( spep_4 -3 + 47, 1, -34.1 );
setRotateKey( spep_4 -3 + 48, 1, -36.8 );
setRotateKey( spep_4 -3 + 49, 1, -36.8 );
setRotateKey( spep_4 -3 + 50, 1, -39.4 );
setRotateKey( spep_4 -3 + 51, 1, -39.4 );
setRotateKey( spep_4 -3 + 52, 1, -42.1 );
setRotateKey( spep_4 -3 + 53, 1, -42.1 );
setRotateKey( spep_4 -3 + 54, 1, -42.9 );
setRotateKey( spep_4 -3 + 55, 1, -42.9 );
setRotateKey( spep_4 -3 + 56, 1, -43.7 );
setRotateKey( spep_4 -3 + 57, 1, -43.7 );
setRotateKey( spep_4 -3 + 58, 1, -44.5 );
setRotateKey( spep_4 -3 + 59, 1, -44.5 );
setRotateKey( spep_4 -3 + 60, 1, -45 );
setRotateKey( spep_4 -3 + 61, 1, -45 );
setRotateKey( spep_4 -3 + 62, 1, -45.4 );
setRotateKey( spep_4 -3 + 63, 1, -45.4 );
setRotateKey( spep_4 -3 + 64, 1, -45.9 );
setRotateKey( spep_4 -3 + 65, 1, -45.9 );
setRotateKey( spep_4 -3 + 66, 1, -46.4 );
setRotateKey( spep_4 -3 + 67, 1, -46.4 );
setRotateKey( spep_4 -3 + 68, 1, -46.8 );
setRotateKey( spep_4 -3 + 69, 1, -46.8 );
setRotateKey( spep_4 -3 + 70, 1, -47.3 );
setRotateKey( spep_4 -3 + 71, 1, -47.3 );
setRotateKey( spep_4 -3 + 72, 1, -47.7 );
setRotateKey( spep_4 -3 + 73, 1, -47.7 );
setRotateKey( spep_4 -3 + 74, 1, 3 );
setRotateKey( spep_4 -3 + 76, 1, 3.6 );
setRotateKey( spep_4 -3 + 78, 1, 5.8 );
setRotateKey( spep_4 -3 + 80, 1, 9.4 );
setRotateKey( spep_4 -3 + 82, 1, 12.6 );
setRotateKey( spep_4 -3 + 84, 1, 14.7 );
setRotateKey( spep_4 -3 + 86, 1, 15.7 );
setRotateKey( spep_4 -3 + 88, 1, 16 );
setRotateKey( spep_4 -3 + 89, 1, 16 );

-- ** 音 ** --
--タックル
SE023 = playSeVer2( spep_4 + 50, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 50, SE023, 82 );
SE024 = playSeVer2( spep_4 + 50, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 50, SE024, 90 );
SE025 = playSeVer2( spep_4 + 52, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 52, SE025, 83 );

--敵飛んでいく
SE026 = playSeVer2( spep_4 + 82, 1044, "",spep_4 +86 +46 + 58, 0, 54, -1);
SE027 = playSeVer2( spep_4 + 82, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 82, SE027, 78 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 0, 6 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80 -1, 6, 1, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;


------------------------------------------------------
-- 敵に沿う煙(46F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
goaway_f = entryEffectLife( spep_5 + 0, SP_08, 46 -1, 0x100, -1, 0, 0, 0 );  --敵に沿う煙   ef_006
setEffMoveKey( spep_5 + 0, goaway_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46 -1, goaway_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, goaway_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 46 -1, goaway_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, goaway_f, 0 );
setEffRotateKey( spep_5 + 46 -1, goaway_f, 0 );
setEffAlphaKey( spep_5 + 0, goaway_f, 255 );
setEffAlphaKey( spep_5 + 46 -2, goaway_f, 255 );
setEffAlphaKey( spep_5 + 46 -1, goaway_f, 0 );

goaway_b = entryEffectLife( spep_5 + 0, SP_09, 46 -1, 0x80, -1, 0, 0, 0 );  --敵に沿う煙の背景 ef_015
setEffMoveKey( spep_5 + 0, goaway_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46 -1, goaway_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, goaway_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 46 -1, goaway_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, goaway_b, 0 );
setEffRotateKey( spep_5 + 46 -1, goaway_b, 0 );
setEffAlphaKey( spep_5 + 0, goaway_b, 255 );
setEffAlphaKey( spep_5 + 46 -2, goaway_b, 255 );
setEffAlphaKey( spep_5 + 46 -1, goaway_b, 0 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_5 -3 + 4, 1, 1 );
setDisp( spep_5 -3 + 49 -1, 1, 0 );
changeAnime( spep_5 -3 + 4, 1, 105 );

setMoveKey( spep_5 -3 + 4, 1, -335.1, -295 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -128.3, -202.5 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -52.8, -155 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 0.6, -128.7 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 42.3, -115.8 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 76.4, -90.1 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 105.1, -83.2 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 129.6, -62.7 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 150.6, -59.4 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 168.8, -43.9 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 184.6, -42.8 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 198.4, -28.9 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 210.2, -28.8 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 220.5, -18.5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 229.2, -18.4 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 236.6, -9.5 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 242.8, -12.2 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 247.8, -4.6 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 251.8, -6.9 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 254.8, -1.8 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 256.9, -3.9 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 258.1, -0.3 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 258.5, -2.8 , 0 );
--setMoveKey( spep_5 -3 + 49, 1, 258.5, -2.8 , 0 );

setScaleKey( spep_5 -3 + 4, 1, 2.02, 2.02 );
setScaleKey( spep_5 -3 + 6, 1, 1.43, 1.43 );
setScaleKey( spep_5 -3 + 8, 1, 1.22, 1.22 );
setScaleKey( spep_5 -3 + 10, 1, 1.07, 1.07 );
setScaleKey( spep_5 -3 + 12, 1, 0.95, 0.95 );
setScaleKey( spep_5 -3 + 14, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 16, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 18, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 20, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 22, 1, 0.59, 0.59 );
setScaleKey( spep_5 -3 + 24, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 26, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 28, 1, 0.48, 0.48 );
setScaleKey( spep_5 -3 + 30, 1, 0.45, 0.45 );
setScaleKey( spep_5 -3 + 32, 1, 0.42, 0.42 );
setScaleKey( spep_5 -3 + 34, 1, 0.4, 0.4 );
setScaleKey( spep_5 -3 + 36, 1, 0.38, 0.38 );
setScaleKey( spep_5 -3 + 38, 1, 0.37, 0.37 );
setScaleKey( spep_5 -3 + 40, 1, 0.36, 0.36 );
setScaleKey( spep_5 -3 + 42, 1, 0.35, 0.35 );
setScaleKey( spep_5 -3 + 44, 1, 0.34, 0.34 );
setScaleKey( spep_5 -3 + 48, 1, 0.34, 0.34 );

setRotateKey( spep_5 -3 + 4, 1, 21 );
setRotateKey( spep_5 -3 + 48, 1, 21 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 46 -1 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 46 -1;


------------------------------------------------------
-- ジャンプして気タメ(136F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
jump = entryEffectLife( spep_6 + 0, SP_10, 136, 0x100, -1, 0, 0, 0 );  --ジャンプして気タメ  ef_007
setEffMoveKey( spep_6 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_6 + 136, jump, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_6 + 136, jump, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, jump, 0 );
setEffRotateKey( spep_6 + 136, jump, 0 );
setEffAlphaKey( spep_6 + 0, jump, 255 );
setEffAlphaKey( spep_6 + 136 -1, jump, 255 );
setEffAlphaKey( spep_6 + 136, jump, 0 );

-- ** 音 ** --
--飛び上がる
SE029 = playSeVer2( spep_6 + 12, 1207, "", 0, 0, 0, 0.6);
SE030 = playSeVer2( spep_6 + 18, 44, "", 0, 0, 0, -1);

--気弾溜めはじめ
SE031 = playSeVer2( spep_6 + 74, 1122, "",spep_6 +136 + 52, 0, 34, -1);
SE032 = playSeVer2( spep_6 + 74, 1210, "",spep_6 +136 +126 + 16, 0, 16, -1);
setBandpassFilter  ( spep_6 + 74, SE032, 24, 565 );
SE033 = playSeVer2( spep_6 + 74, 1203, "",spep_6 +136 +126 + 16, 0, 16, -1);
SE034 = playSeVer2( spep_6 + 82, 1296, "",spep_6 +136 +126 + 16, 40, 16, -1);
setStartTimeMs( SE034,  117 );

--気弾溜めアップ
SE028 = playSeVer2( spep_6 + 132, 1174, "",spep_6 +136 +126 + 16, 12, 16, 0.6);
setSeVolumeByWorkId( spep_6 + 132, SE028, 447 );
setStartTimeMs( SE028,  2833 );
SE035 = playSeVer2( spep_6 + 134, 1147, "",spep_6 +136 +126 + 16, 0, 16, -1);
setSeVolumeByWorkId( spep_6 + 134, SE035, 78 );
SE036 = playSeVer2( spep_6 + 134, 1264, "",spep_6 +136 +126 + 16, 0, 16, -1);
setSeVolumeByWorkId( spep_6 + 134, SE036, 89 );
setPitch( spep_6 + 134, SE036, -400 );
setTimeStretch( SE036, 0.73, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 0, 6 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 72 -1, 0, 0, 8 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 128 -1, 8 +1, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 136;


------------------------------------------------------
-- 気タメ　バストアップ(126F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_7 + 0, SP_11, 126 -1, 0x100, -1, 0, 0, 0 );  --気タメ　バストアップ ef_008
setEffMoveKey( spep_7 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_7 + 126 -1, tame, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_7 + 126 -1, tame, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, tame, 0 );
setEffRotateKey( spep_7 + 126 -1, tame, 0 );
setEffAlphaKey( spep_7 + 0, tame, 255 );
setEffAlphaKey( spep_7 + 126 -2, tame, 255 );
setEffAlphaKey( spep_7 + 126 -1, tame, 0 );

spep_x = spep_7 + 40;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 85, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 85, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 85, 515.5 , 0 );
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
SE037 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 126 -1 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
--entryFade( spep_7 + 0, 0, 0, 6 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 126 -1;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_8 = 0;
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_8 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_8, SE_05);
    speff = entryEffect( spep_8, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_8, SE_05);
    speff = entryEffect( spep_8, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_8, SE_05);
    speff = entryEffect( spep_8, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_8 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_8 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_8 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_8 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_8 + 0, shuchusen, 0 );
setEffRotateKey( spep_8 + 90, shuchusen, 0 );
setEffAlphaKey( spep_8 + 0, shuchusen, 255 );
setEffAlphaKey( spep_8 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_8 + 0, SE_05 );

--顔アップ
SE039 = playSeVer2( spep_8 + 92, 1265, "",spep_8 +94 +56 + 40, 10, 26, -1);
setStartTimeMs( SE039,  367 );
SE040 = playSeVer2( spep_8 + 86, 1258, "",spep_8 +94 +56 + 40, 0, 26, -1);
setSeVolumeByWorkId( spep_8 + 86, SE040, 59 );

-- ** 白背景 ** --
entryFadeBg( spep_8 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_9 = spep_8 + 94;


------------------------------------------------------
-- 気タメ　顔のアップ(56F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
faceup = entryEffectLife( spep_9 + 0, SP_12, 56, 0x100, -1, 0, 0, 0 );  --気タメ　顔のアップ    ef_009
setEffMoveKey( spep_9 + 0, faceup, 0, 0 , 0 );
setEffMoveKey( spep_9 + 56, faceup, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, faceup, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, faceup, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, faceup, 0 );
setEffRotateKey( spep_9 + 56, faceup, 0 );
setEffAlphaKey( spep_9 + 0, faceup, 255 );
setEffAlphaKey( spep_9 + 56 -1, faceup, 255 );
setEffAlphaKey( spep_9 + 56, faceup, 0 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
--entryFade( spep_9 + 0, 0, 0, 6 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_10 = spep_9 + 56;


------------------------------------------------------
-- 攻撃放つ(76F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
hanathu = entryEffectLife( spep_10 + 0, SP_13, 76, 0x100, -1, 0, 0, 0 );  --攻撃放つ    ef_010
setEffMoveKey( spep_10 + 0, hanathu, 0, 0 , 0 );
setEffMoveKey( spep_10 + 76, hanathu, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, hanathu, 1.0, 1.0 );
setEffScaleKey( spep_10 + 76, hanathu, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, hanathu, 0 );
setEffRotateKey( spep_10 + 76, hanathu, 0 );
setEffAlphaKey( spep_10 + 0, hanathu, 255 );
setEffAlphaKey( spep_10 + 76 -1, hanathu, 255 );
setEffAlphaKey( spep_10 + 76, hanathu, 0 );

-- ** 音 ** --
--気弾発射
SE041 = playSeVer2( spep_10 + 8, 1145, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_10 + 8, 1193, "",spep_10 +76 +46 + 32, 0, 24, 0.6);
SE043 = playSeVer2( spep_10 + 8, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 8, SE043, 63 );

--気弾飛んでいく
SE044 = playSeVer2( spep_10 + 74, 1021, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_10 + 68 -1, 8 +1, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_11 = spep_10 + 76;


------------------------------------------------------
-- 敵に向かっていくビーム(46F)
------------------------------------------------------
--spep_11 = 0;

-- ** エフェクト等 ** --
beam = entryEffectLife( spep_11 + 0, SP_14, 46, 0x100, -1, 0, 0, 0 );  --敵に向かっていくビーム    ef_011
setEffMoveKey( spep_11 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_11 + 46, beam, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_11 + 46, beam, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, beam, 0 );
setEffRotateKey( spep_11 + 46, beam, 0 );
setEffAlphaKey( spep_11 + 0, beam, 255 );
setEffAlphaKey( spep_11 + 46 -1, beam, 255 );
setEffAlphaKey( spep_11 + 46, beam, 0 );

-- ** 音 ** --
--着弾
SE045 = playSeVer2( spep_11 + 42, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
--entryFade( spep_11 + 0, 0, 0, 6 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_11 + 38 -1, 8 +1, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_12 = spep_11 + 46;


------------------------------------------------------
-- 爆発(156F)
------------------------------------------------------
--spep_12 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_12 + 0, SP_15, 0x100, -1, 0, 0, 0 );  --爆発   ef_012
setEffMoveKey( spep_12 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_12 + 156, finish, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_12 + 156, finish, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, finish, 0 );
setEffRotateKey( spep_12 + 156, finish, 0 );
setEffAlphaKey( spep_12 + 0, finish, 255 );
setEffAlphaKey( spep_12 + 156, finish, 255 );

-- ** 音 ** --
--着弾
SE046 = playSeVer2( spep_12 + 28, 1068, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_12 + 28, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 28, SE047, 78 );
SE048 = playSeVer2( spep_12 + 28, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 28, SE048, 91 );

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 156 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --

-- ** ダメージ表示 ** --
dealDamage( spep_12 + 46 );
endPhase( spep_12 + 146 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 敵を見据える(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 96, 0x100, -1, 0, 0, 0 );  --敵を見据える   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 30, 4 );

--画面遷移
SE002 = playSeVer2( spep_0 +82, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE002, 81 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 6 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 80 -1, 16 +1, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


------------------------------------------------------
-- 気弾を構える(66F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_1 + 0, SP_02, 66, 0x100, -1, 0, 0, 0 );  --気弾を構える ef_002
setEffMoveKey( spep_1 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_1 + 66, kamae, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_1 + 66, kamae, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kamae, 0 );
setEffRotateKey( spep_1 + 66, kamae, 0 );
setEffAlphaKey( spep_1 + 0, kamae, 255 );
setEffAlphaKey( spep_1 + 66 -1, kamae, 255 );
setEffAlphaKey( spep_1 + 66, kamae, 0 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 14 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);

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

-- ** 音 ** --
--顔アップ
SE003 = playSeVer2( spep_1 + 16, 1044, "",spep_1 +66, 0, 38, -1);
setSeVolumeByWorkId( spep_1 + 16, SE003, 79 );
setPitch( spep_1 + 16, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
SE004 = playSeVer2( spep_1 +30, 1264, "",spep_1 +66 + 26, 0, 28, -1);
setSeVolumeByWorkId( spep_1 + 30, SE004, 71 );
SE005 = playSeVer2( spep_1 + 30, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 30, SE005, 74 );

--連続気弾１
SE006 = playSeVer2( spep_1 + 60, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 60, SE006, 132 );
setPitch( spep_1 + 60, SE006, -200 );
setTimeStretch( SE006, 0.87, 30, 4 );
SE007 = playSeVer2( spep_1 + 60, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 60, SE007, 116 );
SE008 = playSeVer2( spep_1 + 60, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 60, SE008, 126 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
--entryFade( spep_1 + 0, 0, 0, 6 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 66;


------------------------------------------------------
-- 気弾を放つ(68F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
shot = entryEffectLife( spep_2 + 0, SP_03, 68, 0x100, -1, 0, 0, 0 );  --気弾を放つ   ef_003
setEffMoveKey( spep_2 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_2 + 68, shot, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot, -1.0, 1.0 );
setEffScaleKey( spep_2 + 68, shot, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot, 0 );
setEffRotateKey( spep_2 + 68, shot, 0 );
setEffAlphaKey( spep_2 + 0, shot, 255 );
setEffAlphaKey( spep_2 + 68 -1, shot, 255 );
setEffAlphaKey( spep_2 + 68, shot, 0 );

-- ** 音 ** --
--連続気弾２
SE009 = playSeVer2( spep_2 + 20, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE009, 116 );
setPitch( spep_2 + 20, SE009, -200 );
setTimeStretch( SE009, 0.87, 30, 4 );
SE010 = playSeVer2( spep_2 + 20, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE010, 108 );
SE011 = playSeVer2( spep_2 + 20, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE011, 133 );

--連続気弾３
SE012 = playSeVer2( spep_2 + 44, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE012, 127 );
SE013 = playSeVer2( spep_2 + 44, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE013, 129 );
SE014 = playSeVer2( spep_2 + 44, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE014, 116 );

--気弾飛んでいく
SE015 = playSeVer2( spep_2 + 54, 1202, "",spep_2 +68 + 36, 0, 16, 0.6);
setSeVolumeByWorkId( spep_2 + 54, SE015, 162 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 68 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_2 + 62 -1, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 68;


------------------------------------------------------
-- 気弾ヒット(66F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_3 + 0, SP_04, 66 -1, 0x100, -1, 0, 0, 0 );  --気弾ヒット  ef_004
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66 -1, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 66 -1, hit_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 66 -1, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 66 -2, hit_f, 255 );
setEffAlphaKey( spep_3 + 66 -1, hit_f, 0 );

hit_b = entryEffectLife( spep_3 + 0, SP_05, 66 -1, 0x80, -1, 0, 0, 0 );  --気弾ヒット時の背景   ef_013
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66 -1, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 66 -1, hit_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 66 -1, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 66 -2, hit_b, 255 );
setEffAlphaKey( spep_3 + 66 -1, hit_b, 0 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 66 -1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66 -1, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 66 -1, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 66 -1, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 66 -2, shuchusen, 255 );
setEffAlphaKey( spep_3 + 66 -1, shuchusen, 0 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 68, 1, 0 );
changeAnime( spep_3 + 0, 1, 4 );

setMoveKey( spep_3 + 0, 1, -61.7, -20.5 , 0 );
setMoveKey( spep_3 + 1, 1, -67.8, -20.8 , 0 );
setMoveKey( spep_3 + 2, 1, -70.6, -20.9 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -73.7, -0.8 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -74.6, -42 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -75.4, -8.1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -75.3, -33.4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -75.2, -14.5 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -75.4, -32.3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -75.5, -17.2 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -75.5, -26.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -75.6, -17.2 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -75.6, -21.1 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -76.9, -4.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -76.1, -40 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -75.9, 4.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -75.9, -32.7 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -75.9, -4.4 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -76, -33.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -76, -8.2 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -76.1, -30.5 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -76.1, -12.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -76.2, -30.3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -77.4, 3.9 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -76.6, -38.6 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -76.4, -4.4 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -76.4, -33.5 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -76.5, -10.1 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -76.5, -32 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -76.6, -14.6 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -76.6, -28.4 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -76.7, -16.6 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -76.8, -26.9 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -76.8, -16.4 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -76.9, -21.9 , 0 );
--setMoveKey( spep_3 -3 + 69, 1, 76.9, -21.9 , 0 );

setScaleKey( spep_3 + 0, 1, 1.9, 1.9 );
setScaleKey( spep_3 + 1, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 2, 1, 1.54, 1.54 );
setScaleKey( spep_3 -3 + 6, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 8, 1, 1.43, 1.43 );
setScaleKey( spep_3 -3 + 10, 1, 1.36, 1.36 );
setScaleKey( spep_3 -3 + 12, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 14, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 16, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 22, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 24, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 26, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 28, 1, 1.36, 1.36 );
setScaleKey( spep_3 -3 + 30, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 32, 1, 1.32, 1.32 );
setScaleKey( spep_3 -3 + 40, 1, 1.32, 1.32 );
setScaleKey( spep_3 -3 + 42, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 44, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 46, 1, 1.44, 1.44 );
setScaleKey( spep_3 -3 + 48, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 50, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 52, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 56, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 58, 1, 1.29, 1.29 );
setScaleKey( spep_3 -3 + 64, 1, 1.29, 1.29 );
setScaleKey( spep_3 -3 + 66, 1, 1.28, 1.28 );
setScaleKey( spep_3 -3 + 68, 1, 1.28, 1.28 );
--setScaleKey( spep_3 -3 + 69, 1, 1.28, 1.28 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 68, 1, 0 );
--setRotateKey( spep_3 -3 + 69, 1, 0 );

-- ** 音 ** --
--気弾飛んでいく
SE017 = playSeVer2( spep_3 + 2, 1202, "",spep_3 + 50, 0, 16, 0.6);
setSeVolumeByWorkId( spep_3 + 2, SE017, 170 );
SE019 = playSeVer2( spep_3 + 22, 1202, "",spep_3 +62 + 8 -1, 0, 14, 0.6);
setSeVolumeByWorkId( spep_3 + 22, SE019, 182 );

--連続爆発
SE016 = playSeVer2( spep_3 + 0, 1023, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 14, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 14, SE018, 70 );
SE020 = playSeVer2( spep_3 + 30, 1024, "", 0, 0, 0, -1);

--悟飯向かっていく
SE021 = playSeVer2( spep_3 + 62, 9, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_3 + 62, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_3 + 62, SE022, 80 );
setPitch( spep_3 + 62 + 0, SE022, -600 );
setTimeStretch( SE022, 0.6, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 66 -1 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_3 + 58 -1, 8 -1, 1, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 66 -1;


------------------------------------------------------
-- 煙の中を突っ込む(86F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_4 + 0, SP_06, 86, 0x100, -1, 0, 0, 0 );  --煙の中を突っ込む    ef_005
setEffMoveKey( spep_4 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, attack_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 86, attack_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, attack_f, 0 );
setEffRotateKey( spep_4 + 86, attack_f, 0 );
setEffAlphaKey( spep_4 + 0, attack_f, 255 );
setEffAlphaKey( spep_4 + 86 -1, attack_f, 255 );
setEffAlphaKey( spep_4 + 86, attack_f, 0 );

attack_b = entryEffectLife( spep_4 + 0, SP_07, 86, 0x80, -1, 0, 0, 0 );  --煙に突っ込む際の背景   ef_014
setEffMoveKey( spep_4 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, attack_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 86, attack_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, attack_b, 0 );
setEffRotateKey( spep_4 + 86, attack_b, 0 );
setEffAlphaKey( spep_4 + 0, attack_b, 255 );
setEffAlphaKey( spep_4 + 86 -1, attack_b, 255 );
setEffAlphaKey( spep_4 + 86, attack_b, 0 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_4 -3 + 42, 1, 1 );
setDisp( spep_4 -3 + 89, 1, 0 );
changeAnime( spep_4 -3 + 42, 1, 6 );
changeAnime( spep_4 -3 + 74, 1, 8 );

setMoveKey( spep_4 -3 + 42, 1, -372, 2.2 , 0 );
setMoveKey( spep_4 -3 + 43, 1, -372, 2.2 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -304.1, -3 , 0 );
setMoveKey( spep_4 -3 + 45, 1, -304.1, -3 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -235.4, 2 , 0 );
setMoveKey( spep_4 -3 + 47, 1, -235.4, 2 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -166, -3 , 0 );
setMoveKey( spep_4 -3 + 49, 1, -166, -3 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -95.3, 1.8 , 0 );
setMoveKey( spep_4 -3 + 51, 1, -95.3, 1.8 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -23.4, -2.4 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -23.4, -2.4 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -24.1, 9.9 , 0 );
setMoveKey( spep_4 -3 + 55, 1, -24.1, 9.9 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -95.3, -24 , 0 );
setMoveKey( spep_4 -3 + 57, 1, -95.3, -24 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 58.3, 28.1 , 0 );
setMoveKey( spep_4 -3 + 59, 1, 58.3, 28.1 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -87, -30.9 , 0 );
setMoveKey( spep_4 -3 + 61, 1, -87, -30.9 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 28.3, 7.3 , 0 );
setMoveKey( spep_4 -3 + 63, 1, 28.3, 7.3 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -17, -24.5 , 0 );
setMoveKey( spep_4 -3 + 65, 1, -17, -24.5 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -99.6, 19.5 , 0 );
setMoveKey( spep_4 -3 + 67, 1, -99.6, 19.5 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -46.4, -21 , 0 );
setMoveKey( spep_4 -3 + 69, 1, -46.4, -21 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -85.9, -1.2 , 0 );
setMoveKey( spep_4 -3 + 71, 1, -85.9, -1.2 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -60.8, -16.2 , 0 );
setMoveKey( spep_4 -3 + 73, 1, -60.8, -16.2 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -117.1, -10.6 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -152.9, -18.6 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -278.1, -14.4 , 0 );
setMoveKey( spep_4 -3 + 80, 1, -482.7, -20.3 , 0 );
setMoveKey( spep_4 -3 + 82, 1, -674.6, -20.2 , 0 );
setMoveKey( spep_4 -3 + 84, 1, -801.6, -24.8 , 0 );
setMoveKey( spep_4 -3 + 86, 1, -873.2, -23.6 , 0 );
setMoveKey( spep_4 -3 + 88, 1, -907.6, -26.3 , 0 );
setMoveKey( spep_4 -3 + 89, 1, -907.6, -26.3 , 0 );

setScaleKey( spep_4 -3 + 42, 1, 1.771, 1.738 );
setScaleKey( spep_4 -3 + 43, 1, 1.771, 1.738 );
setScaleKey( spep_4 -3 + 44, 1, 1.782, 1.749 );
setScaleKey( spep_4 -3 + 45, 1, 1.782, 1.749 );
setScaleKey( spep_4 -3 + 46, 1, 1.793, 1.76 );
setScaleKey( spep_4 -3 + 47, 1, 1.793, 1.76 );
setScaleKey( spep_4 -3 + 48, 1, 1.815, 1.782 );
setScaleKey( spep_4 -3 + 49, 1, 1.815, 1.782 );
setScaleKey( spep_4 -3 + 50, 1, 1.826, 1.793 );
setScaleKey( spep_4 -3 + 51, 1, 1.826, 1.793 );
setScaleKey( spep_4 -3 + 52, 1, 1.848, 1.826 );
setScaleKey( spep_4 -3 + 53, 1, 1.848, 1.826 );
setScaleKey( spep_4 -3 + 54, 1, 1.881, 1.848 );
setScaleKey( spep_4 -3 + 55, 1, 1.881, 1.848 );
setScaleKey( spep_4 -3 + 56, 1, 1.914, 1.881 );
setScaleKey( spep_4 -3 + 57, 1, 1.914, 1.881 );
setScaleKey( spep_4 -3 + 58, 1, 1.958, 1.925 );
setScaleKey( spep_4 -3 + 59, 1, 1.958, 1.925 );
setScaleKey( spep_4 -3 + 60, 1, 2.024, 1.991 );
setScaleKey( spep_4 -3 + 61, 1, 2.024, 1.991 );
setScaleKey( spep_4 -3 + 62, 1, 2.112, 2.079 );
setScaleKey( spep_4 -3 + 63, 1, 2.112, 2.079 );
setScaleKey( spep_4 -3 + 64, 1, 2.42, 2.376 );
setScaleKey( spep_4 -3 + 65, 1, 2.42, 2.376 );
setScaleKey( spep_4 -3 + 66, 1, 2.431, 2.387 );
setScaleKey( spep_4 -3 + 67, 1, 2.431, 2.387 );
setScaleKey( spep_4 -3 + 68, 1, 2.431, 2.398 );
setScaleKey( spep_4 -3 + 69, 1, 2.431, 2.398 );
setScaleKey( spep_4 -3 + 70, 1, 2.453, 2.409 );
setScaleKey( spep_4 -3 + 71, 1, 2.453, 2.409 );
setScaleKey( spep_4 -3 + 72, 1, 2.464, 2.42 );
setScaleKey( spep_4 -3 + 73, 1, 2.464, 2.42 );
setScaleKey( spep_4 -3 + 74, 1, 2.7, 2.652 );
setScaleKey( spep_4 -3 + 76, 1, 2.724, 2.676 );
setScaleKey( spep_4 -3 + 78, 1, 2.736, 2.688 );
setScaleKey( spep_4 -3 + 80, 1, 2.76, 2.712 );
setScaleKey( spep_4 -3 + 82, 1, 2.784, 2.736 );
setScaleKey( spep_4 -3 + 84, 1, 2.808, 2.76 );
setScaleKey( spep_4 -3 + 86, 1, 2.844, 2.796 );
setScaleKey( spep_4 -3 + 88, 1, 2.904, 2.856 );
setScaleKey( spep_4 -3 + 89, 1, 2.904, 2.856 );

setRotateKey( spep_4 -3 + 42, 1, 28.9 );
setRotateKey( spep_4 -3 + 43, 1, 28.9 );
setRotateKey( spep_4 -3 + 44, 1, 31.5 );
setRotateKey( spep_4 -3 + 45, 1, 31.5 );
setRotateKey( spep_4 -3 + 46, 1, 34.1 );
setRotateKey( spep_4 -3 + 47, 1, 34.1 );
setRotateKey( spep_4 -3 + 48, 1, 36.8 );
setRotateKey( spep_4 -3 + 49, 1, 36.8 );
setRotateKey( spep_4 -3 + 50, 1, 39.4 );
setRotateKey( spep_4 -3 + 51, 1, 39.4 );
setRotateKey( spep_4 -3 + 52, 1, 42.1 );
setRotateKey( spep_4 -3 + 53, 1, 42.1 );
setRotateKey( spep_4 -3 + 54, 1, 42.9 );
setRotateKey( spep_4 -3 + 55, 1, 42.9 );
setRotateKey( spep_4 -3 + 56, 1, 43.7 );
setRotateKey( spep_4 -3 + 57, 1, 43.7 );
setRotateKey( spep_4 -3 + 58, 1, 44.5 );
setRotateKey( spep_4 -3 + 59, 1, 44.5 );
setRotateKey( spep_4 -3 + 60, 1, 45 );
setRotateKey( spep_4 -3 + 61, 1, 45 );
setRotateKey( spep_4 -3 + 62, 1, 45.4 );
setRotateKey( spep_4 -3 + 63, 1, 45.4 );
setRotateKey( spep_4 -3 + 64, 1, 45.9 );
setRotateKey( spep_4 -3 + 65, 1, 45.9 );
setRotateKey( spep_4 -3 + 66, 1, 46.4 );
setRotateKey( spep_4 -3 + 67, 1, 46.4 );
setRotateKey( spep_4 -3 + 68, 1, 46.8 );
setRotateKey( spep_4 -3 + 69, 1, 46.8 );
setRotateKey( spep_4 -3 + 70, 1, 47.3 );
setRotateKey( spep_4 -3 + 71, 1, 47.3 );
setRotateKey( spep_4 -3 + 72, 1, 47.7 );
setRotateKey( spep_4 -3 + 73, 1, 47.7 );
setRotateKey( spep_4 -3 + 74, 1, -3 );
setRotateKey( spep_4 -3 + 76, 1, -3.6 );
setRotateKey( spep_4 -3 + 78, 1, -5.8 );
setRotateKey( spep_4 -3 + 80, 1, -9.4 );
setRotateKey( spep_4 -3 + 82, 1, -12.6 );
setRotateKey( spep_4 -3 + 84, 1, -14.7 );
setRotateKey( spep_4 -3 + 86, 1, -15.7 );
setRotateKey( spep_4 -3 + 88, 1, -16 );
setRotateKey( spep_4 -3 + 89, 1, -16 );

-- ** 音 ** --
--タックル
SE023 = playSeVer2( spep_4 + 50, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 50, SE023, 82 );
SE024 = playSeVer2( spep_4 + 50, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 50, SE024, 90 );
SE025 = playSeVer2( spep_4 + 52, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 52, SE025, 83 );

--敵飛んでいく
SE026 = playSeVer2( spep_4 + 82, 1044, "",spep_4 +86 +46 + 58, 0, 54, -1);
SE027 = playSeVer2( spep_4 + 82, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 82, SE027, 78 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 0, 6 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80 -1, 6, 1, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;


------------------------------------------------------
-- 敵に沿う煙(46F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
goaway_f = entryEffectLife( spep_5 + 0, SP_08, 46 -1, 0x100, -1, 0, 0, 0 );  --敵に沿う煙   ef_006
setEffMoveKey( spep_5 + 0, goaway_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46 -1, goaway_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, goaway_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 46 -1, goaway_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, goaway_f, 0 );
setEffRotateKey( spep_5 + 46 -1, goaway_f, 0 );
setEffAlphaKey( spep_5 + 0, goaway_f, 255 );
setEffAlphaKey( spep_5 + 46 -2, goaway_f, 255 );
setEffAlphaKey( spep_5 + 46 -1, goaway_f, 0 );

goaway_b = entryEffectLife( spep_5 + 0, SP_09, 46 -1, 0x80, -1, 0, 0, 0 );  --敵に沿う煙の背景 ef_015
setEffMoveKey( spep_5 + 0, goaway_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46 -1, goaway_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, goaway_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 46 -1, goaway_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, goaway_b, 0 );
setEffRotateKey( spep_5 + 46 -1, goaway_b, 0 );
setEffAlphaKey( spep_5 + 0, goaway_b, 255 );
setEffAlphaKey( spep_5 + 46 -2, goaway_b, 255 );
setEffAlphaKey( spep_5 + 46 -1, goaway_b, 0 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_5 -3 + 4, 1, 1 );
setDisp( spep_5 -3 + 49 -1, 1, 0 );
changeAnime( spep_5 -3 + 4, 1, 5 );

setMoveKey( spep_5 -3 + 4, 1, 335.1, -295 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 128.3, -202.5 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 52.8, -155 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -0.6, -128.7 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -42.3, -115.8 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -76.4, -90.1 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -105.1, -83.2 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -129.6, -62.7 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -150.6, -59.4 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -168.8, -43.9 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -184.6, -42.8 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -198.4, -28.9 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -210.2, -28.8 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -220.5, -18.5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -229.2, -18.4 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -236.6, -9.5 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -242.8, -12.2 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -247.8, -4.6 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -251.8, -6.9 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -254.8, -1.8 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -256.9, -3.9 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -258.1, -0.3 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -258.5, -2.8 , 0 );
--setMoveKey( spep_5 -3 + 49, 1, 258.5, -2.8 , 0 );

setScaleKey( spep_5 -3 + 4, 1, 2.02, 2.02 );
setScaleKey( spep_5 -3 + 6, 1, 1.43, 1.43 );
setScaleKey( spep_5 -3 + 8, 1, 1.22, 1.22 );
setScaleKey( spep_5 -3 + 10, 1, 1.07, 1.07 );
setScaleKey( spep_5 -3 + 12, 1, 0.95, 0.95 );
setScaleKey( spep_5 -3 + 14, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 16, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 18, 1, 0.7, 0.7 );
setScaleKey( spep_5 -3 + 20, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 22, 1, 0.59, 0.59 );
setScaleKey( spep_5 -3 + 24, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 26, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 28, 1, 0.48, 0.48 );
setScaleKey( spep_5 -3 + 30, 1, 0.45, 0.45 );
setScaleKey( spep_5 -3 + 32, 1, 0.42, 0.42 );
setScaleKey( spep_5 -3 + 34, 1, 0.4, 0.4 );
setScaleKey( spep_5 -3 + 36, 1, 0.38, 0.38 );
setScaleKey( spep_5 -3 + 38, 1, 0.37, 0.37 );
setScaleKey( spep_5 -3 + 40, 1, 0.36, 0.36 );
setScaleKey( spep_5 -3 + 42, 1, 0.35, 0.35 );
setScaleKey( spep_5 -3 + 44, 1, 0.34, 0.34 );
setScaleKey( spep_5 -3 + 48, 1, 0.34, 0.34 );

setRotateKey( spep_5 -3 + 4, 1, -21 );
setRotateKey( spep_5 -3 + 48, 1, -21 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 46 -1 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 46 -1;


------------------------------------------------------
-- ジャンプして気タメ(136F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
jump = entryEffectLife( spep_6 + 0, SP_10, 136, 0x100, -1, 0, 0, 0 );  --ジャンプして気タメ  ef_007
setEffMoveKey( spep_6 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_6 + 136, jump, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, jump, -1.0, 1.0 );
setEffScaleKey( spep_6 + 136, jump, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, jump, 0 );
setEffRotateKey( spep_6 + 136, jump, 0 );
setEffAlphaKey( spep_6 + 0, jump, 255 );
setEffAlphaKey( spep_6 + 136 -1, jump, 255 );
setEffAlphaKey( spep_6 + 136, jump, 0 );

-- ** 音 ** --
--飛び上がる
SE029 = playSeVer2( spep_6 + 12, 1207, "", 0, 0, 0, 0.6);
SE030 = playSeVer2( spep_6 + 18, 44, "", 0, 0, 0, -1);

--気弾溜めはじめ
SE031 = playSeVer2( spep_6 + 74, 1122, "",spep_6 +136 + 52, 0, 34, -1);
SE032 = playSeVer2( spep_6 + 74, 1210, "",spep_6 +136 +126 + 16, 0, 16, -1);
setBandpassFilter  ( spep_6 + 74, SE032, 24, 565 );
SE033 = playSeVer2( spep_6 + 74, 1203, "",spep_6 +136 +126 + 16, 0, 16, -1);
SE034 = playSeVer2( spep_6 + 82, 1296, "",spep_6 +136 +126 + 16, 40, 16, -1);
setStartTimeMs( SE034,  117 );

--気弾溜めアップ
SE028 = playSeVer2( spep_6 + 132, 1174, "",spep_6 +136 +126 + 16, 12, 16, 0.6);
setSeVolumeByWorkId( spep_6 + 132, SE028, 447 );
setStartTimeMs( SE028,  2833 );
SE035 = playSeVer2( spep_6 + 134, 1147, "",spep_6 +136 +126 + 16, 0, 16, -1);
setSeVolumeByWorkId( spep_6 + 134, SE035, 78 );
SE036 = playSeVer2( spep_6 + 134, 1264, "",spep_6 +136 +126 + 16, 0, 16, -1);
setSeVolumeByWorkId( spep_6 + 134, SE036, 89 );
setPitch( spep_6 + 134, SE036, -400 );
setTimeStretch( SE036, 0.73, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 0, 6 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 72 -1, 0, 0, 8 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 128 -1, 8 +1, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 136;


------------------------------------------------------
-- 気タメ　バストアップ(126F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_7 + 0, SP_11, 126 -1, 0x100, -1, 0, 0, 0 );  --気タメ　バストアップ ef_008
setEffMoveKey( spep_7 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_7 + 126 -1, tame, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_7 + 126 -1, tame, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, tame, 0 );
setEffRotateKey( spep_7 + 126 -1, tame, 0 );
setEffAlphaKey( spep_7 + 0, tame, 255 );
setEffAlphaKey( spep_7 + 126 -2, tame, 255 );
setEffAlphaKey( spep_7 + 126 -1, tame, 0 );

spep_x = spep_7 + 40;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 85, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 85, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 85, 515.5 , 0 );
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
--SE037 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 126 -1 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
--entryFade( spep_7 + 0, 0, 0, 6 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 126 -1;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_8 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_8 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_8 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_8 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_8 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_8 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_8 + 0, shuchusen, 0 );
setEffRotateKey( spep_8 + 90, shuchusen, 0 );
setEffAlphaKey( spep_8 + 0, shuchusen, 255 );
setEffAlphaKey( spep_8 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_8 + 0, SE_05 );

--顔アップ
SE039 = playSeVer2( spep_8 + 92, 1265, "",spep_8 +94 +56 + 40, 10, 26, -1);
setStartTimeMs( SE039,  367 );
SE040 = playSeVer2( spep_8 + 86, 1258, "",spep_8 +94 +56 + 40, 0, 26, -1);
setSeVolumeByWorkId( spep_8 + 86, SE040, 59 );

-- ** 白背景 ** --
entryFadeBg( spep_8 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_9 = spep_8 + 94;


------------------------------------------------------
-- 気タメ　顔のアップ(56F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
faceup = entryEffectLife( spep_9 + 0, SP_12, 56, 0x100, -1, 0, 0, 0 );  --気タメ　顔のアップ    ef_009
setEffMoveKey( spep_9 + 0, faceup, 0, 0 , 0 );
setEffMoveKey( spep_9 + 56, faceup, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, faceup, -1.0, 1.0 );
setEffScaleKey( spep_9 + 56, faceup, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, faceup, 0 );
setEffRotateKey( spep_9 + 56, faceup, 0 );
setEffAlphaKey( spep_9 + 0, faceup, 255 );
setEffAlphaKey( spep_9 + 56 -1, faceup, 255 );
setEffAlphaKey( spep_9 + 56, faceup, 0 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
--entryFade( spep_9 + 0, 0, 0, 6 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_10 = spep_9 + 56;


------------------------------------------------------
-- 攻撃放つ(76F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
hanathu = entryEffectLife( spep_10 + 0, SP_13, 76, 0x100, -1, 0, 0, 0 );  --攻撃放つ    ef_010
setEffMoveKey( spep_10 + 0, hanathu, 0, 0 , 0 );
setEffMoveKey( spep_10 + 76, hanathu, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, hanathu, -1.0, 1.0 );
setEffScaleKey( spep_10 + 76, hanathu, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, hanathu, 0 );
setEffRotateKey( spep_10 + 76, hanathu, 0 );
setEffAlphaKey( spep_10 + 0, hanathu, 255 );
setEffAlphaKey( spep_10 + 76 -1, hanathu, 255 );
setEffAlphaKey( spep_10 + 76, hanathu, 0 );

-- ** 音 ** --
--気弾発射
SE041 = playSeVer2( spep_10 + 8, 1145, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_10 + 8, 1193, "",spep_10 +76 +46 + 32, 0, 24, 0.6);
SE043 = playSeVer2( spep_10 + 8, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 8, SE043, 63 );

--気弾飛んでいく
SE044 = playSeVer2( spep_10 + 74, 1021, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_10 + 68 -1, 8 +1, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_11 = spep_10 + 76;


------------------------------------------------------
-- 敵に向かっていくビーム(46F)
------------------------------------------------------
--spep_11 = 0;

-- ** エフェクト等 ** --
beam = entryEffectLife( spep_11 + 0, SP_14, 46, 0x100, -1, 0, 0, 0 );  --敵に向かっていくビーム    ef_011
setEffMoveKey( spep_11 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_11 + 46, beam, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_11 + 46, beam, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, beam, 0 );
setEffRotateKey( spep_11 + 46, beam, 0 );
setEffAlphaKey( spep_11 + 0, beam, 255 );
setEffAlphaKey( spep_11 + 46 -1, beam, 255 );
setEffAlphaKey( spep_11 + 46, beam, 0 );

-- ** 音 ** --
--着弾
SE045 = playSeVer2( spep_11 + 42, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
--entryFade( spep_11 + 0, 0, 0, 6 -1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_11 + 38 -1, 8 +1, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_12 = spep_11 + 46;


------------------------------------------------------
-- 爆発(156F)
------------------------------------------------------
--spep_12 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_12 + 0, SP_15, 0x100, -1, 0, 0, 0 );  --爆発   ef_012
setEffMoveKey( spep_12 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_12 + 156, finish, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_12 + 156, finish, -1.0, 1.0 );
setEffRotateKey( spep_12 + 0, finish, 0 );
setEffRotateKey( spep_12 + 156, finish, 0 );
setEffAlphaKey( spep_12 + 0, finish, 255 );
setEffAlphaKey( spep_12 + 156, finish, 255 );

-- ** 音 ** --
--着弾
SE046 = playSeVer2( spep_12 + 28, 1068, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_12 + 28, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 28, SE047, 78 );
SE048 = playSeVer2( spep_12 + 28, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 28, SE048, 91 );

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 156 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --

-- ** ダメージ表示 ** --
dealDamage( spep_12 + 46 );
endPhase( spep_12 + 146 );

end