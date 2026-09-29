--1034200:LR_超サイヤ人3孫悟空_必殺技:瞬間移動メテオクラッシュ
--sp_effect_a3_00131
--sp3051

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164583; --本体 ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);

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

--setAlphaKey( 0, 1, 255 );

adjustAttackerLabel( 0, 205);

ENABLE_AUTO_TIME_STRETCH(0.68);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 1110;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --坂かけおりる
        SE076 = playSeVer2( spep_0 + 1110 + 3, 1476, "", 0, 0, 0, -1);
        SE077 = playSeVer2( spep_0 + 1110 + 3, 1314, "",spep_0 + 1291, 0, 99, -1);

    else
        setupMovie(0, SP_01, 0, 1);
    end

else

    setupMovie(0, SP_01, 0, 1);

    mirror = -1;

    --SP_01  = SP_01r; -- 敵側エフェクトがある場合のみ

end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 本体
-------------------------------------------------
MAX_FRAME_0 = 1368;
CARD_FRAME = 396;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 本体(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 1142; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   --speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   --setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

--ctgogo_x = 0; -- 演出によって白目にかからないように調整

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, ctgogo_x * mirror, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7 * mirror, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7 * mirror, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0 * mirror, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09 * mirror, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39 * mirror, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69 * mirror, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);
--------------------------------------
-- 敵キャラクター
--------------------------------------
--敵の動き1
setDisp( spep_0 + 30 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 48 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 30 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 30 + OFFSET_X, 1, 146 * mirror, -865 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 146 * mirror, -865 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -187 * mirror, -923.7 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -187 * mirror, -923.7 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -520 * mirror, -982.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -520 * mirror, -982.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -425 * mirror, -954.1 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -425 * mirror, -954.1 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -248.9 * mirror, -902.1 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -248.9 * mirror, -902.1 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -154.1 * mirror, -874.1 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -154.1 * mirror, -874.1 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -117.8 * mirror, -908.2 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -117.8 * mirror, -908.2 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -116 * mirror, -934.2 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -116 * mirror, -934.2 , 0 );

setScaleKey( spep_0 + 30 + OFFSET_X, 1, 7.64, 7.64 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 7.64, 7.64 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 7.81, 7.81 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 7.81, 7.81 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 7.92, 7.92 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 7.92, 7.92 );

setRotateKey( spep_0 + 30 + OFFSET_X, 1, 108 * mirror );
setRotateKey( spep_0 + 41 + OFFSET_X, 1, 108 * mirror );
setRotateKey( spep_0 + 42 + OFFSET_X, 1, 108.3 * mirror );
setRotateKey( spep_0 + 43 + OFFSET_X, 1, 108.3 * mirror );
setRotateKey( spep_0 + 44 + OFFSET_X, 1, 108.6 * mirror );
setRotateKey( spep_0 + 48 + OFFSET_X, 1, 108.6 * mirror );


--敵の動き2
setDisp( spep_0 + 78 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 94 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 78 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 78 + OFFSET_X, 1, -90.3 * mirror, 99.5 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -90.3 * mirror, 99.5 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -91.9 * mirror, 100.4 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -91.9 * mirror, 100.4 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -92.7 * mirror, 101.8 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -92.7 * mirror, 101.8 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -86.3 * mirror, 103.3 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -86.3 * mirror, 103.3 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -79.7 * mirror, 104.8 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -79.7 * mirror, 104.8 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -76.2 * mirror, 106.2 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -76.2 * mirror, 106.2 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -80.8 * mirror, 108.1 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -80.8 * mirror, 108.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -89.3 * mirror, 101.3 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -89.3 * mirror, 101.3 , 0 );

setScaleKey( spep_0 + 78 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 0.23, 0.23 );

setRotateKey( spep_0 + 78 + OFFSET_X, 1, 27.8 * mirror );
setRotateKey( spep_0 + 81 + OFFSET_X, 1, 27.8 * mirror );
setRotateKey( spep_0 + 82 + OFFSET_X, 1, 27.6 * mirror );
setRotateKey( spep_0 + 85 + OFFSET_X, 1, 27.6 * mirror );
setRotateKey( spep_0 + 86 + OFFSET_X, 1, 27.3 * mirror );
setRotateKey( spep_0 + 87 + OFFSET_X, 1, 27.3 * mirror );
setRotateKey( spep_0 + 88 + OFFSET_X, 1, 27 * mirror );
setRotateKey( spep_0 + 89 + OFFSET_X, 1, 27 * mirror );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, 26.5 * mirror );
setRotateKey( spep_0 + 91 + OFFSET_X, 1, 26.5 * mirror );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, 25.8 * mirror );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, 25.8 * mirror );


--敵の動き3
setDisp( spep_0 + 98 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 100 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 98 + OFFSET_X, 1, 234.7 * mirror, 59 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 234.7 * mirror, 59 , 0 );

setScaleKey( spep_0 + 98 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 0.57, 0.57 );

setRotateKey( spep_0 + 98 + OFFSET_X, 1, 22.3 * mirror );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, 22.3 * mirror );


--敵の動き4
setDisp( spep_0 + 106 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 108 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 106 + OFFSET_X, 1, 641.5 * mirror, -4.4 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 641.5 * mirror, -4.4 , 0 );

setScaleKey( spep_0 + 106 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 1.58, 1.58 );

