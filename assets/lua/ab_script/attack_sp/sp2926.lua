--1032120:LR_超サイヤ人孫悟飯(未来)/超サイヤ人トランクス(少年期)(未来)_必殺技：魔閃光
--sp_effect_a1_00511
--sp2926

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164234;  -- 冒頭〜セリフカットイン ef_001b
SP_01b = 164217;  -- 冒頭〜セリフカットイン ef_001b
SP_02 = 164219;  -- 気だめ〜魔閃光〜爆発 ef_002
SP_02b = 164220;  -- 気だめ〜魔閃光〜爆発 ef_002b

--エフェクト(敵)
SP_01r = 164235;  -- 冒頭〜セリフカットイン ef_001r
SP_01br = 164218;  -- 冒頭〜セリフカットイン ef_001br
SP_02r = 164221;  -- 気だめ〜魔閃光〜爆発 ef_002r
SP_02br = 164222;  -- 気だめ〜魔閃光〜爆発 ef_002br


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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
ENABLE_AUTO_TIME_STRETCH(0.76);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 200;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 300- 1);  -- スキップ先フレーム指定
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名

    else end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 冒頭〜セリフカットイン
-------------------------------------------------
MAX_FRAME_0 = 200;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 冒頭〜セリフカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 冒頭〜セリフカットイン(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 110;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
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
]]
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 80 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 256.3, -391.3 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 254.7, -391.3 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 254.7, -391.3 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 253.2, -391.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 253.2, -391.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 251.6, -391.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 251.6, -391.4 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 250.1, -391.4 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 250.1, -391.4 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 248.5, -391.4 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 248.5, -391.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 247, -391.5 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 247, -391.5 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 245.4, -391.5 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 245.4, -391.5 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 243.9, -391.5 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 243.9, -391.5 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 242.3, -391.5 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 242.3, -391.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 240.8, -391.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 240.8, -391.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 239.2, -391.6 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 239.2, -391.6 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 237.7, -391.6 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 237.7, -391.6 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 236.1, -391.6 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 236.1, -391.6 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 234.6, -391.7 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 234.6, -391.7 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 233, -391.7 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 233, -391.7 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 231.5, -391.7 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 231.5, -391.7 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 229.9, -391.7 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 229.9, -391.7 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 228.4, -391.8 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 228.4, -391.8 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 226.8, -391.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 226.8, -391.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 225.3, -391.8 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 225.3, -391.8 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 223.7, -391.9 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 223.7, -391.9 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 222.2, -391.9 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 222.2, -391.9 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 220.6, -391.9 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 220.6, -391.9 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 219.1, -391.9 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 219.1, -391.9 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 217.5, -392 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 217.5, -392 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 216, -392 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 216, -392 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 214.4, -392 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 214.4, -392 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 212.9, -392 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 212.9, -392 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 211.3, -392.1 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 211.3, -392.1 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 209.8, -392.1 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 209.8, -392.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 208.2, -392.1 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 208.2, -392.1 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 206.7, -392.1 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 206.7, -392.1 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 205.1, -392.2 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 205.1, -392.2 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 203.6, -392.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 203.6, -392.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 202, -392.2 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 202, -392.2 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 200.5, -392.2 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 200.5, -392.2 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 198.9, -392.3 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 198.9, -392.3 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 197.4, -392.3 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 197.4, -392.3 , 0 );

setScaleKey( spep_0 + 0, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 3.7, 3.7 );

