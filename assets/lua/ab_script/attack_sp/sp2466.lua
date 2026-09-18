--1025530:ガンマ2号_必殺技：ガンマ・ブラスター
--sp_effect_b3_00003
--sp2466

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
SP_01 = 160750; --岩山〜ブラスターを撃つ ef_001_front
SP_02 = 160751; --岩山〜ブラスターを撃つ ef_001_back
SP_03 = 160754; --岩山に着弾して爆発 ef_002
SP_04 = 160755; --カメラ正面で得意げな顔とポーズ ef_003

--敵側
SP_01r = 160752; --岩山〜ブラスターを撃つ ef_001_front_re
SP_02r = 160753; --岩山〜ブラスターを撃つ ef_001_back_re


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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 岩山〜ブラスターを撃つ(976F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 975, 0x100, -1, 0, 0, 0 );  --岩山〜ブラスターを撃つ   ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 975, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 975, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 975, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 975 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 975, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 975, 0x80, -1, 0, 0, 0 );  --岩山〜ブラスターを撃つ   ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 975, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 975, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 975, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 975 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 975, first_b, 0 );

spep_x = spep_0 + 88;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 155, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 155, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 155, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
--敵の動き1
changeAnime( spep_0 + 0, 1, 100 );
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 68, 1, 0 );

setMoveKey( spep_0 + 0, 1, 2.6, 109.4 , 0 );
setMoveKey( spep_0 + 1, 1, 2.6, 109 , 0 );
setMoveKey( spep_0 + 2, 1, 2.6, 108.6 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 2.6, 108.2 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 2.6, 108.2 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 2.6, 107.9 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 2.6, 107.9 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 2.6, 107.5 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 2.6, 107.1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 2.6, 106.7 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 2.6, 106.4 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 2.6, 106 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 2.6, 105.6 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 2.6, 105.2 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 2.6, 104.9 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 2.6, 104.5 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 2.6, 104.1 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 2.6, 103.7 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 2.6, 103.4 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 2.6, 103 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 2.6, 102.6 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 2.6, 102.2 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 2.6, 101.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 2.6, 101.5 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 2.6, 101.1 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 2.6, 100.7 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 2.6, 100.4 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 2.6, 100 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 2.6, 99.6 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 2.6, 99.2 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 2.6, 98.9 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 2.6, 98.5 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 2.6, 98.1 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 2.6, 97.7 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 2.6, 97.4 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 2.6, 97.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 1, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 2, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 3, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 4, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 5, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 6, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 68, 1, 0.17, 0.17 );

setRotateKey( spep_0 + 0, 1, 3.8 );
setRotateKey( spep_0 + 1, 1, 3.8 );
setRotateKey( spep_0 + 2, 1, 3.8 );
setRotateKey( spep_0 + 3, 1, 3.8 );
setRotateKey( spep_0 + 4, 1, 3.8 );
setRotateKey( spep_0 + 5, 1, 3.8 );
setRotateKey( spep_0 + 6, 1, 3.8 );
setRotateKey( spep_0 -3 + 68, 1, 3.8 );

-- ** 敵キャラクター ** --
--敵の動き2
setDisp( spep_0 -3 + 192, 1, 1 );
changeAnime( spep_0 -3 + 192, 1, 100 );

setMoveKey( spep_0 -3 + 192, 1, 163.6, -76.8 , 0 );
setMoveKey( spep_0 -3 + 193, 1, 163.6, -76.8 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 161.2, -75.8 , 0 );
setMoveKey( spep_0 -3 + 195, 1, 161.2, -75.8 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 158, -74.5 , 0 );
setMoveKey( spep_0 -3 + 197, 1, 158, -74.5 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 154.3, -72.9 , 0 );
setMoveKey( spep_0 -3 + 199, 1, 154.3, -72.9 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 150.1, -71.2 , 0 );
setMoveKey( spep_0 -3 + 201, 1, 150.1, -71.2 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 145.6, -69.3 , 0 );
setMoveKey( spep_0 -3 + 203, 1, 145.6, -69.3 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 140.5, -67.2 , 0 );
setMoveKey( spep_0 -3 + 205, 1, 140.5, -67.2 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 134.9, -64.9 , 0 );
setMoveKey( spep_0 -3 + 207, 1, 134.9, -64.9 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 128.4, -62.2 , 0 );
setMoveKey( spep_0 -3 + 209, 1, 128.4, -62.2 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 120.9, -59.1 , 0 );
setMoveKey( spep_0 -3 + 211, 1, 120.9, -59.1 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 112.1, -55.5 , 0 );
setMoveKey( spep_0 -3 + 213, 1, 112.1, -55.5 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 101.7, -51.2 , 0 );
setMoveKey( spep_0 -3 + 215, 1, 101.7, -51.2 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 90.1, -46.3 , 0 );
setMoveKey( spep_0 -3 + 217, 1, 90.1, -46.3 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 78.1, -41.3 , 0 );
setMoveKey( spep_0 -3 + 219, 1, 78.1, -41.3 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 66.1, -36.8 , 0 );
setMoveKey( spep_0 -3 + 221, 1, 66.1, -36.8 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 62.5, -38.9 , 0 );
setMoveKey( spep_0 -3 + 223, 1, 62.5, -38.9 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 58.8, -41 , 0 );

setScaleKey( spep_0 -3 + 192, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 200, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 202, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 214, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 216, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 218, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 220, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 222, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 224, 1, 0.27, 0.27 );

setRotateKey( spep_0 -3 + 192, 1, -3 );
setRotateKey( spep_0 -3 + 193, 1, -3 );
setRotateKey( spep_0 -3 + 194, 1, -2.8 );
setRotateKey( spep_0 -3 + 195, 1, -2.8 );
setRotateKey( spep_0 -3 + 196, 1, -2.5 );
setRotateKey( spep_0 -3 + 197, 1, -2.5 );
setRotateKey( spep_0 -3 + 198, 1, -2.2 );
setRotateKey( spep_0 -3 + 199, 1, -2.2 );
setRotateKey( spep_0 -3 + 200, 1, -1.9 );
setRotateKey( spep_0 -3 + 201, 1, -1.9 );
setRotateKey( spep_0 -3 + 202, 1, -1.5 );
setRotateKey( spep_0 -3 + 203, 1, -1.5 );
setRotateKey( spep_0 -3 + 204, 1, -1.1 );
setRotateKey( spep_0 -3 + 205, 1, -1.1 );
setRotateKey( spep_0 -3 + 206, 1, -0.7 );
setRotateKey( spep_0 -3 + 207, 1, -0.7 );
setRotateKey( spep_0 -3 + 208, 1, -0.1 );
setRotateKey( spep_0 -3 + 209, 1, -0.1 );
setRotateKey( spep_0 -3 + 210, 1, 0.5 );
setRotateKey( spep_0 -3 + 211, 1, 0.5 );
setRotateKey( spep_0 -3 + 212, 1, 1.2 );
setRotateKey( spep_0 -3 + 213, 1, 1.2 );
setRotateKey( spep_0 -3 + 214, 1, 2 );
setRotateKey( spep_0 -3 + 215, 1, 2 );
setRotateKey( spep_0 -3 + 216, 1, 3 );
setRotateKey( spep_0 -3 + 217, 1, 3 );
setRotateKey( spep_0 -3 + 218, 1, 4 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 226, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 47 );

--マント翻る
SE003 = playSeVer2( spep_0 + 14, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 60 );

--マント翻る
SE005 = playSeVer2( spep_0 + 78, 1332, "", 0, 0, 0, -1);

--指を差す
SE004 = playSeVer2( spep_0 + 88, 1233, "", 0, 4, 0, -1);
setStartTimeMs( SE004,  100 );
SE006 = playSeVer2( spep_0 + 88, 1189, "", 0, 0, 0, -1);

--顔カットイン
SE007 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--マント翻る
SE008 = playSeVer2( spep_0 + 130, 1332, "", 0, 0, 0, -1);

--向かっていく
SE009 = playSeVer2( spep_0 + 196, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 196, 9, "",spep_0 + 252, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 196, SE010, 70 );
SE011 = playSeVer2( spep_0 + 202, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE011, 52 );
SE012 = playSeVer2( spep_0 + 202, 1277, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 975 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 222 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 58.8, -41 , 0 );
    setMoveKey( SP_dodge + 1, 1, 55.2, -43.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 55.2, -43.2 , 0 );
    setMoveKey( SP_dodge + 3, 1, 51.6, -45.3 , 0 );
    setMoveKey( SP_dodge + 4, 1, 51.6, -45.3 , 0 );
    setMoveKey( SP_dodge + 5, 1, 47.9, -47.4 , 0 );
    setMoveKey( SP_dodge + 6, 1, 47.9, -47.4 , 0 );
    setMoveKey( SP_dodge + 7, 1, 44.3, -49.5 , 0 );
    setMoveKey( SP_dodge + 8, 1, 44.3, -49.5 , 0 );
    setMoveKey( SP_dodge + 9, 1, 40.6, -51.7 , 0 );
    setMoveKey( SP_dodge + 10, 1, 40.6, -51.7 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.27, 0.27 );
    setScaleKey( SP_dodge + 1, 1, 0.35, 0.35 );
    setScaleKey( SP_dodge + 2, 1, 0.35, 0.35 );
    setScaleKey( SP_dodge + 3, 1, 0.42, 0.42 );
    setScaleKey( SP_dodge + 4, 1, 0.42, 0.42 );
    setScaleKey( SP_dodge + 5, 1, 0.49, 0.49 );
    setScaleKey( SP_dodge + 6, 1, 0.49, 0.49 );
    setScaleKey( SP_dodge + 7, 1, 0.57, 0.57 );
    setScaleKey( SP_dodge + 8, 1, 0.57, 0.57 );
    setScaleKey( SP_dodge + 9, 1, 0.64, 0.64 );
    setScaleKey( SP_dodge + 10, 1, 0.64, 0.64 );

    setRotateKey( SP_dodge + 0, 1, 4 );
    setRotateKey( SP_dodge + 10, 1, 4 );    
    
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
setDisp( spep_0 -3 + 240, 1, 0 );

setMoveKey( spep_0 -3 + 225, 1, 58.8, -41 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 55.2, -43.2 , 0 );
setMoveKey( spep_0 -3 + 227, 1, 55.2, -43.2 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 51.6, -45.3 , 0 );
setMoveKey( spep_0 -3 + 229, 1, 51.6, -45.3 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 47.9, -47.4 , 0 );
setMoveKey( spep_0 -3 + 231, 1, 47.9, -47.4 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 44.3, -49.5 , 0 );
setMoveKey( spep_0 -3 + 233, 1, 44.3, -49.5 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 40.6, -51.7 , 0 );
setMoveKey( spep_0 -3 + 235, 1, 40.6, -51.7 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 38.1, -51.7 , 0 );
setMoveKey( spep_0 -3 + 237, 1, 38.1, -51.7 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 38.1, -51.7 , 0 );

