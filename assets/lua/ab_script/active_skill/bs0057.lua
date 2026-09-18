-- 1032010:LR_超サイヤ人孫悟飯(GT)(寄生)&超サイヤ人孫悟天(GT)(寄生)_アクティブバフ：ふたりの兄弟の影
-- sp_effect_a9_00155
-- bs0057

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164168; -- 登場から終わりまで：手前 ef_001
SP_01b = 164169; -- 登場から終わりまで：奥 ef_001b

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

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 登場から終わりまで
-------------------------------------------------

MAX_FRAME_0 = 730;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場から終わりまで 手前(ef_001)
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_0 + 0, base_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255);

base_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 登場から終わりまで 奥(ef_001b)
setEffMoveKey( spep_0 + 0, base_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_b, 0);
setEffAlphaKey( spep_0 + 0, base_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 326 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 100 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 290 + OFFSET_X, 1, 2 );

setMoveKey( spep_0 + 100 + OFFSET_X, 1, 138.9, 153.5 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 138.9, 153.5 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 2.9, 7.6 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 2.9, 7.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 2.9, 7.7 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 2.9, 7.7 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 3, 7.7 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 3, 7.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 3, 7.8 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 3, 7.8 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 3, 7.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 3, 7.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 3.1, 7.9 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 3.1, 7.9 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 3.1, 8 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 3.1, 8 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 3.1, 8.1 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 3.1, 8.1 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 3.1, 8.2 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 3.1, 8.2 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 3.2, 8.2 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 3.2, 8.2 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 3.2, 8.3 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 3.2, 8.3 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 3.2, 8.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 3.2, 8.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 3.3, 8.5 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 3.3, 8.5 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 3.3, 8.6 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 3.3, 8.6 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 3.3, 8.7 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 3.3, 8.7 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 3.4, 8.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 3.4, 8.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 3.4, 9 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 3.4, 9 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 3.5, 9.2 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 3.5, 9.2 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 3.5, 9.4 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 3.5, 9.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 3.6, 9.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 3.6, 9.6 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 3.6, 9.7 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 3.6, 9.7 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -152.2, -145.2 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -152.2, -145.2 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -149.8, -145.2 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -149.8, -145.2 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -146.5, -145.3 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -146.5, -145.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -142.3, -145.4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -142.3, -145.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -136.9, -145.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -136.9, -145.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -130.3, -145.8 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -130.3, -145.8 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -122.5, -146 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -122.5, -146 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -113.8, -146.2 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -113.8, -146.2 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -105, -146.4 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -105, -146.4 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -97, -146.6 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -97, -146.6 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -90.3, -146.8 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -90.3, -146.8 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -85, -147 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -85, -147 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -81, -147.1 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -81, -147.1 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -78.1, -147.2 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -78.1, -147.2 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -76, -147.2 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -76, -147.2 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -74.7, -147.2 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -74.7, -147.2 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -73.9, -147.3 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -73.9, -147.3 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -73.7, -147.3 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -73.7, -147.3 , 0 );

setScaleKey( spep_0 + 100 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.24, 1.23 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 1.24, 1.23 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.26, 1.25 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 1.26, 1.25 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.29, 1.28 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 1.29, 1.28 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 4.98, 4.98 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 4.81, 4.8 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 4.81, 4.8 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 4.8, 4.8 );

setRotateKey( spep_0 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, 20 );

--敵の動き2
setDisp( spep_0 + 374 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 520 + OFFSET_X, 1, 0 );

changeAnimeAndStop( spep_0 + 374 + OFFSET_X, 1, 11, 1 );
changeAnime( spep_0 + 428 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 474 + OFFSET_X, 1, 2 );

--敵位置調整用
a = -400;
b = 550;