setScaleKey( spep_0 + 0, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 3.7, 3.7 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 202, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--画面遷移
SE002 = playSeVer2( spep_0 + 68, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE002, 73 );

--風がふく
SE003 = playSeVer2( spep_0 + 68, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE003, 83 );

--振りかぶる
SE005 = playSeVer2( spep_0 + 116, 1116, "",spep_0 + 162, 0, 24, -1);

--気弾溜め
SE006 = playSeVer2( spep_0 + 152, 1296, "",spep_0 + 208, 0, 30, -1);
SE007 = playSeVer2( spep_0 + 152, 1191, "",spep_0 + 208, 0, 10, -1);
SE008 = playSeVer2( spep_0 + 152, 1443, "",spep_0 + 204, 0, 8, -1);
SE009 = playSeVer2( spep_0 + 162, 1507, "",spep_0 + 208, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --200F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--発射前気弾溜め
SE011 = playSeVer2( spep_1 + 88, 1296, "",spep_1 + 268, 8, 18, -1);
setStartTimeMs( SE011, 333 );
SE012 = playSeVer2( spep_1 + 92, 1184, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 92, 1396, "",spep_1 + 274, 0, 28, -1);
SE014 = playSeVer2( spep_1 + 92, 1243, "",spep_1 + 258, 0, 12, -1);
SE015 = playSeVer2( spep_1 + 92, 1443, "", 0, 0, 0, -1);

-------------------------------------------------
-- 気だめ〜魔閃光〜爆発
-------------------------------------------------
MAX_FRAME_2 = 484;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気だめ〜魔閃光〜爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気だめ〜魔閃光〜爆発(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 222 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 306 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 222 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 232 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 222 + OFFSET_X, 1, 31.9, -70 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 31.9, -70 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 178.5, -231.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 178.5, -231.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 10.5, 20.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 10.5, 20.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 138.5, -175.2 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 138.5, -175.2 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 26.5, -3.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 26.5, -3.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 90.5, -87.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 90.5, -87.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 62.5, -11.1 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 62.5, -11.1 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 50.5, -79.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 50.5, -79.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 82.5, -7.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 82.5, -7.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 62.5, -71.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 62.5, -71.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 90.5, -11.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 90.5, -11.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 38.5, -35.2 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 38.5, -35.2 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 50.5, -19.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 50.5, -19.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 62.5, -47.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 62.5, -47.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 38.5, -27.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 38.5, -27.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 10.5, -51.1 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 10.5, -51.1 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 22.5, -35.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 22.5, -35.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 34.5, -59.1 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 34.5, -59.1 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 26.5, -47.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 26.5, -47.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 34.5, -71.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 34.5, -71.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 50.5, -55.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 50.5, -55.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 46.5, -75.1 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 46.5, -75.1 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 54.5, -59.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 54.5, -59.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 50.5, -79.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 50.5, -79.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 58.5, -51.1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 58.5, -51.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 46.4, -55.1 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 46.4, -55.1 , 0 );

setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 2.05, 2.05 );

setRotateKey( spep_2 + 222 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 49.1 );

setBlendColor( spep_2 + 234 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_2 + 236 + OFFSET_X, 1, 3, 0, 0, 0, 0.75 );
setBlendColor( spep_2 + 306 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--気弾発射
SE016 = playSeVer2( spep_2 + 148, 1201, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 148, 1133, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 148, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE018, 60 );
SE019 = playSeVer2( spep_2 + 148, 1284, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 148, 1213, "",spep_2 + 350, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 148, SE020, 58 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 200; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --

--気弾飛んでいく
SE021 = playSeVer2( spep_2 + 196, 1343, "",spep_2 + 350, 0, 22, -1);
SE022 = playSeVer2( spep_2 + 196, 1304, "", 0, 0, 0, -1);

--敵ヒット
SE023 = playSeVer2( spep_2 + 230, 1126, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 230, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 230, SE024, 158 );

--爆発
SE025 = playSeVer2( spep_2 + 322, 1067, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 322, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 330); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 484F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 冒頭〜セリフカットイン
-------------------------------------------------
MAX_FRAME_0 = 200;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 冒頭〜セリフカットイン(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 冒頭〜セリフカットイン(ef_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 110;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
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
]]
--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 80 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 256.3, -391.3 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 254.7, -391.3 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 254.7, -391.3 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 253.2, -391.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 253.2, -391.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 251.6, -391.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 251.6, -391.4 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 250.1, -391.4 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 250.1, -391.4 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 248.5, -391.4 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 248.5, -391.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 247, -391.5 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 247, -391.5 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 245.4, -391.5 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 245.4, -391.5 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 243.9, -391.5 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 243.9, -391.5 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 242.3, -391.5 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 242.3, -391.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 240.8, -391.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 240.8, -391.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 239.2, -391.6 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 239.2, -391.6 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 237.7, -391.6 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 237.7, -391.6 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 236.1, -391.6 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 236.1, -391.6 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 234.6, -391.7 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 234.6, -391.7 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 233, -391.7 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 233, -391.7 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 231.5, -391.7 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 231.5, -391.7 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 229.9, -391.7 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 229.9, -391.7 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 228.4, -391.8 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 228.4, -391.8 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 226.8, -391.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 226.8, -391.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 225.3, -391.8 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 225.3, -391.8 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 223.7, -391.9 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 223.7, -391.9 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 222.2, -391.9 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 222.2, -391.9 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 220.6, -391.9 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 220.6, -391.9 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 219.1, -391.9 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 219.1, -391.9 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 217.5, -392 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 217.5, -392 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 216, -392 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 216, -392 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 214.4, -392 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 214.4, -392 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 212.9, -392 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 212.9, -392 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 211.3, -392.1 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 211.3, -392.1 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 209.8, -392.1 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 209.8, -392.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 208.2, -392.1 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 208.2, -392.1 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 206.7, -392.1 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 206.7, -392.1 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 205.1, -392.2 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 205.1, -392.2 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 203.6, -392.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 203.6, -392.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 202, -392.2 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 202, -392.2 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 200.5, -392.2 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 200.5, -392.2 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 198.9, -392.3 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 198.9, -392.3 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 197.4, -392.3 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 197.4, -392.3 , 0 );

setScaleKey( spep_0 + 0, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 3.7, 3.7 );

setScaleKey( spep_0 + 0, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 3.7, 3.7 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 202, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--画面遷移
SE002 = playSeVer2( spep_0 + 68, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE002, 73 );

--風がふく
SE003 = playSeVer2( spep_0 + 68, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE003, 83 );

--振りかぶる
SE005 = playSeVer2( spep_0 + 116, 1116, "",spep_0 + 162, 0, 24, -1);

--気弾溜め
SE006 = playSeVer2( spep_0 + 152, 1296, "",spep_0 + 208, 0, 30, -1);
SE007 = playSeVer2( spep_0 + 152, 1191, "",spep_0 + 208, 0, 10, -1);
SE008 = playSeVer2( spep_0 + 152, 1443, "",spep_0 + 204, 0, 8, -1);
SE009 = playSeVer2( spep_0 + 162, 1507, "",spep_0 + 208, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --200F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--発射前気弾溜め
SE011 = playSeVer2( spep_1 + 88, 1296, "",spep_1 + 268, 8, 18, -1);
setStartTimeMs( SE011, 333 );
SE012 = playSeVer2( spep_1 + 92, 1184, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 92, 1396, "",spep_1 + 274, 0, 28, -1);
SE014 = playSeVer2( spep_1 + 92, 1243, "",spep_1 + 258, 0, 12, -1);
SE015 = playSeVer2( spep_1 + 92, 1443, "", 0, 0, 0, -1);

-------------------------------------------------
-- 気だめ〜魔閃光〜爆発
-------------------------------------------------
MAX_FRAME_2 = 484;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 気だめ〜魔閃光〜爆発(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 気だめ〜魔閃光〜爆発(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 222 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 306 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 222 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 232 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 222 + OFFSET_X, 1, 31.9, -70 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 31.9, -70 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 178.5, -231.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 178.5, -231.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 10.5, 20.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 10.5, 20.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 138.5, -175.2 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 138.5, -175.2 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 26.5, -3.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 26.5, -3.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 90.5, -87.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 90.5, -87.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 62.5, -11.1 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 62.5, -11.1 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 50.5, -79.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 50.5, -79.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 82.5, -7.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 82.5, -7.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 62.5, -71.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 62.5, -71.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 90.5, -11.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 90.5, -11.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 38.5, -35.2 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 38.5, -35.2 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 50.5, -19.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 50.5, -19.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 62.5, -47.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 62.5, -47.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 38.5, -27.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 38.5, -27.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 10.5, -51.1 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 10.5, -51.1 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 22.5, -35.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 22.5, -35.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 34.5, -59.1 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 34.5, -59.1 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 26.5, -47.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 26.5, -47.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 34.5, -71.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 34.5, -71.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 50.5, -55.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 50.5, -55.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 46.5, -75.1 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 46.5, -75.1 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 54.5, -59.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 54.5, -59.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 50.5, -79.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 50.5, -79.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 58.5, -51.1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 58.5, -51.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 46.4, -55.1 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 46.4, -55.1 , 0 );

setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 2.05, 2.05 );

setRotateKey( spep_2 + 222 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 49.1 );

setBlendColor( spep_2 + 234 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_2 + 236 + OFFSET_X, 1, 3, 0, 0, 0, 0.75 );
setBlendColor( spep_2 + 306 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--気弾発射
SE016 = playSeVer2( spep_2 + 148, 1201, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 148, 1133, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 148, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE018, 60 );
SE019 = playSeVer2( spep_2 + 148, 1284, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 148, 1213, "",spep_2 + 350, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 148, SE020, 58 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 200; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --

--気弾飛んでいく
SE021 = playSeVer2( spep_2 + 196, 1343, "",spep_2 + 350, 0, 22, -1);
SE022 = playSeVer2( spep_2 + 196, 1304, "", 0, 0, 0, -1);

--敵ヒット
SE023 = playSeVer2( spep_2 + 230, 1126, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 230, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 230, SE024, 158 );

--爆発
SE025 = playSeVer2( spep_2 + 322, 1067, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 322, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 330); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 484F


end
