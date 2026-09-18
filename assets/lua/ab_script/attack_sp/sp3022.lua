--1034220:UR_ビルス_必殺技：破壊神の猛攻
--sp_effect_a9_00170
--sp3022

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164490; --カットイン ef_001
SP_02  = 164491; --カード明け ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 442;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;

        timing_skip = 208;

        skipFrame(0, spep_2 + timing_skip );
        setupMovie(spep_2 + timing_skip , SP_01, spep_2 + timing_skip -1 + 2, 1);

        -- ** 音 ** --
        --叩きつける
        SE037 = playSeVer2( spep_2 + 208 + 3, 1003, "", 0, 0, 0, -1);

    else
        setupMovie(0, SP_01, 0, 1);
    end

else

    setupMovie(0, SP_01, 0, 1);

    mirror = -1;

    --SP_01  = SP_01r; --敵側エフェクトがある場合のみ

end

------------------------------------------------------------------------------------------------------------
-- 共通演出
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- カットイン
-------------------------------------------------
MAX_FRAME_0 = 442;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カットイン(ef_001)
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
spep_x = spep_0 + 92;

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

ctgogo_x = -100; -- 演出によって白目にかからないように調整

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

-- ** 敵キャラクター(カットイン前) ** --
--敵の動き1
setDisp( spep_0 + 230 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 370 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 230 + OFFSET_X, 1, 103 );
changeAnimeBySide( spep_0 + 250 + OFFSET_X, 1, 110 );
changeAnimeBySide( spep_0 + 272 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 312 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 230 + OFFSET_X, 1, 213.2 * mirror, -3.9 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 213.2 * mirror, -3.9 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 201.5 * mirror, -5 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 201.5 * mirror, -5 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 185.7 * mirror, -5.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 185.7 * mirror, -5.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 166.7 * mirror, -3.8 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 166.7 * mirror, -3.8 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 147.7 * mirror, -3.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 147.7 * mirror, -3.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 128.7 * mirror, -3.3 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 128.7 * mirror, -3.3 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 106.5 * mirror, -4.5 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 106.5 * mirror, -4.5 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 83.5 * mirror, -5.2 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 83.5 * mirror, -5.2 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 58.8 * mirror, -5.2 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 58.8 * mirror, -5.2 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 28.6 * mirror, -5 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 28.6 * mirror, -5 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 1.5 * mirror, -6.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 1.5 * mirror, -6.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 7.9 * mirror, 8.6 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 7.9 * mirror, 8.6 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -11.7 * mirror, -12.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -11.7 * mirror, -12.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 11.4 * mirror, 6.6 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 11.4 * mirror, 6.6 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -2.2 * mirror, -10.6 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -2.2 * mirror, -10.6 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 9.4 * mirror, 0.9 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 9.4 * mirror, 0.9 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 3.8 * mirror, -10 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 3.8 * mirror, -10 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 7.3 * mirror, -8.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 7.3 * mirror, -8.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 10.4 * mirror, -7.9 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 10.4 * mirror, -7.9 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 11.7 * mirror, -7.6 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 11.7 * mirror, -7.6 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 11.9 * mirror, -7.5 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 11.9 * mirror, -7.5 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 7.9 * mirror, 82.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 7.9 * mirror, 82.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 84.5 * mirror, 32.1 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 84.5 * mirror, 32.1 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -19 * mirror, 54.1 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -19 * mirror, 54.1 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 45.4 * mirror, 95.4 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 45.4 * mirror, 95.4 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 1.6 * mirror, 72.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 1.6 * mirror, 72.3 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 14.2 * mirror, 58.8 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 14.2 * mirror, 58.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 15 * mirror, 66.9 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 15 * mirror, 66.9 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 15.7 * mirror, 60.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 15.7 * mirror, 60.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 16.2 * mirror, 63.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 16.2 * mirror, 63.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 16.4 * mirror, 59.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 16.4 * mirror, 59.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 16.2 * mirror, 62 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 16.2 * mirror, 62 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 15.8 * mirror, 58.5 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 15.8 * mirror, 58.5 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 14.9 * mirror, 60.9 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 14.9 * mirror, 60.9 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 13.8 * mirror, 59.8 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 13.8 * mirror, 59.8 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -29.9 * mirror, -52.5 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -29.9 * mirror, -52.5 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 13 * mirror, -30 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 13 * mirror, -30 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 25.9 * mirror, -23.2 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 25.9 * mirror, -23.2 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 33.3 * mirror, -19.3 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 33.3 * mirror, -19.3 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 37.5 * mirror, -17.1 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 37.5 * mirror, -17.1 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 38.9 * mirror, -16.2 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 38.9 * mirror, -16.2 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 1 * mirror, -124.5 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 1 * mirror, -124.5 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 11.8 * mirror, -73.3 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 11.8 * mirror, -73.3 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 15.7 * mirror, -120.2 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 15.7 * mirror, -120.2 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 18.6 * mirror, -75.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 18.6 * mirror, -75.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 20.8 * mirror, -114 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 20.8 * mirror, -114 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 22.7 * mirror, -81 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 22.7 * mirror, -81 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 24.3 * mirror, -111.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 24.3 * mirror, -111.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 25.7 * mirror, -86.9 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 25.7 * mirror, -86.9 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 26.9 * mirror, -110.8 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 26.9 * mirror, -110.8 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 28 * mirror, -89.2 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 28 * mirror, -89.2 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 28.9 * mirror, -109.8 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 28.9 * mirror, -109.8 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 29.8 * mirror, -92 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 29.8 * mirror, -92 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 30.6 * mirror, -109.2 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 30.6 * mirror, -109.2 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 31.3 * mirror, -94.7 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 31.3 * mirror, -94.7 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 32 * mirror, -108.4 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 32 * mirror, -108.4 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 32.6 * mirror, -97.3 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 32.6 * mirror, -97.3 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 33.1 * mirror, -107.2 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 33.1 * mirror, -107.2 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 33.6 * mirror, -98.9 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 33.6 * mirror, -98.9 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 34 * mirror, -104.5 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 34 * mirror, -104.5 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 34.4 * mirror, -100.3 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 34.4 * mirror, -100.3 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 34.7 * mirror, -102.7 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 34.7 * mirror, -102.7 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 35 * mirror, -100.8 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 35 * mirror, -100.8 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 35.3 * mirror, -102.7 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 35.3 * mirror, -102.7 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 35.5 * mirror, -100.7 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 35.5 * mirror, -100.7 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 35.7 * mirror, -102.4 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 35.7 * mirror, -102.4 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 35.8 * mirror, -100.5 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 35.8 * mirror, -100.5 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 35.9 * mirror, -101.7 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 35.9 * mirror, -101.7 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 36 * mirror, -100.8 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 36 * mirror, -100.8 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 36 * mirror, -101.3 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 36 * mirror, -101.3 , 0 );