setScaleKey( spep_0 -3 + 225, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 226, 1, 0.35, 0.35 );
setScaleKey( spep_0 -3 + 227, 1, 0.35, 0.35 );
setScaleKey( spep_0 -3 + 228, 1, 0.42, 0.42 );
setScaleKey( spep_0 -3 + 229, 1, 0.42, 0.42 );
setScaleKey( spep_0 -3 + 230, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 231, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 232, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 233, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 234, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 235, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 236, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 240, 1, 0.72, 0.72 );

setRotateKey( spep_0 -3 + 240, 1, 4 );


-- ** 敵キャラクター ** --
--敵の動き3
setDisp( spep_0 -3 + 270, 1, 1 );
setDisp( spep_0 -3 + 500, 1, 0 );
changeAnime( spep_0 -3 + 270, 1, 108 );
changeAnime( spep_0 -3 + 360, 1, 106 );
changeAnime( spep_0 -3 + 434, 1, 108 );

setMoveKey( spep_0 -3 + 270, 1, 109.8, 41.3 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 89.7, 15.2 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 69.4, 0.8 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 52.3, -5.8 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 39.9, -8 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 32.4, -8.3 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 30, -8.2 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 29, -9.2 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 26, -9.2 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 26, -9.2 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 26, -7.2 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 24, -5.2 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 30, -7.2 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 29, -4.2 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 29, -5.2 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 29, -7.2 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 33, -8.2 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 27, -6.2 , 0 );
setMoveKey( spep_0 -3 + 306, 1, 31, -6.2 , 0 );
setMoveKey( spep_0 -3 + 308, 1, 29, -6.2 , 0 );
setMoveKey( spep_0 -3 + 310, 1, 29, -5.2 , 0 );
setMoveKey( spep_0 -3 + 312, 1, 28, -6.2 , 0 );
setMoveKey( spep_0 -3 + 314, 1, 28, -7.2 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 32, -8.2 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 31, -10.2 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 29, -7.2 , 0 );
setMoveKey( spep_0 -3 + 322, 1, 31, -6.2 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 32, -8.2 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 30, -8.2 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 30, -8.2 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 30, -7.2 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 29, -8.2 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 29, -5.2 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 33, -5.2 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 34, -5.2 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 29, -7.2 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 29, -6.2 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 28, -6.2 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 26, -7.2 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 26, -7.2 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 28, -7.2 , 0 );
setMoveKey( spep_0 -3 + 352, 1, 34, -8.2 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 31, -7.2 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 30, -8.2 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 30, -8.2 , 0 );
setMoveKey( spep_0 -3 + 359, 1, 30, -8.2 , 0 );--
setMoveKey( spep_0 -3 + 360, 1, 30, -8.2 , 0 );
setMoveKey( spep_0 -3 + 362, 1, -115.3, 113.5 , 0 );
setMoveKey( spep_0 -3 + 364, 1, -219.4, 200.7 , 0 );
setMoveKey( spep_0 -3 + 366, 1, -289.2, 259.2 , 0 );
setMoveKey( spep_0 -3 + 368, 1, -331.5, 294.6 , 0 );
setMoveKey( spep_0 -3 + 370, 1, -353.3, 312.9 , 0 );
setMoveKey( spep_0 -3 + 372, 1, -361.3, 319.6 , 0 );
setMoveKey( spep_0 -3 + 374, 1, -362.4, 320.5 , 0 );
setMoveKey( spep_0 -3 + 376, 1, -362.4, 320.5 , 0 );
setMoveKey( spep_0 -3 + 378, 1, -362.3, 320.4 , 0 );
setMoveKey( spep_0 -3 + 380, 1, -362, 320.2 , 0 );
setMoveKey( spep_0 -3 + 382, 1, -361.4, 319.7 , 0 );
setMoveKey( spep_0 -3 + 384, 1, -360.4, 318.8 , 0 );
setMoveKey( spep_0 -3 + 386, 1, -358.9, 317.6 , 0 );
setMoveKey( spep_0 -3 + 388, 1, -356.9, 315.9 , 0 );
setMoveKey( spep_0 -3 + 390, 1, -354.2, 313.6 , 0 );
setMoveKey( spep_0 -3 + 392, 1, -350.7, 310.7 , 0 );
setMoveKey( spep_0 -3 + 394, 1, -346.3, 307 , 0 );
setMoveKey( spep_0 -3 + 396, 1, -341, 302.6 , 0 );
setMoveKey( spep_0 -3 + 398, 1, -334.6, 297.2 , 0 );
setMoveKey( spep_0 -3 + 400, 1, -327.1, 290.9 , 0 );
setMoveKey( spep_0 -3 + 402, 1, -318.3, 283.5 , 0 );
setMoveKey( spep_0 -3 + 404, 1, -308.1, 275 , 0 );
setMoveKey( spep_0 -3 + 406, 1, -296.5, 265.3 , 0 );
setMoveKey( spep_0 -3 + 408, 1, -283.4, 254.3 , 0 );
setMoveKey( spep_0 -3 + 410, 1, -268.6, 241.9 , 0 );
setMoveKey( spep_0 -3 + 412, 1, -252.1, 228.1 , 0 );
setMoveKey( spep_0 -3 + 414, 1, -233.7, 212.7 , 0 );
setMoveKey( spep_0 -3 + 416, 1, -213.4, 195.7 , 0 );
setMoveKey( spep_0 -3 + 418, 1, -191.1, 177 , 0 );
setMoveKey( spep_0 -3 + 420, 1, -166.7, 156.5 , 0 );
setMoveKey( spep_0 -3 + 422, 1, -140, 134.2 , 0 );
setMoveKey( spep_0 -3 + 424, 1, -111, 109.9 , 0 );
setMoveKey( spep_0 -3 + 426, 1, -64.5, 78.6 , 0 );
setMoveKey( spep_0 -3 + 428, 1, -28.5, 48.5 , 0 );
setMoveKey( spep_0 -3 + 430, 1, -9.2, 24.6 , 0 );
setMoveKey( spep_0 -3 + 432, 1, 30, -8.2 , 0 );
setMoveKey( spep_0 -3 + 433, 1, 30, -8.2 , 0 );--
setMoveKey( spep_0 -3 + 434, 1, 137.7, 105.7 , 0 );
setMoveKey( spep_0 -3 + 436, 1, 131.7, 114.7 , 0 );
setMoveKey( spep_0 -3 + 438, 1, 131.7, 114.7 , 0 );
setMoveKey( spep_0 -3 + 440, 1, 136.7, 104.7 , 0 );
setMoveKey( spep_0 -3 + 442, 1, 129.7, 105.7 , 0 );
setMoveKey( spep_0 -3 + 444, 1, 129.7, 86.7 , 0 );
setMoveKey( spep_0 -3 + 446, 1, 132.7, 86.7 , 0 );
setMoveKey( spep_0 -3 + 448, 1, 133.7, 86.7 , 0 );
setMoveKey( spep_0 -3 + 450, 1, 133.7, 82.7 , 0 );
setMoveKey( spep_0 -3 + 452, 1, 132.7, 107.7 , 0 );
setMoveKey( spep_0 -3 + 454, 1, 140.7, 95.7 , 0 );
setMoveKey( spep_0 -3 + 456, 1, 134.7, 94.7 , 0 );
setMoveKey( spep_0 -3 + 458, 1, 133.7, 94.7 , 0 );
setMoveKey( spep_0 -3 + 460, 1, 137.7, 104.7 , 0 );
setMoveKey( spep_0 -3 + 462, 1, 136.7, 92.7 , 0 );
setMoveKey( spep_0 -3 + 464, 1, 136.7, 103.7 , 0 );
setMoveKey( spep_0 -3 + 466, 1, 135.7, 101.7 , 0 );
setMoveKey( spep_0 -3 + 468, 1, 135.7, 101.7 , 0 );
setMoveKey( spep_0 -3 + 470, 1, 135.7, 111.7 , 0 );
setMoveKey( spep_0 -3 + 472, 1, 138.7, 98.7 , 0 );
setMoveKey( spep_0 -3 + 474, 1, 135.7, 98.7 , 0 );
setMoveKey( spep_0 -3 + 476, 1, 132.7, 97.7 , 0 );
setMoveKey( spep_0 -3 + 478, 1, 133.7, 97.7 , 0 );
setMoveKey( spep_0 -3 + 480, 1, 133.7, 107.7 , 0 );
setMoveKey( spep_0 -3 + 482, 1, 138.7, 107.7 , 0 );
setMoveKey( spep_0 -3 + 484, 1, 135.7, 105.7 , 0 );
setMoveKey( spep_0 -3 + 486, 1, 134.7, 105.7 , 0 );
setMoveKey( spep_0 -3 + 488, 1, 134.7, 105.7 , 0 );
setMoveKey( spep_0 -3 + 489, 1, 134.7, 105.7 , 0 );--
setMoveKey( spep_0 -3 + 490, 1, 160.7, 49.3 , 0 );
setMoveKey( spep_0 -3 + 492, 1, 173.2, 54.3 , 0 );
setMoveKey( spep_0 -3 + 494, 1, 185.7, 59.2 , 0 );
setMoveKey( spep_0 -3 + 496, 1, 198.2, 64.2 , 0 );
setMoveKey( spep_0 -3 + 498, 1, 210.7, 69.2 , 0 );
setMoveKey( spep_0 -3 + 500, 1, 210.7, 69.2 , 0 );

setScaleKey( spep_0 -3 + 270, 1, 4.69, 4.69 );
setScaleKey( spep_0 -3 + 272, 1, 3.64, 3.64 );
setScaleKey( spep_0 -3 + 274, 1, 2.78, 2.78 );
setScaleKey( spep_0 -3 + 276, 1, 2.11, 2.11 );
setScaleKey( spep_0 -3 + 278, 1, 1.63, 1.63 );
setScaleKey( spep_0 -3 + 280, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 282, 1, 1.24, 1.24 );
setScaleKey( spep_0 -3 + 358, 1, 1.24, 1.24 );
setScaleKey( spep_0 -3 + 359, 1, 1.24, 1.24 );--
setScaleKey( spep_0 -3 + 360, 1, 1.24, 1.24 );
setScaleKey( spep_0 -3 + 424, 1, 1.24, 1.24 );
setScaleKey( spep_0 -3 + 426, 1, 1.32, 1.32 );
setScaleKey( spep_0 -3 + 428, 1, 1.32, 1.32 );
setScaleKey( spep_0 -3 + 430, 1, 1.24, 1.24 );
setScaleKey( spep_0 -3 + 433, 1, 1.24, 1.24 );--

