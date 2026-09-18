--1033970:LR_フリーザ(最終形態)_必殺技：デスドライブ
--sp_effect_b1_00374
--sp3035

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164559; --開幕〜フィニッシュ ef_001

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



ENABLE_AUTO_TIME_STRETCH(0.72);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 974;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --気弾溜め
        SE039 = playSeVer2( spep_0 + 974 + 3, 1282, "",spep_0 + 1041, 0, 35, -1);
        SE040 = playSeVer2( spep_0 + 977 + 3, 1296, "",spep_0 + 1039, 0, 31, -1);
        SE041 = playSeVer2( spep_0 + 977 + 3, 1281, "",spep_0 + 1038, 0, 36, -1);

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
-- 開幕〜フィニッシュ
-------------------------------------------------
MAX_FRAME_0 = 1152;
CARD_FRAME = 86;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕〜フィニッシュ(ef_001)
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
spep_x = spep_0 + 2; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き1
setDisp( spep_0 + 242 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 350 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 242 + OFFSET_X, 1, 6 );

y = -1

setMoveKey( spep_0 + 242 + OFFSET_X, 1, -168.1 * mirror, -53.8 + y , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -168.1 * mirror, -53.8 + y , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -150.6 * mirror, -93.8 + y , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -150.6 * mirror, -93.8 + y , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -245.8 * mirror, -57.7 + y , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -245.8 * mirror, -57.7 + y , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -294.6 * mirror, -95.5 + y , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -294.6 * mirror, -95.5 + y , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -372.2 * mirror, -95.2 + y , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -372.2 * mirror, -95.2 + y , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -372.4 * mirror, -99.1 + y , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -372.4 * mirror, -99.1 + y , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -375.6 * mirror, -99.2 + y , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -375.6 * mirror, -99.2 + y , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -378.8 * mirror, -99.4 + y , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -378.8 * mirror, -99.4 + y , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -382 * mirror, -99.7 + y , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -382 * mirror, -99.7 + y , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -385.1 * mirror, -100 + y , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -385.1 * mirror, -100 + y , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -388.2 * mirror, -100.2 + y , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -388.2 * mirror, -100.2 + y , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -391.4 * mirror, -100.6 + y , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -391.4 * mirror, -100.6 + y , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -394.6 * mirror, -100.8 + y , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -394.6 * mirror, -100.8 + y , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -397.8 * mirror, -101 + y , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -397.8 * mirror, -101 + y , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -401 * mirror, -101.2 + y , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -401 * mirror, -101.2 + y , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -404.2 * mirror, -101.3 + y , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -404.2 * mirror, -101.3 + y , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -407.4 * mirror, -101.4 + y , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -407.4 * mirror, -101.4 + y , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -410.5 * mirror, -101.5 + y , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -410.5 * mirror, -101.5 + y , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -413.8 * mirror, -101.5 + y , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -413.8 * mirror, -101.5 + y , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -417 * mirror, -101.5 + y , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -417 * mirror, -101.5 + y , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -420.1 * mirror, -101.6 + y , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -420.1 * mirror, -101.6 + y , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -423.3 * mirror, -101.5 + y , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -423.3 * mirror, -101.5 + y , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -426.6 * mirror, -101.6 + y , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -426.6 * mirror, -101.6 + y , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -120.9 * mirror, -641.9 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -120.9 * mirror, -641.9 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -85.5 * mirror, -648.9 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -85.5 * mirror, -648.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -47.2 * mirror, -656.4 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -47.2 * mirror, -656.4 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -5 * mirror, -664.5 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -5 * mirror, -664.5 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 42 * mirror, -673.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 42 * mirror, -673.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 95.5 * mirror, -684 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 95.5 * mirror, -684 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 156.8 * mirror, -696 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 156.8 * mirror, -696 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 228.1 * mirror, -709.8 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 228.1 * mirror, -709.8 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 312.4 * mirror, -726.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 312.4 * mirror, -726.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 413.7 * mirror, -745.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 413.7 * mirror, -745.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 538 * mirror, -770.1 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 538 * mirror, -770.1 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 694.6 * mirror, -800.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 694.6 * mirror, -800.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 899.5 * mirror, -840.3 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 899.5 * mirror, -840.3 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 1184.5 * mirror, -895.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 1184.5 * mirror, -895.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 1632.3 * mirror, -982.9 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 1632.3 * mirror, -982.9 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 1642.1 * mirror, -984.9 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 1642.1 * mirror, -984.9 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 1663.5 * mirror, -989.2 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 1663.5 * mirror, -989.2 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 1692.8 * mirror, -995.2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 1692.8 * mirror, -995.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 1729 * mirror, -1002.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 1729 * mirror, -1002.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 1772 * mirror, -1011.5 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 1772 * mirror, -1011.5 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 1822.1 * mirror, -1021.7 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 1822.1 * mirror, -1021.7 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 1879.5 * mirror, -1033.4 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 1879.5 * mirror, -1033.4 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 1945.4 * mirror, -1046.8 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 1945.4 * mirror, -1046.8 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 2020.7 * mirror, -1062.2 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 2020.7 * mirror, -1062.2 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 2107.1 * mirror, -1079.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 2107.1 * mirror, -1079.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 2207 * mirror, -1100.3 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 2207 * mirror, -1100.3 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 2324.2 * mirror, -1124.3 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 2324.2 * mirror, -1124.3 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 2464.6 * mirror, -1153 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 2464.6 * mirror, -1153 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 2639.2 * mirror, -1188.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 2639.2 * mirror, -1188.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 2872.8 * mirror, -1236.3 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 2872.8 * mirror, -1236.3 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 3261.7 * mirror, -1315.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 3261.7 * mirror, -1315.8 , 0 );

