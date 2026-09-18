--1019660:ウイス_天使の手ほどき(UR)
--sp_effect_b1_00111

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
SP_01 = 155669;  --構え
SP_02 = 155671;  --背後に回り込む
SP_03 = 155673;  --睨み
SP_04 = 155675;  --瞬間移動
SP_05 = 155677;  --パンチ
SP_06 = 155678;  --パンチ　背景
SP_07 = 155679;  --フィニッシュ　前面
SP_08 = 155680;  --フィニッシュ　背面

--敵側
SP_01r = 155670;  --構え　敵側
SP_02r = 155672;  --背後に回り込む　敵側
SP_03r = 155674;  --睨み　敵側
SP_04r = 155676;  --瞬間移動　敵側

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 構え(144F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --構え(ef_001)
setEffMoveKey( spep_0 +   0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 144, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 +   0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 144, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 +   0, first_f, 0 );
setEffRotateKey( spep_0 + 144, first_f, 0 );
setEffAlphaKey( spep_0 +   0, first_f, 255 );
setEffAlphaKey( spep_0 + 144, first_f, 255 );

spep_x = spep_0 + 58;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--構える1
playSe( spep_0 + 24, 4 );
setSeVolume( spep_0 + 24, 4, 76 );

--構える2
SE00 = playSe( spep_0 + 40, 1233 );
setSeVolume( spep_0 + 40, 1233, 0 );
setSeVolume( spep_0 + 47, 1233, 31 );
setSeVolume( spep_0 + 49, 1233, 63 );
stopSe( spep_0 + 61, SE00, 0 );

--セリフカットイン
playSe( spep_0 + 70, 1018 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 144, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 130, 12, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 144;


------------------------------------------------------
-- 背後に回り込む(156F)
------------------------------------------------------
-- ** エフェクト等 ** --
bmove = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --背後に回り込む(ef_002)
setEffMoveKey( spep_1 + 0, bmove, 0, 0 , 0 );
setEffMoveKey( spep_1 + 156, bmove, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, bmove, 1.0, 1.0 );
setEffScaleKey( spep_1 + 156, bmove, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, bmove, 0 );
setEffRotateKey( spep_1 + 156, bmove, 0 );
setEffAlphaKey( spep_1 + 0, bmove, 255 );
setEffAlphaKey( spep_1 + 156, bmove, 255 );

-- ** 書き文字エントリー ** --
ctkigou = entryEffectLife( spep_1 -3 + 94,  10001, 35, 0x100, -1, 0, -231.8, 97.9 ); --！？
setEffMoveKey( spep_1 -3 + 94, ctkigou, -105.8, 126.9 , 0 );
setEffMoveKey( spep_1 -3 + 96, ctkigou, -112.5, 144.4 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctkigou, -105.8, 126.9 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctkigou, -117.6, 159 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctkigou, -117.6, 159 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctkigou, -117.9, 159 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctkigou, -118.2, 159 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctkigou, -118.5, 159 , 0 );
setEffMoveKey( spep_1 -3 + 110, ctkigou, -118.7, 159 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctkigou, -118.8, 159 , 0 );
setEffMoveKey( spep_1 -3 + 114, ctkigou, -119.1, 159 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctkigou, -119.3, 159 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctkigou, -119.6, 159 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctkigou, -119.9, 159 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctkigou, -120.1, 159 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctkigou, -120.4, 159 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctkigou, -120.7, 159 , 0 );
setEffMoveKey( spep_1 -3 + 129, ctkigou, -120.7, 159 , 0 );

setEffScaleKey( spep_1 -3 + 94, ctkigou, 1.17, 1.17 );
setEffScaleKey( spep_1 -3 + 96, ctkigou, 1.845, 1.845 );
setEffScaleKey( spep_1 -3 + 98, ctkigou, 1.17, 1.17 );
setEffScaleKey( spep_1 -3 + 100, ctkigou, 2.235, 2.235 );
setEffScaleKey( spep_1 -3 + 129, ctkigou, 2.235, 2.235 );

setEffRotateKey( spep_1 -3 + 94, ctkigou, -27 );
setEffRotateKey( spep_1 -3 + 129, ctkigou, -27 );

setEffAlphaKey( spep_1 -3 + 94, ctkigou, 255 );
setEffAlphaKey( spep_1 -3 + 129, ctkigou, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 +   0, 1, 1 );
setDisp( spep_1 + 156, 1, 0 );
changeAnime( spep_1 +   0, 1, 101 );
changeAnime( spep_1+ 25, 1, 111 );
changeAnime( spep_1+ 26, 1, 111 );
changeAnime( spep_1+ 27, 1, 111 );
changeAnime( spep_1+ 28, 1, 111 );
changeAnime( spep_1+ 29, 1, 111 );
changeAnime( spep_1+ 30, 1, 111 );
changeAnime( spep_1+ 31, 1, 111 );
changeAnime( spep_1+ 32, 1, 111 );
changeAnime( spep_1+ 33, 1, 111 );
changeAnime( spep_1+ 34, 1, 111 );
changeAnime( spep_1+ 35, 1, 111 );
changeAnime( spep_1+ 36, 1, 111 );
changeAnime( spep_1+ 37, 1, 111 );
changeAnime( spep_1+ 38, 1, 111 );
changeAnime( spep_1+ 39, 1, 111 );
changeAnime( spep_1+ 40, 1, 111 );
changeAnime( spep_1+ 41, 1, 111 );
changeAnime( spep_1+ 42, 1, 111 );
changeAnime( spep_1+ 43, 1, 111 );
changeAnime( spep_1+ 44, 1, 111 );
changeAnime( spep_1+ 45, 1, 111 );
changeAnime( spep_1+ 46, 1, 111 );
changeAnime( spep_1 -3 + 50, 1, 109 );
changeAnime( spep_1 -3 + 94, 1, 117 );
changeAnime( spep_1 -3 + 130, 1, 4 );
changeAnime( spep_1 -3 + 159, 1, 4 );

setMoveKey( spep_1    + 0, 1, 165.5, -26.5 , 0 );
setMoveKey( spep_1    + 1, 1, 163.1, -28.9 , 0 );
setMoveKey( spep_1 -3 + 5, 1, 160.7, -31.3 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 158.4, -33.6 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 161.6, -30.8 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 164.9, -28 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 168.3, -25.2 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 193.2, -30.2 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 218.2, -35.2 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 243.1, -40.2 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 241.9, -40.2 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 240.8, -40.2 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 239.6, -40.2 , 0 );
setMoveKey( spep_1 -3 + 27, 1, 238.4, -40.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 216.9, -50.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 215.7, -50.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 214.6, -50.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 213.4, -50.2 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 212.2, -50.2 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 211, -50.2 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 209.9, -50.2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 144.8, -46.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 79.7, -42.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 17.9, -39.3 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 22.6, -39.5 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -7.6, -50 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -17.7, -50.5 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -27.7, -51.2 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -25.1, -50.9 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -23.2, -50.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -23.2, -50.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -26.1, -49.6 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -34, -48.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -38.9, -48.2 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -43.9, -47.6 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -44.2, -47.6 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -44.4, -47.6 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -44.7, -47.6 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -45, -47.6 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -45.3, -47.6 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -45.5, -47.6 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -45.8, -47.6 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -46.1, -47.6 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -46.3, -47.6 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -46.6, -47.6 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -46.9, -47.6 , 0 );
setMoveKey( spep_1 -3 + 93, 1, -47.1, -47.6 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -32.6, -47.6 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -32.8, -47.6 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -33.1, -47.6 , 0 );
setMoveKey( spep_1 -3 + 100, 1, -33.4, -47.6 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -33.6, -47.6 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -33.9, -47.6 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -34.2, -47.6 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -34.5, -47.6 , 0 );
setMoveKey( spep_1 -3 + 110, 1, -34.7, -47.6 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -35, -47.6 , 0 );
setMoveKey( spep_1 -3 + 114, 1, -35.3, -47.6 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -35.5, -47.6 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -35.8, -47.6 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -36.1, -47.6 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -36.3, -47.6 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -36.6, -47.6 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -36.9, -47.6 , 0 );
setMoveKey( spep_1 -3 + 129, 1, -37.2, -47.6 , 0 );
setMoveKey( spep_1 -3 + 130, 1, -38.9, -38.7 , 0 );
setMoveKey( spep_1 -3 + 132, 1, -39.2, -38.7 , 0 );
setMoveKey( spep_1 -3 + 134, 1, -43.3, -38.7 , 0 );
setMoveKey( spep_1 -3 + 136, 1, -51.6, -38.6 , 0 );
setMoveKey( spep_1 -3 + 138, 1, -62.1, -38.5 , 0 );
setMoveKey( spep_1 -3 + 140, 1, -75, -38.5 , 0 );
setMoveKey( spep_1 -3 + 142, 1, -88.7, -38.5 , 0 );
setMoveKey( spep_1 -3 + 159, 1, -88.7, -38.5 , 0 );

setScaleKey( spep_1    + 0, 1, 1.27, 1.26 );
setScaleKey( spep_1 -3 + 44, 1, 1.27, 1.26 );
setScaleKey( spep_1 -3 + 46, 1, 1.28, 1.26 );
setScaleKey( spep_1 -3 + 49, 1, 1.29, 1.28 );
setScaleKey( spep_1 -3 + 50, 1, 1.31, 1.3 );
setScaleKey( spep_1 -3 + 52, 1, 1.34, 1.33 );
setScaleKey( spep_1 -3 + 54, 1, 1.37, 1.36 );
setScaleKey( spep_1 -3 + 56, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 58, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 60, 1, 1.46, 1.45 );
setScaleKey( spep_1 -3 + 62, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 64, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 129, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 130, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 132, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 134, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 136, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 138, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 140, 1, 1.43, 1.42 );
setScaleKey( spep_1 -3 + 142, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 159, 1, 1.42, 1.42 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 156, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 156, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--敵向かっていく
playSe( spep_1 + 46, 1003 );
setSeVolume( spep_1 + 46, 1003, 63 );

--瞬間移動1
playSe( spep_1 + 52, 1109 );
setSeVolume( spep_1 + 52, 1109, 79 );

--瞬間移動2
playSe( spep_1 + 52, 1238 );
setSeVolume( spep_1 + 52, 1238, 56 );

--！？
playSe( spep_1 + 91, 48 );
setSeVolume( spep_1 + 91, 48, 100 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 156;

------------------------------------------------------
-- 睨み(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
nirami = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --睨み(ef_003)
setEffMoveKey( spep_2 +  0, nirami, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, nirami, 0, 0 , 0 );
setEffScaleKey( spep_2 +  0, nirami, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, nirami, 1.0, 1.0 );
setEffRotateKey( spep_2 +  0, nirami, 0 );
setEffRotateKey( spep_2 + 56, nirami, 0 );
setEffAlphaKey( spep_2 +  0, nirami, 255 );
setEffAlphaKey( spep_2 + 56, nirami, 255 );

-- ** 音 ** --
--むっ2
SE02 = playSe( spep_2 + 32, 24 );

--むっ3
SE03 = playSe( spep_2 + 34, 1113 );

--むっ4
SE04 = playSe( spep_2 + 36, 27 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 54; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE02, 0 );
stopSe( SP_dodge - 12, SE03, 0 );
stopSe( SP_dodge - 12, SE04, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 白フェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --
--むっ1
SE01 = playSe( spep_2 + 30, 1042 );
setSeVolume( spep_2 + 30, 1042, 50 );
stopSe( spep_2 + 56 + 9, SE01, 0 );

--むっ4
stopSe( spep_2 + 56 + 49, SE04, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 瞬間移動(57)
------------------------------------------------------
-- ** エフェクト等 ** --
telepo = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --構え(ef_004)
setEffMoveKey( spep_4 +  0, telepo, 0, 0 , 0 );
setEffMoveKey( spep_4 + 57, telepo, 0, 0 , 0 );
setEffScaleKey( spep_4 +  0, telepo, 1.0, 1.0 );
setEffScaleKey( spep_4 + 57, telepo, 1.0, 1.0 );
setEffRotateKey( spep_4 +  0, telepo, 0 );
setEffRotateKey( spep_4 + 57, telepo, 0 );
setEffAlphaKey( spep_4 +  0, telepo, 255 );
setEffAlphaKey( spep_4 + 57, telepo, 255 );

-- ** 音 ** --
--瞬間移動1
playSe( spep_4 + 40, 1109 );
setSeVolume( spep_4 + 40, 1109, 79 );

--瞬間移動2
playSe( spep_4 + 40, 1238 );
setSeVolume( spep_4 + 40, 1238, 56 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 57, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 57;

------------------------------------------------------
-- パンチ(110F)
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --パンチ(ef_005)
setEffMoveKey( spep_5 +  0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 110, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_5 +  0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 110, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_5 +  0, punch_f, 0 );
setEffRotateKey( spep_5 + 110, punch_f, 0 );
setEffAlphaKey( spep_5 +  0, punch_f, 255 );
setEffAlphaKey( spep_5 + 110, punch_f, 255 );

-- ** エフェクト等 ** --
punch_b = entryEffectLife( spep_5 + 0, SP_06, 110, 0x80, -1, 0, 0, 0 );  --背景(ef_006)
setEffMoveKey( spep_5 +  0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 110, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_5 +  0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 110, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_5 +  0, punch_b, 0 );
setEffRotateKey( spep_5 + 110, punch_b, 0 );
setEffAlphaKey( spep_5 +  0, punch_b, 255 );
setEffAlphaKey( spep_5 + 110, punch_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_5 + 25,  906, 32, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 25, shuchusen1, 32, 25 );
setEffMoveKey(   spep_5 + 25, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_5 + 57, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_5 + 25, shuchusen1, 1.2, 1.2 );
setEffScaleKey(  spep_5 + 57, shuchusen1, 1.2, 1.2 );
setEffRotateKey( spep_5 + 25, shuchusen1, 0 );
setEffRotateKey( spep_5 + 57, shuchusen1, 0 );
setEffAlphaKey(  spep_5 + 25, shuchusen1, 255 );
setEffAlphaKey(  spep_5 + 50, shuchusen1, 200 );
setEffAlphaKey(  spep_5 + 54, shuchusen1, 100 );
setEffAlphaKey(  spep_5 + 57, shuchusen1, 0 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_5 -3 + 28,  10021, 22, 0x100, -1, 0, 17.5, 208.1 );  --バゴォッ
setEffMoveKey( spep_5 -3 + 28, ctbago, 17.5, 208.1 , 0 );
setEffMoveKey( spep_5 -3 + 30, ctbago, 78.2, 242 , 0 );

setEffMoveKey( spep_5 -3 + 32, ctbago, 136.4, 360.8 , 0 );
setEffMoveKey( spep_5 -3 + 34, ctbago, 151.8, 348.5 , 0 );

setEffMoveKey( spep_5 -3 + 36, ctbago, 136.4, 360.8 , 0 );
setEffMoveKey( spep_5 -3 + 38, ctbago, 151.8, 348.5 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctbago, 136.4, 360.8 , 0 );
setEffMoveKey( spep_5 -3 + 42, ctbago, 151.8, 348.5 , 0 );
setEffMoveKey( spep_5 -3 + 44, ctbago, 136.4, 360.8 , 0 );
setEffMoveKey( spep_5 -3 + 46, ctbago, 151.8, 348.5 , 0 );
setEffMoveKey( spep_5 -3 + 48, ctbago, 136.4, 360.8, 0 );
setEffMoveKey( spep_5 -3 + 50, ctbago, 136.4, 360.8, 0 );

setEffScaleKey( spep_5 -3 + 28, ctbago, 0.5, 0.5 );
setEffScaleKey( spep_5 -3 + 30, ctbago, 1.87, 1.87 );
setEffScaleKey( spep_5 -3 + 32, ctbago, 3.51, 3.51 );
setEffScaleKey( spep_5 -3 + 34, ctbago, 3.81, 3.81 );
setEffScaleKey( spep_5 -3 + 36, ctbago, 3.51, 3.51 );
setEffScaleKey( spep_5 -3 + 38, ctbago, 3.81, 3.81 );
setEffScaleKey( spep_5 -3 + 40, ctbago, 3.51, 3.51 );
setEffScaleKey( spep_5 -3 + 42, ctbago, 3.81, 3.81 );
setEffScaleKey( spep_5 -3 + 44, ctbago, 3.51, 3.51 );
setEffScaleKey( spep_5 -3 + 46, ctbago, 3.81, 3.81 );
setEffScaleKey( spep_5 -3 + 48, ctbago, 3.51, 3.51 );
setEffScaleKey( spep_5 -3 + 50, ctbago, 3.51, 3.51 );

setEffRotateKey( spep_5 -3 + 28, ctbago, 35.1 );
setEffRotateKey( spep_5 -3 + 30, ctbago, 29 );
setEffRotateKey( spep_5 -3 + 32, ctbago, 23 );
setEffRotateKey( spep_5 -3 + 50, ctbago, 23 );

setEffAlphaKey( spep_5 -3 + 28, ctbago, 255 );
setEffAlphaKey( spep_5 -3 + 44, ctbago, 255 );
setEffAlphaKey( spep_5 -3 + 46, ctbago, 170 );
setEffAlphaKey( spep_5 -3 + 48, ctbago, 85 );
setEffAlphaKey( spep_5 -3 + 50, ctbago, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 109, 1, 0 );

changeAnime( spep_5 + 0, 1, 4 );
changeAnime( spep_5 -3 + 28, 1, 108 );
changeAnime( spep_5 -3 + 109, 1, 108 );

setMoveKey( spep_5 + 0, 1, 101.4, -26.6 , 0 );
setMoveKey( spep_5 -3 + 27, 1, 101.4, -26.6 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 108.2, -3.2 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 115.8, 4.1 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 101.6, -4.9 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 113.1, -2.4 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 107.2, -0.3 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 114.9, 7 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 100.7, -2 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 112.2, 0.4 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 106.2, 2.5 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 114, 9.8 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 99.8, 0.9 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 111.3, 3.3 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 105.4, 5.4 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 113.1, 12.7 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 98.9, 3.7 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 110.4, 6.1 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 121.1, 7.7 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 145.5, 14.5 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 147.9, 5 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 176.1, 6.9 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 186.8, 8.5 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 211.2, 15.3 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 213.7, 5.8 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 241.9, 7.7 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 238, 10.6 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 247.9, 18.6 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 235.7, 10.3 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 249.4, 13.5 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 245.5, 16.3 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 255.4, 24.4 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 243.2, 16.1 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 256.9, 19.3 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 253, 22.1 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 262.8, 30.1 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 250.7, 21.9 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 264.4, 25 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 260.5, 27.9 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 270.3, 35.9 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 258.2, 27.6 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 271.9, 30.8 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 382.5, 32.2 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 506.8, 38.7 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 609.2, 28.9 , 0 );
--setMoveKey( spep_5 -3 + 113, 1, 737.3, 30.6 , 0 );

setScaleKey( spep_5 + 0, 1, 1.42, 1.42 );
setScaleKey( spep_5 -3 + 27, 1, 1.42, 1.42 );
setScaleKey( spep_5 -3 + 28, 1, 1.31, 1.43 );
setScaleKey( spep_5 -3 + 112, 1, 1.31, 1.43 );

setRotateKey( spep_5 -3 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 27, 1, 0 );
setRotateKey( spep_5 -3 + 28, 1, -14 );
setRotateKey( spep_5 -3 + 112, 1, -14 );

-- ** 音 ** --
--きつめのボディ1
playSe( spep_5 + 34, 1189 );
--きつめのボディ2
SE05 = playSe( spep_5 + 36, 1049 );
setSeVolume( spep_5 + 36, 1049,  0 );
setSeVolume( spep_5 + 40, 1049, 45 );
setSeVolume( spep_5 + 41, 1049, 89 );
setSeVolume( spep_5 + 63, 1049, 89 );
setSeVolume( spep_5 + 67, 1049, 79 );
setSeVolume( spep_5 + 71, 1049, 68 );
setSeVolume( spep_5 + 75, 1049, 57 );
setSeVolume( spep_5 + 79, 1049, 46 );
setSeVolume( spep_5 + 83, 1049, 35 );
setSeVolume( spep_5 + 87, 1049, 24 );
setSeVolume( spep_5 + 91, 1049, 13 );
setSeVolume( spep_5 + 95, 1049,  0 );
stopSe( spep_5 + 95, SE05, 0 );
--きつめのボディ3
playSe( spep_5 + 38, 1009 );
--きつめのボディ4
playSe( spep_5 + 40, 1000 );
setSeVolume( spep_5 + 40, 1000, 79 );
--きつめのボディ5
playSe( spep_5 + 42, 1110 );

--敵飛んでいく1
SE06 = playSe( spep_5 + 68, 1183 );
stopSe( spep_5 + 110 + 26, SE06, 0 );

--敵飛んでいく2
SE07 = playSe( spep_5 + 68, 1121 );
setSeVolume( spep_5 + 68, 1121, 37 );
stopSe( spep_5 + 110 + 26, SE07, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 110;

------------------------------------------------------
-- フィニッシュ(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ:155520)
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 100, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 100, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --フィニッシュ　背面(ef_008)
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 100, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 100, 1, 0 );
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_6 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_6 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_6 + 0, 1, 105 );
setRotateKey( spep_6 -3 + 4, 1, 240 );
setRotateKey( spep_6 -3 + 6, 1, 405 );
setRotateKey( spep_6 -3 + 8, 1, 600 );
setRotateKey( spep_6 -3 + 10, 1, 825 );
setRotateKey( spep_6 -3 + 12, 1, 1080 );
setRotateKey( spep_6 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_6 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_6 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** 音 ** --
--ガッ
playSe( spep_6 + 8, 1054 );
setSeVolume( spep_6 + 8, 1054, 126 );
--playSe( spep_6 + 8, 1023 );
--setSeVolume( spep_6 + 8, 1023, 76 );

-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 98 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 構え(144F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --構え(ef_001)
setEffMoveKey( spep_0 +   0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 144, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 +   0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 144, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 +   0, first_f, 0 );
setEffRotateKey( spep_0 + 144, first_f, 0 );
setEffAlphaKey( spep_0 +   0, first_f, 255 );
setEffAlphaKey( spep_0 + 144, first_f, 255 );

--spep_x = spep_0 + 58;
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--構える1
playSe( spep_0 + 24, 4 );
setSeVolume( spep_0 + 24, 4, 76 );

--構える2
SE00 = playSe( spep_0 + 40, 1233 );
setSeVolume( spep_0 + 40, 1233, 0 );
setSeVolume( spep_0 + 47, 1233, 31 );
setSeVolume( spep_0 + 49, 1233, 63 );
stopSe( spep_0 + 61, SE00, 0 );

--セリフカットイン
--playSe( spep_0 + 70, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 144, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 130, 12, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 144;


------------------------------------------------------
-- 背後に回り込む(156F)
------------------------------------------------------
-- ** エフェクト等 ** --
bmove = entryEffect( spep_1 + 0, SP_02r, 0x80, -1, 0, 0, 0 );  --背後に回り込む(ef_002)
setEffMoveKey( spep_1 + 0, bmove, 0, 0 , 0 );
setEffMoveKey( spep_1 + 156, bmove, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, bmove, 1.0, 1.0 );
setEffScaleKey( spep_1 + 156, bmove, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, bmove, 0 );
setEffRotateKey( spep_1 + 156, bmove, 0 );
setEffAlphaKey( spep_1 + 0, bmove, 255 );
setEffAlphaKey( spep_1 + 156, bmove, 255 );

-- ** 書き文字エントリー ** --
ctkigou = entryEffectLife( spep_1 -3 + 94,  10001, 35, 0x100, -1, 0, -231.8, 97.9 );  --！？
setEffMoveKey( spep_1 -3 + 94, ctkigou, -105.8, 126.9 , 0 );
setEffMoveKey( spep_1 -3 + 96, ctkigou, -112.5, 144.4 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctkigou, -105.8, 126.9 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctkigou, -117.6, 159 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctkigou, -117.6, 159 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctkigou, -117.9, 159 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctkigou, -118.2, 159 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctkigou, -118.5, 159 , 0 );
setEffMoveKey( spep_1 -3 + 110, ctkigou, -118.7, 159 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctkigou, -118.8, 159 , 0 );
setEffMoveKey( spep_1 -3 + 114, ctkigou, -119.1, 159 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctkigou, -119.3, 159 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctkigou, -119.6, 159 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctkigou, -119.9, 159 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctkigou, -120.1, 159 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctkigou, -120.4, 159 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctkigou, -120.7, 159 , 0 );
setEffMoveKey( spep_1 -3 + 129, ctkigou, -120.7, 159 , 0 );

setEffScaleKey( spep_1 -3 + 94, ctkigou, 1.17, 1.17 );
setEffScaleKey( spep_1 -3 + 96, ctkigou, 1.845, 1.845 );
setEffScaleKey( spep_1 -3 + 98, ctkigou, 1.17, 1.17 );
setEffScaleKey( spep_1 -3 + 100, ctkigou, 2.235, 2.235 );
setEffScaleKey( spep_1 -3 + 129, ctkigou, 2.235, 2.235 );

setEffRotateKey( spep_1 -3 + 94, ctkigou, -27 );
setEffRotateKey( spep_1 -3 + 129, ctkigou, -27 );

setEffAlphaKey( spep_1 -3 + 94, ctkigou, 255 );
setEffAlphaKey( spep_1 -3 + 129, ctkigou, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 +   0, 1, 1 );
setDisp( spep_1 + 156, 1, 0 );
changeAnime( spep_1 +   0, 1, 101 );
changeAnime( spep_1+ 25, 1, 111 );
changeAnime( spep_1+ 26, 1, 111 );
changeAnime( spep_1+ 27, 1, 111 );
changeAnime( spep_1+ 28, 1, 111 );
changeAnime( spep_1+ 29, 1, 111 );
changeAnime( spep_1+ 30, 1, 111 );
changeAnime( spep_1+ 31, 1, 111 );
changeAnime( spep_1+ 32, 1, 111 );
changeAnime( spep_1+ 33, 1, 111 );
changeAnime( spep_1+ 34, 1, 111 );
changeAnime( spep_1+ 35, 1, 111 );
changeAnime( spep_1+ 36, 1, 111 );
changeAnime( spep_1+ 37, 1, 111 );
changeAnime( spep_1+ 38, 1, 111 );
changeAnime( spep_1+ 39, 1, 111 );
changeAnime( spep_1+ 40, 1, 111 );
changeAnime( spep_1+ 41, 1, 111 );
changeAnime( spep_1+ 42, 1, 111 );
changeAnime( spep_1+ 43, 1, 111 );
changeAnime( spep_1+ 44, 1, 111 );
changeAnime( spep_1+ 45, 1, 111 );
changeAnime( spep_1+ 46, 1, 111 );
changeAnime( spep_1 -3 + 50, 1, 109 );
changeAnime( spep_1 -3 + 94, 1, 117 );
changeAnime( spep_1 -3 + 130, 1, 4 );
changeAnime( spep_1 -3 + 159, 1, 4 );

setMoveKey( spep_1    + 0, 1, 165.5, -26.5 , 0 );
setMoveKey( spep_1    + 1, 1, 163.1, -28.9 , 0 );
setMoveKey( spep_1 -3 + 5, 1, 160.7, -31.3 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 158.4, -33.6 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 161.6, -30.8 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 164.9, -28 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 168.3, -25.2 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 193.2, -30.2 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 218.2, -35.2 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 243.1, -40.2 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 241.9, -40.2 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 240.8, -40.2 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 239.6, -40.2 , 0 );
setMoveKey( spep_1 -3 + 27, 1, 238.4, -40.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 216.9, -50.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 215.7, -50.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 214.6, -50.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 213.4, -50.2 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 212.2, -50.2 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 211, -50.2 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 209.9, -50.2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 144.8, -46.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 79.7, -42.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 17.9, -39.3 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 22.6, -39.5 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -7.6, -50 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -17.7, -50.5 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -27.7, -51.2 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -25.1, -50.9 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -23.2, -50.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -23.2, -50.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -26.1, -49.6 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -34, -48.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -38.9, -48.2 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -43.9, -47.6 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -44.2, -47.6 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -44.4, -47.6 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -44.7, -47.6 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -45, -47.6 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -45.3, -47.6 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -45.5, -47.6 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -45.8, -47.6 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -46.1, -47.6 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -46.3, -47.6 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -46.6, -47.6 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -46.9, -47.6 , 0 );
setMoveKey( spep_1 -3 + 93, 1, -47.1, -47.6 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -32.6, -47.6 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -32.8, -47.6 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -33.1, -47.6 , 0 );
setMoveKey( spep_1 -3 + 100, 1, -33.4, -47.6 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -33.6, -47.6 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -33.9, -47.6 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -34.2, -47.6 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -34.5, -47.6 , 0 );
setMoveKey( spep_1 -3 + 110, 1, -34.7, -47.6 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -35, -47.6 , 0 );
setMoveKey( spep_1 -3 + 114, 1, -35.3, -47.6 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -35.5, -47.6 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -35.8, -47.6 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -36.1, -47.6 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -36.3, -47.6 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -36.6, -47.6 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -36.9, -47.6 , 0 );
setMoveKey( spep_1 -3 + 129, 1, -37.2, -47.6 , 0 );
setMoveKey( spep_1 -3 + 130, 1, -38.9, -38.7 , 0 );
setMoveKey( spep_1 -3 + 132, 1, -39.2, -38.7 , 0 );
setMoveKey( spep_1 -3 + 134, 1, -43.3, -38.7 , 0 );
setMoveKey( spep_1 -3 + 136, 1, -51.6, -38.6 , 0 );
setMoveKey( spep_1 -3 + 138, 1, -62.1, -38.5 , 0 );
setMoveKey( spep_1 -3 + 140, 1, -75, -38.5 , 0 );
setMoveKey( spep_1 -3 + 142, 1, -88.7, -38.5 , 0 );
setMoveKey( spep_1 -3 + 159, 1, -88.7, -38.5 , 0 );

setScaleKey( spep_1    + 0, 1, 1.27, 1.26 );
setScaleKey( spep_1 -3 + 44, 1, 1.27, 1.26 );
setScaleKey( spep_1 -3 + 46, 1, 1.28, 1.26 );
setScaleKey( spep_1 -3 + 49, 1, 1.29, 1.28 );
setScaleKey( spep_1 -3 + 50, 1, 1.31, 1.3 );
setScaleKey( spep_1 -3 + 52, 1, 1.34, 1.33 );
setScaleKey( spep_1 -3 + 54, 1, 1.37, 1.36 );
setScaleKey( spep_1 -3 + 56, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 58, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 60, 1, 1.46, 1.45 );
setScaleKey( spep_1 -3 + 62, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 64, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 129, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 130, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 132, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 134, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 136, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 138, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 140, 1, 1.43, 1.42 );
setScaleKey( spep_1 -3 + 142, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 159, 1, 1.42, 1.42 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 156, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 156, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--敵向かっていく
playSe( spep_1 + 46, 1003 );
setSeVolume( spep_1 + 46, 1003, 63 );

--瞬間移動1
playSe( spep_1 + 52, 1109 );
setSeVolume( spep_1 + 52, 1109, 79 );

--瞬間移動2
playSe( spep_1 + 52, 1238 );
setSeVolume( spep_1 + 52, 1238, 56 );

--！？
playSe( spep_1 + 91, 48 );
setSeVolume( spep_1 + 91, 48, 100 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 156;

------------------------------------------------------
-- 睨み(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
nirami = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --睨み(ef_003)
setEffMoveKey( spep_2 +  0, nirami, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, nirami, 0, 0 , 0 );
setEffScaleKey( spep_2 +  0, nirami, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, nirami, -1.0, 1.0 );
setEffRotateKey( spep_2 +  0, nirami, 0 );
setEffRotateKey( spep_2 + 56, nirami, 0 );
setEffAlphaKey( spep_2 +  0, nirami, 255 );
setEffAlphaKey( spep_2 + 56, nirami, 255 );

-- ** 音 ** --
--むっ2
SE02 = playSe( spep_2 + 32, 24 );

--むっ3
SE03 = playSe( spep_2 + 34, 1113 );

--むっ4
SE04 = playSe( spep_2 + 36, 27 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 54; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE02, 0 );
stopSe( SP_dodge - 12, SE03, 0 );
stopSe( SP_dodge - 12, SE04, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 白フェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --
--むっ1
SE01 = playSe( spep_2 + 30, 1042 );
setSeVolume( spep_2 + 30, 1042, 50 );
stopSe( spep_2 + 56 + 9, SE01, 0 );

--むっ4
stopSe( spep_2 + 56 + 49, SE04, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 瞬間移動(57F)
------------------------------------------------------
-- ** エフェクト等 ** --
telepo = entryEffect( spep_4 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --構え(ef_004)
setEffMoveKey( spep_4 +  0, telepo, 0, 0 , 0 );
setEffMoveKey( spep_4 + 57, telepo, 0, 0 , 0 );
setEffScaleKey( spep_4 +  0, telepo, -1.0, 1.0 );
setEffScaleKey( spep_4 + 57, telepo, -1.0, 1.0 );
setEffRotateKey( spep_4 +  0, telepo, 0 );
setEffRotateKey( spep_4 + 57, telepo, 0 );
setEffAlphaKey( spep_4 +  0, telepo, 255 );
setEffAlphaKey( spep_4 + 57, telepo, 255 );

-- ** 音 ** --
--瞬間移動1
playSe( spep_4 + 40, 1109 );
setSeVolume( spep_4 + 40, 1109, 79 );

--瞬間移動2
playSe( spep_4 + 40, 1238 );
setSeVolume( spep_4 + 40, 1238, 56 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 57, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 57;

------------------------------------------------------
-- パンチ(110F)
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --パンチ(ef_005)
setEffMoveKey( spep_5 +  0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 110, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_5 +  0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 110, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_5 +  0, punch_f, 0 );
setEffRotateKey( spep_5 + 110, punch_f, 0 );
setEffAlphaKey( spep_5 +  0, punch_f, 255 );
setEffAlphaKey( spep_5 + 110, punch_f, 255 );

-- ** エフェクト等 ** --
punch_b = entryEffectLife( spep_5 + 0, SP_06, 110, 0x80, -1, 0, 0, 0 );  --背景(ef_006)
setEffMoveKey( spep_5 +  0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 110, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_5 +  0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 110, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_5 +  0, punch_b, 0 );
setEffRotateKey( spep_5 + 110, punch_b, 0 );
setEffAlphaKey( spep_5 +  0, punch_b, 255 );
setEffAlphaKey( spep_5 + 110, punch_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_5 + 25,  906, 32, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 25, shuchusen1, 32, 25 );
setEffMoveKey(   spep_5 + 25, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_5 + 57, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_5 + 25, shuchusen1, 1.2, 1.2 );
setEffScaleKey(  spep_5 + 57, shuchusen1, 1.2, 1.2 );
setEffRotateKey( spep_5 + 25, shuchusen1, 0 );
setEffRotateKey( spep_5 + 57, shuchusen1, 0 );
setEffAlphaKey(  spep_5 + 25, shuchusen1, 255 );
setEffAlphaKey(  spep_5 + 50, shuchusen1, 200 );
setEffAlphaKey(  spep_5 + 54, shuchusen1, 100 );
setEffAlphaKey(  spep_5 + 57, shuchusen1, 0 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_5 -3 + 28,  10021, 22, 0x100, -1, 0, 17.5, 208.1 );  --バゴォッ
setEffMoveKey( spep_5 -3 + 28, ctbago, 17.5, 208.1 , 0 );
setEffMoveKey( spep_5 -3 + 30, ctbago, 78.2, 242 , 0 );

setEffMoveKey( spep_5 -3 + 32, ctbago, 136.4, 360.8 , 0 );
setEffMoveKey( spep_5 -3 + 34, ctbago, 151.8, 348.5 , 0 );

setEffMoveKey( spep_5 -3 + 36, ctbago, 136.4, 360.8 , 0 );
setEffMoveKey( spep_5 -3 + 38, ctbago, 151.8, 348.5 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctbago, 136.4, 360.8 , 0 );
setEffMoveKey( spep_5 -3 + 42, ctbago, 151.8, 348.5 , 0 );
setEffMoveKey( spep_5 -3 + 44, ctbago, 136.4, 360.8 , 0 );
setEffMoveKey( spep_5 -3 + 46, ctbago, 151.8, 348.5 , 0 );
setEffMoveKey( spep_5 -3 + 48, ctbago, 136.4, 360.8, 0 );
setEffMoveKey( spep_5 -3 + 50, ctbago, 136.4, 360.8, 0 );

setEffScaleKey( spep_5 -3 + 28, ctbago, 0.5, 0.5 );
setEffScaleKey( spep_5 -3 + 30, ctbago, 1.87, 1.87 );
setEffScaleKey( spep_5 -3 + 32, ctbago, 3.51, 3.51 );
setEffScaleKey( spep_5 -3 + 34, ctbago, 3.81, 3.81 );
setEffScaleKey( spep_5 -3 + 36, ctbago, 3.51, 3.51 );
setEffScaleKey( spep_5 -3 + 38, ctbago, 3.81, 3.81 );
setEffScaleKey( spep_5 -3 + 40, ctbago, 3.51, 3.51 );
setEffScaleKey( spep_5 -3 + 42, ctbago, 3.81, 3.81 );
setEffScaleKey( spep_5 -3 + 44, ctbago, 3.51, 3.51 );
setEffScaleKey( spep_5 -3 + 46, ctbago, 3.81, 3.81 );
setEffScaleKey( spep_5 -3 + 48, ctbago, 3.51, 3.51 );
setEffScaleKey( spep_5 -3 + 50, ctbago, 3.51, 3.51 );

setEffRotateKey( spep_5 -3 + 28, ctbago, 35.1 );
setEffRotateKey( spep_5 -3 + 30, ctbago, 29 );
setEffRotateKey( spep_5 -3 + 32, ctbago, 23 );
setEffRotateKey( spep_5 -3 + 50, ctbago, 23 );

setEffAlphaKey( spep_5 -3 + 28, ctbago, 255 );
setEffAlphaKey( spep_5 -3 + 44, ctbago, 255 );
setEffAlphaKey( spep_5 -3 + 46, ctbago, 170 );
setEffAlphaKey( spep_5 -3 + 48, ctbago, 85 );
setEffAlphaKey( spep_5 -3 + 50, ctbago, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 109, 1, 0 );

changeAnime( spep_5 + 0, 1, 4 );
changeAnime( spep_5 -3 + 28, 1, 108 );
changeAnime( spep_5 -3 + 109, 1, 108 );

setMoveKey( spep_5 + 0, 1, 101.4, -26.6 , 0 );
setMoveKey( spep_5 -3 + 27, 1, 101.4, -26.6 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 108.2, -3.2 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 115.8, 4.1 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 101.6, -4.9 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 113.1, -2.4 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 107.2, -0.3 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 114.9, 7 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 100.7, -2 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 112.2, 0.4 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 106.2, 2.5 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 114, 9.8 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 99.8, 0.9 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 111.3, 3.3 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 105.4, 5.4 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 113.1, 12.7 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 98.9, 3.7 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 110.4, 6.1 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 121.1, 7.7 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 145.5, 14.5 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 147.9, 5 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 176.1, 6.9 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 186.8, 8.5 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 211.2, 15.3 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 213.7, 5.8 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 241.9, 7.7 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 238, 10.6 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 247.9, 18.6 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 235.7, 10.3 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 249.4, 13.5 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 245.5, 16.3 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 255.4, 24.4 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 243.2, 16.1 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 256.9, 19.3 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 253, 22.1 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 262.8, 30.1 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 250.7, 21.9 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 264.4, 25 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 260.5, 27.9 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 270.3, 35.9 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 258.2, 27.6 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 271.9, 30.8 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 382.5, 32.2 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 506.8, 38.7 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 609.2, 28.9 , 0 );
--setMoveKey( spep_5 -3 + 113, 1, 737.3, 30.6 , 0 );

setScaleKey( spep_5 + 0, 1, 1.42, 1.42 );
setScaleKey( spep_5 -3 + 27, 1, 1.42, 1.42 );
setScaleKey( spep_5 -3 + 28, 1, 1.31, 1.43 );
setScaleKey( spep_5 -3 + 112, 1, 1.31, 1.43 );

setRotateKey( spep_5 -3 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 27, 1, 0 );
setRotateKey( spep_5 -3 + 28, 1, -14 );
setRotateKey( spep_5 -3 + 112, 1, -14 );

-- ** 音 ** --
--きつめのボディ1
playSe( spep_5 + 34, 1189 );
--きつめのボディ2
SE05 = playSe( spep_5 + 36, 1049 );
setSeVolume( spep_5 + 36, 1049,  0 );
setSeVolume( spep_5 + 40, 1049, 45 );
setSeVolume( spep_5 + 41, 1049, 89 );
setSeVolume( spep_5 + 63, 1049, 89 );
setSeVolume( spep_5 + 67, 1049, 79 );
setSeVolume( spep_5 + 71, 1049, 68 );
setSeVolume( spep_5 + 75, 1049, 57 );
setSeVolume( spep_5 + 79, 1049, 46 );
setSeVolume( spep_5 + 83, 1049, 35 );
setSeVolume( spep_5 + 87, 1049, 24 );
setSeVolume( spep_5 + 91, 1049, 13 );
setSeVolume( spep_5 + 95, 1049,  0 );
stopSe( spep_5 + 95, SE05, 0 );
--きつめのボディ3
playSe( spep_5 + 38, 1009 );
--きつめのボディ4
playSe( spep_5 + 40, 1000 );
setSeVolume( spep_5 + 40, 1000, 79 );
--きつめのボディ5
playSe( spep_5 + 42, 1110 );

--敵飛んでいく1
SE06 = playSe( spep_5 + 68, 1183 );
stopSe( spep_5 + 110 + 26, SE06, 0 );

--敵飛んでいく2
SE07 = playSe( spep_5 + 68, 1121 );
setSeVolume( spep_5 + 68, 1121, 37 );
stopSe( spep_5 + 110 + 26, SE07, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 110;

------------------------------------------------------
-- フィニッシュ(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ:155520)
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 100, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 100, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --フィニッシュ　背面(ef_008)
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 100, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 100, 1, 0 );
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_6 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_6 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_6 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_6 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_6 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_6 + 0, 1, 105 );
setRotateKey( spep_6 -3 + 4, 1, 240 );
setRotateKey( spep_6 -3 + 6, 1, 405 );
setRotateKey( spep_6 -3 + 8, 1, 600 );
setRotateKey( spep_6 -3 + 10, 1, 825 );
setRotateKey( spep_6 -3 + 12, 1, 1080 );
setRotateKey( spep_6 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_6 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_6 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** 音 ** --
--ガッ
playSe( spep_6 + 8, 1054 );
setSeVolume( spep_6 + 8, 1054, 126 );
--playSe( spep_6 + 8, 1023 );
--setSeVolume( spep_6 + 8, 1023, 76 );

-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 98 );

end