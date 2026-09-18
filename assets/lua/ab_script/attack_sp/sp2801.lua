--1030310:UR_クリリン(少年期)_必殺技：かめはめ波
--sp_effect_a1_00468
--sp2801

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163473; --空中の敵と対峙するクリリン～敵の前に現れるクリリン→カードカットイン ef_001
SP_01b = 163474; --空中の敵と対峙するクリリン～敵の前に現れるクリリン→カードカットイン ef_001b
SP_02  = 163477; --かめはめ波発射～フィニッシュ ef_002
SP_02b = 163478; --かめはめ波発射～フィニッシュ ef_002b

--エフェクト(敵)
SP_01r  = 163475; --空中の敵と対峙するクリリン～敵の前に現れるクリリン→カードカットイン_敵側 ef_001r
SP_01br = 163476; --空中の敵と対峙するクリリン～敵の前に現れるクリリン→カードカットイン_敵側 ef_001br
SP_02r  = 163479; --かめはめ波発射～フィニッシュ_敵側 ef_002r
SP_02br = 163480; --かめはめ波発射～フィニッシュ_敵側 ef_002br

--エフェクト(共通)
SP_03  = 163481; --フィニッシュ ef_003
SP_03b = 163482; --フィニッシュ ef_003b

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
]]--

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_1 = spep_0 + 288;
        spep_2 = spep_1 + 94;

        timing_skip = spep_2 + 122;
        --timing_skip = 504;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        -- ** 音 ** --
        --かめはめ波飛んでいく
        SE016 = playSeVer2( spep_2 + 122 + 3, 1023, "", 0, 0, 0, -1);
        SE017 = playSeVer2( spep_2 + 122 + 3, 1284, "",spep_2 + 328, 0, 84, -1);
        SE018 = playSeVer2( spep_2 + 122 + 3, 1213, "",spep_2 + 326, 0, 84, -1);
        setSeVolumeByWorkId( spep_2 + 122 + 3, SE018, 65 );

    end


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 空中の敵と対峙するクリリン～敵の前に現れるクリリン→カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 288;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 空中の敵と対峙するクリリン～敵の前に現れるクリリン→カードカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 空中の敵と対峙するクリリン～敵の前に現れるクリリン→カードカットイン(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 84;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -14, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -14, 515.5 , 0 );
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
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 94 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 123.3, 340.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 123.3, 340.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 123.3, 340.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 123.3, 340.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 123.3, 340.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 123.2, 340.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 123.2, 340.8 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 123.2, 341 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 123.2, 341 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 123.1, 341.3 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 123.1, 341.3 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 123, 341.7 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 123, 341.7 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 122.9, 342.1 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 122.9, 342.1 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 122.8, 342.6 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 122.8, 342.6 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 122.6, 343.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 122.6, 343.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 122.5, 343.8 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 122.5, 343.8 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 122.3, 344.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 122.3, 344.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 122.1, 345.2 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 122.1, 345.2 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 121.9, 346.1 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 121.9, 346.1 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 121.7, 347 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 121.7, 347 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 121.4, 348 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 121.4, 348 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 121.2, 349 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 121.2, 349 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 120.9, 350.2 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 120.9, 350.2 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 120.6, 351.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 120.6, 351.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 120.3, 352.7 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 120.3, 352.7 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 120, 354.1 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 120, 354.1 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 119.6, 355.6 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 119.6, 355.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 119.3, 357.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 119.3, 357.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 118.9, 358.8 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 118.9, 358.8 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 118.5, 360.5 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 118.5, 360.5 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 118.1, 362.3 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 118.1, 362.3 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 117.7, 364.2 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 117.7, 364.2 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 117.2, 366.3 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 117.2, 366.3 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 116.8, 368.4 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 116.8, 368.4 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 116.3, 370.6 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 116.3, 370.6 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 115.8, 373 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 115.8, 373 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 115.3, 375.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 115.3, 375.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 114.8, 378 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 114.8, 378 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 114.2, 380.6 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 114.2, 380.6 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 113.7, 383.4 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 113.7, 383.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 113.1, 386.3 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 113.1, 386.3 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 112.5, 389.4 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 112.5, 389.4 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 111.9, 392.5 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 111.9, 392.5 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 111.3, 395.8 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 111.3, 395.8 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 110.6, 399.3 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 110.6, 399.3 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 110, 402.8 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 110, 402.8 , 0 );

