--1026390:バビディ_切り札ダーブラ出撃！
--sp_effect_a1_00393

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
SP_01 = 161515; --バビディとダーブラの後ろ姿 カメラが少し引いて ef_001
SP_02 = 161516; --更にカメラが一気に引く→それを眺めている敵の後ろ姿 ef_002
SP_03 = 161517; --更にカメラが一気に引く→それを眺めている敵の後ろ姿 ef_002_b
SP_04 = 161518; --ニヤリと笑うバビディのアップ ef_003
SP_05 = 161519; --ダーブラが顔を正面に向けてにやける ef_004
SP_06 = 161521; --ダーブラが軽く屈む→そのまま姿がブレる→高速移動で消えるダーブラ ef_005
SP_07 = 161523; --下から迫ってくるダーブラ ef_006
SP_08 = 161525; --空中に飛び上がるダーブラ→飛び上がったところで停止 ef_007
SP_09 = 161527; --唾を吐きかけるダーブラ ef_008
SP_10 = 161528; --敵に唾が飛んでいく→カメラがアップになりつつ石化エフェクトが広がる ef_009
SP_11 = 161529; --敵に唾が飛んでいく→カメラがアップになりつつ石化エフェクトが広がる ef_009_b
SP_12 = 161530; --敵を見て笑うダーブラ→敵を見て笑うダーブラ→接近する ef_010
SP_13 = 161531; --敵の目の前に出現するダーブラ ef_011
SP_14 = 161533; --口を開けつつ気弾を生成する→画面に光が広がる ef_012
SP_15 = 161535; --石化した敵が気弾に飲まれていく→ダーブラが空中から戻ってきてフィニッシュ ef_013

--敵側
SP_01r = 161515; --バビディとダーブラの後ろ姿 カメラが少し引いて ef_001
SP_02r = 161516; --更にカメラが一気に引く→それを眺めている敵の後ろ姿 ef_002
SP_03r = 161517; --更にカメラが一気に引く→それを眺めている敵の後ろ姿 ef_002_b
SP_04r = 161518; --ニヤリと笑うバビディのアップ ef_003
SP_05r = 161520; --ダーブラが顔を正面に向けてにやける ef_004_r
SP_06r = 161522; --ダーブラが軽く屈む→そのまま姿がブレる→高速移動で消えるダーブラ ef_005_r
SP_07r = 161524; --下から迫ってくるダーブラ ef_006_r
SP_08r = 161526; --空中に飛び上がるダーブラ→飛び上がったところで停止 ef_007_r
SP_09r = 161527; --唾を吐きかけるダーブラ ef_008
SP_10r = 161528; --敵に唾が飛んでいく→カメラがアップになりつつ石化エフェクトが広がる ef_009
SP_11r = 161529; --敵に唾が飛んでいく→カメラがアップになりつつ石化エフェクトが広がる ef_009_b
SP_12r = 161530; --敵を見て笑うダーブラ→敵を見て笑うダーブラ→接近する ef_010
SP_13r = 161532; --敵の目の前に出現するダーブラ ef_011_r
SP_14r = 161534; --口を開けつつ気弾を生成する→画面に光が広がる ef_012_r
SP_15r = 161535; --石化した敵が気弾に飲まれていく→ダーブラが空中から戻ってきてフィニッシュ ef_013


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
--バビディとダーブラの後ろ姿 カメラが少し引いて (46F)
------------------------------------------------------

spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 46, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 46, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 46, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 46 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 46 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 46, first_f, 0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 366, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--画面遷移
SE002 = playSeVer2( spep_0 + 22, 1072, "", 0, 0, 0, 0.6);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 46 + 2, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 46;


------------------------------------------------------
--更にカメラが一気に引く→それを眺めている敵の後ろ姿 (76F)
------------------------------------------------------
-- ** エフェクト等 ** --
iwakage_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --ef_002
setEffMoveKey( spep_1 + 0, iwakage_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, iwakage_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, iwakage_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, iwakage_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, iwakage_f, 0 );
setEffRotateKey( spep_1 + 76, iwakage_f, 0 );
setEffAlphaKey( spep_1 + 0, iwakage_f, 255 );
setEffAlphaKey( spep_1 + 76 -2, iwakage_f, 255 );
setEffAlphaKey( spep_1 + 76 -1, iwakage_f, 255 );
setEffAlphaKey( spep_1 + 76, iwakage_f, 0 );

iwakage_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --ef_002_b
setEffMoveKey( spep_1 + 0, iwakage_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, iwakage_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, iwakage_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, iwakage_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, iwakage_b, 0 );
setEffRotateKey( spep_1 + 76, iwakage_b, 0 );
setEffAlphaKey( spep_1 + 0, iwakage_b, 255 );
setEffAlphaKey( spep_1 + 76 -2, iwakage_b, 255 );
setEffAlphaKey( spep_1 + 76 -1, iwakage_b, 255 );
setEffAlphaKey( spep_1 + 76, iwakage_b, 0 );


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 76, 1, 0 );
changeAnime( spep_1 + 0, 1, 118 );

