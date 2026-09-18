--4031130:UR_ヒット_アクティブ必殺技：時とばし・煉殺
--sp_effect_b1_00326
--ut0093

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163768; --ef_001 突進〜バストアップ
SP_01b = 163769; --ef_001b 突進〜バストアップ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 72 - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 72 - 13, SP_01, spep_0 + 72 - 13 + 2, 1);
       else
           skipFrame(0, spep_0 + 626 );  -- スキップ先フレーム指定
           setupMovie(spep_0 + 626 , SP_01, spep_0 + 626 - 1 + 2, 1);

       end
    else
        setupMovie(0, SP_01, 0, 1);

    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 素突進〜バストアップ
-------------------------------------------------

MAX_FRAME_0 = 1234;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 素突進〜バストアップ (ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
--[[
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 素突進〜バストアップ (ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 150 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 150 + OFFSET_X, 1, 556, 33.9 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 556, 33.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 502.6, 31.6 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 502.6, 31.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 449.3, 29.4 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 449.3, 29.4 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 395.9, 27.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 395.9, 27.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 342.6, 24.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 342.6, 24.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 289.1, 22.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 289.1, 22.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 235.8, 20.4 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 235.8, 20.4 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 182.4, 18.2 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 182.4, 18.2 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 129.1, 16 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 129.1, 16 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 75.9, 13.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 75.9, 13.9 , 0 );

setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 2.98, 2.98 );

setRotateKey( spep_0 + 150 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_0 + 238 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 434 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 324 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 384 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 238 + OFFSET_X, 1, 15.1, 130 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 15.1, 130 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 15.1, 127 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 15.1, 127 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 15.1, 119.7 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 15.1, 119.7 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 15.1, 112.4 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 15.1, 112.4 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 15.1, 105.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 15.1, 105.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 15.1, 97.7 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 15.1, 97.7 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 15.1, 90.4 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 15.1, 90.4 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 15.1, 83.1 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 15.1, 83.1 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 15.1, 75.8 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 15.1, 75.8 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 15.1, 68.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 15.1, 68.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 15.1, 61.1 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 15.1, 61.1 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 15.1, 53.8 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 15.1, 53.8 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 15.1, 46.5 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 15.1, 46.5 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 15.1, 39.2 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 15.1, 39.2 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 15.1, 31.9 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 15.1, 31.9 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 15.1, 24.6 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 15.1, 24.6 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 15.1, 17.2 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 15.1, 17.2 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 15.1, 9.9 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 15.1, 9.9 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 15.1, 2.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 15.1, 2.6 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 15.1, -4.7 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 15.1, -4.7 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 15.1, -12 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 15.1, -12 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 15.1, -19.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 15.1, -19.3 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 15.1, -26.7 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 15.1, -26.7 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 15.1, -34 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 15.1, -34 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 15.1, -41.3 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 15.1, -41.3 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 15.1, -48.6 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 15.1, -48.6 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 15.1, -55.9 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 15.1, -55.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 15.1, -63.2 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 15.1, -63.2 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 15.1, -70.6 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 15.1, -70.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 15.1, -77.9 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 15.1, -77.9 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 15.1, -85.2 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 15.1, -85.2 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 15.1, -92.5 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 15.1, -92.5 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 15.1, -99.8 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 15.1, -99.8 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 15.1, -107.1 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 15.1, -107.1 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 15.1, -114.5 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 15.1, -114.5 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 15.1, -121.8 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 15.1, -121.8 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 15.1, -129.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 15.1, -129.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 15.1, -136.4 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 15.1, -136.4 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 15.1, -143.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 15.1, -143.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 15.1, -151 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 15.1, -151 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 15.1, -158.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 15.1, -158.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 15.1, -165.7 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 15.1, -165.7 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 15.1, -173 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 15.1, -173 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 257.4, -56.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 257.4, -56.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 255.7, -56.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 255.7, -56.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 253.9, -56.6 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 253.9, -56.6 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 256.8, -57.1 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 256.8, -57.1 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 256.5, -53.7 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 256.5, -53.7 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 261.3, -54.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 261.3, -54.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 255.5, -57.2 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 255.5, -57.2 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 259.6, -57.7 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 259.6, -57.7 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 257, -57 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 257, -57 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 261.4, -56.4 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 261.4, -56.4 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 257, -53.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 257, -53.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 253.9, -57.6 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 253.9, -57.6 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 257.9, -55.5 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 257.9, -55.5 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 254.4, -56.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 254.4, -56.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 259.8, -56.3 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 259.8, -56.3 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 258.5, -52 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 258.5, -52 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 259.3, -53.9 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 259.3, -53.9 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 255.3, -60.5 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 255.3, -60.5 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 261.1, -53.9 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 261.1, -53.9 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 258.7, -57.9 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 258.7, -57.9 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 257, -55.5 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 257, -55.5 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 255, -53 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 255, -53 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 258.6, -53.8 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 258.6, -53.8 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 256, -57.3 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 256, -57.3 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 255, -58.4 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 255, -58.4 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 258, -56.9 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 258, -56.9 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 260.8, -58 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 260.8, -58 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 256.1, -55.9 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 256.1, -55.9 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 257.7, -54.7 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 257.7, -54.7 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 257.4, -56.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 257.4, -56.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -282, 500 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -282, 500 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -304, 480 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -304, 480 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -292.2, 501.4 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -292.2, 501.4 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -274.2, 503.1 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -274.2, 503.1 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -316.8, 502.1 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -316.8, 502.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -299.4, 501 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -299.4, 501 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -282, 500 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -282, 500 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -340, 528 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -340, 528 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -354, 542 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -354, 542 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -282, 500 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -282, 500 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -218, 466 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -218, 466 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -227.4, 471.4 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -227.4, 471.4 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -236.8, 476.8 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -236.8, 476.8 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -246.1, 482.1 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -246.1, 482.1 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -337.5, 510.8 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -337.5, 510.8 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -248.9, 483.5 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -248.9, 483.5 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -250.3, 494.2 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -250.3, 494.2 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -251.7, 504.8 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -251.7, 504.8 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -331, 507.5 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -331, 507.5 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -300.8, 527.8 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -300.8, 527.8 , 0 );

setScaleKey( spep_0 + 238 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 6.42, 6.42 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 6.42, 6.42 );

setRotateKey( spep_0 + 238 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, -75 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -75 );


--敵の動き3
setDisp( spep_0 + 526 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 992 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 526 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 536 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 850 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 896 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 526 + OFFSET_X, 1, 95.1, 25 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 95.1, 25 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 96.2, 32.9 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 96.2, 32.9 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 108.2, 44.9 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 108.2, 44.9 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 115.7, 30.4 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 115.7, 30.4 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 108, 30.6 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 108, 30.6 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 109.4, 18.7 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 109.4, 18.7 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 104.8, 49.4 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 104.8, 49.4 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 104.3, 30.6 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 104.3, 30.6 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 115.4, 40.8 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 115.4, 40.8 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 106.2, 32.3 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 106.2, 32.3 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 109.6, 48.3 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 109.6, 48.3 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 112.6, 31.3 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 112.6, 31.3 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 102.1, 41.5 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 102.1, 41.5 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 107.5, 26.7 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 107.5, 26.7 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 104.4, 35.3 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 104.4, 35.3 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 105.5, 29.1 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 105.5, 29.1 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 109.2, 38 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 109.2, 38 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 109, 31.2 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 109, 31.2 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 108.4, 37.5 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 108.4, 37.5 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 107.4, 38.3 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 107.4, 38.3 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 107.7, 34.5 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 107.7, 34.5 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 97.9, 33.7 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 97.9, 33.7 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 96.2, 32.9 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 96.2, 32.9 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 110.2, 16.9 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 110.2, 16.9 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 101.8, 29.3 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, 101.8, 29.3 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 97.5, 11.5 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 97.5, 11.5 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 97.5, 32.2 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, 97.5, 32.2 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 97.4, 12.2 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, 97.4, 12.2 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 99.4, 28.9 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, 99.4, 28.9 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 97.2, 9.2 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, 97.2, 9.2 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, 103.1, 41.9 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, 103.1, 41.9 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, 98.6, 11.3 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, 98.6, 11.3 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, 104.5, 26.2 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, 104.5, 26.2 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, 98.2, 10.5 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, 98.2, 10.5 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, 96.1, 27.4 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, 96.1, 27.4 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, 96.1, 7.7 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, 96.1, 7.7 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, 110.1, 28.9 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, 110.1, 28.9 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, 106.7, 17.3 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, 106.7, 17.3 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, 92.2, 45.1 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, 92.2, 45.1 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, 103.7, 16.3 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, 103.7, 16.3 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, 105.2, 43.3 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, 105.2, 43.3 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, 98.6, 14.6 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, 98.6, 14.6 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, 106.4, 28 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, 106.4, 28 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, 94.7, 8.8 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, 94.7, 8.8 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, 98.8, 39.2 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, 98.8, 39.2 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, 96.5, 2.5 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, 96.5, 2.5 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 94.5, 30.3 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, 94.5, 30.3 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, 111, 41 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, 111, 41 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, 95.1, 13.8 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, 95.1, 13.8 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 107.4, 32.2 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, 107.4, 32.2 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, 97.8, 14.5 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, 97.8, 14.5 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, 98.2, 14.9 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, 98.2, 14.9 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, -0.1, 127.5 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, -0.1, 127.5 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, -1.1, 124.9 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, -1.1, 124.9 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, -2.1, 122.3 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, -2.1, 122.3 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, -1.4, 126.8 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, -1.4, 126.8 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, -0.2, 122.1 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, -0.2, 122.1 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, -2.8, 129.4 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, -2.8, 129.4 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, -2.9, 123.4 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, -2.9, 123.4 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 4.2, 131.5 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 4.2, 131.5 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, -4.8, 129.3 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, -4.8, 129.3 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 2.6, 127.4 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 2.6, 127.4 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 0.4, 126.9 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 0.4, 126.9 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 0.4, 126.4 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, 0.4, 126.4 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 0, 127.4 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 0, 127.4 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, -1.9, 124.1 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, -1.9, 124.1 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, -0.2, 129.8 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, -0.2, 129.8 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, -0.6, 124 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, -0.6, 124 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, -0.5, 128.3 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, -0.5, 128.3 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, -0.2, 131.5 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, -0.2, 131.5 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 1.5, 126 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 1.5, 126 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, -3.2, 125.5 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, -3.2, 125.5 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, -1.8, 129.4 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, -1.8, 129.4 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, -4, 128.5 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, -4, 128.5 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, -1.4, 123.6 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, -1.4, 123.6 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, -5.5, 127.2 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, -5.5, 127.2 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 3.6, 126.5 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 3.6, 126.5 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 2, 129.8 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 2, 129.8 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, -1.5, 128.5 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, -1.5, 128.5 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 3.8, 124.8 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 3.8, 124.8 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 4.1, 123.7 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 4.1, 123.7 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, -0.1, 126.4 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, -0.1, 126.4 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, -1.2, 128.5 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, -1.2, 128.5 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, 1.2, 126.7 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, 1.2, 126.7 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, -1.1, 126.8 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, -1.1, 126.8 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, -0.6, 126.8 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, -0.6, 126.8 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, 1.3, 127 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, 1.3, 127 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, 0.4, 128.7 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, 0.4, 128.7 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, 0.7, 128.9 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, 0.7, 128.9 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, -0.5, 127.3 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, -0.5, 127.3 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, -0.1, 127.5 , 0 );
setMoveKey( spep_0 + 845 + OFFSET_X, 1, -0.1, 127.5 , 0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, 8.1, 127.6 , 0 );
setMoveKey( spep_0 + 849 + OFFSET_X, 1, 8.1, 127.6 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, 13.5, 122.1 , 0 );
setMoveKey( spep_0 + 853 + OFFSET_X, 1, 13.5, 122.1 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, 13.9, 121.9 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, 13.9, 121.9 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, 15.4, 121.2 , 0 );
setMoveKey( spep_0 + 859 + OFFSET_X, 1, 15.4, 121.2 , 0 );
setMoveKey( spep_0 + 860 + OFFSET_X, 1, 16.9, 120.4 , 0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, 16.9, 120.4 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, 19.9, 118.9 , 0 );
setMoveKey( spep_0 + 867 + OFFSET_X, 1, 19.9, 118.9 , 0 );
setMoveKey( spep_0 + 868 + OFFSET_X, 1, 23.7, 117 , 0 );
setMoveKey( spep_0 + 871 + OFFSET_X, 1, 23.7, 117 , 0 );
setMoveKey( spep_0 + 872 + OFFSET_X, 1, 28.5, 114.6 , 0 );
setMoveKey( spep_0 + 875 + OFFSET_X, 1, 28.5, 114.6 , 0 );
setMoveKey( spep_0 + 876 + OFFSET_X, 1, 32.7, 112.5 , 0 );
setMoveKey( spep_0 + 879 + OFFSET_X, 1, 32.7, 112.5 , 0 );
setMoveKey( spep_0 + 880 + OFFSET_X, 1, 38, 109.9 , 0 );
setMoveKey( spep_0 + 883 + OFFSET_X, 1, 38, 109.9 , 0 );
setMoveKey( spep_0 + 884 + OFFSET_X, 1, 41, 108.3 , 0 );
setMoveKey( spep_0 + 887 + OFFSET_X, 1, 41, 108.3 , 0 );
setMoveKey( spep_0 + 888 + OFFSET_X, 1, 44.1, 106.9 , 0 );
setMoveKey( spep_0 + 889 + OFFSET_X, 1, 44.1, 106.9 , 0 );
setMoveKey( spep_0 + 890 + OFFSET_X, 1, 46.3, 105.8 , 0 );
setMoveKey( spep_0 + 893 + OFFSET_X, 1, 46.3, 105.8 , 0 );
setMoveKey( spep_0 + 894 + OFFSET_X, 1, 49.3, 104.2 , 0 );
setMoveKey( spep_0 + 895 + OFFSET_X, 1, 49.3, 104.2 , 0 );
setMoveKey( spep_0 + 896 + OFFSET_X, 1, 142.7, -209 , 0 );
setMoveKey( spep_0 + 897 + OFFSET_X, 1, 142.7, -209 , 0 );
setMoveKey( spep_0 + 898 + OFFSET_X, 1, 142.7, -212.1 , 0 );
setMoveKey( spep_0 + 899 + OFFSET_X, 1, 142.7, -212.1 , 0 );
setMoveKey( spep_0 + 900 + OFFSET_X, 1, 142.7, -215.1 , 0 );
setMoveKey( spep_0 + 901 + OFFSET_X, 1, 142.7, -215.1 , 0 );
setMoveKey( spep_0 + 902 + OFFSET_X, 1, 142.7, -218.2 , 0 );
setMoveKey( spep_0 + 903 + OFFSET_X, 1, 142.7, -218.2 , 0 );
setMoveKey( spep_0 + 904 + OFFSET_X, 1, 142.7, -221.2 , 0 );
setMoveKey( spep_0 + 905 + OFFSET_X, 1, 142.7, -221.2 , 0 );
setMoveKey( spep_0 + 906 + OFFSET_X, 1, 142.7, -224.2 , 0 );
setMoveKey( spep_0 + 907 + OFFSET_X, 1, 142.7, -224.2 , 0 );
setMoveKey( spep_0 + 908 + OFFSET_X, 1, 142.7, -227.3 , 0 );
setMoveKey( spep_0 + 909 + OFFSET_X, 1, 142.7, -227.3 , 0 );
setMoveKey( spep_0 + 910 + OFFSET_X, 1, 142.7, -230.3 , 0 );
setMoveKey( spep_0 + 911 + OFFSET_X, 1, 142.7, -230.3 , 0 );
setMoveKey( spep_0 + 912 + OFFSET_X, 1, 142.7, -233.4 , 0 );
setMoveKey( spep_0 + 913 + OFFSET_X, 1, 142.7, -233.4 , 0 );
setMoveKey( spep_0 + 914 + OFFSET_X, 1, 142.7, -236.4 , 0 );
setMoveKey( spep_0 + 915 + OFFSET_X, 1, 142.7, -236.4 , 0 );
setMoveKey( spep_0 + 916 + OFFSET_X, 1, 142.7, -239.4 , 0 );
setMoveKey( spep_0 + 917 + OFFSET_X, 1, 142.7, -239.4 , 0 );
setMoveKey( spep_0 + 918 + OFFSET_X, 1, 142.7, -242.5 , 0 );
setMoveKey( spep_0 + 919 + OFFSET_X, 1, 142.7, -242.5 , 0 );
setMoveKey( spep_0 + 920 + OFFSET_X, 1, 142.7, -245.5 , 0 );
setMoveKey( spep_0 + 921 + OFFSET_X, 1, 142.7, -245.5 , 0 );
setMoveKey( spep_0 + 922 + OFFSET_X, 1, 142.7, -248.6 , 0 );
setMoveKey( spep_0 + 923 + OFFSET_X, 1, 142.7, -248.6 , 0 );
setMoveKey( spep_0 + 924 + OFFSET_X, 1, 142.7, -251.6 , 0 );
setMoveKey( spep_0 + 925 + OFFSET_X, 1, 142.7, -251.6 , 0 );
setMoveKey( spep_0 + 926 + OFFSET_X, 1, 142.7, -254.6 , 0 );
setMoveKey( spep_0 + 927 + OFFSET_X, 1, 142.7, -254.6 , 0 );
setMoveKey( spep_0 + 928 + OFFSET_X, 1, 142.7, -257.7 , 0 );
setMoveKey( spep_0 + 929 + OFFSET_X, 1, 142.7, -257.7 , 0 );
setMoveKey( spep_0 + 930 + OFFSET_X, 1, 142.7, -260.7 , 0 );
setMoveKey( spep_0 + 931 + OFFSET_X, 1, 142.7, -260.7 , 0 );
setMoveKey( spep_0 + 932 + OFFSET_X, 1, 142.7, -263.8 , 0 );
setMoveKey( spep_0 + 933 + OFFSET_X, 1, 142.7, -263.8 , 0 );
setMoveKey( spep_0 + 934 + OFFSET_X, 1, 142.7, -266.8 , 0 );
setMoveKey( spep_0 + 935 + OFFSET_X, 1, 142.7, -266.8 , 0 );
setMoveKey( spep_0 + 936 + OFFSET_X, 1, 142.7, -269.8 , 0 );
setMoveKey( spep_0 + 937 + OFFSET_X, 1, 142.7, -269.8 , 0 );
setMoveKey( spep_0 + 938 + OFFSET_X, 1, 142.7, -272.9 , 0 );
setMoveKey( spep_0 + 939 + OFFSET_X, 1, 142.7, -272.9 , 0 );
setMoveKey( spep_0 + 940 + OFFSET_X, 1, 142.7, -275.9 , 0 );
setMoveKey( spep_0 + 941 + OFFSET_X, 1, 142.7, -275.9 , 0 );
setMoveKey( spep_0 + 942 + OFFSET_X, 1, 142.7, -279 , 0 );
setMoveKey( spep_0 + 943 + OFFSET_X, 1, 142.7, -279 , 0 );
setMoveKey( spep_0 + 944 + OFFSET_X, 1, 142.7, -282 , 0 );
setMoveKey( spep_0 + 945 + OFFSET_X, 1, 142.7, -282 , 0 );
setMoveKey( spep_0 + 946 + OFFSET_X, 1, 142.7, -285 , 0 );
setMoveKey( spep_0 + 947 + OFFSET_X, 1, 142.7, -285 , 0 );
setMoveKey( spep_0 + 948 + OFFSET_X, 1, 142.7, -288.1 , 0 );
setMoveKey( spep_0 + 949 + OFFSET_X, 1, 142.7, -288.1 , 0 );
setMoveKey( spep_0 + 950 + OFFSET_X, 1, 142.7, -291.1 , 0 );
setMoveKey( spep_0 + 951 + OFFSET_X, 1, 142.7, -291.1 , 0 );
setMoveKey( spep_0 + 952 + OFFSET_X, 1, 142.7, -294.2 , 0 );
setMoveKey( spep_0 + 953 + OFFSET_X, 1, 142.7, -294.2 , 0 );
setMoveKey( spep_0 + 954 + OFFSET_X, 1, 142.7, -297.2 , 0 );
setMoveKey( spep_0 + 955 + OFFSET_X, 1, 142.7, -297.2 , 0 );
setMoveKey( spep_0 + 956 + OFFSET_X, 1, 142.7, -300.2 , 0 );
setMoveKey( spep_0 + 957 + OFFSET_X, 1, 142.7, -300.2 , 0 );
setMoveKey( spep_0 + 958 + OFFSET_X, 1, 142.7, -303.3 , 0 );
setMoveKey( spep_0 + 959 + OFFSET_X, 1, 142.7, -303.3 , 0 );
setMoveKey( spep_0 + 960 + OFFSET_X, 1, 142.7, -306.3 , 0 );
setMoveKey( spep_0 + 961 + OFFSET_X, 1, 142.7, -306.3 , 0 );
setMoveKey( spep_0 + 962 + OFFSET_X, 1, 142.7, -309.3 , 0 );
setMoveKey( spep_0 + 963 + OFFSET_X, 1, 142.7, -309.3 , 0 );
setMoveKey( spep_0 + 964 + OFFSET_X, 1, 142.7, -312.4 , 0 );
setMoveKey( spep_0 + 965 + OFFSET_X, 1, 142.7, -312.4 , 0 );
setMoveKey( spep_0 + 966 + OFFSET_X, 1, 142.7, -315.4 , 0 );
setMoveKey( spep_0 + 967 + OFFSET_X, 1, 142.7, -315.4 , 0 );
setMoveKey( spep_0 + 968 + OFFSET_X, 1, 142.7, -318.5 , 0 );
setMoveKey( spep_0 + 969 + OFFSET_X, 1, 142.7, -318.5 , 0 );
setMoveKey( spep_0 + 970 + OFFSET_X, 1, 142.7, -321.5 , 0 );
setMoveKey( spep_0 + 971 + OFFSET_X, 1, 142.7, -321.5 , 0 );
setMoveKey( spep_0 + 972 + OFFSET_X, 1, 142.7, -324.5 , 0 );
setMoveKey( spep_0 + 973 + OFFSET_X, 1, 142.7, -324.5 , 0 );
setMoveKey( spep_0 + 974 + OFFSET_X, 1, 142.7, -327.6 , 0 );
setMoveKey( spep_0 + 975 + OFFSET_X, 1, 142.7, -327.6 , 0 );
setMoveKey( spep_0 + 976 + OFFSET_X, 1, 142.7, -330.6 , 0 );
setMoveKey( spep_0 + 977 + OFFSET_X, 1, 142.7, -330.6 , 0 );
setMoveKey( spep_0 + 978 + OFFSET_X, 1, 142.7, -333.7 , 0 );
setMoveKey( spep_0 + 979 + OFFSET_X, 1, 142.7, -333.7 , 0 );
setMoveKey( spep_0 + 980 + OFFSET_X, 1, 142.7, -336.7 , 0 );
setMoveKey( spep_0 + 981 + OFFSET_X, 1, 142.7, -336.7 , 0 );
setMoveKey( spep_0 + 982 + OFFSET_X, 1, 142.7, -339.7 , 0 );
setMoveKey( spep_0 + 983 + OFFSET_X, 1, 142.7, -339.7 , 0 );
setMoveKey( spep_0 + 984 + OFFSET_X, 1, 142.7, -342.8 , 0 );
setMoveKey( spep_0 + 985 + OFFSET_X, 1, 142.7, -342.8 , 0 );
setMoveKey( spep_0 + 986 + OFFSET_X, 1, 142.7, -345.8 , 0 );
setMoveKey( spep_0 + 987 + OFFSET_X, 1, 142.7, -345.8 , 0 );
setMoveKey( spep_0 + 988 + OFFSET_X, 1, 142.7, -348.9 , 0 );
setMoveKey( spep_0 + 989 + OFFSET_X, 1, 142.7, -348.9 , 0 );
setMoveKey( spep_0 + 990 + OFFSET_X, 1, 142.7, -351.9 , 0 );
setMoveKey( spep_0 + 992 + OFFSET_X, 1, 142.7, -351.9 , 0 );

setScaleKey( spep_0 + 526 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 705 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 706 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 849 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 850 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 895 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 896 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 992 + OFFSET_X, 1, 2.06, 2.06 );

setRotateKey( spep_0 + 526 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_0 + 535 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_0 + 705 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_0 + 706 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_0 + 845 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_0 + 846 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_0 + 849 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_0 + 850 + OFFSET_X, 1, -38.8 );
setRotateKey( spep_0 + 853 + OFFSET_X, 1, -38.8 );
setRotateKey( spep_0 + 854 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_0 + 857 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_0 + 858 + OFFSET_X, 1, -37.4 );
setRotateKey( spep_0 + 859 + OFFSET_X, 1, -37.4 );
setRotateKey( spep_0 + 860 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_0 + 863 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_0 + 864 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_0 + 867 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_0 + 868 + OFFSET_X, 1, -30.6 );
setRotateKey( spep_0 + 871 + OFFSET_X, 1, -30.6 );
setRotateKey( spep_0 + 872 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_0 + 875 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_0 + 876 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_0 + 879 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_0 + 880 + OFFSET_X, 1, -18.9 );
setRotateKey( spep_0 + 883 + OFFSET_X, 1, -18.9 );
setRotateKey( spep_0 + 884 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_0 + 887 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_0 + 888 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_0 + 889 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_0 + 890 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_0 + 893 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_0 + 894 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_0 + 895 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_0 + 896 + OFFSET_X, 1, 76.7 );
setRotateKey( spep_0 + 992 + OFFSET_X, 1, 76.7 );


-- ** 音 ** --
--オーラ
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 352, 0, 30, -1);

--向かってくる
SE003 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 70 );
SE004 = playSeVer2( spep_0 + 0, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 72 );
SE005 = playSeVer2( spep_0 + 6, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE005, 70 );
SE006 = playSeVer2( spep_0 + 6, 1167, "", 0, 0, 0, -1);
setTimeStretch( SE006, 1.24, 30, 4 );
setSeVolumeByWorkId( spep_0 + 6, SE006, 70 );

