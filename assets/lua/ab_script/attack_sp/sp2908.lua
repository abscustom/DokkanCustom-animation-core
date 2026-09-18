--1031720:LR_ゴールデンフリーザ+ゴジータ_超必殺技：デスビーム
--sp_effect_a3_00122
--sp2908

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164052;  -- 発進～カットイン～殴り ef_001
SP_01b = 164053;  -- 発進～カットイン～殴り ef_001b
SP_02 = 164054;  -- ビーム発射～爆発 ef_002
SP_02b = 164055;  -- ビーム発射～爆発 ef_002b


--エフェクト(敵)
SP_02r = 164056;  -- ビーム発射～爆発 ef_002r
SP_02br = 164057;  -- ビーム発射～爆発 ef_002br


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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 発進～カットイン～殴り
-------------------------------------------------
MAX_FRAME_0 = 316;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 発進～カットイン～殴り(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 発進～カットイン～殴り(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -125, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -125, 515.5 , 0 );
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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

setDisp( spep_0 + 178 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 318 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 178 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 182 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 232 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 242 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 178 + OFFSET_X, 1, 77.2, -400.1 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 77.2, -400.1 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 92, -559.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 92, -559.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 123.9, -591.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 123.9, -591.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 71.6, -539.5 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 71.6, -539.5 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 75.3, -577.7 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 75.3, -577.7 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 112.9, -534.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 112.9, -534.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 108.2, -582.4 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 108.2, -582.4 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 73.6, -541.5 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 73.6, -541.5 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 92, -559.9 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 92, -559.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 108.7, -559.9 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 108.7, -559.9 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 92, -559.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 92, -559.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 102.7, -549.2 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 102.7, -549.2 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 92, -559.9 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 92, -559.9 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 101, -568.9 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 101, -568.9 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 70.4, -540.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 70.4, -540.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 57.6, -529 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 57.6, -529 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 55.8, -527.9 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 55.8, -527.9 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 49.6, -144.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 49.6, -144.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 16.2, -153.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 16.2, -153.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -11.2, -161.5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -11.2, -161.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -32.5, -167.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -32.5, -167.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -47.7, -172 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -47.7, -172 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -56.8, -174.6 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -56.8, -174.6 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -59.8, -175.4 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -59.8, -175.4 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -74.9, -164.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -74.9, -164.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -69.8, -163.8 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -69.8, -163.8 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -55.6, -162.8 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -55.6, -162.8 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 78.5, -153.3 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 78.5, -153.3 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 86.3, -62.5 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 86.3, -62.5 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 104.9, -43.9 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 104.9, -43.9 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 74, -74.8 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 74, -74.8 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 98.2, -50.6 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 98.2, -50.6 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 101.2, -81.6 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 101.2, -81.6 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 77.9, -58.3 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 77.9, -58.3 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 83.2, -91.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 83.2, -91.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 98.9, -75.6 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 98.9, -75.6 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 110.3, -117.3 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 110.3, -117.3 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 100.5, -107.5 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 100.5, -107.5 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 115.7, -155.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 115.7, -155.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 33.2, -85.2 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 33.2, -85.2 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 40.2, -53.9 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 40.2, -53.9 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 154, 178.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 154, 178.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 186.2, 310.4 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 186.2, 310.4 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 196.3, 353.4 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 196.3, 353.4 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 201.2, 375.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 201.2, 375.3 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 204, 388.7 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 204, 388.7 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 205.6, 397.6 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 205.6, 397.6 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 206.6, 403.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 206.6, 403.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 207.5, 408.3 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 207.5, 408.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 208.3, 412.9 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 208.3, 412.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 209, 416.9 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 209, 416.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 209.7, 420.6 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 209.7, 420.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 210.3, 423.8 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 210.3, 423.8 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 210.8, 426.7 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 210.8, 426.7 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 211.3, 429.2 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 211.3, 429.2 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 211.8, 431.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 211.8, 431.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 212.2, 433.2 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 212.2, 433.2 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 212.5, 434.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 212.5, 434.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 212.8, 436.3 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 212.8, 436.3 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 213.1, 437.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 213.1, 437.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 213.4, 438.5 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 213.4, 438.5 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 213.6, 439.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 213.6, 439.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 213.7, 440 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 213.7, 440 , 0 );

setScaleKey( spep_0 + 178 + OFFSET_X, 1, 7.75, 7.75 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 7.75, 7.75 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 6.01, 6.01 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 6.01, 6.01 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 10.78, 10.78 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 10.78, 10.78 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.46, 0.46 );

setRotateKey( spep_0 + 178 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, 47.2 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, 47.2 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -46.8 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -46.8 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -34.4 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -34.4 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -36 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -36 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -37.4 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -37.4 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -38 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -38 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -38.2 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -38.2 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -38.3 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -38.3 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -38.4 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, -38.4 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -38.5 );

-- ** 音 ** --

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 338, 0, 24, -1);
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 340, 0, 28, -1);
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 346, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 50 );