setScaleKey( spep_0 + 230 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 3.99, 3.99 );

setRotateKey( spep_0 + 230 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 12 * mirror );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 12 * mirror );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -5.5 * mirror );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -5.5 * mirror );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -8.5 * mirror );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -8.5 * mirror );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -9.5 * mirror );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -9.5 * mirror );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -10.2 * mirror );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -10.2 * mirror );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -10.6 * mirror );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -10.6 * mirror );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -11 * mirror );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -11 * mirror );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -11.2 * mirror );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -11.2 * mirror );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -11.5 * mirror );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -11.5 * mirror );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -11.6 * mirror );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -11.6 * mirror );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -11.8 * mirror );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -11.8 * mirror );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -11.9 * mirror );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -11.9 * mirror );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -12 * mirror );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -12 * mirror );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -6.9 * mirror );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -6.9 * mirror );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -8.9 * mirror );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -8.9 * mirror );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -10.1 * mirror );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -10.1 * mirror );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -10.8 * mirror );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, -10.8 * mirror );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -11 * mirror );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -11 * mirror );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -54.2 * mirror );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, -54.2 * mirror );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, -53.2 * mirror );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, -53.2 * mirror );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, -52.9 * mirror );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -52.9 * mirror );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -52.6 * mirror );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -52.6 * mirror );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -52.4 * mirror );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -52.4 * mirror );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -52.3 * mirror );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -52.3 * mirror );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -52.1 * mirror );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -52.1 * mirror );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -52 * mirror );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -52 * mirror );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -51.9 * mirror );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -51.9 * mirror );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -51.8 * mirror );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -51.8 * mirror );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -51.7 * mirror );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -51.7 * mirror );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -51.6 * mirror );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, -51.6 * mirror );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -51.5 * mirror );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, -51.5 * mirror );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -51.4 * mirror );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -51.4 * mirror );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -51.3 * mirror );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, -51.3 * mirror );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -51.2 * mirror );
setRotateKey( spep_0 + 359 + OFFSET_X, 1, -51.2 * mirror );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, -51.1 * mirror );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, -51.1 * mirror );

