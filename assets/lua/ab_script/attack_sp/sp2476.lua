--1025520:SSRガンマ２号_ガンマ・ブラスター
--sp_effect_b3_00002

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
SP_01 = 160743;	--岩山〜指差し	ef_001
SP_02 = 160744;	--ブラスター溜め〜撃つ	ef_002_front
SP_03 = 160745;	--ブラスター溜め〜撃つ	ef_002_back
SP_04 = 160748;	--ガラス激突	ef_003_front
SP_05 = 160749;	--ガラス激突	ef_003_back

--敵側
SP_02r = 160746;	--ブラスター溜め〜撃つ	ef_002_front_re
SP_03r = 160747;	--ブラスター溜め〜撃つ	ef_002_back_re


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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 岩山〜指差し(188F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_b = entryEffectLife( spep_0 + 0, SP_01, 186, 0x80, -1, 0, 0, 0 );  --岩山〜指差し	ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 186, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 186, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 186, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 186 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 186, first_b, 0 );

spep_x = spep_0 + 88;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
changeAnime( spep_0 + 0, 1, 100 );
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 66, 1, 0 );

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
setMoveKey( spep_0 -3 + 66, 1, 2.6, 97.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 1, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 2, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 3, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 4, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 5, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 6, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 66, 1, 0.17, 0.17 );

setRotateKey( spep_0 + 0, 1, 3.8 );
setRotateKey( spep_0 + 1, 1, 3.8 );
setRotateKey( spep_0 + 2, 1, 3.8 );
setRotateKey( spep_0 + 3, 1, 3.8 );
setRotateKey( spep_0 + 4, 1, 3.8 );
setRotateKey( spep_0 + 5, 1, 3.8 );
setRotateKey( spep_0 + 6, 1, 3.8 );
setRotateKey( spep_0 -3 + 66, 1, 3.8 );

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
SE004 = playSeVer2( spep_0 + 92, 1233, "", 0, 4, 0, -1);
setStartTimeMs( SE004,  100 );
SE006 = playSeVer2( spep_0 + 92, 1189, "", 0, 0, 0, -1);