setMoveKey( spep_1 + 0, 1, 3869.6, 697.6 , 0 );
setMoveKey( spep_1 + 1, 1, 2411, 376.8 , 0 );
setMoveKey( spep_1 + 2, 1, 2411, 376.8 , 0 );
setMoveKey( spep_1 + 3, 1, 1816.9, 248.4 , 0 );
setMoveKey( spep_1 + 4, 1, 1816.9, 248.4 , 0 );
setMoveKey( spep_1 + 5, 1, 1409.2, 160.3 , 0 );
setMoveKey( spep_1 + 6, 1, 1409.2, 160.3 , 0 );
setMoveKey( spep_1 + 7, 1, 1100, 93.5 , 0 );
setMoveKey( spep_1 + 8, 1, 1100, 93.5 , 0 );
setMoveKey( spep_1 + 9, 1, 854.8, 40.6 , 0 );
setMoveKey( spep_1 + 10, 1, 854.8, 40.6 , 0 );
setMoveKey( spep_1 + 11, 1, 655.9, -2.3 , 0 );
setMoveKey( spep_1 + 12, 1, 655.9, -2.3 , 0 );
setMoveKey( spep_1 + 13, 1, 493.3, -37.5 , 0 );
setMoveKey( spep_1 + 14, 1, 493.3, -37.5 , 0 );
setMoveKey( spep_1 + 15, 1, 360.2, -66.2 , 0 );
setMoveKey( spep_1 + 16, 1, 360.2, -66.2 , 0 );
setMoveKey( spep_1 + 17, 1, 252.5, -89.4 , 0 );
setMoveKey( spep_1 + 18, 1, 252.5, -89.4 , 0 );
setMoveKey( spep_1 + 19, 1, 167.4, -107.9 , 0 );
setMoveKey( spep_1 + 20, 1, 167.4, -107.9 , 0 );
setMoveKey( spep_1 + 21, 1, 103.8, -121.5 , 0 );
setMoveKey( spep_1 + 22, 1, 103.8, -121.5 , 0 );
setMoveKey( spep_1 + 23, 1, 64.4, -130 , 0 );
setMoveKey( spep_1 + 24, 1, 64.4, -130 , 0 );
setMoveKey( spep_1 + 25, 1, 64, -130.1 , 0 );
setMoveKey( spep_1 + 26, 1, 64, -130.1 , 0 );
setMoveKey( spep_1 + 27, 1, 63.6, -130.2 , 0 );
setMoveKey( spep_1 + 28, 1, 63.6, -130.2 , 0 );
setMoveKey( spep_1 + 29, 1, 63.3, -130.3 , 0 );
setMoveKey( spep_1 + 30, 1, 63.3, -130.3 , 0 );
setMoveKey( spep_1 + 31, 1, 62.9, -130.3 , 0 );
setMoveKey( spep_1 + 32, 1, 62.9, -130.3 , 0 );
setMoveKey( spep_1 + 33, 1, 62.5, -130.4 , 0 );
setMoveKey( spep_1 + 34, 1, 62.5, -130.4 , 0 );
setMoveKey( spep_1 + 35, 1, 62.2, -130.5 , 0 );
setMoveKey( spep_1 + 36, 1, 62.2, -130.5 , 0 );
setMoveKey( spep_1 + 37, 1, 61.8, -130.6 , 0 );
setMoveKey( spep_1 + 38, 1, 61.8, -130.6 , 0 );
setMoveKey( spep_1 + 39, 1, 61.3, -130.7 , 0 );
setMoveKey( spep_1 + 40, 1, 61.3, -130.7 , 0 );
setMoveKey( spep_1 + 41, 1, 61, -130.7 , 0 );
setMoveKey( spep_1 + 42, 1, 61, -130.7 , 0 );
setMoveKey( spep_1 + 43, 1, 60.6, -130.8 , 0 );
setMoveKey( spep_1 + 44, 1, 60.6, -130.8 , 0 );
setMoveKey( spep_1 + 45, 1, 60.3, -130.9 , 0 );
setMoveKey( spep_1 + 46, 1, 60.3, -130.9 , 0 );
setMoveKey( spep_1 + 47, 1, 59.9, -131 , 0 );
setMoveKey( spep_1 + 48, 1, 59.9, -131 , 0 );
setMoveKey( spep_1 + 49, 1, 59.5, -131.1 , 0 );
setMoveKey( spep_1 + 50, 1, 59.5, -131.1 , 0 );
setMoveKey( spep_1 + 51, 1, 59.1, -131.2 , 0 );
setMoveKey( spep_1 + 52, 1, 59.1, -131.2 , 0 );
setMoveKey( spep_1 + 53, 1, 58.7, -131.3 , 0 );
setMoveKey( spep_1 + 54, 1, 58.7, -131.3 , 0 );
setMoveKey( spep_1 + 55, 1, 58.4, -131.3 , 0 );
setMoveKey( spep_1 + 56, 1, 58.4, -131.3 , 0 );
setMoveKey( spep_1 + 57, 1, 57.9, -131.4 , 0 );
setMoveKey( spep_1 + 58, 1, 57.9, -131.4 , 0 );
setMoveKey( spep_1 + 59, 1, 57.6, -131.5 , 0 );
setMoveKey( spep_1 + 60, 1, 57.6, -131.5 , 0 );
setMoveKey( spep_1 + 61, 1, 57.2, -131.6 , 0 );
setMoveKey( spep_1 + 62, 1, 57.2, -131.6 , 0 );
setMoveKey( spep_1 + 63, 1, 56.9, -131.7 , 0 );
setMoveKey( spep_1 + 64, 1, 56.9, -131.7 , 0 );
setMoveKey( spep_1 + 65, 1, 56.5, -131.7 , 0 );
setMoveKey( spep_1 + 66, 1, 56.5, -131.7 , 0 );
setMoveKey( spep_1 + 67, 1, 56.1, -131.9 , 0 );
setMoveKey( spep_1 + 76, 1, 56.1, -131.9 , 0 );

