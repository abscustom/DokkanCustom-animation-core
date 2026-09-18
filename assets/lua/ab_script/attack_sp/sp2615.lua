-- 1027500: UR_ザーロイン_ラバンラ_ザーブト_必殺技_プリティーブラックホール
-- sp_effect_a9_00108
-- sp2615

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162268;  -- 集中線 ef_001
SP_002 = 162269;  -- 3人登場 ef_002
SP_003 = 162271;  -- ハート攻撃 ef_003

-- 敵側
SP_002r = 162270;  -- 3人登場 ef_002r
SP_003r = 162272;  -- ハート攻撃 ef_003r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
--changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
--setDisp( 0, 1, 0 );

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

--[[
setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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
]]

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 集中線 ef_001 (278F)
------------------------------------------------------
MAX_FRAME_0 = 278;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_02 = entryEffect( spep_0 + 0, SP_002, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_02, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_02, 0 );
setEffAlphaKey( spep_0 + 0, SP_02, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_02, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 14;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 1 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 30 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 1 + OFFSET_X, 1, 286, -353 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 286.3, -353.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 286.3, -353.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 287.3, -355.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 287.3, -355.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 289.1, -359 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 289.1, -359 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 291.7, -364.1 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 295.1, -371 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 299.7, -380 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 305.5, -391.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 321.9, -423.7 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 374.8, -527.7 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 469.3, -713.5 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 608.8, -987.7 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 792.5, -1349.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 1012.7, -1782.2 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 1253.7, -2256.2 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 1496.1, -2732.8 , 0 );

setScaleKey( spep_0 + 1 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 6.9, 6.9 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 8.59, 8.59 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 10.44, 10.44 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 12.31, 12.31 );

setRotateKey( spep_0 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 30 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 1 + OFFSET_X, 1, 2, 0.3, 0.3, 0.3, 1.0 );
setBlendColor( spep_0 + 2 + OFFSET_X, 1, 2, 0.3, 0.3, 0.3, 1.0 );
setBlendColor( spep_0 + 3 + OFFSET_X, 1, 2, 0.3, 0.3, 0.3, 1.0 );
setBlendColor( spep_0 + 4 + OFFSET_X, 1, 2, 0.3, 0.3, 0.3, 1.0 );
setBlendColor( spep_0 + 5 + OFFSET_X, 1, 2, 0.3, 0.3, 0.3, 1.0 );
setBlendColor( spep_0 + 6 + OFFSET_X, 1, 2, 0.3, 0.3, 0.3, 1.0 );
setBlendColor( spep_0 + 7 + OFFSET_X, 1, 2, 0.3, 0.3, 0.3, 1.0 );
setBlendColor( spep_0 + 28 + OFFSET_X, 1, 2, 0.3, 0.3, 0.3, 1.0 );
setBlendColor( spep_0 + 30 + OFFSET_X, 1, 0, 0, 0, 0, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, 0.6);
SE004 = playSeVer2( spep_0 + 26, 20, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 26, 1042, "", 0, 0, 0, -1);

--ピンクオーラ溜まる
SE002 = playSeVer2( spep_0 + 108, 1214, "",spep_0 + 206, 18, 32, -1);
setSeVolumeByWorkId( spep_0 + 108, SE002, 130 );
setStartTimeMs( SE002,  1567 );

--ピンクオーラ溜まる
SE006 = playSeVer2( spep_0 + 102, 1407, "",spep_0 + 202, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 102, SE006, 150 );
setPitch( spep_0 + 102, SE006, -400 );
setTimeStretch( SE006, 0.73, 30, 4 );
SE007 = playSeVer2( spep_0 + 110, 1227, "",spep_0 + 202, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 110, SE007, 116 );
SE008 = playSeVer2( spep_0 + 110, 1240, "",spep_0 + 192, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 110, SE008, 146 );
SE009 = playSeVer2( spep_0 + 110, 1437, "",spep_0 + 252, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 110, SE009, 126 );

--変身
SE010 = playSeVer2( spep_0 + 150, 1115, "",spep_0 + 274, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 150, SE010, 111 );
SE011 = playSeVer2( spep_0 + 162, 1214, "",spep_0 + 266, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 162, SE011, 69 );
SE012 = playSeVer2( spep_0 + 162, 1184, "",spep_0 + 266, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 162, SE012, 68 );