setMoveKey( spep_0 + 374 + OFFSET_X, 1, -197.9 + a, -249.9 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -197.9 + a, -249.9 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -196.8 + a, -249.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -196.8 + a, -249.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -195.7 + a, -249.9 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -195.7 + a, -249.9 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -194.6 + a, -249.9 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -194.6 + a, -249.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -193.4 + a, -249.9 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -193.4 + a, -249.9 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -192.3 + a, -249.9 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -192.3 + a, -249.9 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -191.2 + a, -249.9 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -191.2 + a, -249.9 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -190.1 + a, -249.9 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -190.1 + a, -249.9 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -188.9 + a, -249.9 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -188.9 + a, -249.9 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -187.8 + a, -249.9 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -187.8 + a, -249.9 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -186.7 + a, -249.9 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -186.7 + a, -249.9 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -185.6 + a, -249.9 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -185.6 + a, -249.9 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -184.4 + a, -249.9 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -184.4 + a, -249.9 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -183.3 + a, -249.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -183.3 + a, -249.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -182.2 + a, -249.9 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -182.2 + a, -249.9 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -181.1 + a, -249.9 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -181.1 + a, -249.9 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -179.9 + a, -249.9 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -179.9 + a, -249.9 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -178.8 + a, -249.9 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -178.8 + a, -249.9 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -177.7 + a, -249.9 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -177.7 + a, -249.9 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -176.6 + a, -249.9 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -176.6 + a, -249.9 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -175.4 + a, -249.9 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -175.4 + a, -249.9 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -174.3 + a, -249.9 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -174.3 + a, -249.9 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -173.2 + a, -249.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -173.2 + a, -249.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -172.1 + a, -249.9 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -172.1 + a, -249.9 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -170.9 + a, -249.9 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -170.9 + a, -249.9 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -169.8 + a, -249.9 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -169.8 + a, -249.9 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -168.7 + a, -249.9 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -168.7 + a, -249.9 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 227.9 + b, -322.6 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 227.9 + b, -322.6 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 229.2 + b, -322.6 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 229.2 + b, -322.6 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 230.6 + b, -322.6 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 230.6 + b, -322.6 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 231.9 + b, -322.6 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 231.9 + b, -322.6 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 233.2 + b, -322.6 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 233.2 + b, -322.6 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 234.5 + b, -322.6 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 234.5 + b, -322.6 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 235.9 + b, -322.6 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 235.9 + b, -322.6 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 237.2 + b, -322.6 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 237.2 + b, -322.6 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 238.5 + b, -322.6 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 238.5 + b, -322.6 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 239.9 + b, -322.6 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 239.9 + b, -322.6 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 241.2 + b, -322.6 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 241.2 + b, -322.6 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 242.5 + b, -322.6 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 242.5 + b, -322.6 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 243.9 + b, -322.6 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 243.9 + b, -322.6 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 245.2 + b, -322.6 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 245.2 + b, -322.6 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 246.5 + b, -322.6 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 246.5 + b, -322.6 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 247.8 + b, -322.6 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 247.8 + b, -322.6 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 249.2 + b, -322.6 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 249.2 + b, -322.6 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 250.5 + b, -322.6 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 250.5 + b, -322.6 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 251.8 + b, -322.6 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 251.8 + b, -322.6 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 253.2 + b, -322.6 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 253.2 + b, -322.6 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 254.5 + b, -322.6 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 254.5 + b, -322.6 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 255.8 + b, -322.6 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 255.8 + b, -322.6 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 257.2 + b, -322.6 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 257.2 + b, -322.6 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 144, -435.3 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 144, -435.3 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 144, -433.6 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 144, -433.6 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 144, -431.9 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 144, -431.9 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 144, -430.3 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 144, -430.3 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 144, -428.6 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 144, -428.6 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 144, -426.9 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 144, -426.9 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 144, -425.2 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 144, -425.2 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 144, -423.6 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 144, -423.6 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 144, -421.9 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 144, -421.9 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 144, -420.2 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 144, -420.2 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 144, -418.6 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 144, -418.6 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 144, -416.9 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 144, -416.9 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 144, -415.2 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 144, -415.2 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 144, -413.6 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 144, -413.6 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 144, -411.9 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 144, -411.9 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 144, -410.2 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 144, -410.2 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 144, -408.5 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 144, -408.5 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 144, -406.9 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 144, -406.9 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 144, -405.2 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 144, -405.2 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 144, -403.5 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 144, -403.5 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 144, -401.9 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 144, -401.9 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 144, -400.2 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 144, -400.2 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 144, -398.5 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 144, -398.5 , 0 );