--踏み込む
SE005 = playSeVer2( spep_0 + 48, 1011, "", 0, 0, 0, -1);

--向かってくる
SE006 = playSeVer2( spep_0 + 80, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 80, 1117, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 94, 1277, "", 0, 0, 0, -1);

--振りかぶる
SE009 = playSeVer2( spep_0 + 132, 1116, "",spep_0 + 182, 0, 26, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 156; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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

--パンチ
SE010 = playSeVer2( spep_0 + 174, 1010, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 174, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 178, 1110, "", 0, 0, 0, -1);

--腹パン
SE013 = playSeVer2( spep_0 + 238, 1153, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 238, 1110, "", 0, 0, 0, -1);

--殴り飛ばし
SE015 = playSeVer2( spep_0 + 266, 1120, "",spep_0 + 326, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 266, SE015, 87 );
SE016 = playSeVer2( spep_0 + 266, 1187, "",spep_0 + 326, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 266, SE016, 59 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --316F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--オーラ
SE018 = playSeVer2( spep_1 + 76, 1181, "",spep_1 + 268, 0, 22, -1);
SE019 = playSeVer2( spep_1 + 76, 1227, "",spep_1 + 270, 0, 24, -1);
SE020 = playSeVer2( spep_1 + 76, 1176, "",spep_1 + 274, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 76, SE020, 50 );

--うしろに飛ぶ
SE021 = playSeVer2( spep_1 + 80, 1117, "", 0, 0, 0, -1);

-------------------------------------------------
-- ビーム発射～爆発
-------------------------------------------------
MAX_FRAME_2 = 410;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ビーム発射～爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ビーム発射～爆発(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_2 + 222 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 266 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 222 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 222 + OFFSET_X, 1, 22.5, -23 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 22.5, -23 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 22.5, -22.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 22.5, -22.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 22.5, -23 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 22.5, -23 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 22.5, -22.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 22.5, -22.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 22.4, -22.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 22.4, -22.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 22.3, -22.9 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 22.3, -22.9 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 22.2, -22.9 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 22.2, -22.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 22.1, -22.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 22.1, -22.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 21.5, -22.7 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 21.5, -22.7 , 0 );

setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_2 + 222 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -27 );

--敵の動き2

setDisp( spep_2 + 270 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 292 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 270 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 270 + OFFSET_X, 1, 21.8, -21.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 21.8, -21.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 22.9, -22.6 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 22.9, -22.6 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 26.2, -25.2 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 26.2, -25.2 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 31.6, -29.6 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 31.6, -29.6 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 39.2, -35.7 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 39.2, -35.7 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 48.9, -43.5 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 48.9, -43.5 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 60.8, -53.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 60.8, -53.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 74.9, -64.5 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 74.9, -64.5 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 104.2, -89 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 104.2, -89 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 211.8, -184.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 211.8, -184.6 , 0 );

setScaleKey( spep_2 + 270 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.46, 1.46 );

setRotateKey( spep_2 + 270 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 29.7 );

setBlendColor( spep_2 + 270 + OFFSET_X, 1, 3, 1, 1, 1, 1 );
setBlendColor( spep_2 + 292 + OFFSET_X, 1, 3, 1, 1, 1, 0 );

-- ** 音 ** --

--気弾溜め
SE022 = playSeVer2( spep_2 + 12, 1442, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE022, 145 );
SE023 = playSeVer2( spep_2 + 56, 1360, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE023, 120 );
SE024 = playSeVer2( spep_2 + 56, 1443, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE024, 120 );
SE025 = playSeVer2( spep_2 + 56, 1465, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE025, 120 );

--気弾発射
SE026 = playSeVer2( spep_2 + 148, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE026, 138 );
SE027 = playSeVer2( spep_2 + 148, 1256, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 150, 1423, "",spep_2 + 316, 0, 32, -1);
SE029 = playSeVer2( spep_2 + 150, 1145, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 150, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 150, SE030, 67 );

--気弾飛んでいく
SE031 = playSeVer2( spep_2 + 212, 1021, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 212, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE032, 178 );

--貫く
SE033 = playSeVer2( spep_2 + 250, 1032, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 250, 1179, "", 0, 0, 0, -1);

--爆発
SE035 = playSeVer2( spep_2 + 282, 1024, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 282, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 292); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 410F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 発進～カットイン～殴り
-------------------------------------------------
MAX_FRAME_0 = 316;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 発進～カットイン～殴り(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 発進～カットイン～殴り(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -125, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -125, 515.5 , 0 );
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

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

setDisp( spep_0 + 178 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 318 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 178 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 182 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 232 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 242 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 178 + OFFSET_X, 1, -77.2, -400.1 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -77.2, -400.1 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -92, -559.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -92, -559.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -123.9, -591.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -123.9, -591.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -71.6, -539.5 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -71.6, -539.5 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -75.3, -577.7 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -75.3, -577.7 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -112.9, -534.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -112.9, -534.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -108.2, -582.4 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -108.2, -582.4 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -73.6, -541.5 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -73.6, -541.5 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -92, -559.9 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -92, -559.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -108.7, -559.9 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -108.7, -559.9 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -92, -559.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -92, -559.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -102.7, -549.2 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -102.7, -549.2 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -92, -559.9 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -92, -559.9 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -101, -568.9 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -101, -568.9 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -70.4, -540.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -70.4, -540.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -57.6, -529 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -57.6, -529 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -55.8, -527.9 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -55.8, -527.9 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -49.6, -144.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -49.6, -144.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -16.2, -153.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -16.2, -153.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 11.2, -161.5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 11.2, -161.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 32.5, -167.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 32.5, -167.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 47.7, -172 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 47.7, -172 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 56.8, -174.6 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 56.8, -174.6 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 59.8, -175.4 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 59.8, -175.4 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 74.9, -164.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 74.9, -164.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 69.8, -163.8 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 69.8, -163.8 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 55.6, -162.8 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 55.6, -162.8 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -78.5, -153.3 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -78.5, -153.3 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -86.3, -62.5 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -86.3, -62.5 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -104.9, -43.9 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -104.9, -43.9 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -74, -74.8 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -74, -74.8 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -98.2, -50.6 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -98.2, -50.6 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -101.2, -81.6 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -101.2, -81.6 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -77.9, -58.3 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -77.9, -58.3 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -83.2, -91.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -83.2, -91.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -98.9, -75.6 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -98.9, -75.6 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -110.3, -117.3 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -110.3, -117.3 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -100.5, -107.5 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -100.5, -107.5 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -115.7, -155.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -115.7, -155.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -33.2, -85.2 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -33.2, -85.2 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -40.2, -53.9 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -40.2, -53.9 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -154, 178.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -154, 178.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -186.2, 310.4 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -186.2, 310.4 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -196.3, 353.4 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -196.3, 353.4 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -201.2, 375.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -201.2, 375.3 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -204, 388.7 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -204, 388.7 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -205.6, 397.6 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -205.6, 397.6 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -206.6, 403.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -206.6, 403.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -207.5, 408.3 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -207.5, 408.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -208.3, 412.9 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -208.3, 412.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -209, 416.9 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -209, 416.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -209.7, 420.6 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -209.7, 420.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -210.3, 423.8 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -210.3, 423.8 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -210.8, 426.7 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -210.8, 426.7 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -211.3, 429.2 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -211.3, 429.2 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -211.8, 431.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -211.8, 431.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -212.2, 433.2 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -212.2, 433.2 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -212.5, 434.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -212.5, 434.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -212.8, 436.3 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -212.8, 436.3 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -213.1, 437.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -213.1, 437.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -213.4, 438.5 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -213.4, 438.5 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -213.6, 439.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -213.6, 439.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -213.7, 440 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -213.7, 440 , 0 );

setScaleKey( spep_0 + 178 + OFFSET_X, 1, 7.75, 7.75 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 7.75, 7.75 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 6.01, 6.01 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 6.01, 6.01 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 10.78, 10.78 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 10.78, 10.78 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.46, 0.46 );

setRotateKey( spep_0 + 178 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -47.2 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -47.2 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, 46.8 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, 46.8 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 34.4 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 34.4 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 36 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 36 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 37.1 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, 37.1 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 37.7 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 37.7 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 37.8 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 37.8 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 38 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 38 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 38.2 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 38.2 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 38.4 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 38.4 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 38.5 );

-- ** 音 ** --

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 338, 0, 24, -1);
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 340, 0, 28, -1);
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 346, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 50 );

