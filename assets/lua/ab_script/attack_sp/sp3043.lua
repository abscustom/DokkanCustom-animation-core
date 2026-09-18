--1034120:LR_パーフェクトセル_必殺技：パーフェクトショット
--sp_effect_a2_00279
--sp3043

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164532; --開幕～フィニッシュまで ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);

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
--[[
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
]]
--setAlphaKey( 0, 1, 255 );



ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = spep_0 + 680;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        --敵の動き
        setMoveKey( spep_0 + 680, 1, 0, -5000, 0 );  -- スキップ時に敵が映り込むため記載
        -- ** 音 ** --
        SE040 = playSeVer2( spep_0 + 680 + 3, 1036, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_0 + 680 + 3, SE040, 50 );
        --気弾溜め
        SE041 = playSeVer2( spep_0 + 680 + 3, 1130, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_0 + 680 + 3, SE041, 143 );
        SE042 = playSeVer2( spep_0 + 680 + 3, 1131, "", 0, 0, 0, -1);

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
-- 開幕～フィニッシュまで
-------------------------------------------------
MAX_FRAME_0 = 1008;
CARD_FRAME = 60;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～フィニッシュまで(ef_001)
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
spep_x = spep_0 + 146; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   --speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   --setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end
--[[
ctgogo_x = 0; -- 演出によって白目にかからないように調整

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
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 60 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 83.1 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 83.1 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 83.1 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 87.6 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 87.6 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 87.6 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 87.6 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 92.1 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 92.1 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 96.6 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 96.6 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 101.1 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 101.1 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 105.6 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 105.6 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 109.9 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 109.9 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 114.1 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 114.1 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 117.9 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 117.9 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 120.9 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 120.9 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 123.6 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 123.6 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 125.6 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 125.6 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 127.1 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 127.1 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 127.6 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 127.6 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 127.9 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 127.9 * mirror, -110.1 , 0 );

setScaleKey( spep_0 + 0, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.68, 0.68 );

setRotateKey( spep_0 + 0, 1, 0 * mirror );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 8 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 * mirror );

-- 敵の動き2
setDisp( spep_0 + 286 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 362 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 286 + OFFSET_X, 1, 117 );
changeAnimeBySide( spep_0 + 290 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 358 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 286 + OFFSET_X, 1, 63 * mirror, -466 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 63 * mirror, -466 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -44.1 * mirror, -502.6 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -44.1 * mirror, -502.6 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 8.6 * mirror, -457.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 8.6 * mirror, -457.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -41.7 * mirror, -557.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -41.7 * mirror, -557.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -27.3 * mirror, -461.8 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -27.3 * mirror, -461.8 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -92 * mirror, -516.9 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -92 * mirror, -516.9 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 3.8 * mirror, -502.5 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 3.8 * mirror, -502.5 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -56.1 * mirror, -524 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -56.1 * mirror, -524 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -37 * mirror, -512 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -37 * mirror, -512 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -17.8 * mirror, -497.6 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -17.8 * mirror, -497.6 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 1.4 * mirror, -485.6 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 1.4 * mirror, -485.6 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 18.2 * mirror, -471.3 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 18.2 * mirror, -471.3 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 39.7 * mirror, -459.3 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 39.7 * mirror, -459.3 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -84.9 * mirror, -552.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -84.9 * mirror, -552.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 51.7 * mirror, -552.7 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 51.7 * mirror, -552.7 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 39.7 * mirror, -545.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 39.7 * mirror, -545.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 154.6 * mirror, -545.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 154.6 * mirror, -545.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 130.7 * mirror, -538.2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 130.7 * mirror, -538.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 188.2 * mirror, -526.2 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 188.2 * mirror, -526.2 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 217 * mirror, -509.3 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 217 * mirror, -509.3 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 236.1 * mirror, -494.8 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 236.1 * mirror, -494.8 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 253.7 * mirror, 13.1 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 253.7 * mirror, 13.1 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 247.1 * mirror, 11.2 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 247.1 * mirror, 11.2 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 258.2 * mirror, 7.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 258.2 * mirror, 7.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 255.1 * mirror, 10.8 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 255.1 * mirror, 10.8 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 261.3 * mirror, 10.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 261.3 * mirror, 10.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 263.6 * mirror, 10.7 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 263.6 * mirror, 10.7 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 268.2 * mirror, 11.4 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 268.2 * mirror, 11.4 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 272 * mirror, 11.4 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 272 * mirror, 11.4 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -0.3 * mirror, -0.5 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -0.3 * mirror, -0.5 , 0 );