sc = 0.3;

setScaleKey( spep_0 + 242 + OFFSET_X, 1, 2.35 + sc, 2.35  + sc);
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 2.35 + sc, 2.35  + sc);
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 8.57, 8.57 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 8.57, 8.57 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 8.61, 8.61 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 8.61, 8.61 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 8.61, 8.61 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 8.61, 8.61 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 8.57, 8.57 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 8.57, 8.57 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 8.51, 8.51 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 8.51, 8.51 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 8.44, 8.44 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 8.44, 8.44 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 8.36, 8.36 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 8.36, 8.36 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 8.29, 8.29 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 8.29, 8.29 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 8.26, 8.26 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 8.26, 8.26 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 8.47, 8.47 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 8.47, 8.47 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 8.91, 8.91 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 8.91, 8.91 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 10, 10 );

setRotateKey( spep_0 + 242 + OFFSET_X, 1, 53 * mirror );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, 53 * mirror );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 47 * mirror );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, 47 * mirror );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, 41 * mirror );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, 41 * mirror );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 35 * mirror );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, 35 * mirror );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, 34.6 * mirror );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 34.6 * mirror );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 34.1 * mirror );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 34.1 * mirror );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, 33.8 * mirror );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, 33.8 * mirror );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 33.4 * mirror );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, 33.4 * mirror );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 33.1 * mirror );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, 33.1 * mirror );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 32.6 * mirror );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 32.6 * mirror );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 32.3 * mirror );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 32.3 * mirror );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 31.8 * mirror );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 31.8 * mirror );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 31.5 * mirror );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 31.5 * mirror );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 31.1 * mirror );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 31.1 * mirror );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 30.6 * mirror );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 30.6 * mirror );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 30.3 * mirror );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 30.3 * mirror );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 29.8 * mirror );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 29.8 * mirror );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 29.6 * mirror );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 29.6 * mirror );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 29.1 * mirror );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 29.1 * mirror );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 28.8 * mirror );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, 28.8 * mirror );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 28.3 * mirror );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 28.3 * mirror );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 28 * mirror );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 28 * mirror );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 27.8 * mirror );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 27.8 * mirror );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 27.6 * mirror );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 27.6 * mirror );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 27.3 * mirror );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 27.3 * mirror );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 26.8 * mirror );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, 26.8 * mirror );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 26.6 * mirror );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 26.6 * mirror );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 26.3 * mirror );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 26.3 * mirror );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 25.8 * mirror );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 25.8 * mirror );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 25.3 * mirror );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, 25.3 * mirror );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 24.8 * mirror );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 24.8 * mirror );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 24.1 * mirror );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 24.1 * mirror );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 23.1 * mirror );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 23.1 * mirror );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 21.8 * mirror );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 21.8 * mirror );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 20 * mirror );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 20 * mirror );