--敵の動き2
setDisp( spep_0 + 374 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 442 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 374 + OFFSET_X, 1, 107 );
changeAnimeBySide( spep_0 + 404 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 374 + OFFSET_X, 1, 181.1 * mirror, 40.4 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 181.1 * mirror, 40.4 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 395.6 * mirror, 158.4 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 395.6 * mirror, 158.4 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 474.8 * mirror, 187.5 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 474.8 * mirror, 187.5 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 529.3 * mirror, 227.1 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 529.3 * mirror, 227.1 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 570.9 * mirror, 237.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 570.9 * mirror, 237.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 604.1 * mirror, 265.2 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 604.1 * mirror, 265.2 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 631.3 * mirror, 269.7 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 631.3 * mirror, 269.7 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 653.8 * mirror, 289.7 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 653.8 * mirror, 289.7 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 672.6 * mirror, 291.7 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 672.6 * mirror, 291.7 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 688.2 * mirror, 306.3 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 688.2 * mirror, 306.3 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 701.1 * mirror, 306.7 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 701.1 * mirror, 306.7 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 711.4 * mirror, 317.5 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 711.4 * mirror, 317.5 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 719.5 * mirror, 317 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 719.5 * mirror, 317 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 725.2 * mirror, 323.7 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 725.2 * mirror, 323.7 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 727.9 * mirror, 322.8 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 727.9 * mirror, 322.8 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 76 * mirror, -42.3 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 76 * mirror, -42.3 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 79.2 * mirror, -42.4 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 79.2 * mirror, -42.4 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 81 * mirror, -36 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 81 * mirror, -36 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 82.6 * mirror, -38.9 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 82.6 * mirror, -38.9 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 84 * mirror, -34.4 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 84 * mirror, -34.4 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 85.4 * mirror, -36.3 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 85.4 * mirror, -36.3 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 86.6 * mirror, -31.9 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 86.6 * mirror, -31.9 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 87.8 * mirror, -33.7 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 87.8 * mirror, -33.7 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 88.9 * mirror, -30.7 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 88.9 * mirror, -30.7 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 89.9 * mirror, -32.3 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 89.9 * mirror, -32.3 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 90.8 * mirror, -28.9 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 90.8 * mirror, -28.9 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 91.7 * mirror, -30.5 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 91.7 * mirror, -30.5 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 92.5 * mirror, -27.3 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 92.5 * mirror, -27.3 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 93.2 * mirror, -29.4 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 93.2 * mirror, -29.4 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 93.9 * mirror, -26.5 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 93.9 * mirror, -26.5 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 94.4 * mirror, -28.5 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 94.4 * mirror, -28.5 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 94.9 * mirror, -26.2 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 94.9 * mirror, -26.2 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 95.2 * mirror, -27.6 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 95.2 * mirror, -27.6 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 95.4 * mirror, -25.8 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 95.4 * mirror, -25.8 , 0 );

setScaleKey( spep_0 + 374 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 0.71, 0.71 );