setScaleKey( spep_0 + 0, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 0.62, 0.62 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_0 + 244 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 290 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 244 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 244 + OFFSET_X, 1, 167.4, -85.3 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 167.4, -85.3 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 170.3, -108.8 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 170.3, -108.8 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 173.1, -132.5 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 173.1, -132.5 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 175.7, -156.6 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 175.7, -156.6 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 178.3, -181 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 178.3, -181 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 180.7, -205.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 180.7, -205.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 183, -230.4 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 183, -230.4 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 185.1, -255.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 185.1, -255.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 187.1, -259.7 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 187.1, -259.7 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 189, -263.9 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 189, -263.9 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 190.8, -268 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 190.8, -268 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 192.4, -272.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 192.4, -272.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 193.9, -276 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 193.9, -276 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 195.3, -279.8 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 195.3, -279.8 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 196.5, -283.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 196.5, -283.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 197.6, -287.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 197.6, -287.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 198.6, -290.7 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 198.6, -290.7 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 199.4, -294.1 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 199.4, -294.1 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 200.1, -297.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 200.1, -297.3 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 200.7, -300.5 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 200.7, -300.5 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 201.2, -303.5 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 201.2, -303.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 201.5, -306.5 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 201.5, -306.5 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 201.7, -309.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 201.7, -309.3 , 0 );

setScaleKey( spep_0 + 244 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 5.03, 5.03 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 5.03, 5.03 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 5.06, 5.06 );

setRotateKey( spep_0 + 244 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 320, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );

--ズーム
SE002 = playSeVer2( spep_0 + 30, 1072, "", 0, 0, 0, -1);

--構える
SE004 = playSeVer2( spep_0 + 148, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE004, 78 );

--飛び上がる
SE005 = playSeVer2( spep_0 + 180, 1000, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 180, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE006, 79 );
SE007 = playSeVer2( spep_0 + 180, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE007, 79 );

--敵前に現れる
SE008 = playSeVer2( spep_0 + 244, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE008, 71 );
SE009 = playSeVer2( spep_0 + 244, 1245, "",spep_0 + 288, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 244, SE009, 49 );
SE010 = playSeVer2( spep_0 + 256, 1048, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE010, 151 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 288f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--発射前溜め
SE012 = playSeVer2( spep_1 + 88, 1157, "",spep_2 + 54, 0, 26, -1);
SE013 = playSeVer2( spep_1 + 88, 1037, "",spep_2 + 50, 0, 24, -1);


-------------------------------------------------
-- かめはめ波発射～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 252;

-- ** エフェクト等 ** --
entry_SP002_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波発射～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, entry_SP002_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP002_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, entry_SP002_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP002_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, entry_SP002_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP002_f, 0);
setEffAlphaKey( spep_2 + 0, entry_SP002_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP002_f, 255);