--顔カットイン
SE007 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--マント翻る
SE008 = playSeVer2( spep_0 + 130, 1332, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 186 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 186;


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

--銃エネルギー溜める
SE010 = playSeVer2( spep_1 + 86, 1257, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE010, 158 );
SE011 = playSeVer2( spep_1 + 88, 1356, "",spep_1 + 186, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 88, SE011, 117 );
SE012 = playSeVer2( spep_1 + 92, 1157, "",spep_1 + 186, 0, 24, -1);
SE013 = playSeVer2( spep_1 + 92, 1254, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE013, 71 );
SE014 = playSeVer2( spep_1 + 92, 1282, "",spep_1 + 190, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 92, SE014, 71 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- ブラスター溜め〜撃つ(198F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_2 + 0, SP_02, 197, 0x100, -1, 0, 0, 0 );  --ブラスター溜め〜撃つ    ef_002_front
setEffMoveKey( spep_2 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 197, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 197, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_f, 0 );
setEffRotateKey( spep_2 + 197, shot_f, 0 );
setEffAlphaKey( spep_2 + 0, shot_f, 255 );
setEffAlphaKey( spep_2 + 197 -1, shot_f, 255 );
setEffAlphaKey( spep_2 + 197, shot_f, 0 );

shot_b = entryEffectLife( spep_2 + 0, SP_03, 197, 0x80, -1, 0, 0, 0 );  --ブラスター溜め〜撃つ    ef_002_back
setEffMoveKey( spep_2 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 197, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 197, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_b, 0 );
setEffRotateKey( spep_2 + 197, shot_b, 0 );
setEffAlphaKey( spep_2 + 0, shot_b, 255 );
setEffAlphaKey( spep_2 + 197 -1, shot_b, 255 );
setEffAlphaKey( spep_2 + 197, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 136, 1, 1 );
--setDisp( spep_2 -3 + 201, 1, 0 );
changeAnime( spep_2 -3 + 136, 1, 118 );

setMoveKey( spep_2 -3 + 136, 1, 120.2, -44 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 124.2, -48 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 122.3, -51.4 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 120.4, -46.8 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 124.5, -52.2 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 122.7, -54.3 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 120.9, -56.4 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 121.1, -62.5 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 121.3, -52.6 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 125.5, -48.7 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 121.7, -52.8 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 126.8, -50.1 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 131.9, -47.5 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 126.3, -56.1 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 126.8, -52.8 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 127.3, -49.6 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 127.7, -53.8 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 124.1, -54 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 120.6, -58.2 , 0 );

setScaleKey( spep_2 -3 + 136, 1, 1.41, 1.41 );
setScaleKey( spep_2 -3 + 146, 1, 1.41, 1.41 );
setScaleKey( spep_2 -3 + 148, 1, 1.42, 1.42 );
setScaleKey( spep_2 -3 + 152, 1, 1.42, 1.42 );
setScaleKey( spep_2 -3 + 154, 1, 1.43, 1.43 );
setScaleKey( spep_2 -3 + 158, 1, 1.43, 1.43 );
setScaleKey( spep_2 -3 + 160, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 162, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 164, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 166, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 168, 1, 1.46, 1.46 );
setScaleKey( spep_2 -3 + 170, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 172, 1, 1.47, 1.47 );

setRotateKey( spep_2 -3 + 136, 1, 0 );

-- ** 音 ** --
--銃発射
SE015 = playSeVer2( spep_2 + 64, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE015, 73 );
SE016 = playSeVer2( spep_2 + 66, 1027, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 66, 1145, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 66, 1312, "", 0, 0, 0, -1);

--エネルギー飛んでいく
SE019 = playSeVer2( spep_2 + 136, 1177, "",spep_2 + 206, 16, 12, -1);
setStartTimeMs( SE019,  250 );
SE020 = playSeVer2( spep_2 + 136, 1021, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 197 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 170 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    
   
    pauseAll( SP_dodge, 67);

        -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 120.6, -58.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 129.1, -63.8 , 0 );
    setMoveKey( SP_dodge + 4, 1, 137.6, -69.4 , 0 );
    setMoveKey( SP_dodge + 6, 1, 146.2, -75 , 0 );
    setMoveKey( SP_dodge + 8, 1, 155, -80.7 , 0 );
    setMoveKey( SP_dodge + 10, 1, 163.8, -86.5 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.47, 1.47 );
    setScaleKey( SP_dodge + 2, 1, 1.48, 1.48 );
    setScaleKey( SP_dodge + 4, 1, 1.49, 1.49 );
    setScaleKey( SP_dodge + 6, 1, 1.5, 1.5 );
    setScaleKey( SP_dodge + 8, 1, 1.51, 1.51 );
    setScaleKey( SP_dodge + 10, 1, 1.52, 1.52 );

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
changeAnime( spep_2 -3 + 196, 1, 107 );

setMoveKey( spep_2 -3 + 174, 1, 129.1, -63.8 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 137.6, -69.4 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 146.2, -75 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 155, -80.7 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 163.8, -86.5 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 172.8, -92.3 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 182.1, -98.3 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 192.4, -104.8 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 207.7, -113.7 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 233.5, -127.9 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 284.2, -154.6 , 0 );
setMoveKey( spep_2 -3 + 195, 1, 284.2, -154.6 , 0 );--
setMoveKey( spep_2 -3 + 196, 1, 292.1, -159.9 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 416.1, -152 , 0 );
setMoveKey( spep_2 -3 + 199, 1, 416.1, -152 , 0 );
--setMoveKey( spep_2 -3 + 200, 1, 532.1, -264 , 0 );
--setMoveKey( spep_2 -3 + 201, 1, 532.1, -264 , 0 );

setScaleKey( spep_2 -3 + 174, 1, 1.48, 1.48 );
setScaleKey( spep_2 -3 + 176, 1, 1.49, 1.49 );
setScaleKey( spep_2 -3 + 178, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 180, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 182, 1, 1.52, 1.52 );
setScaleKey( spep_2 -3 + 184, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 186, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 188, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 190, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 192, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 194, 1, 2.61, 2.61 );
setScaleKey( spep_2 -3 + 195, 1, 2.61, 2.61 );--
setScaleKey( spep_2 -3 + 196, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 198, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 199, 1, 2.52, 2.52 );
--setScaleKey( spep_2 -3 + 200, 1, 3.06, 3.06 );
--setScaleKey( spep_2 -3 + 201, 1, 3.06, 3.06 );

setRotateKey( spep_2 -3 + 195, 1, 0 );
setRotateKey( spep_2 -3 + 196, 1, 45.1 );
setRotateKey( spep_2 -3 + 199, 1, 45.1 );

-- ** 音 ** --
--爆発
SE021 = playSeVer2( spep_2 + 186, 1023, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 197;

------------------------------------------------------
-- ガラス激突(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --ガラス激突 ef_003_front
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 112, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 112, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --ガラス激突 ef_003_back
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 112, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 112, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 112, 1, 0 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_3 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_3 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_3 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_3 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_3 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_3 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_3 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_3 + 0, 1, -122.8 - 232 );
setRotateKey( spep_3 + 2, 1, -122.8 );
setRotateKey( spep_3 -3 + 6, 1, -1 );
setRotateKey( spep_3 -3 + 8, 1, 120.7 );
setRotateKey( spep_3 -3 + 10, 1, 242.5 );
setRotateKey( spep_3 -3 + 12, 1, 364.3 );
setRotateKey( spep_3 -3 + 14, 1, 486 );
setRotateKey( spep_3 -3 + 16, 1, 607.8 );
setRotateKey( spep_3 -3 + 18, 1, 729.5 );
setRotateKey( spep_3 + 112, 1, 729.5 );

-- ** 音 ** --

--画面割れ
SE022 = playSeVer2( spep_3 + 14, 1025, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_3 + 14, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 6 -2 ); -- ダメージ表示フレーム
endPhase( spep_3 + 108 -2 ); -- 終了フレーム

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 岩山〜指差し(188F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_b = entryEffectLife( spep_0 + 0, SP_01, 186, 0x80, -1, 0, 0, 0 );  --岩山〜指差し	ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 186, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 186, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 186, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 186 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 186, first_b, 0 );

spep_x = spep_0 + 88;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
changeAnime( spep_0 + 0, 1, 0 );
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 66, 1, 0 );

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
setMoveKey( spep_0 -3 + 66, 1, -2.6, 97.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 1, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 2, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 3, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 4, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 5, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 6, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 66, 1, 0.17, 0.17 );

setRotateKey( spep_0 + 0, 1, -3.8 );
setRotateKey( spep_0 + 1, 1, -3.8 );
setRotateKey( spep_0 + 2, 1, -3.8 );
setRotateKey( spep_0 + 3, 1, -3.8 );
setRotateKey( spep_0 + 4, 1, -3.8 );
setRotateKey( spep_0 + 5, 1, -3.8 );
setRotateKey( spep_0 + 6, 1, -3.8 );
setRotateKey( spep_0 -3 + 66, 1, -3.8 );

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
SE004 = playSeVer2( spep_0 + 92, 1233, "", 0, 4, 0, -1);
setStartTimeMs( SE004,  100 );
SE006 = playSeVer2( spep_0 + 92, 1189, "", 0, 0, 0, -1);

--顔カットイン
SE007 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--マント翻る
SE008 = playSeVer2( spep_0 + 130, 1332, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 186 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 186;


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

--銃エネルギー溜める
SE010 = playSeVer2( spep_1 + 86, 1257, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE010, 158 );
SE011 = playSeVer2( spep_1 + 88, 1356, "",spep_1 + 186, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 88, SE011, 117 );
SE012 = playSeVer2( spep_1 + 92, 1157, "",spep_1 + 186, 0, 24, -1);
SE013 = playSeVer2( spep_1 + 92, 1254, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE013, 71 );
SE014 = playSeVer2( spep_1 + 92, 1282, "",spep_1 + 190, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 92, SE014, 71 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- ブラスター溜め〜撃つ(198F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_2 + 0, SP_02r, 197, 0x100, -1, 0, 0, 0 );  --ブラスター溜め〜撃つ    ef_002_front
setEffMoveKey( spep_2 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 197, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 197, shot_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_f, 0 );
setEffRotateKey( spep_2 + 197, shot_f, 0 );
setEffAlphaKey( spep_2 + 0, shot_f, 255 );
setEffAlphaKey( spep_2 + 197 -1, shot_f, 255 );
setEffAlphaKey( spep_2 + 197, shot_f, 0 );

shot_b = entryEffectLife( spep_2 + 0, SP_03r, 197, 0x80, -1, 0, 0, 0 );  --ブラスター溜め〜撃つ    ef_002_back
setEffMoveKey( spep_2 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 197, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 197, shot_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_b, 0 );
setEffRotateKey( spep_2 + 197, shot_b, 0 );
setEffAlphaKey( spep_2 + 0, shot_b, 255 );
setEffAlphaKey( spep_2 + 197 -1, shot_b, 255 );
setEffAlphaKey( spep_2 + 197, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 136, 1, 1 );
--setDisp( spep_2 -3 + 201, 1, 0 );
changeAnime( spep_2 -3 + 136, 1, 118 );

setMoveKey( spep_2 -3 + 136, 1, 120.2, -44 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 124.2, -48 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 122.3, -51.4 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 120.4, -46.8 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 124.5, -52.2 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 122.7, -54.3 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 120.9, -56.4 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 121.1, -62.5 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 121.3, -52.6 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 125.5, -48.7 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 121.7, -52.8 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 126.8, -50.1 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 131.9, -47.5 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 126.3, -56.1 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 126.8, -52.8 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 127.3, -49.6 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 127.7, -53.8 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 124.1, -54 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 120.6, -58.2 , 0 );

setScaleKey( spep_2 -3 + 136, 1, 1.41, 1.41 );
setScaleKey( spep_2 -3 + 146, 1, 1.41, 1.41 );
setScaleKey( spep_2 -3 + 148, 1, 1.42, 1.42 );
setScaleKey( spep_2 -3 + 152, 1, 1.42, 1.42 );
setScaleKey( spep_2 -3 + 154, 1, 1.43, 1.43 );
setScaleKey( spep_2 -3 + 158, 1, 1.43, 1.43 );
setScaleKey( spep_2 -3 + 160, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 162, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 164, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 166, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 168, 1, 1.46, 1.46 );
setScaleKey( spep_2 -3 + 170, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 172, 1, 1.47, 1.47 );

setRotateKey( spep_2 -3 + 136, 1, 0 );

-- ** 音 ** --
--銃発射
SE015 = playSeVer2( spep_2 + 64, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE015, 73 );
SE016 = playSeVer2( spep_2 + 66, 1027, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 66, 1145, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 66, 1312, "", 0, 0, 0, -1);

--エネルギー飛んでいく
SE019 = playSeVer2( spep_2 + 136, 1177, "",spep_2 + 206, 16, 12, -1);
setStartTimeMs( SE019,  250 );
SE020 = playSeVer2( spep_2 + 136, 1021, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 197 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 170 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    
   
    pauseAll( SP_dodge, 67);

        -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 120.6, -58.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 129.1, -63.8 , 0 );
    setMoveKey( SP_dodge + 4, 1, 137.6, -69.4 , 0 );
    setMoveKey( SP_dodge + 6, 1, 146.2, -75 , 0 );
    setMoveKey( SP_dodge + 8, 1, 155, -80.7 , 0 );
    setMoveKey( SP_dodge + 10, 1, 163.8, -86.5 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.47, 1.47 );
    setScaleKey( SP_dodge + 2, 1, 1.48, 1.48 );
    setScaleKey( SP_dodge + 4, 1, 1.49, 1.49 );
    setScaleKey( SP_dodge + 6, 1, 1.5, 1.5 );
    setScaleKey( SP_dodge + 8, 1, 1.51, 1.51 );
    setScaleKey( SP_dodge + 10, 1, 1.52, 1.52 );

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
changeAnime( spep_2 -3 + 196, 1, 107 );

setMoveKey( spep_2 -3 + 174, 1, 129.1, -63.8 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 137.6, -69.4 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 146.2, -75 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 155, -80.7 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 163.8, -86.5 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 172.8, -92.3 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 182.1, -98.3 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 192.4, -104.8 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 207.7, -113.7 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 233.5, -127.9 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 284.2, -154.6 , 0 );
setMoveKey( spep_2 -3 + 195, 1, 284.2, -154.6 , 0 );--
setMoveKey( spep_2 -3 + 196, 1, 292.1, -159.9 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 416.1, -152 , 0 );
setMoveKey( spep_2 -3 + 199, 1, 416.1, -152 , 0 );
--setMoveKey( spep_2 -3 + 200, 1, 532.1, -264 , 0 );
--setMoveKey( spep_2 -3 + 201, 1, 532.1, -264 , 0 );

setScaleKey( spep_2 -3 + 174, 1, 1.48, 1.48 );
setScaleKey( spep_2 -3 + 176, 1, 1.49, 1.49 );
setScaleKey( spep_2 -3 + 178, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 180, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 182, 1, 1.52, 1.52 );
setScaleKey( spep_2 -3 + 184, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 186, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 188, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 190, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 192, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 194, 1, 2.61, 2.61 );
setScaleKey( spep_2 -3 + 195, 1, 2.61, 2.61 );--
setScaleKey( spep_2 -3 + 196, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 198, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 199, 1, 2.52, 2.52 );
--setScaleKey( spep_2 -3 + 200, 1, 3.06, 3.06 );
--setScaleKey( spep_2 -3 + 201, 1, 3.06, 3.06 );

setRotateKey( spep_2 -3 + 195, 1, 0 );
setRotateKey( spep_2 -3 + 196, 1, 45.1 );
setRotateKey( spep_2 -3 + 199, 1, 45.1 );

-- ** 音 ** --
--爆発
SE021 = playSeVer2( spep_2 + 186, 1023, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 197;

------------------------------------------------------
-- ガラス激突(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --ガラス激突 ef_003_front
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 112, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 112, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --ガラス激突 ef_003_back
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 112, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 112, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 112, 1, 0 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_3 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_3 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_3 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_3 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_3 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_3 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_3 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_3 + 0, 1, -122.8 - 232 );
setRotateKey( spep_3 + 2, 1, -122.8 );
setRotateKey( spep_3 -3 + 6, 1, -1 );
setRotateKey( spep_3 -3 + 8, 1, 120.7 );
setRotateKey( spep_3 -3 + 10, 1, 242.5 );
setRotateKey( spep_3 -3 + 12, 1, 364.3 );
setRotateKey( spep_3 -3 + 14, 1, 486 );
setRotateKey( spep_3 -3 + 16, 1, 607.8 );
setRotateKey( spep_3 -3 + 18, 1, 729.5 );
setRotateKey( spep_3 + 112, 1, 729.5 );

-- ** 音 ** --

--画面割れ
SE022 = playSeVer2( spep_3 + 14, 1025, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_3 + 14, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 6 -2 ); -- ダメージ表示フレーム
endPhase( spep_3 + 108 -2 ); -- 終了フレーム

end