setScaleKey( spep_0 + 286 + OFFSET_X, 1, 14.33, 14.33 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 14.33, 14.33 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 13.6, 13.6 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 13.6, 13.6 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 13.59, 13.59 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 13.59, 13.59 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 13.58, 13.58 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 13.58, 13.58 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 13.57, 13.57 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 13.57, 13.57 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 0.57, 0.57 );

setRotateKey( spep_0 + 286 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -55 * mirror );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -55 * mirror );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -53.5 * mirror );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -53.5 * mirror );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -51 * mirror );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -51 * mirror );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -47 * mirror );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -47 * mirror );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -44 * mirror );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -44 * mirror );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -43 * mirror );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -43 * mirror );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -41 * mirror );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, -41 * mirror );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -40.5 * mirror );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, -40.5 * mirror );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, -39.6 * mirror );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -39.6 * mirror );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -39.3 * mirror );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -39.3 * mirror );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -38.8 * mirror );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, -38.8 * mirror );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, -38.3 * mirror );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, -38.3 * mirror );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, -49.4 * mirror );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, -49.4 * mirror );

-- 敵の動き3
setDisp( spep_0 + 364 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 382 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 364 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 364 + OFFSET_X, 1, 39.6 * mirror, 379.3 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 39.6 * mirror, 379.3 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -4.2 * mirror, 544.5 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -4.2 * mirror, 544.5 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 4.5 * mirror, 433.2 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 4.5 * mirror, 433.2 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 35.8 * mirror, 480.9 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 35.8 * mirror, 480.9 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 29.1 * mirror, 440.5 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 29.1 * mirror, 440.5 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -7.5 * mirror, 480.5 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -7.5 * mirror, 480.5 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 9.3 * mirror, 419.3 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 9.3 * mirror, 419.3 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 19.9 * mirror, 438.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 19.9 * mirror, 438.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 14.2 * mirror, 517.1 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 14.2 * mirror, 517.1 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 14.2 * mirror, 763.3 , 0 );

setScaleKey( spep_0 + 364 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 2.13, 2.13 );

setRotateKey( spep_0 + 364 + OFFSET_X, 1, 87.7 * mirror );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 87.7 * mirror );

-- 敵の動き4
setDisp( spep_0 + 394 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 410 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 394 + OFFSET_X, 1, -0.5 * mirror, 621.2 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -0.5 * mirror, 621.2 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -0.5 * mirror, 619.2 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -0.5 * mirror, 619.2 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -0.5 * mirror, 308.4 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -0.5 * mirror, 308.4 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -0.5 * mirror, 306.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -0.5 * mirror, 306.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 0.1 * mirror, -3.9 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 0.1 * mirror, -3.9 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 0.1 * mirror, -8.3 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 0.1 * mirror, -8.3 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 0.1 * mirror, -320.2 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 0.1 * mirror, -320.2 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 0.1 * mirror, -324 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 0.1 * mirror, -324 , 0 );

setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.63, 1.63 );

setRotateKey( spep_0 + 394 + OFFSET_X, 1, 90 * mirror );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, 90 * mirror );


-- 敵の動き5
setDisp( spep_0 + 506 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 552 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 506 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 546 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 506 + OFFSET_X, 1, -10.1 * mirror, -634.4 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -10.1 * mirror, -634.4 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -10.5 * mirror, -508.4 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -10.5 * mirror, -508.4 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -10.5 * mirror, -240 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -10.5 * mirror, -240 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -10.5 * mirror, -120.8 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -10.5 * mirror, -120.8 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -10.5 * mirror, -88 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, -10.5 * mirror, -88 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 7.2 * mirror, -366.3 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 7.2 * mirror, -366.3 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 7.2 * mirror, -332.7 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 7.2 * mirror, -332.7 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 7.2 * mirror, -297.5 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 7.2 * mirror, -297.5 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 7.2 * mirror, -262.3 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 7.2 * mirror, -262.3 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 243.4 * mirror, -256.2 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 243.4 * mirror, -256.2 , 0 );

setScaleKey( spep_0 + 506 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 4.56, 4.56 );

setRotateKey( spep_0 + 506 + OFFSET_X, 1, -58 * mirror );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, -58 * mirror );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, 11.3 * mirror );
setRotateKey( spep_0 + 552 + OFFSET_X, 1, 11.3 * mirror );

-- 敵の動き6
setDisp( spep_0 + 558 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 570 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 558 + OFFSET_X, 1, 274.8 * mirror, -285.5 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 274.8 * mirror, -285.5 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 359.6 * mirror, -357.5 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 359.6 * mirror, -357.5 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 306.8 * mirror, -288.7 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 306.8 * mirror, -288.7 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 390 * mirror, -338.3 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 390 * mirror, -338.3 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 418.8 * mirror, -376.7 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 418.8 * mirror, -376.7 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 481.2 * mirror, -387.9 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 481.2 * mirror, -387.9 , 0 );