s1 = 0.2;
setScaleKey( spep_0 -3 + 434, 1, 2.76 +s1, 2.76 +s1 );
setScaleKey( spep_0 -3 + 488, 1, 2.76 +s1, 2.76 +s1 );
setScaleKey( spep_0 -3 + 489, 1, 2.76 +s1, 2.76 +s1 );--

setScaleKey( spep_0 -3 + 490, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 492, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 494, 1, 0.89, 0.89 );
setScaleKey( spep_0 -3 + 496, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 498, 1, 0.74, 0.74 );
setScaleKey( spep_0 -3 + 500, 1, 0.74, 0.74 );

setRotateKey( spep_0 -3 + 270, 1, -0.3 );
setRotateKey( spep_0 -3 + 272, 1, 10.7 );
setRotateKey( spep_0 -3 + 274, 1, 19.7 );
setRotateKey( spep_0 -3 + 276, 1, 26.7 );
setRotateKey( spep_0 -3 + 278, 1, 31.7 );
setRotateKey( spep_0 -3 + 280, 1, 34.7 );
setRotateKey( spep_0 -3 + 282, 1, 35.7 );
setRotateKey( spep_0 -3 + 358, 1, 35.7 );
setRotateKey( spep_0 -3 + 359, 1, 35.7 );--
setRotateKey( spep_0 -3 + 360, 1, 35.7 );
setRotateKey( spep_0 -3 + 433, 1, 35.7 );--
setRotateKey( spep_0 -3 + 434, 1, 0 );
setRotateKey( spep_0 -3 + 500, 1, 0 );--


-- ** 敵キャラクター ** --
--敵の動き4
setDisp( spep_0 -3 + 514, 1, 1 );
setDisp( spep_0 -3 + 652, 1, 0 );
changeAnime( spep_0 -3 + 514, 1, 107 );
changeAnime( spep_0 -3 + 582, 1, 7 );
changeAnime( spep_0 -3 + 614, 1, 107 );

setMoveKey( spep_0 -3 + 514, 1, 36.5, -108.9 , 0 );
setMoveKey( spep_0 -3 + 516, 1, 36.8, -49.8 , 0 );
setMoveKey( spep_0 -3 + 518, 1, 37.1, -48.6 , 0 );
setMoveKey( spep_0 -3 + 520, 1, 37.4, -89.5 , 0 );
setMoveKey( spep_0 -3 + 522, 1, 34.7, -59.4 , 0 );
setMoveKey( spep_0 -3 + 524, 1, 34.9, -63.3 , 0 );
setMoveKey( spep_0 -3 + 526, 1, 38.2, -76.2 , 0 );
setMoveKey( spep_0 -3 + 528, 1, 39.5, -75.1 , 0 );
setMoveKey( spep_0 -3 + 530, 1, 34.8, -61 , 0 );
setMoveKey( spep_0 -3 + 532, 1, 31, -67.8 , 0 );
setMoveKey( spep_0 -3 + 534, 1, 32.3, -64.7 , 0 );
setMoveKey( spep_0 -3 + 536, 1, 35.6, -61.6 , 0 );
setMoveKey( spep_0 -3 + 538, 1, 35.6, -61.6 , 0 );
setMoveKey( spep_0 -3 + 540, 1, 32.6, -62.6 , 0 );
setMoveKey( spep_0 -3 + 542, 1, 36.6, -64.6 , 0 );
setMoveKey( spep_0 -3 + 544, 1, 34.6, -61.6 , 0 );
setMoveKey( spep_0 -3 + 546, 1, 34.6, -64.6 , 0 );
setMoveKey( spep_0 -3 + 548, 1, 34.6, -64.6 , 0 );
setMoveKey( spep_0 -3 + 550, 1, 34.6, -63.6 , 0 );
setMoveKey( spep_0 -3 + 552, 1, 33.6, -63.6 , 0 );
setMoveKey( spep_0 -3 + 554, 1, 32.6, -63.6 , 0 );
setMoveKey( spep_0 -3 + 556, 1, 34.6, -61.6 , 0 );
setMoveKey( spep_0 -3 + 558, 1, 35.6, -61.6 , 0 );
setMoveKey( spep_0 -3 + 560, 1, 34.6, -61.6 , 0 );
setMoveKey( spep_0 -3 + 562, 1, 37.6, -61.6 , 0 );
setMoveKey( spep_0 -3 + 564, 1, 32.6, -62.6 , 0 );
setMoveKey( spep_0 -3 + 566, 1, 30.6, -62.6 , 0 );
setMoveKey( spep_0 -3 + 568, 1, 29.6, -62.6 , 0 );
setMoveKey( spep_0 -3 + 570, 1, 31.6, -61.6 , 0 );
setMoveKey( spep_0 -3 + 572, 1, 29.6, -63.6 , 0 );
setMoveKey( spep_0 -3 + 574, 1, 37.6, -62.6 , 0 );
setMoveKey( spep_0 -3 + 576, 1, 35.6, -63.6 , 0 );
setMoveKey( spep_0 -3 + 578, 1, 35.6, -63.6 , 0 );
setMoveKey( spep_0 -3 + 580, 1, 35.6, -62.6 , 0 );
setMoveKey( spep_0 -3 + 581, 1, 35.6, -62.6 , 0 );--
setMoveKey( spep_0 -3 + 582, 1, 12.9, 28 , 0 );
setMoveKey( spep_0 -3 + 584, 1, 13.7, 41.8 , 0 );
setMoveKey( spep_0 -3 + 586, 1, 13.5, 48.6 , 0 );
setMoveKey( spep_0 -3 + 588, 1, 13.3, 50.5 , 0 );
setMoveKey( spep_0 -3 + 590, 1, 13.2, 52.4 , 0 );
setMoveKey( spep_0 -3 + 592, 1, 15.9, 64.3 , 0 );
setMoveKey( spep_0 -3 + 594, 1, 15.7, 66.2 , 0 );
setMoveKey( spep_0 -3 + 596, 1, 15.5, 68.1 , 0 );
setMoveKey( spep_0 -3 + 598, 1, 15.3, 70 , 0 );
setMoveKey( spep_0 -3 + 600, 1, 9.1, 63.8 , 0 );
setMoveKey( spep_0 -3 + 602, 1, 8.9, 65.7 , 0 );
setMoveKey( spep_0 -3 + 604, 1, 16.7, 63.5 , 0 );
setMoveKey( spep_0 -3 + 606, 1, 21.4, 54.5 , 0 );
setMoveKey( spep_0 -3 + 608, 1, 21.3, 56.4 , 0 );
setMoveKey( spep_0 -3 + 610, 1, 21.1, 58.4 , 0 );
setMoveKey( spep_0 -3 + 612, 1, 29.5, -4.5 , 0 );
setMoveKey( spep_0 -3 + 613, 1, 29.5, -4.5 , 0 );--
setMoveKey( spep_0 -3 + 614, 1, 50.2, -7.5 , 0 );
setMoveKey( spep_0 -3 + 616, 1, 55.8, -52.7 , 0 );
setMoveKey( spep_0 -3 + 618, 1, 63.4, -47.6 , 0 );
setMoveKey( spep_0 -3 + 620, 1, 88.9, -21 , 0 );
setMoveKey( spep_0 -3 + 622, 1, 63.2, -32.3 , 0 );
setMoveKey( spep_0 -3 + 624, 1, 69.4, -21.1 , 0 );
setMoveKey( spep_0 -3 + 626, 1, 81.6, -67.1 , 0 );
setMoveKey( spep_0 -3 + 628, 1, 86.4, -44 , 0 );
setMoveKey( spep_0 -3 + 630, 1, 91.2, -21 , 0 );
setMoveKey( spep_0 -3 + 632, 1, 89.1, -60.6 , 0 );
setMoveKey( spep_0 -3 + 634, 1, 95.8, -71 , 0 );
setMoveKey( spep_0 -3 + 636, 1, 92.6, -40.9 , 0 );
setMoveKey( spep_0 -3 + 638, 1, 100.6, -48.9 , 0 );
setMoveKey( spep_0 -3 + 640, 1, 126.5, -84.8 , 0 );
setMoveKey( spep_0 -3 + 642, 1, 99.6, -76.3 , 0 );
setMoveKey( spep_0 -3 + 644, 1, 106.9, -86 , 0 );
setMoveKey( spep_0 -3 + 646, 1, 109.3, -58.7 , 0 );
setMoveKey( spep_0 -3 + 648, 1, 113, -68.2 , 0 );
setMoveKey( spep_0 -3 + 650, 1, 128.7, -108.5 , 0 );
setMoveKey( spep_0 -3 + 652, 1, 128.7, -108.5 , 0 );

s2 = 0.1;
setScaleKey( spep_0 -3 + 514, 1, 1.08 +s2, 1.08 +s2 );
setScaleKey( spep_0 -3 + 516, 1, 1.08 +s2, 1.08 +s2 );
setScaleKey( spep_0 -3 + 518, 1, 1.07 +s2, 1.07 +s2 );
setScaleKey( spep_0 -3 + 520, 1, 1.07 +s2, 1.07 +s2 );
setScaleKey( spep_0 -3 + 522, 1, 1.06 +s2, 1.06 +s2 );
setScaleKey( spep_0 -3 + 524, 1, 1.06 +s2, 1.06 +s2 );
setScaleKey( spep_0 -3 + 526, 1, 1.05 +s2, 1.05 +s2 );
setScaleKey( spep_0 -3 + 528, 1, 1.05 +s2, 1.05 +s2 );
setScaleKey( spep_0 -3 + 530, 1, 1.04 +s2, 1.04 +s2 );
setScaleKey( spep_0 -3 + 532, 1, 1.04 +s2, 1.04 +s2 );
setScaleKey( spep_0 -3 + 534, 1, 1.03 +s2, 1.03 +s2 );
setScaleKey( spep_0 -3 + 581, 1, 1.03 +s2, 1.03 +s2 );--

setScaleKey( spep_0 -3 + 582, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 584, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 586, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 590, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 592, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 594, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 598, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 600, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 602, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 604, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 606, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 610, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 612, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 613, 1, 0.44, 0.44 );--
setScaleKey( spep_0 -3 + 614, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 616, 1, 0.52, 0.52 );
setScaleKey( spep_0 -3 + 618, 1, 0.55, 0.55 );
setScaleKey( spep_0 -3 + 620, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 622, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 624, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 626, 1, 0.68, 0.68 );
setScaleKey( spep_0 -3 + 628, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 630, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 632, 1, 0.78, 0.78 );
setScaleKey( spep_0 -3 + 634, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 636, 1, 0.84, 0.84 );
setScaleKey( spep_0 -3 + 638, 1, 0.88, 0.88 );
setScaleKey( spep_0 -3 + 640, 1, 0.91, 0.91 );
setScaleKey( spep_0 -3 + 642, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 644, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 646, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 648, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 650, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 652, 1, 1.07, 1.07 );