-- 敵の動き2
setDisp( spep_0 + 434 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 502 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 434 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 436 + OFFSET_X, 1, 107 );
changeAnimeBySide( spep_0 + 442 + OFFSET_X, 1, 105 );
changeAnimeBySide( spep_0 + 474 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 434 + OFFSET_X, 1, 169.1 * mirror, 42.9 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 169.1 * mirror, 42.9 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 121 * mirror, 275.9 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 121 * mirror, 275.9 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 139 * mirror, 299.9 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 139 * mirror, 299.9 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 150 * mirror, 503.9 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 150 * mirror, 503.9 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -561.8 * mirror, -628.2 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -561.8 * mirror, -628.2 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -312.2 * mirror, -298.7 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -312.2 * mirror, -298.7 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -180.8 * mirror, -169.1 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -180.8 * mirror, -169.1 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -29.4 * mirror, -58.1 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -29.4 * mirror, -58.1 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 16.5 * mirror, -28.8 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 16.5 * mirror, -28.8 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 47.4 * mirror, -10.2 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 47.4 * mirror, -10.2 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 65.8 * mirror, -1.4 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 65.8 * mirror, -1.4 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 80 * mirror, 2.5 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 80 * mirror, 2.5 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 97.4 * mirror, 6.9 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 97.4 * mirror, 6.9 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 98.6 * mirror, 13.3 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 98.6 * mirror, 13.3 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 104 * mirror, 22.9 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 104 * mirror, 22.9 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 117.4 * mirror, 23 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 117.4 * mirror, 23 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 99.6 * mirror, -0.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 99.6 * mirror, -0.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 96.3 * mirror, 27.2 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 96.3 * mirror, 27.2 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 125 * mirror, -0.9 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 125 * mirror, -0.9 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 93.5 * mirror, -18.9 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 93.5 * mirror, -18.9 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 81.1 * mirror, -29.4 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 81.1 * mirror, -29.4 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 70 * mirror, -11.2 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 70 * mirror, -11.2 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 68.8 * mirror, -11.6 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 68.8 * mirror, -11.6 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 75.6 * mirror, -41 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 75.6 * mirror, -41 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 81.3 * mirror, -36.5 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 81.3 * mirror, -36.5 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 83.8 * mirror, -42.8 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 83.8 * mirror, -42.8 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 86.7 * mirror, -45.6 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 86.7 * mirror, -45.6 , 0 );

setScaleKey( spep_0 + 434 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 11.44, 11.44 );
setScaleKey( spep_0 + 447 + OFFSET_X, 1, 11.44, 11.44 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 7.88, 7.88 );
setScaleKey( spep_0 + 449 + OFFSET_X, 1, 7.88, 7.88 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_0 + 434 + OFFSET_X, 1, -52.5 * mirror );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, -52.5 * mirror );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -58.5 * mirror );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -58.5 * mirror );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, 15 * mirror );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, 15 * mirror );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, 3 * mirror );
setRotateKey( spep_0 + 502 + OFFSET_X, 1, 3 * mirror );

-- 敵の動き3
setDisp( spep_0 + 642 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 660 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 662 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 664 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 642 + OFFSET_X, 1, -104.6 * mirror, -272.8 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, -104.6 * mirror, -272.8 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, -33.2 * mirror, -294.6 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, -33.2 * mirror, -294.6 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, -6.3 * mirror, -298.7 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, -6.3 * mirror, -298.7 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, -0.4 * mirror, -299.3 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, -0.4 * mirror, -299.3 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, 32.3 * mirror, -287.8 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, 32.3 * mirror, -287.8 , 0 );

setScaleKey( spep_0 + 642 + OFFSET_X, 1, 0.58 , 0.58 );
setScaleKey( spep_0 + 664 + OFFSET_X, 1, 0.58 , 0.58 );