entry_SP002_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- かめはめ波発射～フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, entry_SP002_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP002_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, entry_SP002_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP002_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, entry_SP002_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP002_b, 0);
setEffAlphaKey( spep_2 + 0, entry_SP002_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP002_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 152 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 246 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 152 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 152 + OFFSET_X, 1, 549.8, 114 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 549.8, 114 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 377.1, 91.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 377.1, 91.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 234.3, 91.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 234.3, 91.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 147.4, 75.7 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 147.4, 75.7 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 83.9, 71.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 83.9, 71.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 47, 62.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 47, 62.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 39, 62.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 39, 62.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -17.9, 117 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -17.9, 117 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 67.6, -9.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 67.6, -9.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 64.3, 135.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 64.3, 135.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -33.6, -46.6 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -33.6, -46.6 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 34.1, 78.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 34.1, 78.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 67.6, 6.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 67.6, 6.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 46.5, 66.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 46.5, 66.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 34.5, 76.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 34.5, 76.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 65.0, 75.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 65.0, 75.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 56.9, 73.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 56.9, 73.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 61.8, 72.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 61.8, 72.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 64.4, 92.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 64.4, 92.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 79.1, 77.4 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 79.1, 77.4 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 80.9, 80.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 80.9, 80.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 73.3, 93.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 73.3, 93.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 94.7, 83.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 94.7, 83.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 97.8, 99.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 97.8, 99.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 87.2, 81 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 87.2, 81 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 105.5, 98.4 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 105.5, 98.4 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 97.1, 88.8 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 97.1, 88.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 120.6, 100.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 120.6, 100.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 98.4, 94.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 98.4, 94.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 114.3, 98.7 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 114.3, 98.7 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 113.3, 107.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 113.3, 107.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 117.4, 98.9 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 117.4, 98.9 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 117.1, 104.8 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 117.1, 104.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 117.4, 96.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 117.4, 96.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 132.7, 106.4 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 132.7, 106.4 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 114.6, 98.9 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 114.6, 98.9 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 132.8, 97.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 132.8, 97.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 131.5, 107.8 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 131.5, 107.8 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 120.4, 97.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 120.4, 97.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 128.5, 113.4 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 128.5, 113.4 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 126.1, 94.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 126.1, 94.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 134.4, 104.4 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 134.4, 104.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 119.5, 106.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 119.5, 106.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 132, 100.6 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 132, 100.6 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 130.7, 109.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 130.7, 109.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 120, 98.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 120, 98.5 , 0 );

setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.56, 1.56 );

setRotateKey( spep_2 + 152 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 38 );

setBlendColor( spep_2 + 150 + OFFSET_X, 1, 5, 0, 0, 0, 0 );
setBlendColor( spep_2 + 152 + OFFSET_X, 1, 5, 0.28, 0.9, 1.0, 0.91 );
setBlendColor( spep_2 + 246 + OFFSET_X, 1, 5, 0, 0, 0, 0 );


-- ** 音 ** --
--かめはめ波発射
SE014 = playSeVer2( spep_2 + 20, 1022, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 24, 1146, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 96; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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
--かめはめ波飛んでいく
SE016 = playSeVer2( spep_2 + 114, 1023, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 114, 1284, "",spep_2 + 328, 0, 84, -1);
SE018 = playSeVer2( spep_2 + 114, 1213, "",spep_2 + 326, 0, 84, -1);
setSeVolumeByWorkId( spep_2 + 114, SE018, 65 );

--敵ヒット
SE019 = playSeVer2( spep_2 + 148, 1159, "",spep_2 + 264, 0, 38, -1);

--爆発
SE020 = playSeVer2( spep_2 + 240, 1023, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2; -- 252f

--------------------------------------
-- フィニッシュ
-------------------------------------------------
MAX_FRAME_3 = 120;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); -- フィニッシュ(ef_003)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_f, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_f, 0);
setEffAlphaKey( spep_3 + 0, finish_f, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_f, 255);