setRotateKey( spep_0 + 106 + OFFSET_X, 1, 19.5 * mirror );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, 19.5 * mirror );


--敵の動き5
setDisp( spep_0 + 218 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 230 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 218 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 218 + OFFSET_X, 1, -15 * mirror, 429.9 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -15 * mirror, 429.9 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -14.9 * mirror, 659.9 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -14.9 * mirror, 659.9 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -14.9 * mirror, 849.9 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -14.9 * mirror, 849.9 , 0 );

setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.12, 0.12 );

setRotateKey( spep_0 + 218 + OFFSET_X, 1, 18 * mirror );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, 18 * mirror );


--敵の動き6
setDisp( spep_0 + 270 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 330 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 270 + OFFSET_X, 1, 294.9 * mirror, -146.9 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 294.9 * mirror, -146.9 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 294.9 * mirror, -148.7 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 294.9 * mirror, -148.7 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 294.9 * mirror, -152.9 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 294.9 * mirror, -152.9 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 294.9 * mirror, -159.1 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 294.9 * mirror, -159.1 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 294.9 * mirror, -166.6 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 294.9 * mirror, -166.6 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 295 * mirror, -175.2 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 295 * mirror, -175.2 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 294.9 * mirror, -184.9 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 294.9 * mirror, -184.9 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 295 * mirror, -195.4 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 295 * mirror, -195.4 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 294.8 * mirror, -207 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 294.8 * mirror, -207 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 295 * mirror, -219.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 295 * mirror, -219.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 295 * mirror, -234.5 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 295 * mirror, -234.5 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 295 * mirror, -249.1 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 295 * mirror, -249.1 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 295 * mirror, -263.9 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 295 * mirror, -263.9 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 295 * mirror, -302 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 295 * mirror, -302 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 294.9 * mirror, -424.5 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 294.9 * mirror, -424.5 , 0 );

setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 6.99, 6.99 );

setRotateKey( spep_0 + 270 + OFFSET_X, 1, 30.6 * mirror );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 30.6 * mirror );


--敵の動き7
setDisp( spep_0 + 372 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 398 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 372 + OFFSET_X, 1, 107 );
changeAnimeBySide( spep_0 + 374 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 372 + OFFSET_X, 1, -610.1 * mirror, -240 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -610.1 * mirror, -240 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 17.2 * mirror, 123.6 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 17.2 * mirror, 123.6 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 69.3 * mirror, 37.2 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 69.3 * mirror, 37.2 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 132 * mirror, 32.5 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 132 * mirror, 32.5 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 121.9 * mirror, -11.8 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 121.9 * mirror, -11.8 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 159.8 * mirror, 2.3 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 159.8 * mirror, 2.3 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 183.2 * mirror, -6.5 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 183.2 * mirror, -6.5 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 170 * mirror, -12.8 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 170 * mirror, -12.8 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 188.2 * mirror, -11.1 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 188.2 * mirror, -11.1 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 190.6 * mirror, -24.4 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 190.6 * mirror, -24.4 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 183.3 * mirror, -16.2 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 183.3 * mirror, -16.2 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 199.5 * mirror, -28.1 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 199.5 * mirror, -28.1 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 200.9 * mirror, -19.8 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 200.9 * mirror, -19.8 , 0 );

setScaleKey( spep_0 + 372 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.16, 0.16 );

setRotateKey( spep_0 + 372 + OFFSET_X, 1, 4.5 * mirror );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, 4.5 * mirror );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, 38 * mirror );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, 38 * mirror );


--敵の動き8
setDisp( spep_0 + 556 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 562 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 556 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 556 + OFFSET_X, 1, -89.4 * mirror, -197.6 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, -89.4 * mirror, -197.6 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, -8.5 * mirror, -140.6 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, -8.5 * mirror, -140.6 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 75.4 * mirror, 458.4 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 75.4 * mirror, 458.4 , 0 );

setScaleKey( spep_0 + 556 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 1.65, 1.65 );

setRotateKey( spep_0 + 556 + OFFSET_X, 1, 32.3 * mirror );
setRotateKey( spep_0 + 559 + OFFSET_X, 1, 32.3 * mirror );
setRotateKey( spep_0 + 560 + OFFSET_X, 1, -42 * mirror );
setRotateKey( spep_0 + 562 + OFFSET_X, 1, -42 * mirror );


--敵の動き9
setDisp( spep_0 + 590 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 654 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 590 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 590 + OFFSET_X, 1, -374.9 * mirror, -1020 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, -374.9 * mirror, -1020 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, -40.4 * mirror, -276 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, -40.4 * mirror, -276 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 273 * mirror, 461.9 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 273 * mirror, 461.9 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 288.4 * mirror, 500.6 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 288.4 * mirror, 500.6 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 288.8 * mirror, 527.2 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 288.8 * mirror, 527.2 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 316.2 * mirror, 550.9 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 316.2 * mirror, 550.9 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 325.6 * mirror, 586.7 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, 325.6 * mirror, 586.7 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 347.6 * mirror, 604.8 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, 347.6 * mirror, 604.8 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 358.1 * mirror, 632.1 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 358.1 * mirror, 632.1 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 374.4 * mirror, 647.5 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 374.4 * mirror, 647.5 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 378.9 * mirror, 674.9 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 378.9 * mirror, 674.9 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 322 * mirror, 515.3 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, 322 * mirror, 515.3 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 340.3 * mirror, 102.5 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, 340.3 * mirror, 102.5 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 344.9 * mirror, 57.4 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, 344.9 * mirror, 57.4 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 337.4 * mirror, 57.5 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, 337.4 * mirror, 57.5 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, 357.2 * mirror, 30.5 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, 357.2 * mirror, 30.5 , 0 );