setScaleKey( spep_1 + 0, 1, 10.77, 10.77 );
setScaleKey( spep_1 + 1, 1, 6.92, 6.88 );
setScaleKey( spep_1 + 2, 1, 6.92, 6.88 );
setScaleKey( spep_1 + 3, 1, 5.35, 5.32 );
setScaleKey( spep_1 + 4, 1, 5.35, 5.32 );
setScaleKey( spep_1 + 5, 1, 4.27, 4.25 );
setScaleKey( spep_1 + 6, 1, 4.27, 4.25 );
setScaleKey( spep_1 + 7, 1, 3.45, 3.43 );
setScaleKey( spep_1 + 8, 1, 3.45, 3.43 );
setScaleKey( spep_1 + 9, 1, 2.81, 2.79 );
setScaleKey( spep_1 + 10, 1, 2.81, 2.79 );
setScaleKey( spep_1 + 11, 1, 2.28, 2.27 );
setScaleKey( spep_1 + 12, 1, 2.28, 2.27 );
setScaleKey( spep_1 + 13, 1, 1.85, 1.84 );
setScaleKey( spep_1 + 14, 1, 1.85, 1.84 );
setScaleKey( spep_1 + 15, 1, 1.5, 1.49 );
setScaleKey( spep_1 + 16, 1, 1.5, 1.49 );
setScaleKey( spep_1 + 17, 1, 1.22, 1.21 );
setScaleKey( spep_1 + 18, 1, 1.22, 1.21 );
setScaleKey( spep_1 + 19, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 20, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 21, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 22, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 23, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 29, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 49, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 76, 1, 0.7, 0.7 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 76, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 76 + 2, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 76;


------------------------------------------------------
--ニヤリと笑うバビディのアップ (76F)
------------------------------------------------------
-- ** エフェクト等 ** --
niyari = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --ef_003
setEffMoveKey( spep_2 + 0, niyari, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76 + 20, niyari, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, niyari, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76 + 20, niyari, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, niyari, 0 );
setEffRotateKey( spep_2 + 76 + 20, niyari, 0 );
setEffAlphaKey( spep_2 + 0, niyari, 255 );
setEffAlphaKey( spep_2 + 76 + 20 -2, niyari, 255 );
setEffAlphaKey( spep_2 + 76 + 20 -1, niyari, 255 );
setEffAlphaKey( spep_2 + 76 + 20, niyari, 0 );

spep_x = spep_2 + 10;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--顔カットイン
SE003 = playSeVer2( spep_2 + 14, 1018, "", 0, 0, 0, -1);


-- ** 白フェードアウト ** --
entryFade( spep_2 + 68 + 20, 8, 0, 0, 255, 255, 255, 200);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 76 + 20 +2, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 76 + 20;



------------------------------------------------------
--ダーブラが顔を正面に向けてにやける (76F)
------------------------------------------------------
-- ** エフェクト等 ** --
syoumen = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --ef_004
setEffMoveKey( spep_3 + 0, syoumen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76 + 24, syoumen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, syoumen, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76 + 24, syoumen, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, syoumen, 0 );
setEffRotateKey( spep_3 + 76 + 24, syoumen, 0 );
setEffAlphaKey( spep_3 + 0, syoumen, 255 );
setEffAlphaKey( spep_3 + 76 + 24 -2, syoumen, 255 );
setEffAlphaKey( spep_3 + 76 + 24 -1, syoumen, 255 );
setEffAlphaKey( spep_3 + 76 + 24, syoumen, 0 );


-- ** 音 ** --
--セリフカットイン
SE004 = playSeVer2( spep_3 + 22, 1048, "", 0, 0, 0, -1);

--[[
-- ** 白フェードアウト ** --
entryFade( spep_3 + 68 + 24, 8, 0, 0, 255, 255, 255, 200);
]]

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76 + 20 +2, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76 + 24;


------------------------------------------------------
--ダーブラが軽く屈む→そのまま姿がブレる→高速移動で消えるダーブラ (56F)
------------------------------------------------------
-- ** エフェクト等 ** --
kieru = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --ef_005
setEffMoveKey( spep_4 + 0, kieru, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, kieru, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kieru, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, kieru, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kieru, 0 );
setEffRotateKey( spep_4 + 56, kieru, 0 );
setEffAlphaKey( spep_4 + 0, kieru, 255 );
setEffAlphaKey( spep_4 + 56 -2, kieru, 255 );
setEffAlphaKey( spep_4 + 56 -1, kieru, 255 );
setEffAlphaKey( spep_4 + 56, kieru, 0 );

-- ** 音 ** --
--瞬間移動
SE005 = playSeVer2( spep_4 + 28, 43, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 28, SE005, 79 );
SE006 = playSeVer2( spep_4 + 28, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 28, SE006, 79 );


-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;




--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_5 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_5 + 0, SE_05 );
--ダーブラ向かってくる
SE008 = playSeVer2( spep_5 + 92, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_5 + 92, 1116, "",spep_5 + 132, 0, 14, -1);

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;


------------------------------------------------------
--下から迫ってくるダーブラ (56F)
------------------------------------------------------
-- ** エフェクト等 ** --
semaru = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --ef_006
setEffMoveKey( spep_6 + 0, semaru, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, semaru, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, semaru, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, semaru, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, semaru, 0 );
setEffRotateKey( spep_6 + 56, semaru, 0 );
setEffAlphaKey( spep_6 + 0, semaru, 255 );
setEffAlphaKey( spep_6 + 56 -2, semaru, 255 );
setEffAlphaKey( spep_6 + 56 -1, semaru, 255 );
setEffAlphaKey( spep_6 + 56, semaru, 0 );


-- ** 音 ** --
--ダーブラ向かってくる
SE010 = playSeVer2( spep_6 + 8, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_6 + 8, SE010, 63 );


-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 56 + 2, 0, 0, 0, 0, 255 );  --黒 背景


-- ** 次の準備 ** --
spep_7 = spep_6 + 56;



------------------------------------------------------
--空中に飛び上がるダーブラ→飛び上がったところで停止 (66F)
------------------------------------------------------
-- ** エフェクト等 ** --
teishi = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --ef_007
setEffMoveKey( spep_7 + 0, teishi, 0, 0 , 0 );
setEffMoveKey( spep_7 + 66, teishi, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, teishi, 1.0, 1.0 );
setEffScaleKey( spep_7 + 66, teishi, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, teishi, 0 );
setEffRotateKey( spep_7 + 66, teishi, 0 );
setEffAlphaKey( spep_7 + 0, teishi, 255 );
setEffAlphaKey( spep_7 + 66 -2, teishi, 255 );
setEffAlphaKey( spep_7 + 66 -1, teishi, 255 );
setEffAlphaKey( spep_7 + 66, teishi, 0 );


-- ** 音 ** --
--空中で止まる
SE011 = playSeVer2( spep_7 + 0, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_7 + 14, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 14, SE012, 56 );


-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 66 + 2, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 66;


------------------------------------------------------
--唾を吐きかけるダーブラ (56F)
------------------------------------------------------
-- ** エフェクト等 ** --
tuba = entryEffect( spep_8 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --ef_008
setEffMoveKey( spep_8 + 0, tuba, 0, 0 , 0 );
setEffMoveKey( spep_8 + 56, tuba, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, tuba, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, tuba, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, tuba, 0 );
setEffRotateKey( spep_8 + 56, tuba, 0 );
setEffAlphaKey( spep_8 + 0, tuba, 255 );
setEffAlphaKey( spep_8 + 56 -2, tuba, 255 );
setEffAlphaKey( spep_8 + 56 -1, tuba, 255 );
setEffAlphaKey( spep_8 + 56, tuba, 0 );


-- ** 音 ** --
--唾飛ばす
SE013 = playSeVer2( spep_8 + 0, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 0, SE013, 52 );
setBandpassFilter( spep_8 + 0, SE013, 654, 24000 );
SE014 = playSeVer2( spep_8 + 0, 1117, "",spep_8 + 86, 0, 6, -1);
setSeVolumeByWorkId( spep_8 + 0, SE014, 71 );
SE015 = playSeVer2( spep_8 + 16, 1118, "",spep_8 + 86, 0, 6, -1);
setSeVolumeByWorkId( spep_8 + 16, SE015, 66 );


-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 56 + 2, 0, 0, 0, 0, 255 );  --黒 背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_8 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    
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


-- ** 次の準備 ** --
spep_9 = spep_8 + 56;



------------------------------------------------------
--敵に唾が飛んでいく→カメラがアップになりつつ石化エフェクトが広がる (56F)
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_9 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --ef_009
setEffMoveKey( spep_9 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 56, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, hit_f, 0 );
setEffRotateKey( spep_9 + 56, hit_f, 0 );
setEffAlphaKey( spep_9 + 0, hit_f, 255 );
setEffAlphaKey( spep_9 + 56 -2, hit_f, 255 );
setEffAlphaKey( spep_9 + 56 -1, hit_f, 255 );
setEffAlphaKey( spep_9 + 56, hit_f, 0 );