setRotateKey( spep_0 -3 + 514, 1, 85 );
setRotateKey( spep_0 -3 + 516, 1, 84.8 );
setRotateKey( spep_0 -3 + 518, 1, 84.6 );
setRotateKey( spep_0 -3 + 520, 1, 84.5 );
setRotateKey( spep_0 -3 + 522, 1, 84.3 );
setRotateKey( spep_0 -3 + 524, 1, 84.1 );
setRotateKey( spep_0 -3 + 526, 1, 83.9 );
setRotateKey( spep_0 -3 + 528, 1, 83.7 );
setRotateKey( spep_0 -3 + 530, 1, 83.5 );
setRotateKey( spep_0 -3 + 532, 1, 83.4 );
setRotateKey( spep_0 -3 + 534, 1, 83.2 );
setRotateKey( spep_0 -3 + 536, 1, 83 );
setRotateKey( spep_0 -3 + 581, 1, 83 );--
setRotateKey( spep_0 -3 + 582, 1, -65.7 );
setRotateKey( spep_0 -3 + 584, 1, -80.2 );
setRotateKey( spep_0 -3 + 598, 1, -80.2 );
setRotateKey( spep_0 -3 + 600, 1, -91.4 );
setRotateKey( spep_0 -3 + 604, 1, -91.4 );
setRotateKey( spep_0 -3 + 606, 1, -88.9 );
setRotateKey( spep_0 -3 + 610, 1, -88.9 );
setRotateKey( spep_0 -3 + 612, 1, -94.6 );
setRotateKey( spep_0 -3 + 613, 1, -94.6 );--
setRotateKey( spep_0 -3 + 614, 1, -255.4 );
setRotateKey( spep_0 -3 + 616, 1, -256.3 );
setRotateKey( spep_0 -3 + 618, 1, -257.2 );
setRotateKey( spep_0 -3 + 620, 1, -258 );
setRotateKey( spep_0 -3 + 622, 1, -258.9 );
setRotateKey( spep_0 -3 + 624, 1, -259.8 );
setRotateKey( spep_0 -3 + 626, 1, -260.6 );
setRotateKey( spep_0 -3 + 628, 1, -261.5 );
setRotateKey( spep_0 -3 + 630, 1, -262.4 );
setRotateKey( spep_0 -3 + 632, 1, -263.2 );
setRotateKey( spep_0 -3 + 634, 1, -264.1 );
setRotateKey( spep_0 -3 + 636, 1, -264.9 );
setRotateKey( spep_0 -3 + 638, 1, -265.8 );
setRotateKey( spep_0 -3 + 640, 1, -266.7 );
setRotateKey( spep_0 -3 + 642, 1, -267.5 );
setRotateKey( spep_0 -3 + 644, 1, -268.4 );
setRotateKey( spep_0 -3 + 646, 1, -269.3 );
setRotateKey( spep_0 -3 + 648, 1, -270.1 );
setRotateKey( spep_0 -3 + 650, 1, -271 );
setRotateKey( spep_0 -3 + 652, 1, -271 );

-- ** 音 ** --
--拳溜める
SE013 = playSeVer2( spep_0 + 226, 1255, "",spep_0 + 270, 0, 10, -1);
SE014 = playSeVer2( spep_0 + 226, 1252, "",spep_0 + 270, 0, 10, -1);
SE015 = playSeVer2( spep_0 + 226, 1371, "",spep_0 + 270, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 226, SE015, 63 );
SE016 = playSeVer2( spep_0 + 228, 1116, "",spep_0 + 270, 0, 10, -1);

--パンチ
SE017 = playSeVer2( spep_0 + 258, 1233, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 258, SE017, 140 );
setStartTimeMs( SE017,  133 );
SE018 = playSeVer2( spep_0 + 260, 1180, "", 0, 10, 0, -1);
setStartTimeMs( SE018,  83 );
SE019 = playSeVer2( spep_0 + 258, 1190, "",spep_0 + 282, 0, 10, -1);
SE020 = playSeVer2( spep_0 + 270, 1120, "", 0, 10, 0, -1);
setStartTimeMs( SE020,  117 );

--回り込む
SE021 = playSeVer2( spep_0 + 358, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 358, 1278, "",spep_0 + 456, 0, 18, -1);
SE023 = playSeVer2( spep_0 + 358, 1116, "",spep_0 + 436, 0, 14, -1);

--肘打ち
SE024 = playSeVer2( spep_0 + 422, 1233, "", 0, 2, 0, -1);
setStartTimeMs( SE024,  133 );
SE025 = playSeVer2( spep_0 + 420, 1180, "", 0, 10, 0, -1);
setStartTimeMs( SE025,  67 );
setPitch( spep_0 + 420, SE025, -100 );
setTimeStretch( SE025, 0.93, 30, 4 );
SE026 = playSeVer2( spep_0 + 418, 1003, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 428, 1120, "", 0, 10, 0, -1);
setStartTimeMs( SE027,  117 );
setPitch( spep_0 + 428, SE027, -100 );
setTimeStretch( SE027, 0.93, 30, 4 );
SE028 = playSeVer2( spep_0 + 422, 1359, "",spep_0 + 442, 0, 8, -1);

--縦回転
SE029 = playSeVer2( spep_0 + 478, 1332, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 488, 1004, "", 0, 0, 0, -1);

--かかと落とし
SE031 = playSeVer2( spep_0 + 506, 1233, "", 0, 2, 0, -1);
setStartTimeMs( SE031,  133 );
SE032 = playSeVer2( spep_0 + 508, 1180, "", 0, 10, 0, -1);
setStartTimeMs( SE032,  100 );
setPitch( spep_0 + 508, SE032, 200 );
setTimeStretch( SE032, 1.13, 30, 4 );
SE033 = playSeVer2( spep_0 + 516, 1120, "", 0, 10, 0, -1);
setStartTimeMs( SE033,  133 );
setPitch( spep_0 + 516, SE033, 200 );
setTimeStretch( SE033, 1.13, 30, 4 );
SE034 = playSeVer2( spep_0 + 508, 1010, "", 0, 0, 0, -1);

--敵飛んでいく
SE035 = playSeVer2( spep_0 + 574, 1121, "",spep_0 + 634, 0, 26, -1);

--崖激突
SE036 = playSeVer2( spep_0 + 602, 1011, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 606, 1044, "",spep_0 + 780, 0, 40, -1);

--地面激突
SE038 = playSeVer2( spep_0 + 638, 1024, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 660, 1159, "", 0, 0, 0, 0.6);

--銃構える
SE040 = playSeVer2( spep_0 + 766, 1150, "",spep_0 + 790, 2, 6, -1);
setSeVolumeByWorkId( spep_0 + 766, SE040, 140 );
setStartTimeMs( SE040,  433 );
SE041 = playSeVer2( spep_0 + 766, 1003, "", 0, 0, 0, -1);

--銃エネルギー溜める
SE042 = playSeVer2( spep_0 + 794, 1257, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 794, SE042, 158 );
SE043 = playSeVer2( spep_0 + 796, 1356, "",spep_0 + 928, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 796, SE043, 117 );
SE044 = playSeVer2( spep_0 + 800, 1157, "",spep_0 + 934, 0, 24, -1);
SE045 = playSeVer2( spep_0 + 800, 1254, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_0 + 800, SE045, 71 );
SE046 = playSeVer2( spep_0 + 800, 1282, "",spep_0 + 932, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 800, SE046, 71 );

--銃発射
SE047 = playSeVer2( spep_0 + 908, 1258, "",spep_0 + 986 -1, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 908, SE047, 73 );
SE048 = playSeVer2( spep_0 + 910, 1027, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_0 + 910, 1145, "",spep_0 + 986 -1, 0, 14, -1);
SE050 = playSeVer2( spep_0 + 910, 1312, "",spep_0 + 986 -1, 0, 14, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 975;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_1, SE_05);
	speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_1, SE_05);
	speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

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
-- playSe( spep_1 + 0, SE_05 );

--エネルギー飛んでいく
SE052 = playSeVer2( spep_1 + 86, 1021, "", 0, 0, 0, 0.6);
SE053 = playSeVer2( spep_1 + 86, 1357, "",spep_1 + 126, 0, 28, 0.6);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 岩山に着弾して爆発(240F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --岩山に着弾して爆発 ef_002
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 240, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 240, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 240, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 240, finish, 255 );

KO = entryEffect( spep_2 + 228, SP_04, 0x100, -1, 0, 0, 0 );  --カメラ正面で得意げな顔とポーズ   ef_003
setEffMoveKey( spep_2 + 228, KO, 0, 0 , 0 );
setEffMoveKey( spep_2 + 358, KO, 0, 0 , 0 );
setEffScaleKey( spep_2 + 228, KO, 1.0, 1.0 );
setEffScaleKey( spep_2 + 358, KO, 1.0, 1.0 );
setEffRotateKey( spep_2 + 228, KO, 0 );
setEffRotateKey( spep_2 + 358, KO, 0 );
setEffAlphaKey( spep_2 + 228, KO, 255 );
setEffAlphaKey( spep_2 + 358, KO, 255 );

-- ** 音 ** --
--爆発
SE054 = playSeVer2( spep_2 + 50, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE054, 76 );
setPitch( spep_2 + 50, SE054, 600 );
setTimeStretch( SE054, 1.4, 30, 4 );
SE055 = playSeVer2( spep_2 + 58, 1067, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 58, 1159, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 58, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 240 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
if ( _IS_DEAD_LAST_ == 0 ) then
    entryFade( spep_2 + 218, 2,  12, 2, 0, 0, 0, 255); -- black fade
end

hideKoScreen();
dealDamage( spep_2 + 130 );
--entryFade( spep_2 + 218, 2,  12, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_2 + 230 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 岩山〜ブラスターを撃つ(976F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 975, 0x100, -1, 0, 0, 0 );  --岩山〜ブラスターを撃つ   ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 975, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 975, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 975, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 975 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 975, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02r, 975, 0x80, -1, 0, 0, 0 );  --岩山〜ブラスターを撃つ   ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 975, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 975, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 975, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 975 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 975, first_b, 0 );

spep_x = spep_0 + 88;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 155, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 155, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 155, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
--敵の動き1
changeAnime( spep_0 + 0, 1, 0 );
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 68, 1, 0 );