finish_b = entryEffect( spep_3 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- フィニッシュ(ef_003b)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_b, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_b, 0);
setEffAlphaKey( spep_3 + 0, finish_b, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 124 + OFFSET_X, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -5.1, -23 , 0 );
setMoveKey( spep_3 + 2 + OFFSET_X, 1, -2.9, -25.7 , 0 );
setMoveKey( spep_3 + 3 + OFFSET_X, 1, -2.9, -25.7 , 0 );
setMoveKey( spep_3 + 4 + OFFSET_X, 1, -0.3, -29.1 , 0 );
setMoveKey( spep_3 + 5 + OFFSET_X, 1, -0.3, -29.1 , 0 );
setMoveKey( spep_3 + 6 + OFFSET_X, 1, 2.8, -33 , 0 );
setMoveKey( spep_3 + 7 + OFFSET_X, 1, 2.8, -33 , 0 );
setMoveKey( spep_3 + 8 + OFFSET_X, 1, 6.4, -37.5 , 0 );
setMoveKey( spep_3 + 9 + OFFSET_X, 1, 6.4, -37.5 , 0 );
setMoveKey( spep_3 + 10 + OFFSET_X, 1, 10.4, -42.6 , 0 );
setMoveKey( spep_3 + 11 + OFFSET_X, 1, 10.4, -42.6 , 0 );
setMoveKey( spep_3 + 12 + OFFSET_X, 1, 14.7, -48.2 , 0 );
setMoveKey( spep_3 + 13 + OFFSET_X, 1, 14.7, -48.2 , 0 );
setMoveKey( spep_3 + 14 + OFFSET_X, 1, 19.7, -54.2 , 0 );
setMoveKey( spep_3 + 15 + OFFSET_X, 1, 19.7, -54.2 , 0 );
setMoveKey( spep_3 + 16 + OFFSET_X, 1, 24.9, -61.1 , 0 );
setMoveKey( spep_3 + 17 + OFFSET_X, 1, 24.9, -61.1 , 0 );
setMoveKey( spep_3 + 18 + OFFSET_X, 1, 30.7, -68.1 , 0 );
setMoveKey( spep_3 + 124 + OFFSET_X, 1, 30.7, -68.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 2 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 3 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 4 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 5 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 6 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 7 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 8 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 9 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 10 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 11 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 12 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 13 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 14 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 15 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 16 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 17 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 18 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 124 + OFFSET_X, 1, 1.59, 1.59 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 2 + OFFSET_X, 1, 66.8 );
setRotateKey( spep_3 + 3 + OFFSET_X, 1, 66.8 );
setRotateKey( spep_3 + 4 + OFFSET_X, 1, 146.9 );
setRotateKey( spep_3 + 5 + OFFSET_X, 1, 146.9 );
setRotateKey( spep_3 + 6 + OFFSET_X, 1, 240.3 );
setRotateKey( spep_3 + 7 + OFFSET_X, 1, 240.3 );
setRotateKey( spep_3 + 8 + OFFSET_X, 1, 347.1 );
setRotateKey( spep_3 + 9 + OFFSET_X, 1, 347.1 );
setRotateKey( spep_3 + 10 + OFFSET_X, 1, 467.3 );
setRotateKey( spep_3 + 11 + OFFSET_X, 1, 467.3 );
setRotateKey( spep_3 + 12 + OFFSET_X, 1, 600.8 );
setRotateKey( spep_3 + 13 + OFFSET_X, 1, 600.8 );
setRotateKey( spep_3 + 14 + OFFSET_X, 1, 747.7 );
setRotateKey( spep_3 + 15 + OFFSET_X, 1, 747.7 );
setRotateKey( spep_3 + 16 + OFFSET_X, 1, 907.9 );
setRotateKey( spep_3 + 17 + OFFSET_X, 1, 907.9 );
setRotateKey( spep_3 + 18 + OFFSET_X, 1, 1081.5 );
setRotateKey( spep_3 + 124 + OFFSET_X, 1, 1081.5 );


