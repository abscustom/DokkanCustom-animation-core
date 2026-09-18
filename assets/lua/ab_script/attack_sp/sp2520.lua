--1026130:LR孫悟飯(幼年期)_魔閃光
--sp_effect_b2_00054
--sp2520

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
SP_01 = 161464; --冒頭ダッシュ：敵より前  ef_001
SP_02 = 161465; --冒頭ダッシュ、敵より後ろ ef_002
SP_03 = 161466; --横ループ飛びかかり ef_003
SP_04 = 161467; --格闘、敵上空飛ばし：敵より前 ef_004
SP_05 = 161468; --格闘、敵上空飛ばし：敵より後ろ ef_005
SP_06 = 161469; --空中回転落下 ef_006
SP_07 = 161470; --魔閃光発射 ef_007
SP_08 = 161471; --ラスト敵被弾：敵より前 ef_008
SP_09 = 161472; --ラスト敵被弾：敵より後ろ ef_009

--敵側

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--敵が最初から表示されるためコメントアウト
--changeAnime( 0, 1, 100);

setDisp( 0, 0, 0);
--敵が最初から表示されるためコメントアウト
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

--敵が最初から表示されるためコメントアウト
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
setRotateKey( 6,   1,  0 );]]--

ENABLE_AUTO_TIME_STRETCH(0.8);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 冒頭ダッシュ(148F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --冒頭ダッシュ：敵より前  ef_001

setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, first_f, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 148, first_f, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 148, first_f, 0 );

setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 148 - 2, first_f, 255 );
setEffAlphaKey( spep_0 + 148 - 1, first_f, 255 );
setEffAlphaKey( spep_0 + 148, first_f, 0 );


first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --冒頭ダッシュ：敵より後ろ  ef_002

setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, first_b, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 148, first_b, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 148, first_b, 0 );

setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 148 - 2, first_b, 255 );
setEffAlphaKey( spep_0 + 148 - 1, first_b, 255 );
setEffAlphaKey( spep_0 + 148, first_b, 0 );

--//////////セリフカットインテンプレ
------------------------------------------------------
spep_x = spep_0 + 10;  --表示させたいフレーム−10の分を足す！

speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 148, 1, 0 );

changeAnime( spep_0 + 0, 1, 16 );

setMoveKey( spep_0 + 0, 1, 125.6, 462.5 , 0 );
setMoveKey( spep_0 + 1, 1, 125.6, 462.5 , 0 );
setMoveKey( spep_0 + 2, 1, 125.6, 462.5 , 0 );
setMoveKey( spep_0 + 3, 1, 125.6, 422.2 , 0 );
setMoveKey( spep_0 + 4, 1, 125.6, 422.2 , 0 );
setMoveKey( spep_0 + 5, 1, 125.5, 387.5 , 0 );
setMoveKey( spep_0 + 6, 1, 125.5, 387.5 , 0 );
setMoveKey( spep_0 + 8, 1, 125.5, 358.2 , 0 );
setMoveKey( spep_0 + 10, 1, 125.5, 333.8 , 0 );
setMoveKey( spep_0 + 12, 1, 125.4, 313.7 , 0 );
setMoveKey( spep_0 + 14, 1, 125.4, 297.7 , 0 );
setMoveKey( spep_0 + 16, 1, 125.4, 285.2 , 0 );
setMoveKey( spep_0 + 18, 1, 125.4, 275.8 , 0 );
setMoveKey( spep_0 + 20, 1, 125.4, 269.1 , 0 );
setMoveKey( spep_0 + 22, 1, 125.3, 264.6 , 0 );
setMoveKey( spep_0 + 24, 1, 125.3, 261.9 , 0 );
setMoveKey( spep_0 + 26, 1, 125.3, 260.5 , 0 );
setMoveKey( spep_0 + 28, 1, 125.3, 260 , 0 );
setMoveKey( spep_0 + 30, 1, 125.3, 259.9 , 0 );
setMoveKey( spep_0 + 32, 1, 125.3, 258.3 , 0 );
setMoveKey( spep_0 + 34, 1, 125.3, 256.7 , 0 );
setMoveKey( spep_0 + 36, 1, 125.3, 255.1 , 0 );
setMoveKey( spep_0 + 38, 1, 125.3, 253.5 , 0 );
setMoveKey( spep_0 + 40, 1, 125.3, 251.9 , 0 );
setMoveKey( spep_0 + 42, 1, 125.3, 250.2 , 0 );
setMoveKey( spep_0 + 44, 1, 125.3, 248.6 , 0 );
setMoveKey( spep_0 + 46, 1, 125.3, 247 , 0 );
setMoveKey( spep_0 + 48, 1, 125.3, 245.3 , 0 );
setMoveKey( spep_0 + 50, 1, 125.3, 243.7 , 0 );
setMoveKey( spep_0 + 52, 1, 125.3, 242.1 , 0 );
setMoveKey( spep_0 + 54, 1, 125.3, 240.4 , 0 );
setMoveKey( spep_0 + 56, 1, 125.3, 238.8 , 0 );
setMoveKey( spep_0 + 58, 1, 125.3, 237.2 , 0 );
setMoveKey( spep_0 + 60, 1, 125.3, 235.5 , 0 );
setMoveKey( spep_0 + 142, 1, 125.3, 235.5 , 0 );
setMoveKey( spep_0 + 144, 1, 125.3, 235.4 , 0 );
setMoveKey( spep_0 + 148, 1, 125.3, 235.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 1, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 2, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 3, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 4, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 5, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 6, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 8, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 10, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 12, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 14, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 16, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 18, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 20, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 22, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 24, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 26, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 28, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 30, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 32, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 34, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 36, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 38, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 40, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 42, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 44, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 46, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 48, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 50, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 52, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 54, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 56, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 58, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 60, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 62, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 64, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 66, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 68, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 70, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 72, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 74, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 76, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 78, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 80, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 82, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 84, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 86, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 88, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 90, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 92, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 94, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 96, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 98, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 100, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 102, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 104, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 106, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 108, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 110, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 112, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 114, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 116, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 118, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 120, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 122, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 124, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 126, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 128, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 130, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 132, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 134, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 136, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 138, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 140, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 142, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 144, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 146, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 148, 1, 1.05, 1.05 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0.1 );
setRotateKey( spep_0 + 4, 1, 0.1 );
setRotateKey( spep_0 + 5, 1, 0.3 );
setRotateKey( spep_0 + 6, 1, 0.3 );
setRotateKey( spep_0 + 8, 1, 0.4 );
setRotateKey( spep_0 + 10, 1, 0.6 );
setRotateKey( spep_0 + 12, 1, 0.7 );
setRotateKey( spep_0 + 14, 1, 0.9 );
setRotateKey( spep_0 + 16, 1, 1 );
setRotateKey( spep_0 + 18, 1, 1.2 );
setRotateKey( spep_0 + 20, 1, 1.3 );
setRotateKey( spep_0 + 22, 1, 1.5 );
setRotateKey( spep_0 + 24, 1, 1.6 );
setRotateKey( spep_0 + 26, 1, 1.8 );
setRotateKey( spep_0 + 28, 1, 1.9 );
setRotateKey( spep_0 + 30, 1, 2.1 );
setRotateKey( spep_0 + 32, 1, 2.2 );
setRotateKey( spep_0 + 34, 1, 2.4 );
setRotateKey( spep_0 + 36, 1, 2.5 );
setRotateKey( spep_0 + 38, 1, 2.7 );
setRotateKey( spep_0 + 40, 1, 2.8 );
setRotateKey( spep_0 + 42, 1, 3 );
setRotateKey( spep_0 + 44, 1, 3.1 );
setRotateKey( spep_0 + 46, 1, 3.2 );
setRotateKey( spep_0 + 48, 1, 3.4 );
setRotateKey( spep_0 + 50, 1, 3.5 );
setRotateKey( spep_0 + 52, 1, 3.6 );
setRotateKey( spep_0 + 54, 1, 3.8 );
setRotateKey( spep_0 + 56, 1, 3.9 );
setRotateKey( spep_0 + 58, 1, 4 );
setRotateKey( spep_0 + 60, 1, 4.2 );
setRotateKey( spep_0 + 62, 1, 4.3 );
setRotateKey( spep_0 + 64, 1, 4.5 );
setRotateKey( spep_0 + 66, 1, 4.6 );
setRotateKey( spep_0 + 68, 1, 4.7 );
setRotateKey( spep_0 + 70, 1, 4.9 );
setRotateKey( spep_0 + 72, 1, 5 );
setRotateKey( spep_0 + 74, 1, 5.1 );
setRotateKey( spep_0 + 76, 1, 5.3 );
setRotateKey( spep_0 + 78, 1, 5.4 );
setRotateKey( spep_0 + 80, 1, 5.5 );
setRotateKey( spep_0 + 82, 1, 5.7 );
setRotateKey( spep_0 + 84, 1, 5.8 );
setRotateKey( spep_0 + 86, 1, 6 );
setRotateKey( spep_0 + 88, 1, 6.1 );
setRotateKey( spep_0 + 90, 1, 6.2 );
setRotateKey( spep_0 + 92, 1, 6.4 );
setRotateKey( spep_0 + 94, 1, 6.5 );
setRotateKey( spep_0 + 96, 1, 6.6 );
setRotateKey( spep_0 + 98, 1, 6.8 );
setRotateKey( spep_0 + 100, 1, 6.9 );
setRotateKey( spep_0 + 102, 1, 7 );
setRotateKey( spep_0 + 104, 1, 7.2 );
setRotateKey( spep_0 + 106, 1, 7.3 );
setRotateKey( spep_0 + 108, 1, 7.5 );
setRotateKey( spep_0 + 110, 1, 7.6 );
setRotateKey( spep_0 + 112, 1, 7.7 );
setRotateKey( spep_0 + 114, 1, 7.9 );
setRotateKey( spep_0 + 116, 1, 8 );
setRotateKey( spep_0 + 118, 1, 8.1 );
setRotateKey( spep_0 + 120, 1, 8.3 );
setRotateKey( spep_0 + 122, 1, 8.4 );
setRotateKey( spep_0 + 124, 1, 8.5 );
setRotateKey( spep_0 + 126, 1, 8.7 );
setRotateKey( spep_0 + 128, 1, 8.8 );
setRotateKey( spep_0 + 130, 1, 9 );
setRotateKey( spep_0 + 132, 1, 9.1 );
setRotateKey( spep_0 + 134, 1, 9.2 );
setRotateKey( spep_0 + 136, 1, 9.4 );
setRotateKey( spep_0 + 138, 1, 9.5 );
setRotateKey( spep_0 + 140, 1, 9.6 );
setRotateKey( spep_0 + 142, 1, 9.8 );
setRotateKey( spep_0 + 148, 1, 9.8 );