--変身決め
SE013 = playSeVer2( spep_0 + 218, 1434, "",spep_0 + 294, 4, 14, -1);
setStartTimeMs( SE013,  200 );
SE014 = playSeVer2( spep_0 + 228, 1433, "",spep_0 + 294, 0, 12, -1);
SE015 = playSeVer2( spep_0 + 228, 1112, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE015, 83 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 168 , 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + MAX_FRAME_0 - 6, 6, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 278

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- ハート攻撃 ef_003 (718F)
------------------------------------------------------
MAX_FRAME_2 = 718;

-- ** エフェクト等 ** --
SP_03 = entryEffect( spep_2 + 0, SP_003, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 258 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 376 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 258 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 294 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 258 + OFFSET_X, 1, 0, -339.8 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 0, -339.8 , 0 );

setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_2 + 258 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--飛び上がる
SE018 = playSeVer2( spep_2 + 0, 1227, "",spep_2 + 170, 0, 70, -1);
setSeVolumeByWorkId( spep_2 + 0, SE018, 70 );
SE019 = playSeVer2( spep_2 + 0, 1267, "",spep_2 + 146, 0, 52, -1);
setSeVolumeByWorkId( spep_2 + 0, SE019, 71 );
SE020 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE020, 81 );

--黒い気を集める
SE021 = playSeVer2( spep_2 + 50, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE021, 65 );
SE022 = playSeVer2( spep_2 + 50, 1405, "", 0, 0, 0, -1);

--ハート上昇
SE017 = playSeVer2( spep_2 + 82, 1400, "",spep_2 + 196, 16, 22, 0.5);
setStartTimeMs( SE017,  1600 );
SE023 = playSeVer2( spep_2 + 84, 1435, "",spep_2 + 254, 0, 84, -1);
setSeVolumeByWorkId( spep_2 + 84, SE023, 282 );
SE024 = playSeVer2( spep_2 + 84, 1175, "",spep_2 + 288, 0, 108, -1);
setSeVolumeByWorkId( spep_2 + 84, SE024, 80 );
SE025 = playSeVer2( spep_2 + 84, 1413, "",spep_2 + 206, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 84, SE025, 161 );

--顔アップ
SE026 = playSeVer2( spep_2 + 180, 8, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 182, 1190, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_2 + 182, SE027, 84 );

--手を前に出す
SE028 = playSeVer2( spep_2 + 238, 1004, "", 0, 0, 0, -1);

