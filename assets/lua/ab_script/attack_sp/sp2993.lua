--1032920:LR_孫悟空(身勝手の極意"兆")+超サイヤ人ゴッドSSべジータ(進化)_必殺技：無我の拳
--sp_effect_b1_00359
--sp2993

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164421; --カードカットイン後〜フィニッシュ ef_001

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

ENABLE_AUTO_TIME_STRETCH(0.68);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 98;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 766 );  -- スキップ先フレーム指定
        setupMovie(spep_2 + 766 , SP_01, spep_2 + 766 -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        --翻る
        SE049 = playSeVer2( spep_2 + 766 + 3, 1407, "",spep_2 + 844, 0, 32, -1);
        setSeVolumeByWorkId( spep_2 + 766 + 3, SE049, 153 );
        SE048 = playSeVer2( spep_2 + 766 + 3, 1227, "",spep_2 + 844, 4, 36, -1);
        setStartTimeMs( SE048,  433 );

    else 

        setupMovie(0, SP_01, 0, 1);  -- スキップしない時の通常再生時用のsetupMovie関数

    end
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭
-------------------------------------------------
MAX_FRAME_0 = 98;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 16;

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


-- ** 音 ** --
--オーラ
SE002 = playSeVer2( spep_0 + 20, 1407, "",spep_0 + 124, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 20, SE002, 151 );
SE003 = playSeVer2( spep_0 + 20, 1181, "",spep_0 + 126, 0, 18, -1);
SE004 = playSeVer2( spep_0 + 20, 1176, "",spep_0 + 130, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 20, SE004, 46 );
SE005 = playSeVer2( spep_0 + 20, 1227, "",spep_0 + 128, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 20, SE005, 73 );

--気ダメ
SE006 = playSeVer2( spep_0 + 18, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE006, 122 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 98f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--オーラ
SE009 = playSeVer2( spep_1 + 84, 1407, "",spep_2 + 72, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 84, SE009, 141 );
SE010 = playSeVer2( spep_1 + 84, 1176, "",spep_2 + 74, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 84, SE010, 48 );
SE008 = playSeVer2( spep_1 + 86, 1227, "",spep_2 + 68, 4, 20, -1);
setStartTimeMs( SE008,  433 );


-------------------------------------------------
-- カードカットイン後〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 962;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カードカットイン後〜フィニッシュ(ef_001)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 188 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 224 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 188 + OFFSET_X, 1, 101 );

setMoveKey( spep_2 + 188 + OFFSET_X, 1, 160.2, -52.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 160.2, -52.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 164.1, -53.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 164.1, -53.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 172.1, -53.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 172.1, -53.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 193.1, -52.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 193.1, -52.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 216.1, -52.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 216.1, -52.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 239.1, -50.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 239.1, -50.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 262.1, -49.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 262.1, -49.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 279.1, -48.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 279.1, -48.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 284.1, -47.8 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 284.1, -47.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 290.1, -46.8 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 290.1, -46.8 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 295.1, -43.8 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 295.1, -43.8 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 300.1, -41.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 300.1, -41.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 300.1, -37.8 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 300.1, -37.8 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 300.1, -34.8 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 300.1, -34.8 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 300.1, -33.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 300.1, -33.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 297.1, -32.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 297.1, -32.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 295.1, -33.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 295.1, -33.8 , 0 );

setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.7, 1.7 );

setRotateKey( spep_2 + 188 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 0 );

setGaussBlurKey( spep_2 + 188 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 244 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_2 + 386 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 456 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 386 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 386 + OFFSET_X, 1, 4, 1.8 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 4, 1.8 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 12, 4 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 12, 4 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 9, -2.6 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 9, -2.6 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 7.7, -5.1 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 7.7, -5.1 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 6.9, -9.9 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 6.9, -9.9 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 8.7, -8.4 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 8.7, -8.4 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 15.2, -12.6 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 15.2, -12.6 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 16.1, -11.2 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 16.1, -11.2 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 22.3, -8.4 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 22.3, -8.4 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 23, -23.9 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 23, -23.9 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -19, -23.1 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -19, -23.1 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -31, -16 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -31, -16 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -30.9, -28.1 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -30.9, -28.1 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -31.1, -28 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -31.1, -28 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -27.4, -31.5 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -27.4, -31.5 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 193.5, -60.4 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 193.5, -60.4 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 207.7, -35.6 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 207.7, -35.6 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 221, -48.7 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 221, -48.7 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 249.7, -34.4 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 249.7, -34.4 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 271.2, -35.6 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 271.2, -35.6 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 241.2, -38 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 241.2, -38 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 182.2, -44 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 182.2, -44 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 175.1, -68.1 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 175.1, -68.1 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 202.7, -78.9 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 202.7, -78.9 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 202.7, -30.8 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 202.7, -30.8 , 0 );

setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 7.46, 7.46 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 7.46, 7.46 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_2 + 386 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, 0 );

setGaussBlurKey( spep_2 + 386 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 456 + OFFSET_X, 1, 0 );


--敵の動き3
setDisp( spep_2 + 492 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 498 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 492 + OFFSET_X, 1, 302.3, -98.1 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 302.3, -98.1 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 626.3, -90.9 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 626.3, -90.9 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 665.9, -128.1 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 665.9, -128.1 , 0 );

setScaleKey( spep_2 + 492 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 498 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_2 + 492 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 498 + OFFSET_X, 1, 0 );

setGaussBlurKey( spep_2 + 492 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 498 + OFFSET_X, 1, 0 );


--敵の動き4
setDisp( spep_2 + 512 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 522 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 512 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 512 + OFFSET_X, 1, -6.1, -352 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -6.1, -352 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -10, -140 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -10, -140 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -12.3, 60 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -12.3, 60 , 0 );

setScaleKey( spep_2 + 512 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 0.18, 0.18 );

setRotateKey( spep_2 + 512 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 522 + OFFSET_X, 1, -27 );

setGaussBlurKey( spep_2 + 512 + OFFSET_X, 1, 0.0008 );
setGaussBlurKey( spep_2 + 515 + OFFSET_X, 1, 0.0008 );
setGaussBlurKey( spep_2 + 516 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 522 + OFFSET_X, 1, 0 );


--敵の動き5
setDisp( spep_2 + 712 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 766 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 712 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 712 + OFFSET_X, 1, -303.7, -144 , 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, -303.7, -144 , 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, -300.4, -135.7 , 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, -300.4, -135.7 , 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, -290.9, -111.7 , 0 );
setMoveKey( spep_2 + 717 + OFFSET_X, 1, -290.9, -111.7 , 0 );
setMoveKey( spep_2 + 718 + OFFSET_X, 1, -262.2, -39.6 , 0 );
setMoveKey( spep_2 + 719 + OFFSET_X, 1, -262.2, -39.6 , 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, -234, 31.7 , 0 );
setMoveKey( spep_2 + 721 + OFFSET_X, 1, -234, 31.7 , 0 );
setMoveKey( spep_2 + 722 + OFFSET_X, 1, -224.1, 56.7 , 0 );
setMoveKey( spep_2 + 723 + OFFSET_X, 1, -224.1, 56.7 , 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, -221.1, 64 , 0 );
setMoveKey( spep_2 + 725 + OFFSET_X, 1, -221.1, 64 , 0 );
setMoveKey( spep_2 + 726 + OFFSET_X, 1, -217.7, 62.5 , 0 );
setMoveKey( spep_2 + 727 + OFFSET_X, 1, -217.7, 62.5 , 0 );
setMoveKey( spep_2 + 728 + OFFSET_X, 1, -214.1, 60.9 , 0 );
setMoveKey( spep_2 + 729 + OFFSET_X, 1, -214.1, 60.9 , 0 );
setMoveKey( spep_2 + 730 + OFFSET_X, 1, -210.4, 59.2 , 0 );
setMoveKey( spep_2 + 731 + OFFSET_X, 1, -210.4, 59.2 , 0 );
setMoveKey( spep_2 + 732 + OFFSET_X, 1, -206.4, 57.5 , 0 );
setMoveKey( spep_2 + 733 + OFFSET_X, 1, -206.4, 57.5 , 0 );
setMoveKey( spep_2 + 734 + OFFSET_X, 1, -202.3, 55.6 , 0 );
setMoveKey( spep_2 + 735 + OFFSET_X, 1, -202.3, 55.6 , 0 );
setMoveKey( spep_2 + 736 + OFFSET_X, 1, -198, 53.7 , 0 );
setMoveKey( spep_2 + 737 + OFFSET_X, 1, -198, 53.7 , 0 );
setMoveKey( spep_2 + 738 + OFFSET_X, 1, -193.6, 51.8 , 0 );
setMoveKey( spep_2 + 739 + OFFSET_X, 1, -193.6, 51.8 , 0 );
setMoveKey( spep_2 + 740 + OFFSET_X, 1, -189.1, 49.8 , 0 );
setMoveKey( spep_2 + 741 + OFFSET_X, 1, -189.1, 49.8 , 0 );
setMoveKey( spep_2 + 742 + OFFSET_X, 1, -184.5, 47.8 , 0 );
setMoveKey( spep_2 + 743 + OFFSET_X, 1, -184.5, 47.8 , 0 );
setMoveKey( spep_2 + 744 + OFFSET_X, 1, -179.9, 45.7 , 0 );
setMoveKey( spep_2 + 745 + OFFSET_X, 1, -179.9, 45.7 , 0 );
setMoveKey( spep_2 + 746 + OFFSET_X, 1, -175.2, 43.7 , 0 );
setMoveKey( spep_2 + 747 + OFFSET_X, 1, -175.2, 43.7 , 0 );
setMoveKey( spep_2 + 748 + OFFSET_X, 1, -170.6, 41.6 , 0 );
setMoveKey( spep_2 + 749 + OFFSET_X, 1, -170.6, 41.6 , 0 );
setMoveKey( spep_2 + 750 + OFFSET_X, 1, -166.1, 39.6 , 0 );
setMoveKey( spep_2 + 751 + OFFSET_X, 1, -166.1, 39.6 , 0 );
setMoveKey( spep_2 + 752 + OFFSET_X, 1, -161.7, 37.7 , 0 );
setMoveKey( spep_2 + 753 + OFFSET_X, 1, -161.7, 37.7 , 0 );
setMoveKey( spep_2 + 754 + OFFSET_X, 1, -157.5, 35.8 , 0 );
setMoveKey( spep_2 + 755 + OFFSET_X, 1, -157.5, 35.8 , 0 );
setMoveKey( spep_2 + 756 + OFFSET_X, 1, -153.4, 34 , 0 );
setMoveKey( spep_2 + 757 + OFFSET_X, 1, -153.4, 34 , 0 );
setMoveKey( spep_2 + 758 + OFFSET_X, 1, -149.5, 32.3 , 0 );
setMoveKey( spep_2 + 759 + OFFSET_X, 1, -149.5, 32.3 , 0 );
setMoveKey( spep_2 + 760 + OFFSET_X, 1, -145.9, 30.7 , 0 );
setMoveKey( spep_2 + 761 + OFFSET_X, 1, -145.9, 30.7 , 0 );
setMoveKey( spep_2 + 762 + OFFSET_X, 1, -142.6, 29.2 , 0 );
setMoveKey( spep_2 + 763 + OFFSET_X, 1, -142.6, 29.2 , 0 );
setMoveKey( spep_2 + 764 + OFFSET_X, 1, -139.8, 27.9 , 0 );
setMoveKey( spep_2 + 766 + OFFSET_X, 1, -139.8, 27.9 , 0 );