setScaleKey( spep_0 + 590 + OFFSET_X, 1, 8.55, 8.55 );
setScaleKey( spep_0 + 593 + OFFSET_X, 1, 8.55, 8.55 );
setScaleKey( spep_0 + 594 + OFFSET_X, 1, 5.92, 5.92 );
setScaleKey( spep_0 + 597 + OFFSET_X, 1, 5.92, 5.92 );
setScaleKey( spep_0 + 598 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 601 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 605 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 609 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 610 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 613 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 614 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 617 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 618 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 621 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 622 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 625 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 626 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 629 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 630 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 633 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 634 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 637 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 638 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_0 + 641 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_0 + 642 + OFFSET_X, 1, 5.38, 5.38 );
setScaleKey( spep_0 + 645 + OFFSET_X, 1, 5.38, 5.38 );
setScaleKey( spep_0 + 646 + OFFSET_X, 1, 5.53, 5.53 );
setScaleKey( spep_0 + 649 + OFFSET_X, 1, 5.53, 5.53 );
setScaleKey( spep_0 + 650 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_0 + 654 + OFFSET_X, 1, 5.68, 5.68 );

setRotateKey( spep_0 + 590 + OFFSET_X, 1, 36 * mirror );
setRotateKey( spep_0 + 593 + OFFSET_X, 1, 36 * mirror );
setRotateKey( spep_0 + 594 + OFFSET_X, 1, -1 * mirror );
setRotateKey( spep_0 + 597 + OFFSET_X, 1, -1 * mirror );
setRotateKey( spep_0 + 598 + OFFSET_X, 1, -38.3 * mirror );
setRotateKey( spep_0 + 601 + OFFSET_X, 1, -38.3 * mirror );
setRotateKey( spep_0 + 602 + OFFSET_X, 1, -25.6 * mirror );
setRotateKey( spep_0 + 605 + OFFSET_X, 1, -25.6 * mirror );
setRotateKey( spep_0 + 606 + OFFSET_X, 1, -13.1 * mirror );
setRotateKey( spep_0 + 609 + OFFSET_X, 1, -13.1 * mirror );
setRotateKey( spep_0 + 610 + OFFSET_X, 1, -0.5 * mirror );
setRotateKey( spep_0 + 613 + OFFSET_X, 1, -0.5 * mirror );
setRotateKey( spep_0 + 614 + OFFSET_X, 1, 11.8 * mirror );
setRotateKey( spep_0 + 617 + OFFSET_X, 1, 11.8 * mirror );
setRotateKey( spep_0 + 618 + OFFSET_X, 1, 18.1 * mirror );
setRotateKey( spep_0 + 633 + OFFSET_X, 1, 18.1 * mirror );
setRotateKey( spep_0 + 634 + OFFSET_X, 1, 25.3 * mirror );
setRotateKey( spep_0 + 637 + OFFSET_X, 1, 25.3 * mirror );
setRotateKey( spep_0 + 638 + OFFSET_X, 1, 16.3 * mirror );
setRotateKey( spep_0 + 641 + OFFSET_X, 1, 16.3 * mirror );
setRotateKey( spep_0 + 642 + OFFSET_X, 1, 15.8 * mirror );
setRotateKey( spep_0 + 645 + OFFSET_X, 1, 15.8 * mirror );
setRotateKey( spep_0 + 646 + OFFSET_X, 1, 15.3 * mirror );
setRotateKey( spep_0 + 649 + OFFSET_X, 1, 15.3 * mirror );
setRotateKey( spep_0 + 650 + OFFSET_X, 1, 14.8 * mirror );
setRotateKey( spep_0 + 654 + OFFSET_X, 1, 14.8 * mirror );


--敵の動き10
setDisp( spep_0 + 712 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 760 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 712 + OFFSET_X, 1, 107 );
changeAnimeBySide( spep_0 + 720 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 728 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 732 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 736 + OFFSET_X, 1, 107 );
changeAnimeBySide( spep_0 + 740 + OFFSET_X, 1, 105 );
changeAnimeBySide( spep_0 + 744 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 752 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 756 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 712 + OFFSET_X, 1, 385.8 * mirror, -191.5 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 385.8 * mirror, -191.5 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 375.2 * mirror, -171.5 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 375.2 * mirror, -171.5 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 274.2 * mirror, -100.7 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, 274.2 * mirror, -100.7 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 267.8 * mirror, -97.5 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, 267.8 * mirror, -97.5 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 281.4 * mirror, -86 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 281.4 * mirror, -86 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 274.7 * mirror, -81.1 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 274.7 * mirror, -81.1 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 336 * mirror, -9.8 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 336 * mirror, -9.8 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 332 * mirror, 0 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 332 * mirror, 0 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 133.4 * mirror, -61.3 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, 133.4 * mirror, -61.3 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 137.3 * mirror, -65 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 137.3 * mirror, -65 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 140.8 * mirror, -55.7 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, 140.8 * mirror, -55.7 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, 134.6 * mirror, -54 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, 134.6 * mirror, -54 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, 53.5 * mirror, 39.7 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 53.5 * mirror, 39.7 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 35.7 * mirror, 33.5 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 35.7 * mirror, 33.5 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 0 * mirror, 102 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 0 * mirror, 102 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, -4.4 * mirror, 98.4 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, -4.4 * mirror, 98.4 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 11.9 * mirror, 89.3 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 11.9 * mirror, 89.3 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 2.3 * mirror, 85.2 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 2.3 * mirror, 85.2 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, -1.8 * mirror, 148.5 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, -1.8 * mirror, 148.5 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, -2.2 * mirror, 164.5 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, -2.2 * mirror, 164.5 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, -24 * mirror, 112.7 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, -24 * mirror, 112.7 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, -14.3 * mirror, 115.3 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, -14.3 * mirror, 115.3 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 13.3 * mirror, 99.3 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 13.3 * mirror, 99.3 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 2.4 * mirror, 112.6 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 2.4 * mirror, 112.6 , 0 );