--踏み込む
SE005 = playSeVer2( spep_0 + 48, 1011, "", 0, 0, 0, -1);

--向かってくる
SE006 = playSeVer2( spep_0 + 80, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 80, 1117, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 94, 1277, "", 0, 0, 0, -1);

--振りかぶる
SE009 = playSeVer2( spep_0 + 132, 1116, "",spep_0 + 182, 0, 26, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 156; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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

--パンチ
SE010 = playSeVer2( spep_0 + 174, 1010, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 174, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 178, 1110, "", 0, 0, 0, -1);

--腹パン
SE013 = playSeVer2( spep_0 + 238, 1153, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 238, 1110, "", 0, 0, 0, -1);

--殴り飛ばし
SE015 = playSeVer2( spep_0 + 266, 1120, "",spep_0 + 326, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 266, SE015, 87 );
SE016 = playSeVer2( spep_0 + 266, 1187, "",spep_0 + 326, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 266, SE016, 59 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --316F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--オーラ
SE018 = playSeVer2( spep_1 + 76, 1181, "",spep_1 + 268, 0, 22, -1);
SE019 = playSeVer2( spep_1 + 76, 1227, "",spep_1 + 270, 0, 24, -1);
SE020 = playSeVer2( spep_1 + 76, 1176, "",spep_1 + 274, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 76, SE020, 50 );

--うしろに飛ぶ
SE021 = playSeVer2( spep_1 + 80, 1117, "", 0, 0, 0, -1);

-------------------------------------------------
-- ビーム発射～爆発
-------------------------------------------------
MAX_FRAME_2 = 410;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ビーム発射～爆発(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ビーム発射～爆発(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_2 + 222 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 266 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 222 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 222 + OFFSET_X, 1, 22.5, -23 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 22.5, -23 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 22.5, -22.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 22.5, -22.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 22.5, -23 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 22.5, -23 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 22.5, -22.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 22.5, -22.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 22.4, -22.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 22.4, -22.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 22.3, -22.9 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 22.3, -22.9 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 22.2, -22.9 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 22.2, -22.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 22.1, -22.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 22.1, -22.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 21.5, -22.7 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 21.5, -22.7 , 0 );

setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_2 + 222 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -27 );

--敵の動き2

setDisp( spep_2 + 270 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 292 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 270 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 270 + OFFSET_X, 1, 21.8, -21.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 21.8, -21.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 22.9, -22.6 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 22.9, -22.6 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 26.2, -25.2 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 26.2, -25.2 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 31.6, -29.6 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 31.6, -29.6 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 39.2, -35.7 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 39.2, -35.7 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 48.9, -43.5 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 48.9, -43.5 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 60.8, -53.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 60.8, -53.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 74.9, -64.5 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 74.9, -64.5 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 104.2, -89 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 104.2, -89 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 211.8, -184.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 211.8, -184.6 , 0 );

setScaleKey( spep_2 + 270 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.46, 1.46 );

setRotateKey( spep_2 + 270 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 29.7 );

setBlendColor( spep_2 + 270 + OFFSET_X, 1, 3, 1, 1, 1, 1 );
setBlendColor( spep_2 + 292 + OFFSET_X, 1, 3, 1, 1, 1, 0 );

-- ** 音 ** --

--気弾溜め
SE022 = playSeVer2( spep_2 + 12, 1442, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE022, 145 );
SE023 = playSeVer2( spep_2 + 56, 1360, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE023, 120 );
SE024 = playSeVer2( spep_2 + 56, 1443, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE024, 120 );
SE025 = playSeVer2( spep_2 + 56, 1465, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE025, 120 );

--気弾発射
SE026 = playSeVer2( spep_2 + 148, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE026, 138 );
SE027 = playSeVer2( spep_2 + 148, 1256, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 150, 1423, "",spep_2 + 316, 0, 32, -1);
SE029 = playSeVer2( spep_2 + 150, 1145, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 150, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 150, SE030, 67 );

--気弾飛んでいく
SE031 = playSeVer2( spep_2 + 212, 1021, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 212, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE032, 178 );

--貫く
SE033 = playSeVer2( spep_2 + 250, 1032, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 250, 1179, "", 0, 0, 0, -1);

--爆発
SE035 = playSeVer2( spep_2 + 282, 1024, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 282, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 292); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 410F


end