setRotateKey( spep_0 + 374 + OFFSET_X, 1, -17 * mirror );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, -17 * mirror );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, 13 * mirror );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, 13 * mirror );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, 16.3 * mirror );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, 16.3 * mirror );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, 17.6 * mirror );
setRotateKey( spep_0 + 409 + OFFSET_X, 1, 17.6 * mirror );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, 18.6 * mirror );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, 18.6 * mirror );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, 19.4 * mirror );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, 19.4 * mirror );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, 20.1 * mirror );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, 20.1 * mirror );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, 20.7 * mirror );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, 20.7 * mirror );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, 21.2 * mirror );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, 21.2 * mirror );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, 21.7 * mirror );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, 21.7 * mirror );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, 22.1 * mirror );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, 22.1 * mirror );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, 22.5 * mirror );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, 22.5 * mirror );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, 22.8 * mirror );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, 22.8 * mirror );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, 23.1 * mirror );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, 23.1 * mirror );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, 23.4 * mirror );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, 23.4 * mirror );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, 23.6 * mirror );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, 23.6 * mirror );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, 23.8 * mirror );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, 23.8 * mirror );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, 24 * mirror );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, 24 * mirror );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, 24.1 * mirror );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, 24.1 * mirror );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, 24.2 * mirror );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, 24.2 * mirror );