setScaleKey( spep_0 + 712 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 715 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 716 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 719 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 720 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 735 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 736 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 739 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 740 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 743 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 744 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 747 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 748 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 751 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 752 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 755 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 756 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 760 + OFFSET_X, 1, 0.17, 0.17 );

setRotateKey( spep_0 + 712 + OFFSET_X, 1, -66 * mirror );
setRotateKey( spep_0 + 719 + OFFSET_X, 1, -66 * mirror );
setRotateKey( spep_0 + 720 + OFFSET_X, 1, -26.1 * mirror );
setRotateKey( spep_0 + 723 + OFFSET_X, 1, -26.1 * mirror );
setRotateKey( spep_0 + 724 + OFFSET_X, 1, -18 * mirror );
setRotateKey( spep_0 + 727 + OFFSET_X, 1, -18 * mirror );
setRotateKey( spep_0 + 728 + OFFSET_X, 1, -36 * mirror );
setRotateKey( spep_0 + 731 + OFFSET_X, 1, -36 * mirror );
setRotateKey( spep_0 + 732 + OFFSET_X, 1, 10.8 * mirror );
setRotateKey( spep_0 + 735 + OFFSET_X, 1, 10.8 * mirror );
setRotateKey( spep_0 + 736 + OFFSET_X, 1, 10 * mirror );
setRotateKey( spep_0 + 739 + OFFSET_X, 1, 10 * mirror );
setRotateKey( spep_0 + 740 + OFFSET_X, 1, -35 * mirror );
setRotateKey( spep_0 + 743 + OFFSET_X, 1, -35 * mirror );
setRotateKey( spep_0 + 744 + OFFSET_X, 1, 17.8 * mirror );
setRotateKey( spep_0 + 747 + OFFSET_X, 1, 17.8 * mirror );
setRotateKey( spep_0 + 748 + OFFSET_X, 1, -65.2 * mirror );
setRotateKey( spep_0 + 751 + OFFSET_X, 1, -65.2 * mirror );
setRotateKey( spep_0 + 752 + OFFSET_X, 1, -36 * mirror );
setRotateKey( spep_0 + 755 + OFFSET_X, 1, -36 * mirror );
setRotateKey( spep_0 + 756 + OFFSET_X, 1, -18 * mirror );
setRotateKey( spep_0 + 760 + OFFSET_X, 1, -18 * mirror );


--敵の動き11
setDisp( spep_0 + 822 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 842 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 822 + OFFSET_X, 1, 107 );
changeAnimeBySide( spep_0 + 830 + OFFSET_X, 1, 7 );
changeAnimeBySide( spep_0 + 838 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 822 + OFFSET_X, 1, 121.5 * mirror, -184.3 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, 121.5 * mirror, -184.3 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, 115.3 * mirror, -181.9 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, 115.3 * mirror, -181.9 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, 116.2 * mirror, -233.3 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, 116.2 * mirror, -233.3 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, 126.1 * mirror, -230.9 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, 126.1 * mirror, -230.9 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, 3.2 * mirror, -310.1 , 0 );
setMoveKey( spep_0 + 831 + OFFSET_X, 1, 3.2 * mirror, -310.1 , 0 );
setMoveKey( spep_0 + 832 + OFFSET_X, 1, 0.5 * mirror, -321.1 , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, 0.5 * mirror, -321.1 , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, -34.2 * mirror, -606.3 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, -34.2 * mirror, -606.3 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, -38.2 * mirror, -618.6 , 0 );
setMoveKey( spep_0 + 837 + OFFSET_X, 1, -38.2 * mirror, -618.6 , 0 );
setMoveKey( spep_0 + 838 + OFFSET_X, 1, 162.7 * mirror, -899.7 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, 162.7 * mirror, -899.7 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, 163.1 * mirror, -892.4 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, 163.1 * mirror, -892.4 , 0 );

setScaleKey( spep_0 + 822 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 825 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 826 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 829 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 830 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 833 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 834 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 837 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 838 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 842 + OFFSET_X, 1, 2.55, 2.55 );

setRotateKey( spep_0 + 822 + OFFSET_X, 1, 97.3 * mirror );
setRotateKey( spep_0 + 829 + OFFSET_X, 1, 97.3 * mirror );
setRotateKey( spep_0 + 830 + OFFSET_X, 1, -73 * mirror );
setRotateKey( spep_0 + 837 + OFFSET_X, 1, -73 * mirror );
setRotateKey( spep_0 + 838 + OFFSET_X, 1, 97.3 * mirror );
setRotateKey( spep_0 + 842 + OFFSET_X, 1, 97.3 * mirror );