setMoveKey( spep_0 + 0, 1, -2.6, 109.4 , 0 );
setMoveKey( spep_0 + 1, 1, -2.6, 109 , 0 );
setMoveKey( spep_0 + 2, 1, -2.6, 108.6 , 0 );
setMoveKey( spep_0 -3 + 6, 1, -2.6, 108.2 , 0 );
setMoveKey( spep_0 -3 + 7, 1, -2.6, 108.2 , 0 );
setMoveKey( spep_0 -3 + 8, 1, -2.6, 107.9 , 0 );
setMoveKey( spep_0 -3 + 9, 1, -2.6, 107.9 , 0 );
setMoveKey( spep_0 -3 + 10, 1, -2.6, 107.5 , 0 );
setMoveKey( spep_0 -3 + 12, 1, -2.6, 107.1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, -2.6, 106.7 , 0 );
setMoveKey( spep_0 -3 + 16, 1, -2.6, 106.4 , 0 );
setMoveKey( spep_0 -3 + 18, 1, -2.6, 106 , 0 );
setMoveKey( spep_0 -3 + 20, 1, -2.6, 105.6 , 0 );
setMoveKey( spep_0 -3 + 22, 1, -2.6, 105.2 , 0 );
setMoveKey( spep_0 -3 + 24, 1, -2.6, 104.9 , 0 );
setMoveKey( spep_0 -3 + 26, 1, -2.6, 104.5 , 0 );
setMoveKey( spep_0 -3 + 28, 1, -2.6, 104.1 , 0 );
setMoveKey( spep_0 -3 + 30, 1, -2.6, 103.7 , 0 );
setMoveKey( spep_0 -3 + 32, 1, -2.6, 103.4 , 0 );
setMoveKey( spep_0 -3 + 34, 1, -2.6, 103 , 0 );
setMoveKey( spep_0 -3 + 36, 1, -2.6, 102.6 , 0 );
setMoveKey( spep_0 -3 + 38, 1, -2.6, 102.2 , 0 );
setMoveKey( spep_0 -3 + 40, 1, -2.6, 101.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, -2.6, 101.5 , 0 );
setMoveKey( spep_0 -3 + 44, 1, -2.6, 101.1 , 0 );
setMoveKey( spep_0 -3 + 46, 1, -2.6, 100.7 , 0 );
setMoveKey( spep_0 -3 + 48, 1, -2.6, 100.4 , 0 );
setMoveKey( spep_0 -3 + 50, 1, -2.6, 100 , 0 );
setMoveKey( spep_0 -3 + 52, 1, -2.6, 99.6 , 0 );
setMoveKey( spep_0 -3 + 54, 1, -2.6, 99.2 , 0 );
setMoveKey( spep_0 -3 + 56, 1, -2.6, 98.9 , 0 );
setMoveKey( spep_0 -3 + 58, 1, -2.6, 98.5 , 0 );
setMoveKey( spep_0 -3 + 60, 1, -2.6, 98.1 , 0 );
setMoveKey( spep_0 -3 + 62, 1, -2.6, 97.7 , 0 );
setMoveKey( spep_0 -3 + 64, 1, -2.6, 97.4 , 0 );
setMoveKey( spep_0 -3 + 68, 1, -2.6, 97.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 1, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 2, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 3, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 4, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 5, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 6, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 68, 1, 0.17, 0.17 );

setRotateKey( spep_0 + 0, 1, -3.8 );
setRotateKey( spep_0 + 1, 1, -3.8 );
setRotateKey( spep_0 + 2, 1, -3.8 );
setRotateKey( spep_0 + 3, 1, -3.8 );
setRotateKey( spep_0 + 4, 1, -3.8 );
setRotateKey( spep_0 + 5, 1, -3.8 );
setRotateKey( spep_0 + 6, 1, -3.8 );
setRotateKey( spep_0 -3 + 68, 1, -3.8 );

-- ** 敵キャラクター ** --
--敵の動き2
setDisp( spep_0 -3 + 192, 1, 1 );
changeAnime( spep_0 -3 + 192, 1, 100 );

setMoveKey( spep_0 -3 + 192, 1, 163.6, -76.8 , 0 );
setMoveKey( spep_0 -3 + 193, 1, 163.6, -76.8 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 161.2, -75.8 , 0 );
setMoveKey( spep_0 -3 + 195, 1, 161.2, -75.8 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 158, -74.5 , 0 );
setMoveKey( spep_0 -3 + 197, 1, 158, -74.5 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 154.3, -72.9 , 0 );
setMoveKey( spep_0 -3 + 199, 1, 154.3, -72.9 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 150.1, -71.2 , 0 );
setMoveKey( spep_0 -3 + 201, 1, 150.1, -71.2 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 145.6, -69.3 , 0 );
setMoveKey( spep_0 -3 + 203, 1, 145.6, -69.3 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 140.5, -67.2 , 0 );
setMoveKey( spep_0 -3 + 205, 1, 140.5, -67.2 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 134.9, -64.9 , 0 );
setMoveKey( spep_0 -3 + 207, 1, 134.9, -64.9 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 128.4, -62.2 , 0 );
setMoveKey( spep_0 -3 + 209, 1, 128.4, -62.2 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 120.9, -59.1 , 0 );
setMoveKey( spep_0 -3 + 211, 1, 120.9, -59.1 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 112.1, -55.5 , 0 );
setMoveKey( spep_0 -3 + 213, 1, 112.1, -55.5 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 101.7, -51.2 , 0 );
setMoveKey( spep_0 -3 + 215, 1, 101.7, -51.2 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 90.1, -46.3 , 0 );
setMoveKey( spep_0 -3 + 217, 1, 90.1, -46.3 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 78.1, -41.3 , 0 );
setMoveKey( spep_0 -3 + 219, 1, 78.1, -41.3 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 66.1, -36.8 , 0 );
setMoveKey( spep_0 -3 + 221, 1, 66.1, -36.8 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 62.5, -38.9 , 0 );
setMoveKey( spep_0 -3 + 223, 1, 62.5, -38.9 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 58.8, -41 , 0 );

setScaleKey( spep_0 -3 + 192, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 200, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 202, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 214, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 216, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 218, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 220, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 222, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 224, 1, 0.27, 0.27 );

setRotateKey( spep_0 -3 + 192, 1, -3 );
setRotateKey( spep_0 -3 + 193, 1, -3 );
setRotateKey( spep_0 -3 + 194, 1, -2.8 );
setRotateKey( spep_0 -3 + 195, 1, -2.8 );
setRotateKey( spep_0 -3 + 196, 1, -2.5 );
setRotateKey( spep_0 -3 + 197, 1, -2.5 );
setRotateKey( spep_0 -3 + 198, 1, -2.2 );
setRotateKey( spep_0 -3 + 199, 1, -2.2 );
setRotateKey( spep_0 -3 + 200, 1, -1.9 );
setRotateKey( spep_0 -3 + 201, 1, -1.9 );
setRotateKey( spep_0 -3 + 202, 1, -1.5 );
setRotateKey( spep_0 -3 + 203, 1, -1.5 );
setRotateKey( spep_0 -3 + 204, 1, -1.1 );
setRotateKey( spep_0 -3 + 205, 1, -1.1 );
setRotateKey( spep_0 -3 + 206, 1, -0.7 );
setRotateKey( spep_0 -3 + 207, 1, -0.7 );
setRotateKey( spep_0 -3 + 208, 1, -0.1 );
setRotateKey( spep_0 -3 + 209, 1, -0.1 );
setRotateKey( spep_0 -3 + 210, 1, 0.5 );
setRotateKey( spep_0 -3 + 211, 1, 0.5 );
setRotateKey( spep_0 -3 + 212, 1, 1.2 );
setRotateKey( spep_0 -3 + 213, 1, 1.2 );
setRotateKey( spep_0 -3 + 214, 1, 2 );
setRotateKey( spep_0 -3 + 215, 1, 2 );
setRotateKey( spep_0 -3 + 216, 1, 3 );
setRotateKey( spep_0 -3 + 217, 1, 3 );
setRotateKey( spep_0 -3 + 218, 1, 4 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 226, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 47 );

--マント翻る
SE003 = playSeVer2( spep_0 + 14, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 60 );

--マント翻る
SE005 = playSeVer2( spep_0 + 78, 1332, "", 0, 0, 0, -1);

--指を差す
SE004 = playSeVer2( spep_0 + 88, 1233, "", 0, 4, 0, -1);
setStartTimeMs( SE004,  100 );
SE006 = playSeVer2( spep_0 + 88, 1189, "", 0, 0, 0, -1);

--顔カットイン
--SE007 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--マント翻る
SE008 = playSeVer2( spep_0 + 130, 1332, "", 0, 0, 0, -1);

--向かっていく
SE009 = playSeVer2( spep_0 + 196, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 196, 9, "",spep_0 + 252, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 196, SE010, 70 );
SE011 = playSeVer2( spep_0 + 202, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE011, 52 );
SE012 = playSeVer2( spep_0 + 202, 1277, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 975 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 222 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 58.8, -41 , 0 );
    setMoveKey( SP_dodge + 1, 1, 55.2, -43.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 55.2, -43.2 , 0 );
    setMoveKey( SP_dodge + 3, 1, 51.6, -45.3 , 0 );
    setMoveKey( SP_dodge + 4, 1, 51.6, -45.3 , 0 );
    setMoveKey( SP_dodge + 5, 1, 47.9, -47.4 , 0 );
    setMoveKey( SP_dodge + 6, 1, 47.9, -47.4 , 0 );
    setMoveKey( SP_dodge + 7, 1, 44.3, -49.5 , 0 );
    setMoveKey( SP_dodge + 8, 1, 44.3, -49.5 , 0 );
    setMoveKey( SP_dodge + 9, 1, 40.6, -51.7 , 0 );
    setMoveKey( SP_dodge + 10, 1, 40.6, -51.7 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.27, 0.27 );
    setScaleKey( SP_dodge + 1, 1, 0.35, 0.35 );
    setScaleKey( SP_dodge + 2, 1, 0.35, 0.35 );
    setScaleKey( SP_dodge + 3, 1, 0.42, 0.42 );
    setScaleKey( SP_dodge + 4, 1, 0.42, 0.42 );
    setScaleKey( SP_dodge + 5, 1, 0.49, 0.49 );
    setScaleKey( SP_dodge + 6, 1, 0.49, 0.49 );
    setScaleKey( SP_dodge + 7, 1, 0.57, 0.57 );
    setScaleKey( SP_dodge + 8, 1, 0.57, 0.57 );
    setScaleKey( SP_dodge + 9, 1, 0.64, 0.64 );
    setScaleKey( SP_dodge + 10, 1, 0.64, 0.64 );

    setRotateKey( SP_dodge + 0, 1, 4 );
    setRotateKey( SP_dodge + 10, 1, 4 );    
    
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
setDisp( spep_0 -3 + 240, 1, 0 );