hit_b = entryEffect( spep_9 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --ef_009_b
setEffMoveKey( spep_9 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 56, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, hit_b, 0 );
setEffRotateKey( spep_9 + 56, hit_b, 0 );
setEffAlphaKey( spep_9 + 0, hit_b, 255 );
setEffAlphaKey( spep_9 + 56 -2, hit_b, 255 );
setEffAlphaKey( spep_9 + 56 -1, hit_b, 255 );
setEffAlphaKey( spep_9 + 56, hit_b, 0 );


n = 2;

-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 + 56, 1, 0 );
changeAnime( spep_9 + 0, 1, 104 );
changeAnime( spep_9 + 17 + n, 1, 106 );

setMoveKey( spep_9 + 0, 1, 9, 24.7 , 0 );
setMoveKey( spep_9 + 16 + n, 1, 9, 24.7 , 0 );
setMoveKey( spep_9 + 17 + n, 1, 8.9, 24.6 , 0 );
setMoveKey( spep_9 + 18 + n, 1, 8.9, 24.6 , 0 );
setMoveKey( spep_9 + 19 + n, 1, -0.1, 14.7 , 0 );
setMoveKey( spep_9 + 20 + n, 1, -0.1, 14.7 , 0 );
setMoveKey( spep_9 + 21 + n, 1, 23.9, 21.6 , 0 );
setMoveKey( spep_9 + 22 + n, 1, 23.9, 21.6 , 0 );
setMoveKey( spep_9 + 23 + n, 1, -5.1, 37.1 , 0 );
setMoveKey( spep_9 + 24 + n, 1, -5.1, 37.1 , 0 );
setMoveKey( spep_9 + 25 + n, 1, 13.4, 32.1 , 0 );
setMoveKey( spep_9 + 26 + n, 1, 13.4, 32.1 , 0 );
setMoveKey( spep_9 + 27 + n, 1, 11.1, 28.4 , 0 );
setMoveKey( spep_9 + 28 + n, 1, 11.1, 28.4 , 0 );
setMoveKey( spep_9 + 29 + n, 1, 8.9, 24.6 , 0 );
setMoveKey( spep_9 + 56, 1, 8.9, 24.6 , 0 );

setScaleKey( spep_9 + 0, 1, 1.65, 1.65 );
setScaleKey( spep_9 + 56, 1, 1.65, 1.65 );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9 + 16 + n, 1, 0 );
setRotateKey( spep_9 + 17 + n, 1, -58.2 );
setRotateKey( spep_9 + 56, 1, -58.2 );


-- ** 音 ** --
--石化する
SE016 = playSeVer2( spep_9 + 24, 1113, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_9 + 24, 1250, "",spep_9 + 136, 0, 26, -1);
setSeVolumeByWorkId( spep_9 + 24, SE017, 126 );


-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 56 + 2, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 56;


------------------------------------------------------
--敵を見て笑うダーブラ→敵を見て笑うダーブラ→接近する (42F)
------------------------------------------------------
-- ** エフェクト等 ** --
warau = entryEffect( spep_10 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --ef_0010
setEffMoveKey( spep_10 + 0, warau, 0, 0 , 0 );
setEffMoveKey( spep_10 + 42, warau, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, warau, 1.0, 1.0 );
setEffScaleKey( spep_10 + 42, warau, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, warau, 0 );
setEffRotateKey( spep_10 + 42, warau, 0 );
setEffAlphaKey( spep_10 + 0, warau, 255 );
setEffAlphaKey( spep_10 + 42 -2, warau, 255 );
setEffAlphaKey( spep_10 + 42 -1, warau, 255 );
setEffAlphaKey( spep_10 + 42, warau, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 42 + 2, 0, 0, 0, 0, 255 );  --黒 背景


-- ** 次の準備 ** --
spep_11 = spep_10 + 42;



------------------------------------------------------
--敵の目の前に出現するダーブラ (56F)
------------------------------------------------------
-- ** エフェクト等 ** --
sekkin = entryEffect( spep_11 + 0, SP_13, 0x100, -1, 0, 0, 0 );  --ef_011
setEffMoveKey( spep_11 + 0, sekkin, 0, 0 , 0 );
setEffMoveKey( spep_11 + 56, sekkin, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, sekkin, 1.0, 1.0 );
setEffScaleKey( spep_11 + 56, sekkin, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, sekkin, 0 );
setEffRotateKey( spep_11 + 56, sekkin, 0 );
setEffAlphaKey( spep_11 + 0, sekkin, 255 );
setEffAlphaKey( spep_11 + 56 -2, sekkin, 255 );
setEffAlphaKey( spep_11 + 56 -1, sekkin, 255 );
setEffAlphaKey( spep_11 + 56, sekkin, 0 );

-- ** 音 ** --
--瞬間移動
SE018 = playSeVer2( spep_11 + 10, 43, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 10, SE018, 72 );
SE019 = playSeVer2( spep_11 + 10, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 10, SE019, 79 );


-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 56 + 2, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_12 = spep_11 + 56;


------------------------------------------------------
--口を開けつつ気弾を生成する→画面に光が広がる (64F)
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_12 + 0, SP_14, 0x100, -1, 0, 0, 0 );  --ef_012
setEffMoveKey( spep_12 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_12 + 64, kidan, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_12 + 64, kidan, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, kidan, 0 );
setEffRotateKey( spep_12 + 64, kidan, 0 );
setEffAlphaKey( spep_12 + 0, kidan, 255 );
setEffAlphaKey( spep_12 + 64 -2, kidan, 255 );
setEffAlphaKey( spep_12 + 64 -1, kidan, 255 );
setEffAlphaKey( spep_12 + 64, kidan, 0 );