-- ** 音 ** --
--画面割れる
SE021 = playSeVer2( spep_3 + 16, 1054, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_3 + 16, 1025, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_3 + 0); -- ダメージ表示フレーム
endPhase( spep_3 + MAX_FRAME_3); -- 120f


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 空中の敵と対峙するクリリン～敵の前に現れるクリリン→カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 288;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 空中の敵と対峙するクリリン～敵の前に現れるクリリン→カードカットイン(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 空中の敵と対峙するクリリン～敵の前に現れるクリリン→カードカットイン(ef_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 84;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -14, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -14, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 94 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 0 );

setMoveKey( spep_0 + 0, 1, -123.3, 340.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -123.3, 340.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -123.3, 340.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -123.3, 340.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -123.3, 340.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -123.2, 340.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -123.2, 340.8 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -123.2, 341 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -123.2, 341 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -123.1, 341.3 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -123.1, 341.3 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -123, 341.7 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -123, 341.7 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -122.9, 342.1 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -122.9, 342.1 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -122.8, 342.6 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -122.8, 342.6 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -122.6, 343.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -122.6, 343.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -122.5, 343.8 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -122.5, 343.8 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -122.3, 344.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -122.3, 344.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -122.1, 345.2 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -122.1, 345.2 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -121.9, 346.1 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -121.9, 346.1 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -121.7, 347 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -121.7, 347 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -121.4, 348 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -121.4, 348 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -121.2, 349 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -121.2, 349 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -120.9, 350.2 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -120.9, 350.2 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -120.6, 351.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -120.6, 351.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -120.3, 352.7 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -120.3, 352.7 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -120, 354.1 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -120, 354.1 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -119.6, 355.6 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -119.6, 355.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -119.3, 357.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -119.3, 357.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -118.9, 358.8 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -118.9, 358.8 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -118.5, 360.5 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -118.5, 360.5 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -118.1, 362.3 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -118.1, 362.3 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -117.7, 364.2 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -117.7, 364.2 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -117.2, 366.3 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -117.2, 366.3 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -116.8, 368.4 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -116.8, 368.4 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -116.3, 370.6 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -116.3, 370.6 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -115.8, 373 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -115.8, 373 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -115.3, 375.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -115.3, 375.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -114.8, 378 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -114.8, 378 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -114.2, 380.6 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -114.2, 380.6 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -113.7, 383.4 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -113.7, 383.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -113.1, 386.3 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -113.1, 386.3 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -112.5, 389.4 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -112.5, 389.4 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -111.9, 392.5 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -111.9, 392.5 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -111.3, 395.8 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -111.3, 395.8 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -110.6, 399.3 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -110.6, 399.3 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -110, 402.8 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -110, 402.8 , 0 );

setScaleKey( spep_0 + 0, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 0.62, 0.62 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_0 + 244 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 290 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 244 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 244 + OFFSET_X, 1, 167.4, -85.3 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 167.4, -85.3 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 170.3, -108.8 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 170.3, -108.8 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 173.1, -132.5 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 173.1, -132.5 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 175.7, -156.6 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 175.7, -156.6 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 178.3, -181 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 178.3, -181 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 180.7, -205.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 180.7, -205.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 183, -230.4 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 183, -230.4 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 185.1, -255.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 185.1, -255.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 187.1, -259.7 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 187.1, -259.7 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 189, -263.9 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 189, -263.9 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 190.8, -268 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 190.8, -268 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 192.4, -272.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 192.4, -272.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 193.9, -276 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 193.9, -276 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 195.3, -279.8 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 195.3, -279.8 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 196.5, -283.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 196.5, -283.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 197.6, -287.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 197.6, -287.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 198.6, -290.7 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 198.6, -290.7 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 199.4, -294.1 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 199.4, -294.1 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 200.1, -297.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 200.1, -297.3 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 200.7, -300.5 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 200.7, -300.5 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 201.2, -303.5 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 201.2, -303.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 201.5, -306.5 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 201.5, -306.5 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 201.7, -309.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 201.7, -309.3 , 0 );

setScaleKey( spep_0 + 244 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 5.03, 5.03 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 5.03, 5.03 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 5.06, 5.06 );

setRotateKey( spep_0 + 244 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 320, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );

--ズーム
SE002 = playSeVer2( spep_0 + 30, 1072, "", 0, 0, 0, -1);

--構える
SE004 = playSeVer2( spep_0 + 148, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE004, 78 );

--飛び上がる
SE005 = playSeVer2( spep_0 + 180, 1000, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 180, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE006, 79 );
SE007 = playSeVer2( spep_0 + 180, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE007, 79 );

--敵前に現れる
SE008 = playSeVer2( spep_0 + 244, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE008, 71 );
SE009 = playSeVer2( spep_0 + 244, 1245, "",spep_0 + 288, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 244, SE009, 49 );
SE010 = playSeVer2( spep_0 + 256, 1048, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE010, 151 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 288f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--発射前溜め
SE012 = playSeVer2( spep_1 + 88, 1157, "",spep_2 + 54, 0, 26, -1);
SE013 = playSeVer2( spep_1 + 88, 1037, "",spep_2 + 50, 0, 24, -1);


-------------------------------------------------
-- かめはめ波発射～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 252;

-- ** エフェクト等 ** --
entry_SP002_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- かめはめ波発射～フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, entry_SP002_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP002_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, entry_SP002_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP002_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, entry_SP002_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP002_f, 0);
setEffAlphaKey( spep_2 + 0, entry_SP002_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP002_f, 255);

entry_SP002_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- かめはめ波発射～フィニッシュ(ef_002br)
setEffMoveKey( spep_2 + 0, entry_SP002_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP002_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, entry_SP002_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP002_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, entry_SP002_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP002_b, 0);
setEffAlphaKey( spep_2 + 0, entry_SP002_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP002_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 152 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 246 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 152 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 152 + OFFSET_X, 1, 549.8, 114 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 549.8, 114 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 377.1, 91.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 377.1, 91.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 234.3, 91.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 234.3, 91.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 147.4, 75.7 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 147.4, 75.7 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 83.9, 71.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 83.9, 71.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 47, 62.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 47, 62.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 39, 62.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 39, 62.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -17.9, 117 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -17.9, 117 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 67.6, -9.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 67.6, -9.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 64.3, 135.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 64.3, 135.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -33.6, -46.6 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -33.6, -46.6 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 34.1, 78.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 34.1, 78.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 67.6, 6.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 67.6, 6.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 46.5, 66.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 46.5, 66.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 34.5, 76.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 34.5, 76.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 65.0, 75.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 65.0, 75.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 56.9, 73.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 56.9, 73.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 61.8, 72.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 61.8, 72.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 64.4, 92.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 64.4, 92.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 79.1, 77.4 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 79.1, 77.4 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 80.9, 80.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 80.9, 80.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 73.3, 93.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 73.3, 93.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 94.7, 83.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 94.7, 83.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 97.8, 99.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 97.8, 99.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 87.2, 81 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 87.2, 81 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 105.5, 98.4 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 105.5, 98.4 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 97.1, 88.8 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 97.1, 88.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 120.6, 100.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 120.6, 100.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 98.4, 94.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 98.4, 94.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 114.3, 98.7 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 114.3, 98.7 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 113.3, 107.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 113.3, 107.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 117.4, 98.9 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 117.4, 98.9 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 117.1, 104.8 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 117.1, 104.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 117.4, 96.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 117.4, 96.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 132.7, 106.4 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 132.7, 106.4 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 114.6, 98.9 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 114.6, 98.9 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 132.8, 97.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 132.8, 97.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 131.5, 107.8 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 131.5, 107.8 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 120.4, 97.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 120.4, 97.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 128.5, 113.4 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 128.5, 113.4 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 126.1, 94.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 126.1, 94.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 134.4, 104.4 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 134.4, 104.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 119.5, 106.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 119.5, 106.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 132, 100.6 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 132, 100.6 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 130.7, 109.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 130.7, 109.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 120, 98.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 120, 98.5 , 0 );

setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.56, 1.56 );