--敵の動き12
setDisp( spep_0 + 964 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1020 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 964 + OFFSET_X, 1, 5 );
changeAnimeBySide( spep_0 + 970 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 964 + OFFSET_X, 1, 50.6 * mirror, 33.5 , 0 );
setMoveKey( spep_0 + 965 + OFFSET_X, 1, 50.6 * mirror, 33.5 , 0 );
setMoveKey( spep_0 + 966 + OFFSET_X, 1, 50.6 * mirror, 196 , 0 );
setMoveKey( spep_0 + 967 + OFFSET_X, 1, 50.6 * mirror, 196 , 0 );
setMoveKey( spep_0 + 968 + OFFSET_X, 1, 50.6 * mirror, 233.2 , 0 );
setMoveKey( spep_0 + 969 + OFFSET_X, 1, 50.6 * mirror, 233.2 , 0 );
setMoveKey( spep_0 + 970 + OFFSET_X, 1, -58.4 * mirror, 265.1 , 0 );
setMoveKey( spep_0 + 971 + OFFSET_X, 1, -58.4 * mirror, 265.1 , 0 );
setMoveKey( spep_0 + 972 + OFFSET_X, 1, -61.2 * mirror, 252.7 , 0 );
setMoveKey( spep_0 + 973 + OFFSET_X, 1, -61.2 * mirror, 252.7 , 0 );
setMoveKey( spep_0 + 974 + OFFSET_X, 1, -51.6 * mirror, 185 , 0 );
setMoveKey( spep_0 + 975 + OFFSET_X, 1, -51.6 * mirror, 185 , 0 );
setMoveKey( spep_0 + 976 + OFFSET_X, 1, -30.1 * mirror, -45.8 , 0 );
setMoveKey( spep_0 + 977 + OFFSET_X, 1, -30.1 * mirror, -45.8 , 0 );
setMoveKey( spep_0 + 978 + OFFSET_X, 1, -19.6 * mirror, -175.8 , 0 );
setMoveKey( spep_0 + 979 + OFFSET_X, 1, -19.6 * mirror, -175.8 , 0 );
setMoveKey( spep_0 + 980 + OFFSET_X, 1, -6.2 * mirror, -251 , 0 );
setMoveKey( spep_0 + 981 + OFFSET_X, 1, -6.2 * mirror, -251 , 0 );
setMoveKey( spep_0 + 982 + OFFSET_X, 1, 0.5 * mirror, -307.7 , 0 );
setMoveKey( spep_0 + 983 + OFFSET_X, 1, 0.5 * mirror, -307.7 , 0 );
setMoveKey( spep_0 + 984 + OFFSET_X, 1, 8 * mirror, -366 , 0 );
setMoveKey( spep_0 + 985 + OFFSET_X, 1, 8 * mirror, -366 , 0 );
setMoveKey( spep_0 + 986 + OFFSET_X, 1, 10.8 * mirror, -404.1 , 0 );
setMoveKey( spep_0 + 987 + OFFSET_X, 1, 10.8 * mirror, -404.1 , 0 );
setMoveKey( spep_0 + 988 + OFFSET_X, 1, 14.3 * mirror, -432.8 , 0 );
setMoveKey( spep_0 + 989 + OFFSET_X, 1, 14.3 * mirror, -432.8 , 0 );
setMoveKey( spep_0 + 990 + OFFSET_X, 1, 9.9 * mirror, -454.7 , 0 );
setMoveKey( spep_0 + 991 + OFFSET_X, 1, 9.9 * mirror, -454.7 , 0 );
setMoveKey( spep_0 + 992 + OFFSET_X, 1, 11.2 * mirror, -467.9 , 0 );
setMoveKey( spep_0 + 993 + OFFSET_X, 1, 11.2 * mirror, -467.9 , 0 );
setMoveKey( spep_0 + 994 + OFFSET_X, 1, 12.2 * mirror, -478.8 , 0 );
setMoveKey( spep_0 + 995 + OFFSET_X, 1, 12.2 * mirror, -478.8 , 0 );
setMoveKey( spep_0 + 996 + OFFSET_X, 1, 13 * mirror, -488.1 , 0 );
setMoveKey( spep_0 + 997 + OFFSET_X, 1, 13 * mirror, -488.1 , 0 );
setMoveKey( spep_0 + 998 + OFFSET_X, 1, 13.8 * mirror, -496.2 , 0 );
setMoveKey( spep_0 + 999 + OFFSET_X, 1, 13.8 * mirror, -496.2 , 0 );
setMoveKey( spep_0 + 1000 + OFFSET_X, 1, 14.5 * mirror, -503.2 , 0 );
setMoveKey( spep_0 + 1001 + OFFSET_X, 1, 14.5 * mirror, -503.2 , 0 );
setMoveKey( spep_0 + 1002 + OFFSET_X, 1, 15 * mirror, -509.6 , 0 );
setMoveKey( spep_0 + 1003 + OFFSET_X, 1, 15 * mirror, -509.6 , 0 );
setMoveKey( spep_0 + 1004 + OFFSET_X, 1, 15.5 * mirror, -515.3 , 0 );
setMoveKey( spep_0 + 1005 + OFFSET_X, 1, 15.5 * mirror, -515.3 , 0 );
setMoveKey( spep_0 + 1006 + OFFSET_X, 1, 15.9 * mirror, -520.4 , 0 );
setMoveKey( spep_0 + 1007 + OFFSET_X, 1, 15.9 * mirror, -520.4 , 0 );
setMoveKey( spep_0 + 1008 + OFFSET_X, 1, 16.3 * mirror, -524.8 , 0 );
setMoveKey( spep_0 + 1009 + OFFSET_X, 1, 16.3 * mirror, -524.8 , 0 );
setMoveKey( spep_0 + 1010 + OFFSET_X, 1, 3.7 * mirror, -535.3 , 0 );
setMoveKey( spep_0 + 1011 + OFFSET_X, 1, 3.7 * mirror, -535.3 , 0 );
setMoveKey( spep_0 + 1012 + OFFSET_X, 1, 25.3 * mirror, -542.9 , 0 );
setMoveKey( spep_0 + 1013 + OFFSET_X, 1, 25.3 * mirror, -542.9 , 0 );
setMoveKey( spep_0 + 1014 + OFFSET_X, 1, 21 * mirror, -529.8 , 0 );
setMoveKey( spep_0 + 1015 + OFFSET_X, 1, 21 * mirror, -529.8 , 0 );
setMoveKey( spep_0 + 1016 + OFFSET_X, 1, 6.6 * mirror, -534.4 , 0 );
setMoveKey( spep_0 + 1017 + OFFSET_X, 1, 6.6 * mirror, -534.4 , 0 );
setMoveKey( spep_0 + 1018 + OFFSET_X, 1, 32.3 * mirror, -529 , 0 );
setMoveKey( spep_0 + 1019 + OFFSET_X, 1, 32.3 * mirror, -529 , 0 );
setMoveKey( spep_0 + 1020 + OFFSET_X, 1, 17.5 * mirror, -540.5 , 0 );