setRotateKey( spep_0 + 642 + OFFSET_X, 1, 23 * mirror );
setRotateKey( spep_0 + 664 + OFFSET_X, 1, 23 * mirror );

-- 敵の動き4
setDisp( spep_0 + 788 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 828 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 788 + OFFSET_X, 1, 366.1 * mirror, -111.9 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, 366.1 * mirror, -111.9 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, 361.9 * mirror, -120.5 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, 361.9 * mirror, -120.5 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, 365.1 * mirror, -105.1 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, 365.1 * mirror, -105.1 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, 364 * mirror, -95.5 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, 364 * mirror, -95.5 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, 363.7 * mirror, -80.9 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, 363.7 * mirror, -80.9 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, 375.5 * mirror, -75.3 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, 375.5 * mirror, -75.3 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, 368.2 * mirror, -52.1 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, 368.2 * mirror, -52.1 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 364.1 * mirror, -59.9 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 364.1 * mirror, -59.9 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 364 * mirror, -49.9 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, 364 * mirror, -49.9 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, 368.2 * mirror, -44 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, 368.2 * mirror, -44 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, 368.3 * mirror, -48 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, 368.3 * mirror, -48 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, 359.3 * mirror, -72.7 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, 359.3 * mirror, -72.7 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, 359.3 * mirror, -68.6 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, 359.3 * mirror, -68.6 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, 367.1 * mirror, -84.6 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, 367.1 * mirror, -84.6 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, 375.8 * mirror, -51.8 , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, 375.8 * mirror, -51.8 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, 383.8 * mirror, -60.8 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, 383.8 * mirror, -60.8 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, 379.9 * mirror, -34.9 , 0 );
setMoveKey( spep_0 + 821 + OFFSET_X, 1, 379.9 * mirror, -34.9 , 0 );
setMoveKey( spep_0 + 822 + OFFSET_X, 1, 377.8 * mirror, -61 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, 377.8 * mirror, -61 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, 377.8 * mirror, -4 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, 377.8 * mirror, -4 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, 374 * mirror, -39.8 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, 374 * mirror, -39.8 , 0 );

setScaleKey( spep_0 + 788 + OFFSET_X, 1, 7.98, 7.99 );
setScaleKey( spep_0 + 789 + OFFSET_X, 1, 7.98, 7.99 );
setScaleKey( spep_0 + 790 + OFFSET_X, 1, 7.74, 7.74 );
setScaleKey( spep_0 + 791 + OFFSET_X, 1, 7.74, 7.74 );
setScaleKey( spep_0 + 792 + OFFSET_X, 1, 7.48, 7.48 );
setScaleKey( spep_0 + 793 + OFFSET_X, 1, 7.48, 7.48 );
setScaleKey( spep_0 + 794 + OFFSET_X, 1, 7.23, 7.24 );
setScaleKey( spep_0 + 795 + OFFSET_X, 1, 7.23, 7.24 );
setScaleKey( spep_0 + 796 + OFFSET_X, 1, 7.03, 7.03 );
setScaleKey( spep_0 + 797 + OFFSET_X, 1, 7.03, 7.03 );
setScaleKey( spep_0 + 798 + OFFSET_X, 1, 6.87, 6.88 );
setScaleKey( spep_0 + 799 + OFFSET_X, 1, 6.87, 6.88 );
setScaleKey( spep_0 + 800 + OFFSET_X, 1, 6.81, 6.81 );
setScaleKey( spep_0 + 828 + OFFSET_X, 1, 6.81, 6.81 );

setRotateKey( spep_0 + 788 + OFFSET_X, 1, -20 * mirror );
setRotateKey( spep_0 + 828 + OFFSET_X, 1, -20 * mirror );