setScaleKey( spep_0 + 374 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 7.5, 7.5 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 7.5, 7.5 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 6, 6 );

setRotateKey( spep_0 + 374 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, 8 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 244, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--上向く
SE002 = playSeVer2( spep_0 + 18, 4, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 18, 1189, "", 0, 0, 0, -1);

--瞬間移動
SE004 = playSeVer2( spep_0 + 74, 1109, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 74, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE005, 56 );

--連続移動
SE006 = playSeVer2( spep_0 + 102, 1245, "", 152, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 102, SE006, 45 );
setPitch( spep_0 + 102, SE006, 400 );
setTimeStretch( SE006, 1.27, 30, 4 );
SE007 = playSeVer2( spep_0 + 122, 1245, "", 172, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 122, SE007, 43 );
setPitch( spep_0 + 122, SE007, -300 );
setTimeStretch( SE007, 0.8, 30, 4 );
SE008 = playSeVer2( spep_0 + 122, 1116, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 142, 1245, "", 192, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 142, SE009, 47 );
SE010 = playSeVer2( spep_0 + 168, 1245, "", 218, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 168, SE010, 40 );
setPitch( spep_0 + 168, SE010, 200 );
setTimeStretch( SE010, 1.13, 30, 4 );
SE011 = playSeVer2( spep_0 + 180, 1117, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 192, 1245, "", 242, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 192, SE013, 43 );
setPitch( spep_0 + 192, SE013, -700 );
setTimeStretch( SE013, 0.53, 30, 4 );
SE016 = playSeVer2( spep_0 + 218, 1245, "", 268, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 218, SE016, 48 );
setPitch( spep_0 + 218, SE016, 100 );
setTimeStretch( SE016, 1.07, 30, 4 );
SE018 = playSeVer2( spep_0 + 244, 1245, "", 294, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 244, SE018, 49 );
SE019 = playSeVer2( spep_0 + 268, 1245, "", 318, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 268, SE019, 52 );
setPitch( spep_0 + 268, SE019, -400 );
setTimeStretch( SE019, 0.73, 30, 4 );

--巻き込まれる
SE012 = playSeVer2( spep_0 + 180, 1314, "", 0, 0, 0, -1);
setTimeStretch( SE012, 1.17, 30, 4 );
SE014 = playSeVer2( spep_0 + 196, 1403, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 196, 1409, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 234, 1326, "",spep_0 + 454, 0, 110, -1);
SE025 = playSeVer2( spep_0 + 528, 1403, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 528, 1409, "", 0, 0, 0, -1);

--セリフカットイン
SE020 = playSeVer2( spep_0 + 284, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE020, 63 );

--画面遷移
SE021 = playSeVer2( spep_0 + 370, 1235, "", 470, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 370, SE021, 56 );
SE022 = playSeVer2( spep_0 + 424, 1235, "", 524, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 424, SE022, 61 );
SE023 = playSeVer2( spep_0 + 472, 1235, "", 572, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 472, SE023, 52 );

--ラスト印象づけ
SE024 = playSeVer2( spep_0 + 514, 1174, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 514, SE024, 224 );


-- ** ボイス ** --
--「無駄だ、無駄だ」
playVoice( spep_0 + 284, 1085 );
setVoiceVolume( spep_0 + 284, 1085, 122 );

--「そんなやわなパワーでは捕まえられんよ」
playVoice( spep_0 + 516, 1086 );
setVoiceVolume( spep_0 + 516, 1086, 122 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 730f

else end