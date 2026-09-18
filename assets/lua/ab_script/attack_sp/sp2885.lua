--1031500:LR_超一星龍_必殺技：神速龍光弾
--sp_effect_a9_00144
--sp2885

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163905; --カードまで ef_001
SP_02  = 163906; --カード後　前面 ef_002
SP_02b = 163907; --カード後　背面 ef_002b

--エフェクト(敵)
SP_02r  = 163908; --カード後　前面　敵側 ef_002r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 96;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;

        timing_skip = 150;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --気弾溜め
        SE018 = playSeVer2( spep_2 + 153, 1224, "", 0, 0, 0, -1);
    else end


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カードまで
-------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- カードまで(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

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


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 音 ** --
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 84 );
SE002 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 38, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 38, SE005, 52 );
SE006 = playSeVer2( spep_0 + 54, 1019, "",spep_0 + 114, 0, 14, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;--96f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--振りかぶる
SE008 = playSeVer2( spep_1 + 80, 1116, "",spep_2 + 46, 0, 30, -1);
SE009 = playSeVer2( spep_1 + 92, 1182, "", 0, 0, 0, -1);


-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 398;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後 前面(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カード後 背面(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 46 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 78 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 46 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 54 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 46 + OFFSET_X, 1, -36, -300.1 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -36, -300.1 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -78, -225.1 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -78, -225.1 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -78, -262.3 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -78, -262.3 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -255, -97.3 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -255, -97.3 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -236.4, -131.4 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -236.4, -131.4 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -175.9, 124 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -175.9, 124 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -175.9, 99.2 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -175.9, 99.2 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -105.9, 256.2 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -105.9, 256.2 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -9.9, 195.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -9.9, 195.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 11.7, 113.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 11.7, 113.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 14.4, 73.7 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 14.4, 73.7 , 0 );

setScaleKey( spep_2 + 46 + OFFSET_X, 1, 7.5, 7.5 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 7.5, 7.5 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 7.49, 7.49 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 7.49, 7.49 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 46 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 48.1 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 48.1 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 107.5 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 107.5 );

setAlphaKey( spep_2 + 46 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 78 + OFFSET_X, 1, 255 );


--敵の動き2
setDisp( spep_2 + 94 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 136 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 94 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 98 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 106 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 116 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 122 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 126 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 132 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 94 + OFFSET_X, 1, 44.4, 14.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 44.4, 14.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 51.1, -77.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 51.1, -77.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 44.9, 21 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 44.9, 21 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 38.2, 72.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 38.2, 72.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 40.1, 143.5 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 40.1, 143.5 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 98.2, 141.7 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 98.2, 141.7 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 157.9, 112.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 157.9, 112.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 199.4, 108.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 199.4, 108.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 263.7, 74.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 263.7, 74.7 , 0 );

setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 94 + OFFSET_X, 1, 107.5 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 107.5 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 96.9 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 96.9 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 189.8 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 189.8 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 200.8 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 200.8 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 255.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 255.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 360 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 360 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 405.7 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 405.7 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 458.7 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 458.7 );

setAlphaKey( spep_2 + 94 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 136 + OFFSET_X, 1, 255 );


--敵の動き3
setDisp( spep_2 + 246 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 396 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 246 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 256 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 260 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 264 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 268 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 272 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 276 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 280 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 284 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 288 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 292 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 296 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 300 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 304 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 308 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 312 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 316 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 320 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 324 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 328 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 332 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 336 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 340 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 344 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 348 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 352 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 356 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 360 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 364 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 368 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 372 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 376 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 380 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 384 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 388 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 392 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 396 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 246 + OFFSET_X, 1, 88.3, -55.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 88.3, -55.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 89.1, -56.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 89.1, -56.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 61.7, -76.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 61.7, -76.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 62.3, -77.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 62.3, -77.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 8, -64.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 8, -64.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 8.1, -65.2 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 8.1, -65.2 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -176.4, 30.9 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -176.4, 30.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -177.9, 30.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -177.9, 30.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -163.4, 30.4 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -163.4, 30.4 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -164.8, 30.4 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -164.8, 30.4 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -26.5, 17.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -26.5, 17.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -26.7, 17.5 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -26.7, 17.5 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 58.3, -12.4 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 58.3, -12.4 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 58.8, -12.7 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 58.8, -12.7 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 14, 97.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 14, 97.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 14.2, 97.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 14.2, 97.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 63, 82.9 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 63, 82.9 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 63.5, 83.4 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 63.5, 83.4 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 60.8, 90.4 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 60.8, 90.4 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 61.3, 90.9 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 61.3, 90.9 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 109.9, 75.5 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 109.9, 75.5 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 110.7, 75.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 110.7, 75.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 122.4, 78.9 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 122.4, 78.9 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 121.9, 78.7 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 121.9, 78.7 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 121.4, 78.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 121.4, 78.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 120.9, 78.1 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 120.9, 78.1 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 116, 96 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 116, 96 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 115.5, 95.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 115.5, 95.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 202.7, 62.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 202.7, 62.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 201.9, 62.2 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 201.9, 62.2 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 144.8, 73.2 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 144.8, 73.2 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 144.1, 73 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 144.1, 73 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 104.2, 63.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 104.2, 63.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 103.8, 63.6 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 103.8, 63.6 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 111.9, 93.6 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 111.9, 93.6 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 111.4, 93.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 111.4, 93.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 195.6, 61.1 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 195.6, 61.1 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 194.7, 60.9 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 194.7, 60.9 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 139.6, 71.6 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 139.6, 71.6 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 139, 71.4 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 139, 71.4 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 100.4, 62.5 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 100.4, 62.5 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 100, 62.4 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 100, 62.4 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 107.8, 91.2 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 107.8, 91.2 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 107.3, 90.9 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 107.3, 90.9 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 188.5, 59.8 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 188.5, 59.8 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 187.6, 59.7 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 187.6, 59.7 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 134.5, 69.9 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 134.5, 69.9 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 133.8, 69.7 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 133.8, 69.7 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 96.7, 61.2 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 96.7, 61.2 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 96.2, 61 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 96.2, 61 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 103.8, 88.8 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 103.8, 88.8 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 103.2, 88.5 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 103.2, 88.5 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 181.3, 58.6 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 181.3, 58.6 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 180.5, 58.5 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 180.5, 58.5 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 129.3, 68.3 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 129.3, 68.3 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 128.6, 68.1 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 128.6, 68.1 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 92.9, 59.9 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 92.9, 59.9 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 92.4, 59.7 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 92.4, 59.7 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 99.7, 86.4 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 99.7, 86.4 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 99.1, 86.1 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 99.1, 86.1 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 174.2, 57.4 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 174.2, 57.4 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 173.3, 57.2 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 173.3, 57.2 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 124.1, 66.7 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 124.1, 66.7 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 123.5, 66.5 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 123.5, 66.5 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 89.1, 58.5 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 89.1, 58.5 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 88.7, 58.4 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 88.7, 58.4 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 95.5, 84 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 95.5, 84 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 95, 83.7 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 95, 83.7 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 167.1, 56.2 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 167.1, 56.2 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 166.2, 56 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 166.2, 56 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 118.9, 65 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 118.9, 65 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 118.3, 64.9 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 118.3, 64.9 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 85.3, 57.3 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 85.3, 57.3 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 84.9, 57.1 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 84.9, 57.1 , 0 );

setScaleKey( spep_2 + 246 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.53, 0.53 );

setRotateKey( spep_2 + 246 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -92.9 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -92.9 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 92.3 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 92.3 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 76.4 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 76.4 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 87.3 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 87.3 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 391 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, 24 );

setAlphaKey( spep_2 + 246 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 255 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 256 + OFFSET_X, 1, 150 );
setAlphaKey( spep_2 + 393 + OFFSET_X, 1, 150 );
setAlphaKey( spep_2 + 394 + OFFSET_X, 1, 255 );

-- ** 音 ** --
--振りかぶる
SE010 = playSeVer2( spep_2 + 16, 1004, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 36; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 10, SE010, 0);
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
--蹴り飛ばす
SE011 = playSeVer2( spep_2 + 42, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 42, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE013 = playSeVer2( spep_2 + 54, 1121, "",spep_2 + 164, 0, 78, -1);

--ビル激突
SE014 = playSeVer2( spep_2 + 68, 1061, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 68, 1068, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 90, 1061, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 90, 1159, "",spep_2 + 344, 0, 206, -1);

--気弾溜め
SE018 = playSeVer2( spep_2 + 140, 1224, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 166, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 166, SE019, 132 );

--気弾発射
SE020 = playSeVer2( spep_2 + 208, 1193, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 208, 1027, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 208, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 208, SE022, 63 );
SE023 = playSeVer2( spep_2 + 226, 1128, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 226, SE023, 74 );
setPitch( spep_2 + 226, SE023, 500 );
setTimeStretch( SE023, 1.33, 30, 4 );
SE024 = playSeVer2( spep_2 + 226, 1022, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 256); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 398f -4f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カードまで
-------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- カードまで(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 音 ** --
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 84 );
SE002 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 38, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 38, SE005, 52 );
SE006 = playSeVer2( spep_0 + 54, 1019, "",spep_0 + 114, 0, 14, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;--96f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--振りかぶる
SE008 = playSeVer2( spep_1 + 80, 1116, "",spep_2 + 46, 0, 30, -1);
SE009 = playSeVer2( spep_1 + 92, 1182, "", 0, 0, 0, -1);


-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 398;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- カード後 前面(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カード後 背面(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 46 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 78 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 46 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 54 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 46 + OFFSET_X, 1, -36, -300.1 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -36, -300.1 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -78, -225.1 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -78, -225.1 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -78, -262.3 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -78, -262.3 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -255, -97.3 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -255, -97.3 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -236.4, -131.4 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -236.4, -131.4 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -175.9, 124 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -175.9, 124 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -175.9, 99.2 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -175.9, 99.2 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -105.9, 256.2 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -105.9, 256.2 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -9.9, 195.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -9.9, 195.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 11.7, 113.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 11.7, 113.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 14.4, 73.7 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 14.4, 73.7 , 0 );

setScaleKey( spep_2 + 46 + OFFSET_X, 1, 7.5, 7.5 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 7.5, 7.5 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 7.49, 7.49 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 7.49, 7.49 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 46 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 48.1 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 48.1 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 107.5 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 107.5 );

setAlphaKey( spep_2 + 46 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 78 + OFFSET_X, 1, 255 );


--敵の動き2
setDisp( spep_2 + 94 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 136 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 94 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 98 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 106 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 116 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 122 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 126 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 132 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 94 + OFFSET_X, 1, 44.4, 14.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 44.4, 14.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 51.1, -77.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 51.1, -77.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 44.9, 21 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 44.9, 21 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 38.2, 72.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 38.2, 72.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 40.1, 143.5 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 40.1, 143.5 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 98.2, 141.7 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 98.2, 141.7 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 157.9, 112.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 157.9, 112.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 199.4, 108.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 199.4, 108.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 263.7, 74.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 263.7, 74.7 , 0 );

setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 94 + OFFSET_X, 1, 107.5 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 107.5 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 96.9 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 96.9 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 189.8 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 189.8 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 200.8 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 200.8 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 255.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 255.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 360 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 360 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 405.7 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 405.7 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 458.7 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 458.7 );

setAlphaKey( spep_2 + 94 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 136 + OFFSET_X, 1, 255 );


--敵の動き3
setDisp( spep_2 + 246 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 396 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 246 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 256 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 260 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 264 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 268 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 272 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 276 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 280 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 284 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 288 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 292 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 296 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 300 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 304 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 308 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 312 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 316 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 320 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 324 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 328 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 332 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 336 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 340 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 344 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 348 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 352 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 356 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 360 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 364 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 368 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 372 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 376 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 380 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 384 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 388 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 392 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 396 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 246 + OFFSET_X, 1, 88.3, -55.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 88.3, -55.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 89.1, -56.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 89.1, -56.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 61.7, -76.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 61.7, -76.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 62.3, -77.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 62.3, -77.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 8, -64.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 8, -64.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 8.1, -65.2 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 8.1, -65.2 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -176.4, 30.9 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -176.4, 30.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -177.9, 30.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -177.9, 30.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -163.4, 30.4 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -163.4, 30.4 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -164.8, 30.4 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -164.8, 30.4 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -26.5, 17.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -26.5, 17.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -26.7, 17.5 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -26.7, 17.5 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 58.3, -12.4 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 58.3, -12.4 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 58.8, -12.7 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 58.8, -12.7 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 14, 97.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 14, 97.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 14.2, 97.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 14.2, 97.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 63, 82.9 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 63, 82.9 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 63.5, 83.4 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 63.5, 83.4 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 60.8, 90.4 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 60.8, 90.4 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 61.3, 90.9 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 61.3, 90.9 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 109.9, 75.5 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 109.9, 75.5 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 110.7, 75.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 110.7, 75.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 122.4, 78.9 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 122.4, 78.9 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 121.9, 78.7 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 121.9, 78.7 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 121.4, 78.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 121.4, 78.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 120.9, 78.1 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 120.9, 78.1 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 116, 96 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 116, 96 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 115.5, 95.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 115.5, 95.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 202.7, 62.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 202.7, 62.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 201.9, 62.2 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 201.9, 62.2 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 144.8, 73.2 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 144.8, 73.2 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 144.1, 73 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 144.1, 73 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 104.2, 63.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 104.2, 63.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 103.8, 63.6 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 103.8, 63.6 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 111.9, 93.6 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 111.9, 93.6 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 111.4, 93.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 111.4, 93.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 195.6, 61.1 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 195.6, 61.1 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 194.7, 60.9 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 194.7, 60.9 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 139.6, 71.6 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 139.6, 71.6 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 139, 71.4 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 139, 71.4 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 100.4, 62.5 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 100.4, 62.5 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 100, 62.4 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 100, 62.4 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 107.8, 91.2 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 107.8, 91.2 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 107.3, 90.9 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 107.3, 90.9 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 188.5, 59.8 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 188.5, 59.8 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 187.6, 59.7 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 187.6, 59.7 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 134.5, 69.9 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 134.5, 69.9 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 133.8, 69.7 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 133.8, 69.7 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 96.7, 61.2 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 96.7, 61.2 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 96.2, 61 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 96.2, 61 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 103.8, 88.8 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 103.8, 88.8 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 103.2, 88.5 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 103.2, 88.5 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 181.3, 58.6 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 181.3, 58.6 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 180.5, 58.5 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 180.5, 58.5 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 129.3, 68.3 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 129.3, 68.3 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 128.6, 68.1 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 128.6, 68.1 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 92.9, 59.9 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 92.9, 59.9 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 92.4, 59.7 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 92.4, 59.7 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 99.7, 86.4 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 99.7, 86.4 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 99.1, 86.1 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 99.1, 86.1 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 174.2, 57.4 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 174.2, 57.4 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 173.3, 57.2 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 173.3, 57.2 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 124.1, 66.7 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 124.1, 66.7 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 123.5, 66.5 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 123.5, 66.5 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 89.1, 58.5 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 89.1, 58.5 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 88.7, 58.4 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 88.7, 58.4 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 95.5, 84 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 95.5, 84 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 95, 83.7 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 95, 83.7 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 167.1, 56.2 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 167.1, 56.2 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 166.2, 56 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 166.2, 56 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 118.9, 65 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 118.9, 65 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 118.3, 64.9 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 118.3, 64.9 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 85.3, 57.3 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 85.3, 57.3 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 84.9, 57.1 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 84.9, 57.1 , 0 );

setScaleKey( spep_2 + 246 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.53, 0.53 );

setRotateKey( spep_2 + 246 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -92.9 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -92.9 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 92.3 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 92.3 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 76.4 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 76.4 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 87.3 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 87.3 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 391 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, 24 );

setAlphaKey( spep_2 + 246 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 255 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 256 + OFFSET_X, 1, 150 );
setAlphaKey( spep_2 + 393 + OFFSET_X, 1, 150 );
setAlphaKey( spep_2 + 394 + OFFSET_X, 1, 255 );

-- ** 音 ** --
--振りかぶる
SE010 = playSeVer2( spep_2 + 16, 1004, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 36; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 10, SE010, 0);
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
--蹴り飛ばす
SE011 = playSeVer2( spep_2 + 42, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 42, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE013 = playSeVer2( spep_2 + 54, 1121, "",spep_2 + 164, 0, 78, -1);

--ビル激突
SE014 = playSeVer2( spep_2 + 68, 1061, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 68, 1068, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 90, 1061, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 90, 1159, "",spep_2 + 344, 0, 206, -1);

--気弾溜め
SE018 = playSeVer2( spep_2 + 140, 1224, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 166, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 166, SE019, 132 );

--気弾発射
SE020 = playSeVer2( spep_2 + 208, 1193, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 208, 1027, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 208, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 208, SE022, 63 );
SE023 = playSeVer2( spep_2 + 226, 1128, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 226, SE023, 74 );
setPitch( spep_2 + 226, SE023, 500 );
setTimeStretch( SE023, 1.33, 30, 4 );
SE024 = playSeVer2( spep_2 + 226, 1022, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 256); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 398f -4f

end