-- ** 音 ** --
--気弾溜め
SE020 = playSeVer2( spep_12 + 18, 1262, "", 0, 0, 0, 0.6);
SE021 = playSeVer2( spep_12 + 18, 1248, "", 0, 0, 0, 0.6);
SE022 = playSeVer2( spep_12 + 18, 1282, "", 0, 0, 0, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 64 + 2, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_13 = spep_12 + 64;


------------------------------------------------------
--石化した敵が気弾に飲まれていく→ダーブラが空中から戻ってきてフィニッシュ (176F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_13 + 0, SP_15, 0x100, -1, 0, 0, 0 );  --ef_013
setEffMoveKey( spep_13 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_13 + 176, finish, 0, 0 , 0 );
setEffScaleKey( spep_13 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_13 + 176, finish, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, finish, 0 );
setEffRotateKey( spep_13 + 176, finish, 0 );
setEffAlphaKey( spep_13 + 0, finish, 255 );
--setEffAlphaKey( spep_13 + 176 -2, finish, 255 );
--setEffAlphaKey( spep_13 + 176 -1, finish, 255 );
setEffAlphaKey( spep_13 + 176, finish, 255 );

-- ** 音 ** --
--気弾発射
SE023 = playSeVer2( spep_13 + 10, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 10, SE023, 89 );
SE024 = playSeVer2( spep_13 + 10, 1213, "",spep_13 + 120, 0, 76, -1);
SE025 = playSeVer2( spep_13 + 10, 1177, "",spep_13 + 120, 0, 76, -1);
setSeVolumeByWorkId( spep_13 + 10, SE025, 85 );

--着地
SE026 = playSeVer2( spep_13 + 70, 63, "",spep_13 + 140, 0, 4, 0.6);
SE027 = playSeVer2( spep_13 + 134, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 134, SE027, 158 );


-- ** 黒背景 ** --
entryFadeBg( spep_13 + 0, 0, 176 + 2, 0, 0, 0, 0, 255 );  --黒 背景


-- -- ** ダメージ表示 ** --
dealDamage( spep_13 + 6 ); -- ダメージ表示フレーム
endPhase( spep_13 + 176 ); -- 終了フレーム





else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
--バビディとダーブラの後ろ姿 カメラが少し引いて (46F)
------------------------------------------------------

spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 46, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 46, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 46, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 46 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 46 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 46, first_f, 0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 366, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--画面遷移
SE002 = playSeVer2( spep_0 + 22, 1072, "", 0, 0, 0, 0.6);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 46 + 2, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 46;


------------------------------------------------------
--更にカメラが一気に引く→それを眺めている敵の後ろ姿 (76F)
------------------------------------------------------
-- ** エフェクト等 ** --
iwakage_f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --ef_002
setEffMoveKey( spep_1 + 0, iwakage_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, iwakage_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, iwakage_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, iwakage_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, iwakage_f, 0 );
setEffRotateKey( spep_1 + 76, iwakage_f, 0 );
setEffAlphaKey( spep_1 + 0, iwakage_f, 255 );
setEffAlphaKey( spep_1 + 76 -2, iwakage_f, 255 );
setEffAlphaKey( spep_1 + 76 -1, iwakage_f, 255 );
setEffAlphaKey( spep_1 + 76, iwakage_f, 0 );

iwakage_b = entryEffect( spep_1 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --ef_002_b
setEffMoveKey( spep_1 + 0, iwakage_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, iwakage_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, iwakage_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, iwakage_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, iwakage_b, 0 );
setEffRotateKey( spep_1 + 76, iwakage_b, 0 );
setEffAlphaKey( spep_1 + 0, iwakage_b, 255 );
setEffAlphaKey( spep_1 + 76 -2, iwakage_b, 255 );
setEffAlphaKey( spep_1 + 76 -1, iwakage_b, 255 );
setEffAlphaKey( spep_1 + 76, iwakage_b, 0 );


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 76, 1, 0 );
changeAnime( spep_1 + 0, 1, 118 );

setMoveKey( spep_1 + 0, 1, 3869.6, 697.6 , 0 );
setMoveKey( spep_1 + 1, 1, 2411, 376.8 , 0 );
setMoveKey( spep_1 + 2, 1, 2411, 376.8 , 0 );
setMoveKey( spep_1 + 3, 1, 1816.9, 248.4 , 0 );
setMoveKey( spep_1 + 4, 1, 1816.9, 248.4 , 0 );
setMoveKey( spep_1 + 5, 1, 1409.2, 160.3 , 0 );
setMoveKey( spep_1 + 6, 1, 1409.2, 160.3 , 0 );
setMoveKey( spep_1 + 7, 1, 1100, 93.5 , 0 );
setMoveKey( spep_1 + 8, 1, 1100, 93.5 , 0 );
setMoveKey( spep_1 + 9, 1, 854.8, 40.6 , 0 );
setMoveKey( spep_1 + 10, 1, 854.8, 40.6 , 0 );
setMoveKey( spep_1 + 11, 1, 655.9, -2.3 , 0 );
setMoveKey( spep_1 + 12, 1, 655.9, -2.3 , 0 );
setMoveKey( spep_1 + 13, 1, 493.3, -37.5 , 0 );
setMoveKey( spep_1 + 14, 1, 493.3, -37.5 , 0 );
setMoveKey( spep_1 + 15, 1, 360.2, -66.2 , 0 );
setMoveKey( spep_1 + 16, 1, 360.2, -66.2 , 0 );
setMoveKey( spep_1 + 17, 1, 252.5, -89.4 , 0 );
setMoveKey( spep_1 + 18, 1, 252.5, -89.4 , 0 );
setMoveKey( spep_1 + 19, 1, 167.4, -107.9 , 0 );
setMoveKey( spep_1 + 20, 1, 167.4, -107.9 , 0 );
setMoveKey( spep_1 + 21, 1, 103.8, -121.5 , 0 );
setMoveKey( spep_1 + 22, 1, 103.8, -121.5 , 0 );
setMoveKey( spep_1 + 23, 1, 64.4, -130 , 0 );
setMoveKey( spep_1 + 24, 1, 64.4, -130 , 0 );
setMoveKey( spep_1 + 25, 1, 64, -130.1 , 0 );
setMoveKey( spep_1 + 26, 1, 64, -130.1 , 0 );
setMoveKey( spep_1 + 27, 1, 63.6, -130.2 , 0 );
setMoveKey( spep_1 + 28, 1, 63.6, -130.2 , 0 );
setMoveKey( spep_1 + 29, 1, 63.3, -130.3 , 0 );
setMoveKey( spep_1 + 30, 1, 63.3, -130.3 , 0 );
setMoveKey( spep_1 + 31, 1, 62.9, -130.3 , 0 );
setMoveKey( spep_1 + 32, 1, 62.9, -130.3 , 0 );
setMoveKey( spep_1 + 33, 1, 62.5, -130.4 , 0 );
setMoveKey( spep_1 + 34, 1, 62.5, -130.4 , 0 );
setMoveKey( spep_1 + 35, 1, 62.2, -130.5 , 0 );
setMoveKey( spep_1 + 36, 1, 62.2, -130.5 , 0 );
setMoveKey( spep_1 + 37, 1, 61.8, -130.6 , 0 );
setMoveKey( spep_1 + 38, 1, 61.8, -130.6 , 0 );
setMoveKey( spep_1 + 39, 1, 61.3, -130.7 , 0 );
setMoveKey( spep_1 + 40, 1, 61.3, -130.7 , 0 );
setMoveKey( spep_1 + 41, 1, 61, -130.7 , 0 );
setMoveKey( spep_1 + 42, 1, 61, -130.7 , 0 );
setMoveKey( spep_1 + 43, 1, 60.6, -130.8 , 0 );
setMoveKey( spep_1 + 44, 1, 60.6, -130.8 , 0 );
setMoveKey( spep_1 + 45, 1, 60.3, -130.9 , 0 );
setMoveKey( spep_1 + 46, 1, 60.3, -130.9 , 0 );
setMoveKey( spep_1 + 47, 1, 59.9, -131 , 0 );
setMoveKey( spep_1 + 48, 1, 59.9, -131 , 0 );
setMoveKey( spep_1 + 49, 1, 59.5, -131.1 , 0 );
setMoveKey( spep_1 + 50, 1, 59.5, -131.1 , 0 );
setMoveKey( spep_1 + 51, 1, 59.1, -131.2 , 0 );
setMoveKey( spep_1 + 52, 1, 59.1, -131.2 , 0 );
setMoveKey( spep_1 + 53, 1, 58.7, -131.3 , 0 );
setMoveKey( spep_1 + 54, 1, 58.7, -131.3 , 0 );
setMoveKey( spep_1 + 55, 1, 58.4, -131.3 , 0 );
setMoveKey( spep_1 + 56, 1, 58.4, -131.3 , 0 );
setMoveKey( spep_1 + 57, 1, 57.9, -131.4 , 0 );
setMoveKey( spep_1 + 58, 1, 57.9, -131.4 , 0 );
setMoveKey( spep_1 + 59, 1, 57.6, -131.5 , 0 );
setMoveKey( spep_1 + 60, 1, 57.6, -131.5 , 0 );
setMoveKey( spep_1 + 61, 1, 57.2, -131.6 , 0 );
setMoveKey( spep_1 + 62, 1, 57.2, -131.6 , 0 );
setMoveKey( spep_1 + 63, 1, 56.9, -131.7 , 0 );
setMoveKey( spep_1 + 64, 1, 56.9, -131.7 , 0 );
setMoveKey( spep_1 + 65, 1, 56.5, -131.7 , 0 );
setMoveKey( spep_1 + 66, 1, 56.5, -131.7 , 0 );
setMoveKey( spep_1 + 67, 1, 56.1, -131.9 , 0 );
setMoveKey( spep_1 + 76, 1, 56.1, -131.9 , 0 );

setScaleKey( spep_1 + 0, 1, 10.77, 10.77 );
setScaleKey( spep_1 + 1, 1, 6.92, 6.88 );
setScaleKey( spep_1 + 2, 1, 6.92, 6.88 );
setScaleKey( spep_1 + 3, 1, 5.35, 5.32 );
setScaleKey( spep_1 + 4, 1, 5.35, 5.32 );
setScaleKey( spep_1 + 5, 1, 4.27, 4.25 );
setScaleKey( spep_1 + 6, 1, 4.27, 4.25 );
setScaleKey( spep_1 + 7, 1, 3.45, 3.43 );
setScaleKey( spep_1 + 8, 1, 3.45, 3.43 );
setScaleKey( spep_1 + 9, 1, 2.81, 2.79 );
setScaleKey( spep_1 + 10, 1, 2.81, 2.79 );
setScaleKey( spep_1 + 11, 1, 2.28, 2.27 );
setScaleKey( spep_1 + 12, 1, 2.28, 2.27 );
setScaleKey( spep_1 + 13, 1, 1.85, 1.84 );
setScaleKey( spep_1 + 14, 1, 1.85, 1.84 );
setScaleKey( spep_1 + 15, 1, 1.5, 1.49 );
setScaleKey( spep_1 + 16, 1, 1.5, 1.49 );
setScaleKey( spep_1 + 17, 1, 1.22, 1.21 );
setScaleKey( spep_1 + 18, 1, 1.22, 1.21 );
setScaleKey( spep_1 + 19, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 20, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 21, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 22, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 23, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 29, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 49, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 76, 1, 0.7, 0.7 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 76, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 76 + 2, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 76;


------------------------------------------------------
--ニヤリと笑うバビディのアップ (76F)
------------------------------------------------------
-- ** エフェクト等 ** --
niyari = entryEffect( spep_2 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --ef_003
setEffMoveKey( spep_2 + 0, niyari, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76 + 20, niyari, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, niyari, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76 + 20, niyari, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, niyari, 0 );
setEffRotateKey( spep_2 + 76 + 20, niyari, 0 );
setEffAlphaKey( spep_2 + 0, niyari, 255 );
setEffAlphaKey( spep_2 + 76 + 20 -2, niyari, 255 );
setEffAlphaKey( spep_2 + 76 + 20 -1, niyari, 255 );
setEffAlphaKey( spep_2 + 76 + 20, niyari, 0 );

spep_x = spep_2 + 10;

--[[
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
]]

-- ** 音 ** --
--顔カットイン
SE003 = playSeVer2( spep_2 + 14, 1018, "", 0, 0, 0, -1);


-- ** 白フェードアウト ** --
entryFade( spep_2 + 68 + 20, 8, 0, 0, 255, 255, 255, 200);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 76 + 20 +2, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 76 + 20;


------------------------------------------------------
--ダーブラが顔を正面に向けてにやける (76F)
------------------------------------------------------
-- ** エフェクト等 ** --
syoumen = entryEffect( spep_3 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --ef_004
setEffMoveKey( spep_3 + 0, syoumen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76 + 24, syoumen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, syoumen, -1.0, 1.0 );
setEffScaleKey( spep_3 + 76 + 24, syoumen, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, syoumen, 0 );
setEffRotateKey( spep_3 + 76 + 24, syoumen, 0 );
setEffAlphaKey( spep_3 + 0, syoumen, 255 );
setEffAlphaKey( spep_3 + 76 + 24 -2, syoumen, 255 );
setEffAlphaKey( spep_3 + 76 + 24 -1, syoumen, 255 );
setEffAlphaKey( spep_3 + 76 + 24, syoumen, 0 );


-- ** 音 ** --
--セリフカットイン
SE004 = playSeVer2( spep_3 + 22, 1048, "", 0, 0, 0, -1);

--[[
-- ** 白フェードアウト ** --
entryFade( spep_3 + 68 + 24, 8, 0, 0, 255, 255, 255, 200);
]]

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76 + 20 +2, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76 + 24;


------------------------------------------------------
--ダーブラが軽く屈む→そのまま姿がブレる→高速移動で消えるダーブラ (56F)
------------------------------------------------------
-- ** エフェクト等 ** --
kieru = entryEffect( spep_4 + 0, SP_06r, 0x100, -1, 0, 0, 0 );  --ef_005
setEffMoveKey( spep_4 + 0, kieru, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, kieru, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kieru, -1.0, 1.0 );
setEffScaleKey( spep_4 + 56, kieru, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kieru, 0 );
setEffRotateKey( spep_4 + 56, kieru, 0 );
setEffAlphaKey( spep_4 + 0, kieru, 255 );
setEffAlphaKey( spep_4 + 56 -2, kieru, 255 );
setEffAlphaKey( spep_4 + 56 -1, kieru, 255 );
setEffAlphaKey( spep_4 + 56, kieru, 0 );

-- ** 音 ** --
--瞬間移動
SE005 = playSeVer2( spep_4 + 28, 43, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 28, SE005, 79 );
SE006 = playSeVer2( spep_4 + 28, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 28, SE006, 79 );


-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_5 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );


--ダーブラ向かってくる
SE008 = playSeVer2( spep_5 + 92, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_5 + 92, 1116, "",spep_5 + 132, 0, 14, -1);

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;


------------------------------------------------------
--下から迫ってくるダーブラ (56F)
------------------------------------------------------
-- ** エフェクト等 ** --
semaru = entryEffect( spep_6 + 0, SP_07r, 0x100, -1, 0, 0, 0 );  --ef_006
setEffMoveKey( spep_6 + 0, semaru, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, semaru, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, semaru, -1.0, 1.0 );
setEffScaleKey( spep_6 + 56, semaru, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, semaru, 0 );
setEffRotateKey( spep_6 + 56, semaru, 0 );
setEffAlphaKey( spep_6 + 0, semaru, 255 );
setEffAlphaKey( spep_6 + 56 -2, semaru, 255 );
setEffAlphaKey( spep_6 + 56 -1, semaru, 255 );
setEffAlphaKey( spep_6 + 56, semaru, 0 );


-- ** 音 ** --
--ダーブラ向かってくる
SE010 = playSeVer2( spep_6 + 8, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_6 + 8, SE010, 63 );


-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 56 + 2, 0, 0, 0, 0, 255 );  --黒 背景


-- ** 次の準備 ** --
spep_7 = spep_6 + 56;



------------------------------------------------------
--空中に飛び上がるダーブラ→飛び上がったところで停止 (66F)
------------------------------------------------------
-- ** エフェクト等 ** --
teishi = entryEffect( spep_7 + 0, SP_08r, 0x100, -1, 0, 0, 0 );  --ef_007
setEffMoveKey( spep_7 + 0, teishi, 0, 0 , 0 );
setEffMoveKey( spep_7 + 66, teishi, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, teishi, -1.0, 1.0 );
setEffScaleKey( spep_7 + 66, teishi, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, teishi, 0 );
setEffRotateKey( spep_7 + 66, teishi, 0 );
setEffAlphaKey( spep_7 + 0, teishi, 255 );
setEffAlphaKey( spep_7 + 66 -2, teishi, 255 );
setEffAlphaKey( spep_7 + 66 -1, teishi, 255 );
setEffAlphaKey( spep_7 + 66, teishi, 0 );


-- ** 音 ** --
--空中で止まる
SE011 = playSeVer2( spep_7 + 0, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_7 + 14, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 14, SE012, 56 );


-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 66 + 2, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 66;


------------------------------------------------------
--唾を吐きかけるダーブラ (56F)
------------------------------------------------------
-- ** エフェクト等 ** --
tuba = entryEffect( spep_8 + 0, SP_09r, 0x100, -1, 0, 0, 0 );  --ef_008
setEffMoveKey( spep_8 + 0, tuba, 0, 0 , 0 );
setEffMoveKey( spep_8 + 56, tuba, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, tuba, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, tuba, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, tuba, 0 );
setEffRotateKey( spep_8 + 56, tuba, 0 );
setEffAlphaKey( spep_8 + 0, tuba, 255 );
setEffAlphaKey( spep_8 + 56 -2, tuba, 255 );
setEffAlphaKey( spep_8 + 56 -1, tuba, 255 );
setEffAlphaKey( spep_8 + 56, tuba, 0 );


-- ** 音 ** --
--唾飛ばす
SE013 = playSeVer2( spep_8 + 0, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 0, SE013, 52 );
setBandpassFilter( spep_8 + 0, SE013, 654, 24000 );
SE014 = playSeVer2( spep_8 + 0, 1117, "",spep_8 + 86, 0, 6, -1);
setSeVolumeByWorkId( spep_8 + 0, SE014, 71 );
SE015 = playSeVer2( spep_8 + 16, 1118, "",spep_8 + 86, 0, 6, -1);
setSeVolumeByWorkId( spep_8 + 16, SE015, 66 );


-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 56 + 2, 0, 0, 0, 0, 255 );  --黒 背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_8 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    
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


-- ** 次の準備 ** --
spep_9 = spep_8 + 56;



------------------------------------------------------
--敵に唾が飛んでいく→カメラがアップになりつつ石化エフェクトが広がる (56F)
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_9 + 0, SP_10r, 0x100, -1, 0, 0, 0 );  --ef_009
setEffMoveKey( spep_9 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 56, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, hit_f, 0 );
setEffRotateKey( spep_9 + 56, hit_f, 0 );
setEffAlphaKey( spep_9 + 0, hit_f, 255 );
setEffAlphaKey( spep_9 + 56 -2, hit_f, 255 );
setEffAlphaKey( spep_9 + 56 -1, hit_f, 255 );
setEffAlphaKey( spep_9 + 56, hit_f, 0 );