setScaleKey( spep_0 + 964 + OFFSET_X, 1, 9.99, 9.99 );
setScaleKey( spep_0 + 965 + OFFSET_X, 1, 9.99, 9.99 );
setScaleKey( spep_0 + 966 + OFFSET_X, 1, 4.46, 4.46 );
setScaleKey( spep_0 + 967 + OFFSET_X, 1, 4.46, 4.46 );
setScaleKey( spep_0 + 968 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 969 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 970 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 973 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 974 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 975 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 976 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 977 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 978 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 979 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 980 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 981 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 982 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 983 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 984 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 985 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 986 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 987 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 988 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 989 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 990 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 991 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 992 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 993 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 994 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 995 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 996 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 997 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 998 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 999 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 1000 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 1001 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 1002 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 1003 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 1004 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 1005 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 1006 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 1007 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 1008 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 1009 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 1010 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 1011 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 1012 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 1013 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 1014 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 1017 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 1018 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 1020 + OFFSET_X, 1, 0.11, 0.11 );

setRotateKey( spep_0 + 964 + OFFSET_X, 1, 18 * mirror );
setRotateKey( spep_0 + 969 + OFFSET_X, 1, 18 * mirror );
setRotateKey( spep_0 + 970 + OFFSET_X, 1, -40 * mirror );
setRotateKey( spep_0 + 1020 + OFFSET_X, 1, -40 * mirror );


--敵の動き13
setDisp( spep_0 + 1222 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1232 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 1222 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 1222 + OFFSET_X, 1, 828.1 * mirror, -933.1 , 0 );
setMoveKey( spep_0 + 1223 + OFFSET_X, 1, 828.1 * mirror, -933.1 , 0 );
setMoveKey( spep_0 + 1224 + OFFSET_X, 1, 747.8 * mirror, -858.8 , 0 );
setMoveKey( spep_0 + 1225 + OFFSET_X, 1, 747.8 * mirror, -858.8 , 0 );
setMoveKey( spep_0 + 1226 + OFFSET_X, 1, 574.9 * mirror, -681.7 , 0 );
setMoveKey( spep_0 + 1227 + OFFSET_X, 1, 574.9 * mirror, -681.7 , 0 );
setMoveKey( spep_0 + 1228 + OFFSET_X, 1, 397.9 * mirror, -486.3 , 0 );
setMoveKey( spep_0 + 1229 + OFFSET_X, 1, 397.9 * mirror, -486.3 , 0 );
setMoveKey( spep_0 + 1230 + OFFSET_X, 1, 274.2 * mirror, -344.1 , 0 );
setMoveKey( spep_0 + 1232 + OFFSET_X, 1, 274.2 * mirror, -344.1 , 0 );

setScaleKey( spep_0 + 1222 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 1232 + OFFSET_X, 1, 2.56, 2.56 );

setRotateKey( spep_0 + 1222 + OFFSET_X, 1, 52.1 * mirror );
setRotateKey( spep_0 + 1232 + OFFSET_X, 1, 52.1 * mirror );