--ハート踊る
SE029 = playSeVer2( spep_2 + 282, 1112, "",spep_2 + 316, 0, 16, 0.6);
setSeVolumeByWorkId( spep_2 + 282, SE029, 120 );
setPitch( spep_2 + 282, SE029, 400 );
setTimeStretch( SE029, 1.27, 30, 4 );
SE030 = playSeVer2( spep_2 + 300, 1112, "",spep_2 + 332, 0, 16, 0.6);
SE031 = playSeVer2( spep_2 + 320, 1112, "", 0, 0, 0, 0.6);
setPitch( spep_2 + 320, SE031, 700 );
setTimeStretch( SE031, 1.47, 30, 4 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 350;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
-- stopSe( SP_dodge - 12, seInstance, 0 ); を必要に応じて入れる
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE025, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--ハート地面落ちる
SE032 = playSeVer2( spep_2 + 360, 1277, "",spep_2 + 402, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 360, SE032, 158 );
SE033 = playSeVer2( spep_2 + 368, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 368, SE033, 78 );
SE034 = playSeVer2( spep_2 + 372, 31, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 390, 1291, "", 0, 0, 0, -1);

--地面めり込む
SE036 = playSeVer2( spep_2 + 446, 1011, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 446, 1033, "", 0, 0, 0, -1);

--地響き
SE038 = playSeVer2( spep_2 + 478, 1226, "", 0, 0, 0, -1);

--風圧
SE039 = playSeVer2( spep_2 + 486, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 486, SE039, 85 );
SE040 = playSeVer2( spep_2 + 492, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 492, SE040, 63 );

--地面めり込む２
SE041 = playSeVer2( spep_2 + 582, 1159, "", 0, 0, 0, -1);

--地面めり込む３
SE042 = playSeVer2( spep_2 + 640, 1188, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_2 + 0 , 0, 0, 9, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 156 , 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 530 , 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** おわり ** --
dealDamage( spep_2 + 610 );
endPhase( spep_2 +  MAX_FRAME_2 - 2);  -- 718

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 集中線 ef_001 (278F)
------------------------------------------------------
MAX_FRAME_0 = 278;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_02 = entryEffect( spep_0 + 0, SP_002r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_02, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_02, 0 );
setEffAlphaKey( spep_0 + 0, SP_02, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_02, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 14;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 1 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 30 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 1 + OFFSET_X, 1, 286, -353 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 286.3, -353.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 286.3, -353.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 287.3, -355.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 287.3, -355.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 289.1, -359 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 289.1, -359 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 291.7, -364.1 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 295.1, -371 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 299.7, -380 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 305.5, -391.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 321.9, -423.7 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 374.8, -527.7 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 469.3, -713.5 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 608.8, -987.7 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 792.5, -1349.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 1012.7, -1782.2 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 1253.7, -2256.2 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 1496.1, -2732.8 , 0 );

setScaleKey( spep_0 + 1 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 6.9, 6.9 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 8.59, 8.59 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 10.44, 10.44 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 12.31, 12.31 );

setRotateKey( spep_0 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 30 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 1 + OFFSET_X, 1, 2, 0.3, 0.3, 0.3, 1.0 );
setBlendColor( spep_0 + 2 + OFFSET_X, 1, 2, 0.3, 0.3, 0.3, 1.0 );
setBlendColor( spep_0 + 3 + OFFSET_X, 1, 2, 0.3, 0.3, 0.3, 1.0 );
setBlendColor( spep_0 + 4 + OFFSET_X, 1, 2, 0.3, 0.3, 0.3, 1.0 );
setBlendColor( spep_0 + 5 + OFFSET_X, 1, 2, 0.3, 0.3, 0.3, 1.0 );
setBlendColor( spep_0 + 6 + OFFSET_X, 1, 2, 0.3, 0.3, 0.3, 1.0 );
setBlendColor( spep_0 + 7 + OFFSET_X, 1, 2, 0.3, 0.3, 0.3, 1.0 );
setBlendColor( spep_0 + 28 + OFFSET_X, 1, 2, 0.3, 0.3, 0.3, 1.0 );
setBlendColor( spep_0 + 30 + OFFSET_X, 1, 0, 0, 0, 0, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, 0.6);
SE004 = playSeVer2( spep_0 + 26, 20, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 26, 1042, "", 0, 0, 0, -1);

--ピンクオーラ溜まる
SE002 = playSeVer2( spep_0 + 108, 1214, "",spep_0 + 206, 18, 32, -1);
setSeVolumeByWorkId( spep_0 + 108, SE002, 130 );
setStartTimeMs( SE002,  1567 );

--ピンクオーラ溜まる
SE006 = playSeVer2( spep_0 + 102, 1407, "",spep_0 + 202, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 102, SE006, 150 );
setPitch( spep_0 + 102, SE006, -400 );
setTimeStretch( SE006, 0.73, 30, 4 );
SE007 = playSeVer2( spep_0 + 110, 1227, "",spep_0 + 202, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 110, SE007, 116 );
SE008 = playSeVer2( spep_0 + 110, 1240, "",spep_0 + 192, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 110, SE008, 146 );
SE009 = playSeVer2( spep_0 + 110, 1437, "",spep_0 + 252, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 110, SE009, 126 );

--変身
SE010 = playSeVer2( spep_0 + 150, 1115, "",spep_0 + 274, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 150, SE010, 111 );
SE011 = playSeVer2( spep_0 + 162, 1214, "",spep_0 + 266, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 162, SE011, 69 );
SE012 = playSeVer2( spep_0 + 162, 1184, "",spep_0 + 266, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 162, SE012, 68 );

--変身決め
SE013 = playSeVer2( spep_0 + 218, 1434, "",spep_0 + 294, 4, 14, -1);
setStartTimeMs( SE013,  200 );
SE014 = playSeVer2( spep_0 + 228, 1433, "",spep_0 + 294, 0, 12, -1);
SE015 = playSeVer2( spep_0 + 228, 1112, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE015, 83 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 168 , 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + MAX_FRAME_0 - 6, 6, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 278

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- ハート攻撃 ef_003 (718F)
------------------------------------------------------
MAX_FRAME_2 = 718;

-- ** エフェクト等 ** --
SP_03 = entryEffect( spep_2 + 0, SP_003r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 258 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 376 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 258 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 294 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 258 + OFFSET_X, 1, 0, -339.8 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 0, -339.8 , 0 );

setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_2 + 258 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--飛び上がる
SE018 = playSeVer2( spep_2 + 0, 1227, "",spep_2 + 170, 0, 70, -1);
setSeVolumeByWorkId( spep_2 + 0, SE018, 70 );
SE019 = playSeVer2( spep_2 + 0, 1267, "",spep_2 + 146, 0, 52, -1);
setSeVolumeByWorkId( spep_2 + 0, SE019, 71 );
SE020 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE020, 81 );

--黒い気を集める
SE021 = playSeVer2( spep_2 + 50, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE021, 65 );
SE022 = playSeVer2( spep_2 + 50, 1405, "", 0, 0, 0, -1);

--ハート上昇
SE017 = playSeVer2( spep_2 + 82, 1400, "",spep_2 + 196, 16, 22, 0.5);
setStartTimeMs( SE017,  1600 );
SE023 = playSeVer2( spep_2 + 84, 1435, "",spep_2 + 254, 0, 84, -1);
setSeVolumeByWorkId( spep_2 + 84, SE023, 282 );
SE024 = playSeVer2( spep_2 + 84, 1175, "",spep_2 + 288, 0, 108, -1);
setSeVolumeByWorkId( spep_2 + 84, SE024, 80 );
SE025 = playSeVer2( spep_2 + 84, 1413, "",spep_2 + 206, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 84, SE025, 161 );

--顔アップ
SE026 = playSeVer2( spep_2 + 180, 8, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 182, 1190, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_2 + 182, SE027, 84 );

--手を前に出す
SE028 = playSeVer2( spep_2 + 238, 1004, "", 0, 0, 0, -1);

--ハート踊る
SE029 = playSeVer2( spep_2 + 282, 1112, "",spep_2 + 316, 0, 16, 0.6);
setSeVolumeByWorkId( spep_2 + 282, SE029, 120 );
setPitch( spep_2 + 282, SE029, 400 );
setTimeStretch( SE029, 1.27, 30, 4 );
SE030 = playSeVer2( spep_2 + 300, 1112, "",spep_2 + 332, 0, 16, 0.6);
SE031 = playSeVer2( spep_2 + 320, 1112, "", 0, 0, 0, 0.6);
setPitch( spep_2 + 320, SE031, 700 );
setTimeStretch( SE031, 1.47, 30, 4 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 350;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
-- stopSe( SP_dodge - 12, seInstance, 0 ); を必要に応じて入れる
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE025, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--ハート地面落ちる
SE032 = playSeVer2( spep_2 + 360, 1277, "",spep_2 + 402, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 360, SE032, 158 );
SE033 = playSeVer2( spep_2 + 368, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 368, SE033, 78 );
SE034 = playSeVer2( spep_2 + 372, 31, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 390, 1291, "", 0, 0, 0, -1);

--地面めり込む
SE036 = playSeVer2( spep_2 + 446, 1011, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 446, 1033, "", 0, 0, 0, -1);

--地響き
SE038 = playSeVer2( spep_2 + 478, 1226, "", 0, 0, 0, -1);

--風圧
SE039 = playSeVer2( spep_2 + 486, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 486, SE039, 85 );
SE040 = playSeVer2( spep_2 + 492, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 492, SE040, 63 );

--地面めり込む２
SE041 = playSeVer2( spep_2 + 582, 1159, "", 0, 0, 0, -1);

--地面めり込む３
SE042 = playSeVer2( spep_2 + 640, 1188, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_2 + 0 , 0, 0, 9, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 156 , 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 530 , 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** おわり ** --
dealDamage( spep_2 + 610 );
endPhase( spep_2 +  MAX_FRAME_2 - 2);  -- 718

end