-- ** 音 ** --
--構える
SE001 = playSeVer2( spep_0 + 0, 1315, "",spep_0 + 234, 7, 39, -1);
setStartTimeMs( SE001,  933 );
SE002 = playSeVer2( spep_0 + 0, 1391, "",spep_0 + 276, 42, 94, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );
SE003 = playSeVer2( spep_0 + 0, 1493, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 29 );
SE004 = playSeVer2( spep_0 + 0, 1215, "",spep_0 + 234, 0, 85, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 55 );
SE005 = playSeVer2( spep_0 + 0, 1266, "",spep_0 + 260, 0, 89, -1);
setSeVolumeByWorkId( spep_0 + 0, SE005, 64 );
--セリフカットイン
--SE006 = playSeVer2( spep_0 + 104, 1018, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 236;

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--敵向かってくる
SE007 = playSeVer2( spep_0 + 228, 1117, "",spep_0 + 301, 0, 35, -1);
--受け止める
SE008 = playSeVer2( spep_0 + 250, 1000, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 250, 1013, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 250, 1007, "", 0, 0, 0, -1);
--肘打ち
SE011 = playSeVer2( spep_0 + 270, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE011, 76 );
SE012 = playSeVer2( spep_0 + 270, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE012, 61 );
--裏拳
SE013 = playSeVer2( spep_0 + 304, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 312, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 312, 1009, "", 0, 0, 0, -1);
--振りかぶる
SE016 = playSeVer2( spep_0 + 338, 1004, "", 0, 0, 0, -1);
--蹴り飛ばす
SE017 = playSeVer2( spep_0 + 368, 1120, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 368, 1110, "", 0, 0, 0, -1);
--追いかける
SE019 = playSeVer2( spep_0 + 406, 1452, "",spep_0 + 467, 0, 20, -1);
SE020 = playSeVer2( spep_0 + 406, 1182, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 442

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カード明け
-------------------------------------------------
MAX_FRAME_2 = 458;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード明け(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 50 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 0, 1, 108 );
changeAnimeBySide( spep_2 + 32 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 0, 1, -36 * mirror, 24 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -2.3 * mirror, 21.8 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -2.3 * mirror, 21.8 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 16.8 * mirror, 17.2 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 16.8 * mirror, 17.2 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 30.6 * mirror, 18.2 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 30.6 * mirror, 18.2 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 41.3 * mirror, 14.5 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 41.3 * mirror, 14.5 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 50.1 * mirror, 15.6 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 50.1 * mirror, 15.6 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 57.3 * mirror, 12.7 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 57.3 * mirror, 12.7 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 63.4 * mirror, 13.3 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 63.4 * mirror, 13.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 68.5 * mirror, 11 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 68.5 * mirror, 11 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 72.8 * mirror, 12.2 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 72.8 * mirror, 12.2 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 76.4 * mirror, 10 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 76.4 * mirror, 10 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 79.4 * mirror, 11.7 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 79.4 * mirror, 11.7 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 81.8 * mirror, 9.7 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 81.8 * mirror, 9.7 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 83.7 * mirror, 11.7 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 83.7 * mirror, 11.7 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 85 * mirror, 9.3 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 85 * mirror, 9.3 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 86.5 * mirror, 10.6 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 86.5 * mirror, 10.6 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -7.8 * mirror, 92.6 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -7.8 * mirror, 92.6 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 32.7 * mirror, 65.3 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 32.7 * mirror, 65.3 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 11.6 * mirror, 161 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 11.6 * mirror, 161 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 39.2 * mirror, 306.4 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 39.2 * mirror, 306.4 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -8.2 * mirror, 417.5 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -8.2 * mirror, 417.5 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 31.7 * mirror, 471.3 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 31.7 * mirror, 471.3 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -21.9 * mirror, 552.4 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -21.9 * mirror, 552.4 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 49.7 * mirror, 624.9 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 49.7 * mirror, 624.9 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 11.6 * mirror, 614.6 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 11.6 * mirror, 614.6 , 0 );

setScaleKey( spep_2 + 0, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.55, 1.55 );

setRotateKey( spep_2 + 0, 1, 0 * mirror );
setRotateKey( spep_2 + 2 + OFFSET_X, 1, -2.8 * mirror );
setRotateKey( spep_2 + 3 + OFFSET_X, 1, -2.8 * mirror );
setRotateKey( spep_2 + 4 + OFFSET_X, 1, -4.3 * mirror );
setRotateKey( spep_2 + 5 + OFFSET_X, 1, -4.3 * mirror );
setRotateKey( spep_2 + 6 + OFFSET_X, 1, -5.5 * mirror );
setRotateKey( spep_2 + 7 + OFFSET_X, 1, -5.5 * mirror );
setRotateKey( spep_2 + 8 + OFFSET_X, 1, -6.4 * mirror );
setRotateKey( spep_2 + 9 + OFFSET_X, 1, -6.4 * mirror );
setRotateKey( spep_2 + 10 + OFFSET_X, 1, -7.1 * mirror );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, -7.1 * mirror );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, -7.7 * mirror );
setRotateKey( spep_2 + 13 + OFFSET_X, 1, -7.7 * mirror );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, -8.2 * mirror );
setRotateKey( spep_2 + 15 + OFFSET_X, 1, -8.2 * mirror );
setRotateKey( spep_2 + 16 + OFFSET_X, 1, -8.6 * mirror );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, -8.6 * mirror );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, -8.9 * mirror );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, -8.9 * mirror );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, -9.2 * mirror );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, -9.2 * mirror );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, -9.5 * mirror );
setRotateKey( spep_2 + 23 + OFFSET_X, 1, -9.5 * mirror );
setRotateKey( spep_2 + 24 + OFFSET_X, 1, -9.7 * mirror );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, -9.7 * mirror );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, -9.8 * mirror );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, -9.8 * mirror );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, -9.9 * mirror );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, -9.9 * mirror );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, -10 * mirror );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, -10 * mirror );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, -43.9 * mirror );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, -43.9 * mirror );

--敵の動き2
setDisp( spep_2 + 88 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 134 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 88 + OFFSET_X, 1, -43 * mirror, -119.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -43 * mirror, -119.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -28 * mirror, -129 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -28 * mirror, -129 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 3.7 * mirror, -144.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 3.7 * mirror, -144.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 135.4 * mirror, -254.6 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 135.4 * mirror, -254.6 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 213.1 * mirror, -295.1 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 213.1 * mirror, -295.1 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 357.8 * mirror, -411.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 357.8 * mirror, -411.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 507.5 * mirror, -525 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 507.5 * mirror, -525 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 577.9 * mirror, -770 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 577.9 * mirror, -770 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 633.6 * mirror, -1019.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 633.6 * mirror, -1019.9 , 0 );

setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 5.74, 5.74 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 5.74, 5.74 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 6.27, 6.27 );

setRotateKey( spep_2 + 88 + OFFSET_X, 1, 48.9 * mirror );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 48.9 * mirror );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 48.6 * mirror );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 48.6 * mirror );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 35.3 * mirror );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 35.3 * mirror );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 26.2 * mirror );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 26.2 * mirror );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 23.9 * mirror );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 23.9 * mirror );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 22 * mirror );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 22 * mirror );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 20.1 * mirror );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 20.1 * mirror );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 18.3 * mirror );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 18.3 * mirror );

setGaussBlurKey( spep_2 + 87 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 88 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 91 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 92 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 93 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 94 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 95 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 96 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 99 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 100 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 101 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 102 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 105 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 106 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 107 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 108 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 111 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 112 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 113 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 114 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 117 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 118 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 119 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 120 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 125 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 126 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 127 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 128 + OFFSET_X, 1, 0 );

--敵の動き3
setDisp( spep_2 + 172 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 274 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 220 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 172 + OFFSET_X, 1, 393.5 * mirror, -1163.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 393.5 * mirror, -1163.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 362.5 * mirror, -1079.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 362.5 * mirror, -1079.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 349.5 * mirror, -989.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 349.5 * mirror, -989.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 331.5 * mirror, -927.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 331.5 * mirror, -927.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 313.5 * mirror, -868.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 313.5 * mirror, -868.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 282.5 * mirror, -808.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 282.5 * mirror, -808.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 267.5 * mirror, -761.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 267.5 * mirror, -761.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 248.5 * mirror, -708.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 248.5 * mirror, -708.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 233.5 * mirror, -659.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 233.5 * mirror, -659.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 209.5 * mirror, -617.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 209.5 * mirror, -617.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 196.5 * mirror, -574.3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 196.5 * mirror, -574.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 188.0 * mirror, -555.0 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 188.0 * mirror, -555.0 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -318.4 * mirror, -253.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -318.4 * mirror, -253.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -87.4 * mirror, -125.8 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -87.4 * mirror, -125.8 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 9.4 * mirror, -68 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 9.4 * mirror, -68 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 65.7 * mirror, -86.6 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 65.7 * mirror, -86.6 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 86.3 * mirror, -99.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 86.3 * mirror, -99.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 152.4 * mirror, -191.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 152.4 * mirror, -191.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 154.6 * mirror, -203.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 154.6 * mirror, -203.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 204.6 * mirror, -236.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 204.6 * mirror, -236.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 193.1 * mirror, -244 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 193.1 * mirror, -244 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 200 * mirror, -238.3 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 200 * mirror, -238.3 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 229.3 * mirror, -281.1 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 229.3 * mirror, -281.1 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 231.4 * mirror, -278.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 231.4 * mirror, -278.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 229.8 * mirror, -280.6 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 229.8 * mirror, -280.6 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 252 * mirror, -304 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 252 * mirror, -304 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 252.9 * mirror, -305.4 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 252.9 * mirror, -305.4 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 261.4 * mirror, -315.6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 261.4 * mirror, -315.6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 262.1 * mirror, -317.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 262.1 * mirror, -317.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 269.5 * mirror, -324.3 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 269.5 * mirror, -324.3 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 269.5 * mirror, -325.5 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 269.5 * mirror, -325.5 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 269.5 * mirror, -324.7 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 269.5 * mirror, -324.7 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 276.6 * mirror, -333.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 276.6 * mirror, -333.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 276.6 * mirror, -332.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 276.6 * mirror, -332.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 276.6 * mirror, -333.7 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 276.6 * mirror, -333.7 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 279.7 * mirror, -337.2 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 279.7 * mirror, -337.2 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 279.7 * mirror, -338 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 279.7 * mirror, -338 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 280.8 * mirror, -337.5 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 280.8 * mirror, -337.5 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 76.3 * mirror, -162 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 76.3 * mirror, -162 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 83.2 * mirror, -180.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 83.2 * mirror, -180.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 83.2 * mirror, -180.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 83.2 * mirror, -180.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 90.1 * mirror, -198.2 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 90.1 * mirror, -198.2 , 0 );