-- ** 音 ** --
--空力音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 178, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--走ってくる
SE002 = playSeVer2( spep_0 + 2, 1367, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 10, 1108, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 22, 1108, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 36, 1108, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 50, 1108, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 62, 1108, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 76, 1108, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 90, 1108, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 102, 1108, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 116, 1108, "", 0, 0, 0, -1);

--敵飛んでくる
SE003 = playSeVer2( spep_0 + 2, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 35 );
setTimeStretch( SE003, 2, 30, 4 );
SE006 = playSeVer2( spep_0 + 20, 1304, "",spep_0 + 164, 0, 12, -1);
setPitch( spep_0 + 20, SE006, -600 );
setTimeStretch( SE006, 0.6, 30, 4 );

--顔カットイン
--SE005 = playSeVer2( spep_0 + 20, 1018, "", 0, 0, 0, -1);

--踏ん張る
SE014 = playSeVer2( spep_0 + 112, 1367, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 116, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE016, 207 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 148 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 148;

------------------------------------------------------
-- 横ループ飛びかかり(78F)
------------------------------------------------------

-- ** エフェクト等 ** --
sidekick_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --横ループ飛びかかり ef_003

setEffMoveKey( spep_1 + 0, sidekick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 78, sidekick_f, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, sidekick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 78, sidekick_f, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, sidekick_f, 0 );
setEffRotateKey( spep_1 + 78, sidekick_f, 0 );

setEffAlphaKey( spep_1 + 0, sidekick_f, 255 );
setEffAlphaKey( spep_1 + 78 - 2, sidekick_f, 255 );
setEffAlphaKey( spep_1 + 78 - 1, sidekick_f, 255 );
setEffAlphaKey( spep_1 + 78, sidekick_f, 0 );

-- ** 音 ** --
--飛びかかる
SE017 = playSeVer2( spep_1 + 0, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 0, 1117, "", 0, 0, 0, -1);

--飛びかかるアップ
SE019 = playSeVer2( spep_1 + 38, 1314, "",spep_1 + 94, 0, 12, -1);
SE020 = playSeVer2( spep_1 + 38, 1019, "",spep_1 + 94, 0, 12, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 78 + 2, 0, 0, 0, 0, 255); 

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 68; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    
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
spep_2 = spep_1 + 78;


------------------------------------------------------
-- 格闘、敵上空飛ばし(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
grappling_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --格闘、敵上空飛ばし：敵より前 ef_004

setEffMoveKey( spep_2 + 0, grappling_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, grappling_f, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, grappling_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, grappling_f, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, grappling_f, 0 );
setEffRotateKey( spep_2 + 136, grappling_f, 0 );

setEffAlphaKey( spep_2 + 0, grappling_f, 255 );
setEffAlphaKey( spep_2 + 136 - 2, grappling_f, 255 );
setEffAlphaKey( spep_2 + 136 - 1, grappling_f, 255 );
setEffAlphaKey( spep_2 + 136, grappling_f, 0 );


grappling_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --格闘、敵上空飛ばし：敵より後ろ ef_005

setEffMoveKey( spep_2 + 0, grappling_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, grappling_b, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, grappling_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, grappling_b, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, grappling_b, 0 );
setEffRotateKey( spep_2 + 136, grappling_b, 0 );

setEffAlphaKey( spep_2 + 0, grappling_b, 255 );
setEffAlphaKey( spep_2 + 136 - 2, grappling_b, 255 );
setEffAlphaKey( spep_2 + 136 - 1, grappling_b, 255 );
setEffAlphaKey( spep_2 + 136, grappling_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 9, 1, 1 );
setDisp( spep_2 + 10, 1, 1 );
setDisp( spep_2 + 82, 1, 0 );
setDisp( spep_2 + 109, 1, 1 );
setDisp( spep_2 + 110, 1, 1 );
setDisp( spep_2 + 136, 1, 0 );

changeAnime( spep_2 + 9, 1, 108 );
changeAnime( spep_2 + 10, 1, 108 );
changeAnime( spep_2 + 45, 1, 105 );
changeAnime( spep_2 + 46, 1, 105 );
changeAnime( spep_2 + 110, 1, 105 );

setMoveKey( spep_2 + 9, 1, 95.1, -30.5 , 0 ); 
setMoveKey( spep_2 + 10, 1, 95.1, -30.5 , 0 );
setMoveKey( spep_2 + 11, 1, 65.1, 10.5 , 0 );
setMoveKey( spep_2 + 12, 1, 65.1, 10.5 , 0 );
setMoveKey( spep_2 + 13, 1, 120.1, -30.5 , 0 );
setMoveKey( spep_2 + 14, 1, 120.1, -30.5 , 0 );
setMoveKey( spep_2 + 15, 1, 77.1, 10.5 , 0 );
setMoveKey( spep_2 + 16, 1, 77.1, 10.5 , 0 );
setMoveKey( spep_2 + 17, 1, 127.1, -35.5 , 0 );
setMoveKey( spep_2 + 18, 1, 127.1, -35.5 , 0 );
setMoveKey( spep_2 + 19, 1, 95.1, -25.5 , 0 );
setMoveKey( spep_2 + 20, 1, 95.1, -25.5 , 0 );
setMoveKey( spep_2 + 21, 1, 100.1, -30.5 , 0 );
setMoveKey( spep_2 + 22, 1, 100.1, -30.5 , 0 );
setMoveKey( spep_2 + 23, 1, 100.1, -30.5 , 0 );
setMoveKey( spep_2 + 24, 1, 100.1, -30.5 , 0 );
setMoveKey( spep_2 + 25, 1, 105.1, -34.5 , 0 );
setMoveKey( spep_2 + 26, 1, 105.1, -34.5 , 0 );
setMoveKey( spep_2 + 27, 1, 105.1, -34.5 , 0 );
setMoveKey( spep_2 + 28, 1, 105.1, -34.5 , 0 );
setMoveKey( spep_2 + 29, 1, 110.1, -34.5 , 0 );
setMoveKey( spep_2 + 30, 1, 110.1, -34.5 , 0 );
setMoveKey( spep_2 + 31, 1, 115.1, -44.5 , 0 );
setMoveKey( spep_2 + 32, 1, 115.1, -44.5 , 0 );
setMoveKey( spep_2 + 33, 1, 120.1, -48.5 , 0 );
setMoveKey( spep_2 + 34, 1, 120.1, -48.5 , 0 );
setMoveKey( spep_2 + 35, 1, 125.1, -48.5 , 0 );
setMoveKey( spep_2 + 36, 1, 125.1, -48.5 , 0 );
setMoveKey( spep_2 + 37, 1, 125.1, -48.5 , 0 );
setMoveKey( spep_2 + 38, 1, 125.1, -48.5 , 0 );
setMoveKey( spep_2 + 39, 1, 125.1, -48.5 , 0 );
setMoveKey( spep_2 + 40, 1, 125.1, -48.5 , 0 );
setMoveKey( spep_2 + 41, 1, 125.1, -48.5 , 0 );
setMoveKey( spep_2 + 42, 1, 125.1, -48.5 , 0 );
setMoveKey( spep_2 + 43, 1, 133.1, -48.5 , 0 );
setMoveKey( spep_2 + 44, 1, 133.1, -48.5 , 0 );
setMoveKey( spep_2 + 45, 1, 37.7, -28.5 , 0 );
setMoveKey( spep_2 + 46, 1, 37.7, -28.5 , 0 );
setMoveKey( spep_2 + 47, 1, 62.1, 45.1 , 0 );
setMoveKey( spep_2 + 48, 1, 62.1, 45.1 , 0 );
setMoveKey( spep_2 + 49, 1, 84.1, 21.1 , 0 );
setMoveKey( spep_2 + 50, 1, 84.1, 21.1 , 0 );
setMoveKey( spep_2 + 51, 1, 82.1, -21.1 , 0 );
setMoveKey( spep_2 + 52, 1, 82.1, -21.1 , 0 );
setMoveKey( spep_2 + 53, 1, 84.5, 58.9 , 0 );
setMoveKey( spep_2 + 54, 1, 84.5, 58.9 , 0 );
setMoveKey( spep_2 + 55, 1, 140.1, -10.3 , 0 );
setMoveKey( spep_2 + 56, 1, 140.1, -10.3 , 0 );
setMoveKey( spep_2 + 57, 1, 103.5, 60.1 , 0 );
setMoveKey( spep_2 + 58, 1, 103.5, 60.1 , 0 );
setMoveKey( spep_2 + 59, 1, 143.5, 104.1 , 0 );
setMoveKey( spep_2 + 60, 1, 143.5, 104.1 , 0 );
setMoveKey( spep_2 + 61, 1, 123.5, 128.1 , 0 );
setMoveKey( spep_2 + 62, 1, 123.5, 128.1 , 0 );
setMoveKey( spep_2 + 61, 1, 134.5, 129.1 , 0 );
setMoveKey( spep_2 + 62, 1, 134.5, 129.1 , 0 );
setMoveKey( spep_2 + 63, 1, 150.5, 165.1 , 0 );
setMoveKey( spep_2 + 64, 1, 150.5, 165.1 , 0 );
setMoveKey( spep_2 + 65, 1, 149.8, 200.1 , 0 );
setMoveKey( spep_2 + 66, 1, 149.8, 200.1 , 0 );
setMoveKey( spep_2 + 67, 1, 176, 278.7 , 0 );
setMoveKey( spep_2 + 68, 1, 176, 278.7 , 0 );
setMoveKey( spep_2 + 69, 1, 202.6, 343 , 0 );
setMoveKey( spep_2 + 70, 1, 202.6, 343 , 0 );
setMoveKey( spep_2 + 71, 1, 229.3, 418 , 0 );
setMoveKey( spep_2 + 72, 1, 229.3, 418 , 0 );
setMoveKey( spep_2 + 73, 1, 256.4, 503.8 , 0 );
setMoveKey( spep_2 + 74, 1, 256.4, 503.8 , 0 );
setMoveKey( spep_2 + 75, 1, 283.6, 580.2 , 0 );
setMoveKey( spep_2 + 76, 1, 283.6, 580.2 , 0 );
setMoveKey( spep_2 + 77, 1, 311.2, 647.3 , 0 );
setMoveKey( spep_2 + 78, 1, 311.2, 647.3 , 0 );
setMoveKey( spep_2 + 79, 1, 339, 725.2 , 0 );
setMoveKey( spep_2 + 80, 1, 339, 725.2 , 0 );
setMoveKey( spep_2 + 82, 1, 339, 725.2 , 0 );
setMoveKey( spep_2 + 109, 1, -132.6, -635.4 , 0 );
setMoveKey( spep_2 + 110, 1, -132.6, -635.4 , 0 );
setMoveKey( spep_2 + 112, 1, -63.9, -478 , 0 );
setMoveKey( spep_2 + 114, 1, 4.9, -330.6 , 0 );
setMoveKey( spep_2 + 116, 1, 73.7, -164.3 , 0 );
setMoveKey( spep_2 + 118, 1, 142.5, -34.9 , 0 );
setMoveKey( spep_2 + 120, 1, 144.5, -30.6 , 0 );
setMoveKey( spep_2 + 122, 1, 146.6, -26.4 , 0 );
setMoveKey( spep_2 + 124, 1, 148.6, -22.2 , 0 );
setMoveKey( spep_2 + 126, 1, 150.6, -17.9 , 0 );
setMoveKey( spep_2 + 128, 1, 152.7, -13.7 , 0 );
setMoveKey( spep_2 + 130, 1, 154.7, -9.5 , 0 );
setMoveKey( spep_2 + 132, 1, 156.8, -5.3 , 0 );
setMoveKey( spep_2 + 134, 1, 158.9, -1 , 0 );
setMoveKey( spep_2 + 136, 1, 160.9, 3.2 , 0 );

setScaleKey( spep_2 + 9, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 10, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 44, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 45, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 46, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 63, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 64, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 65, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 66, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 67, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 68, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 69, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 70, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 71, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 72, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 73, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 74, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 75, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 76, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 77, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 78, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 79, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 80, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 82, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 109, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 110, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 112, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 114, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 116, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 118, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 120, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 122, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 124, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 126, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 128, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 130, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 132, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 134, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 136, 1, 0.62, 0.62 );

setRotateKey( spep_2 + 9, 1, 0 );
setRotateKey( spep_2 + 10, 1, 0 );
setRotateKey( spep_2 + 14, 1, 0 );
setRotateKey( spep_2 + 15, 1, 0.7 );
setRotateKey( spep_2 + 16, 1, 0.7 );
setRotateKey( spep_2 + 17, 1, 1.3 );
setRotateKey( spep_2 + 18, 1, 1.3 );
setRotateKey( spep_2 + 19, 1, 2 );
setRotateKey( spep_2 + 20, 1, 2 );
setRotateKey( spep_2 + 21, 1, 2.7 );
setRotateKey( spep_2 + 22, 1, 2.7 );
setRotateKey( spep_2 + 23, 1, 3.3 );
setRotateKey( spep_2 + 24, 1, 3.3 );
setRotateKey( spep_2 + 25, 1, 4 );
setRotateKey( spep_2 + 26, 1, 4 );
setRotateKey( spep_2 + 27, 1, 4.7 );
setRotateKey( spep_2 + 28, 1, 4.7 );
setRotateKey( spep_2 + 29, 1, 5.3 );
setRotateKey( spep_2 + 30, 1, 5.3 );
setRotateKey( spep_2 + 31, 1, 6 );
setRotateKey( spep_2 + 32, 1, 6 );
setRotateKey( spep_2 + 33, 1, 6.7 );
setRotateKey( spep_2 + 34, 1, 6.7 );
setRotateKey( spep_2 + 35, 1, 7.3 );
setRotateKey( spep_2 + 36, 1, 7.3 );
setRotateKey( spep_2 + 37, 1, 8 );
setRotateKey( spep_2 + 38, 1, 8 );
setRotateKey( spep_2 + 39, 1, 8.7 );
setRotateKey( spep_2 + 40, 1, 8.7 );
setRotateKey( spep_2 + 41, 1, 9.3 );
setRotateKey( spep_2 + 42, 1, 9.3 );
setRotateKey( spep_2 + 43, 1, 10 );
setRotateKey( spep_2 + 44, 1, 10 );
setRotateKey( spep_2 + 45, 1, 8.5 );
setRotateKey( spep_2 + 46, 1, 8.5 );
setRotateKey( spep_2 + 50, 1, 8.5 );
setRotateKey( spep_2 + 51, 1, 9.3 );
setRotateKey( spep_2 + 52, 1, 9.3 );
setRotateKey( spep_2 + 53, 1, 10.1 );
setRotateKey( spep_2 + 54, 1, 10.1 );
setRotateKey( spep_2 + 55, 1, 10.9 );
setRotateKey( spep_2 + 56, 1, 10.9 );
setRotateKey( spep_2 + 57, 1, 11.6 );
setRotateKey( spep_2 + 58, 1, 11.6 );
setRotateKey( spep_2 + 59, 1, 12.4 );
setRotateKey( spep_2 + 60, 1, 12.4 );
setRotateKey( spep_2 + 61, 1, 13.2 );
setRotateKey( spep_2 + 62, 1, 13.2 );
setRotateKey( spep_2 + 63, 1, 14 );
setRotateKey( spep_2 + 64, 1, 14 );
setRotateKey( spep_2 + 65, 1, 10 );
setRotateKey( spep_2 + 66, 1, 10 );
setRotateKey( spep_2 + 82, 1, 10 );
setRotateKey( spep_2 + 109, 1, 10 );
setRotateKey( spep_2 + 110, 1, 10 );
setRotateKey( spep_2 + 136, 1, 10 );

-- ** 音 ** --
--キック
SE021 = playSeVer2( spep_2 + 4, 1187, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 4, 1010, "", 0, 0, 0, -1);

--蹴り上げ
SE023 = playSeVer2( spep_2 + 48, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE023, 85 );
SE024 = playSeVer2( spep_2 + 48, 1009, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 48, 1120, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE026 = playSeVer2( spep_2 + 72, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE026, 56 );

--着地
SE027 = playSeVer2( spep_2 + 76, 1192, "",spep_2 + 100, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 76, SE027, 200 );
SE028 = playSeVer2( spep_2 + 76, 1108, "", 0, 0, 0, -1);

--飛び上がる
SE029 = playSeVer2( spep_2 + 94, 1117, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 94, 1207, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 94, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE031, 67 );

--敵捉える
SE032 = playSeVer2( spep_2 + 118, 1116, "",spep_2 + 168, 0, 26, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 136 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_3 = spep_2 + 136;

------------------------------------------------------
-- 空中回転落下(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
aerial_f = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --空中回転落下 ef_006

setEffMoveKey( spep_3 + 0, aerial_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, aerial_f, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, aerial_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 98, aerial_f, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, saerial_f, 0 );
setEffRotateKey( spep_3 + 98, aerial_f, 0 );

setEffAlphaKey( spep_3 + 0, aerial_f, 255 );
setEffAlphaKey( spep_3 + 98 - 2, aerial_f, 255 );
setEffAlphaKey( spep_3 + 98 - 1, aerial_f, 255 );
setEffAlphaKey( spep_3 + 98, aerial_f, 0 );

-- ** 音 ** --
--回転しながら降りてくる
SE033 = playSeVer2( spep_3 + 16, 1151, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_3 + 16, 1118, "",spep_3 + 124, 0, 16, 0.5);
setPitch( spep_3 + 16, SE034, -800 );
setTimeStretch( SE034, 0.47, 30, 4 );
SE035 = playSeVer2( spep_3 + 22, 1117, "",spep_3 + 124, 0, 16, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 94, 0, 0, 0, 0, 255); 

-- ** 白背景 ** --
entryFadeBg( spep_3 + 94, 0, 4 + 2, 0, fcolor_r, fcolor_g, fcolor_b, 255); 

--白フェード
entryFade( spep_3 + 88 , 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 98;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
end

SE_CUTIN = playSe( spep_4, SE_05);
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;

------------------------------------------------------
-- 魔閃光発射(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
shot_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --魔閃光発射 ef_007

setEffMoveKey( spep_5 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 176, shot_f, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 176, shot_f, 1.0, 1.0 );

setEffRotateKey( spep_5 + 0, shot_f, 0 );
setEffRotateKey( spep_5 + 176, shot_f, 0 );

setEffAlphaKey( spep_5 + 0, shot_f, 255 );
setEffAlphaKey( spep_5 + 176 - 2, shot_f, 255 );
setEffAlphaKey( spep_5 + 176 - 1, shot_f, 255 );
setEffAlphaKey( spep_5 + 176, shot_f, 0 );

-- ** 音 ** --
--画面遷移
SE037 = playSeVer2( spep_5 + 0, 8, "", 0, 0, 0, -1);

--構える
SE038 = playSeVer2( spep_5 + 42, 1003, "", 0, 0, 0, -1);

--魔閃光溜め
SE039 = playSeVer2( spep_5 + 56, 1265, "",spep_5 + 148, 0, 20, 0.6);
setSeVolumeByWorkId( spep_5 + 56, SE039, 48 );
SE040 = playSeVer2( spep_5 + 56, 1296, "",spep_5 + 148, 0, 20, -1);
SE041 = playSeVer2( spep_5 + 56, 1396, "",spep_5 + 148, 0, 20, -1);
SE042 = playSeVer2( spep_5 + 56, 1262, "",spep_5 + 148, 0, 20, -1);

--魔閃光発射
SE043 = playSeVer2( spep_5 + 124, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 124, SE043, 81 );
SE044 = playSeVer2( spep_5 + 124, 1145, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_5 + 124, 1284, "",spep_5 + 248, 0, 32, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 176 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_6 = spep_5 + 176;

------------------------------------------------------
-- ラスト敵被弾(178F)
------------------------------------------------------
-- ** エフェクト等 ** --
last_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --ラスト敵被弾：敵より前 ef_008

setEffMoveKey( spep_6 + 0, last_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 178, last_f, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, last_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 178, last_f, 1.0, 1.0 );

setEffRotateKey( spep_6 + 0, last_f, 0 );
setEffRotateKey( spep_6 + 178, last_f, 0 );

setEffAlphaKey( spep_6 + 0, last_f, 255 );
setEffAlphaKey( spep_6 + 178, last_f, 255 );


last_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --ラスト敵被弾：敵より後ろ ef_009

setEffMoveKey( spep_6 + 0, last_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 178, last_b, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, last_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 178, last_b, 1.0, 1.0 );

setEffRotateKey( spep_6 + 0, last_b, 0 );
setEffRotateKey( spep_6 + 178, last_b, 0 );

setEffAlphaKey( spep_6 + 0, last_b, 255 );
setEffAlphaKey( spep_6 + 178, last_b, 255 );

-- ** 集中線 ** --
shuchusen_6 = entryEffectLife( spep_6 + 40, 906, 136, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 40, shuchusen_6, 136, 20 );

setEffMoveKey( spep_6 + 40, shuchusen_6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 178, shuchusen_6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 40, shuchusen_6, 1.6, 1.6 );
setEffScaleKey( spep_6 + 178, shuchusen_6, 1.6, 1.6 );

setEffRotateKey( spep_6 + 40, shuchusen_6, 0 );
setEffRotateKey( spep_6 + 178, shuchusen_6, 0 );

setEffAlphaKey( spep_6 + 40, shuchusen_6, 0 );
setEffAlphaKey( spep_6 + 41, shuchusen_6, 255 );
setEffAlphaKey( spep_6 + 42, shuchusen_6, 255 );
setEffAlphaKey( spep_6 + 178, shuchusen_6, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 18, 1, 1 );
setDisp( spep_6 + 36, 1, 0 );

changeAnime( spep_6 + 18, 1, 105 );

setMoveKey( spep_6 + 18, 1, 447, -90 , 0 );
setMoveKey( spep_6 + 20, 1, 386.7, -97.8 , 0 );
setMoveKey( spep_6 + 22, 1, 326.4, -66.3 , 0 );
setMoveKey( spep_6 + 24, 1, 266.1, -71.8 , 0 );
setMoveKey( spep_6 + 26, 1, 205.8, -41 , 0 );
setMoveKey( spep_6 + 28, 1, 145.5, -45.5 , 0 );
setMoveKey( spep_6 + 30, 1, 85.2, -15.8 , 0 );
setMoveKey( spep_6 + 32, 1, 24.9, -19.3 , 0 );
setMoveKey( spep_6 + 36, 1, 24.9, -19.3 , 0 );

setScaleKey( spep_6 + 18, 1, 0.3, 0.3 );
setScaleKey( spep_6 + 20, 1, 0.3, 0.3 );
setScaleKey( spep_6 + 22, 1, 0.34, 0.34 );
setScaleKey( spep_6 + 24, 1, 0.39, 0.39 );
setScaleKey( spep_6 + 26, 1, 0.43, 0.43 );
setScaleKey( spep_6 + 28, 1, 0.47, 0.47 );
setScaleKey( spep_6 + 30, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 32, 1, 0.56, 0.56 );
setScaleKey( spep_6 + 34, 1, 0.6, 0.6 );
setScaleKey( spep_6 + 36, 1, 0.6, 0.6 );

setRotateKey( spep_6 + 18, 1, 0 );
setRotateKey( spep_6 + 36, 1, 0 );

-- ** 音 ** --
--気弾飛んでいく
SE046 = playSeVer2( spep_6 + 2 -10, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_6 + 2 -10, SE046, 232 );

--爆発
SE047 = playSeVer2( spep_6 + 38, 1023, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_6 + 38, 1024, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_6 + 38, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 38, SE049, 77 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 178 + 2, 0, 0, 0, 0, 255); 

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 68 );
endPhase( spep_6 + 168 );

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 冒頭ダッシュ(148F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --冒頭ダッシュ：敵より前  ef_001

setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, first_f, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 148, first_f, -1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 148, first_f, 0 );

setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 148 - 2, first_f, 255 );
setEffAlphaKey( spep_0 + 148 - 1, first_f, 255 );
setEffAlphaKey( spep_0 + 148, first_f, 0 );


first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --冒頭ダッシュ：敵より後ろ  ef_002

setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, first_b, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 148, first_b, -1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 148, first_b, 0 );

setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 148 - 2, first_b, 255 );
setEffAlphaKey( spep_0 + 148 - 1, first_b, 255 );
setEffAlphaKey( spep_0 + 148, first_b, 0 );

--//////////セリフカットインテンプレ
------------------------------------------------------
spep_x = spep_0 + 10;  --表示させたいフレーム−10の分を足す！

--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--顔カットイン
--SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 148, 1, 0 );

changeAnime( spep_0 + 0, 1, 16 );

setMoveKey( spep_0 + 0, 1, -125.6, 462.5 , 0 );
setMoveKey( spep_0 + 1, 1, -125.6, 462.5 , 0 );
setMoveKey( spep_0 + 2, 1, -125.6, 462.5 , 0 );
setMoveKey( spep_0 + 3, 1, -125.6, 422.2 , 0 );
setMoveKey( spep_0 + 4, 1, -125.6, 422.2 , 0 );
setMoveKey( spep_0 + 5, 1, -125.5, 387.5 , 0 );
setMoveKey( spep_0 + 6, 1, -125.5, 387.5 , 0 );
setMoveKey( spep_0 + 8, 1, -125.5, 358.2 , 0 );
setMoveKey( spep_0 + 10, 1, -125.5, 333.8 , 0 );
setMoveKey( spep_0 + 12, 1, -125.4, 313.7 , 0 );
setMoveKey( spep_0 + 14, 1, -125.4, 297.7 , 0 );
setMoveKey( spep_0 + 16, 1, -125.4, 285.2 , 0 );
setMoveKey( spep_0 + 18, 1, -125.4, 275.8 , 0 );
setMoveKey( spep_0 + 20, 1, -125.4, 269.1 , 0 );
setMoveKey( spep_0 + 22, 1, -125.3, 264.6 , 0 );
setMoveKey( spep_0 + 24, 1, -125.3, 261.9 , 0 );
setMoveKey( spep_0 + 26, 1, -125.3, 260.5 , 0 );
setMoveKey( spep_0 + 28, 1, -125.3, 260 , 0 );
setMoveKey( spep_0 + 30, 1, -125.3, 259.9 , 0 );
setMoveKey( spep_0 + 32, 1, -125.3, 258.3 , 0 );
setMoveKey( spep_0 + 34, 1, -125.3, 256.7 , 0 );
setMoveKey( spep_0 + 36, 1, -125.3, 255.1 , 0 );
setMoveKey( spep_0 + 38, 1, -125.3, 253.5 , 0 );
setMoveKey( spep_0 + 40, 1, -125.3, 251.9 , 0 );
setMoveKey( spep_0 + 42, 1, -125.3, 250.2 , 0 );
setMoveKey( spep_0 + 44, 1, -125.3, 248.6 , 0 );
setMoveKey( spep_0 + 46, 1, -125.3, 247 , 0 );
setMoveKey( spep_0 + 48, 1, -125.3, 245.3 , 0 );
setMoveKey( spep_0 + 50, 1, -125.3, 243.7 , 0 );
setMoveKey( spep_0 + 52, 1, -125.3, 242.1 , 0 );
setMoveKey( spep_0 + 54, 1, -125.3, 240.4 , 0 );
setMoveKey( spep_0 + 56, 1, -125.3, 238.8 , 0 );
setMoveKey( spep_0 + 58, 1, -125.3, 237.2 , 0 );
setMoveKey( spep_0 + 60, 1, -125.3, 235.5 , 0 );
setMoveKey( spep_0 + 142, 1, -125.3, 235.5 , 0 );
setMoveKey( spep_0 + 144, 1, -125.3, 235.4 , 0 );
setMoveKey( spep_0 + 148, 1, -125.3, 235.4 , 0 );

setScaleKey( spep_0 + 0, 1, -0.1, 0.1 );
setScaleKey( spep_0 + 1, 1, -0.1, 0.1 );
setScaleKey( spep_0 + 2, 1, -0.1, 0.1 );
setScaleKey( spep_0 + 3, 1, -0.13, 0.13 );
setScaleKey( spep_0 + 4, 1, -0.13, 0.13 );
setScaleKey( spep_0 + 5, 1, -0.16, 0.16 );
setScaleKey( spep_0 + 6, 1, -0.16, 0.16 );
setScaleKey( spep_0 + 8, 1, -0.18, 0.18 );
setScaleKey( spep_0 + 10, 1, -0.21, 0.21 );
setScaleKey( spep_0 + 12, 1, -0.24, 0.24 );
setScaleKey( spep_0 + 14, 1, -0.26, 0.26 );
setScaleKey( spep_0 + 16, 1, -0.29, 0.29 );
setScaleKey( spep_0 + 18, 1, -0.32, 0.32 );
setScaleKey( spep_0 + 20, 1, -0.34, 0.34 );
setScaleKey( spep_0 + 22, 1, -0.37, 0.37 );
setScaleKey( spep_0 + 24, 1, -0.4, 0.4 );
setScaleKey( spep_0 + 26, 1, -0.42, 0.42 );
setScaleKey( spep_0 + 28, 1, -0.45, 0.45 );
setScaleKey( spep_0 + 30, 1, -0.48, 0.48 );
setScaleKey( spep_0 + 32, 1, -0.49, 0.49 );
setScaleKey( spep_0 + 34, 1, -0.53, 0.53 );
setScaleKey( spep_0 + 36, 1, -0.57, 0.57 );
setScaleKey( spep_0 + 38, 1, -0.57, 0.57 );
setScaleKey( spep_0 + 40, 1, -0.62, 0.62 );
setScaleKey( spep_0 + 42, 1, -0.61, 0.61 );
setScaleKey( spep_0 + 44, 1, -0.62, 0.62 );
setScaleKey( spep_0 + 46, 1, -0.64, 0.64 );
setScaleKey( spep_0 + 48, 1, -0.62, 0.62 );
setScaleKey( spep_0 + 50, 1, -0.64, 0.64 );
setScaleKey( spep_0 + 52, 1, -0.66, 0.66 );
setScaleKey( spep_0 + 54, 1, -0.64, 0.64 );
setScaleKey( spep_0 + 56, 1, -0.66, 0.66 );
setScaleKey( spep_0 + 58, 1, -0.68, 0.68 );
setScaleKey( spep_0 + 60, 1, -0.66, 0.66 );
setScaleKey( spep_0 + 62, 1, -0.68, 0.68 );
setScaleKey( spep_0 + 64, 1, -0.69, 0.69 );
setScaleKey( spep_0 + 66, 1, -0.68, 0.68 );
setScaleKey( spep_0 + 68, 1, -0.69, 0.69 );
setScaleKey( spep_0 + 70, 1, -0.71, 0.71 );
setScaleKey( spep_0 + 72, 1, -0.69, 0.69 );
setScaleKey( spep_0 + 74, 1, -0.71, 0.71 );
setScaleKey( spep_0 + 76, 1, -0.73, 0.73 );
setScaleKey( spep_0 + 78, 1, -0.71, 0.71 );
setScaleKey( spep_0 + 80, 1, -0.73, 0.73 );
setScaleKey( spep_0 + 82, 1, -0.75, 0.75 );
setScaleKey( spep_0 + 84, 1, -0.73, 0.73 );
setScaleKey( spep_0 + 86, 1, -0.75, 0.75 );
setScaleKey( spep_0 + 88, 1, -0.77, 0.77 );
setScaleKey( spep_0 + 90, 1, -0.75, 0.75 );
setScaleKey( spep_0 + 92, 1, -0.77, 0.77 );
setScaleKey( spep_0 + 94, 1, -0.79, 0.79 );
setScaleKey( spep_0 + 96, 1, -0.76, 0.76 );
setScaleKey( spep_0 + 98, 1, -0.78, 0.78 );
setScaleKey( spep_0 + 100, 1, -0.8, 0.8 );
setScaleKey( spep_0 + 102, 1, -0.78, 0.78 );
setScaleKey( spep_0 + 104, 1, -0.8, 0.8 );
setScaleKey( spep_0 + 106, 1, -0.82, 0.82 );
setScaleKey( spep_0 + 108, 1, -0.8, 0.8 );
setScaleKey( spep_0 + 110, 1, -0.82, 0.82 );
setScaleKey( spep_0 + 112, 1, -0.84, 0.84 );
setScaleKey( spep_0 + 114, 1, -0.82, 0.82 );
setScaleKey( spep_0 + 116, 1, -0.84, 0.84 );
setScaleKey( spep_0 + 118, 1, -0.86, 0.86 );
setScaleKey( spep_0 + 120, 1, -0.83, 0.83 );
setScaleKey( spep_0 + 122, 1, -0.86, 0.86 );
setScaleKey( spep_0 + 124, 1, -0.88, 0.88 );
setScaleKey( spep_0 + 126, 1, -0.85, 0.85 );
setScaleKey( spep_0 + 128, 1, -0.87, 0.87 );
setScaleKey( spep_0 + 130, 1, -0.89, 0.89 );
setScaleKey( spep_0 + 132, 1, -0.87, 0.87 );
setScaleKey( spep_0 + 134, 1, -0.89, 0.89 );
setScaleKey( spep_0 + 136, 1, -0.91, 0.91 );
setScaleKey( spep_0 + 138, 1, -0.89, 0.89 );
setScaleKey( spep_0 + 140, 1, -0.91, 0.91 );
setScaleKey( spep_0 + 142, 1, -0.9, 0.9 );
setScaleKey( spep_0 + 144, 1, -0.97, 0.97 );
setScaleKey( spep_0 + 146, 1, -1.03, 1.03 );
setScaleKey( spep_0 + 148, 1, -1.05, 1.05 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0.1 );
setRotateKey( spep_0 + 4, 1, 0.1 );
setRotateKey( spep_0 + 5, 1, 0.3 );
setRotateKey( spep_0 + 6, 1, 0.3 );
setRotateKey( spep_0 + 8, 1, 0.4 );
setRotateKey( spep_0 + 10, 1, 0.6 );
setRotateKey( spep_0 + 12, 1, 0.7 );
setRotateKey( spep_0 + 14, 1, 0.9 );
setRotateKey( spep_0 + 16, 1, 1 );
setRotateKey( spep_0 + 18, 1, 1.2 );
setRotateKey( spep_0 + 20, 1, 1.3 );
setRotateKey( spep_0 + 22, 1, 1.5 );
setRotateKey( spep_0 + 24, 1, 1.6 );
setRotateKey( spep_0 + 26, 1, 1.8 );
setRotateKey( spep_0 + 28, 1, 1.9 );
setRotateKey( spep_0 + 30, 1, 2.1 );
setRotateKey( spep_0 + 32, 1, 2.2 );
setRotateKey( spep_0 + 34, 1, 2.4 );
setRotateKey( spep_0 + 36, 1, 2.5 );
setRotateKey( spep_0 + 38, 1, 2.7 );
setRotateKey( spep_0 + 40, 1, 2.8 );
setRotateKey( spep_0 + 42, 1, 3 );
setRotateKey( spep_0 + 44, 1, 3.1 );
setRotateKey( spep_0 + 46, 1, 3.2 );
setRotateKey( spep_0 + 48, 1, 3.4 );
setRotateKey( spep_0 + 50, 1, 3.5 );
setRotateKey( spep_0 + 52, 1, 3.6 );
setRotateKey( spep_0 + 54, 1, 3.8 );
setRotateKey( spep_0 + 56, 1, 3.9 );
setRotateKey( spep_0 + 58, 1, 4 );
setRotateKey( spep_0 + 60, 1, 4.2 );
setRotateKey( spep_0 + 62, 1, 4.3 );
setRotateKey( spep_0 + 64, 1, 4.5 );
setRotateKey( spep_0 + 66, 1, 4.6 );
setRotateKey( spep_0 + 68, 1, 4.7 );
setRotateKey( spep_0 + 70, 1, 4.9 );
setRotateKey( spep_0 + 72, 1, 5 );
setRotateKey( spep_0 + 74, 1, 5.1 );
setRotateKey( spep_0 + 76, 1, 5.3 );
setRotateKey( spep_0 + 78, 1, 5.4 );
setRotateKey( spep_0 + 80, 1, 5.5 );
setRotateKey( spep_0 + 82, 1, 5.7 );
setRotateKey( spep_0 + 84, 1, 5.8 );
setRotateKey( spep_0 + 86, 1, 6 );
setRotateKey( spep_0 + 88, 1, 6.1 );
setRotateKey( spep_0 + 90, 1, 6.2 );
setRotateKey( spep_0 + 92, 1, 6.4 );
setRotateKey( spep_0 + 94, 1, 6.5 );
setRotateKey( spep_0 + 96, 1, 6.6 );
setRotateKey( spep_0 + 98, 1, 6.8 );
setRotateKey( spep_0 + 100, 1, 6.9 );
setRotateKey( spep_0 + 102, 1, 7 );
setRotateKey( spep_0 + 104, 1, 7.2 );
setRotateKey( spep_0 + 106, 1, 7.3 );
setRotateKey( spep_0 + 108, 1, 7.5 );
setRotateKey( spep_0 + 110, 1, 7.6 );
setRotateKey( spep_0 + 112, 1, 7.7 );
setRotateKey( spep_0 + 114, 1, 7.9 );
setRotateKey( spep_0 + 116, 1, 8 );
setRotateKey( spep_0 + 118, 1, 8.1 );
setRotateKey( spep_0 + 120, 1, 8.3 );
setRotateKey( spep_0 + 122, 1, 8.4 );
setRotateKey( spep_0 + 124, 1, 8.5 );
setRotateKey( spep_0 + 126, 1, 8.7 );
setRotateKey( spep_0 + 128, 1, 8.8 );
setRotateKey( spep_0 + 130, 1, 9 );
setRotateKey( spep_0 + 132, 1, 9.1 );
setRotateKey( spep_0 + 134, 1, 9.2 );
setRotateKey( spep_0 + 136, 1, 9.4 );
setRotateKey( spep_0 + 138, 1, 9.5 );
setRotateKey( spep_0 + 140, 1, 9.6 );
setRotateKey( spep_0 + 142, 1, 9.8 );
setRotateKey( spep_0 + 148, 1, 9.8 );

-- ** 音 ** --
--空力音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 178, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--走ってくる
SE002 = playSeVer2( spep_0 + 2, 1367, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 10, 1108, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 22, 1108, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 36, 1108, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 50, 1108, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 62, 1108, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 76, 1108, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 90, 1108, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 102, 1108, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 116, 1108, "", 0, 0, 0, -1);

--敵飛んでくる
SE003 = playSeVer2( spep_0 + 2, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 35 );
setTimeStretch( SE003, 2, 30, 4 );
SE006 = playSeVer2( spep_0 + 20, 1304, "",spep_0 + 164, 0, 12, -1);
setPitch( spep_0 + 20, SE006, -600 );
setTimeStretch( SE006, 0.6, 30, 4 );

--顔カットイン
--SE005 = playSeVer2( spep_0 + 20, 1018, "", 0, 0, 0, -1);

--踏ん張る
SE014 = playSeVer2( spep_0 + 112, 1367, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 116, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE016, 207 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 148 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 148;

------------------------------------------------------
-- 横ループ飛びかかり(78F)
------------------------------------------------------

-- ** エフェクト等 ** --
sidekick_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --横ループ飛びかかり ef_003

setEffMoveKey( spep_1 + 0, sidekick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 78, sidekick_f, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, sidekick_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 78, sidekick_f, -1.0, 1.0 );

setEffRotateKey( spep_1 + 0, sidekick_f, 0 );
setEffRotateKey( spep_1 + 78, sidekick_f, 0 );

setEffAlphaKey( spep_1 + 0, sidekick_f, 255 );
setEffAlphaKey( spep_1 + 78 - 2, sidekick_f, 255 );
setEffAlphaKey( spep_1 + 78 - 1, sidekick_f, 255 );
setEffAlphaKey( spep_1 + 78, sidekick_f, 0 );

-- ** 音 ** --
--飛びかかる
SE017 = playSeVer2( spep_1 + 0, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 0, 1117, "", 0, 0, 0, -1);

--飛びかかるアップ
SE019 = playSeVer2( spep_1 + 38, 1314, "",spep_1 + 94, 0, 12, -1);
SE020 = playSeVer2( spep_1 + 38, 1019, "",spep_1 + 94, 0, 12, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 78 + 2, 0, 0, 0, 0, 255); 

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 68; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    
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
spep_2 = spep_1 + 78;


------------------------------------------------------
-- 格闘、敵上空飛ばし(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
grappling_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --格闘、敵上空飛ばし：敵より前 ef_004

setEffMoveKey( spep_2 + 0, grappling_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, grappling_f, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, grappling_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 136, grappling_f, -1.0, 1.0 );

setEffRotateKey( spep_2 + 0, grappling_f, 0 );
setEffRotateKey( spep_2 + 136, grappling_f, 0 );

setEffAlphaKey( spep_2 + 0, grappling_f, 255 );
setEffAlphaKey( spep_2 + 136 - 2, grappling_f, 255 );
setEffAlphaKey( spep_2 + 136 - 1, grappling_f, 255 );
setEffAlphaKey( spep_2 + 136, grappling_f, 0 );


grappling_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --格闘、敵上空飛ばし：敵より後ろ ef_005

setEffMoveKey( spep_2 + 0, grappling_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, grappling_b, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, grappling_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 136, grappling_b, -1.0, 1.0 );

setEffRotateKey( spep_2 + 0, grappling_b, 0 );
setEffRotateKey( spep_2 + 136, grappling_b, 0 );

setEffAlphaKey( spep_2 + 0, grappling_b, 255 );
setEffAlphaKey( spep_2 + 136 - 2, grappling_b, 255 );
setEffAlphaKey( spep_2 + 136 - 1, grappling_b, 255 );
setEffAlphaKey( spep_2 + 136, grappling_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 9, 1, 1 );
setDisp( spep_2 + 10, 1, 1 );
setDisp( spep_2 + 82, 1, 0 );
setDisp( spep_2 + 109, 1, 1 );
setDisp( spep_2 + 110, 1, 1 );
setDisp( spep_2 + 136, 1, 0 );

changeAnime( spep_2 + 9, 1, 108 );
changeAnime( spep_2 + 10, 1, 108 );
changeAnime( spep_2 + 45, 1, 105 );
changeAnime( spep_2 + 46, 1, 105 );
changeAnime( spep_2 + 110, 1, 105 );

setMoveKey( spep_2 + 9, 1, -95.1, -30.5 , 0 ); 
setMoveKey( spep_2 + 10, 1, -95.1, -30.5 , 0 );
setMoveKey( spep_2 + 11, 1, -65.1, 10.5 , 0 );
setMoveKey( spep_2 + 12, 1, -65.1, 10.5 , 0 );
setMoveKey( spep_2 + 13, 1, -120.1, -30.5 , 0 );
setMoveKey( spep_2 + 14, 1, -120.1, -30.5 , 0 );
setMoveKey( spep_2 + 15, 1, -77.1, 10.5 , 0 );
setMoveKey( spep_2 + 16, 1, -77.1, 10.5 , 0 );
setMoveKey( spep_2 + 17, 1, -127.1, -35.5 , 0 );
setMoveKey( spep_2 + 18, 1, -127.1, -35.5 , 0 );
setMoveKey( spep_2 + 19, 1, -95.1, -25.5 , 0 );
setMoveKey( spep_2 + 20, 1, -95.1, -25.5 , 0 );
setMoveKey( spep_2 + 21, 1, -100.1, -30.5 , 0 );
setMoveKey( spep_2 + 22, 1, -100.1, -30.5 , 0 );
setMoveKey( spep_2 + 23, 1, -100.1, -30.5 , 0 );
setMoveKey( spep_2 + 24, 1, -100.1, -30.5 , 0 );
setMoveKey( spep_2 + 25, 1, -105.1, -34.5 , 0 );
setMoveKey( spep_2 + 26, 1, -105.1, -34.5 , 0 );
setMoveKey( spep_2 + 27, 1, -105.1, -34.5 , 0 );
setMoveKey( spep_2 + 28, 1, -105.1, -34.5 , 0 );
setMoveKey( spep_2 + 29, 1, -110.1, -34.5 , 0 );
setMoveKey( spep_2 + 30, 1, -110.1, -34.5 , 0 );
setMoveKey( spep_2 + 31, 1, -115.1, -44.5 , 0 );
setMoveKey( spep_2 + 32, 1, -115.1, -44.5 , 0 );
setMoveKey( spep_2 + 33, 1, -120.1, -48.5 , 0 );
setMoveKey( spep_2 + 34, 1, -120.1, -48.5 , 0 );
setMoveKey( spep_2 + 35, 1, -125.1, -48.5 , 0 );
setMoveKey( spep_2 + 36, 1, -125.1, -48.5 , 0 );
setMoveKey( spep_2 + 37, 1, -125.1, -48.5 , 0 );
setMoveKey( spep_2 + 38, 1, -125.1, -48.5 , 0 );
setMoveKey( spep_2 + 39, 1, -125.1, -48.5 , 0 );
setMoveKey( spep_2 + 40, 1, -125.1, -48.5 , 0 );
setMoveKey( spep_2 + 41, 1, -125.1, -48.5 , 0 );
setMoveKey( spep_2 + 42, 1, -125.1, -48.5 , 0 );
setMoveKey( spep_2 + 43, 1, -133.1, -48.5 , 0 );
setMoveKey( spep_2 + 44, 1, -133.1, -48.5 , 0 );
setMoveKey( spep_2 + 45, 1, -37.7, -28.5 , 0 );
setMoveKey( spep_2 + 46, 1, -37.7, -28.5 , 0 );
setMoveKey( spep_2 + 47, 1, -62.1, 45.1 , 0 );
setMoveKey( spep_2 + 48, 1, -62.1, 45.1 , 0 );
setMoveKey( spep_2 + 49, 1, -114.1, 51.1 , 0 );
setMoveKey( spep_2 + 50, 1, -114.1, 51.1 , 0 );
setMoveKey( spep_2 + 51, 1, -122.1, 21.1 , 0 );
setMoveKey( spep_2 + 52, 1, -122.1, 21.1 , 0 );
setMoveKey( spep_2 + 53, 1, -84.5, 118.9 , 0 );
setMoveKey( spep_2 + 54, 1, -84.5, 118.9 , 0 );
setMoveKey( spep_2 + 55, 1, -140.1, 40.3 , 0 );
setMoveKey( spep_2 + 56, 1, -140.1, 40.3 , 0 );
setMoveKey( spep_2 + 57, 1, -113.5, 100.1 , 0 );
setMoveKey( spep_2 + 58, 1, -113.5, 100.1 , 0 );
setMoveKey( spep_2 + 59, 1, -113.5, 104.1 , 0 );
setMoveKey( spep_2 + 60, 1, -113.5, 104.1 , 0 );
setMoveKey( spep_2 + 61, 1, -113.5, 108.1 , 0 );
setMoveKey( spep_2 + 62, 1, -113.5, 108.1 , 0 );
setMoveKey( spep_2 + 61, 1, -124.5, 119.1 , 0 );
setMoveKey( spep_2 + 62, 1, -124.5, 119.1 , 0 );
setMoveKey( spep_2 + 63, 1, -150.5, 165.1 , 0 );
setMoveKey( spep_2 + 64, 1, -150.5, 165.1 , 0 );
setMoveKey( spep_2 + 65, 1, -149.8, 200.1 , 0 );
setMoveKey( spep_2 + 66, 1, -149.8, 200.1 , 0 );
setMoveKey( spep_2 + 67, 1, -176, 278.7 , 0 );
setMoveKey( spep_2 + 68, 1, -176, 278.7 , 0 );
setMoveKey( spep_2 + 69, 1, -202.6, 343 , 0 );
setMoveKey( spep_2 + 70, 1, -202.6, 343 , 0 );
setMoveKey( spep_2 + 71, 1, -229.3, 418 , 0 );
setMoveKey( spep_2 + 72, 1, -229.3, 418 , 0 );
setMoveKey( spep_2 + 73, 1, -256.4, 503.8 , 0 );
setMoveKey( spep_2 + 74, 1, -256.4, 503.8 , 0 );
setMoveKey( spep_2 + 75, 1, -283.6, 580.2 , 0 );
setMoveKey( spep_2 + 76, 1, -283.6, 580.2 , 0 );
setMoveKey( spep_2 + 77, 1, -311.2, 647.3 , 0 );
setMoveKey( spep_2 + 78, 1, -311.2, 647.3 , 0 );
setMoveKey( spep_2 + 79, 1, -339, 725.2 , 0 );
setMoveKey( spep_2 + 80, 1, -339, 725.2 , 0 );
setMoveKey( spep_2 + 82, 1, -339, 725.2 , 0 );
setMoveKey( spep_2 + 109, 1, 132.6, -635.4 , 0 );
setMoveKey( spep_2 + 110, 1, 132.6, -635.4 , 0 );
setMoveKey( spep_2 + 112, 1, 63.9, -478 , 0 );
setMoveKey( spep_2 + 114, 1, -4.9, -330.6 , 0 );
setMoveKey( spep_2 + 116, 1, -73.7, -164.3 , 0 );
setMoveKey( spep_2 + 118, 1, -142.5, -34.9 , 0 );
setMoveKey( spep_2 + 120, 1, -144.5, -30.6 , 0 );
setMoveKey( spep_2 + 122, 1, -146.6, -26.4 , 0 );
setMoveKey( spep_2 + 124, 1, -148.6, -22.2 , 0 );
setMoveKey( spep_2 + 126, 1, -150.6, -17.9 , 0 );
setMoveKey( spep_2 + 128, 1, -152.7, -13.7 , 0 );
setMoveKey( spep_2 + 130, 1, -154.7, -9.5 , 0 );
setMoveKey( spep_2 + 132, 1, -156.8, -5.3 , 0 );
setMoveKey( spep_2 + 134, 1, -158.9, -1 , 0 );
setMoveKey( spep_2 + 136, 1, -160.9, 3.2 , 0 );

setScaleKey( spep_2 + 9, 1, -2.5, 2.5 );
setScaleKey( spep_2 + 10, 1, -2.5, 2.5 );
setScaleKey( spep_2 + 44, 1, -2.5, 2.5 );
setScaleKey( spep_2 + 45, 1, -2.3, 2.3 );
setScaleKey( spep_2 + 46, 1, -2.3, 2.3 );
setScaleKey( spep_2 + 63, 1, -2.3, 2.3 );
setScaleKey( spep_2 + 64, 1, -2.3, 2.3 );
setScaleKey( spep_2 + 65, 1, -1.97, 1.97 );
setScaleKey( spep_2 + 66, 1, -1.97, 1.97 );
setScaleKey( spep_2 + 67, 1, -1.74, 1.74 );
setScaleKey( spep_2 + 68, 1, -1.74, 1.74 );
setScaleKey( spep_2 + 69, 1, -1.51, 1.51 );
setScaleKey( spep_2 + 70, 1, -1.51, 1.51 );
setScaleKey( spep_2 + 71, 1, -1.41, 1.41 );
setScaleKey( spep_2 + 72, 1, -1.41, 1.41 );
setScaleKey( spep_2 + 73, 1, -1.11, 1.11 );
setScaleKey( spep_2 + 74, 1, -1.11, 1.11 );
setScaleKey( spep_2 + 75, 1, -0.81, 0.81 );
setScaleKey( spep_2 + 76, 1, -0.81, 0.81 );
setScaleKey( spep_2 + 77, 1, -0.58, 0.58 );
setScaleKey( spep_2 + 78, 1, -0.58, 0.58 );
setScaleKey( spep_2 + 79, 1, -0.35, 0.35 );
setScaleKey( spep_2 + 80, 1, -0.35, 0.35 );
setScaleKey( spep_2 + 82, 1, -0.35, 0.35 );
setScaleKey( spep_2 + 109, 1, -2.2, 2.2 );
setScaleKey( spep_2 + 110, 1, -2.2, 2.2 );
setScaleKey( spep_2 + 112, 1, -1.85, 1.85 );
setScaleKey( spep_2 + 114, 1, -1.5, 1.5 );
setScaleKey( spep_2 + 116, 1, -1.15, 1.15 );
setScaleKey( spep_2 + 118, 1, -0.8, 0.8 );
setScaleKey( spep_2 + 120, 1, -0.78, 0.78 );
setScaleKey( spep_2 + 122, 1, -0.76, 0.76 );
setScaleKey( spep_2 + 124, 1, -0.74, 0.74 );
setScaleKey( spep_2 + 126, 1, -0.72, 0.72 );
setScaleKey( spep_2 + 128, 1, -0.7, 0.7 );
setScaleKey( spep_2 + 130, 1, -0.68, 0.68 );
setScaleKey( spep_2 + 132, 1, -0.66, 0.66 );
setScaleKey( spep_2 + 134, 1, -0.64, 0.64 );
setScaleKey( spep_2 + 136, 1, -0.62, 0.62 );

setRotateKey( spep_2 + 9, 1, 0 );
setRotateKey( spep_2 + 10, 1, 0 );
setRotateKey( spep_2 + 14, 1, 0 );
setRotateKey( spep_2 + 15, 1, 0.7 );
setRotateKey( spep_2 + 16, 1, 0.7 );
setRotateKey( spep_2 + 17, 1, 1.3 );
setRotateKey( spep_2 + 18, 1, 1.3 );
setRotateKey( spep_2 + 19, 1, 2 );
setRotateKey( spep_2 + 20, 1, 2 );
setRotateKey( spep_2 + 21, 1, 2.7 );
setRotateKey( spep_2 + 22, 1, 2.7 );
setRotateKey( spep_2 + 23, 1, 3.3 );
setRotateKey( spep_2 + 24, 1, 3.3 );
setRotateKey( spep_2 + 25, 1, 4 );
setRotateKey( spep_2 + 26, 1, 4 );
setRotateKey( spep_2 + 27, 1, 4.7 );
setRotateKey( spep_2 + 28, 1, 4.7 );
setRotateKey( spep_2 + 29, 1, 5.3 );
setRotateKey( spep_2 + 30, 1, 5.3 );
setRotateKey( spep_2 + 31, 1, 6 );
setRotateKey( spep_2 + 32, 1, 6 );
setRotateKey( spep_2 + 33, 1, 6.7 );
setRotateKey( spep_2 + 34, 1, 6.7 );
setRotateKey( spep_2 + 35, 1, 7.3 );
setRotateKey( spep_2 + 36, 1, 7.3 );
setRotateKey( spep_2 + 37, 1, 8 );
setRotateKey( spep_2 + 38, 1, 8 );
setRotateKey( spep_2 + 39, 1, 8.7 );
setRotateKey( spep_2 + 40, 1, 8.7 );
setRotateKey( spep_2 + 41, 1, 9.3 );
setRotateKey( spep_2 + 42, 1, 9.3 );
setRotateKey( spep_2 + 43, 1, 10 );
setRotateKey( spep_2 + 44, 1, 10 );
setRotateKey( spep_2 + 45, 1, 8.5 );
setRotateKey( spep_2 + 46, 1, 8.5 );
setRotateKey( spep_2 + 50, 1, 8.5 );
setRotateKey( spep_2 + 51, 1, 9.3 );
setRotateKey( spep_2 + 52, 1, 9.3 );
setRotateKey( spep_2 + 53, 1, 10.1 );
setRotateKey( spep_2 + 54, 1, 10.1 );
setRotateKey( spep_2 + 55, 1, 10.9 );
setRotateKey( spep_2 + 56, 1, 10.9 );
setRotateKey( spep_2 + 57, 1, 11.6 );
setRotateKey( spep_2 + 58, 1, 11.6 );
setRotateKey( spep_2 + 59, 1, 12.4 );
setRotateKey( spep_2 + 60, 1, 12.4 );
setRotateKey( spep_2 + 61, 1, 13.2 );
setRotateKey( spep_2 + 62, 1, 13.2 );
setRotateKey( spep_2 + 63, 1, 14 );
setRotateKey( spep_2 + 64, 1, 14 );
setRotateKey( spep_2 + 65, 1, 10 );
setRotateKey( spep_2 + 66, 1, 10 );
setRotateKey( spep_2 + 82, 1, 10 );
setRotateKey( spep_2 + 109, 1, 10 );
setRotateKey( spep_2 + 110, 1, 10 );
setRotateKey( spep_2 + 136, 1, 10 );

-- ** 音 ** --
--キック
SE021 = playSeVer2( spep_2 + 4, 1187, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 4, 1010, "", 0, 0, 0, -1);

--蹴り上げ
SE023 = playSeVer2( spep_2 + 48, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE023, 85 );
SE024 = playSeVer2( spep_2 + 48, 1009, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 48, 1120, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE026 = playSeVer2( spep_2 + 72, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE026, 56 );

--着地
SE027 = playSeVer2( spep_2 + 76, 1192, "",spep_2 + 100, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 76, SE027, 200 );
SE028 = playSeVer2( spep_2 + 76, 1108, "", 0, 0, 0, -1);

--飛び上がる
SE029 = playSeVer2( spep_2 + 94, 1117, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 94, 1207, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 94, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE031, 67 );

--敵捉える
SE032 = playSeVer2( spep_2 + 118, 1116, "",spep_2 + 168, 0, 26, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 136 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_3 = spep_2 + 136;

------------------------------------------------------
-- 空中回転落下(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
aerial_f = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --空中回転落下 ef_006

setEffMoveKey( spep_3 + 0, aerial_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, aerial_f, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, aerial_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 98, aerial_f, -1.0, 1.0 );

setEffRotateKey( spep_3 + 0, saerial_f, 0 );
setEffRotateKey( spep_3 + 98, aerial_f, 0 );

setEffAlphaKey( spep_3 + 0, aerial_f, 255 );
setEffAlphaKey( spep_3 + 98 - 2, aerial_f, 255 );
setEffAlphaKey( spep_3 + 98 - 1, aerial_f, 255 );
setEffAlphaKey( spep_3 + 98, aerial_f, 0 );

-- ** 音 ** --
--回転しながら降りてくる
SE033 = playSeVer2( spep_3 + 16, 1151, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_3 + 16, 1118, "",spep_3 + 124, 0, 16, 0.5);
setPitch( spep_3 + 16, SE034, -800 );
setTimeStretch( SE034, 0.47, 30, 4 );
SE035 = playSeVer2( spep_3 + 22, 1117, "",spep_3 + 124, 0, 16, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 94, 0, 0, 0, 0, 255); 

-- ** 白背景 ** --
entryFadeBg( spep_3 + 94, 0, 4 + 2, 0, fcolor_r, fcolor_g, fcolor_b, 255); 

--白フェード
entryFade( spep_3 + 88 , 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 98;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;

------------------------------------------------------
-- 魔閃光発射(176F)
------------------------------------------------------

-- ** エフェクト等 ** --
shot_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --魔閃光発射 ef_007

setEffMoveKey( spep_5 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 176, shot_f, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shot_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 176, shot_f, -1.0, 1.0 );

setEffRotateKey( spep_5 + 0, shot_f, 0 );
setEffRotateKey( spep_5 + 176, shot_f, 0 );

setEffAlphaKey( spep_5 + 0, shot_f, 255 );
setEffAlphaKey( spep_5 + 176 - 2, shot_f, 255 );
setEffAlphaKey( spep_5 + 176 - 1, shot_f, 255 );
setEffAlphaKey( spep_5 + 176, shot_f, 0 );

-- ** 音 ** --
--画面遷移
SE037 = playSeVer2( spep_5 + 0, 8, "", 0, 0, 0, -1);

--構える
SE038 = playSeVer2( spep_5 + 42, 1003, "", 0, 0, 0, -1);

--魔閃光溜め
SE039 = playSeVer2( spep_5 + 56, 1265, "",spep_5 + 148, 0, 20, 0.6);
setSeVolumeByWorkId( spep_5 + 56, SE039, 48 );
SE040 = playSeVer2( spep_5 + 56, 1296, "",spep_5 + 148, 0, 20, -1);
SE041 = playSeVer2( spep_5 + 56, 1396, "",spep_5 + 148, 0, 20, -1);
SE042 = playSeVer2( spep_5 + 56, 1262, "",spep_5 + 148, 0, 20, -1);

--魔閃光発射
SE043 = playSeVer2( spep_5 + 124, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 124, SE043, 81 );
SE044 = playSeVer2( spep_5 + 124, 1145, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_5 + 124, 1284, "",spep_5 + 248, 0, 32, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 176 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_6 = spep_5 + 176;

------------------------------------------------------
-- ラスト敵被弾(178F)
------------------------------------------------------
-- ** エフェクト等 ** --
last_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --ラスト敵被弾：敵より前 ef_008

setEffMoveKey( spep_6 + 0, last_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 178, last_f, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, last_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 178, last_f, -1.0, 1.0 );

setEffRotateKey( spep_6 + 0, last_f, 0 );
setEffRotateKey( spep_6 + 178, last_f, 0 );

setEffAlphaKey( spep_6 + 0, last_f, 255 );
setEffAlphaKey( spep_6 + 178, last_f, 255 );


last_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --ラスト敵被弾：敵より後ろ ef_009

setEffMoveKey( spep_6 + 0, last_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 178, last_b, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, last_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 178, last_b, -1.0, 1.0 );

setEffRotateKey( spep_6 + 0, last_b, 0 );
setEffRotateKey( spep_6 + 178, last_b, 0 );

setEffAlphaKey( spep_6 + 0, last_b, 255 );
setEffAlphaKey( spep_6 + 178, last_b, 255 );

-- ** 集中線 ** --
shuchusen_6 = entryEffectLife( spep_6 + 40, 906, 136, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 40, shuchusen_6, 136, 20 );

setEffMoveKey( spep_6 + 40, shuchusen_6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 178, shuchusen_6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 40, shuchusen_6, -1.6, 1.6 );
setEffScaleKey( spep_6 + 178, shuchusen_6, -1.6, 1.6 );

setEffRotateKey( spep_6 + 40, shuchusen_6, 0 );
setEffRotateKey( spep_6 + 178, shuchusen_6, 0 );

setEffAlphaKey( spep_6 + 40, shuchusen_6, 0 );
setEffAlphaKey( spep_6 + 41, shuchusen_6, 255 );
setEffAlphaKey( spep_6 + 42, shuchusen_6, 255 );
setEffAlphaKey( spep_6 + 178, shuchusen_6, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 18, 1, 1 );
setDisp( spep_6 + 36, 1, 0 );

changeAnime( spep_6 + 18, 1, 105 );

setMoveKey( spep_6 + 18, 1, -447, -90 , 0 );
setMoveKey( spep_6 + 20, 1, -386.7, -97.8 , 0 );
setMoveKey( spep_6 + 22, 1, -326.4, -66.3 , 0 );
setMoveKey( spep_6 + 24, 1, -266.1, -71.8 , 0 );
setMoveKey( spep_6 + 26, 1, -205.8, -41 , 0 );
setMoveKey( spep_6 + 28, 1, -145.5, -45.5 , 0 );
setMoveKey( spep_6 + 30, 1, -85.2, -15.8 , 0 );
setMoveKey( spep_6 + 32, 1, -24.9, -19.3 , 0 );
setMoveKey( spep_6 + 36, 1, -24.9, -19.3 , 0 );

setScaleKey( spep_6 + 18, 1, -0.3, 0.3 );
setScaleKey( spep_6 + 20, 1, -0.3, 0.3 );
setScaleKey( spep_6 + 22, 1, -0.34, 0.34 );
setScaleKey( spep_6 + 24, 1, -0.39, 0.39 );
setScaleKey( spep_6 + 26, 1, -0.43, 0.43 );
setScaleKey( spep_6 + 28, 1, -0.47, 0.47 );
setScaleKey( spep_6 + 30, 1, -0.51, 0.51 );
setScaleKey( spep_6 + 32, 1, -0.56, 0.56 );
setScaleKey( spep_6 + 34, 1, -0.6, 0.6 );
setScaleKey( spep_6 + 36, 1, -0.6, 0.6 );

setRotateKey( spep_6 + 18, 1, 0 );
setRotateKey( spep_6 + 36, 1, 0 );

-- ** 音 ** --
--気弾飛んでいく
SE046 = playSeVer2( spep_6 + 2 -10, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_6 + 2 -10, SE046, 232 );

--爆発
SE047 = playSeVer2( spep_6 + 38, 1023, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_6 + 38, 1024, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_6 + 38, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 38, SE049, 77 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 178 + 2, 0, 0, 0, 0, 255); 

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 68 );
endPhase( spep_6 + 168 );

end