setMoveKey( spep_0 -3 + 225, 1, 58.8, -41 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 55.2, -43.2 , 0 );
setMoveKey( spep_0 -3 + 227, 1, 55.2, -43.2 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 51.6, -45.3 , 0 );
setMoveKey( spep_0 -3 + 229, 1, 51.6, -45.3 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 47.9, -47.4 , 0 );
setMoveKey( spep_0 -3 + 231, 1, 47.9, -47.4 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 44.3, -49.5 , 0 );
setMoveKey( spep_0 -3 + 233, 1, 44.3, -49.5 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 40.6, -51.7 , 0 );
setMoveKey( spep_0 -3 + 235, 1, 40.6, -51.7 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 38.1, -51.7 , 0 );
setMoveKey( spep_0 -3 + 237, 1, 38.1, -51.7 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 38.1, -51.7 , 0 );

setScaleKey( spep_0 -3 + 225, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 226, 1, 0.35, 0.35 );
setScaleKey( spep_0 -3 + 227, 1, 0.35, 0.35 );
setScaleKey( spep_0 -3 + 228, 1, 0.42, 0.42 );
setScaleKey( spep_0 -3 + 229, 1, 0.42, 0.42 );
setScaleKey( spep_0 -3 + 230, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 231, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 232, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 233, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 234, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 235, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 236, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 240, 1, 0.72, 0.72 );

setRotateKey( spep_0 -3 + 240, 1, 4 );


-- ** 敵キャラクター ** --
--敵の動き3
setDisp( spep_0 -3 + 270, 1, 1 );
setDisp( spep_0 -3 + 500, 1, 0 );
changeAnime( spep_0 -3 + 270, 1, 108 );
changeAnime( spep_0 -3 + 360, 1, 106 );
changeAnime( spep_0 -3 + 434, 1, 108 );

setMoveKey( spep_0 -3 + 270, 1, 109.8, 41.3 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 89.7, 15.2 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 69.4, 0.8 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 52.3, -5.8 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 39.9, -8 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 32.4, -8.3 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 30, -8.2 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 29, -9.2 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 26, -9.2 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 26, -9.2 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 26, -7.2 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 24, -5.2 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 30, -7.2 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 29, -4.2 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 29, -5.2 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 29, -7.2 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 33, -8.2 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 27, -6.2 , 0 );
setMoveKey( spep_0 -3 + 306, 1, 31, -6.2 , 0 );
setMoveKey( spep_0 -3 + 308, 1, 29, -6.2 , 0 );
setMoveKey( spep_0 -3 + 310, 1, 29, -5.2 , 0 );
setMoveKey( spep_0 -3 + 312, 1, 28, -6.2 , 0 );
setMoveKey( spep_0 -3 + 314, 1, 28, -7.2 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 32, -8.2 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 31, -10.2 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 29, -7.2 , 0 );
setMoveKey( spep_0 -3 + 322, 1, 31, -6.2 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 32, -8.2 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 30, -8.2 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 30, -8.2 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 30, -7.2 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 29, -8.2 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 29, -5.2 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 33, -5.2 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 34, -5.2 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 29, -7.2 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 29, -6.2 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 28, -6.2 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 26, -7.2 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 26, -7.2 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 28, -7.2 , 0 );
setMoveKey( spep_0 -3 + 352, 1, 34, -8.2 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 31, -7.2 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 30, -8.2 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 30, -8.2 , 0 );
setMoveKey( spep_0 -3 + 359, 1, 30, -8.2 , 0 );--
setMoveKey( spep_0 -3 + 360, 1, 30, -8.2 , 0 );
setMoveKey( spep_0 -3 + 362, 1, -115.3, 113.5 , 0 );
setMoveKey( spep_0 -3 + 364, 1, -219.4, 200.7 , 0 );
setMoveKey( spep_0 -3 + 366, 1, -289.2, 259.2 , 0 );
setMoveKey( spep_0 -3 + 368, 1, -331.5, 294.6 , 0 );
setMoveKey( spep_0 -3 + 370, 1, -353.3, 312.9 , 0 );
setMoveKey( spep_0 -3 + 372, 1, -361.3, 319.6 , 0 );
setMoveKey( spep_0 -3 + 374, 1, -362.4, 320.5 , 0 );
setMoveKey( spep_0 -3 + 376, 1, -362.4, 320.5 , 0 );
setMoveKey( spep_0 -3 + 378, 1, -362.3, 320.4 , 0 );
setMoveKey( spep_0 -3 + 380, 1, -362, 320.2 , 0 );
setMoveKey( spep_0 -3 + 382, 1, -361.4, 319.7 , 0 );
setMoveKey( spep_0 -3 + 384, 1, -360.4, 318.8 , 0 );
setMoveKey( spep_0 -3 + 386, 1, -358.9, 317.6 , 0 );
setMoveKey( spep_0 -3 + 388, 1, -356.9, 315.9 , 0 );
setMoveKey( spep_0 -3 + 390, 1, -354.2, 313.6 , 0 );
setMoveKey( spep_0 -3 + 392, 1, -350.7, 310.7 , 0 );
setMoveKey( spep_0 -3 + 394, 1, -346.3, 307 , 0 );
setMoveKey( spep_0 -3 + 396, 1, -341, 302.6 , 0 );
setMoveKey( spep_0 -3 + 398, 1, -334.6, 297.2 , 0 );
setMoveKey( spep_0 -3 + 400, 1, -327.1, 290.9 , 0 );
setMoveKey( spep_0 -3 + 402, 1, -318.3, 283.5 , 0 );
setMoveKey( spep_0 -3 + 404, 1, -308.1, 275 , 0 );
setMoveKey( spep_0 -3 + 406, 1, -296.5, 265.3 , 0 );
setMoveKey( spep_0 -3 + 408, 1, -283.4, 254.3 , 0 );
setMoveKey( spep_0 -3 + 410, 1, -268.6, 241.9 , 0 );
setMoveKey( spep_0 -3 + 412, 1, -252.1, 228.1 , 0 );
setMoveKey( spep_0 -3 + 414, 1, -233.7, 212.7 , 0 );
setMoveKey( spep_0 -3 + 416, 1, -213.4, 195.7 , 0 );
setMoveKey( spep_0 -3 + 418, 1, -191.1, 177 , 0 );
setMoveKey( spep_0 -3 + 420, 1, -166.7, 156.5 , 0 );
setMoveKey( spep_0 -3 + 422, 1, -140, 134.2 , 0 );
setMoveKey( spep_0 -3 + 424, 1, -111, 109.9 , 0 );
setMoveKey( spep_0 -3 + 426, 1, -64.5, 78.6 , 0 );
setMoveKey( spep_0 -3 + 428, 1, -28.5, 48.5 , 0 );
setMoveKey( spep_0 -3 + 430, 1, -9.2, 24.6 , 0 );
setMoveKey( spep_0 -3 + 432, 1, 30, -8.2 , 0 );
setMoveKey( spep_0 -3 + 433, 1, 30, -8.2 , 0 );--
setMoveKey( spep_0 -3 + 434, 1, 137.7, 105.7 , 0 );
setMoveKey( spep_0 -3 + 436, 1, 131.7, 114.7 , 0 );
setMoveKey( spep_0 -3 + 438, 1, 131.7, 114.7 , 0 );
setMoveKey( spep_0 -3 + 440, 1, 136.7, 104.7 , 0 );
setMoveKey( spep_0 -3 + 442, 1, 129.7, 105.7 , 0 );
setMoveKey( spep_0 -3 + 444, 1, 129.7, 86.7 , 0 );
setMoveKey( spep_0 -3 + 446, 1, 132.7, 86.7 , 0 );
setMoveKey( spep_0 -3 + 448, 1, 133.7, 86.7 , 0 );
setMoveKey( spep_0 -3 + 450, 1, 133.7, 82.7 , 0 );
setMoveKey( spep_0 -3 + 452, 1, 132.7, 107.7 , 0 );
setMoveKey( spep_0 -3 + 454, 1, 140.7, 95.7 , 0 );
setMoveKey( spep_0 -3 + 456, 1, 134.7, 94.7 , 0 );
setMoveKey( spep_0 -3 + 458, 1, 133.7, 94.7 , 0 );
setMoveKey( spep_0 -3 + 460, 1, 137.7, 104.7 , 0 );
setMoveKey( spep_0 -3 + 462, 1, 136.7, 92.7 , 0 );
setMoveKey( spep_0 -3 + 464, 1, 136.7, 103.7 , 0 );
setMoveKey( spep_0 -3 + 466, 1, 135.7, 101.7 , 0 );
setMoveKey( spep_0 -3 + 468, 1, 135.7, 101.7 , 0 );
setMoveKey( spep_0 -3 + 470, 1, 135.7, 111.7 , 0 );
setMoveKey( spep_0 -3 + 472, 1, 138.7, 98.7 , 0 );
setMoveKey( spep_0 -3 + 474, 1, 135.7, 98.7 , 0 );
setMoveKey( spep_0 -3 + 476, 1, 132.7, 97.7 , 0 );
setMoveKey( spep_0 -3 + 478, 1, 133.7, 97.7 , 0 );
setMoveKey( spep_0 -3 + 480, 1, 133.7, 107.7 , 0 );
setMoveKey( spep_0 -3 + 482, 1, 138.7, 107.7 , 0 );
setMoveKey( spep_0 -3 + 484, 1, 135.7, 105.7 , 0 );
setMoveKey( spep_0 -3 + 486, 1, 134.7, 105.7 , 0 );
setMoveKey( spep_0 -3 + 488, 1, 134.7, 105.7 , 0 );
setMoveKey( spep_0 -3 + 489, 1, 134.7, 105.7 , 0 );--
setMoveKey( spep_0 -3 + 490, 1, 160.7, 49.3 , 0 );
setMoveKey( spep_0 -3 + 492, 1, 173.2, 54.3 , 0 );
setMoveKey( spep_0 -3 + 494, 1, 185.7, 59.2 , 0 );
setMoveKey( spep_0 -3 + 496, 1, 198.2, 64.2 , 0 );
setMoveKey( spep_0 -3 + 498, 1, 210.7, 69.2 , 0 );
setMoveKey( spep_0 -3 + 500, 1, 210.7, 69.2 , 0 );

