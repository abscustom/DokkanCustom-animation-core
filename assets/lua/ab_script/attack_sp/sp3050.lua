--1034170:UR_魔人ブウ(南の界王神吸収)_必殺技：イルフラッシュ
--sp_effect_b4_00449
--sp3050

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164546; --最初〜最後まで ef_001

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



ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 686;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --気弾発射
        SE023 = playSeVer2( spep_0 + timing_skip + 3, 1110, "", 0, 0, 0, -1);
        SE024 = playSeVer2( spep_0 + timing_skip + 3, 1205, "", 0, 0, 0, -1);
        SE025 = playSeVer2( spep_0 + timing_skip + 3, 1154, "", 0, 0, 0, -1);
        SE026 = playSeVer2( spep_0 + timing_skip + 3, 1193, "",spep_0 + 823, 0, 40, -1);
        SE027 = playSeVer2( spep_0 + timing_skip + 3, 1423, "",spep_0 + 816, 0, 24, -1);

        --気弾飛んでいく
        SE028 = playSeVer2( spep_0 + timing_skip + 3, 1021, "", 0, 0, 0, -1);

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
-- 最初〜最後まで
-------------------------------------------------
MAX_FRAME_0 = 918;
CARD_FRAME = 490;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初〜最後まで(ef_001)
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
spep_x = spep_0 + 22; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   --speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   --setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

ctgogo_x = 0; -- 演出によって白目にかからないように調整
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, ctgogo_x * mirror, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0 * mirror, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09 * mirror, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39 * mirror, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69 * mirror, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
]]

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------

-- 敵の動き1
setDisp( spep_0 + 178 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 238 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 178 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 178 + OFFSET_X, 1, 473 * mirror, 168.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 473 * mirror, 168.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 471.9 * mirror, 158.8 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 471.9 * mirror, 158.8 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 470.9 * mirror, 178.8 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 470.9 * mirror, 178.8 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 470.9 * mirror, 160.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 470.9 * mirror, 160.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 467.9 * mirror, 173.8 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 467.9 * mirror, 173.8 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 468 * mirror, 168.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 468 * mirror, 168.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 467.1 * mirror, 158.8 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 467.1 * mirror, 158.8 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 466.2 * mirror, 178.8 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 466.2 * mirror, 178.8 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 466.4 * mirror, 160.8 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 466.4 * mirror, 160.8 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 463.6 * mirror, 173.8 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 463.6 * mirror, 173.8 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 463.9 * mirror, 168.8 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 463.9 * mirror, 168.8 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 463.2 * mirror, 158.8 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 463.2 * mirror, 158.8 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 462.5 * mirror, 178.8 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 462.5 * mirror, 178.8 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 462.9 * mirror, 160.8 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 462.9 * mirror, 160.8 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 460.3 * mirror, 173.8 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 460.3 * mirror, 173.8 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 460.8 * mirror, 158.8 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 460.8 * mirror, 158.8 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 460.2 * mirror, 178.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 460.2 * mirror, 178.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 460.8 * mirror, 160.8 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 460.8 * mirror, 160.8 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 458.3 * mirror, 173.8 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 458.3 * mirror, 173.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 458.9 * mirror, 168.8 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 458.9 * mirror, 168.8 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 458.6 * mirror, 158.8 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 458.6 * mirror, 158.8 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 458.2 * mirror, 178.8 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 458.2 * mirror, 178.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 459 * mirror, 160.8 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 459 * mirror, 160.8 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 456.7 * mirror, 173.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 456.7 * mirror, 173.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 457.5 * mirror, 168.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 457.5 * mirror, 168.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 457.3 * mirror, 158.8 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 457.3 * mirror, 158.8 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 457.2 * mirror, 178.8 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 457.2 * mirror, 178.8 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 458.1 * mirror, 160.8 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 458.1 * mirror, 160.8 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 456 * mirror, 173.8 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 456 * mirror, 173.8 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 456 * mirror, 173.9 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 456 * mirror, 173.9 , 0 );

setScaleKey( spep_0 + 178 + OFFSET_X, 1, 5.73, 5.73 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 5.73, 5.73 );

setRotateKey( spep_0 + 178 + OFFSET_X, 1, -26.2 * mirror );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -26.2 * mirror );