hit_b = entryEffect( spep_9 + 0, SP_11r, 0x80, -1, 0, 0, 0 );  --ef_009_b
setEffMoveKey( spep_9 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 56, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, hit_b, 0 );
setEffRotateKey( spep_9 + 56, hit_b, 0 );
setEffAlphaKey( spep_9 + 0, hit_b, 255 );
setEffAlphaKey( spep_9 + 56 -2, hit_b, 255 );
setEffAlphaKey( spep_9 + 56 -1, hit_b, 255 );
setEffAlphaKey( spep_9 + 56, hit_b, 0 );

n = 2;

-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 + 56, 1, 0 );
changeAnime( spep_9 + 0, 1, 104 );
changeAnime( spep_9 + 17 + n, 1, 106 );

setMoveKey( spep_9 + 0, 1, 9, 24.7 , 0 );
setMoveKey( spep_9 + 16 + n, 1, 9, 24.7 , 0 );
setMoveKey( spep_9 + 17 + n, 1, 8.9, 24.6 , 0 );
setMoveKey( spep_9 + 18 + n, 1, 8.9, 24.6 , 0 );
setMoveKey( spep_9 + 19 + n, 1, -0.1, 14.7 , 0 );
setMoveKey( spep_9 + 20 + n, 1, -0.1, 14.7 , 0 );
setMoveKey( spep_9 + 21 + n, 1, 23.9, 21.6 , 0 );
setMoveKey( spep_9 + 22 + n, 1, 23.9, 21.6 , 0 );
setMoveKey( spep_9 + 23 + n, 1, -5.1, 37.1 , 0 );
setMoveKey( spep_9 + 24 + n, 1, -5.1, 37.1 , 0 );
setMoveKey( spep_9 + 25 + n, 1, 13.4, 32.1 , 0 );
setMoveKey( spep_9 + 26 + n, 1, 13.4, 32.1 , 0 );
setMoveKey( spep_9 + 27 + n, 1, 11.1, 28.4 , 0 );
setMoveKey( spep_9 + 28 + n, 1, 11.1, 28.4 , 0 );
setMoveKey( spep_9 + 29 + n, 1, 8.9, 24.6 , 0 );
setMoveKey( spep_9 + 56, 1, 8.9, 24.6 , 0 );