setScaleKey( spep_0 -3 + 270, 1, 4.69, 4.69 );
setScaleKey( spep_0 -3 + 272, 1, 3.64, 3.64 );
setScaleKey( spep_0 -3 + 274, 1, 2.78, 2.78 );
setScaleKey( spep_0 -3 + 276, 1, 2.11, 2.11 );
setScaleKey( spep_0 -3 + 278, 1, 1.63, 1.63 );
setScaleKey( spep_0 -3 + 280, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 282, 1, 1.24, 1.24 );
setScaleKey( spep_0 -3 + 358, 1, 1.24, 1.24 );
setScaleKey( spep_0 -3 + 359, 1, 1.24, 1.24 );--
setScaleKey( spep_0 -3 + 360, 1, 1.24, 1.24 );
setScaleKey( spep_0 -3 + 424, 1, 1.24, 1.24 );
setScaleKey( spep_0 -3 + 426, 1, 1.32, 1.32 );
setScaleKey( spep_0 -3 + 428, 1, 1.32, 1.32 );
setScaleKey( spep_0 -3 + 430, 1, 1.24, 1.24 );
setScaleKey( spep_0 -3 + 433, 1, 1.24, 1.24 );--

s1 = 0.2;
setScaleKey( spep_0 -3 + 434, 1, 2.76 +s1, 2.76 +s1 );
setScaleKey( spep_0 -3 + 488, 1, 2.76 +s1, 2.76 +s1 );
setScaleKey( spep_0 -3 + 489, 1, 2.76 +s1, 2.76 +s1 );--

setScaleKey( spep_0 -3 + 490, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 492, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 494, 1, 0.89, 0.89 );
setScaleKey( spep_0 -3 + 496, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 498, 1, 0.74, 0.74 );
setScaleKey( spep_0 -3 + 500, 1, 0.74, 0.74 );

setRotateKey( spep_0 -3 + 270, 1, -0.3 );
setRotateKey( spep_0 -3 + 272, 1, 10.7 );
setRotateKey( spep_0 -3 + 274, 1, 19.7 );
setRotateKey( spep_0 -3 + 276, 1, 26.7 );
setRotateKey( spep_0 -3 + 278, 1, 31.7 );
setRotateKey( spep_0 -3 + 280, 1, 34.7 );
setRotateKey( spep_0 -3 + 282, 1, 35.7 );
setRotateKey( spep_0 -3 + 358, 1, 35.7 );
setRotateKey( spep_0 -3 + 359, 1, 35.7 );--
setRotateKey( spep_0 -3 + 360, 1, 35.7 );
setRotateKey( spep_0 -3 + 433, 1, 35.7 );--
setRotateKey( spep_0 -3 + 434, 1, 0 );
setRotateKey( spep_0 -3 + 500, 1, 0 );--


-- ** 敵キャラクター ** --
--敵の動き4
setDisp( spep_0 -3 + 514, 1, 1 );
setDisp( spep_0 -3 + 652, 1, 0 );
changeAnime( spep_0 -3 + 514, 1, 7 );
changeAnime( spep_0 -3 + 582, 1, 7 );
changeAnime( spep_0 -3 + 614, 1, 107 );

setMoveKey( spep_0 -3 + 514, 1, -36.5, -108.9 , 0 );
setMoveKey( spep_0 -3 + 516, 1, -36.8, -49.8 , 0 );
setMoveKey( spep_0 -3 + 518, 1, -37.1, -48.6 , 0 );
setMoveKey( spep_0 -3 + 520, 1, -37.4, -89.5 , 0 );
setMoveKey( spep_0 -3 + 522, 1, -34.7, -59.4 , 0 );
setMoveKey( spep_0 -3 + 524, 1, -34.9, -63.3 , 0 );
setMoveKey( spep_0 -3 + 526, 1, -38.2, -76.2 , 0 );
setMoveKey( spep_0 -3 + 528, 1, -39.5, -75.1 , 0 );
setMoveKey( spep_0 -3 + 530, 1, -34.8, -61 , 0 );
setMoveKey( spep_0 -3 + 532, 1, -31, -67.8 , 0 );
setMoveKey( spep_0 -3 + 534, 1, -32.3, -64.7 , 0 );
setMoveKey( spep_0 -3 + 536, 1, -35.6, -61.6 , 0 );
setMoveKey( spep_0 -3 + 538, 1, -35.6, -61.6 , 0 );
setMoveKey( spep_0 -3 + 540, 1, -32.6, -62.6 , 0 );
setMoveKey( spep_0 -3 + 542, 1, -36.6, -64.6 , 0 );
setMoveKey( spep_0 -3 + 544, 1, -34.6, -61.6 , 0 );
setMoveKey( spep_0 -3 + 546, 1, -34.6, -64.6 , 0 );
setMoveKey( spep_0 -3 + 548, 1, -34.6, -64.6 , 0 );
setMoveKey( spep_0 -3 + 550, 1, -34.6, -63.6 , 0 );
setMoveKey( spep_0 -3 + 552, 1, -33.6, -63.6 , 0 );
setMoveKey( spep_0 -3 + 554, 1, -32.6, -63.6 , 0 );
setMoveKey( spep_0 -3 + 556, 1, -34.6, -61.6 , 0 );
setMoveKey( spep_0 -3 + 558, 1, -35.6, -61.6 , 0 );
setMoveKey( spep_0 -3 + 560, 1, -34.6, -61.6 , 0 );
setMoveKey( spep_0 -3 + 562, 1, -37.6, -61.6 , 0 );
setMoveKey( spep_0 -3 + 564, 1, -32.6, -62.6 , 0 );
setMoveKey( spep_0 -3 + 566, 1, -30.6, -62.6 , 0 );
setMoveKey( spep_0 -3 + 568, 1, -29.6, -62.6 , 0 );
setMoveKey( spep_0 -3 + 570, 1, -31.6, -61.6 , 0 );
setMoveKey( spep_0 -3 + 572, 1, -29.6, -63.6 , 0 );
setMoveKey( spep_0 -3 + 574, 1, -37.6, -62.6 , 0 );
setMoveKey( spep_0 -3 + 576, 1, -35.6, -63.6 , 0 );
setMoveKey( spep_0 -3 + 578, 1, -35.6, -63.6 , 0 );
setMoveKey( spep_0 -3 + 580, 1, -35.6, -62.6 , 0 );
setMoveKey( spep_0 -3 + 581, 1, -35.6, -62.6 , 0 );--
setMoveKey( spep_0 -3 + 582, 1, 12.9, 28 , 0 );
setMoveKey( spep_0 -3 + 584, 1, 13.7, 41.8 , 0 );
setMoveKey( spep_0 -3 + 586, 1, 13.5, 48.6 , 0 );
setMoveKey( spep_0 -3 + 588, 1, 13.3, 50.5 , 0 );
setMoveKey( spep_0 -3 + 590, 1, 13.2, 52.4 , 0 );
setMoveKey( spep_0 -3 + 592, 1, 15.9, 64.3 , 0 );
setMoveKey( spep_0 -3 + 594, 1, 15.7, 66.2 , 0 );
setMoveKey( spep_0 -3 + 596, 1, 15.5, 68.1 , 0 );
setMoveKey( spep_0 -3 + 598, 1, 15.3, 70 , 0 );
setMoveKey( spep_0 -3 + 600, 1, 9.1, 63.8 , 0 );
setMoveKey( spep_0 -3 + 602, 1, 8.9, 65.7 , 0 );
setMoveKey( spep_0 -3 + 604, 1, 16.7, 63.5 , 0 );
setMoveKey( spep_0 -3 + 606, 1, 21.4, 54.5 , 0 );
setMoveKey( spep_0 -3 + 608, 1, 21.3, 56.4 , 0 );
setMoveKey( spep_0 -3 + 610, 1, 21.1, 58.4 , 0 );
setMoveKey( spep_0 -3 + 612, 1, 29.5, -4.5 , 0 );
setMoveKey( spep_0 -3 + 613, 1, 29.5, -4.5 , 0 );--
setMoveKey( spep_0 -3 + 614, 1, 50.2, -7.5 , 0 );
setMoveKey( spep_0 -3 + 616, 1, 55.8, -52.7 , 0 );
setMoveKey( spep_0 -3 + 618, 1, 63.4, -47.6 , 0 );
setMoveKey( spep_0 -3 + 620, 1, 88.9, -21 , 0 );
setMoveKey( spep_0 -3 + 622, 1, 63.2, -32.3 , 0 );
setMoveKey( spep_0 -3 + 624, 1, 69.4, -21.1 , 0 );
setMoveKey( spep_0 -3 + 626, 1, 81.6, -67.1 , 0 );
setMoveKey( spep_0 -3 + 628, 1, 86.4, -44 , 0 );
setMoveKey( spep_0 -3 + 630, 1, 91.2, -21 , 0 );
setMoveKey( spep_0 -3 + 632, 1, 89.1, -60.6 , 0 );
setMoveKey( spep_0 -3 + 634, 1, 95.8, -71 , 0 );
setMoveKey( spep_0 -3 + 636, 1, 92.6, -40.9 , 0 );
setMoveKey( spep_0 -3 + 638, 1, 100.6, -48.9 , 0 );
setMoveKey( spep_0 -3 + 640, 1, 126.5, -84.8 , 0 );
setMoveKey( spep_0 -3 + 642, 1, 99.6, -76.3 , 0 );
setMoveKey( spep_0 -3 + 644, 1, 106.9, -86 , 0 );
setMoveKey( spep_0 -3 + 646, 1, 109.3, -58.7 , 0 );
setMoveKey( spep_0 -3 + 648, 1, 113, -68.2 , 0 );
setMoveKey( spep_0 -3 + 650, 1, 128.7, -108.5 , 0 );
setMoveKey( spep_0 -3 + 652, 1, 128.7, -108.5 , 0 );

s2 = 0.1;
setScaleKey( spep_0 -3 + 514, 1, 1.08 +s2, 1.08 +s2 );
setScaleKey( spep_0 -3 + 516, 1, 1.08 +s2, 1.08 +s2 );
setScaleKey( spep_0 -3 + 518, 1, 1.07 +s2, 1.07 +s2 );
setScaleKey( spep_0 -3 + 520, 1, 1.07 +s2, 1.07 +s2 );
setScaleKey( spep_0 -3 + 522, 1, 1.06 +s2, 1.06 +s2 );
setScaleKey( spep_0 -3 + 524, 1, 1.06 +s2, 1.06 +s2 );
setScaleKey( spep_0 -3 + 526, 1, 1.05 +s2, 1.05 +s2 );
setScaleKey( spep_0 -3 + 528, 1, 1.05 +s2, 1.05 +s2 );
setScaleKey( spep_0 -3 + 530, 1, 1.04 +s2, 1.04 +s2 );
setScaleKey( spep_0 -3 + 532, 1, 1.04 +s2, 1.04 +s2 );
setScaleKey( spep_0 -3 + 534, 1, 1.03 +s2, 1.03 +s2 );
setScaleKey( spep_0 -3 + 581, 1, 1.03 +s2, 1.03 +s2 );--

