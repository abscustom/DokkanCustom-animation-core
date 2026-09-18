--4023051:LR_孫悟空_必殺技：気合砲
--sp_effect_a7_00043
--sp2251

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
SP_01 = 158130; --対峙 ef_001_front
SP_02 = 158132; --対峙 ef_001_back
SP_03 = 158133; --地面をける ef_002
SP_04 = 158135; --敵に近づきながらパンチ振りかぶる ef_003
SP_05 = 158137; --パンチヒット　→　土煙 ef_004_front
SP_06 = 158139; --パンチヒット　→　土煙 ef_004_back
SP_07 = 158140; --暗闇の中格闘 ef_005_front
SP_08 = 158142; --暗闇の中格闘 ef_005_back
SP_09 = 158144; --敵が上空に吹っ飛ぶ ef_006_front
SP_10 = 158145; --敵が上空に吹っ飛ぶ ef_006_back
SP_11 = 158146; --悟空が上空へ先回りして待ち構える ef_007_front
SP_12 = 158148; --悟空が上空へ先回りして待ち構える ef_007_back
SP_13 = 158150; --悟空しゃべる ef_008
SP_14 = 158151; --気合砲 ef_009
SP_15 = 158153; --気合砲が敵にあたり敵が落下する ef_010_front
SP_16 = 158154; --気合砲が敵にあたり敵が落下する ef_010_back
SP_17 = 158155; --敵が海に落下 ef_011_front
SP_18 = 158156; --敵が海に落下 ef_011_back

--敵側
SP_01r = 158131; --対峙 ef_001_front_r
SP_03r = 158134; --地面をける ef_002_r
SP_04r = 158136; --敵に近づきながらパンチ振りかぶる ef_003_r
SP_05r = 158138; --パンチヒット　→　土煙 ef_004_front_r
SP_07r = 158141; --暗闇の中格闘 ef_005_front_r
SP_08r = 158143; --暗闇の中格闘 ef_005_back_r
SP_11r = 158147; --悟空が上空へ先回りして待ち構える ef_007_front_r
SP_12r = 158149; --悟空が上空へ先回りして待ち構える ef_007_back_r
SP_14r = 158152; --気合砲 ef_009_r

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
-- 対峙(56F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 56, 0x100, -1, 0, 0, 0 );  -- 対峙(ef_001_front)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 56, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 56 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 56, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 56, 0x80, -1, 0, 0, 0 );  -- 対峙(ef_001_back)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 56, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 56 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 56, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 59, 1, 0 );
changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 229.7, 7.9 , 0 );
setMoveKey( spep_0 + 1, 1, 227.6, 7.9 , 0 );
setMoveKey( spep_0 + 2, 1, 225.6, 7.9 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 223.5, 7.9 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 223.5, 7.9 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 221.4, 7.9 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 221.4, 7.9 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 219.3, 7.9 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 217.3, 7.9 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 215.2, 7.9 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 213.1, 7.9 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 211, 7.9 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 209, 7.9 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 206.9, 7.9 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 204.8, 7.9 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 202.8, 7.9 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 200.7, 7.9 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 198.6, 7.9 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 196.5, 7.9 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 194.5, 7.9 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 192.4, 7.9 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 190.3, 7.9 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 188.2, 7.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 186.2, 7.9 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 184.1, 7.9 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 182, 7.9 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 180, 7.9 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 177.9, 7.9 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 175.8, 7.9 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 173.7, 7.9 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 171.7, 7.9 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 169.6, 7.9 , 0 );
setMoveKey( spep_0 -3 + 59, 1, 169.6, 7.9 , 0 );

setScaleKey( spep_0 + 0, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 1, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 2, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 3, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 4, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 5, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 6, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 59, 1, 0.58, 0.58 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 59, 1, 0 );