setScaleKey( spep_0 + 558 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 4.56, 4.56 );

setRotateKey( spep_0 + 558 + OFFSET_X, 1, 25 * mirror );
setRotateKey( spep_0 + 570 + OFFSET_X, 1, 25 * mirror );


-- 敵の動き7
setDisp( spep_0 + 590 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 658 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 590 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 590 + OFFSET_X, 1, 17.2 * mirror, 96.1 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 17.2 * mirror, 96.1 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 17.6 * mirror, 95.1 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 17.6 * mirror, 95.1 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 17.6 * mirror, 93.7 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, 17.6 * mirror, 93.7 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 17.6 * mirror, 93.1 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, 17.6 * mirror, 93.1 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 19.4 * mirror, 91.6 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 19.4 * mirror, 91.6 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 20.2 * mirror, 90.8 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 20.2 * mirror, 90.8 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 19.5 * mirror, 85.8 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 19.5 * mirror, 85.8 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 19.5 * mirror, 84.2 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 19.5 * mirror, 84.2 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 19.3 * mirror, 77 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 19.3 * mirror, 77 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 22.3 * mirror, 77.4 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 22.3 * mirror, 77.4 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 21.6 * mirror, 67.7 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 21.6 * mirror, 67.7 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 21.8 * mirror, 69.5 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 21.8 * mirror, 69.5 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 25.7 * mirror, 55.9 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 25.7 * mirror, 55.9 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 24.3 * mirror, 55.9 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, 24.3 * mirror, 55.9 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 27.4 * mirror, 43.5 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 27.4 * mirror, 43.5 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 27.4 * mirror, 44.1 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, 27.4 * mirror, 44.1 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 31.4 * mirror, 28.2 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 31.4 * mirror, 28.2 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 31.8 * mirror, 28.2 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 31.8 * mirror, 28.2 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 34.5 * mirror, 11.1 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 34.5 * mirror, 11.1 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 32.9 * mirror, 9.9 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 32.9 * mirror, 9.9 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 38.2 * mirror, -7.1 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 38.2 * mirror, -7.1 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 36.6 * mirror, -7.9 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 36.6 * mirror, -7.9 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 41.5 * mirror, -22.3 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, 41.5 * mirror, -22.3 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 40.7 * mirror, -23.9 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, 40.7 * mirror, -23.9 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 42.9 * mirror, -39.1 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 42.9 * mirror, -39.1 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 44.5 * mirror, -39.1 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, 44.5 * mirror, -39.1 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 46.3 * mirror, -55.7 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, 46.3 * mirror, -55.7 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 45.5 * mirror, -54.9 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, 45.5 * mirror, -54.9 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 36.4 * mirror, -10 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, 36.4 * mirror, -10 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 72.4 * mirror, -101.2 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, 72.4 * mirror, -101.2 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, 115.5 * mirror, -26.7 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, 115.5 * mirror, -26.7 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, 91.5 * mirror, -121.1 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, 91.5 * mirror, -121.1 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, 127.5 * mirror, -46.3 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, 127.5 * mirror, -46.3 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, 162.7 * mirror, -137.5 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, 162.7 * mirror, -137.5 , 0 );

setScaleKey( spep_0 + 590 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 593 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 594 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 597 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 598 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 601 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 605 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 609 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 610 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 613 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 614 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 617 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 618 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 621 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 622 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 625 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 626 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 629 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 630 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 633 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 634 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 637 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 638 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 641 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 642 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 645 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 646 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 649 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 650 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 653 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 654 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 658 + OFFSET_X, 1, 2.36, 2.36 );

