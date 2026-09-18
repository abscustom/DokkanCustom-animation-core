--1030430:LR_超サイヤ人孫悟空+超サイヤ人ベジータ(天使)_必殺技：かめはめ波
--sp_effect_a1_00464
--sp2803

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(敵味方共通)
SP_01  = 163445;  --ef_001 敵と対置～オーラ放出まで
SP_02  = 163447;  --ef_002 気弾発射～フィニッシュ


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
ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 216;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;


        skipFrame(0, spep_2 + 286 );  -- スキップ先フレーム指定
        setupMovie(spep_2 + 286 , SP_01, spep_2 + 286 -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --かめはめ波発射
        SE030 = playSeVer2( spep_2 + 286 + 3, 1213, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 286 + 3, SE030, 79 );
        setStartTimeMs( SE030,  700 );

        --かめはめ波飛んでいく
        SE032 = playSeVer2( spep_2 + 286 + 3, 1161, "",spep_2 + 474, 0, 62, -1);
        SE033 = playSeVer2( spep_2 + 286 + 3, 1211, "",spep_2 + 474, 0, 64, -1);
        SE034 = playSeVer2( spep_2 + 286 + 3, 1303, "",spep_2 + 360, 0, 44, -1);


    else 

        setupMovie(0, SP_01, 0, 1);  -- スキップしない時の通常再生時用のsetupMovie関数

    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 敵と対置～オーラ放出まで
-------------------------------------------------
MAX_FRAME_0 = 216;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵と対置～オーラ放出まで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 118;

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
setDisp( spep_0 + 74 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 160.7, -37.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 167.2, -39.2 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 167.2, -39.2 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 173.5, -40.8 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 173.5, -40.8 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 179.7, -42.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 179.7, -42.4 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 185.6, -44 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 185.6, -44 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 191.4, -45.5 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 191.4, -45.5 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 196.9, -47 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 196.9, -47 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 202.3, -48.4 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 202.3, -48.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 207.5, -49.7 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 207.5, -49.7 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 212.5, -51 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 212.5, -51 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 217.3, -52.3 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 217.3, -52.3 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 222, -53.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 222, -53.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 226.4, -54.7 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 226.4, -54.7 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 230.7, -55.8 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 230.7, -55.8 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 234.8, -56.9 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 234.8, -56.9 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 238.8, -57.9 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 238.8, -57.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 242.6, -58.9 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 242.6, -58.9 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 246.2, -59.9 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 246.2, -59.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 249.6, -60.8 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 249.6, -60.8 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 252.8, -61.6 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 252.8, -61.6 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 255.9, -62.4 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 255.9, -62.4 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 258.8, -63.2 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 258.8, -63.2 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 261.6, -63.9 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 261.6, -63.9 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 264.2, -64.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 264.2, -64.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 266.6, -65.2 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 266.6, -65.2 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 268.8, -65.8 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 268.8, -65.8 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 270.9, -66.4 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 270.9, -66.4 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 272.8, -66.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 272.8, -66.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 274.6, -67.3 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 274.6, -67.3 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 276.2, -67.7 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 276.2, -67.7 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 277.6, -68.1 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 277.6, -68.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 278.9, -68.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 278.9, -68.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 279.9, -68.7 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 279.9, -68.7 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 280.9, -69 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 280.9, -69 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 281.7, -69.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 281.7, -69.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 282.3, -69.3 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 282.3, -69.3 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 282.7, -69.5 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 282.7, -69.5 , 0 );

setScaleKey( spep_0 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 74 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 242, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--画面遷移
SE003 = playSeVer2( spep_0 + 68, 1232, "", 0, 0, 0, -1);

--髪なびく
SE004 = playSeVer2( spep_0 + 78, 1332, "", 0, 0, 0, -1);

--気ダメ
SE005 = playSeVer2( spep_0 + 98, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE005, 126 );
SE006 = playSeVer2( spep_0 + 98, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE006, 56 );

--オーラ
SE007 = playSeVer2( spep_0 + 110, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 134, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 158, 1036, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 182, 1036, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 206, 1036, "", 0, 0, 0, -1);

--笑う
SE010 = playSeVer2( spep_0 + 158, 1013, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --216f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--オーラ
SE016 = playSeVer2( spep_1 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE016, 79 );

-------------------------------------------------
-- 気弾発射～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 620;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾発射～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 286 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 406 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 286 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 332 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 286 + OFFSET_X, 1, 172.2, 165.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 172.2, 165.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 182.2, 161.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 182.2, 161.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 182.2, 149.7 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 182.2, 149.7 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 162.4, 165.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 162.4, 165.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 203.8, 185.7 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 203.8, 185.7 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 207.5, 203.2 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 207.5, 203.2 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 230.8, 209.2 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 230.8, 209.2 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 228, 223.4 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 228, 223.4 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 231.9, 206.6 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 231.9, 206.6 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 224.9, 219.1 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 224.9, 219.1 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 247.3, 221.1 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 247.3, 221.1 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 239.3, 232.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 239.3, 232.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 241, 214 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 241, 214 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 232.3, 225.1 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 232.3, 225.1 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 251.5, 226.1 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 251.5, 226.1 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 244.5, 236.9 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 244.5, 236.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 245.3, 217.5 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 245.3, 217.5 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 236, 228.1 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 236, 228.1 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 254.6, 228.6 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 254.6, 228.6 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 247.1, 239 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 247.1, 239 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 247.5, 219.4 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 247.5, 219.4 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 237.9, 229.7 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 237.9, 229.7 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 256.2, 230 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 256.2, 230 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 248.5, 240.2 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 248.5, 240.2 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 248.8, 220.4 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 248.8, 220.4 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 239, 230.6 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 239, 230.6 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 257.2, 230.7 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 257.2, 230.7 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 249.3, 230.8 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 249.3, 230.8 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 239.5, 240.9 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 239.5, 240.9 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 239.6, 241 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 239.6, 241 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 239.7, 241.1 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 239.7, 241.1 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 239.8, 241.2 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 239.8, 241.2 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 239.9, 241.3 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 239.9, 241.3 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 240, 241.4 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 240, 241.4 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 240.1, 241.5 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 240.1, 241.5 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 240.2, 241.5 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 240.2, 241.5 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 240.3, 241.6 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 240.3, 241.6 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 240.3, 241.7 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 240.3, 241.7 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 240.3, 241.8 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 240.3, 241.8 , 0 );

setScaleKey( spep_2 + 286 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 2.23, 2.23 );

setRotateKey( spep_2 + 286 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, -34.9 );

setBlendColor( spep_2 + 332 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.3 );
setBlendColor( spep_2 + 333 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.3 );
setBlendColor( spep_2 + 334 + OFFSET_X, 1, 3, 0.2, 0.8, 1.0, 0.3 );
setBlendColor( spep_2 + 337 + OFFSET_X, 1, 3, 0.2, 0.8, 1.0, 0.3 );
setBlendColor( spep_2 + 338 + OFFSET_X, 1, 3, 0.2, 0.8, 1.0, 0.4 );
setBlendColor( spep_2 + 405 + OFFSET_X, 1, 3, 0.2, 0.8, 1.0, 0.4 );
setBlendColor( spep_2 + 406 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--構える
SE017 = playSeVer2( spep_2 + 0, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE017, 61 );

--かめはめ波溜め
SE019 = playSeVer2( spep_2 + 14, 1209, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 18, 1210, "",spep_2 + 206, 6, 34, -1);
setStartTimeMs( SE015,  1033 );
SE020 = playSeVer2( spep_2 + 18, 1203, "",spep_2 + 208, 0, 34, -1);

--オーラ
SE018 = playSeVer2( spep_2 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE018, 79 );
SE021 = playSeVer2( spep_2 + 38, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 38, SE021, 79 );
SE022 = playSeVer2( spep_2 + 62, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE022, 79 );
SE023 = playSeVer2( spep_2 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE023, 79 );
SE024 = playSeVer2( spep_2 + 110, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 110, SE024, 79 );
SE026 = playSeVer2( spep_2 + 134, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE026, 79 );
SE027 = playSeVer2( spep_2 + 158, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 158, SE027, 79 );
SE031 = playSeVer2( spep_2 + 182, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 182, SE031, 79 );

--体ひねる
SE025 = playSeVer2( spep_2 + 110, 1116, "",spep_2 + 182, 0, 40, -1);

--かめはめ波発射
SE028 = playSeVer2( spep_2 + 168, 1133, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 168, 1146, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 168, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE030, 79 );

--かめはめ波飛んでいく
SE032 = playSeVer2( spep_2 + 268, 1161, "",spep_2 + 474, 0, 62, -1);
SE033 = playSeVer2( spep_2 + 268, 1211, "",spep_2 + 474, 0, 64, -1);
SE034 = playSeVer2( spep_2 + 276, 1303, "",spep_2 + 360, 0, 44, -1);
SE035 = playSeVer2( spep_2 + 302, 1390, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 314, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE036, 73 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 320; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
stopSe( SP_dodge - 12, SE034, 0);
stopSe( SP_dodge - 12, SE035, 0);
stopSe( SP_dodge - 4, SE036, 0);
pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge, 1, 3, 0.0, 0.0, 0.0, 0.0 );

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
--かめはめ波敵に向かっていく
SE037 = playSeVer2( spep_2 + 398, 1145, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 398, 1296, "",spep_2 + 564, 0, 102, -1);

--爆発
SE039 = playSeVer2( spep_2 + 476, 1067, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 478, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 478, SE040, 66 );
SE041 = playSeVer2( spep_2 + 478, 1137, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 452); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム 620f -4


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 敵と対置～オーラ放出まで
-------------------------------------------------
MAX_FRAME_0 = 216;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵と対置～オーラ放出まで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
--spep_x = spep_0 + 118;

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
setDisp( spep_0 + 74 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 18 );

setMoveKey( spep_0 + 0, 1, -160.7, -37.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -167.2, -39.2 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -167.2, -39.2 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -173.5, -40.8 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -173.5, -40.8 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -179.7, -42.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -179.7, -42.4 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -185.6, -44 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -185.6, -44 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -191.4, -45.5 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -191.4, -45.5 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -196.9, -47 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -196.9, -47 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -202.3, -48.4 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -202.3, -48.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -207.5, -49.7 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -207.5, -49.7 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -212.5, -51 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -212.5, -51 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -217.3, -52.3 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -217.3, -52.3 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -222, -53.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -222, -53.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -226.4, -54.7 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -226.4, -54.7 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -230.7, -55.8 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -230.7, -55.8 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -234.8, -56.9 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -234.8, -56.9 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -238.8, -57.9 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -238.8, -57.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -242.6, -58.9 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -242.6, -58.9 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -246.2, -59.9 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -246.2, -59.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -249.6, -60.8 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -249.6, -60.8 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -252.8, -61.6 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -252.8, -61.6 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -255.9, -62.4 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -255.9, -62.4 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -258.8, -63.2 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -258.8, -63.2 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -261.6, -63.9 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -261.6, -63.9 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -264.2, -64.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -264.2, -64.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -266.6, -65.2 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -266.6, -65.2 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -268.8, -65.8 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -268.8, -65.8 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -270.9, -66.4 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -270.9, -66.4 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -272.8, -66.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -272.8, -66.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -274.6, -67.3 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -274.6, -67.3 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -276.2, -67.7 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -276.2, -67.7 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -277.6, -68.1 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -277.6, -68.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -278.9, -68.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -278.9, -68.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -279.9, -68.7 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -279.9, -68.7 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -280.9, -69 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -280.9, -69 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -281.7, -69.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -281.7, -69.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -282.3, -69.3 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -282.3, -69.3 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -282.7, -69.5 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -282.7, -69.5 , 0 );

setScaleKey( spep_0 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 74 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 242, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--画面遷移
SE003 = playSeVer2( spep_0 + 68, 1232, "", 0, 0, 0, -1);

--髪なびく
SE004 = playSeVer2( spep_0 + 78, 1332, "", 0, 0, 0, -1);

--気ダメ
SE005 = playSeVer2( spep_0 + 98, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE005, 126 );
SE006 = playSeVer2( spep_0 + 98, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE006, 56 );

--オーラ
SE007 = playSeVer2( spep_0 + 110, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 134, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 158, 1036, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 182, 1036, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 206, 1036, "", 0, 0, 0, -1);

--笑う
SE010 = playSeVer2( spep_0 + 158, 1013, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --216f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--オーラ
SE016 = playSeVer2( spep_1 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE016, 79 );

-------------------------------------------------
-- 気弾発射～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 620;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾発射～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 286 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 406 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 286 + OFFSET_X, 1, 18 );
changeAnime( spep_2 + 332 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 286 + OFFSET_X, 1, -172.2, 165.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -172.2, 165.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -182.2, 161.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -182.2, 161.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -182.2, 149.7 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -182.2, 149.7 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -162.4, 165.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -162.4, 165.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -203.8, 185.7 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -203.8, 185.7 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -207.5, 203.2 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -207.5, 203.2 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -230.8, 209.2 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -230.8, 209.2 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -228, 223.4 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -228, 223.4 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -231.9, 206.6 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -231.9, 206.6 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -224.9, 219.1 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -224.9, 219.1 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -247.3, 221.1 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -247.3, 221.1 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -239.3, 232.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -239.3, 232.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -241, 214 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -241, 214 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -232.3, 225.1 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -232.3, 225.1 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -251.5, 226.1 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -251.5, 226.1 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -244.5, 236.9 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -244.5, 236.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -245.3, 217.5 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -245.3, 217.5 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -236, 228.1 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -236, 228.1 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -254.6, 228.6 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -254.6, 228.6 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -247.1, 239 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -247.1, 239 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -247.5, 219.4 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -247.5, 219.4 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -237.9, 229.7 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -237.9, 229.7 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -256.2, 230 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -256.2, 230 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -248.5, 240.2 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -248.5, 240.2 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -248.8, 220.4 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -248.8, 220.4 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -239, 230.6 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -239, 230.6 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -257.2, 230.7 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -257.2, 230.7 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -249.3, 230.8 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -249.3, 230.8 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -239.5, 240.9 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -239.5, 240.9 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -239.6, 241 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -239.6, 241 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -239.7, 241.1 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -239.7, 241.1 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -239.8, 241.2 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -239.8, 241.2 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -239.9, 241.3 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -239.9, 241.3 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -240, 241.4 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -240, 241.4 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -240.1, 241.5 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -240.1, 241.5 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -240.2, 241.5 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -240.2, 241.5 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -240.3, 241.6 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -240.3, 241.6 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -240.3, 241.7 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -240.3, 241.7 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -240.3, 241.8 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -240.3, 241.8 , 0 );

setScaleKey( spep_2 + 286 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 2.23, 2.23 );

setRotateKey( spep_2 + 286 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 34.9 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, 34.9 );

setBlendColor( spep_2 + 332 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.3 );
setBlendColor( spep_2 + 333 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.3 );
setBlendColor( spep_2 + 334 + OFFSET_X, 1, 3, 0.2, 0.8, 1.0, 0.3 );
setBlendColor( spep_2 + 337 + OFFSET_X, 1, 3, 0.2, 0.8, 1.0, 0.3 );
setBlendColor( spep_2 + 338 + OFFSET_X, 1, 3, 0.2, 0.8, 1.0, 0.4 );
setBlendColor( spep_2 + 405 + OFFSET_X, 1, 3, 0.2, 0.8, 1.0, 0.4 );
setBlendColor( spep_2 + 406 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--構える
SE017 = playSeVer2( spep_2 + 0, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE017, 61 );

--かめはめ波溜め
SE019 = playSeVer2( spep_2 + 14, 1209, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 18, 1210, "",spep_2 + 206, 6, 34, -1);
setStartTimeMs( SE015,  1033 );
SE020 = playSeVer2( spep_2 + 18, 1203, "",spep_2 + 208, 0, 34, -1);

--オーラ
SE018 = playSeVer2( spep_2 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE018, 79 );
SE021 = playSeVer2( spep_2 + 38, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 38, SE021, 79 );
SE022 = playSeVer2( spep_2 + 62, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE022, 79 );
SE023 = playSeVer2( spep_2 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE023, 79 );
SE024 = playSeVer2( spep_2 + 110, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 110, SE024, 79 );
SE026 = playSeVer2( spep_2 + 134, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE026, 79 );
SE027 = playSeVer2( spep_2 + 158, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 158, SE027, 79 );
SE031 = playSeVer2( spep_2 + 182, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 182, SE031, 79 );

--体ひねる
SE025 = playSeVer2( spep_2 + 110, 1116, "",spep_2 + 182, 0, 40, -1);

--かめはめ波発射
SE028 = playSeVer2( spep_2 + 168, 1133, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 168, 1146, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 168, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE030, 79 );

--かめはめ波飛んでいく
SE032 = playSeVer2( spep_2 + 268, 1161, "",spep_2 + 474, 0, 62, -1);
SE033 = playSeVer2( spep_2 + 268, 1211, "",spep_2 + 474, 0, 64, -1);
SE034 = playSeVer2( spep_2 + 276, 1303, "",spep_2 + 360, 0, 44, -1);
SE035 = playSeVer2( spep_2 + 302, 1390, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 314, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE036, 73 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 320; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
stopSe( SP_dodge - 12, SE034, 0);
stopSe( SP_dodge - 12, SE035, 0);
stopSe( SP_dodge - 4, SE036, 0);
pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge, 1, 3, 0.0, 0.0, 0.0, 0.0 );

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
--かめはめ波敵に向かっていく
SE037 = playSeVer2( spep_2 + 398, 1145, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 398, 1296, "",spep_2 + 564, 0, 102, -1);

--爆発
SE039 = playSeVer2( spep_2 + 476, 1067, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 478, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 478, SE040, 66 );
SE041 = playSeVer2( spep_2 + 478, 1137, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 452); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム 620f -4


end