setRotateKey( spep_2 + 152 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 38 );

setBlendColor( spep_2 + 150 + OFFSET_X, 1, 5, 0, 0, 0, 0 );
setBlendColor( spep_2 + 152 + OFFSET_X, 1, 5, 0.28, 0.9, 1.0, 0.91 );
setBlendColor( spep_2 + 246 + OFFSET_X, 1, 5, 0, 0, 0, 0 );


-- ** 音 ** --
--かめはめ波発射
SE014 = playSeVer2( spep_2 + 20, 1022, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 24, 1146, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 96; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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
--かめはめ波飛んでいく
SE016 = playSeVer2( spep_2 + 114, 1023, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 114, 1284, "",spep_2 + 328, 0, 84, -1);
SE018 = playSeVer2( spep_2 + 114, 1213, "",spep_2 + 326, 0, 84, -1);
setSeVolumeByWorkId( spep_2 + 114, SE018, 65 );

--敵ヒット
SE019 = playSeVer2( spep_2 + 148, 1159, "",spep_2 + 264, 0, 38, -1);

--爆発
SE020 = playSeVer2( spep_2 + 240, 1023, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2; -- 252f

--------------------------------------
-- フィニッシュ
-------------------------------------------------
MAX_FRAME_3 = 120;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); -- フィニッシュ(ef_003r)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_f, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_f, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_f, 0);
setEffAlphaKey( spep_3 + 0, finish_f, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_f, 255);