setRotateKey( spep_0 + 590 + OFFSET_X, 1, 28 * mirror );
setRotateKey( spep_0 + 593 + OFFSET_X, 1, 28 * mirror );
setRotateKey( spep_0 + 594 + OFFSET_X, 1, 34 * mirror );
setRotateKey( spep_0 + 597 + OFFSET_X, 1, 34 * mirror );
setRotateKey( spep_0 + 598 + OFFSET_X, 1, 40 * mirror );
setRotateKey( spep_0 + 601 + OFFSET_X, 1, 40 * mirror );
setRotateKey( spep_0 + 602 + OFFSET_X, 1, 45.9 * mirror );
setRotateKey( spep_0 + 605 + OFFSET_X, 1, 45.9 * mirror );
setRotateKey( spep_0 + 606 + OFFSET_X, 1, 52 * mirror );
setRotateKey( spep_0 + 609 + OFFSET_X, 1, 52 * mirror );
setRotateKey( spep_0 + 610 + OFFSET_X, 1, 57 * mirror );
setRotateKey( spep_0 + 613 + OFFSET_X, 1, 57 * mirror );
setRotateKey( spep_0 + 614 + OFFSET_X, 1, 62.5 * mirror );
setRotateKey( spep_0 + 617 + OFFSET_X, 1, 62.5 * mirror );
setRotateKey( spep_0 + 618 + OFFSET_X, 1, 67.5 * mirror );
setRotateKey( spep_0 + 621 + OFFSET_X, 1, 67.5 * mirror );
setRotateKey( spep_0 + 622 + OFFSET_X, 1, 72 * mirror );
setRotateKey( spep_0 + 625 + OFFSET_X, 1, 72 * mirror );
setRotateKey( spep_0 + 626 + OFFSET_X, 1, 75.5 * mirror );
setRotateKey( spep_0 + 629 + OFFSET_X, 1, 75.5 * mirror );
setRotateKey( spep_0 + 630 + OFFSET_X, 1, 79 * mirror );
setRotateKey( spep_0 + 633 + OFFSET_X, 1, 79 * mirror );
setRotateKey( spep_0 + 634 + OFFSET_X, 1, 81 * mirror );
setRotateKey( spep_0 + 637 + OFFSET_X, 1, 81 * mirror );
setRotateKey( spep_0 + 638 + OFFSET_X, 1, 83 * mirror );
setRotateKey( spep_0 + 641 + OFFSET_X, 1, 83 * mirror );
setRotateKey( spep_0 + 642 + OFFSET_X, 1, 84 * mirror );
setRotateKey( spep_0 + 649 + OFFSET_X, 1, 84 * mirror );
setRotateKey( spep_0 + 650 + OFFSET_X, 1, 93 * mirror );
setRotateKey( spep_0 + 653 + OFFSET_X, 1, 93 * mirror );
setRotateKey( spep_0 + 654 + OFFSET_X, 1, 95 * mirror );
setRotateKey( spep_0 + 658 + OFFSET_X, 1, 95 * mirror );

-- 敵の動き8
setDisp( spep_0 + 834 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 864 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 834 + OFFSET_X, 1, 74.8 * mirror, -249.4 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, 74.8 * mirror, -249.4 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, 76 * mirror, -248.2 , 0 );
setMoveKey( spep_0 + 837 + OFFSET_X, 1, 76 * mirror, -248.2 , 0 );
setMoveKey( spep_0 + 838 + OFFSET_X, 1, 76 * mirror, -251 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, 76 * mirror, -251 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, 74.8 * mirror, -250.6 , 0 );
setMoveKey( spep_0 + 841 + OFFSET_X, 1, 74.8 * mirror, -250.6 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, 75.6 * mirror, -249.4 , 0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, 75.6 * mirror, -249.4 , 0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, 77.6 * mirror, -249 , 0 );
setMoveKey( spep_0 + 845 + OFFSET_X, 1, 77.6 * mirror, -249 , 0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, 77.6 * mirror, -249.8 , 0 );
setMoveKey( spep_0 + 847 + OFFSET_X, 1, 77.6 * mirror, -249.8 , 0 );
setMoveKey( spep_0 + 848 + OFFSET_X, 1, 76.8 * mirror, -249 , 0 );
setMoveKey( spep_0 + 849 + OFFSET_X, 1, 76.8 * mirror, -249 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, 75.2 * mirror, -250.6 , 0 );
setMoveKey( spep_0 + 851 + OFFSET_X, 1, 75.2 * mirror, -250.6 , 0 );
setMoveKey( spep_0 + 852 + OFFSET_X, 1, 76 * mirror, -249 , 0 );
setMoveKey( spep_0 + 853 + OFFSET_X, 1, 76 * mirror, -249 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, 74.4 * mirror, -248.2 , 0 );
setMoveKey( spep_0 + 855 + OFFSET_X, 1, 74.4 * mirror, -248.2 , 0 );
setMoveKey( spep_0 + 856 + OFFSET_X, 1, 75.2 * mirror, -249 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, 75.2 * mirror, -249 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, 78.4 * mirror, -249 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, 78.4 * mirror, -249 , 0 );

setScaleKey( spep_0 + 834 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 864 + OFFSET_X, 1, 0.93, 0.93 );

setRotateKey( spep_0 + 834 + OFFSET_X, 1, 31 * mirror );
setRotateKey( spep_0 + 864 + OFFSET_X, 1, 31 * mirror );



