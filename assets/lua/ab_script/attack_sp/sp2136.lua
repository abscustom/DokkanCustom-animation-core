--11021150:破壊神アラク_破壊神の厳罰_sp2136
--sp_effect_a9_00074

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
SP_01 = 156833;  --登場  ef_001
SP_02 = 156834;  --敵に近づく   ef_002_back
SP_03 = 156836;  --打撃敵より手前 ef_003_front
SP_04 = 156837;  --打撃敵より奥  ef_003_back
SP_05 = 156840;  --打撃敵より手前 ef_004_front
SP_06 = 156841;  --打撃敵より奥  ef_004_back

--敵側
SP_02r = 156835;  --敵に近づく   ef_002_back_r
SP_03r = 156838;  --打撃敵より手前_反転  ef_003_front_r
SP_04r = 156839;  --打撃敵より奥_反転   ef_003_back_r

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
-- 登場(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 116, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

spep_x = spep_0 + 14;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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
--入り
SE001 = playSe( spep_0 + 2, 1072 );
setSeVolumeByWorkId( spep_0 + 2, SE001, 13 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 26 );
setSeVolumeByWorkId( spep_0 + 6, SE001, 39 );
setSeVolumeByWorkId( spep_0 + 8, SE001, 52 );
setSeVolumeByWorkId( spep_0 + 10, SE001, 65 );
setSeVolumeByWorkId( spep_0 + 12, SE001, 78 );
setSeVolumeByWorkId( spep_0 + 14, SE001, 91 );
setSeVolumeByWorkId( spep_0 + 16, SE001, 100 );
stopSe( spep_0 + 20, SE001, 6 );
setStartTimeMs( SE001,  333 );

--入り
SE002 = playSe( spep_0 + 14, 1237 );
setSeVolumeByWorkId( spep_0 + 14, SE001, 34 );
setSeVolumeByWorkId( spep_0 + 15, SE001, 68 );
setSeVolumeByWorkId( spep_0 + 16, SE001, 100 );
setStartTimeMs( SE002,  150 );
setPitch( spep_0 + 14, SE002, -500 );
setTimeStretch( SE002, 0.67, 10, 1 );

--入り
SE003 = playSe( spep_0 + 12, 20 );
setSeVolumeByWorkId( spep_0 + 12, SE003, 72 );

--顔カットイン
SE000 = playSe( spep_0 + 26, 1018 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


------------------------------------------------------
-- 敵に近づく(176F)
------------------------------------------------------
-- ** エフェクト等 ** --
move = entryEffectLife( spep_1 + 0, SP_02, 176, 0x80, -1, 0, 0, 0 );  --敵に近づく(ef_002_back)
setEffMoveKey( spep_1 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_1 + 176, move, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, move, 1.0, 1.0 );
setEffScaleKey( spep_1 + 176, move, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, move, 0 );
setEffRotateKey( spep_1 + 176, move, 0 );
setEffAlphaKey( spep_1 + 0, move, 255 );
setEffAlphaKey( spep_1 + 176 -1, move, 255 );
setEffAlphaKey( spep_1 + 176, move, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 10, 1, 1 );
setDisp( spep_1 -3 + 179, 1, 0 );
changeAnime( spep_1 -3 + 10, 1, 118 );
changeAnime( spep_1 -3 + 62, 1, 104 );

a1=30;
b1=30;
setMoveKey( spep_1 -3 + 10, 1, 694.5 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 681.8 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 667.9 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 652.6 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 636.1 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 618.3 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 610.2 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 600.8 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 590 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 578 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 564.7 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 550.1 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 534.2 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 517 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 498.5 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 478.8 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 457.8 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 435.4 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 411.8 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 386.9 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 360.7 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 333.2 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 304.4 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 274.3 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 243 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 210.3 +a1, -97.5 +b1 , 0 );
setMoveKey( spep_1 -3 + 61, 1, 210.3 +a1, -97.5 +b1 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 142 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 140.3 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 138.5 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 136.7 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 135 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 133.4 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 131.6 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 130 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 128.4 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 126.7 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 125.2 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 123.5 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 122 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 120.4 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 118.9 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 117.4 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 115.9 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 114.4 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 113 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 111.5 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 110.1 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 108.7 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 107.3 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 106 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 104.6 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 103.3 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 102 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 100.7 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 99.4 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 99.2 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 99 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 98.8 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 98.7 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 98.6 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 98.5 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 98.4 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 98.3 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 179, 1, 98.3 +a1, -108.3 +b1 , 0 );

setScaleKey( spep_1 -3 + 10, 1, 2.12, 2.12 );
setScaleKey( spep_1 -3 + 179, 1, 2.12, 2.12 );

setRotateKey( spep_1 -3 + 10, 1, 0 );
setRotateKey( spep_1 -3 + 179, 1, 0 );

-- ** 音 ** --
--横移動改
SE005 = playSe( spep_1 + 18, 1239,"",0.5 );
stopSe( spep_1 + 28, SE005, 0 );
setPitch( spep_1 + 18, SE005, -1000 );
setTimeStretch( SE005, 0.33, 10, 1 );

--横移動改
SE006 = playSe( spep_1 + 26, 1239,"",0.5 );
stopSe( spep_1 + 34, SE006, 0 );
setStartTimeMs( SE006,  17 );
setPitch( spep_1 + 26, SE006, -800 );
setTimeStretch( SE006, 0.47, 10, 1 );

--横移動改
SE007 = playSe( spep_1 + 32, 1239,"",0.5 );
stopSe( spep_1 + 42, SE007, 0 );
setPitch( spep_1 + 32, SE007, -600 );
setTimeStretch( SE007, 0.6, 10, 1 );

--横移動改
SE008 = playSe( spep_1 + 40, 1239,"",0.5 );
stopSe( spep_1 + 48, SE008, 0 );
setStartTimeMs( SE008,  17 );
setPitch( spep_1 + 40, SE008, -400 );
setTimeStretch( SE008, 0.73, 10, 1 );

--横移動改
SE009 = playSe( spep_1 + 46, 1239,"",0.5 );
stopSe( spep_1 + 56, SE009, 0 );
setPitch( spep_1 + 46, SE009, -200 );
setTimeStretch( SE009, 0.87, 10, 1 );

--横移動改
SE010 = playSe( spep_1 + 54, 1239,"",0.5 );
stopSe( spep_1 + 64, SE010, 0 );

--横移動改
SE012 = playSe( spep_1 + 20, 1186,"",0.5 );
stopSe( spep_1 + 26, SE012, 0 );
setPitch( spep_1 + 20, SE012, -1000 );
setTimeStretch( SE012, 0.33, 10, 1 );

--横移動改
SE013 = playSe( spep_1 + 26, 1186,"",0.5 );
stopSe( spep_1 + 32, SE013, 0 );
setPitch( spep_1 + 26, SE013, -800 );
setTimeStretch( SE013, 0.47, 10, 1 );

--横移動改
SE014 = playSe( spep_1 + 34, 1186,"",0.5 );
stopSe( spep_1 + 40, SE014, 0 );
setPitch( spep_1 + 34, SE014, -600 );
setTimeStretch( SE014, 0.6, 10, 1 );

--横移動改
SE015 = playSe( spep_1 + 42, 1186,"",0.5 );
stopSe( spep_1 + 48, SE015, 0 );
setPitch( spep_1 + 42, SE015, -400 );
setTimeStretch( SE015, 0.73, 10, 1 );

--横移動改
SE016 = playSe( spep_1 + 48, 1186,"",0.5 );
stopSe( spep_1 + 54, SE016, 0 );
setPitch( spep_1 + 48, SE016, -200 );
setTimeStretch( SE016, 0.87, 10, 1 );

--横移動改
SE017 = playSe( spep_1 + 54, 1186,"",0.5 );
stopSe( spep_1 + 62, SE017, 2 );
setStartTimeMs( SE017,  567 );		

--
--移動終わり
SE018 = playSe( spep_1 + 60, 1225 );
stopSe( spep_1 + 80, SE018, 28 );

--腕あげる
SE019 = playSe( spep_1 + 150, 1003 );
setSeVolumeByWorkId( spep_1 + 150, SE019, 58 );
setPitch( spep_1 + 150, SE019, -500 );
setTimeStretch( SE019, 0.83, 10, 1 );

-- ** 黒背景 ** --
--entryFadeBg( spep_1 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 176;

-- ** ダメージ表示 ** --

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--環境音
SE021 = playSe( spep_2 + 80, 1175 );
setSeVolumeByWorkId( spep_2 + 80, SE021, 22 );
stopSe( spep_2 +94 + 66, SE021, 16 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 打撃(86F)
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_3 + 0, SP_03, 86, 0x100, -1, 0, 0, 0 );  --打撃敵より手前(ef_003_front)
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 86, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 86 -1, hit_f, 255 );
setEffAlphaKey( spep_3 + 86, hit_f, 0 );

hit_b = entryEffectLife( spep_3 + 0, SP_04, 86, 0x80, -1, 0, 0, 0 );  --打撃敵より奥(ef_003_back)
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 86, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 86 -1, hit_b, 255 );
setEffAlphaKey( spep_3 + 86, hit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
--setDisp( spep_3 + 86, 1, 0 );
changeAnime( spep_3 + 0, 1, 118 );

a2=50;
b2=40;

a3=50;
b3=0;
setMoveKey( spep_3 + 0, 1, 257 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 + 1, 1, 255.2 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 + 2, 1, 253.4 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 251.6 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 249.8 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 248 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 246.2 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 244.4 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 242.6 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 240.8 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 239 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 237.2 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 235.4 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 233.6 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 231.8 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 230 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 228.2 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 226.4 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 224.6 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 222.8 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 221 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 219.2 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 217.4 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 215.6 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 213.8 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 212 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 210.2 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 208.4 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 206.6 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 204.8 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 203 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 201.2 +a2, -168.2 +b2 , 0 );

setScaleKey( spep_3 + 0, 1, 3.52, 3.52 );

setRotateKey( spep_3 + 0, 1, 0 );

-- ** 黒背景 ** --
--entryFadeBg( spep_3 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 60 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE021, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 201.2 +a2, -168.2 +b2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 199.4 +a2, -168.2 +b2 , 0 );
    setMoveKey( SP_dodge + 4, 1, 197.6 +a2, -168.2 +b2 , 0 );
    setMoveKey( SP_dodge + 6, 1, 195.8 +a2, -168.2 +b2 , 0 );
    setMoveKey( SP_dodge + 8, 1, 194 +a2, -168.2 +b2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 192.2 +a2, -168.2 +b2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 3.52, 3.52 );
    setScaleKey( SP_dodge + 2, 1, 3.52, 3.52 );
    setScaleKey( SP_dodge + 4, 1, 3.52, 3.52 );
    setScaleKey( SP_dodge + 6, 1, 3.52, 3.52 );
    setScaleKey( SP_dodge + 8, 1, 3.52, 3.52 );
    setScaleKey( SP_dodge + 10, 1, 3.52, 3.52 );

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
changeAnime( spep_3 -3 + 78, 1, 107 );

setMoveKey( spep_3 -3 + 64, 1, 199.4 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 197.6 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 195.8 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 194 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 192.2 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 190.4 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 77, 1, 188.6 +a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 325.5 -a3, -212.7 -b3 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 381.6 -a3, -204.3 -b3 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 438.1 -a3 -30, -260 -b3 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 494.5 -a3 -30, -259.7 -b3 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 550.9 -a3 -50, -275.3 -b3 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 607.4 -a3 -80, -291 -b3 , 0 );
--setMoveKey( spep_3 -3 + 89, 1, 607.4 -a3 -80, -291 -b3 , 0 );

s1=0.6;
setScaleKey( spep_3 -3 + 77, 1, 3.52, 3.52 );
setScaleKey( spep_3 -3 + 78, 1, 1.6 + s1, 1.6 + s1 );
setScaleKey( spep_3 -3 + 80, 1, 2.016 + s1, 2.016 + s1 );
setScaleKey( spep_3 -3 + 82, 1, 2.432 + s1, 2.432 + s1 );
setScaleKey( spep_3 -3 + 84, 1, 2.848 + s1, 2.848 + s1 );
setScaleKey( spep_3 -3 + 86, 1, 3.264 + s1, 3.264 + s1 );
setScaleKey( spep_3 -3 + 88, 1, 3.68 + s1, 3.68 + s1 );
--setScaleKey( spep_3 -3 + 89, 1, 3.68, 3.68 );

setRotateKey( spep_3 -3 + 77, 1, 0 );
setRotateKey( spep_3 -3 + 78, 1, -40.5 );
setRotateKey( spep_3 -3 + 80, 1, -37.8 );
setRotateKey( spep_3 -3 + 82, 1, -35.1 );
setRotateKey( spep_3 -3 + 84, 1, -32.4 );
setRotateKey( spep_3 -3 + 86, 1, -29.7 );
setRotateKey( spep_3 -3 + 88, 1, -27 );
--setRotateKey( spep_3 -3 + 89, 1, -27 );

-- ** 音 ** --
--デコピン
SE022 = playSe( spep_3 + 72, 1042 );
stopSe( spep_3 +82 + 2, SE022, 18 );

--デコピン
SE023 = playSe( spep_3 + 72, 1028 );
setSeVolumeByWorkId( spep_3 + 72, SE023, 51 );

--デコピン
SE024 = playSe( spep_3 + 72, 1027 );
setSeVolumeByWorkId( spep_3 + 72, SE024, 56 );

--デコピン
SE025 = playSe( spep_3 + 72, 1258 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 86;


------------------------------------------------------
-- 打撃2(106F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 2, SP_05, 0x100, -1, 0, 0, 0 );  --打撃敵より手前(ef_004_front)
setEffMoveKey( spep_4 + 2, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 2, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 2, finish_f, 0 );
setEffRotateKey( spep_4 + 116, finish_f, 0 );
setEffAlphaKey( spep_4 + 2, finish_f, 255 );
setEffAlphaKey( spep_4 + 116, finish_f, 255 );

fininsh_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --(打撃敵より奥  ef_004_back)
setEffMoveKey( spep_4 + 0, fininsh_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, fininsh_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, fininsh_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, fininsh_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fininsh_b, 0 );
setEffRotateKey( spep_4 + 116, fininsh_b, 0 );
setEffAlphaKey( spep_4 + 0, fininsh_b, 255 );
setEffAlphaKey( spep_4 + 116, fininsh_b, 255 );

-- ** 敵キャラクター ** --(味方側でとったやつ)
--setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 66, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

a4=30;
b4=0;
setMoveKey( spep_4 + 0, 1, -481.4, -250.7 , 0 );
setMoveKey( spep_4 + 1, 1, -201.1, -121.4 , 0 );
--setMoveKey( spep_4 + 2, 1, -135.1, -105.5  , 0 );
setMoveKey( spep_4 -3 + 6, 1, -25.1, -105.5  , 0 );
setMoveKey( spep_4 -3 + 8, 1, 126.3, -32.1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 162.9 -a4, -21.7 +b4 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 152.9 -a4, -18.7 +b4 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 161.2 -a4, -42.6 +b4 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 179.5 -a4, -39.7 +b4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 153.7 -a4, -24.8 +b4 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 144 -a4, -46 +b4 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 126.1 -a4, -31.2 +b4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 136.3 -a4, -28.6 +b4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 114.5 -a4, -18 +b4 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 104.6 -a4, -31.5 +b4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 90.8 -a4, -21.1 +b4 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 88.9 -a4, -18.7 +b4 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 75 -a4, -12.4 +b4 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 65.1 -a4, -14.3 +b4 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 55.1 -a4, -12.1 +b4 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 54.2 -a4, -10.1 +b4 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 53.2 -a4, -8.1 +b4 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 52.2 -a4, -6.2 +b4 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 51.2 -a4, -4.4 +b4 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 50.1 -a4, -2.7 +b4 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 49.1 -a4, -1 +b4 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 48.1 -a4, 0.6 +b4 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 47 -a4, 2.2 +b4 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 45.9 -a4, 3.6 +b4 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 44.8 -a4, 5 +b4 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 43.7 -a4, 6.3 +b4 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 42.5 -a4, 7.6 +b4 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 41.4 -a4, 8.8 +b4 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 40.3 -a4, 9.9 +b4 , 0 );

setScaleKey( spep_4 + 0, 1, 4.92, 4.92 );
setScaleKey( spep_4 + 1, 1, 3, 3 );
--setScaleKey( spep_4 + 2, 1, 1.56, 1.56 );
setScaleKey( spep_4 -3 + 6, 1, 1.56, 1.56 );
setScaleKey( spep_4 -3 + 8, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 10, 1, 0.48, 0.48 );
setScaleKey( spep_4 -3 + 12, 1, 0.466, 0.466 );
setScaleKey( spep_4 -3 + 14, 1, 0.452, 0.452 );
setScaleKey( spep_4 -3 + 16, 1, 0.438, 0.438 );
setScaleKey( spep_4 -3 + 18, 1, 0.424, 0.424 );
setScaleKey( spep_4 -3 + 20, 1, 0.41, 0.41 );
setScaleKey( spep_4 -3 + 22, 1, 0.396, 0.396 );
setScaleKey( spep_4 -3 + 24, 1, 0.382, 0.382 );
setScaleKey( spep_4 -3 + 26, 1, 0.368, 0.368 );
setScaleKey( spep_4 -3 + 28, 1, 0.354, 0.354 );
setScaleKey( spep_4 -3 + 30, 1, 0.34, 0.34 );
setScaleKey( spep_4 -3 + 32, 1, 0.326, 0.326 );
setScaleKey( spep_4 -3 + 34, 1, 0.312, 0.312 );
setScaleKey( spep_4 -3 + 36, 1, 0.298, 0.298 );
setScaleKey( spep_4 -3 + 38, 1, 0.284, 0.284 );
setScaleKey( spep_4 -3 + 40, 1, 0.27, 0.27 );
setScaleKey( spep_4 -3 + 42, 1, 0.256, 0.256 );
setScaleKey( spep_4 -3 + 44, 1, 0.242, 0.242 );
setScaleKey( spep_4 -3 + 46, 1, 0.228, 0.228 );
setScaleKey( spep_4 -3 + 48, 1, 0.214, 0.214 );
setScaleKey( spep_4 -3 + 50, 1, 0.2, 0.2 );
setScaleKey( spep_4 -3 + 52, 1, 0.186, 0.186 );
setScaleKey( spep_4 -3 + 54, 1, 0.172, 0.172 );
setScaleKey( spep_4 -3 + 56, 1, 0.158, 0.158 );
setScaleKey( spep_4 -3 + 58, 1, 0.144, 0.144 );
setScaleKey( spep_4 -3 + 60, 1, 0.13, 0.13 );
setScaleKey( spep_4 -3 + 66, 1, 0.12, 0.12 );

setRotateKey( spep_4 + 0, 1, 45 );
setRotateKey( spep_4 + 1, 1, 37.7 );
setRotateKey( spep_4 + 2, 1, 32.5 );
setRotateKey( spep_4 -3 + 6, 1, 29.3 );
setRotateKey( spep_4 -3 + 8, 1, 28.3 );
setRotateKey( spep_4 -3 + 10, 1, 28.2 );
setRotateKey( spep_4 -3 + 12, 1, 28.1 );
setRotateKey( spep_4 -3 + 14, 1, 28 );
setRotateKey( spep_4 -3 + 16, 1, 27.9 );
setRotateKey( spep_4 -3 + 18, 1, 27.8 );
setRotateKey( spep_4 -3 + 20, 1, 27.7 );
setRotateKey( spep_4 -3 + 22, 1, 27.6 );
setRotateKey( spep_4 -3 + 24, 1, 27.6 );
setRotateKey( spep_4 -3 + 26, 1, 27.5 );
setRotateKey( spep_4 -3 + 28, 1, 27.4 );
setRotateKey( spep_4 -3 + 30, 1, 27.3 );
setRotateKey( spep_4 -3 + 32, 1, 27.2 );
setRotateKey( spep_4 -3 + 34, 1, 27.2 );
setRotateKey( spep_4 -3 + 36, 1, 27.1 );
setRotateKey( spep_4 -3 + 38, 1, 27 );
setRotateKey( spep_4 -3 + 40, 1, 27 );
setRotateKey( spep_4 -3 + 42, 1, 26.9 );
setRotateKey( spep_4 -3 + 44, 1, 26.8 );
setRotateKey( spep_4 -3 + 46, 1, 26.8 );
setRotateKey( spep_4 -3 + 48, 1, 26.7 );
setRotateKey( spep_4 -3 + 50, 1, 26.7 );
setRotateKey( spep_4 -3 + 52, 1, 26.6 );
setRotateKey( spep_4 -3 + 54, 1, 26.6 );
setRotateKey( spep_4 -3 + 56, 1, 26.5 );
setRotateKey( spep_4 -3 + 58, 1, 26.5 );
setRotateKey( spep_4 -3 + 60, 1, 26.4 );
setRotateKey( spep_4 -3 + 62, 1, 26.4 );
setRotateKey( spep_4 -3 + 64, 1, 26.3 );
setRotateKey( spep_4 -3 + 66, 1, 26.3 );

-- ** 音 ** --

-- ** 黒背景 ** --
--entryFadeBg( spep_4 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 6 );
endPhase( spep_4 + 106 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 登場(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 116, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

spep_x = spep_0 + 14;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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
--入り
SE001 = playSe( spep_0 + 2, 1072 );
setSeVolumeByWorkId( spep_0 + 2, SE001, 13 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 26 );
setSeVolumeByWorkId( spep_0 + 6, SE001, 39 );
setSeVolumeByWorkId( spep_0 + 8, SE001, 52 );
setSeVolumeByWorkId( spep_0 + 10, SE001, 65 );
setSeVolumeByWorkId( spep_0 + 12, SE001, 78 );
setSeVolumeByWorkId( spep_0 + 14, SE001, 91 );
setSeVolumeByWorkId( spep_0 + 16, SE001, 100 );
stopSe( spep_0 + 20, SE001, 6 );
setStartTimeMs( SE001,  333 );

--入り
SE002 = playSe( spep_0 + 14, 1237 );
setSeVolumeByWorkId( spep_0 + 14, SE001, 34 );
setSeVolumeByWorkId( spep_0 + 15, SE001, 68 );
setSeVolumeByWorkId( spep_0 + 16, SE001, 100 );
setStartTimeMs( SE002,  150 );
setPitch( spep_0 + 14, SE002, -500 );
setTimeStretch( SE002, 0.67, 10, 1 );

--入り
SE003 = playSe( spep_0 + 12, 20 );
setSeVolumeByWorkId( spep_0 + 12, SE003, 72 );

--顔カットイン
SE000 = playSe( spep_0 + 26, 1018 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


------------------------------------------------------
-- 敵に近づく(176F)
------------------------------------------------------
-- ** エフェクト等 ** --
move = entryEffectLife( spep_1 + 0, SP_02r, 176, 0x80, -1, 0, 0, 0 );  --敵に近づく(ef_002_back)
setEffMoveKey( spep_1 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_1 + 176, move, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, move, 1.0, 1.0 );
setEffScaleKey( spep_1 + 176, move, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, move, 0 );
setEffRotateKey( spep_1 + 176, move, 0 );
setEffAlphaKey( spep_1 + 0, move, 255 );
setEffAlphaKey( spep_1 + 176 -1, move, 255 );
setEffAlphaKey( spep_1 + 176, move, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 10, 1, 1 );
setDisp( spep_1 -3 + 179, 1, 0 );
changeAnime( spep_1 -3 + 10, 1, 118 );
changeAnime( spep_1 -3 + 62, 1, 104 );

a1=30;
b1=30;
setMoveKey( spep_1 -3 + 10, 1, 694.5 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 681.8 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 667.9 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 652.6 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 636.1 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 618.3 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 610.2 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 600.8 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 590 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 578 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 564.7 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 550.1 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 534.2 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 517 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 498.5 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 478.8 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 457.8 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 435.4 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 411.8 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 386.9 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 360.7 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 333.2 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 304.4 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 274.3 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 243 +a1, -97.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 210.3 +a1, -97.5 +b1 , 0 );
setMoveKey( spep_1 -3 + 61, 1, 210.3 +a1, -97.5 +b1 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 142 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 140.3 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 138.5 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 136.7 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 135 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 133.4 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 131.6 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 130 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 128.4 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 126.7 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 125.2 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 123.5 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 122 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 120.4 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 118.9 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 117.4 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 115.9 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 114.4 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 113 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 111.5 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 110.1 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 108.7 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 107.3 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 106 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 104.6 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 103.3 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 102 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 100.7 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 99.4 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 99.2 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 99 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 98.8 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 98.7 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 98.6 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 98.5 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 98.4 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 98.3 +a1, -108.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 179, 1, 98.3 +a1, -108.3 +b1 , 0 );

setScaleKey( spep_1 -3 + 10, 1, 2.12, 2.12 );
setScaleKey( spep_1 -3 + 179, 1, 2.12, 2.12 );

setRotateKey( spep_1 -3 + 10, 1, 0 );
setRotateKey( spep_1 -3 + 179, 1, 0 );

-- ** 音 ** --
--横移動改
SE005 = playSe( spep_1 + 18, 1239,"",0.5 );
stopSe( spep_1 + 28, SE005, 0 );
setPitch( spep_1 + 18, SE005, -1000 );
setTimeStretch( SE005, 0.33, 10, 1 );

--横移動改
SE006 = playSe( spep_1 + 26, 1239,"",0.5 );
stopSe( spep_1 + 34, SE006, 0 );
setStartTimeMs( SE006,  17 );
setPitch( spep_1 + 26, SE006, -800 );
setTimeStretch( SE006, 0.47, 10, 1 );

--横移動改
SE007 = playSe( spep_1 + 32, 1239,"",0.5 );
stopSe( spep_1 + 42, SE007, 0 );
setPitch( spep_1 + 32, SE007, -600 );
setTimeStretch( SE007, 0.6, 10, 1 );

--横移動改
SE008 = playSe( spep_1 + 40, 1239,"",0.5 );
stopSe( spep_1 + 48, SE008, 0 );
setStartTimeMs( SE008,  17 );
setPitch( spep_1 + 40, SE008, -400 );
setTimeStretch( SE008, 0.73, 10, 1 );

--横移動改
SE009 = playSe( spep_1 + 46, 1239,"",0.5 );
stopSe( spep_1 + 56, SE009, 0 );
setPitch( spep_1 + 46, SE009, -200 );
setTimeStretch( SE009, 0.87, 10, 1 );

--横移動改
SE010 = playSe( spep_1 + 54, 1239,"",0.5 );
stopSe( spep_1 + 64, SE010, 0 );

--横移動改
SE012 = playSe( spep_1 + 20, 1186,"",0.5 );
stopSe( spep_1 + 26, SE012, 0 );
setPitch( spep_1 + 20, SE012, -1000 );
setTimeStretch( SE012, 0.33, 10, 1 );

--横移動改
SE013 = playSe( spep_1 + 26, 1186,"",0.5 );
stopSe( spep_1 + 32, SE013, 0 );
setPitch( spep_1 + 26, SE013, -800 );
setTimeStretch( SE013, 0.47, 10, 1 );

--横移動改
SE014 = playSe( spep_1 + 34, 1186,"",0.5 );
stopSe( spep_1 + 40, SE014, 0 );
setPitch( spep_1 + 34, SE014, -600 );
setTimeStretch( SE014, 0.6, 10, 1 );

--横移動改
SE015 = playSe( spep_1 + 42, 1186,"",0.5 );
stopSe( spep_1 + 48, SE015, 0 );
setPitch( spep_1 + 42, SE015, -400 );
setTimeStretch( SE015, 0.73, 10, 1 );

--横移動改
SE016 = playSe( spep_1 + 48, 1186,"",0.5 );
stopSe( spep_1 + 54, SE016, 0 );
setPitch( spep_1 + 48, SE016, -200 );
setTimeStretch( SE016, 0.87, 10, 1 );

--横移動改
SE017 = playSe( spep_1 + 54, 1186,"",0.5 );
stopSe( spep_1 + 62, SE017, 2 );
setStartTimeMs( SE017,  567 );		

--
--移動終わり
SE018 = playSe( spep_1 + 60, 1225 );
stopSe( spep_1 + 80, SE018, 28 );

--腕あげる
SE019 = playSe( spep_1 + 150, 1003 );
setSeVolumeByWorkId( spep_1 + 150, SE019, 58 );
setPitch( spep_1 + 150, SE019, -500 );
setTimeStretch( SE019, 0.83, 10, 1 );

-- ** 黒背景 ** --
--entryFadeBg( spep_1 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 176;

-- ** ダメージ表示 ** --

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--環境音
SE021 = playSe( spep_2 + 80, 1175 );
setSeVolumeByWorkId( spep_2 + 80, SE021, 22 );
stopSe( spep_2 +94 + 66, SE021, 16 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 打撃(86F)
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_3 + 0, SP_03r, 86, 0x100, -1, 0, 0, 0 );  --打撃敵より手前(ef_003_front)
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 86, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 86 -1, hit_f, 255 );
setEffAlphaKey( spep_3 + 86, hit_f, 0 );

hit_b = entryEffectLife( spep_3 + 0, SP_04r, 86, 0x80, -1, 0, 0, 0 );  --打撃敵より奥(ef_003_back)
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 86, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 86 -1, hit_b, 255 );
setEffAlphaKey( spep_3 + 86, hit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
--setDisp( spep_3 + 86, 1, 0 );
changeAnime( spep_3 + 0, 1, 118 );

a2=50;
b2=40;

a3=50;
b3=0;
setMoveKey( spep_3 + 0, 1, 257 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 + 1, 1, 255.2 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 + 2, 1, 253.4 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 251.6 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 249.8 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 248 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 246.2 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 244.4 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 242.6 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 240.8 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 239 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 237.2 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 235.4 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 233.6 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 231.8 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 230 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 228.2 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 226.4 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 224.6 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 222.8 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 221 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 219.2 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 217.4 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 215.6 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 213.8 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 212 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 210.2 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 208.4 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 206.6 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 204.8 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 203 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 201.2 -a2, -168.2 +b2 , 0 );

setScaleKey( spep_3 + 0, 1, 3.52, 3.52 );

setRotateKey( spep_3 + 0, 1, 0 );

-- ** 黒背景 ** --
--entryFadeBg( spep_3 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 60 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE021, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 201.2 -a2, -168.2 +b2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 199.4 -a2, -168.2 +b2 , 0 );
    setMoveKey( SP_dodge + 4, 1, 197.6 -a2, -168.2 +b2 , 0 );
    setMoveKey( SP_dodge + 6, 1, 195.8 -a2, -168.2 +b2 , 0 );
    setMoveKey( SP_dodge + 8, 1, 194 -a2, -168.2 +b2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 192.2 -a2, -168.2 +b2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 3.52, 3.52 );
    setScaleKey( SP_dodge + 2, 1, 3.52, 3.52 );
    setScaleKey( SP_dodge + 4, 1, 3.52, 3.52 );
    setScaleKey( SP_dodge + 6, 1, 3.52, 3.52 );
    setScaleKey( SP_dodge + 8, 1, 3.52, 3.52 );
    setScaleKey( SP_dodge + 10, 1, 3.52, 3.52 );

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
changeAnime( spep_3 -3 + 78, 1, 107 );

setMoveKey( spep_3 -3 + 64, 1, 199.4 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 197.6 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 195.8 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 194 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 192.2 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 190.4 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 77, 1, 188.6 -a2, -168.2 +b2 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 325.5 -a3, -212.7 -b3 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 381.6 -a3, -204.3 -b3 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 438.1 -a3 -30, -260 -b3 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 494.5 -a3 -30, -259.7 -b3 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 550.9 -a3 -50, -275.3 -b3 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 607.4 -a3 -80, -291 -b3 , 0 );
--setMoveKey( spep_3 -3 + 89, 1, 607.4 -a3 -80, -291 -b3 , 0 );

s1=0.6;
setScaleKey( spep_3 -3 + 77, 1, 3.52, 3.52 );
setScaleKey( spep_3 -3 + 78, 1, 1.6 + s1, 1.6 + s1 );
setScaleKey( spep_3 -3 + 80, 1, 2.016 + s1, 2.016 + s1 );
setScaleKey( spep_3 -3 + 82, 1, 2.432 + s1, 2.432 + s1 );
setScaleKey( spep_3 -3 + 84, 1, 2.848 + s1, 2.848 + s1 );
setScaleKey( spep_3 -3 + 86, 1, 3.264 + s1, 3.264 + s1 );
setScaleKey( spep_3 -3 + 88, 1, 3.68 + s1, 3.68 + s1 );
--setScaleKey( spep_3 -3 + 89, 1, 3.68, 3.68 );

setRotateKey( spep_3 -3 + 77, 1, 0 );
setRotateKey( spep_3 -3 + 78, 1, -40.5 );
setRotateKey( spep_3 -3 + 80, 1, -37.8 );
setRotateKey( spep_3 -3 + 82, 1, -35.1 );
setRotateKey( spep_3 -3 + 84, 1, -32.4 );
setRotateKey( spep_3 -3 + 86, 1, -29.7 );
setRotateKey( spep_3 -3 + 88, 1, -27 );
--setRotateKey( spep_3 -3 + 89, 1, -27 );

-- ** 音 ** --
--デコピン
SE022 = playSe( spep_3 + 72, 1042 );
stopSe( spep_3 +82 + 2, SE022, 18 );

--デコピン
SE023 = playSe( spep_3 + 72, 1028 );
setSeVolumeByWorkId( spep_3 + 72, SE023, 51 );

--デコピン
SE024 = playSe( spep_3 + 72, 1027 );
setSeVolumeByWorkId( spep_3 + 72, SE024, 56 );

--デコピン
SE025 = playSe( spep_3 + 72, 1258 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 86;


------------------------------------------------------
-- 打撃2(106F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 2, SP_05, 0x100, -1, 0, 0, 0 );  --打撃敵より手前(ef_004_front)
setEffMoveKey( spep_4 + 2, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 2, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 2, finish_f, 0 );
setEffRotateKey( spep_4 + 116, finish_f, 0 );
setEffAlphaKey( spep_4 + 2, finish_f, 255 );
setEffAlphaKey( spep_4 + 116, finish_f, 255 );

fininsh_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --(打撃敵より奥  ef_004_back)
setEffMoveKey( spep_4 + 0, fininsh_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, fininsh_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, fininsh_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, fininsh_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fininsh_b, 0 );
setEffRotateKey( spep_4 + 116, fininsh_b, 0 );
setEffAlphaKey( spep_4 + 0, fininsh_b, 255 );
setEffAlphaKey( spep_4 + 116, fininsh_b, 255 );

-- ** 敵キャラクター ** --(味方側でとったやつ)
--setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 66, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

a4=30;
b4=0;
setMoveKey( spep_4 + 0, 1, -481.4, -250.7 , 0 );
setMoveKey( spep_4 + 1, 1, -201.1, -121.4 , 0 );
--setMoveKey( spep_4 + 2, 1, -135.1, -105.5  , 0 );
setMoveKey( spep_4 -3 + 6, 1, -25.1, -105.5  , 0 );
setMoveKey( spep_4 -3 + 8, 1, 126.3, -32.1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 162.9 -a4, -21.7 +b4 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 152.9 -a4, -18.7 +b4 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 161.2 -a4, -42.6 +b4 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 179.5 -a4, -39.7 +b4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 153.7 -a4, -24.8 +b4 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 144 -a4, -46 +b4 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 126.1 -a4, -31.2 +b4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 136.3 -a4, -28.6 +b4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 114.5 -a4, -18 +b4 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 104.6 -a4, -31.5 +b4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 90.8 -a4, -21.1 +b4 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 88.9 -a4, -18.7 +b4 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 75 -a4, -12.4 +b4 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 65.1 -a4, -14.3 +b4 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 55.1 -a4, -12.1 +b4 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 54.2 -a4, -10.1 +b4 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 53.2 -a4, -8.1 +b4 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 52.2 -a4, -6.2 +b4 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 51.2 -a4, -4.4 +b4 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 50.1 -a4, -2.7 +b4 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 49.1 -a4, -1 +b4 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 48.1 -a4, 0.6 +b4 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 47 -a4, 2.2 +b4 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 45.9 -a4, 3.6 +b4 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 44.8 -a4, 5 +b4 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 43.7 -a4, 6.3 +b4 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 42.5 -a4, 7.6 +b4 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 41.4 -a4, 8.8 +b4 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 40.3 -a4, 9.9 +b4 , 0 );

setScaleKey( spep_4 + 0, 1, 4.92, 4.92 );
setScaleKey( spep_4 + 1, 1, 3, 3 );
--setScaleKey( spep_4 + 2, 1, 1.56, 1.56 );
setScaleKey( spep_4 -3 + 6, 1, 1.56, 1.56 );
setScaleKey( spep_4 -3 + 8, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 10, 1, 0.48, 0.48 );
setScaleKey( spep_4 -3 + 12, 1, 0.466, 0.466 );
setScaleKey( spep_4 -3 + 14, 1, 0.452, 0.452 );
setScaleKey( spep_4 -3 + 16, 1, 0.438, 0.438 );
setScaleKey( spep_4 -3 + 18, 1, 0.424, 0.424 );
setScaleKey( spep_4 -3 + 20, 1, 0.41, 0.41 );
setScaleKey( spep_4 -3 + 22, 1, 0.396, 0.396 );
setScaleKey( spep_4 -3 + 24, 1, 0.382, 0.382 );
setScaleKey( spep_4 -3 + 26, 1, 0.368, 0.368 );
setScaleKey( spep_4 -3 + 28, 1, 0.354, 0.354 );
setScaleKey( spep_4 -3 + 30, 1, 0.34, 0.34 );
setScaleKey( spep_4 -3 + 32, 1, 0.326, 0.326 );
setScaleKey( spep_4 -3 + 34, 1, 0.312, 0.312 );
setScaleKey( spep_4 -3 + 36, 1, 0.298, 0.298 );
setScaleKey( spep_4 -3 + 38, 1, 0.284, 0.284 );
setScaleKey( spep_4 -3 + 40, 1, 0.27, 0.27 );
setScaleKey( spep_4 -3 + 42, 1, 0.256, 0.256 );
setScaleKey( spep_4 -3 + 44, 1, 0.242, 0.242 );
setScaleKey( spep_4 -3 + 46, 1, 0.228, 0.228 );
setScaleKey( spep_4 -3 + 48, 1, 0.214, 0.214 );
setScaleKey( spep_4 -3 + 50, 1, 0.2, 0.2 );
setScaleKey( spep_4 -3 + 52, 1, 0.186, 0.186 );
setScaleKey( spep_4 -3 + 54, 1, 0.172, 0.172 );
setScaleKey( spep_4 -3 + 56, 1, 0.158, 0.158 );
setScaleKey( spep_4 -3 + 58, 1, 0.144, 0.144 );
setScaleKey( spep_4 -3 + 60, 1, 0.13, 0.13 );
setScaleKey( spep_4 -3 + 66, 1, 0.12, 0.12 );

setRotateKey( spep_4 + 0, 1, 45 );
setRotateKey( spep_4 + 1, 1, 37.7 );
setRotateKey( spep_4 + 2, 1, 32.5 );
setRotateKey( spep_4 -3 + 6, 1, 29.3 );
setRotateKey( spep_4 -3 + 8, 1, 28.3 );
setRotateKey( spep_4 -3 + 10, 1, 28.2 );
setRotateKey( spep_4 -3 + 12, 1, 28.1 );
setRotateKey( spep_4 -3 + 14, 1, 28 );
setRotateKey( spep_4 -3 + 16, 1, 27.9 );
setRotateKey( spep_4 -3 + 18, 1, 27.8 );
setRotateKey( spep_4 -3 + 20, 1, 27.7 );
setRotateKey( spep_4 -3 + 22, 1, 27.6 );
setRotateKey( spep_4 -3 + 24, 1, 27.6 );
setRotateKey( spep_4 -3 + 26, 1, 27.5 );
setRotateKey( spep_4 -3 + 28, 1, 27.4 );
setRotateKey( spep_4 -3 + 30, 1, 27.3 );
setRotateKey( spep_4 -3 + 32, 1, 27.2 );
setRotateKey( spep_4 -3 + 34, 1, 27.2 );
setRotateKey( spep_4 -3 + 36, 1, 27.1 );
setRotateKey( spep_4 -3 + 38, 1, 27 );
setRotateKey( spep_4 -3 + 40, 1, 27 );
setRotateKey( spep_4 -3 + 42, 1, 26.9 );
setRotateKey( spep_4 -3 + 44, 1, 26.8 );
setRotateKey( spep_4 -3 + 46, 1, 26.8 );
setRotateKey( spep_4 -3 + 48, 1, 26.7 );
setRotateKey( spep_4 -3 + 50, 1, 26.7 );
setRotateKey( spep_4 -3 + 52, 1, 26.6 );
setRotateKey( spep_4 -3 + 54, 1, 26.6 );
setRotateKey( spep_4 -3 + 56, 1, 26.5 );
setRotateKey( spep_4 -3 + 58, 1, 26.5 );
setRotateKey( spep_4 -3 + 60, 1, 26.4 );
setRotateKey( spep_4 -3 + 62, 1, 26.4 );
setRotateKey( spep_4 -3 + 64, 1, 26.3 );
setRotateKey( spep_4 -3 + 66, 1, 26.3 );

-- ** 音 ** --

-- ** 黒背景 ** --
--entryFadeBg( spep_4 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 6 );
endPhase( spep_4 + 106 );

end