setScaleKey( spep_0 -3 + 582, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 584, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 586, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 590, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 592, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 594, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 598, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 600, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 602, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 604, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 606, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 610, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 612, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 613, 1, 0.44, 0.44 );--
setScaleKey( spep_0 -3 + 614, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 616, 1, 0.52, 0.52 );
setScaleKey( spep_0 -3 + 618, 1, 0.55, 0.55 );
setScaleKey( spep_0 -3 + 620, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 622, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 624, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 626, 1, 0.68, 0.68 );
setScaleKey( spep_0 -3 + 628, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 630, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 632, 1, 0.78, 0.78 );
setScaleKey( spep_0 -3 + 634, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 636, 1, 0.84, 0.84 );
setScaleKey( spep_0 -3 + 638, 1, 0.88, 0.88 );
setScaleKey( spep_0 -3 + 640, 1, 0.91, 0.91 );
setScaleKey( spep_0 -3 + 642, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 644, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 646, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 648, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 650, 1, 1.07, 1.07 );
setScaleKey( spep_0 -3 + 652, 1, 1.07, 1.07 );

setRotateKey( spep_0 -3 + 514, 1, -85 );
setRotateKey( spep_0 -3 + 516, 1, -84.8 );
setRotateKey( spep_0 -3 + 518, 1, -84.6 );
setRotateKey( spep_0 -3 + 520, 1, -84.5 );
setRotateKey( spep_0 -3 + 522, 1, -84.3 );
setRotateKey( spep_0 -3 + 524, 1, -84.1 );
setRotateKey( spep_0 -3 + 526, 1, -83.9 );
setRotateKey( spep_0 -3 + 528, 1, -83.7 );
setRotateKey( spep_0 -3 + 530, 1, -83.5 );
setRotateKey( spep_0 -3 + 532, 1, -83.4 );
setRotateKey( spep_0 -3 + 534, 1, -83.2 );
setRotateKey( spep_0 -3 + 536, 1, -83 );
setRotateKey( spep_0 -3 + 581, 1, -83 );--
setRotateKey( spep_0 -3 + 582, 1, -65.7 );
setRotateKey( spep_0 -3 + 584, 1, -80.2 );
setRotateKey( spep_0 -3 + 598, 1, -80.2 );
setRotateKey( spep_0 -3 + 600, 1, -91.4 );
setRotateKey( spep_0 -3 + 604, 1, -91.4 );
setRotateKey( spep_0 -3 + 606, 1, -88.9 );
setRotateKey( spep_0 -3 + 610, 1, -88.9 );
setRotateKey( spep_0 -3 + 612, 1, -94.6 );
setRotateKey( spep_0 -3 + 613, 1, -94.6 );--
setRotateKey( spep_0 -3 + 614, 1, -255.4 );
setRotateKey( spep_0 -3 + 616, 1, -256.3 );
setRotateKey( spep_0 -3 + 618, 1, -257.2 );
setRotateKey( spep_0 -3 + 620, 1, -258 );
setRotateKey( spep_0 -3 + 622, 1, -258.9 );
setRotateKey( spep_0 -3 + 624, 1, -259.8 );
setRotateKey( spep_0 -3 + 626, 1, -260.6 );
setRotateKey( spep_0 -3 + 628, 1, -261.5 );
setRotateKey( spep_0 -3 + 630, 1, -262.4 );
setRotateKey( spep_0 -3 + 632, 1, -263.2 );
setRotateKey( spep_0 -3 + 634, 1, -264.1 );
setRotateKey( spep_0 -3 + 636, 1, -264.9 );
setRotateKey( spep_0 -3 + 638, 1, -265.8 );
setRotateKey( spep_0 -3 + 640, 1, -266.7 );
setRotateKey( spep_0 -3 + 642, 1, -267.5 );
setRotateKey( spep_0 -3 + 644, 1, -268.4 );
setRotateKey( spep_0 -3 + 646, 1, -269.3 );
setRotateKey( spep_0 -3 + 648, 1, -270.1 );
setRotateKey( spep_0 -3 + 650, 1, -271 );
setRotateKey( spep_0 -3 + 652, 1, -271 );

-- ** 音 ** --
--拳溜める
SE013 = playSeVer2( spep_0 + 226, 1255, "",spep_0 + 270, 0, 10, -1);
SE014 = playSeVer2( spep_0 + 226, 1252, "",spep_0 + 270, 0, 10, -1);
SE015 = playSeVer2( spep_0 + 226, 1371, "",spep_0 + 270, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 226, SE015, 63 );
SE016 = playSeVer2( spep_0 + 228, 1116, "",spep_0 + 270, 0, 10, -1);

--パンチ
SE017 = playSeVer2( spep_0 + 258, 1233, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 258, SE017, 140 );
setStartTimeMs( SE017,  133 );
SE018 = playSeVer2( spep_0 + 260, 1180, "", 0, 10, 0, -1);
setStartTimeMs( SE018,  83 );
SE019 = playSeVer2( spep_0 + 258, 1190, "",spep_0 + 282, 0, 10, -1);
SE020 = playSeVer2( spep_0 + 270, 1120, "", 0, 10, 0, -1);
setStartTimeMs( SE020,  117 );

--回り込む
SE021 = playSeVer2( spep_0 + 358, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 358, 1278, "",spep_0 + 456, 0, 18, -1);
SE023 = playSeVer2( spep_0 + 358, 1116, "",spep_0 + 436, 0, 14, -1);

--肘打ち
SE024 = playSeVer2( spep_0 + 422, 1233, "", 0, 2, 0, -1);
setStartTimeMs( SE024,  133 );
SE025 = playSeVer2( spep_0 + 420, 1180, "", 0, 10, 0, -1);
setStartTimeMs( SE025,  67 );
setPitch( spep_0 + 420, SE025, -100 );
setTimeStretch( SE025, 0.93, 30, 4 );
SE026 = playSeVer2( spep_0 + 418, 1003, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 428, 1120, "", 0, 10, 0, -1);
setStartTimeMs( SE027,  117 );
setPitch( spep_0 + 428, SE027, -100 );
setTimeStretch( SE027, 0.93, 30, 4 );
SE028 = playSeVer2( spep_0 + 422, 1359, "",spep_0 + 442, 0, 8, -1);

--縦回転
SE029 = playSeVer2( spep_0 + 478, 1332, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 488, 1004, "", 0, 0, 0, -1);

--かかと落とし
SE031 = playSeVer2( spep_0 + 506, 1233, "", 0, 2, 0, -1);
setStartTimeMs( SE031,  133 );
SE032 = playSeVer2( spep_0 + 508, 1180, "", 0, 10, 0, -1);
setStartTimeMs( SE032,  100 );
setPitch( spep_0 + 508, SE032, 200 );
setTimeStretch( SE032, 1.13, 30, 4 );
SE033 = playSeVer2( spep_0 + 516, 1120, "", 0, 10, 0, -1);
setStartTimeMs( SE033,  133 );
setPitch( spep_0 + 516, SE033, 200 );
setTimeStretch( SE033, 1.13, 30, 4 );
SE034 = playSeVer2( spep_0 + 508, 1010, "", 0, 0, 0, -1);

--敵飛んでいく
SE035 = playSeVer2( spep_0 + 574, 1121, "",spep_0 + 634, 0, 26, -1);

--崖激突
SE036 = playSeVer2( spep_0 + 602, 1011, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 606, 1044, "",spep_0 + 780, 0, 40, -1);

--地面激突
SE038 = playSeVer2( spep_0 + 638, 1024, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 660, 1159, "", 0, 0, 0, 0.6);

--銃構える
SE040 = playSeVer2( spep_0 + 766, 1150, "",spep_0 + 790, 2, 6, -1);
setSeVolumeByWorkId( spep_0 + 766, SE040, 140 );
setStartTimeMs( SE040,  433 );
SE041 = playSeVer2( spep_0 + 766, 1003, "", 0, 0, 0, -1);

--銃エネルギー溜める
SE042 = playSeVer2( spep_0 + 794, 1257, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 794, SE042, 158 );
SE043 = playSeVer2( spep_0 + 796, 1356, "",spep_0 + 928, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 796, SE043, 117 );
SE044 = playSeVer2( spep_0 + 800, 1157, "",spep_0 + 934, 0, 24, -1);
SE045 = playSeVer2( spep_0 + 800, 1254, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_0 + 800, SE045, 71 );
SE046 = playSeVer2( spep_0 + 800, 1282, "",spep_0 + 932, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 800, SE046, 71 );

--銃発射
SE047 = playSeVer2( spep_0 + 908, 1258, "",spep_0 + 986 -1, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 908, SE047, 73 );
SE048 = playSeVer2( spep_0 + 910, 1027, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_0 + 910, 1145, "",spep_0 + 986 -1, 0, 14, -1);
SE050 = playSeVer2( spep_0 + 910, 1312, "",spep_0 + 986 -1, 0, 14, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 975;


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

--エネルギー飛んでいく
SE052 = playSeVer2( spep_1 + 86, 1021, "", 0, 0, 0, 0.6);
SE053 = playSeVer2( spep_1 + 86, 1357, "",spep_1 + 126, 0, 28, 0.6);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 岩山に着弾して爆発(240F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --岩山に着弾して爆発 ef_002
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 240, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_2 + 240, finish, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 240, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 240, finish, 255 );

KO = entryEffect( spep_2 + 228, SP_04, 0x100, -1, 0, 0, 0 );  --カメラ正面で得意げな顔とポーズ   ef_003
setEffMoveKey( spep_2 + 228, KO, 0, 0 , 0 );
setEffMoveKey( spep_2 + 358, KO, 0, 0 , 0 );
setEffScaleKey( spep_2 + 228, KO, -1.0, 1.0 );
setEffScaleKey( spep_2 + 358, KO, -1.0, 1.0 );
setEffRotateKey( spep_2 + 228, KO, 0 );
setEffRotateKey( spep_2 + 358, KO, 0 );
setEffAlphaKey( spep_2 + 228, KO, 255 );
setEffAlphaKey( spep_2 + 358, KO, 255 );

-- ** 音 ** --
--爆発
SE054 = playSeVer2( spep_2 + 50, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE054, 76 );
setPitch( spep_2 + 50, SE054, 600 );
setTimeStretch( SE054, 1.4, 30, 4 );
SE055 = playSeVer2( spep_2 + 58, 1067, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 58, 1159, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 58, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 240 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
if ( _IS_DEAD_LAST_ == 0 ) then
    entryFade( spep_2 + 218, 2,  12, 2, 0, 0, 0, 255); -- black fade
end

hideKoScreen();
dealDamage( spep_2 + 130 );
--entryFade( spep_2 + 218, 2,  12, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_2 + 230 );

end