setScaleKey( spep_2 + 712 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 713 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 714 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 717 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 718 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 719 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 720 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 725 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 726 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 727 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 728 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 729 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 730 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 731 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 732 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 733 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 734 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 735 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 736 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 737 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 738 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 739 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 740 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 741 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 742 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 743 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 744 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 745 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 746 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 747 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 748 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 749 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 750 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 751 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 752 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 753 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 754 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 755 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 756 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 757 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 758 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 759 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 760 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 761 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 762 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 763 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 764 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 766 + OFFSET_X, 1, 2.8, 2.8 );

setRotateKey( spep_2 + 712 + OFFSET_X, 1, 117 );
setRotateKey( spep_2 + 766 + OFFSET_X, 1, 117 );

setGaussBlurKey( spep_2 + 712 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 766 + OFFSET_X, 1, 0 );


--敵の動き6
setDisp( spep_2 + 902 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 918 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 902 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 902 + OFFSET_X, 1, -228.9, -86.9 , 0 );
setMoveKey( spep_2 + 903 + OFFSET_X, 1, -228.9, -86.9 , 0 );
setMoveKey( spep_2 + 904 + OFFSET_X, 1, -251.2, -96.2 , 0 );
setMoveKey( spep_2 + 905 + OFFSET_X, 1, -251.2, -96.2 , 0 );
setMoveKey( spep_2 + 906 + OFFSET_X, 1, -273.6, -105.6 , 0 );
setMoveKey( spep_2 + 907 + OFFSET_X, 1, -273.6, -105.6 , 0 );
setMoveKey( spep_2 + 908 + OFFSET_X, 1, -295.9, -114.9 , 0 );
setMoveKey( spep_2 + 909 + OFFSET_X, 1, -295.9, -114.9 , 0 );
setMoveKey( spep_2 + 910 + OFFSET_X, 1, -288.9, -146.9 , 0 );
setMoveKey( spep_2 + 911 + OFFSET_X, 1, -288.9, -146.9 , 0 );
setMoveKey( spep_2 + 912 + OFFSET_X, 1, -276.9, -142.9 , 0 );
setMoveKey( spep_2 + 913 + OFFSET_X, 1, -276.9, -142.9 , 0 );
setMoveKey( spep_2 + 914 + OFFSET_X, 1, -282.9, -96.9 , 0 );
setMoveKey( spep_2 + 915 + OFFSET_X, 1, -282.9, -96.9 , 0 );
setMoveKey( spep_2 + 916 + OFFSET_X, 1, -288.9, -97.9 , 0 );
setMoveKey( spep_2 + 918 + OFFSET_X, 1, -288.9, -97.9 , 0 );