setAlphaKey( spep_0 + 0, 1, 255 );
setAlphaKey( spep_0 + 1, 1, 255 );
setAlphaKey( spep_0 + 2, 1, 255 );
setAlphaKey( spep_0 + 3, 1, 255 );
setAlphaKey( spep_0 + 4, 1, 255 );
setAlphaKey( spep_0 + 5, 1, 255 );
setAlphaKey( spep_0 + 6, 1, 255 );
setAlphaKey( spep_0 -3 + 59, 1, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "",spep_0 +56 +36 +92 + 70, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 61 );
setPitch( spep_0 + 0, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );
SE003 = playSeVer2( spep_0 + 2, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 85 );
setPitch( spep_0 + 2, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;

------------------------------------------------------
-- 地面をける(36F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
dash = entryEffectLife( spep_1 + 0, SP_03, 36, 0x100, -1, 0, 0, 0 );  -- 地面をける(ef_002)
setEffMoveKey( spep_1 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_1 + 36, dash, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_1 + 36, dash, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash, 0 );
setEffRotateKey( spep_1 + 36, dash, 0 );
setEffAlphaKey( spep_1 + 0, dash, 255 );
setEffAlphaKey( spep_1 + 36 -1, dash, 255 );
setEffAlphaKey( spep_1 + 36, dash, 0 );

-- ** 音 ** --
--飛び上がる
SE004 = playSeVer2( spep_1 + 6, 1000, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 6, 1117, "",spep_1 +34, 0, 12, -1);

--地面蹴る
SE006 = playSeVer2( spep_1 + 22, 1033, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 22, 1011, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 36;


------------------------------------------------------
-- 敵に近づきながらパンチ振りかぶる(92F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
punch = entryEffectLife( spep_2 + 0, SP_04, 92, 0x100, -1, 0, 0, 0 );  -- 敵に近づきながらパンチ振りかぶる(ef_003)
setEffMoveKey( spep_2 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_2 + 92, punch, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch, 1.0, 1.0 );
setEffScaleKey( spep_2 + 92, punch, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch, 0 );
setEffRotateKey( spep_2 + 92, punch, 0 );
setEffAlphaKey( spep_2 + 0, punch, 255 );
setEffAlphaKey( spep_2 + 92 -1, punch, 255 );
setEffAlphaKey( spep_2 + 92, punch, 0 );

-- ** 音 ** --
--悟空迫ってくる
SE008 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE009, 51 );
setTimeStretch( SE009, 1.25, 30, 4 );
SE010 = playSeVer2( spep_2 + 0, 1183, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 92 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 24 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);

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
--振りかぶる
SE011 = playSeVer2( spep_2 + 44, 1116, "",spep_2 + 82, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 44, SE011, 148 );
SE012 = playSeVer2( spep_2 + 52, 1003, "", 0, 0, 0, -1);

--パンチ
SE013 = playSeVer2( spep_2 + 80, 1189, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 88, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE015, 77 );
SE016 = playSeVer2( spep_2 + 88, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE016, 77 );
SE017 = playSeVer2( spep_2 + 88, 1188, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 92;

------------------------------------------------------
-- パンチヒット(76F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
phit_f = entryEffectLife( spep_3 + 0, SP_05, 76, 0x100, -1, 0, 0, 0 );  -- パンチヒット → 土煙(ef_004_front)
setEffMoveKey( spep_3 + 0, phit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, phit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, phit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, phit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, phit_f, 0 );
setEffRotateKey( spep_3 + 76, phit_f, 0 );
setEffAlphaKey( spep_3 + 0, phit_f, 255 );
setEffAlphaKey( spep_3 + 76 -1, phit_f, 255 );
setEffAlphaKey( spep_3 + 76, phit_f, 0 );

phit_b = entryEffectLife( spep_3 + 0, SP_06, 76, 0x80, -1, 0, 0, 0 );  -- パンチヒット → 土煙(ef_004_back)
setEffMoveKey( spep_3 + 0, phit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, phit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, phit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, phit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, phit_b, 0 );
setEffRotateKey( spep_3 + 76, phit_b, 0 );
setEffAlphaKey( spep_3 + 0, phit_b, 255 );
setEffAlphaKey( spep_3 + 76 -1, phit_b, 255 );
setEffAlphaKey( spep_3 + 76, phit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 79, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3 + 0, 1, 11.8, -9.1 , 0 );
setMoveKey( spep_3 + 1, 1, 12.3, -5 , 0 );
setMoveKey( spep_3 + 2, 1, 10.5, -14.8 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 15.4, -17.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 11.5, -11 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 12.8, -9.8 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 14.1, -8.7 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 15.3, -7.6 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 15.9, -7.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 16.4, -7.1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 16.9, -6.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 17.4, -6.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 17.9, -6.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 18.4, -6.3 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 18.8, -6.1 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 19.4, -5.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 19.8, -5.7 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 20.3, -5.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 20.8, -5.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 21.3, -5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 21.8, -4.8 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 22.2, -4.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 22.8, -4.4 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 23.2, -4.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 23.7, -3.9 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 24.1, -3.7 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 24.6, -3.5 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 25.1, -3.3 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 25.5, -3.1 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 26, -2.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 26.5, -2.6 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 26.9, -2.4 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 27.4, -2.2 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 27.9, -2 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 28.3, -1.8 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 28.7, -1.5 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 29.1, -1.3 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 29.7, -1.1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 30.1, -0.8 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 30.5, -0.6 , 0 );
setMoveKey( spep_3 -3 + 79, 1, 30.5, -0.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.53, 0.53 );
setScaleKey( spep_3 -3 + 6, 1, 0.53, 0.53 );
setScaleKey( spep_3 -3 + 8, 1, 0.52, 0.52 );
setScaleKey( spep_3 -3 + 22, 1, 0.52, 0.52 );
setScaleKey( spep_3 -3 + 24, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 40, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 42, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 56, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 58, 1, 0.49, 0.49 );
setScaleKey( spep_3 -3 + 72, 1, 0.49, 0.49 );
setScaleKey( spep_3 -3 + 74, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 79, 1, 0.48, 0.48 );

setRotateKey( spep_3 + 0, 1, 37.7 );
setRotateKey( spep_3 -3 + 79, 1, 37.7 );

setAlphaKey( spep_3 + 0, 1, 255 );
setAlphaKey( spep_3 -3 + 79, 1, 255 );

-- ** 音 ** --
--パンチ
SE014 = playSeVer2( spep_3 + 0, 1035, "",spep_3 + 72, 8, 44, -1);
setStartTimeMs( SE014,  100 );
setPitch( spep_3 + 0, SE014, -400 );
setTimeStretch( SE014, 0.73, 30, 4 );

--土煙あがる
SE018 = playSeVer2( spep_3 + 22, 1002, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;

------------------------------------------------------
-- 暗闇の中格闘(166F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
fight_f = entryEffectLife( spep_4 + 0, SP_07, 166, 0x100, -1, 0, 0, 0 );  -- 暗闇の中格闘(ef_005_front)
setEffMoveKey( spep_4 + 0, fight_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 166, fight_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, fight_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 166, fight_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fight_f, 0 );
setEffRotateKey( spep_4 + 166, fight_f, 0 );
setEffAlphaKey( spep_4 + 0, fight_f, 255 );
setEffAlphaKey( spep_4 + 166 -1, fight_f, 255 );
setEffAlphaKey( spep_4 + 166, fight_f, 0 );

fight_b = entryEffectLife( spep_4 + 0, SP_08, 166, 0x80, -1, 0, 0, 0 );  -- 暗闇の中格闘(ef_005_back)
setEffMoveKey( spep_4 + 0, fight_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 166, fight_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, fight_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 166, fight_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fight_b, 0 );
setEffRotateKey( spep_4 + 166, fight_b, 0 );
setEffAlphaKey( spep_4 + 0, fight_b, 255 );
setEffAlphaKey( spep_4 + 166 -1, fight_b, 255 );
setEffAlphaKey( spep_4 + 166, fight_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 14, 1, 1 );
setDisp( spep_4 -3 + 66, 1, 0 );
changeAnime( spep_4 -3 + 14, 1, 106 );

setMoveKey( spep_4 -3 + 14, 1, 203.6, -24.6 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 205.5, -19.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 207.5, -14.3 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 209.4, -9.1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 211.3, -3.9 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 213.3, 1.3 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 215.2, 6.5 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 217.1, 11.7 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 219.1, 16.8 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 221, 22 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 223, 27.2 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 224.9, 32.4 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 226.8, 37.6 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 228.8, 42.8 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 230.7, 47.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 232.7, 53.1 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 234.6, 58.3 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 236.5, 63.5 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 238.5, 68.7 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 240.4, 73.9 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 242.4, 79 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 244.3, 84.2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 246.2, 89.4 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 248.2, 94.6 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 250.1, 99.8 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 252, 104.9 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 252, 104.9 , 0 );

setScaleKey( spep_4 -3 + 14, 1, 2.9261, 2.9261 );
setScaleKey( spep_4 -3 + 16, 1, 2.915, 2.915 );
setScaleKey( spep_4 -3 + 18, 1, 2.904, 2.904 );
setScaleKey( spep_4 -3 + 20, 1, 2.8821, 2.8821 );
setScaleKey( spep_4 -3 + 22, 1, 2.871, 2.871 );
setScaleKey( spep_4 -3 + 24, 1, 2.86, 2.86 );
setScaleKey( spep_4 -3 + 26, 1, 2.849, 2.849 );
setScaleKey( spep_4 -3 + 28, 1, 2.827, 2.827 );
setScaleKey( spep_4 -3 + 30, 1, 2.816, 2.816 );
setScaleKey( spep_4 -3 + 32, 1, 2.805, 2.805 );
setScaleKey( spep_4 -3 + 34, 1, 2.7941, 2.7941 );
setScaleKey( spep_4 -3 + 36, 1, 2.783, 2.783 );
setScaleKey( spep_4 -3 + 38, 1, 2.761, 2.761 );
setScaleKey( spep_4 -3 + 40, 1, 2.75, 2.75 );
setScaleKey( spep_4 -3 + 42, 1, 2.739, 2.739 );
setScaleKey( spep_4 -3 + 44, 1, 2.728, 2.728 );
setScaleKey( spep_4 -3 + 46, 1, 2.706, 2.706 );
setScaleKey( spep_4 -3 + 48, 1, 2.695, 2.695 );
setScaleKey( spep_4 -3 + 50, 1, 2.684, 2.684 );
setScaleKey( spep_4 -3 + 52, 1, 2.6731, 2.6731 );
setScaleKey( spep_4 -3 + 54, 1, 2.651, 2.651 );
setScaleKey( spep_4 -3 + 56, 1, 2.64, 2.64 );
setScaleKey( spep_4 -3 + 58, 1, 2.629, 2.629 );
setScaleKey( spep_4 -3 + 60, 1, 2.618, 2.618 );
setScaleKey( spep_4 -3 + 62, 1, 2.607, 2.607 );
setScaleKey( spep_4 -3 + 64, 1, 2.585, 2.585 );
setScaleKey( spep_4 -3 + 66, 1, 2.585, 2.585 );

setRotateKey( spep_4 -3 + 14, 1, -31 );
setRotateKey( spep_4 -3 + 16, 1, -30.5 );
setRotateKey( spep_4 -3 + 18, 1, -30 );
setRotateKey( spep_4 -3 + 20, 1, -29.5 );
setRotateKey( spep_4 -3 + 22, 1, -28.9 );
setRotateKey( spep_4 -3 + 24, 1, -28.4 );
setRotateKey( spep_4 -3 + 26, 1, -27.9 );
setRotateKey( spep_4 -3 + 28, 1, -27.4 );
setRotateKey( spep_4 -3 + 30, 1, -26.9 );
setRotateKey( spep_4 -3 + 32, 1, -26.4 );
setRotateKey( spep_4 -3 + 34, 1, -25.8 );
setRotateKey( spep_4 -3 + 36, 1, -25.3 );
setRotateKey( spep_4 -3 + 38, 1, -24.8 );
setRotateKey( spep_4 -3 + 40, 1, -24.3 );
setRotateKey( spep_4 -3 + 42, 1, -23.8 );
setRotateKey( spep_4 -3 + 44, 1, -23.3 );
setRotateKey( spep_4 -3 + 46, 1, -22.7 );
setRotateKey( spep_4 -3 + 48, 1, -22.2 );
setRotateKey( spep_4 -3 + 50, 1, -21.7 );
setRotateKey( spep_4 -3 + 52, 1, -21.2 );
setRotateKey( spep_4 -3 + 54, 1, -20.7 );
setRotateKey( spep_4 -3 + 56, 1, -20.2 );
setRotateKey( spep_4 -3 + 58, 1, -19.6 );
setRotateKey( spep_4 -3 + 60, 1, -19.1 );
setRotateKey( spep_4 -3 + 62, 1, -18.6 );
setRotateKey( spep_4 -3 + 64, 1, -18.1 );
setRotateKey( spep_4 -3 + 66, 1, -18.1 );

setAlphaKey( spep_4 -3 + 14, 1, 102 );
setAlphaKey( spep_4 -3 + 66, 1, 102 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 72, 1, 1 );
setDisp( spep_4 -3 + 122, 1, 0 );
changeAnime( spep_4 -3 + 72, 1, 107 );

setMoveKey( spep_4 -3 + 72, 1, 85.9, -25.6 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 89.6, -22.9 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 93.3, -20.3 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 97, -17.6 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 100.6, -14.9 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 104.3, -12.2 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 108, -9.5 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 111.7, -6.8 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 115.4, -4.1 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 119, -1.4 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 122.7, 1.2 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 126.4, 3.9 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 130.1, 6.6 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 133.7, 9.3 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 137.4, 12 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 141.1, 14.7 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 144.8, 17.4 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 148.5, 20.1 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 152.1, 22.7 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 155.8, 25.4 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 159.5, 28.1 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 163.2, 30.8 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 166.8, 33.5 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 170.5, 36.2 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 174.2, 38.9 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 174.2, 38.9 , 0 );

setScaleKey( spep_4 -3 + 72, 1, 1.386, 1.386 );
setScaleKey( spep_4 -3 + 122, 1, 1.386, 1.386 );

setRotateKey( spep_4 -3 + 72, 1, -69 );
setRotateKey( spep_4 -3 + 74, 1, -67.9 );
setRotateKey( spep_4 -3 + 76, 1, -66.7 );
setRotateKey( spep_4 -3 + 78, 1, -65.6 );
setRotateKey( spep_4 -3 + 80, 1, -64.5 );
setRotateKey( spep_4 -3 + 82, 1, -63.4 );
setRotateKey( spep_4 -3 + 84, 1, -62.2 );
setRotateKey( spep_4 -3 + 86, 1, -61.1 );
setRotateKey( spep_4 -3 + 88, 1, -60 );
setRotateKey( spep_4 -3 + 90, 1, -58.9 );
setRotateKey( spep_4 -3 + 92, 1, -57.7 );
setRotateKey( spep_4 -3 + 94, 1, -56.6 );
setRotateKey( spep_4 -3 + 96, 1, -55.5 );
setRotateKey( spep_4 -3 + 98, 1, -54.4 );
setRotateKey( spep_4 -3 + 100, 1, -53.2 );
setRotateKey( spep_4 -3 + 102, 1, -52.1 );
setRotateKey( spep_4 -3 + 104, 1, -51 );
setRotateKey( spep_4 -3 + 106, 1, -49.9 );
setRotateKey( spep_4 -3 + 108, 1, -48.7 );
setRotateKey( spep_4 -3 + 110, 1, -47.6 );
setRotateKey( spep_4 -3 + 112, 1, -46.5 );
setRotateKey( spep_4 -3 + 114, 1, -45.4 );
setRotateKey( spep_4 -3 + 116, 1, -44.2 );
setRotateKey( spep_4 -3 + 118, 1, -43.1 );
setRotateKey( spep_4 -3 + 120, 1, -42 );
setRotateKey( spep_4 -3 + 122, 1, -42 );

setAlphaKey( spep_4 -3 + 72, 1, 102 );
setAlphaKey( spep_4 -3 + 122, 1, 102 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 128, 1, 1 );
setDisp( spep_4 -3 + 169, 1, 0 );
changeAnime( spep_4 -3 + 128, 1, 8 );

setMoveKey( spep_4 -3 + 128, 1, -176.1, 145.1 , 0 );
setMoveKey( spep_4 -3 + 130, 1, -179.8, 150.7 , 0 );
setMoveKey( spep_4 -3 + 132, 1, -183.5, 156.3 , 0 );
setMoveKey( spep_4 -3 + 134, 1, -187.2, 161.9 , 0 );
setMoveKey( spep_4 -3 + 136, 1, -190.9, 167.5 , 0 );
setMoveKey( spep_4 -3 + 138, 1, -194.7, 173.1 , 0 );
setMoveKey( spep_4 -3 + 140, 1, -198.4, 178.7 , 0 );
setMoveKey( spep_4 -3 + 142, 1, -202.1, 184.3 , 0 );
setMoveKey( spep_4 -3 + 144, 1, -205.8, 189.9 , 0 );
setMoveKey( spep_4 -3 + 146, 1, -209.6, 195.5 , 0 );
setMoveKey( spep_4 -3 + 148, 1, -213.3, 201.1 , 0 );
setMoveKey( spep_4 -3 + 150, 1, -217, 206.7 , 0 );
setMoveKey( spep_4 -3 + 152, 1, -220.7, 212.3 , 0 );
setMoveKey( spep_4 -3 + 154, 1, -224.5, 217.9 , 0 );
setMoveKey( spep_4 -3 + 156, 1, -228.2, 223.5 , 0 );
setMoveKey( spep_4 -3 + 158, 1, -231.9, 229.1 , 0 );
setMoveKey( spep_4 -3 + 160, 1, -235.6, 234.7 , 0 );
setMoveKey( spep_4 -3 + 162, 1, -239.4, 240.3 , 0 );
setMoveKey( spep_4 -3 + 164, 1, -243.1, 245.9 , 0 );
setMoveKey( spep_4 -3 + 166, 1, -246.8, 251.5 , 0 );
setMoveKey( spep_4 -3 + 168, 1, -250.6, 257.1 , 0 );
setMoveKey( spep_4 -3 + 169, 1, -250.6, 257.1 , 0 );

setScaleKey( spep_4 -3 + 128, 1, 3.0356, 3.0356 );
setScaleKey( spep_4 -3 + 168, 1, 3.0356, 3.0356 );
setScaleKey( spep_4 -3 + 169, 1, 3.0356, 3.0356 );

setRotateKey( spep_4 -3 + 128, 1, 0 );
setRotateKey( spep_4 -3 + 130, 1, 0.5 );
setRotateKey( spep_4 -3 + 132, 1, 0.9 );
setRotateKey( spep_4 -3 + 134, 1, 1.4 );
setRotateKey( spep_4 -3 + 136, 1, 1.9 );
setRotateKey( spep_4 -3 + 138, 1, 2.3 );
setRotateKey( spep_4 -3 + 140, 1, 2.8 );
setRotateKey( spep_4 -3 + 142, 1, 3.3 );
setRotateKey( spep_4 -3 + 144, 1, 3.7 );
setRotateKey( spep_4 -3 + 146, 1, 4.2 );
setRotateKey( spep_4 -3 + 148, 1, 4.7 );
setRotateKey( spep_4 -3 + 150, 1, 5.1 );
setRotateKey( spep_4 -3 + 152, 1, 5.6 );
setRotateKey( spep_4 -3 + 154, 1, 6.1 );
setRotateKey( spep_4 -3 + 156, 1, 6.5 );
setRotateKey( spep_4 -3 + 158, 1, 7 );
setRotateKey( spep_4 -3 + 160, 1, 7.5 );
setRotateKey( spep_4 -3 + 162, 1, 7.9 );
setRotateKey( spep_4 -3 + 164, 1, 8.4 );
setRotateKey( spep_4 -3 + 166, 1, 8.9 );
setRotateKey( spep_4 -3 + 168, 1, 9.3 );
setRotateKey( spep_4 -3 + 169, 1, 9.3 );

setAlphaKey( spep_4 -3 + 128, 1, 102 );
setAlphaKey( spep_4 -3 + 169, 1, 102 );

-- ** 音 ** --
--暗闇格闘１
SE019 = playSeVer2( spep_4 + 10, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 10, SE019, 81 );
SE020 = playSeVer2( spep_4 + 10, 1064, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 10, SE020, 78 );
SE021 = playSeVer2( spep_4 + 12, 1110, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_4 + 12, 1026, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_4 + 16, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 16, SE023, 58 );

--暗闇格闘２
SE024 = playSeVer2( spep_4 + 64, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 64, SE024, 85 );
SE025 = playSeVer2( spep_4 + 64, 1064, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 64, SE025, 74 );
SE026 = playSeVer2( spep_4 + 64, 1026, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 66, 1110, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_4 + 66, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 66, SE028, 68 );

--暗闇格闘３
SE029 = playSeVer2( spep_4 + 128, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 128, SE029, 74 );
SE030 = playSeVer2( spep_4 + 128, 1064, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 128, SE030, 70 );
SE031 = playSeVer2( spep_4 + 128, 1026, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_4 + 130, 1110, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_4 + 134, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 134, SE033, 60 );

--敵飛んでいく
SE034 = playSeVer2( spep_4 + 164, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 164, SE034, 84 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 166;

------------------------------------------------------
-- 敵が上空に吹っ飛ぶ(46F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
emove_f = entryEffectLife( spep_5 + 0, SP_09, 46, 0x100, -1, 0, 0, 0 );  -- 敵が上空に吹っ飛ぶ(ef_006_front)
setEffMoveKey( spep_5 + 0, emove_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, emove_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, emove_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 46, emove_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, emove_f, 0 );
setEffRotateKey( spep_5 + 46, emove_f, 0 );
setEffAlphaKey( spep_5 + 0, emove_f, 255 );
setEffAlphaKey( spep_5 + 46 -1, emove_f, 255 );
setEffAlphaKey( spep_5 + 46, emove_f, 0 );

emove_b = entryEffectLife( spep_5 + 0, SP_10, 46, 0x80, -1, 0, 0, 0 );  -- 敵が上空に吹っ飛ぶ(ef_006_back)
setEffMoveKey( spep_5 + 0, emove_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, emove_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, emove_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 46, emove_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, emove_b, 0 );
setEffRotateKey( spep_5 + 46, emove_b, 0 );
setEffAlphaKey( spep_5 + 0, emove_b, 255 );
setEffAlphaKey( spep_5 + 46 -1, emove_b, 255 );
setEffAlphaKey( spep_5 + 46, emove_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 2, 1, 1 );
--setDisp( spep_5 -3 + 49, 1, 0 );
changeAnime( spep_5 + 2, 1, 6 );

setMoveKey( spep_5 + 2, 1, 425.9, -565.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 367.7, -498.4 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 309.9, -431.8 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 252.3, -365.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 195.1, -299.7 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 138.1, -234.1 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 81.5, -168.9 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 25.1, -104.1 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -31, -39.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -86.8, 24.7 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -142.3, 88.5 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -197.5, 152 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -252.4, 215.2 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -307, 278 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -361.3, 340.5 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -415.3, 402.7 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -469, 464.4 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -522.5, 525.9 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -575.6, 587 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -628.4, 647.8 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -681, 708.2 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -733.2, 768.3 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -785.2, 828.1 , 0 );
--setMoveKey( spep_5 -3 + 49, 1, -785.2, 828.1 , 0 );

setScaleKey( spep_5 + 2, 1, 0.84, 0.84 );
setScaleKey( spep_5 -3 + 6, 1, 0.83, 0.83 );
setScaleKey( spep_5 -3 + 12, 1, 0.83, 0.83 );
setScaleKey( spep_5 -3 + 14, 1, 0.82, 0.82 );
setScaleKey( spep_5 -3 + 22, 1, 0.82, 0.82 );
setScaleKey( spep_5 -3 + 24, 1, 0.81, 0.81 );
setScaleKey( spep_5 -3 + 32, 1, 0.81, 0.81 );
setScaleKey( spep_5 -3 + 34, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 40, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 42, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 48, 1, 0.79, 0.79 );
--setScaleKey( spep_5 -3 + 49, 1, 0.79, 0.79 );

setRotateKey( spep_5 + 2, 1, 14 );
setRotateKey( spep_5 -3 + 6, 1, 13.6 );
setRotateKey( spep_5 -3 + 8, 1, 13.2 );
setRotateKey( spep_5 -3 + 10, 1, 12.8 );
setRotateKey( spep_5 -3 + 12, 1, 12.4 );
setRotateKey( spep_5 -3 + 14, 1, 12 );
setRotateKey( spep_5 -3 + 16, 1, 11.5 );
setRotateKey( spep_5 -3 + 18, 1, 11.1 );
setRotateKey( spep_5 -3 + 20, 1, 10.7 );
setRotateKey( spep_5 -3 + 22, 1, 10.3 );
setRotateKey( spep_5 -3 + 24, 1, 9.9 );
setRotateKey( spep_5 -3 + 26, 1, 9.5 );
setRotateKey( spep_5 -3 + 28, 1, 9.1 );
setRotateKey( spep_5 -3 + 30, 1, 8.7 );
setRotateKey( spep_5 -3 + 32, 1, 8.3 );
setRotateKey( spep_5 -3 + 34, 1, 7.9 );
setRotateKey( spep_5 -3 + 36, 1, 7.5 );
setRotateKey( spep_5 -3 + 38, 1, 7 );
setRotateKey( spep_5 -3 + 40, 1, 6.6 );
setRotateKey( spep_5 -3 + 42, 1, 6.2 );
setRotateKey( spep_5 -3 + 44, 1, 5.8 );
setRotateKey( spep_5 -3 + 46, 1, 5.4 );
setRotateKey( spep_5 -3 + 48, 1, 5 );
--setRotateKey( spep_5 -3 + 49, 1, 5 );

setAlphaKey( spep_5 + 2, 1, 255 );
setAlphaKey( spep_5 -3 + 48, 1, 255 );
--setAlphaKey( spep_5 -3 + 49, 1, 255 );

-- ** 音 ** --
--敵飛んでいく
SE035 = playSeVer2( spep_5 + 0, 1183, "", 0, 0, 0, -1);
setTimeStretch( SE035, 1.18, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 46;

------------------------------------------------------
-- 悟空が上空へ先回りして待ち構える(46F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
gmove_f = entryEffectLife( spep_6 + 0, SP_11, 46, 0x100, -1, 0, 0, 0 );  -- 悟空が上空へ先回りして待ち構える(ef_007_front)
setEffMoveKey( spep_6 + 0, gmove_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, gmove_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gmove_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 46, gmove_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gmove_f, 0 );
setEffRotateKey( spep_6 + 46, gmove_f, 0 );
setEffAlphaKey( spep_6 + 0, gmove_f, 255 );
setEffAlphaKey( spep_6 + 46 -1, gmove_f, 255 );
setEffAlphaKey( spep_6 + 46, gmove_f, 0 );

gmove_b = entryEffectLife( spep_6 + 0, SP_12, 46, 0x80, -1, 0, 0, 0 );  -- 悟空が上空へ先回りして待ち構える(ef_007_back)
setEffMoveKey( spep_6 + 0, gmove_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, gmove_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gmove_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 46, gmove_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gmove_b, 0 );
setEffRotateKey( spep_6 + 46, gmove_b, 0 );
setEffAlphaKey( spep_6 + 0, gmove_b, 255 );
setEffAlphaKey( spep_6 + 46 -1, gmove_b, 255 );
setEffAlphaKey( spep_6 + 46, gmove_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 49, 1, 0 );
changeAnime( spep_6 + 0, 1, 5 );

setMoveKey( spep_6 + 0, 1, 357.5, -436.9 , 0 );
setMoveKey( spep_6 + 1, 1, 297.5, -332.4 , 0 );
setMoveKey( spep_6 + 2, 1, 278.6, -300.8 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 265.6, -278.9 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 255, -261 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 245.6, -245.2 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 236.9, -230.6 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 228.6, -216.5 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 220.4, -202.6 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 212.2, -188.9 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 194.9, -162 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 178.6, -136.6 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 163.2, -112.6 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 148.4, -89.7 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 134.4, -68 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 120.9, -47.1 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 108.1, -27.2 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 95.7, -7.9 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 83.8, 10.4 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 72.3, 28.2 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 61.3, 45.3 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 50.7, 61.8 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 40.4, 77.7 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 30.5, 93.1 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 20.9, 107.9 , 0 );
setMoveKey( spep_6 -3 + 49, 1, 20.9, 107.9 , 0 );

setScaleKey( spep_6 + 0, 1, 6.33, 6.33 );
setScaleKey( spep_6 + 1, 1, 4.56, 4.55 );
setScaleKey( spep_6 + 2, 1, 4.25, 4.26 );
setScaleKey( spep_6 -3 + 6, 1, 4.07, 4.09 );
setScaleKey( spep_6 -3 + 8, 1, 3.94, 3.97 );
setScaleKey( spep_6 -3 + 10, 1, 3.84, 3.88 );
setScaleKey( spep_6 -3 + 12, 1, 3.76, 3.81 );
setScaleKey( spep_6 -3 + 14, 1, 3.69, 3.75 );
setScaleKey( spep_6 -3 + 16, 1, 3.63, 3.69 );
setScaleKey( spep_6 -3 + 18, 1, 3.57, 3.64 );
setScaleKey( spep_6 -3 + 20, 1, 3.4, 3.47 );
setScaleKey( spep_6 -3 + 22, 1, 3.25, 3.32 );
setScaleKey( spep_6 -3 + 24, 1, 3.11, 3.18 );
setScaleKey( spep_6 -3 + 26, 1, 2.98, 3.05 );
setScaleKey( spep_6 -3 + 28, 1, 2.85, 2.92 );
setScaleKey( spep_6 -3 + 30, 1, 2.73, 2.8 );
setScaleKey( spep_6 -3 + 32, 1, 2.62, 2.69 );
setScaleKey( spep_6 -3 + 34, 1, 2.51, 2.58 );
setScaleKey( spep_6 -3 + 36, 1, 2.41, 2.47 );
setScaleKey( spep_6 -3 + 38, 1, 2.31, 2.37 );
setScaleKey( spep_6 -3 + 40, 1, 2.22, 2.28 );
setScaleKey( spep_6 -3 + 42, 1, 2.13, 2.18 );
setScaleKey( spep_6 -3 + 44, 1, 2.05, 2.09 );
setScaleKey( spep_6 -3 + 46, 1, 1.96, 2 );
setScaleKey( spep_6 -3 + 48, 1, 1.88, 1.92 );
setScaleKey( spep_6 -3 + 49, 1, 1.88, 1.92 );

setRotateKey( spep_6 + 0, 1, -9 );
setRotateKey( spep_6 -3 + 49, 1, -9 );

-- ** 音 ** --
--瞬間移動
SE036 = playSeVer2( spep_6 + 4, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 46;

------------------------------------------------------
-- 悟空しゃべる(86F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
talk = entryEffectLife( spep_7 + 0, SP_13, 88, 0x100, -1, 0, 0, 0 );  -- 悟空しゃべる(ef_008)
setEffMoveKey( spep_7 + 0, talk, 0, 0 , 0 );
setEffMoveKey( spep_7 + 88, talk, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, talk, 1.0, 1.0 );
setEffScaleKey( spep_7 + 88, talk, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, talk, 0 );
setEffRotateKey( spep_7 + 88, talk, 0 );
setEffAlphaKey( spep_7 + 0, talk, 255 );
setEffAlphaKey( spep_7 + 88 -1, talk, 255 );
setEffAlphaKey( spep_7 + 88, talk, 0 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_7 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 35, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 35, 515.5 , 0 );
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
--顔カットイン
SE037 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 88 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_7 + 78, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 88;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_8 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_8, SE_05);
    speff = entryEffect( spep_8, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_8, SE_05);
    speff = entryEffect( spep_8, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_8, SE_05);
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

-- ** 白背景 ** --
entryFadeBg( spep_8 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 94;

------------------------------------------------------
-- 気合砲(76F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
kiaihou = entryEffectLife( spep_9 + 0, SP_14, 76, 0x100, -1, 0, 0, 0 );  -- 気合砲(ef_009)
setEffMoveKey( spep_9 + 0, kiaihou, 0, 0 , 0 );
setEffMoveKey( spep_9 + 76, kiaihou, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, kiaihou, 1.0, 1.0 );
setEffScaleKey( spep_9 + 76, kiaihou, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, kiaihou, 0 );
setEffRotateKey( spep_9 + 76, kiaihou, 0 );
setEffAlphaKey( spep_9 + 0, kiaihou, 255 );
setEffAlphaKey( spep_9 + 76 -1, kiaihou, 255 );
setEffAlphaKey( spep_9 + 76, kiaihou, 0 );

-- ** 音 ** --
--気合砲放つ
SE039 = playSeVer2( spep_9 + 10, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 10, SE039, 89 );
SE040 = playSeVer2( spep_9 + 10, 1312, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_9 + 10, 1027, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 76;

------------------------------------------------------
-- 気合砲が敵にあたり敵が落下する(56F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
efall_f = entryEffectLife( spep_10 + 0, SP_15, 56, 0x100, -1, 0, 0, 0 );  -- 気合砲が敵にあたり敵が落下する(ef_010_front)
setEffMoveKey( spep_10 + 0, efall_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 56, efall_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, efall_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, efall_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, efall_f, 0 );
setEffRotateKey( spep_10 + 56, efall_f, 0 );
setEffAlphaKey( spep_10 + 0, efall_f, 255 );
setEffAlphaKey( spep_10 + 56 -1, efall_f, 255 );
setEffAlphaKey( spep_10 + 56, efall_f, 0 );

efall_b = entryEffectLife( spep_10 + 0, SP_16, 56, 0x80, -1, 0, 0, 0 );  -- 気合砲が敵にあたり敵が落下する(ef_010_back)
setEffMoveKey( spep_10 + 0, efall_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 56, efall_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, efall_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, efall_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, efall_b, 0 );
setEffRotateKey( spep_10 + 56, efall_b, 0 );
setEffAlphaKey( spep_10 + 0, efall_b, 255 );
setEffAlphaKey( spep_10 + 56 -1, efall_b, 255 );
setEffAlphaKey( spep_10 + 56, efall_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
--setDisp( spep_10 -3 + 59, 1, 0 );
changeAnime( spep_10 + 0, 1, 107 );
changeAnime( spep_10 -3 + 30, 1, 105 );

a10 = 80;
setMoveKey( spep_10 + 0, 1, -60.8 -a10, -430.3 , 0 );
setMoveKey( spep_10 + 1, 1, -34.8 -a10, -338.3 , 0 );
setMoveKey( spep_10 + 2, 1, -40.7 -a10, -238.3 , 0 );
setMoveKey( spep_10 -3 + 6, 1, -20.6 -a10, -162.8 , 0 );
setMoveKey( spep_10 -3 + 8, 1, -20.5 -a10, -127.3 , 0 );
setMoveKey( spep_10 -3 + 10, 1, -13.8 -a10, -130 , 0 );
setMoveKey( spep_10 -3 + 12, 1, -23.1 -a10, -148.9 , 0 );
setMoveKey( spep_10 -3 + 14, 1, -2.4 -a10, -171.1 , 0 );
setMoveKey( spep_10 -3 + 16, 1, 10.3 -a10, -161.4 , 0 );
setMoveKey( spep_10 -3 + 18, 1, 13.5 -a10, -158.1 , 0 );
setMoveKey( spep_10 -3 + 20, 1, 16.8 -a10, -126.9 , 0 );
setMoveKey( spep_10 -3 + 22, 1, 19.1 -a10, -115.1 , 0 );
setMoveKey( spep_10 -3 + 24, 1, 5.4 -a10, -119.2 , 0 );
setMoveKey( spep_10 -3 + 26, 1, 13.1 -a10, -125.2 , 0 );
setMoveKey( spep_10 -3 + 29, 1, 8.9 -a10, -143.1 , 0 );
setMoveKey( spep_10 -3 + 30, 1, -10.5, -26 , 0 );
setMoveKey( spep_10 -3 + 32, 1, -17.3, -6.5 , 0 );
setMoveKey( spep_10 -3 + 34, 1, -8.3, -16.9 , 0 );
setMoveKey( spep_10 -3 + 36, 1, -11.2, -19.2 , 0 );
setMoveKey( spep_10 -3 + 38, 1, -12.8, -18.6 , 0 );
setMoveKey( spep_10 -3 + 40, 1, -5.4, -10.9 , 0 );
setMoveKey( spep_10 -3 + 42, 1, -9.9, -11.3 , 0 );
setMoveKey( spep_10 -3 + 44, 1, -6.8, -8.6 , 0 );
setMoveKey( spep_10 -3 + 46, 1, -8.2, -8.5 , 0 );
setMoveKey( spep_10 -3 + 48, 1, -5.2, -8.7 , 0 );
setMoveKey( spep_10 -3 + 50, 1, -4.2, -7 , 0 );
setMoveKey( spep_10 -3 + 52, 1, -3.2, -5.3 , 0 );
setMoveKey( spep_10 -3 + 54, 1, -2.2, -3.5 , 0 );
setMoveKey( spep_10 -3 + 56, 1, -1.2, -1.8 , 0 );
setMoveKey( spep_10 -3 + 58, 1, -0.3, 0 , 0 );
--setMoveKey( spep_10 -3 + 59, 1, -0.3, 0 , 0 );

setScaleKey( spep_10 + 0, 1, 5, 5 );
setScaleKey( spep_10 + 1, 1, 4.35, 4.35 );
setScaleKey( spep_10 + 2, 1, 3.7, 3.7 );
setScaleKey( spep_10 -3 + 6, 1, 3.05, 3.05 );
setScaleKey( spep_10 -3 + 8, 1, 2.4, 2.4 );
setScaleKey( spep_10 -3 + 10, 1, 2.38, 2.38 );
setScaleKey( spep_10 -3 + 12, 1, 2.36, 2.36 );
setScaleKey( spep_10 -3 + 14, 1, 2.34, 2.34 );
setScaleKey( spep_10 -3 + 16, 1, 2.32, 2.32 );
setScaleKey( spep_10 -3 + 18, 1, 2.3, 2.3 );
setScaleKey( spep_10 -3 + 20, 1, 2.27, 2.27 );
setScaleKey( spep_10 -3 + 22, 1, 2.25, 2.25 );
setScaleKey( spep_10 -3 + 24, 1, 2.23, 2.23 );
setScaleKey( spep_10 -3 + 26, 1, 2.21, 2.21 );
setScaleKey( spep_10 -3 + 29, 1, 2.19, 2.19 );
setScaleKey( spep_10 -3 + 30, 1, 1.83, 1.83 );
setScaleKey( spep_10 -3 + 32, 1, 1.71, 1.71 );
setScaleKey( spep_10 -3 + 34, 1, 1.59, 1.59 );
setScaleKey( spep_10 -3 + 36, 1, 1.47, 1.47 );
setScaleKey( spep_10 -3 + 38, 1, 1.35, 1.35 );
setScaleKey( spep_10 -3 + 40, 1, 1.23, 1.23 );
setScaleKey( spep_10 -3 + 42, 1, 1.11, 1.11 );
setScaleKey( spep_10 -3 + 44, 1, 0.99, 0.99 );
setScaleKey( spep_10 -3 + 46, 1, 0.87, 0.87 );
setScaleKey( spep_10 -3 + 48, 1, 0.75, 0.75 );
setScaleKey( spep_10 -3 + 50, 1, 0.63, 0.63 );
setScaleKey( spep_10 -3 + 52, 1, 0.51, 0.51 );
setScaleKey( spep_10 -3 + 54, 1, 0.39, 0.39 );
setScaleKey( spep_10 -3 + 56, 1, 0.27, 0.27 );
setScaleKey( spep_10 -3 + 58, 1, 0.15, 0.15 );
--setScaleKey( spep_10 -3 + 59, 1, 0.15, 0.15 );

setRotateKey( spep_10 + 0, 1, -88 );
setRotateKey( spep_10 -3 + 29, 1, -88 );
setRotateKey( spep_10 -3 + 30, 1, 0 );
setRotateKey( spep_10 -3 + 58, 1, 0 );
--setRotateKey( spep_10 -3 + 59, 1, 0 );

-- ** 音 ** --
--敵ヒット
SE042 = playSeVer2( spep_10 + 0, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 0, SE042, 85 );
SE043 = playSeVer2( spep_10 + 0, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 0, SE043, 93 );

--敵飛んでいく
SE044 = playSeVer2( spep_10 + 30, 1027, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_10 + 46, 1121, "",spep_10 +56 + 54, 0, 10, -1);
setSeVolumeByWorkId( spep_10 + 46, SE045, 78 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 56;

------------------------------------------------------
-- 敵が海に落下(116F)
------------------------------------------------------
--spep_11 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, SP_17, 0x100, -1, 0, 0, 0 );  -- 敵が海に落下(ef_011_front)
setEffMoveKey( spep_11 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 166, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 166, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 166, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 166, finish_f, 255 );

finish_b = entryEffect( spep_11 + 0, SP_18, 0x80, -1, 0, 0, 0 );  -- 敵が海に落下(ef_011_back)
setEffMoveKey( spep_11 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_11 + 166, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 166, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_b, 0 );
setEffRotateKey( spep_11 + 166, finish_b, 0 );
setEffAlphaKey( spep_11 + 0, finish_b, 255 );
setEffAlphaKey( spep_11 + 166, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 -3 + 46, 1, 0 );
changeAnime( spep_11 + 0, 1, 106 );

setMoveKey( spep_11 + 0, 1, 13.5, 496.5 , 0 );
setMoveKey( spep_11 + 1, 1, 11.8, 466.9 , 0 );
setMoveKey( spep_11 + 2, 1, 10.5, 441.5 , 0 );
setMoveKey( spep_11 -3 + 6, 1, 9.6, 419.5 , 0 );
setMoveKey( spep_11 -3 + 8, 1, 8.9, 400.1 , 0 );
setMoveKey( spep_11 -3 + 10, 1, 8.6, 382.5 , 0 );
setMoveKey( spep_11 -3 + 12, 1, 8.5, 366.1 , 0 );
setMoveKey( spep_11 -3 + 14, 1, 8.5, 350.1 , 0 );
setMoveKey( spep_11 -3 + 16, 1, 8.7, 333.9 , 0 );
setMoveKey( spep_11 -3 + 18, 1, 9, 316.9 , 0 );
setMoveKey( spep_11 -3 + 20, 1, 9.3, 298.4 , 0 );
setMoveKey( spep_11 -3 + 22, 1, 9.7, 277.9 , 0 );
setMoveKey( spep_11 -3 + 24, 1, 10, 254.6 , 0 );
setMoveKey( spep_11 -3 + 26, 1, 10.3, 227.9 , 0 );
setMoveKey( spep_11 -3 + 28, 1, 10.6, 197.3 , 0 );
setMoveKey( spep_11 -3 + 30, 1, 10.7, 161.9 , 0 );
setMoveKey( spep_11 -3 + 32, 1, 10.6, 121.2 , 0 );
setMoveKey( spep_11 -3 + 34, 1, 10.3, 74.4 , 0 );
setMoveKey( spep_11 -3 + 36, 1, 9.8, 20.7 , 0 );
setMoveKey( spep_11 -3 + 38, 1, 9, -40.7 , 0 );
setMoveKey( spep_11 -3 + 40, 1, 7.9, -110.8 , 0 );
setMoveKey( spep_11 -3 + 42, 1, 6.4, -190.3 , 0 );
setMoveKey( spep_11 -3 + 44, 1, 4.4, -280.5 , 0 );
setMoveKey( spep_11 -3 + 46, 1, 4.4, -280.5 , 0 );

setScaleKey( spep_11 + 0, 1, 0.55, 0.55 );
setScaleKey( spep_11 -3 + 44, 1, 0.55, 0.55 );
setScaleKey( spep_11 -3 + 46, 1, 0.55, 0.55 );

setRotateKey( spep_11 + 0, 1, 124.3 );
setRotateKey( spep_11 -3 + 44, 1, 124.3 );
setRotateKey( spep_11 -3 + 46, 1, 124.3 );

-- ** 音 ** --
--水面爆発
SE046 = playSeVer2( spep_11 + 34, 1163, "", 0, 2, 0, -1);
setStartTimeMs( SE046,  317 );
SE047 = playSeVer2( spep_11 + 38, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 42 );
endPhase( spep_11 + 156 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 対峙(56F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 56, 0x100, -1, 0, 0, 0 );  -- 対峙(ef_001_front)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 56, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 56 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 56, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 56, 0x80, -1, 0, 0, 0 );  -- 対峙(ef_001_back)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 56, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 56 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 56, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 59, 1, 0 );
changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 229.7, 7.9 , 0 );
setMoveKey( spep_0 + 1, 1, 227.6, 7.9 , 0 );
setMoveKey( spep_0 + 2, 1, 225.6, 7.9 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 223.5, 7.9 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 223.5, 7.9 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 221.4, 7.9 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 221.4, 7.9 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 219.3, 7.9 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 217.3, 7.9 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 215.2, 7.9 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 213.1, 7.9 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 211, 7.9 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 209, 7.9 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 206.9, 7.9 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 204.8, 7.9 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 202.8, 7.9 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 200.7, 7.9 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 198.6, 7.9 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 196.5, 7.9 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 194.5, 7.9 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 192.4, 7.9 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 190.3, 7.9 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 188.2, 7.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 186.2, 7.9 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 184.1, 7.9 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 182, 7.9 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 180, 7.9 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 177.9, 7.9 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 175.8, 7.9 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 173.7, 7.9 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 171.7, 7.9 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 169.6, 7.9 , 0 );
setMoveKey( spep_0 -3 + 59, 1, 169.6, 7.9 , 0 );

setScaleKey( spep_0 + 0, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 1, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 2, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 3, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 4, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 5, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 6, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 59, 1, 0.58, 0.58 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 59, 1, 0 );

setAlphaKey( spep_0 + 0, 1, 255 );
setAlphaKey( spep_0 + 1, 1, 255 );
setAlphaKey( spep_0 + 2, 1, 255 );
setAlphaKey( spep_0 + 3, 1, 255 );
setAlphaKey( spep_0 + 4, 1, 255 );
setAlphaKey( spep_0 + 5, 1, 255 );
setAlphaKey( spep_0 + 6, 1, 255 );
setAlphaKey( spep_0 -3 + 59, 1, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "",spep_0 +56 +36 +92 + 70, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 61 );
setPitch( spep_0 + 0, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );
SE003 = playSeVer2( spep_0 + 2, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 85 );
setPitch( spep_0 + 2, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;

------------------------------------------------------
-- 地面をける(36F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
dash = entryEffectLife( spep_1 + 0, SP_03r, 36, 0x100, -1, 0, 0, 0 );  -- 地面をける(ef_002)
setEffMoveKey( spep_1 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_1 + 36, dash, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, dash, -1.0, 1.0 );
setEffScaleKey( spep_1 + 36, dash, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash, 0 );
setEffRotateKey( spep_1 + 36, dash, 0 );
setEffAlphaKey( spep_1 + 0, dash, 255 );
setEffAlphaKey( spep_1 + 36 -1, dash, 255 );
setEffAlphaKey( spep_1 + 36, dash, 0 );

-- ** 音 ** --
--飛び上がる
SE004 = playSeVer2( spep_1 + 6, 1000, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 6, 1117, "",spep_1 +34, 0, 12, -1);

--地面蹴る
SE006 = playSeVer2( spep_1 + 22, 1033, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 22, 1011, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 36;

------------------------------------------------------
-- 敵に近づきながらパンチ振りかぶる(92F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
punch = entryEffectLife( spep_2 + 0, SP_04r, 92, 0x100, -1, 0, 0, 0 );  -- 敵に近づきながらパンチ振りかぶる(ef_003)
setEffMoveKey( spep_2 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_2 + 92, punch, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch, -1.0, 1.0 );
setEffScaleKey( spep_2 + 92, punch, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch, 0 );
setEffRotateKey( spep_2 + 92, punch, 0 );
setEffAlphaKey( spep_2 + 0, punch, 255 );
setEffAlphaKey( spep_2 + 92 -1, punch, 255 );
setEffAlphaKey( spep_2 + 92, punch, 0 );

-- ** 音 ** --
--悟空迫ってくる
SE008 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE009, 51 );
setTimeStretch( SE009, 1.25, 30, 4 );
SE010 = playSeVer2( spep_2 + 0, 1183, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 92 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 24 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);

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
--振りかぶる
SE011 = playSeVer2( spep_2 + 44, 1116, "",spep_2 + 82, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 44, SE011, 148 );
SE012 = playSeVer2( spep_2 + 52, 1003, "", 0, 0, 0, -1);

--パンチ
SE013 = playSeVer2( spep_2 + 80, 1189, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 88, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE015, 77 );
SE016 = playSeVer2( spep_2 + 88, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE016, 77 );
SE017 = playSeVer2( spep_2 + 88, 1188, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 92;

------------------------------------------------------
-- パンチヒット(76F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
phit_f = entryEffectLife( spep_3 + 0, SP_05r, 76, 0x100, -1, 0, 0, 0 );  -- パンチヒット → 土煙(ef_004_front)
setEffMoveKey( spep_3 + 0, phit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, phit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, phit_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 76, phit_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, phit_f, 0 );
setEffRotateKey( spep_3 + 76, phit_f, 0 );
setEffAlphaKey( spep_3 + 0, phit_f, 255 );
setEffAlphaKey( spep_3 + 76 -1, phit_f, 255 );
setEffAlphaKey( spep_3 + 76, phit_f, 0 );

phit_b = entryEffectLife( spep_3 + 0, SP_06, 76, 0x80, -1, 0, 0, 0 );  -- パンチヒット → 土煙(ef_004_back)
setEffMoveKey( spep_3 + 0, phit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, phit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, phit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, phit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, phit_b, 0 );
setEffRotateKey( spep_3 + 76, phit_b, 0 );
setEffAlphaKey( spep_3 + 0, phit_b, 255 );
setEffAlphaKey( spep_3 + 76 -1, phit_b, 255 );
setEffAlphaKey( spep_3 + 76, phit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 79, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3 + 0, 1, 11.8, -9.1 , 0 );
setMoveKey( spep_3 + 1, 1, 12.3, -5 , 0 );
setMoveKey( spep_3 + 2, 1, 10.5, -14.8 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 15.4, -17.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 11.5, -11 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 12.8, -9.8 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 14.1, -8.7 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 15.3, -7.6 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 15.9, -7.4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 16.4, -7.1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 16.9, -6.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 17.4, -6.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 17.9, -6.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 18.4, -6.3 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 18.8, -6.1 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 19.4, -5.9 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 19.8, -5.7 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 20.3, -5.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 20.8, -5.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 21.3, -5 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 21.8, -4.8 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 22.2, -4.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 22.8, -4.4 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 23.2, -4.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 23.7, -3.9 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 24.1, -3.7 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 24.6, -3.5 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 25.1, -3.3 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 25.5, -3.1 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 26, -2.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 26.5, -2.6 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 26.9, -2.4 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 27.4, -2.2 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 27.9, -2 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 28.3, -1.8 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 28.7, -1.5 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 29.1, -1.3 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 29.7, -1.1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 30.1, -0.8 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 30.5, -0.6 , 0 );
setMoveKey( spep_3 -3 + 79, 1, 30.5, -0.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.53, 0.53 );
setScaleKey( spep_3 -3 + 6, 1, 0.53, 0.53 );
setScaleKey( spep_3 -3 + 8, 1, 0.52, 0.52 );
setScaleKey( spep_3 -3 + 22, 1, 0.52, 0.52 );
setScaleKey( spep_3 -3 + 24, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 40, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 42, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 56, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 58, 1, 0.49, 0.49 );
setScaleKey( spep_3 -3 + 72, 1, 0.49, 0.49 );
setScaleKey( spep_3 -3 + 74, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 79, 1, 0.48, 0.48 );

setRotateKey( spep_3 + 0, 1, 37.7 );
setRotateKey( spep_3 -3 + 79, 1, 37.7 );

setAlphaKey( spep_3 + 0, 1, 255 );
setAlphaKey( spep_3 -3 + 79, 1, 255 );

-- ** 音 ** --
--パンチ
SE014 = playSeVer2( spep_3 + 0, 1035, "",spep_3 + 72, 8, 44, -1);
setStartTimeMs( SE014,  100 );
setPitch( spep_3 + 0, SE014, -400 );
setTimeStretch( SE014, 0.73, 30, 4 );

--土煙あがる
SE018 = playSeVer2( spep_3 + 22, 1002, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;

------------------------------------------------------
-- 暗闇の中格闘(166F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
fight_f = entryEffectLife( spep_4 + 0, SP_07r, 166, 0x100, -1, 0, 0, 0 );  -- 暗闇の中格闘(ef_005_front)
setEffMoveKey( spep_4 + 0, fight_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 166, fight_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, fight_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 166, fight_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fight_f, 0 );
setEffRotateKey( spep_4 + 166, fight_f, 0 );
setEffAlphaKey( spep_4 + 0, fight_f, 255 );
setEffAlphaKey( spep_4 + 166 -1, fight_f, 255 );
setEffAlphaKey( spep_4 + 166, fight_f, 0 );

fight_b = entryEffectLife( spep_4 + 0, SP_08r, 166, 0x80, -1, 0, 0, 0 );  -- 暗闇の中格闘(ef_005_back)
setEffMoveKey( spep_4 + 0, fight_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 166, fight_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, fight_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 166, fight_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fight_b, 0 );
setEffRotateKey( spep_4 + 166, fight_b, 0 );
setEffAlphaKey( spep_4 + 0, fight_b, 255 );
setEffAlphaKey( spep_4 + 166 -1, fight_b, 255 );
setEffAlphaKey( spep_4 + 166, fight_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 14, 1, 1 );
setDisp( spep_4 -3 + 66, 1, 0 );
changeAnime( spep_4 -3 + 14, 1, 106 );

setMoveKey( spep_4 -3 + 14, 1, 203.6, -24.6 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 205.5, -19.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 207.5, -14.3 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 209.4, -9.1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 211.3, -3.9 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 213.3, 1.3 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 215.2, 6.5 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 217.1, 11.7 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 219.1, 16.8 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 221, 22 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 223, 27.2 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 224.9, 32.4 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 226.8, 37.6 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 228.8, 42.8 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 230.7, 47.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 232.7, 53.1 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 234.6, 58.3 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 236.5, 63.5 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 238.5, 68.7 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 240.4, 73.9 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 242.4, 79 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 244.3, 84.2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 246.2, 89.4 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 248.2, 94.6 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 250.1, 99.8 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 252, 104.9 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 252, 104.9 , 0 );

setScaleKey( spep_4 -3 + 14, 1, 2.9261, 2.9261 );
setScaleKey( spep_4 -3 + 16, 1, 2.915, 2.915 );
setScaleKey( spep_4 -3 + 18, 1, 2.904, 2.904 );
setScaleKey( spep_4 -3 + 20, 1, 2.8821, 2.8821 );
setScaleKey( spep_4 -3 + 22, 1, 2.871, 2.871 );
setScaleKey( spep_4 -3 + 24, 1, 2.86, 2.86 );
setScaleKey( spep_4 -3 + 26, 1, 2.849, 2.849 );
setScaleKey( spep_4 -3 + 28, 1, 2.827, 2.827 );
setScaleKey( spep_4 -3 + 30, 1, 2.816, 2.816 );
setScaleKey( spep_4 -3 + 32, 1, 2.805, 2.805 );
setScaleKey( spep_4 -3 + 34, 1, 2.7941, 2.7941 );
setScaleKey( spep_4 -3 + 36, 1, 2.783, 2.783 );
setScaleKey( spep_4 -3 + 38, 1, 2.761, 2.761 );
setScaleKey( spep_4 -3 + 40, 1, 2.75, 2.75 );
setScaleKey( spep_4 -3 + 42, 1, 2.739, 2.739 );
setScaleKey( spep_4 -3 + 44, 1, 2.728, 2.728 );
setScaleKey( spep_4 -3 + 46, 1, 2.706, 2.706 );
setScaleKey( spep_4 -3 + 48, 1, 2.695, 2.695 );
setScaleKey( spep_4 -3 + 50, 1, 2.684, 2.684 );
setScaleKey( spep_4 -3 + 52, 1, 2.6731, 2.6731 );
setScaleKey( spep_4 -3 + 54, 1, 2.651, 2.651 );
setScaleKey( spep_4 -3 + 56, 1, 2.64, 2.64 );
setScaleKey( spep_4 -3 + 58, 1, 2.629, 2.629 );
setScaleKey( spep_4 -3 + 60, 1, 2.618, 2.618 );
setScaleKey( spep_4 -3 + 62, 1, 2.607, 2.607 );
setScaleKey( spep_4 -3 + 64, 1, 2.585, 2.585 );
setScaleKey( spep_4 -3 + 66, 1, 2.585, 2.585 );

setRotateKey( spep_4 -3 + 14, 1, -31 );
setRotateKey( spep_4 -3 + 16, 1, -30.5 );
setRotateKey( spep_4 -3 + 18, 1, -30 );
setRotateKey( spep_4 -3 + 20, 1, -29.5 );
setRotateKey( spep_4 -3 + 22, 1, -28.9 );
setRotateKey( spep_4 -3 + 24, 1, -28.4 );
setRotateKey( spep_4 -3 + 26, 1, -27.9 );
setRotateKey( spep_4 -3 + 28, 1, -27.4 );
setRotateKey( spep_4 -3 + 30, 1, -26.9 );
setRotateKey( spep_4 -3 + 32, 1, -26.4 );
setRotateKey( spep_4 -3 + 34, 1, -25.8 );
setRotateKey( spep_4 -3 + 36, 1, -25.3 );
setRotateKey( spep_4 -3 + 38, 1, -24.8 );
setRotateKey( spep_4 -3 + 40, 1, -24.3 );
setRotateKey( spep_4 -3 + 42, 1, -23.8 );
setRotateKey( spep_4 -3 + 44, 1, -23.3 );
setRotateKey( spep_4 -3 + 46, 1, -22.7 );
setRotateKey( spep_4 -3 + 48, 1, -22.2 );
setRotateKey( spep_4 -3 + 50, 1, -21.7 );
setRotateKey( spep_4 -3 + 52, 1, -21.2 );
setRotateKey( spep_4 -3 + 54, 1, -20.7 );
setRotateKey( spep_4 -3 + 56, 1, -20.2 );
setRotateKey( spep_4 -3 + 58, 1, -19.6 );
setRotateKey( spep_4 -3 + 60, 1, -19.1 );
setRotateKey( spep_4 -3 + 62, 1, -18.6 );
setRotateKey( spep_4 -3 + 64, 1, -18.1 );
setRotateKey( spep_4 -3 + 66, 1, -18.1 );

setAlphaKey( spep_4 -3 + 14, 1, 102 );
setAlphaKey( spep_4 -3 + 66, 1, 102 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 72, 1, 1 );
setDisp( spep_4 -3 + 122, 1, 0 );
changeAnime( spep_4 -3 + 72, 1, 107 );

setMoveKey( spep_4 -3 + 72, 1, 85.9, -25.6 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 89.6, -22.9 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 93.3, -20.3 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 97, -17.6 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 100.6, -14.9 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 104.3, -12.2 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 108, -9.5 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 111.7, -6.8 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 115.4, -4.1 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 119, -1.4 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 122.7, 1.2 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 126.4, 3.9 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 130.1, 6.6 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 133.7, 9.3 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 137.4, 12 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 141.1, 14.7 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 144.8, 17.4 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 148.5, 20.1 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 152.1, 22.7 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 155.8, 25.4 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 159.5, 28.1 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 163.2, 30.8 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 166.8, 33.5 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 170.5, 36.2 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 174.2, 38.9 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 174.2, 38.9 , 0 );

setScaleKey( spep_4 -3 + 72, 1, 1.386, 1.386 );
setScaleKey( spep_4 -3 + 122, 1, 1.386, 1.386 );

setRotateKey( spep_4 -3 + 72, 1, -69 );
setRotateKey( spep_4 -3 + 74, 1, -67.9 );
setRotateKey( spep_4 -3 + 76, 1, -66.7 );
setRotateKey( spep_4 -3 + 78, 1, -65.6 );
setRotateKey( spep_4 -3 + 80, 1, -64.5 );
setRotateKey( spep_4 -3 + 82, 1, -63.4 );
setRotateKey( spep_4 -3 + 84, 1, -62.2 );
setRotateKey( spep_4 -3 + 86, 1, -61.1 );
setRotateKey( spep_4 -3 + 88, 1, -60 );
setRotateKey( spep_4 -3 + 90, 1, -58.9 );
setRotateKey( spep_4 -3 + 92, 1, -57.7 );
setRotateKey( spep_4 -3 + 94, 1, -56.6 );
setRotateKey( spep_4 -3 + 96, 1, -55.5 );
setRotateKey( spep_4 -3 + 98, 1, -54.4 );
setRotateKey( spep_4 -3 + 100, 1, -53.2 );
setRotateKey( spep_4 -3 + 102, 1, -52.1 );
setRotateKey( spep_4 -3 + 104, 1, -51 );
setRotateKey( spep_4 -3 + 106, 1, -49.9 );
setRotateKey( spep_4 -3 + 108, 1, -48.7 );
setRotateKey( spep_4 -3 + 110, 1, -47.6 );
setRotateKey( spep_4 -3 + 112, 1, -46.5 );
setRotateKey( spep_4 -3 + 114, 1, -45.4 );
setRotateKey( spep_4 -3 + 116, 1, -44.2 );
setRotateKey( spep_4 -3 + 118, 1, -43.1 );
setRotateKey( spep_4 -3 + 120, 1, -42 );
setRotateKey( spep_4 -3 + 122, 1, -42 );

setAlphaKey( spep_4 -3 + 72, 1, 102 );
setAlphaKey( spep_4 -3 + 122, 1, 102 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 128, 1, 1 );
setDisp( spep_4 -3 + 169, 1, 0 );
changeAnime( spep_4 -3 + 128, 1, 8 );

setMoveKey( spep_4 -3 + 128, 1, -176.1, 145.1 , 0 );
setMoveKey( spep_4 -3 + 130, 1, -179.8, 150.7 , 0 );
setMoveKey( spep_4 -3 + 132, 1, -183.5, 156.3 , 0 );
setMoveKey( spep_4 -3 + 134, 1, -187.2, 161.9 , 0 );
setMoveKey( spep_4 -3 + 136, 1, -190.9, 167.5 , 0 );
setMoveKey( spep_4 -3 + 138, 1, -194.7, 173.1 , 0 );
setMoveKey( spep_4 -3 + 140, 1, -198.4, 178.7 , 0 );
setMoveKey( spep_4 -3 + 142, 1, -202.1, 184.3 , 0 );
setMoveKey( spep_4 -3 + 144, 1, -205.8, 189.9 , 0 );
setMoveKey( spep_4 -3 + 146, 1, -209.6, 195.5 , 0 );
setMoveKey( spep_4 -3 + 148, 1, -213.3, 201.1 , 0 );
setMoveKey( spep_4 -3 + 150, 1, -217, 206.7 , 0 );
setMoveKey( spep_4 -3 + 152, 1, -220.7, 212.3 , 0 );
setMoveKey( spep_4 -3 + 154, 1, -224.5, 217.9 , 0 );
setMoveKey( spep_4 -3 + 156, 1, -228.2, 223.5 , 0 );
setMoveKey( spep_4 -3 + 158, 1, -231.9, 229.1 , 0 );
setMoveKey( spep_4 -3 + 160, 1, -235.6, 234.7 , 0 );
setMoveKey( spep_4 -3 + 162, 1, -239.4, 240.3 , 0 );
setMoveKey( spep_4 -3 + 164, 1, -243.1, 245.9 , 0 );
setMoveKey( spep_4 -3 + 166, 1, -246.8, 251.5 , 0 );
setMoveKey( spep_4 -3 + 168, 1, -250.6, 257.1 , 0 );
setMoveKey( spep_4 -3 + 169, 1, -250.6, 257.1 , 0 );

setScaleKey( spep_4 -3 + 128, 1, 3.0356, 3.0356 );
setScaleKey( spep_4 -3 + 168, 1, 3.0356, 3.0356 );
setScaleKey( spep_4 -3 + 169, 1, 3.0356, 3.0356 );

setRotateKey( spep_4 -3 + 128, 1, 0 );
setRotateKey( spep_4 -3 + 130, 1, 0.5 );
setRotateKey( spep_4 -3 + 132, 1, 0.9 );
setRotateKey( spep_4 -3 + 134, 1, 1.4 );
setRotateKey( spep_4 -3 + 136, 1, 1.9 );
setRotateKey( spep_4 -3 + 138, 1, 2.3 );
setRotateKey( spep_4 -3 + 140, 1, 2.8 );
setRotateKey( spep_4 -3 + 142, 1, 3.3 );
setRotateKey( spep_4 -3 + 144, 1, 3.7 );
setRotateKey( spep_4 -3 + 146, 1, 4.2 );
setRotateKey( spep_4 -3 + 148, 1, 4.7 );
setRotateKey( spep_4 -3 + 150, 1, 5.1 );
setRotateKey( spep_4 -3 + 152, 1, 5.6 );
setRotateKey( spep_4 -3 + 154, 1, 6.1 );
setRotateKey( spep_4 -3 + 156, 1, 6.5 );
setRotateKey( spep_4 -3 + 158, 1, 7 );
setRotateKey( spep_4 -3 + 160, 1, 7.5 );
setRotateKey( spep_4 -3 + 162, 1, 7.9 );
setRotateKey( spep_4 -3 + 164, 1, 8.4 );
setRotateKey( spep_4 -3 + 166, 1, 8.9 );
setRotateKey( spep_4 -3 + 168, 1, 9.3 );
setRotateKey( spep_4 -3 + 169, 1, 9.3 );

setAlphaKey( spep_4 -3 + 128, 1, 102 );
setAlphaKey( spep_4 -3 + 169, 1, 102 );

-- ** 音 ** --
--暗闇格闘１
SE019 = playSeVer2( spep_4 + 10, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 10, SE019, 81 );
SE020 = playSeVer2( spep_4 + 10, 1064, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 10, SE020, 78 );
SE021 = playSeVer2( spep_4 + 12, 1110, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_4 + 12, 1026, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_4 + 16, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 16, SE023, 58 );

--暗闇格闘２
SE024 = playSeVer2( spep_4 + 64, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 64, SE024, 85 );
SE025 = playSeVer2( spep_4 + 64, 1064, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 64, SE025, 74 );
SE026 = playSeVer2( spep_4 + 64, 1026, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 66, 1110, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_4 + 66, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 66, SE028, 68 );

--暗闇格闘３
SE029 = playSeVer2( spep_4 + 128, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 128, SE029, 74 );
SE030 = playSeVer2( spep_4 + 128, 1064, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 128, SE030, 70 );
SE031 = playSeVer2( spep_4 + 128, 1026, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_4 + 130, 1110, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_4 + 134, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 134, SE033, 60 );

--敵飛んでいく
SE034 = playSeVer2( spep_4 + 164, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 164, SE034, 84 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 166;

------------------------------------------------------
-- 敵が上空に吹っ飛ぶ(46F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
emove_f = entryEffectLife( spep_5 + 0, SP_09, 46, 0x100, -1, 0, 0, 0 );  -- 敵が上空に吹っ飛ぶ(ef_006_front)
setEffMoveKey( spep_5 + 0, emove_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, emove_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, emove_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 46, emove_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, emove_f, 0 );
setEffRotateKey( spep_5 + 46, emove_f, 0 );
setEffAlphaKey( spep_5 + 0, emove_f, 255 );
setEffAlphaKey( spep_5 + 46 -1, emove_f, 255 );
setEffAlphaKey( spep_5 + 46, emove_f, 0 );

emove_b = entryEffectLife( spep_5 + 0, SP_10, 46, 0x80, -1, 0, 0, 0 );  -- 敵が上空に吹っ飛ぶ(ef_006_back)
setEffMoveKey( spep_5 + 0, emove_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, emove_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, emove_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 46, emove_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, emove_b, 0 );
setEffRotateKey( spep_5 + 46, emove_b, 0 );
setEffAlphaKey( spep_5 + 0, emove_b, 255 );
setEffAlphaKey( spep_5 + 46 -1, emove_b, 255 );
setEffAlphaKey( spep_5 + 46, emove_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 2, 1, 1 );
--setDisp( spep_5 -3 + 49, 1, 0 );
changeAnime( spep_5 + 2, 1, 6 );

setMoveKey( spep_5 + 2, 1, 425.9, -565.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 367.7, -498.4 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 309.9, -431.8 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 252.3, -365.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 195.1, -299.7 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 138.1, -234.1 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 81.5, -168.9 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 25.1, -104.1 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -31, -39.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -86.8, 24.7 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -142.3, 88.5 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -197.5, 152 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -252.4, 215.2 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -307, 278 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -361.3, 340.5 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -415.3, 402.7 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -469, 464.4 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -522.5, 525.9 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -575.6, 587 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -628.4, 647.8 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -681, 708.2 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -733.2, 768.3 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -785.2, 828.1 , 0 );
--setMoveKey( spep_5 -3 + 49, 1, -785.2, 828.1 , 0 );

setScaleKey( spep_5 + 2, 1, 0.84, 0.84 );
setScaleKey( spep_5 -3 + 6, 1, 0.83, 0.83 );
setScaleKey( spep_5 -3 + 12, 1, 0.83, 0.83 );
setScaleKey( spep_5 -3 + 14, 1, 0.82, 0.82 );
setScaleKey( spep_5 -3 + 22, 1, 0.82, 0.82 );
setScaleKey( spep_5 -3 + 24, 1, 0.81, 0.81 );
setScaleKey( spep_5 -3 + 32, 1, 0.81, 0.81 );
setScaleKey( spep_5 -3 + 34, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 40, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 42, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 48, 1, 0.79, 0.79 );
--setScaleKey( spep_5 -3 + 49, 1, 0.79, 0.79 );

setRotateKey( spep_5 + 2, 1, 14 );
setRotateKey( spep_5 -3 + 6, 1, 13.6 );
setRotateKey( spep_5 -3 + 8, 1, 13.2 );
setRotateKey( spep_5 -3 + 10, 1, 12.8 );
setRotateKey( spep_5 -3 + 12, 1, 12.4 );
setRotateKey( spep_5 -3 + 14, 1, 12 );
setRotateKey( spep_5 -3 + 16, 1, 11.5 );
setRotateKey( spep_5 -3 + 18, 1, 11.1 );
setRotateKey( spep_5 -3 + 20, 1, 10.7 );
setRotateKey( spep_5 -3 + 22, 1, 10.3 );
setRotateKey( spep_5 -3 + 24, 1, 9.9 );
setRotateKey( spep_5 -3 + 26, 1, 9.5 );
setRotateKey( spep_5 -3 + 28, 1, 9.1 );
setRotateKey( spep_5 -3 + 30, 1, 8.7 );
setRotateKey( spep_5 -3 + 32, 1, 8.3 );
setRotateKey( spep_5 -3 + 34, 1, 7.9 );
setRotateKey( spep_5 -3 + 36, 1, 7.5 );
setRotateKey( spep_5 -3 + 38, 1, 7 );
setRotateKey( spep_5 -3 + 40, 1, 6.6 );
setRotateKey( spep_5 -3 + 42, 1, 6.2 );
setRotateKey( spep_5 -3 + 44, 1, 5.8 );
setRotateKey( spep_5 -3 + 46, 1, 5.4 );
setRotateKey( spep_5 -3 + 48, 1, 5 );
--setRotateKey( spep_5 -3 + 49, 1, 5 );

setAlphaKey( spep_5 + 2, 1, 255 );
setAlphaKey( spep_5 -3 + 48, 1, 255 );
--setAlphaKey( spep_5 -3 + 49, 1, 255 );

-- ** 音 ** --
--敵飛んでいく
SE035 = playSeVer2( spep_5 + 0, 1183, "", 0, 0, 0, -1);
setTimeStretch( SE035, 1.18, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 46;

------------------------------------------------------
-- 悟空が上空へ先回りして待ち構える(46F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
gmove_f = entryEffectLife( spep_6 + 0, SP_11r, 46, 0x100, -1, 0, 0, 0 );  -- 悟空が上空へ先回りして待ち構える(ef_007_front)
setEffMoveKey( spep_6 + 0, gmove_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, gmove_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gmove_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 46, gmove_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gmove_f, 0 );
setEffRotateKey( spep_6 + 46, gmove_f, 0 );
setEffAlphaKey( spep_6 + 0, gmove_f, 255 );
setEffAlphaKey( spep_6 + 46 -1, gmove_f, 255 );
setEffAlphaKey( spep_6 + 46, gmove_f, 0 );

gmove_b = entryEffectLife( spep_6 + 0, SP_12r, 46, 0x80, -1, 0, 0, 0 );  -- 悟空が上空へ先回りして待ち構える(ef_007_back)
setEffMoveKey( spep_6 + 0, gmove_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, gmove_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gmove_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 46, gmove_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gmove_b, 0 );
setEffRotateKey( spep_6 + 46, gmove_b, 0 );
setEffAlphaKey( spep_6 + 0, gmove_b, 255 );
setEffAlphaKey( spep_6 + 46 -1, gmove_b, 255 );
setEffAlphaKey( spep_6 + 46, gmove_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 49, 1, 0 );
changeAnime( spep_6 + 0, 1, 5 );

setMoveKey( spep_6 + 0, 1, 357.5, -436.9 , 0 );
setMoveKey( spep_6 + 1, 1, 297.5, -332.4 , 0 );
setMoveKey( spep_6 + 2, 1, 278.6, -300.8 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 265.6, -278.9 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 255, -261 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 245.6, -245.2 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 236.9, -230.6 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 228.6, -216.5 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 220.4, -202.6 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 212.2, -188.9 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 194.9, -162 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 178.6, -136.6 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 163.2, -112.6 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 148.4, -89.7 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 134.4, -68 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 120.9, -47.1 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 108.1, -27.2 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 95.7, -7.9 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 83.8, 10.4 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 72.3, 28.2 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 61.3, 45.3 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 50.7, 61.8 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 40.4, 77.7 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 30.5, 93.1 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 20.9, 107.9 , 0 );
setMoveKey( spep_6 -3 + 49, 1, 20.9, 107.9 , 0 );

setScaleKey( spep_6 + 0, 1, 6.33, 6.33 );
setScaleKey( spep_6 + 1, 1, 4.56, 4.55 );
setScaleKey( spep_6 + 2, 1, 4.25, 4.26 );
setScaleKey( spep_6 -3 + 6, 1, 4.07, 4.09 );
setScaleKey( spep_6 -3 + 8, 1, 3.94, 3.97 );
setScaleKey( spep_6 -3 + 10, 1, 3.84, 3.88 );
setScaleKey( spep_6 -3 + 12, 1, 3.76, 3.81 );
setScaleKey( spep_6 -3 + 14, 1, 3.69, 3.75 );
setScaleKey( spep_6 -3 + 16, 1, 3.63, 3.69 );
setScaleKey( spep_6 -3 + 18, 1, 3.57, 3.64 );
setScaleKey( spep_6 -3 + 20, 1, 3.4, 3.47 );
setScaleKey( spep_6 -3 + 22, 1, 3.25, 3.32 );
setScaleKey( spep_6 -3 + 24, 1, 3.11, 3.18 );
setScaleKey( spep_6 -3 + 26, 1, 2.98, 3.05 );
setScaleKey( spep_6 -3 + 28, 1, 2.85, 2.92 );
setScaleKey( spep_6 -3 + 30, 1, 2.73, 2.8 );
setScaleKey( spep_6 -3 + 32, 1, 2.62, 2.69 );
setScaleKey( spep_6 -3 + 34, 1, 2.51, 2.58 );
setScaleKey( spep_6 -3 + 36, 1, 2.41, 2.47 );
setScaleKey( spep_6 -3 + 38, 1, 2.31, 2.37 );
setScaleKey( spep_6 -3 + 40, 1, 2.22, 2.28 );
setScaleKey( spep_6 -3 + 42, 1, 2.13, 2.18 );
setScaleKey( spep_6 -3 + 44, 1, 2.05, 2.09 );
setScaleKey( spep_6 -3 + 46, 1, 1.96, 2 );
setScaleKey( spep_6 -3 + 48, 1, 1.88, 1.92 );
setScaleKey( spep_6 -3 + 49, 1, 1.88, 1.92 );

setRotateKey( spep_6 + 0, 1, -9 );
setRotateKey( spep_6 -3 + 49, 1, -9 );

-- ** 音 ** --
--瞬間移動
SE036 = playSeVer2( spep_6 + 4, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 46;

------------------------------------------------------
-- 悟空しゃべる(86F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
talk = entryEffectLife( spep_7 + 0, SP_13, 88, 0x100, -1, 0, 0, 0 );  -- 悟空しゃべる(ef_008)
setEffMoveKey( spep_7 + 0, talk, 0, 0 , 0 );
setEffMoveKey( spep_7 + 88, talk, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, talk, 1.0, 1.0 );
setEffScaleKey( spep_7 + 88, talk, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, talk, 0 );
setEffRotateKey( spep_7 + 88, talk, 0 );
setEffAlphaKey( spep_7 + 0, talk, 255 );
setEffAlphaKey( spep_7 + 88 -1, talk, 255 );
setEffAlphaKey( spep_7 + 88, talk, 0 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_7 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 35, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 35, 515.5 , 0 );
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
--顔カットイン
SE037 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 88 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_7 + 78, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 88;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
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

-- ** 白背景 ** --
entryFadeBg( spep_8 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 94;

------------------------------------------------------
-- 気合砲(76F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
kiaihou = entryEffectLife( spep_9 + 0, SP_14r, 76, 0x100, -1, 0, 0, 0 );  -- 気合砲(ef_009)
setEffMoveKey( spep_9 + 0, kiaihou, 0, 0 , 0 );
setEffMoveKey( spep_9 + 76, kiaihou, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, kiaihou, -1.0, 1.0 );
setEffScaleKey( spep_9 + 76, kiaihou, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, kiaihou, 0 );
setEffRotateKey( spep_9 + 76, kiaihou, 0 );
setEffAlphaKey( spep_9 + 0, kiaihou, 255 );
setEffAlphaKey( spep_9 + 76 -1, kiaihou, 255 );
setEffAlphaKey( spep_9 + 76, kiaihou, 0 );

-- ** 音 ** --
--気合砲放つ
SE039 = playSeVer2( spep_9 + 10, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 10, SE039, 89 );
SE040 = playSeVer2( spep_9 + 10, 1312, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_9 + 10, 1027, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 76;

------------------------------------------------------
-- 気合砲が敵にあたり敵が落下する(56F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
efall_f = entryEffectLife( spep_10 + 0, SP_15, 56, 0x100, -1, 0, 0, 0 );  -- 気合砲が敵にあたり敵が落下する(ef_010_front)
setEffMoveKey( spep_10 + 0, efall_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 56, efall_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, efall_f, -1.0, 1.0 );
setEffScaleKey( spep_10 + 56, efall_f, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, efall_f, 0 );
setEffRotateKey( spep_10 + 56, efall_f, 0 );
setEffAlphaKey( spep_10 + 0, efall_f, 255 );
setEffAlphaKey( spep_10 + 56 -1, efall_f, 255 );
setEffAlphaKey( spep_10 + 56, efall_f, 0 );

efall_b = entryEffectLife( spep_10 + 0, SP_16, 56, 0x80, -1, 0, 0, 0 );  -- 気合砲が敵にあたり敵が落下する(ef_010_back)
setEffMoveKey( spep_10 + 0, efall_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 56, efall_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, efall_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, efall_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, efall_b, 0 );
setEffRotateKey( spep_10 + 56, efall_b, 0 );
setEffAlphaKey( spep_10 + 0, efall_b, 255 );
setEffAlphaKey( spep_10 + 56 -1, efall_b, 255 );
setEffAlphaKey( spep_10 + 56, efall_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
--setDisp( spep_10 -3 + 59, 1, 0 );
changeAnime( spep_10 + 0, 1, 107 );
changeAnime( spep_10 -3 + 30, 1, 105 );

a10 = 80;
setMoveKey( spep_10 + 0, 1, -60.8 -a10, -430.3 , 0 );
setMoveKey( spep_10 + 1, 1, -34.8 -a10, -338.3 , 0 );
setMoveKey( spep_10 + 2, 1, -40.7 -a10, -238.3 , 0 );
setMoveKey( spep_10 -3 + 6, 1, -20.6 -a10, -162.8 , 0 );
setMoveKey( spep_10 -3 + 8, 1, -20.5 -a10, -127.3 , 0 );
setMoveKey( spep_10 -3 + 10, 1, -13.8 -a10, -130 , 0 );
setMoveKey( spep_10 -3 + 12, 1, -23.1 -a10, -148.9 , 0 );
setMoveKey( spep_10 -3 + 14, 1, -2.4 -a10, -171.1 , 0 );
setMoveKey( spep_10 -3 + 16, 1, 10.3 -a10, -161.4 , 0 );
setMoveKey( spep_10 -3 + 18, 1, 13.5 -a10, -158.1 , 0 );
setMoveKey( spep_10 -3 + 20, 1, 16.8 -a10, -126.9 , 0 );
setMoveKey( spep_10 -3 + 22, 1, 19.1 -a10, -115.1 , 0 );
setMoveKey( spep_10 -3 + 24, 1, 5.4 -a10, -119.2 , 0 );
setMoveKey( spep_10 -3 + 26, 1, 13.1 -a10, -125.2 , 0 );
setMoveKey( spep_10 -3 + 29, 1, 8.9 -a10, -143.1 , 0 );
setMoveKey( spep_10 -3 + 30, 1, -10.5, -26 , 0 );
setMoveKey( spep_10 -3 + 32, 1, -17.3, -6.5 , 0 );
setMoveKey( spep_10 -3 + 34, 1, -8.3, -16.9 , 0 );
setMoveKey( spep_10 -3 + 36, 1, -11.2, -19.2 , 0 );
setMoveKey( spep_10 -3 + 38, 1, -12.8, -18.6 , 0 );
setMoveKey( spep_10 -3 + 40, 1, -5.4, -10.9 , 0 );
setMoveKey( spep_10 -3 + 42, 1, -9.9, -11.3 , 0 );
setMoveKey( spep_10 -3 + 44, 1, -6.8, -8.6 , 0 );
setMoveKey( spep_10 -3 + 46, 1, -8.2, -8.5 , 0 );
setMoveKey( spep_10 -3 + 48, 1, -5.2, -8.7 , 0 );
setMoveKey( spep_10 -3 + 50, 1, -4.2, -7 , 0 );
setMoveKey( spep_10 -3 + 52, 1, -3.2, -5.3 , 0 );
setMoveKey( spep_10 -3 + 54, 1, -2.2, -3.5 , 0 );
setMoveKey( spep_10 -3 + 56, 1, -1.2, -1.8 , 0 );
setMoveKey( spep_10 -3 + 58, 1, -0.3, 0 , 0 );
--setMoveKey( spep_10 -3 + 59, 1, -0.3, 0 , 0 );

setScaleKey( spep_10 + 0, 1, 5, 5 );
setScaleKey( spep_10 + 1, 1, 4.35, 4.35 );
setScaleKey( spep_10 + 2, 1, 3.7, 3.7 );
setScaleKey( spep_10 -3 + 6, 1, 3.05, 3.05 );
setScaleKey( spep_10 -3 + 8, 1, 2.4, 2.4 );
setScaleKey( spep_10 -3 + 10, 1, 2.38, 2.38 );
setScaleKey( spep_10 -3 + 12, 1, 2.36, 2.36 );
setScaleKey( spep_10 -3 + 14, 1, 2.34, 2.34 );
setScaleKey( spep_10 -3 + 16, 1, 2.32, 2.32 );
setScaleKey( spep_10 -3 + 18, 1, 2.3, 2.3 );
setScaleKey( spep_10 -3 + 20, 1, 2.27, 2.27 );
setScaleKey( spep_10 -3 + 22, 1, 2.25, 2.25 );
setScaleKey( spep_10 -3 + 24, 1, 2.23, 2.23 );
setScaleKey( spep_10 -3 + 26, 1, 2.21, 2.21 );
setScaleKey( spep_10 -3 + 29, 1, 2.19, 2.19 );
setScaleKey( spep_10 -3 + 30, 1, 1.83, 1.83 );
setScaleKey( spep_10 -3 + 32, 1, 1.71, 1.71 );
setScaleKey( spep_10 -3 + 34, 1, 1.59, 1.59 );
setScaleKey( spep_10 -3 + 36, 1, 1.47, 1.47 );
setScaleKey( spep_10 -3 + 38, 1, 1.35, 1.35 );
setScaleKey( spep_10 -3 + 40, 1, 1.23, 1.23 );
setScaleKey( spep_10 -3 + 42, 1, 1.11, 1.11 );
setScaleKey( spep_10 -3 + 44, 1, 0.99, 0.99 );
setScaleKey( spep_10 -3 + 46, 1, 0.87, 0.87 );
setScaleKey( spep_10 -3 + 48, 1, 0.75, 0.75 );
setScaleKey( spep_10 -3 + 50, 1, 0.63, 0.63 );
setScaleKey( spep_10 -3 + 52, 1, 0.51, 0.51 );
setScaleKey( spep_10 -3 + 54, 1, 0.39, 0.39 );
setScaleKey( spep_10 -3 + 56, 1, 0.27, 0.27 );
setScaleKey( spep_10 -3 + 58, 1, 0.15, 0.15 );
--setScaleKey( spep_10 -3 + 59, 1, 0.15, 0.15 );

setRotateKey( spep_10 + 0, 1, -88 );
setRotateKey( spep_10 -3 + 29, 1, -88 );
setRotateKey( spep_10 -3 + 30, 1, 0 );
setRotateKey( spep_10 -3 + 58, 1, 0 );
--setRotateKey( spep_10 -3 + 59, 1, 0 );

-- ** 音 ** --
--敵ヒット
SE042 = playSeVer2( spep_10 + 0, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 0, SE042, 85 );
SE043 = playSeVer2( spep_10 + 0, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 0, SE043, 93 );

--敵飛んでいく
SE044 = playSeVer2( spep_10 + 30, 1027, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_10 + 46, 1121, "",spep_10 +56 + 54, 0, 10, -1);
setSeVolumeByWorkId( spep_10 + 46, SE045, 78 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 56;

------------------------------------------------------
-- 敵が海に落下(116F)
------------------------------------------------------
--spep_11 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, SP_17, 0x100, -1, 0, 0, 0 );  -- 敵が海に落下(ef_011_front)
setEffMoveKey( spep_11 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 166, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 166, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 166, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 166, finish_f, 255 );

finish_b = entryEffect( spep_11 + 0, SP_18, 0x80, -1, 0, 0, 0 );  -- 敵が海に落下(ef_011_back)
setEffMoveKey( spep_11 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_11 + 166, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 166, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_b, 0 );
setEffRotateKey( spep_11 + 166, finish_b, 0 );
setEffAlphaKey( spep_11 + 0, finish_b, 255 );
setEffAlphaKey( spep_11 + 166, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11 -3 + 46, 1, 0 );
changeAnime( spep_11 + 0, 1, 106 );

setMoveKey( spep_11 + 0, 1, 13.5, 496.5 , 0 );
setMoveKey( spep_11 + 1, 1, 11.8, 466.9 , 0 );
setMoveKey( spep_11 + 2, 1, 10.5, 441.5 , 0 );
setMoveKey( spep_11 -3 + 6, 1, 9.6, 419.5 , 0 );
setMoveKey( spep_11 -3 + 8, 1, 8.9, 400.1 , 0 );
setMoveKey( spep_11 -3 + 10, 1, 8.6, 382.5 , 0 );
setMoveKey( spep_11 -3 + 12, 1, 8.5, 366.1 , 0 );
setMoveKey( spep_11 -3 + 14, 1, 8.5, 350.1 , 0 );
setMoveKey( spep_11 -3 + 16, 1, 8.7, 333.9 , 0 );
setMoveKey( spep_11 -3 + 18, 1, 9, 316.9 , 0 );
setMoveKey( spep_11 -3 + 20, 1, 9.3, 298.4 , 0 );
setMoveKey( spep_11 -3 + 22, 1, 9.7, 277.9 , 0 );
setMoveKey( spep_11 -3 + 24, 1, 10, 254.6 , 0 );
setMoveKey( spep_11 -3 + 26, 1, 10.3, 227.9 , 0 );
setMoveKey( spep_11 -3 + 28, 1, 10.6, 197.3 , 0 );
setMoveKey( spep_11 -3 + 30, 1, 10.7, 161.9 , 0 );
setMoveKey( spep_11 -3 + 32, 1, 10.6, 121.2 , 0 );
setMoveKey( spep_11 -3 + 34, 1, 10.3, 74.4 , 0 );
setMoveKey( spep_11 -3 + 36, 1, 9.8, 20.7 , 0 );
setMoveKey( spep_11 -3 + 38, 1, 9, -40.7 , 0 );
setMoveKey( spep_11 -3 + 40, 1, 7.9, -110.8 , 0 );
setMoveKey( spep_11 -3 + 42, 1, 6.4, -190.3 , 0 );
setMoveKey( spep_11 -3 + 44, 1, 4.4, -280.5 , 0 );
setMoveKey( spep_11 -3 + 46, 1, 4.4, -280.5 , 0 );

setScaleKey( spep_11 + 0, 1, 0.55, 0.55 );
setScaleKey( spep_11 -3 + 44, 1, 0.55, 0.55 );
setScaleKey( spep_11 -3 + 46, 1, 0.55, 0.55 );

setRotateKey( spep_11 + 0, 1, 124.3 );
setRotateKey( spep_11 -3 + 44, 1, 124.3 );
setRotateKey( spep_11 -3 + 46, 1, 124.3 );

-- ** 音 ** --
--水面爆発
SE046 = playSeVer2( spep_11 + 34, 1163, "", 0, 2, 0, -1);
setStartTimeMs( SE046,  317 );
SE047 = playSeVer2( spep_11 + 38, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 42 );
endPhase( spep_11 + 156 );

end