setScaleKey( spep_9 + 0, 1, 1.65, 1.65 );
setScaleKey( spep_9 + 56, 1, 1.65, 1.65 );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9 + 16 + n, 1, 0 );
setRotateKey( spep_9 + 17 + n, 1, -58.2 );
setRotateKey( spep_9 + 56, 1, -58.2 );


-- ** 音 ** --
--石化する
SE016 = playSeVer2( spep_9 + 24, 1113, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_9 + 24, 1250, "",spep_9 + 136, 0, 26, -1);
setSeVolumeByWorkId( spep_9 + 24, SE017, 126 );


-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 56 + 2, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 56;

------------------------------------------------------
--敵を見て笑うダーブラ→敵を見て笑うダーブラ→接近する (42F)
------------------------------------------------------
-- ** エフェクト等 ** --
warau = entryEffect( spep_10 + 0, SP_12r, 0x100, -1, 0, 0, 0 );  --ef_0010
setEffMoveKey( spep_10 + 0, warau, 0, 0 , 0 );
setEffMoveKey( spep_10 + 42, warau, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, warau, 1.0, 1.0 );
setEffScaleKey( spep_10 + 42, warau, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, warau, 0 );
setEffRotateKey( spep_10 + 42, warau, 0 );
setEffAlphaKey( spep_10 + 0, warau, 255 );
setEffAlphaKey( spep_10 + 42 -2, warau, 255 );
setEffAlphaKey( spep_10 + 42 -1, warau, 255 );
setEffAlphaKey( spep_10 + 42, warau, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 42 + 2, 0, 0, 0, 0, 255 );  --黒 背景