--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );
SE004 = playSeVer2( spep_0 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 50 );
SE005 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE005, 50 );
SE008 = playSeVer2( spep_0 + 146, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 146, SE008, 63 );
SE010 = playSeVer2( spep_0 + 170, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE010, 63 );
SE011 = playSeVer2( spep_0 + 194, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 194, SE011, 63 );
SE012 = playSeVer2( spep_0 + 218, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE012, 63 );
SE013 = playSeVer2( spep_0 + 242, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE013, 63 );

--イナヅマ
SE002 = playSeVer2( spep_0 + 0, 1148, "",spep_0 + 90, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 45 );
SE007 = playSeVer2( spep_0 + 146, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 146, SE007, 39 );

--入り
SE003 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 64 );

--回転蹴り
SE014 = playSeVer2( spep_0 + 252, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 272; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);

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

--オーラ
SE015 = playSeVer2( spep_0 + 266, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE015, 63 );
SE017 = playSeVer2( spep_0 + 290, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 290, SE017, 63 );
SE020 = playSeVer2( spep_0 + 314, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE020, 63 );
SE021 = playSeVer2( spep_0 + 338, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 338, SE021, 63 );
SE024 = playSeVer2( spep_0 + 362, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE024, 63 );

--回転蹴り
SE016 = playSeVer2( spep_0 + 272, 1521, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 272, SE016, 127 );
SE018 = playSeVer2( spep_0 + 287, 1187, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 287, 1009, "", 0, 0, 0, -1);

--蹴り上げ
SE022 = playSeVer2( spep_0 + 342, 1520, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 355, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 355, SE023, 136 );

--敵飛んでいく
SE025 = playSeVer2( spep_0 + 372, 1121, "",spep_0 + 587, 0, 114, -1);

--飛び上がる
SE026 = playSeVer2( spep_0 + 421, 1508, "",spep_0 + 492, 0, 22, -1);
SE027 = playSeVer2( spep_0 + 449, 43, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 449, 1109, "", 0, 0, 0, -1);

--オーラ
SE029 = playSeVer2( spep_0 + 476, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE029, 32 );
SE030 = playSeVer2( spep_0 + 500, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE030, 32 );
SE032 = playSeVer2( spep_0 + 524, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 524, SE032, 32 );
SE033 = playSeVer2( spep_0 + 548, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 548, SE033, 32 );

--振りかぶる
SE031 = playSeVer2( spep_0 + 503, 1116, "",spep_0 + 559, 0, 23, -1);
setSeVolumeByWorkId( spep_0 + 503, SE031, 84 );

--叩きつける
SE034 = playSeVer2( spep_0 + 544, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 544, SE034, 153 );
SE035 = playSeVer2( spep_0 + 550, 1049, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 555, 1110, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 559, 1120, "", 0, 0, 0, -1);

--敵落ちていく
SE038 = playSeVer2( spep_0 + 572, 1121, "",spep_0 + 694, 0, 49, -1);
setSeVolumeByWorkId( spep_0 + 572, SE038, 67 );
setPitch( spep_0 + 572, SE038, 200 );
setTimeStretch( SE038, 1.13, 30, 4 );

--地面激突
SE039 = playSeVer2( spep_0 + 640, 1159, "",spep_0 + 769, 0, 81, -1);

--オーラ
SE040 = playSeVer2( spep_0 + 672, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 672, SE040, 50 );
SE043 = playSeVer2( spep_0 + 696, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 696, SE043, 50 );
SE044 = playSeVer2( spep_0 + 720, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 720, SE044, 50 );
SE046 = playSeVer2( spep_0 + 744, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 744, SE046, 50 );

--気弾溜め
SE041 = playSeVer2( spep_0 + 678, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 678, SE041, 143 );
SE042 = playSeVer2( spep_0 + 678, 1131, "", 0, 0, 0, -1);

--気弾発射
SE045 = playSeVer2( spep_0 + 784, 1215, "",spep_0 + 913, 35, 29, -1);
setStartTimeMs( SE045,  850 );
SE047 = playSeVer2( spep_0 + 743, 1145, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 743, 1027, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_0 + 759, 1177, "",spep_0 + 903, 0, 28, -1);

--気弾飛んでいく
SE050 = playSeVer2( spep_0 + 832, 1021, "", 0, 0, 0, -1);

--爆発
SE051 = playSeVer2( spep_0 + 867, 1068, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_0 + 867, 1159, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 896, 1188, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_0 + 902, 1067, "", 0, 0, 0, -1);


-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 906); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 終了フレーム 1008f