--敵の動き14
setDisp( spep_0 + 1240 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1268 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 1240 + OFFSET_X, 1, 209.3 * mirror, -317.9 , 0 );
setMoveKey( spep_0 + 1241 + OFFSET_X, 1, 209.3 * mirror, -317.9 , 0 );
setMoveKey( spep_0 + 1242 + OFFSET_X, 1, 222.8 * mirror, -327.4 , 0 );
setMoveKey( spep_0 + 1243 + OFFSET_X, 1, 222.8 * mirror, -327.4 , 0 );
setMoveKey( spep_0 + 1244 + OFFSET_X, 1, 225.7 * mirror, -345 , 0 );
setMoveKey( spep_0 + 1245 + OFFSET_X, 1, 225.7 * mirror, -345 , 0 );
setMoveKey( spep_0 + 1246 + OFFSET_X, 1, 232.6 * mirror, -352.3 , 0 );
setMoveKey( spep_0 + 1247 + OFFSET_X, 1, 232.6 * mirror, -352.3 , 0 );
setMoveKey( spep_0 + 1248 + OFFSET_X, 1, 246 * mirror, -374.3 , 0 );
setMoveKey( spep_0 + 1249 + OFFSET_X, 1, 246 * mirror, -374.3 , 0 );
setMoveKey( spep_0 + 1250 + OFFSET_X, 1, 274.3 * mirror, -380 , 0 );
setMoveKey( spep_0 + 1251 + OFFSET_X, 1, 274.3 * mirror, -380 , 0 );
setMoveKey( spep_0 + 1252 + OFFSET_X, 1, 307.5 * mirror, -393.8 , 0 );
setMoveKey( spep_0 + 1253 + OFFSET_X, 1, 307.5 * mirror, -393.8 , 0 );
setMoveKey( spep_0 + 1254 + OFFSET_X, 1, 309.8 * mirror, -411.4 , 0 );
setMoveKey( spep_0 + 1255 + OFFSET_X, 1, 309.8 * mirror, -411.4 , 0 );
setMoveKey( spep_0 + 1256 + OFFSET_X, 1, 313.9 * mirror, -424.9 , 0 );
setMoveKey( spep_0 + 1257 + OFFSET_X, 1, 313.9 * mirror, -424.9 , 0 );
setMoveKey( spep_0 + 1258 + OFFSET_X, 1, 329 * mirror, -436.6 , 0 );
setMoveKey( spep_0 + 1259 + OFFSET_X, 1, 329 * mirror, -436.6 , 0 );
setMoveKey( spep_0 + 1260 + OFFSET_X, 1, 321.7 * mirror, -416.1 , 0 );
setMoveKey( spep_0 + 1261 + OFFSET_X, 1, 321.7 * mirror, -416.1 , 0 );
setMoveKey( spep_0 + 1262 + OFFSET_X, 1, 304.6 * mirror, -406.1 , 0 );
setMoveKey( spep_0 + 1263 + OFFSET_X, 1, 304.6 * mirror, -406.1 , 0 );
setMoveKey( spep_0 + 1264 + OFFSET_X, 1, 293.2 * mirror, -397.5 , 0 );
setMoveKey( spep_0 + 1265 + OFFSET_X, 1, 293.2 * mirror, -397.5 , 0 );
setMoveKey( spep_0 + 1266 + OFFSET_X, 1, 277.6 * mirror, -384.3 , 0 );
setMoveKey( spep_0 + 1268 + OFFSET_X, 1, 277.6 * mirror, -384.3 , 0 );

setScaleKey( spep_0 + 1240 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 1268 + OFFSET_X, 1, 2.17, 2.17 );

setRotateKey( spep_0 + 1240 + OFFSET_X, 1, 52.1 * mirror );
setRotateKey( spep_0 + 1268 + OFFSET_X, 1, 52.1 * mirror );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--振りかぶる
SE001 = playSeVer2( spep_0 + 0, 1116, "",spep_0 + 52, 0, 25, -1);
SE002 = playSeVer2( spep_0 + 8, 1004, "", 0, 0, 0, -1);

--回転蹴り
SE003 = playSeVer2( spep_0 + 30, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE003, 84 );
SE004 = playSeVer2( spep_0 + 30, 1187, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 30, 1359, "", 0, 0, 0, -1);

--敵飛んでいく
SE006 = playSeVer2( spep_0 + 49, 1121, "",spep_0 + 179, 0, 78, -1);

--地面激突
SE007 = playSeVer2( spep_0 + 95, 1068, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 95, 1061, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 112, 1024, "", 0, 0, 0, -1);

--飛び上がる
SE010 = playSeVer2( spep_0 + 140, 1000, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 140, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE011, 141 );

--着地
SE012 = playSeVer2( spep_0 + 197, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 197, SE012, 237 );
SE013 = playSeVer2( spep_0 + 197, 1169, "",spep_0 + 247, 0, 29, -1);
setSeVolumeByWorkId( spep_0 + 197, SE013, 68 );

--画面遷移
SE014 = playSeVer2( spep_0 + 210, 1072, "", 0, 0, 0, -1);

--追いかける
SE015 = playSeVer2( spep_0 + 258, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 258, SE015, 52 );
setTimeStretch( SE015, 1.67, 30, 4 );
SE016 = playSeVer2( spep_0 + 258, 1182, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 262, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE017, 168 );
SE018 = playSeVer2( spep_0 + 294, 44, "", 0, 0, 0, -1);

--振りかぶる
SE019 = playSeVer2( spep_0 + 333, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 333, SE019, 85 );

--叩きつける
SE020 = playSeVer2( spep_0 + 359, 1520, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 359, SE020, 79 );
SE021 = playSeVer2( spep_0 + 366, 1123, "",spep_0 + 416, 0, 14, -1);

--カードカットイン
--SE022 = playSeVer2( spep_0 + 403, 1035, "", 0, 0, 0, -1);

