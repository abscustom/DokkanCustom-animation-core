--1034660:UR_ジース+バータ_必殺技：クラッシャーボール
--sp_effect_b4_00447
--sp3073

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164539; --最初〜最後まで ef_001

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



ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 190;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --発射前気弾溜め
        SE008 = playSeVer2( spep_0 + 190 + 3, 1176, "",spep_0 + 216, 0, 10, -1);
        setSeVolumeByWorkId( spep_0 + 190 + 3, SE008, 39 );
        SE009 = playSeVer2( spep_0 + 190 + 3, 1239, "",spep_0 + 216, 0, 10, -1);

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
MAX_FRAME_0 = 438;
CARD_FRAME = 88;

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
spep_x = spep_0 + 0; --spep名とフレーム数を置き換える

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
-- 敵の動き
setDisp( spep_0 + 226 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 310 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 226 + OFFSET_X, 1, 117 );
changeAnimeBySide( spep_0 + 254 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 226 + OFFSET_X, 1, 174.4 * mirror, -52.6 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 174.4 * mirror, -52.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 174.4 * mirror, -53 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 174.4 * mirror, -53 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 174.5 * mirror, -51.8 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 174.5 * mirror, -51.8 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 174.6 * mirror, -53.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 174.6 * mirror, -53.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 174.6 * mirror, -51.2 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 174.6 * mirror, -51.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 174.7 * mirror, -52.7 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 174.7 * mirror, -52.7 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 174.8 * mirror, -50.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 174.8 * mirror, -50.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 174.9 * mirror, -52.6 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 174.9 * mirror, -52.6 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 174.9 * mirror, -50 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 174.9 * mirror, -50 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 175 * mirror, -52.4 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 175 * mirror, -52.4 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 175.1 * mirror, -49.6 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 175.1 * mirror, -49.6 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 175.2 * mirror, -52.2 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 175.2 * mirror, -52.2 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 175.2 * mirror, -49.9 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 175.2 * mirror, -49.9 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 175.3 * mirror, -51.9 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 175.3 * mirror, -51.9 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 194.6 * mirror, -62.9 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 194.6 * mirror, -62.9 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 188.6 * mirror, -45.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 188.6 * mirror, -45.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 191 * mirror, -63.9 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 191 * mirror, -63.9 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 194.4 * mirror, -50.1 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 194.4 * mirror, -50.1 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 198.3 * mirror, -65.7 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 198.3 * mirror, -65.7 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 202.3 * mirror, -55.5 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 202.3 * mirror, -55.5 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 214.1 * mirror, -73.6 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 214.1 * mirror, -73.6 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 225.9 * mirror, -69.6 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 225.9 * mirror, -69.6 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 237.7 * mirror, -86.5 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 237.7 * mirror, -86.5 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 249.5 * mirror, -84.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 249.5 * mirror, -84.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 261.3 * mirror, -98.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 261.3 * mirror, -98.6 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 273.2 * mirror, -99 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 273.2 * mirror, -99 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 285 * mirror, -109.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 285 * mirror, -109.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -364.6 * mirror, 269.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -364.6 * mirror, 269.3 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -352.5 * mirror, 257.6 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -352.5 * mirror, 257.6 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -332 * mirror, 234.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -332 * mirror, 234.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -308.3 * mirror, 211.8 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -308.3 * mirror, 211.8 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -282.5 * mirror, 183.4 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -282.5 * mirror, 183.4 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -254.9 * mirror, 155.9 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -254.9 * mirror, 155.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -225.8 * mirror, 124.4 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -225.8 * mirror, 124.4 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -195.2 * mirror, 93.8 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -195.2 * mirror, 93.8 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -163.2 * mirror, 59.2 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -163.2 * mirror, 59.2 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -129.5 * mirror, 25.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -129.5 * mirror, 25.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -93.9 * mirror, -12.7 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -93.9 * mirror, -12.7 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -56.1 * mirror, -51.1 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -56.1 * mirror, -51.1 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -15.3 * mirror, -94.5 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -15.3 * mirror, -94.5 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 29.6 * mirror, -140.3 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 29.6 * mirror, -140.3 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 81.7 * mirror, -195.2 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 81.7 * mirror, -195.2 , 0 );

setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.65, 0.65 );

setRotateKey( spep_0 + 226 + OFFSET_X, 1, 13.8 * mirror );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 13.8 * mirror );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 46.1 * mirror );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 46.1 * mirror );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--構える
SE002 = playSeVer2( spep_0 + 19, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 19, SE002, 76 );

--気弾溜め
SE003 = playSeVer2( spep_0 + 39, 1209, "",spep_0 + 114, 0, 31, -1);
setPitch( spep_0 + 39, SE003, -500 );
setTimeStretch( SE003, 0.67, 30, 4 );
SE004 = playSeVer2( spep_0 + 39, 1354, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 39, 1239, "",spep_0 + 112, 0, 17, -1);
setSeVolumeByWorkId( spep_0 + 39, SE005, 182 );
setPitch( spep_0 + 39, SE005, -500 );
setTimeStretch( SE005, 0.67, 30, 4 );
SE006 = playSeVer2( spep_0 + 50, 1176, "",spep_0 + 116, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 50, SE006, 31 );

--発射前気弾溜め
SE008 = playSeVer2( spep_0 + 176, 1176, "",spep_0 + 206, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 176, SE008, 39 );
SE009 = playSeVer2( spep_0 + 176, 1239, "",spep_0 + 206, 0, 10, -1);
setPitch( spep_0 + 176, SE009, -500 );
setTimeStretch( SE009, 0.67, 30, 4 );

--気弾発射
SE010 = playSeVer2( spep_0 + 195, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 195, 1145, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 230; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--敵ヒット
SE012 = playSeVer2( spep_0 + 248, 1193, "",spep_0 + 353, 32, 33, -1);
setSeVolumeByWorkId( spep_0 + 248, SE012, 75 );
setStartTimeMs( SE012,  600 );
SE013 = playSeVer2( spep_0 + 248, 1011, "", 0, 0, 0, -1);

--爆発
SE014 = playSeVer2( spep_0 + 308, 1159, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 322, 1024, "", 0, 0, 0, -1);


-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 330); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 438f