setBlendColor( spep_0 + 178 + OFFSET_X, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_0 + 237 + OFFSET_X, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_0 + 238 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- 敵の動き2
setDisp( spep_0 + 350 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 492 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 350 + OFFSET_X, 1, 104 );
changeAnimeBySide( spep_0 + 440 + OFFSET_X, 1, 117 );
changeAnimeBySide( spep_0 + 464 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 350 + OFFSET_X, 1, -5.7 * mirror, -20.9 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -5.7 * mirror, -20.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -5.7 * mirror, -16.3 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -5.7 * mirror, -16.3 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -5.7 * mirror, -11.5 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -5.7 * mirror, -11.5 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -5.6 * mirror, -20.9 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -5.6 * mirror, -20.9 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -5.7 * mirror, -14.2 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -5.7 * mirror, -14.2 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -5.6 * mirror, -22.7 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -5.6 * mirror, -22.7 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -5.6 * mirror, -17.9 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -5.6 * mirror, -17.9 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -5.7 * mirror, -13.4 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -5.7 * mirror, -13.4 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -5.7 * mirror, -22.8 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -5.7 * mirror, -22.8 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -5.7 * mirror, -16.1 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -5.7 * mirror, -16.1 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -5.6 * mirror, -24.5 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -5.6 * mirror, -24.5 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -5.7 * mirror, -19.9 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -5.7 * mirror, -19.9 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -5.6 * mirror, -19.3 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -5.6 * mirror, -19.3 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -5.7 * mirror, -21.8 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -5.7 * mirror, -21.8 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -6.6 * mirror, -20.1 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -6.6 * mirror, -20.1 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -4.7 * mirror, -22.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -4.7 * mirror, -22.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -5.8 * mirror, -21 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -5.8 * mirror, -21 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -5.8 * mirror, -23.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -5.8 * mirror, -23.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -6.7 * mirror, -21.9 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -6.7 * mirror, -21.9 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -4.8 * mirror, -24.4 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -4.8 * mirror, -24.4 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -5.9 * mirror, -22.9 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -5.9 * mirror, -22.9 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -5.9 * mirror, -25.4 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -5.9 * mirror, -25.4 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -6.9 * mirror, -23.9 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -6.9 * mirror, -23.9 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -4.9 * mirror, -26.4 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -4.9 * mirror, -26.4 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -6 * mirror, -24.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -6 * mirror, -24.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -6.1 * mirror, -27.5 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -6.1 * mirror, -27.5 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -7.1 * mirror, -26.1 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -7.1 * mirror, -26.1 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -5.1 * mirror, -28.7 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -5.1 * mirror, -28.7 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -6.3 * mirror, -27.3 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -6.3 * mirror, -27.3 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -6.3 * mirror, -29.9 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -6.3 * mirror, -29.9 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -7.4 * mirror, -28.5 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -7.4 * mirror, -28.5 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -5.5 * mirror, -31.2 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -5.5 * mirror, -31.2 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -6.7 * mirror, -28.9 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -6.7 * mirror, -28.9 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -6.7 * mirror, -34.6 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -6.7 * mirror, -34.6 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -7.9 * mirror, -29.3 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -7.9 * mirror, -29.3 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -6.1 * mirror, -36.1 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -6.1 * mirror, -36.1 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -7.2 * mirror, -32 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -7.2 * mirror, -32 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -7.4 * mirror, -37.8 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -7.4 * mirror, -37.8 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -8.5 * mirror, -32.7 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -8.5 * mirror, -32.7 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -6.8 * mirror, -39.6 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -6.8 * mirror, -39.6 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -8.1 * mirror, -35.7 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -8.1 * mirror, -35.7 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -8.4 * mirror, -41.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -8.4 * mirror, -41.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -9.8 * mirror, -37 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -9.8 * mirror, -37 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -8.3 * mirror, -44.6 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -8.3 * mirror, -44.6 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 53.9 * mirror, 53.5 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 53.9 * mirror, 53.5 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 54.9 * mirror, 58.5 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 54.9 * mirror, 58.5 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 55.9 * mirror, 51.5 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 55.9 * mirror, 51.5 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 55.9 * mirror, 57.5 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 55.9 * mirror, 57.5 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 53.7 * mirror, 53.3 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 53.7 * mirror, 53.3 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 54.5 * mirror, 58.1 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 54.5 * mirror, 58.1 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 55.1 * mirror, 50.7 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 55.1 * mirror, 50.7 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 54.3 * mirror, 55.9 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 54.3 * mirror, 55.9 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 51.2 * mirror, 50.8 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 51.2 * mirror, 50.8 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 50.6 * mirror, 54.2 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 50.6 * mirror, 54.2 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 49.3 * mirror, 45 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 49.3 * mirror, 45 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 45.3 * mirror, 45.9 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 45.3 * mirror, 45.9 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 190.9 * mirror, 180.8 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 190.9 * mirror, 180.8 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 227.9 * mirror, 181.4 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 227.9 * mirror, 181.4 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 274.8 * mirror, 292.3 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 274.8 * mirror, 292.3 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 306.6 * mirror, 284.5 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 306.6 * mirror, 284.5 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 342.7 * mirror, 328.6 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 342.7 * mirror, 328.6 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 379.1 * mirror, 411.2 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 379.1 * mirror, 411.2 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 416.2 * mirror, 406.1 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 416.2 * mirror, 406.1 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 431.7 * mirror, 482.6 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 431.7 * mirror, 482.6 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 451.4 * mirror, 458.6 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 451.4 * mirror, 458.6 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 473.2 * mirror, 524 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 473.2 * mirror, 524 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 487.2 * mirror, 515.7 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 487.2 * mirror, 515.7 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 497.2 * mirror, 538.7 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 497.2 * mirror, 538.7 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 503.3 * mirror, 536.9 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 503.3 * mirror, 536.9 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 505.2 * mirror, 543.3 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 505.2 * mirror, 543.3 , 0 );

setScaleKey( spep_0 + 350 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 2.63, 2.63 );

setRotateKey( spep_0 + 350 + OFFSET_X, 1, 0.2 * mirror );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, 0.2 * mirror );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, 0.3 * mirror );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, 0.3 * mirror );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, 0.5 * mirror );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, 0.5 * mirror );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, 0.7 * mirror );
setRotateKey( spep_0 + 359 + OFFSET_X, 1, 0.7 * mirror );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, 0.8 * mirror );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, 0.8 * mirror );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, 1 * mirror );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, 1 * mirror );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, 1.2 * mirror );
setRotateKey( spep_0 + 365 + OFFSET_X, 1, 1.2 * mirror );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, 1.4 * mirror );
setRotateKey( spep_0 + 367 + OFFSET_X, 1, 1.4 * mirror );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, 1.6 * mirror );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, 1.6 * mirror );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, 1.7 * mirror );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, 1.7 * mirror );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, 1.9 * mirror );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, 1.9 * mirror );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, 2.1 * mirror );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, 2.1 * mirror );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, 2.3 * mirror );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, 2.3 * mirror );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, 2.6 * mirror );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, 2.6 * mirror );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, 2.8 * mirror );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, 2.8 * mirror );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 3 * mirror );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, 3 * mirror );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, 3.2 * mirror );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, 3.2 * mirror );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 3.4 * mirror );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, 3.4 * mirror );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 3.7 * mirror );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, 3.7 * mirror );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 3.9 * mirror );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, 3.9 * mirror );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 4.2 * mirror );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, 4.2 * mirror );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, 4.4 * mirror );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, 4.4 * mirror );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, 4.7 * mirror );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, 4.7 * mirror );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, 5 * mirror );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, 5 * mirror );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, 5.3 * mirror );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, 5.3 * mirror );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, 5.5 * mirror );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, 5.5 * mirror );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, 5.8 * mirror );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, 5.8 * mirror );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, 6.1 * mirror );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, 6.1 * mirror );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, 6.5 * mirror );
setRotateKey( spep_0 + 409 + OFFSET_X, 1, 6.5 * mirror );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, 6.8 * mirror );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, 6.8 * mirror );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, 7.1 * mirror );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, 7.1 * mirror );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, 7.5 * mirror );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, 7.5 * mirror );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, 7.9 * mirror );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, 7.9 * mirror );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, 8.3 * mirror );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, 8.3 * mirror );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, 8.7 * mirror );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, 8.7 * mirror );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, 9.1 * mirror );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, 9.1 * mirror );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, 9.6 * mirror );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, 9.6 * mirror );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, 10.1 * mirror );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, 10.1 * mirror );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, 10.6 * mirror );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, 10.6 * mirror );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, 11.1 * mirror );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, 11.1 * mirror );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, 11.7 * mirror );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, 11.7 * mirror );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, 12.4 * mirror );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, 12.4 * mirror );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, 13.1 * mirror );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, 13.1 * mirror );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, 14 * mirror );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, 14 * mirror );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, -24.5 * mirror );
setRotateKey( spep_0 + 492 + OFFSET_X, 1, -24.5 * mirror );