-- ** 次の準備 ** --
spep_11 = spep_10 + 42;



------------------------------------------------------
--敵の目の前に出現するダーブラ (56F)
------------------------------------------------------
-- ** エフェクト等 ** --
sekkin = entryEffect( spep_11 + 0, SP_13r, 0x100, -1, 0, 0, 0 );  --ef_011
setEffMoveKey( spep_11 + 0, sekkin, 0, 0 , 0 );
setEffMoveKey( spep_11 + 56, sekkin, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, sekkin, -1.0, 1.0 );
setEffScaleKey( spep_11 + 56, sekkin, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, sekkin, 0 );
setEffRotateKey( spep_11 + 56, sekkin, 0 );
setEffAlphaKey( spep_11 + 0, sekkin, 255 );
setEffAlphaKey( spep_11 + 56 -2, sekkin, 255 );
setEffAlphaKey( spep_11 + 56 -1, sekkin, 255 );
setEffAlphaKey( spep_11 + 56, sekkin, 0 );

-- ** 音 ** --
--瞬間移動
SE018 = playSeVer2( spep_11 + 10, 43, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 10, SE018, 72 );
SE019 = playSeVer2( spep_11 + 10, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 10, SE019, 79 );


-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 56 + 2, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_12 = spep_11 + 56;


------------------------------------------------------
--口を開けつつ気弾を生成する→画面に光が広がる (64F)
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_12 + 0, SP_14, 0x100, -1, 0, 0, 0 );  --ef_012
setEffMoveKey( spep_12 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_12 + 64, kidan, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, kidan, -1.0, 1.0 );
setEffScaleKey( spep_12 + 64, kidan, -1.0, 1.0 );
setEffRotateKey( spep_12 + 0, kidan, 0 );
setEffRotateKey( spep_12 + 64, kidan, 0 );
setEffAlphaKey( spep_12 + 0, kidan, 255 );
setEffAlphaKey( spep_12 + 64 -2, kidan, 255 );
setEffAlphaKey( spep_12 + 64 -1, kidan, 255 );
setEffAlphaKey( spep_12 + 64, kidan, 0 );

-- ** 音 ** --
--気弾溜め
SE020 = playSeVer2( spep_12 + 18, 1262, "", 0, 0, 0, 0.6);
SE021 = playSeVer2( spep_12 + 18, 1248, "", 0, 0, 0, 0.6);
SE022 = playSeVer2( spep_12 + 18, 1282, "", 0, 0, 0, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 64 + 2, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_13 = spep_12 + 64;


------------------------------------------------------
--石化した敵が気弾に飲まれていく→ダーブラが空中から戻ってきてフィニッシュ (176F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_13 + 0, SP_15r, 0x100, -1, 0, 0, 0 );  --ef_013
setEffMoveKey( spep_13 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_13 + 176, finish, 0, 0 , 0 );
setEffScaleKey( spep_13 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_13 + 176, finish, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, finish, 0 );
setEffRotateKey( spep_13 + 176, finish, 0 );
setEffAlphaKey( spep_13 + 0, finish, 255 );
--setEffAlphaKey( spep_13 + 176 -2, finish, 255 );
--setEffAlphaKey( spep_13 + 176 -1, finish, 255 );
setEffAlphaKey( spep_13 + 176, finish, 255 );

-- ** 音 ** --
--気弾発射
SE023 = playSeVer2( spep_13 + 10, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 10, SE023, 89 );
SE024 = playSeVer2( spep_13 + 10, 1213, "",spep_13 + 120, 0, 76, -1);
SE025 = playSeVer2( spep_13 + 10, 1177, "",spep_13 + 120, 0, 76, -1);
setSeVolumeByWorkId( spep_13 + 10, SE025, 85 );

--着地
SE026 = playSeVer2( spep_13 + 70, 63, "",spep_13 + 140, 0, 4, 0.6);
SE027 = playSeVer2( spep_13 + 134, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 134, SE027, 158 );


-- ** 黒背景 ** --
entryFadeBg( spep_13 + 0, 0, 176 + 2, 0, 0, 0, 0, 255 );  --黒 背景


-- -- ** ダメージ表示 ** --
dealDamage( spep_13 + 6 ); -- ダメージ表示フレーム
endPhase( spep_13 + 176 ); -- 終了フレーム


end