finish_b = entryEffect( spep_3 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- フィニッシュ(ef_003br)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_b, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_b, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_b, 0);
setEffAlphaKey( spep_3 + 0, finish_b, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 124 + OFFSET_X, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -5.1, -23 , 0 );
setMoveKey( spep_3 + 2 + OFFSET_X, 1, -2.9, -25.7 , 0 );
setMoveKey( spep_3 + 3 + OFFSET_X, 1, -2.9, -25.7 , 0 );
setMoveKey( spep_3 + 4 + OFFSET_X, 1, -0.3, -29.1 , 0 );
setMoveKey( spep_3 + 5 + OFFSET_X, 1, -0.3, -29.1 , 0 );
setMoveKey( spep_3 + 6 + OFFSET_X, 1, 2.8, -33 , 0 );
setMoveKey( spep_3 + 7 + OFFSET_X, 1, 2.8, -33 , 0 );
setMoveKey( spep_3 + 8 + OFFSET_X, 1, 6.4, -37.5 , 0 );
setMoveKey( spep_3 + 9 + OFFSET_X, 1, 6.4, -37.5 , 0 );
setMoveKey( spep_3 + 10 + OFFSET_X, 1, 10.4, -42.6 , 0 );
setMoveKey( spep_3 + 11 + OFFSET_X, 1, 10.4, -42.6 , 0 );
setMoveKey( spep_3 + 12 + OFFSET_X, 1, 14.7, -48.2 , 0 );
setMoveKey( spep_3 + 13 + OFFSET_X, 1, 14.7, -48.2 , 0 );
setMoveKey( spep_3 + 14 + OFFSET_X, 1, 19.7, -54.2 , 0 );
setMoveKey( spep_3 + 15 + OFFSET_X, 1, 19.7, -54.2 , 0 );
setMoveKey( spep_3 + 16 + OFFSET_X, 1, 24.9, -61.1 , 0 );
setMoveKey( spep_3 + 17 + OFFSET_X, 1, 24.9, -61.1 , 0 );
setMoveKey( spep_3 + 18 + OFFSET_X, 1, 30.7, -68.1 , 0 );
setMoveKey( spep_3 + 124 + OFFSET_X, 1, 30.7, -68.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 2 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 3 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 4 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 5 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 6 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 7 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 8 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 9 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 10 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 11 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 12 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 13 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 14 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 15 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 16 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 17 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 18 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 124 + OFFSET_X, 1, 1.59, 1.59 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 2 + OFFSET_X, 1, 66.8 );
setRotateKey( spep_3 + 3 + OFFSET_X, 1, 66.8 );
setRotateKey( spep_3 + 4 + OFFSET_X, 1, 146.9 );
setRotateKey( spep_3 + 5 + OFFSET_X, 1, 146.9 );
setRotateKey( spep_3 + 6 + OFFSET_X, 1, 240.3 );
setRotateKey( spep_3 + 7 + OFFSET_X, 1, 240.3 );
setRotateKey( spep_3 + 8 + OFFSET_X, 1, 347.1 );
setRotateKey( spep_3 + 9 + OFFSET_X, 1, 347.1 );
setRotateKey( spep_3 + 10 + OFFSET_X, 1, 467.3 );
setRotateKey( spep_3 + 11 + OFFSET_X, 1, 467.3 );
setRotateKey( spep_3 + 12 + OFFSET_X, 1, 600.8 );
setRotateKey( spep_3 + 13 + OFFSET_X, 1, 600.8 );
setRotateKey( spep_3 + 14 + OFFSET_X, 1, 747.7 );
setRotateKey( spep_3 + 15 + OFFSET_X, 1, 747.7 );
setRotateKey( spep_3 + 16 + OFFSET_X, 1, 907.9 );
setRotateKey( spep_3 + 17 + OFFSET_X, 1, 907.9 );
setRotateKey( spep_3 + 18 + OFFSET_X, 1, 1081.5 );
setRotateKey( spep_3 + 124 + OFFSET_X, 1, 1081.5 );


-- ** 音 ** --
--画面割れる
SE021 = playSeVer2( spep_3 + 16, 1054, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_3 + 16, 1025, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_3 + 0); -- ダメージ表示フレーム
endPhase( spep_3 + MAX_FRAME_3); -- 120f


end