-- 敵の動き3
setDisp( spep_0 + 740 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 784 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 740 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 740 + OFFSET_X, 1, 10.1 * mirror, -52.4 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 10.1 * mirror, -52.4 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 10.4 * mirror, -52.6 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 10.4 * mirror, -52.6 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 10.6 * mirror, -52.8 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 10.6 * mirror, -52.8 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 10.7 * mirror, -53 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 10.7 * mirror, -53 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 11 * mirror, -53.1 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 11 * mirror, -53.1 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 11.1 * mirror, -53.2 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 11.1 * mirror, -53.2 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 11.4 * mirror, -53.4 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 11.4 * mirror, -53.4 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 11.5 * mirror, -53.5 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 11.5 * mirror, -53.5 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 11.6 * mirror, -53.7 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 11.6 * mirror, -53.7 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 11.7 * mirror, -53.8 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 11.7 * mirror, -53.8 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 11.8 * mirror, -53.9 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 11.8 * mirror, -53.9 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 11.9 * mirror, -54 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 11.9 * mirror, -54 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 11.9 * mirror, -54.1 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, 11.9 * mirror, -54.1 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, 12 * mirror, -54.1 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, 12 * mirror, -54.1 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, 12.1 * mirror, -54.1 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, 12.1 * mirror, -54.1 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, 12.1 * mirror, -54.2 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, 12.1 * mirror, -54.2 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, 12.2 * mirror, -54.3 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, 12.2 * mirror, -54.3 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, 12.3 * mirror, -54.1 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, 12.3 * mirror, -54.1 , 0 );