--画面遷移
SE007 = playSeVer2( spep_0 + 44, 1072, "", 0, 0, 0, -1);

--時とばし発動
SE001 = playSeVer2( spep_0 + 82, 1437, "",spep_0 + 286, 6, 146, -1);
setSeVolumeByWorkId( spep_0 + 82, SE001, 76 );
setStartTimeMs( SE001,  2250 );
setPitch( spep_0 + 82, SE001, 300 );
setTimeStretch( SE001, 1.2, 30, 4 );
SE008 = playSeVer2( spep_0 + 92, 1172, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE008, 66 );
setPitch( spep_0 + 92, SE008, 400 );
setTimeStretch( SE008, 1.27, 30, 4 );
SE009 = playSeVer2( spep_0 + 92, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE009, 129 );


-- ** ボイス ** --
--「はああああ！！」
SE_8_890 = playVoice( spep_0 + 0, 987 );
setVoiceVolume( spep_0 + 0, 987, 132 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 72; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
pauseAll( SP_dodge, 67);
setVoiceVolume( SP_dodge - 12, SE_8_890, 0 );

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
--顔アップ
SE011 = playSeVer2( spep_0 + 184, 1264, "",spep_0 + 438, 0, 176, -1);
setSeVolumeByWorkId( spep_0 + 184, SE011, 72 );

--光体に集まる
SE010 = playSeVer2( spep_0 + 230, 1250, "",spep_0 + 340, 6, 16, -1);
setSeVolumeByWorkId( spep_0 + 230, SE010, 162 );
setStartTimeMs( SE010,  867 );
SE012 = playSeVer2( spep_0 + 232, 1292, "",spep_0 + 342, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 232, SE012, 133 );

--連打
SE013 = playSeVer2( spep_0 + 312, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 312, SE013, 153 );	
SE014 = playSeVer2( spep_0 + 320, 1425, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 320, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 344, 1010, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 382, 1009, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 404, 1425, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 410, 1010, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 428, 1009, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 466, 1010, "", 0, 0, 0, -1);

--オーラ
SE022 = playSeVer2( spep_0 + 466, 1181, "",spep_0 + 692, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 466, SE022, 133 );

--振りかぶる
SE023 = playSeVer2( spep_0 + 486, 1004, "", 0, 0, 0, -1);

--ラスト一撃
SE024 = playSeVer2( spep_0 + 516, 1426, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 528, 1359, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 528, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE026, 60 );
setPitch( spep_0 + 528, SE026, 300 );
setTimeStretch( SE026, 1.2, 30, 4 );
SE027 = playSeVer2( spep_0 + 536, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 536, SE027, 71 );

--光貫通
SE028 = playSeVer2( spep_0 + 626, 1303, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 626, SE028, 48 );	
SE029 = playSeVer2( spep_0 + 626, 1021, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 626, 1338, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 626, SE030, 132 );
SE031 = playSeVer2( spep_0 + 626, 1443, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 626, SE031, 174 );
SE032 = playSeVer2( spep_0 + 626, 1423, "",spep_0 + 882, 0, 120, -1);

--オーラ
SE033 = playSeVer2( spep_0 + 734, 1181, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 734, SE033, 78 );
SE034 = playSeVer2( spep_0 + 734, 1407, "", 0, 0, 0, -1);

--環境音
SE035 = playSeVer2( spep_0 + 734, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 734, SE035, 25 );

--敵落ちていく
SE036 = playSeVer2( spep_0 + 834, 1332, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 838, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 838, SE037, 85 );
SE038 = playSeVer2( spep_0 + 880, 8, "", 0, 0, 0, -1);

--セリフカットイン
SE039 = playSeVer2( spep_0 + 980, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 980, SE039, 63 );


-- ** ボイス ** --
--「オレの時とばしがおまえの先を行ったぞ！」
playVoice( spep_0 + 984, 988 );
setVoiceVolume( spep_0 + 984, 988, 128 );


--終わり
hideKoScreen();
fadeKoLabel(1.0, 0.5)
dealDamage( spep_0 + 630);
endPhase( spep_0 + MAX_FRAME_0); --1234f

else end