setBlendColor( spep_0 + 788 + OFFSET_X, 1, 3, 0.94, 0.98, 0.9, 0.25 );
setBlendColor( spep_0 + 828 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--エルボー
SE004 = playSeVer2( spep_0 + 189, 1116, "",spep_0 + 234, 0, 23, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 226; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
--エルボー
SE005 = playSeVer2( spep_0 + 223, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 223, SE005, 115 );
SE006 = playSeVer2( spep_0 + 230, 1153, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 230, 1110, "", 0, 0, 0, -1);

--回転
SE008 = playSeVer2( spep_0 + 264, 1385, "",spep_0 + 306, 0, 16, -1);
setTimeStretch( SE008, 2, 30, 4 );
SE009 = playSeVer2( spep_0 + 277, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 277, SE009, 70 );
SE010 = playSeVer2( spep_0 + 277, 1388, "",spep_0 + 320, 0, 18, -1);
setTimeStretch( SE010, 2, 30, 4 );
SE011 = playSeVer2( spep_0 + 281, 1117, "", 0, 0, 0, -1);

--着地
SE012 = playSeVer2( spep_0 + 358, 1472, "", 0, 0, 0, -1);

--突っ込んでくる
SE013 = playSeVer2( spep_0 + 381, 1116, "",spep_0 + 454, 0, 39, -1);
SE014 = playSeVer2( spep_0 + 381, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 381, SE014, 60 );

--蹴り飛ばす
SE015 = playSeVer2( spep_0 + 428, 1180, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 428, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE017 = playSeVer2( spep_0 + 448, 1121, "",spep_0 + 525, 0, 47, -1);
SE018 = playSeVer2( spep_0 + 448, 1183, "",spep_0 + 530, 0, 48, -1);

--壁激突
SE019 = playSeVer2( spep_0 + 474, 1159, "",spep_0 + 604, 0, 86, -1);
SE020 = playSeVer2( spep_0 + 474, 1061, "", 0, 0, 0, -1);

--追いかける
SE021 = playSeVer2( spep_0 + 507, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 532, 63, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 532, 1497, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 577, 1182, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 583, 1304, "",spep_0 + 655, 0, 24, -1);
setPitch( spep_0 + 583, SE025, 300 );
setTimeStretch( SE025, 1.2, 30, 4 );
SE026 = playSeVer2( spep_0 + 583, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 583, SE026, 59 );
setTimeStretch( SE026, 1.25, 30, 4 );

--追いかける２
SE028 = playSeVer2( spep_0 + 635, 1277, "", 0, 0, 0, -1);

--水飛沫
SE027 = playSeVer2( spep_0 + 628, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 628, SE027, 195 );
SE029 = playSeVer2( spep_0 + 660, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 660, SE029, 60 );
SE030 = playSeVer2( spep_0 + 660, 1024, "", 0, 0, 0, -1);

--白背景
SE031 = playSeVer2( spep_0 + 698, 1379, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 698, SE031, 62 );

--膝蹴り
SE032 = playSeVer2( spep_0 + 781, 1110, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 784, 1153, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 789, 1190, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE035 = playSeVer2( spep_0 + 827, 1027, "", 0, 0, 0, -1);

--瞬間移動
SE036 = playSeVer2( spep_0 + 863, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 863, SE036, 68 );
SE037 = playSeVer2( spep_0 + 871, 1109, "", 0, 0, 0, -1);

--構える
SE038 = playSeVer2( spep_0 + 908, 1003, "", 0, 0, 0, -1);

--気弾溜め
SE039 = playSeVer2( spep_0 + 928, 1282, "",spep_0 + 1041, 0, 35, -1);
SE040 = playSeVer2( spep_0 + 931, 1296, "",spep_0 + 1039, 0, 31, -1);
SE041 = playSeVer2( spep_0 + 931, 1281, "",spep_0 + 1038, 0, 36, -1);

--気弾発射
SE042 = playSeVer2( spep_0 + 995, 1178, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 995, 1145, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 995, 1177, "",spep_0 + 1066, 0, 30, -1);
SE045 = playSeVer2( spep_0 + 995, 1179, "", 0, 0, 0, -1);

--地面切り裂く
SE046 = playSeVer2( spep_0 + 1029, 1156, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 1031, 1172, "",spep_0 + 1119, 0, 49, -1);
setPitch( spep_0 + 1031, SE047, -400 );
setTimeStretch( SE047, 0.73, 30, 4 );
SE048 = playSeVer2( spep_0 + 1038, 1159, "",spep_0 + 1126, 0, 58, -1);

--戻る
SE049 = playSeVer2( spep_0 + 1070, 1508, "",spep_0 + 1137, 0, 14, -1);

-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 1040); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 1152F