--構える
SE023 = playSeVer2( spep_0 + 510, 1007, "", 0, 0, 0, -1);

--瞬間移動
SE024 = playSeVer2( spep_0 + 519, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 519, SE024, 172 );
SE025 = playSeVer2( spep_0 + 519, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 519, SE025, 58 );
SE026 = playSeVer2( spep_0 + 524, 1497, "",spep_0 + 578, 0, 21, -1);
setSeVolumeByWorkId( spep_0 + 524, SE026, 57 );

--蹴り上げる
SE027 = playSeVer2( spep_0 + 553, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 553, SE027, 81 );
SE028 = playSeVer2( spep_0 + 553, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 553, SE028, 74 );
SE029 = playSeVer2( spep_0 + 558, 1143, "", 0, 0, 0, -1);

--追いかけて振りかぶる
SE030 = playSeVer2( spep_0 + 592, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 592, SE030, 73 );
SE031 = playSeVer2( spep_0 + 592, 1452, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 642, 1116, "",spep_0 + 702, 0, 31, -1);

--連打
SE033 = playSeVer2( spep_0 + 690, 1359, "",spep_0 + 718, 0, 11, -1);
SE034 = playSeVer2( spep_0 + 690, 1009, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 690, 1110, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 700, 1359, "",spep_0 + 726, 0, 10, -1);
SE037 = playSeVer2( spep_0 + 700, 1010, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 711, 1009, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 711, 1359, "",spep_0 + 743, 0, 15, -1);
SE040 = playSeVer2( spep_0 + 711, 1110, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 724, 1359, "",spep_0 + 748, 0, 9, -1);
SE042 = playSeVer2( spep_0 + 724, 1010, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 737, 1009, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 737, 1359, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 753, 1009, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 753, 1359, "",spep_0 + 785, 0, 15, -1);
SE047 = playSeVer2( spep_0 + 753, 1110, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 769, 1011, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_0 + 769, 1359, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 793, 1014, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_0 + 793, 1359, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_0 + 811, 1017, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 811, 1359, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_0 + 827, 1520, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 831, 1425, "",spep_0 + 923, 0, 15, -1);
setSeVolumeByWorkId( spep_0 + 831, SE055, 80 );
SE056 = playSeVer2( spep_0 + 831, 1359, "",spep_0 + 877, 0, 21, -1);
SE057 = playSeVer2( spep_0 + 845, 1359, "",spep_0 + 891, 0, 21, -1);
SE058 = playSeVer2( spep_0 + 845, 1521, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_0 + 860, 1359, "",spep_0 + 906, 0, 21, -1);
SE060 = playSeVer2( spep_0 + 878, 1359, "",spep_0 + 924, 0, 21, -1);
SE061 = playSeVer2( spep_0 + 878, 1521, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_0 + 900, 1359, "",spep_0 + 946, 0, 21, -1);

--回転する
SE063 = playSeVer2( spep_0 + 912, 1116, "",spep_0 + 958, 0, 20, -1);
SE064 = playSeVer2( spep_0 + 919, 1520, "", 0, 0, 0, -1);

--蹴り飛ばす
SE065 = playSeVer2( spep_0 + 950, 1004, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_0 + 962, 1120, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_0 + 962, 1153, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_0 + 962, 1187, "", 0, 0, 0, -1);

--追いかける
SE069 = playSeVer2( spep_0 + 1006, 1491, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_0 + 1006, 1182, "", 0, 0, 0, -1);
SE071 = playSeVer2( spep_0 + 1006, 1043, "",spep_0 + 1083, 0, 41, -1);
SE072 = playSeVer2( spep_0 + 1006, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1006, SE072, 160 );
SE073 = playSeVer2( spep_0 + 1037, 1117, "", 0, 0, 0, -1);

--着地
SE074 = playSeVer2( spep_0 + 1062, 1011, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_0 + 1070, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1070, SE075, 214 );

--坂かけおりる
SE076 = playSeVer2( spep_0 + 1092, 1476, "", 0, 0, 0, -1);
SE077 = playSeVer2( spep_0 + 1092, 1314, "",spep_0 + 1291, 0, 99, -1);

--セリフカットイン
--SE078 = playSeVer2( spep_0 + 1153, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE079 = playSeVer2( spep_0 + 1169, 1122, "",spep_0 + 1266, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 1169, SE079, 79 );
SE080 = playSeVer2( spep_0 + 1169, 1239, "",spep_0 + 1264, 0, 23, -1);
setSeVolumeByWorkId( spep_0 + 1169, SE080, 145 );
SE081 = playSeVer2( spep_0 + 1169, 1490, "",spep_0 + 1283, 0, 36, -1);

--気弾発射
SE082 = playSeVer2( spep_0 + 1240, 1026, "", 0, 0, 0, -1);
SE083 = playSeVer2( spep_0 + 1240, 1145, "", 0, 0, 0, -1);
SE084 = playSeVer2( spep_0 + 1240, 1312, "", 0, 0, 0, -1);
SE085 = playSeVer2( spep_0 + 1240, 1156, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 12; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

stopAndCancelAllSe( SP_dodge - 12 ); --再生中と再生予定のSEを止める
stopAndCancelAllVoice( SP_dodge - 12 ); --再生中と再生予定のVoiceを止める
playSeNotStoppable( SP_dodge - 12, 1042); --止めないSE

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------



-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 1246); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 1368