setScaleKey( spep_2 + 902 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 903 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 904 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 905 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 906 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 907 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 908 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 918 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_2 + 902 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 918 + OFFSET_X, 1, 0 );

setGaussBlurKey( spep_2 + 902 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 918 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--ダッシュ
SE011 = playSeVer2( spep_2 + 20, 1137, "",spep_2 + 90, 0, 32, -1);
SE012 = playSeVer2( spep_2 + 20, 1182, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 20, 1277, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 20, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE014, 68 );
SE015 = playSeVer2( spep_2 + 46, 1497, "",spep_2 + 110, 0, 28, -1);

--飛び込んでくる
SE016 = playSeVer2( spep_2 + 52, 1278, "",spep_2 + 232, 0, 34, -1);
SE017 = playSeVer2( spep_2 + 54, 1188, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 68, 1019, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 132, 1019, "",spep_2 + 208, 0, 14, -1);

--拳握る
SE020 = playSeVer2( spep_2 + 150, 1233, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 162, 1006, "", 0, 0, 0, -1);

--瞬間移動
SE022 = playSeVer2( spep_2 + 180, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 180, SE022, 79 );
SE023 = playSeVer2( spep_2 + 182, 1109, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 214; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止 

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
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
--モノクロ
SE024 = playSeVer2( spep_2 + 206, 1328, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 214, 1391, "",spep_2 + 278, 0, 24, -1);
SE026 = playSeVer2( spep_2 + 214, 1466, "", 0, 0, 0, -1);

--ヒット
SE027 = playSeVer2( spep_2 + 248, 1187, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 248, 1049, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 248, 1024, "", 0, 0, 0, -1);

--敵飛んでいく
SE030 = playSeVer2( spep_2 + 286, 1183, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 290, 1121, "", 0, 0, 0, -1);
setPitch( spep_2 + 290, SE031, 400 );
setTimeStretch( SE031, 1.27, 30, 4 );
SE032 = playSeVer2( spep_2 + 292, 1494, "", 0, 0, 0, -1);
setPitch( spep_2 + 292, SE032, 1200 );
setTimeStretch( SE032, 1.8, 30, 4 );
SE033 = playSeVer2( spep_2 + 350, 1351, "",spep_2 + 516, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 350, SE033, 166 );

--振りかぶる
SE034 = playSeVer2( spep_2 + 450, 1004, "", 0, 0, 0, -1);

--殴り飛ばす
SE035 = playSeVer2( spep_2 + 476, 1120, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 476, 1187, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 476, 1359, "", 0, 0, 0, -1);

--岩激突
SE038 = playSeVer2( spep_2 + 514, 1159, "", 0, 0, 0, -1);

--追いかける
SE039 = playSeVer2( spep_2 + 548, 1452, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 548, 1314, "",spep_2 + 732, 0, 54, -1);
SE041 = playSeVer2( spep_2 + 558, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 558, SE041, 52 );
SE043 = playSeVer2( spep_2 + 588, 1117, "", 0, 0, 0, -1);

--光連続
SE044 = playSeVer2( spep_2 + 612, 1371, "",spep_2 + 692, 0, 40, -1);
SE042 = playSeVer2( spep_2 + 614, 1173, "",spep_2 + 698, 4, 32, -1);
setSeVolumeByWorkId( spep_2 + 614, SE042, 141 );
setStartTimeMs( SE042,  600 );

--爆発
SE045 = playSeVer2( spep_2 + 642, 1067, "", 0, 0, 0, -1);

--翻る
SE046 = playSeVer2( spep_2 + 670, 1119, "", 0, 0, 0, 0.5);
SE047 = playSeVer2( spep_2 + 670, 63, "",spep_2 + 768, 0, 38, -1);
SE049 = playSeVer2( spep_2 + 708, 1407, "",spep_2 + 844, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 708, SE049, 153 );
SE048 = playSeVer2( spep_2 + 710, 1227, "",spep_2 + 844, 4, 36, -1);
setStartTimeMs( SE048,  433 );

--顔力む
SE050 = playSeVer2( spep_2 + 798, 1180, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 798, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 798, SE051, 65 );
SE052 = playSeVer2( spep_2 + 798, 1475, "", 0, 0, 0, -1);

--爆発
SE053 = playSeVer2( spep_2 + 832, 1011, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE054 = playSeVer2( spep_2 + 880, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 880, SE054, 79 );
SE055 = playSeVer2( spep_2 + 882, 1277, "", 0, 0, 0, -1);

--壁激突
SE056 = playSeVer2( spep_2 + 908, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 834); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 962f -0f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭
-------------------------------------------------
MAX_FRAME_0 = 98;

setupMovie(0, SP_01, 0, 1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
--spep_x = spep_0 + 16;

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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 音 ** --
--オーラ
SE002 = playSeVer2( spep_0 + 20, 1407, "",spep_0 + 124, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 20, SE002, 151 );
SE003 = playSeVer2( spep_0 + 20, 1181, "",spep_0 + 126, 0, 18, -1);
SE004 = playSeVer2( spep_0 + 20, 1176, "",spep_0 + 130, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 20, SE004, 46 );
SE005 = playSeVer2( spep_0 + 20, 1227, "",spep_0 + 128, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 20, SE005, 73 );

--気ダメ
SE006 = playSeVer2( spep_0 + 18, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE006, 122 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 98f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--オーラ
SE009 = playSeVer2( spep_1 + 84, 1407, "",spep_2 + 72, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 84, SE009, 141 );
SE010 = playSeVer2( spep_1 + 84, 1176, "",spep_2 + 74, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 84, SE010, 48 );
SE008 = playSeVer2( spep_1 + 86, 1227, "",spep_2 + 68, 4, 20, -1);
setStartTimeMs( SE008,  433 );


-------------------------------------------------
-- カードカットイン後〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 962;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カードカットイン後〜フィニッシュ(ef_001)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 188 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 224 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 188 + OFFSET_X, 1, 1 );

setMoveKey( spep_2 + 188 + OFFSET_X, 1, -160.2, -52.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -160.2, -52.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -164.1, -53.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -164.1, -53.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -172.1, -53.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -172.1, -53.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -193.1, -52.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -193.1, -52.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -216.1, -52.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -216.1, -52.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -239.1, -50.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -239.1, -50.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -262.1, -49.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -262.1, -49.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -279.1, -48.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -279.1, -48.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -284.1, -47.8 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -284.1, -47.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -290.1, -46.8 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -290.1, -46.8 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -295.1, -43.8 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -295.1, -43.8 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -300.1, -41.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -300.1, -41.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -300.1, -37.8 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -300.1, -37.8 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -300.1, -34.8 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -300.1, -34.8 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -300.1, -33.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -300.1, -33.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -297.1, -32.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -297.1, -32.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -295.1, -33.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -295.1, -33.8 , 0 );

setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.7, 1.7 );

setRotateKey( spep_2 + 188 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 0 );

setGaussBlurKey( spep_2 + 188 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 244 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_2 + 386 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 456 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 386 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 386 + OFFSET_X, 1, -4, 1.8 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -4, 1.8 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -12, 4 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -12, 4 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -9, -2.6 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -9, -2.6 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -7.7, -5.1 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -7.7, -5.1 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -6.9, -9.9 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -6.9, -9.9 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -8.7, -8.4 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -8.7, -8.4 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -15.2, -12.6 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -15.2, -12.6 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -16.1, -11.2 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -16.1, -11.2 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -22.3, -8.4 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -22.3, -8.4 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -23, -23.9 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -23, -23.9 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 19, -23.1 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 19, -23.1 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 31, -16 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 31, -16 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 30.9, -28.1 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 30.9, -28.1 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 31.1, -28 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 31.1, -28 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 27.4, -31.5 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 27.4, -31.5 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -193.5, -60.4 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -193.5, -60.4 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -207.7, -35.6 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -207.7, -35.6 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -221, -48.7 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -221, -48.7 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -249.7, -34.4 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -249.7, -34.4 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -271.2, -35.6 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -271.2, -35.6 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -241.2, -38 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -241.2, -38 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -182.2, -44 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -182.2, -44 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -175.1, -68.1 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -175.1, -68.1 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -202.7, -78.9 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -202.7, -78.9 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -202.7, -30.8 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -202.7, -30.8 , 0 );

setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 7.46, 7.46 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 7.46, 7.46 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_2 + 386 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, 0 );

setGaussBlurKey( spep_2 + 386 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 456 + OFFSET_X, 1, 0 );


--敵の動き3
setDisp( spep_2 + 492 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 498 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 492 + OFFSET_X, 1, -302.3, -98.1 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -302.3, -98.1 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -626.3, -90.9 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -626.3, -90.9 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -665.9, -128.1 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -665.9, -128.1 , 0 );

setScaleKey( spep_2 + 492 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 498 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_2 + 492 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 498 + OFFSET_X, 1, 0 );

setGaussBlurKey( spep_2 + 492 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 498 + OFFSET_X, 1, 0 );


--敵の動き4
setDisp( spep_2 + 512 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 522 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 512 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 512 + OFFSET_X, 1, 6.1, -352 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 6.1, -352 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 10, -140 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 10, -140 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 12.3, 60 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 12.3, 60 , 0 );

setScaleKey( spep_2 + 512 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 0.18, 0.18 );

setRotateKey( spep_2 + 512 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 522 + OFFSET_X, 1, 27 );

setGaussBlurKey( spep_2 + 512 + OFFSET_X, 1, 0.0008 );
setGaussBlurKey( spep_2 + 515 + OFFSET_X, 1, 0.0008 );
setGaussBlurKey( spep_2 + 516 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 522 + OFFSET_X, 1, 0 );


--敵の動き5
setDisp( spep_2 + 712 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 766 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 712 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 712 + OFFSET_X, 1, 303.7, -144 , 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, 303.7, -144 , 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, 300.4, -135.7 , 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, 300.4, -135.7 , 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, 290.9, -111.7 , 0 );
setMoveKey( spep_2 + 717 + OFFSET_X, 1, 290.9, -111.7 , 0 );
setMoveKey( spep_2 + 718 + OFFSET_X, 1, 262.2, -39.6 , 0 );
setMoveKey( spep_2 + 719 + OFFSET_X, 1, 262.2, -39.6 , 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, 234, 31.7 , 0 );
setMoveKey( spep_2 + 721 + OFFSET_X, 1, 234, 31.7 , 0 );
setMoveKey( spep_2 + 722 + OFFSET_X, 1, 224.1, 56.7 , 0 );
setMoveKey( spep_2 + 723 + OFFSET_X, 1, 224.1, 56.7 , 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, 221.1, 64 , 0 );
setMoveKey( spep_2 + 725 + OFFSET_X, 1, 221.1, 64 , 0 );
setMoveKey( spep_2 + 726 + OFFSET_X, 1, 217.7, 62.5 , 0 );
setMoveKey( spep_2 + 727 + OFFSET_X, 1, 217.7, 62.5 , 0 );
setMoveKey( spep_2 + 728 + OFFSET_X, 1, 214.1, 60.9 , 0 );
setMoveKey( spep_2 + 729 + OFFSET_X, 1, 214.1, 60.9 , 0 );
setMoveKey( spep_2 + 730 + OFFSET_X, 1, 210.4, 59.2 , 0 );
setMoveKey( spep_2 + 731 + OFFSET_X, 1, 210.4, 59.2 , 0 );
setMoveKey( spep_2 + 732 + OFFSET_X, 1, 206.4, 57.5 , 0 );
setMoveKey( spep_2 + 733 + OFFSET_X, 1, 206.4, 57.5 , 0 );
setMoveKey( spep_2 + 734 + OFFSET_X, 1, 202.3, 55.6 , 0 );
setMoveKey( spep_2 + 735 + OFFSET_X, 1, 202.3, 55.6 , 0 );
setMoveKey( spep_2 + 736 + OFFSET_X, 1, 198, 53.7 , 0 );
setMoveKey( spep_2 + 737 + OFFSET_X, 1, 198, 53.7 , 0 );
setMoveKey( spep_2 + 738 + OFFSET_X, 1, 193.6, 51.8 , 0 );
setMoveKey( spep_2 + 739 + OFFSET_X, 1, 193.6, 51.8 , 0 );
setMoveKey( spep_2 + 740 + OFFSET_X, 1, 189.1, 49.8 , 0 );
setMoveKey( spep_2 + 741 + OFFSET_X, 1, 189.1, 49.8 , 0 );
setMoveKey( spep_2 + 742 + OFFSET_X, 1, 184.5, 47.8 , 0 );
setMoveKey( spep_2 + 743 + OFFSET_X, 1, 184.5, 47.8 , 0 );
setMoveKey( spep_2 + 744 + OFFSET_X, 1, 179.9, 45.7 , 0 );
setMoveKey( spep_2 + 745 + OFFSET_X, 1, 179.9, 45.7 , 0 );
setMoveKey( spep_2 + 746 + OFFSET_X, 1, 175.2, 43.7 , 0 );
setMoveKey( spep_2 + 747 + OFFSET_X, 1, 175.2, 43.7 , 0 );
setMoveKey( spep_2 + 748 + OFFSET_X, 1, 170.6, 41.6 , 0 );
setMoveKey( spep_2 + 749 + OFFSET_X, 1, 170.6, 41.6 , 0 );
setMoveKey( spep_2 + 750 + OFFSET_X, 1, 166.1, 39.6 , 0 );
setMoveKey( spep_2 + 751 + OFFSET_X, 1, 166.1, 39.6 , 0 );
setMoveKey( spep_2 + 752 + OFFSET_X, 1, 161.7, 37.7 , 0 );
setMoveKey( spep_2 + 753 + OFFSET_X, 1, 161.7, 37.7 , 0 );
setMoveKey( spep_2 + 754 + OFFSET_X, 1, 157.5, 35.8 , 0 );
setMoveKey( spep_2 + 755 + OFFSET_X, 1, 157.5, 35.8 , 0 );
setMoveKey( spep_2 + 756 + OFFSET_X, 1, 153.4, 34 , 0 );
setMoveKey( spep_2 + 757 + OFFSET_X, 1, 153.4, 34 , 0 );
setMoveKey( spep_2 + 758 + OFFSET_X, 1, 149.5, 32.3 , 0 );
setMoveKey( spep_2 + 759 + OFFSET_X, 1, 149.5, 32.3 , 0 );
setMoveKey( spep_2 + 760 + OFFSET_X, 1, 145.9, 30.7 , 0 );
setMoveKey( spep_2 + 761 + OFFSET_X, 1, 145.9, 30.7 , 0 );
setMoveKey( spep_2 + 762 + OFFSET_X, 1, 142.6, 29.2 , 0 );
setMoveKey( spep_2 + 763 + OFFSET_X, 1, 142.6, 29.2 , 0 );
setMoveKey( spep_2 + 764 + OFFSET_X, 1, 139.8, 27.9 , 0 );
setMoveKey( spep_2 + 766 + OFFSET_X, 1, 139.8, 27.9 , 0 );

setScaleKey( spep_2 + 712 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 713 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 714 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 717 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 718 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 719 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 720 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 725 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 726 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 727 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 728 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 729 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 730 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 731 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 732 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 733 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 734 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 735 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 736 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 737 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 738 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 739 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 740 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 741 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 742 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 743 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 744 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 745 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 746 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 747 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 748 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 749 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 750 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 751 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 752 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 753 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 754 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 755 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 756 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 757 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 758 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 759 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 760 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 761 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 762 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 763 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 764 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 766 + OFFSET_X, 1, 2.8, 2.8 );

setRotateKey( spep_2 + 712 + OFFSET_X, 1, -117 );
setRotateKey( spep_2 + 766 + OFFSET_X, 1, -117 );

setGaussBlurKey( spep_2 + 712 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 766 + OFFSET_X, 1, 0 );


--敵の動き6
setDisp( spep_2 + 902 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 918 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 902 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 902 + OFFSET_X, 1, 228.9, -86.9 , 0 );
setMoveKey( spep_2 + 903 + OFFSET_X, 1, 228.9, -86.9 , 0 );
setMoveKey( spep_2 + 904 + OFFSET_X, 1, 251.2, -96.2 , 0 );
setMoveKey( spep_2 + 905 + OFFSET_X, 1, 251.2, -96.2 , 0 );
setMoveKey( spep_2 + 906 + OFFSET_X, 1, 273.6, -105.6 , 0 );
setMoveKey( spep_2 + 907 + OFFSET_X, 1, 273.6, -105.6 , 0 );
setMoveKey( spep_2 + 908 + OFFSET_X, 1, 295.9, -114.9 , 0 );
setMoveKey( spep_2 + 909 + OFFSET_X, 1, 295.9, -114.9 , 0 );
setMoveKey( spep_2 + 910 + OFFSET_X, 1, 288.9, -146.9 , 0 );
setMoveKey( spep_2 + 911 + OFFSET_X, 1, 288.9, -146.9 , 0 );
setMoveKey( spep_2 + 912 + OFFSET_X, 1, 276.9, -142.9 , 0 );
setMoveKey( spep_2 + 913 + OFFSET_X, 1, 276.9, -142.9 , 0 );
setMoveKey( spep_2 + 914 + OFFSET_X, 1, 282.9, -96.9 , 0 );
setMoveKey( spep_2 + 915 + OFFSET_X, 1, 282.9, -96.9 , 0 );
setMoveKey( spep_2 + 916 + OFFSET_X, 1, 288.9, -97.9 , 0 );
setMoveKey( spep_2 + 918 + OFFSET_X, 1, 288.9, -97.9 , 0 );

setScaleKey( spep_2 + 902 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 903 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 904 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 905 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 906 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 907 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 908 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 918 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_2 + 902 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 918 + OFFSET_X, 1, 0 );

setGaussBlurKey( spep_2 + 902 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 918 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--ダッシュ
SE011 = playSeVer2( spep_2 + 20, 1137, "",spep_2 + 90, 0, 32, -1);
SE012 = playSeVer2( spep_2 + 20, 1182, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 20, 1277, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 20, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE014, 68 );
SE015 = playSeVer2( spep_2 + 46, 1497, "",spep_2 + 110, 0, 28, -1);

--飛び込んでくる
SE016 = playSeVer2( spep_2 + 52, 1278, "",spep_2 + 232, 0, 34, -1);
SE017 = playSeVer2( spep_2 + 54, 1188, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 68, 1019, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 132, 1019, "",spep_2 + 208, 0, 14, -1);

--拳握る
SE020 = playSeVer2( spep_2 + 150, 1233, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 162, 1006, "", 0, 0, 0, -1);

--瞬間移動
SE022 = playSeVer2( spep_2 + 180, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 180, SE022, 79 );
SE023 = playSeVer2( spep_2 + 182, 1109, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 214; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止 

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
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
--モノクロ
SE024 = playSeVer2( spep_2 + 206, 1328, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 214, 1391, "",spep_2 + 278, 0, 24, -1);
SE026 = playSeVer2( spep_2 + 214, 1466, "", 0, 0, 0, -1);

--ヒット
SE027 = playSeVer2( spep_2 + 248, 1187, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 248, 1049, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 248, 1024, "", 0, 0, 0, -1);

--敵飛んでいく
SE030 = playSeVer2( spep_2 + 286, 1183, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 290, 1121, "", 0, 0, 0, -1);
setPitch( spep_2 + 290, SE031, 400 );
setTimeStretch( SE031, 1.27, 30, 4 );
SE032 = playSeVer2( spep_2 + 292, 1494, "", 0, 0, 0, -1);
setPitch( spep_2 + 292, SE032, 1200 );
setTimeStretch( SE032, 1.8, 30, 4 );
SE033 = playSeVer2( spep_2 + 350, 1351, "",spep_2 + 516, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 350, SE033, 166 );

--振りかぶる
SE034 = playSeVer2( spep_2 + 450, 1004, "", 0, 0, 0, -1);

--殴り飛ばす
SE035 = playSeVer2( spep_2 + 476, 1120, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 476, 1187, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 476, 1359, "", 0, 0, 0, -1);

--岩激突
SE038 = playSeVer2( spep_2 + 514, 1159, "", 0, 0, 0, -1);

--追いかける
SE039 = playSeVer2( spep_2 + 548, 1452, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 548, 1314, "",spep_2 + 732, 0, 54, -1);
SE041 = playSeVer2( spep_2 + 558, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 558, SE041, 52 );
SE043 = playSeVer2( spep_2 + 588, 1117, "", 0, 0, 0, -1);

--光連続
SE044 = playSeVer2( spep_2 + 612, 1371, "",spep_2 + 692, 0, 40, -1);
SE042 = playSeVer2( spep_2 + 614, 1173, "",spep_2 + 698, 4, 32, -1);
setSeVolumeByWorkId( spep_2 + 614, SE042, 141 );
setStartTimeMs( SE042,  600 );

--爆発
SE045 = playSeVer2( spep_2 + 642, 1067, "", 0, 0, 0, -1);

--翻る
SE046 = playSeVer2( spep_2 + 670, 1119, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 670, 63, "",spep_2 + 768, 0, 38, -1);
SE049 = playSeVer2( spep_2 + 708, 1407, "",spep_2 + 844, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 708, SE049, 153 );
SE048 = playSeVer2( spep_2 + 710, 1227, "",spep_2 + 844, 4, 36, -1);
setStartTimeMs( SE048,  433 );

--顔力む
SE050 = playSeVer2( spep_2 + 798, 1180, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 798, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 798, SE051, 65 );
SE052 = playSeVer2( spep_2 + 798, 1475, "", 0, 0, 0, -1);

--爆発
SE053 = playSeVer2( spep_2 + 832, 1011, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE054 = playSeVer2( spep_2 + 880, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 880, SE054, 79 );
SE055 = playSeVer2( spep_2 + 882, 1277, "", 0, 0, 0, -1);

--壁激突
SE056 = playSeVer2( spep_2 + 908, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 834); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 962f -0f

end