setScaleKey( spep_0 + 740 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 741 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 742 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 743 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 744 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 745 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 746 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 747 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 748 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 749 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 750 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 751 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 752 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 753 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 754 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 755 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 756 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 757 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 758 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 759 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 760 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 761 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 762 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 763 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 764 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 765 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 766 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 767 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 768 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 769 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 770 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 773 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 774 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 784 + OFFSET_X, 1, 0.9, 0.9 );

setRotateKey( spep_0 + 740 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 784 + OFFSET_X, 1, 0 * mirror );

setBlendColor( spep_0 + 778 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_0 + 781 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_0 + 782 + OFFSET_X, 1, 3, 1, 1, 1, 1 );
setBlendColor( spep_0 + 783 + OFFSET_X, 1, 3, 1, 1, 1, 1 );
setBlendColor( spep_0 + 784 + OFFSET_X, 1, 3, 1, 1, 1, 0 );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 231, 0, 33, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 3, 44, "", 0, 0, 0, -1);   

--力む
SE004 = playSeVer2( spep_0 + 50, 1153, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE004, 70 );
setStartTimeMs( SE004,  67 );
SE005 = playSeVer2( spep_0 + 58, 1170, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE005, 65 );  
SE006 = playSeVer2( spep_0 + 71, 1344, "", 0, 0, 0, -1);

--走ってくるベース
SE007 = playSeVer2( spep_0 + 183, 1044, "",spep_0 + 512, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 183, SE007, 72 );
SE008 = playSeVer2( spep_0 + 183, 1226, "",spep_0 + 513, 0, 19, -1);
setSeVolumeByWorkId( spep_0 + 183, SE008, 56 );
SE014 = playSeVer2( spep_0 + 357, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 357, SE014, 67 );
setTimeStretch( SE014, 2, 30, 4 );

--走ってくる
SE009 = playSeVer2( spep_0 + 236, 1395, "",spep_0 + 276, 0, 12, -1);
SE010 = playSeVer2( spep_0 + 260, 1395, "",spep_0 + 305, 0, 14, -1);
SE011 = playSeVer2( spep_0 + 285, 1395, "",spep_0 + 330, 0, 14, -1);
SE012 = playSeVer2( spep_0 + 310, 1395, "",spep_0 + 350, 0, 12, -1);
SE013 = playSeVer2( spep_0 + 334, 1395, "",spep_0 + 379, 0, 14, -1);
SE015 = playSeVer2( spep_0 + 359, 1395, "",spep_0 + 404, 0, 14, -1);
SE016 = playSeVer2( spep_0 + 390, 1395, "",spep_0 + 435, 0, 14, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 400; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 8, SE016, 0);

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

-- ** SE ** --

--走ってくる
SE017 = playSeVer2( spep_0 + 415, 1395, "",spep_0 + 460, 0, 14, -1);
SE018 = playSeVer2( spep_0 + 440, 1395, "",spep_0 + 485, 0, 14, -1);

--タックル
SE019 = playSeVer2( spep_0 + 460, 1153, "",spep_0 + 506, 0, 11, -1);
SE020 = playSeVer2( spep_0 + 460, 1187, "",spep_0 + 507, 0, 11, -1);

--振りかぶる
SE022 = playSeVer2( spep_0 + 597, 1116, "",spep_0 + 653, 0, 32, -1);

--気弾発射
SE023 = playSeVer2( spep_0 + 635, 1110, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 637, 1205, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 637, 1154, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 637, 1193, "",spep_0 + 823, 0, 40, -1);
SE027 = playSeVer2( spep_0 + 637, 1423, "",spep_0 + 816, 0, 24, -1);

--気弾飛んでいく
SE028 = playSeVer2( spep_0 + 729, 1021, "", 0, 0, 0, -1);

--爆発
SE029 = playSeVer2( spep_0 + 777, 1160, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 777, 1067, "", 0, 0, 0, -1);

-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 800 ); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 終了フレーム 918f