setScaleKey( spep_2 + 172 + OFFSET_X, 1, 7.51, 7.51 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 7.51, 7.51 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 172 + OFFSET_X, 1, 38.1 * mirror );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 38.1 * mirror );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 43.9 * mirror );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 43.9 * mirror );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 83 * mirror );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 83 * mirror );

setGaussBlurKey( spep_2 + 171 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 172 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 177 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_2 + 178 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 179 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 180 + OFFSET_X, 1, 0.001 );
setGaussBlurKey( spep_2 + 185 + OFFSET_X, 1, 0.001 );
setGaussBlurKey( spep_2 + 186 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 187 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 188 + OFFSET_X, 1, 0.001 );
setGaussBlurKey( spep_2 + 189 + OFFSET_X, 1, 0.001 );
setGaussBlurKey( spep_2 + 190 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 191 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 192 + OFFSET_X, 1, 0.001 );
setGaussBlurKey( spep_2 + 193 + OFFSET_X, 1, 0.001 );
setGaussBlurKey( spep_2 + 194 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 195 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 196 + OFFSET_X, 1, 0.001 );
setGaussBlurKey( spep_2 + 199 + OFFSET_X, 1, 0.001 );
setGaussBlurKey( spep_2 + 200 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 201 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 202 + OFFSET_X, 1, 0.001 );
setGaussBlurKey( spep_2 + 205 + OFFSET_X, 1, 0.001 );
setGaussBlurKey( spep_2 + 206 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--カードカットイン
--SE021 = playSeVer2( spep_1 + 4, 1035, "", 0, 0, 0, -1);
--宙返る
SE022 = playSeVer2( spep_2 + 4, 1116, "",spep_2 + 58, 0, 25, -1);
SE023 = playSeVer2( spep_2 + 12, 1004, "", 0, 0, 0, -1);
--蹴り上げる
SE024 = playSeVer2( spep_2 + 32, 1187, "",spep_2 + 104, 0, 46, -1);
setSeVolumeByWorkId( spep_2 + 32, SE024, 82 );
SE025 = playSeVer2( spep_2 + 32, 1169, "", 0, 0, 0, -1);
--走る
SE026 = playSeVer2( spep_2 + 48, 1108, "", spep_2 + 48 + 6, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 48, SE026, 170 );
SE027 = playSeVer2( spep_2 + 48, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE027, 158 );
SE028 = playSeVer2( spep_2 + 54, 1108, "", spep_2 + 54 + 6, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 54, SE028, 193 );
SE029 = playSeVer2( spep_2 + 62, 1108, "", spep_2 + 62, 1108 + 6, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 62, SE029, 176 );
SE030 = playSeVer2( spep_2 + 62, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE030, 170 );
SE031 = playSeVer2( spep_2 + 70, 1108, "", spep_2 + 70 + 4, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 70, SE031, 176 );
stopSeIfDoubleSpeed( spep_2 + 70, SE031 );
--ジャンプ
SE032 = playSeVer2( spep_2 + 74, 1192, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 74, 1117, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 74, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE034, 58 );
SE035 = playSeVer2( spep_2 + 80, 1278, "",spep_2 + 284, 0, 103, -1);
setSeVolumeByWorkId( spep_2 + 80, SE035, 43 );
--振りかぶる
SE036 = playSeVer2( spep_2 + 150, 1116, "",spep_2 + 203, 0, 31, -1);
--叩きつける
SE037 = playSeVer2( spep_2 + 206, 1003, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 212, 1123, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 212, 1049, "", 0, 0, 0, -1);
--水に落ちる
SE040 = playSeVer2( spep_2 + 250, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE040, 295 );
SE041 = playSeVer2( spep_2 + 275, 1166, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 278, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 278, SE042, 63 );
SE043 = playSeVer2( spep_2 + 278, 1470, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 274); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 458