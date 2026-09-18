--1031540:UR_パン(GT)_必殺技：乙女の怒り
--sp_effect_b1_00336
--sp2884

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163951;  -- 登場→頬叩き前 ef_001
SP_01b = 163953;  -- 登場→頬叩き後 ef_001b
SP_02 = 163952;  -- キック→ラスト前 ef_002
SP_02b = 163954;  -- キック→ラスト後 ef_002b

--エフェクト(敵)
SP_01r = 163955;  -- 登場→頬叩き前 ef_001r
SP_02r = 163956;  -- キック→ラスト前 ef_002r
SP_02br = 163979;  -- キック→ラスト後 ef_002br


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

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 登場→頬叩き
-------------------------------------------------
MAX_FRAME_0 = 480;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場→頬叩き前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 登場→頬叩き後(ef_001b)
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
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
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

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 192 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 260 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 192 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 206 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 218 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 230 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 242 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 254 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 192 + OFFSET_X, 1, 55.6, 49.3 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 55.6, 49.3 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 68.7, 115.4 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 68.7, 115.4 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 71.9, 61.2 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 71.9, 61.2 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 101.7, 48.6 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 101.7, 48.6 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 81.2, 65.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 81.2, 65.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 101.5, 48.3 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 101.5, 48.3 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 81.2, 65.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 81.2, 65.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 180.6, 115.9 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 180.6, 115.9 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 181.1, 108.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 181.1, 108.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 171.1, 112.7 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 171.1, 112.7 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 180.7, 115.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 180.7, 115.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 181.2, 108.6 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 181.2, 108.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 171.2, 112.6 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 171.2, 112.6 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 91.9, 74 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 91.9, 74 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 92.4, 66.8 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 92.4, 66.8 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 82.4, 70.8 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 82.4, 70.8 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 94.7, 76.8 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 94.7, 76.8 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 95.2, 69.6 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 95.2, 69.6 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 85.2, 73.6 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 85.2, 73.6 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 183.6, 118.9 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 183.6, 118.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 184.1, 111.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 184.1, 111.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 174.1, 115.7 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 174.1, 115.7 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 186.7, 121.8 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 186.7, 121.8 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 187.2, 114.6 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 187.2, 114.6 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 177.2, 118.6 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 177.2, 118.6 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 97.9, 80 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 97.9, 80 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 98.4, 72.8 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 98.4, 72.8 , 0 );

x = 0.25;
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 2.4 + x, 2.4 + x );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 2.4 + x, 2.4 + x );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 2.41 + x, 2.41 + x );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 2.41 + x, 2.41 + x );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 2.35 + x, 2.35 + x );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 2.35 + x, 2.35 + x );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 2.3 + x, 2.3 + x );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 2.3 + x, 2.3 + x );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 2.8 + x, 2.8 + x );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 2.8 + x, 2.8 + x );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.3 + x, 2.3 + x );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 2.3 + x, 2.3 + x );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 2.8 + x, 2.8 + x );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 2.8 + x, 2.8 + x );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 2.3 + x, 2.3 + x );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 2.3 + x, 2.3 + x );

setRotateKey( spep_0 + 192 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -57 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -57 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -57 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -57 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -42.9 );

--敵の動き2

setDisp( spep_0 + 416 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 482 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 416 + OFFSET_X, 1, 103.4, -76.6 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 103.4, -76.6 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 29.3, -51.6 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 29.3, -51.6 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 70.3, -32.7 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 70.3, -32.7 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 85.5, -70.4 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 85.5, -70.4 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 42.7, -32.8 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 42.7, -32.8 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 55.7, -38.2 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 55.7, -38.2 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 46.2, -32.8 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 46.2, -32.8 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 59.3, -38.2 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 59.3, -38.2 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 49.8, -32.8 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 49.8, -32.8 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 51.6, -32.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 51.6, -32.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 53.4, -32.8 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 53.4, -32.8 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 55.2, -32.8 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 55.2, -32.8 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 56.9, -32.8 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 56.9, -32.8 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 58.9, -32.6 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 58.9, -32.6 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 64.3, -32.7 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 64.3, -32.7 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 69.7, -32.7 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 69.7, -32.7 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 75.1, -32.7 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 75.1, -32.7 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 80.5, -32.7 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 80.5, -32.7 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 85.9, -32.7 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 85.9, -32.7 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 91.3, -32.7 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 91.3, -32.7 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 96.7, -32.7 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 96.7, -32.7 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 102.1, -32.7 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 102.1, -32.7 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 107.5, -32.7 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 107.5, -32.7 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 112.9, -32.7 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 112.9, -32.7 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 118.3, -32.7 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 118.3, -32.7 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 123.7, -32.7 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 123.7, -32.7 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 129.1, -32.7 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 129.1, -32.7 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 134.4, -32.7 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 134.4, -32.7 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 139.8, -32.7 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 139.8, -32.7 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 145.2, -32.7 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 145.2, -32.7 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 150.6, -32.7 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 150.6, -32.7 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 156, -32.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 156, -32.7 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 161.4, -32.7 , 0 );

setScaleKey( spep_0 + 416 + OFFSET_X, 1, 2.78 + x, 2.78 + x );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 2.78 + x, 2.78 + x );

setRotateKey( spep_0 + 416 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, -37 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 256, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE003 = playSeVer2( spep_0 + 74, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE003, 153 );
SE004 = playSeVer2( spep_0 + 80, 1192, "",spep_0 + 106, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 80, SE004, 135 );

--瞬間移動
SE005 = playSeVer2( spep_0 + 104, 1109, "", 0, 0, 0, -1);

--向かっていく
SE006 = playSeVer2( spep_0 + 130, 1497, "", 0, 0, 0, 0.6);
SE007 = playSeVer2( spep_0 + 130, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 170; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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

--ラッシュ
SE008 = playSeVer2( spep_0 + 192, 1003, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 200, 1425, "",spep_0 + 270, 0, 18, -1);
SE010 = playSeVer2( spep_0 + 254, 1425, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE010, 79 );
SE011 = playSeVer2( spep_0 + 254, 1009, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 268, 1010, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 282, 1009, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 300, 1010, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 322, 1009, "", 0, 0, 0, -1);

--向かってくる
SE016 = playSeVer2( spep_0 + 344, 1116, "",spep_0 + 432, 0, 34, -1);
SE017 = playSeVer2( spep_0 + 344, 1278, "",spep_0 + 416, 0, 20, -1);

--ビンタ
SE018 = playSeVer2( spep_0 + 392, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 392, SE018, 188 );
SE019 = playSeVer2( spep_0 + 404, 1120, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 404, 1010, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;--480F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--おりてくる
SE022 = playSeVer2( spep_1 + 90, 1182, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_1 + 90, 9, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 90, 1118, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 90, SE024, 63 );

-------------------------------------------------
-- キック→ラスト
-------------------------------------------------
MAX_FRAME_2 = 346;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- キック→ラスト前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- キック→ラスト後(ef_002b)
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

setDisp( spep_2 + 42 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 194 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 42 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 56 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 42 + OFFSET_X, 1, -162.3, -27.1 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -162.3, -27.1 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -153.6, -24.5 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -153.6, -24.5 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -144.9, -21.9 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -144.9, -21.9 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -136.2, -19.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -136.2, -19.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 49.5, -75.1 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 49.5, -75.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 116.6, -117.3 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 116.6, -117.3 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 89.6, -56.8 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 89.6, -56.8 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 63.4, -135.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 63.4, -135.1 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 79.6, -86.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 79.6, -86.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 91.7, -83.2 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 91.7, -83.2 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 96.8, -92.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 96.8, -92.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 91.3, -90.5 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 91.3, -90.5 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 105.4, -89.3 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 105.4, -89.3 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 110.5, -98.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 110.5, -98.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 105.1, -96.5 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 105.1, -96.5 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 249.4, -167.2 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 249.4, -167.2 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 341.4, -231.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 341.4, -231.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 399.5, -237.1 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 399.5, -237.1 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 439.2, -284 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 439.2, -284 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 534.9, -361.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 534.9, -361.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 596.1, -404.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 596.1, -404.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 653, -424.5 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 653, -424.5 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 724.2, -471.3 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 724.2, -471.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 795.4, -518.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 795.4, -518.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 866.7, -565 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 866.7, -565 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 25.9, -76.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 25.9, -76.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 5.6, -59.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 5.6, -59.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -10.8, -30.9 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -10.8, -30.9 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 25.9, -76.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 25.9, -76.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 5.6, -59.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 5.6, -59.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -8.9, 5.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -8.9, 5.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 27.8, -40.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 27.8, -40.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 0.2, 0.5 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 0.2, 0.5 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -8.9, 5.5 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -8.9, 5.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -5.1, 35.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -5.1, 35.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 0.1, 47.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 0.1, 47.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -9, 48.5 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -9, 48.5 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -5.1, 24.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -5.1, 24.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 0.1, 37.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 0.1, 37.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -9, 40.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -9, 40.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 0.1, 33.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 0.1, 33.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -9, 37.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -9, 37.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -5.1, 14.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -5.1, 14.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 0.1, 29.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 0.1, 29.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -9, 34 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -9, 34 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -5.1, 12 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -5.1, 12 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 0.1, 27.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 0.1, 27.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -8.9, 32.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -8.9, 32.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 0.2, 27.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 0.2, 27.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -8.9, 31.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -8.9, 31.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 0.2, 26.8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 0.2, 26.8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -8.9, 31.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -8.9, 31.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 0.2, 26.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 0.2, 26.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -8.9, 31.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -8.9, 31.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -5.9, 29.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -5.9, 29.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -8.8, 31.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -8.8, 31.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -5.8, 29.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -5.8, 29.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -8.8, 31.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -8.8, 31.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -5.8, 29.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -5.8, 29.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -8.8, 31.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -8.8, 31.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -5.8, 29.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -5.8, 29.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -8.8, 31.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -8.8, 31.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -5.8, 29.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -5.8, 29.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -8.8, 31.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -8.8, 31.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -5.8, 29.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -5.8, 29.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -8.8, 31.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -8.8, 31.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -5.8, 29.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -5.8, 29.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -8.8, 31.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -8.8, 31.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -5.8, 29.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -5.8, 29.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -8.8, 31.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -8.8, 31.3 , 0 );

setScaleKey( spep_2 + 42 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_2 + 42 + OFFSET_X, 1, -34 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -34 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -31 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, -31 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 44 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 44 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 48 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 48 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -15.8 );


-- ** 音 ** --

--キックヒット
SE025 = playSeVer2( spep_2 + 46, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE026 = playSeVer2( spep_2 + 76, 1027, "", 0, 0, 0, -1);

--地面激突
SE027 = playSeVer2( spep_2 + 102, 1159, "",spep_2 + 212, 0, 70, -1);
setSeVolumeByWorkId( spep_2 + 102, SE027, 68 );
SE028 = playSeVer2( spep_2 + 102, 1044, "",spep_2 + 204, 0, 56, -1);

--環境音
SE029 = playSeVer2( spep_2 + 152, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 152, SE029, 25 );

--画面遷移
SE030 = playSeVer2( spep_2 + 174, 8, "", 0, 0, 0, -1);

--ラスト決め
SE031 = playSeVer2( spep_2 + 200, 1434, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 200, SE031, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 194); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 346F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 登場→頬叩き
-------------------------------------------------
MAX_FRAME_0 = 480;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 登場→頬叩き前(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 登場→頬叩き後(ef_001b)
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
spep_x = spep_0 + 4;
--[[
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);
]]

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 192 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 260 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 192 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 206 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 218 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 230 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 242 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 254 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 192 + OFFSET_X, 1, 55.6, 49.3 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 55.6, 49.3 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 68.7, 115.4 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 68.7, 115.4 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 71.9, 61.2 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 71.9, 61.2 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 101.7, 48.6 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 101.7, 48.6 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 81.2, 65.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 81.2, 65.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 101.5, 48.3 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 101.5, 48.3 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 81.2, 65.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 81.2, 65.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 180.6, 115.9 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 180.6, 115.9 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 181.1, 108.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 181.1, 108.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 171.1, 112.7 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 171.1, 112.7 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 180.7, 115.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 180.7, 115.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 181.2, 108.6 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 181.2, 108.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 171.2, 112.6 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 171.2, 112.6 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 91.9, 74 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 91.9, 74 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 92.4, 66.8 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 92.4, 66.8 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 82.4, 70.8 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 82.4, 70.8 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 94.7, 76.8 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 94.7, 76.8 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 95.2, 69.6 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 95.2, 69.6 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 85.2, 73.6 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 85.2, 73.6 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 183.6, 118.9 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 183.6, 118.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 184.1, 111.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 184.1, 111.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 174.1, 115.7 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 174.1, 115.7 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 186.7, 121.8 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 186.7, 121.8 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 187.2, 114.6 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 187.2, 114.6 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 177.2, 118.6 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 177.2, 118.6 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 97.9, 80 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 97.9, 80 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 98.4, 72.8 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 98.4, 72.8 , 0 );

x = 0.25;
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 2.4 + x, 2.4 + x );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 2.4 + x, 2.4 + x );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 2.41 + x, 2.41 + x );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 2.41 + x, 2.41 + x );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 2.35 + x, 2.35 + x );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 2.35 + x, 2.35 + x );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 2.3 + x, 2.3 + x );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 2.3 + x, 2.3 + x );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 2.8 + x, 2.8 + x );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 2.8 + x, 2.8 + x );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.3 + x, 2.3 + x );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 2.3 + x, 2.3 + x );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 2.8 + x, 2.8 + x );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 2.8 + x, 2.8 + x );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 2.3 + x, 2.3 + x );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 2.3 + x, 2.3 + x );

setRotateKey( spep_0 + 192 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -57 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -57 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -57 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -57 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -42.9 );

--敵の動き2

setDisp( spep_0 + 416 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 482 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 416 + OFFSET_X, 1, 103.4, -76.6 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 103.4, -76.6 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 29.3, -51.6 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 29.3, -51.6 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 70.3, -32.7 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 70.3, -32.7 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 85.5, -70.4 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 85.5, -70.4 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 42.7, -32.8 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 42.7, -32.8 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 55.7, -38.2 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 55.7, -38.2 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 46.2, -32.8 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 46.2, -32.8 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 59.3, -38.2 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 59.3, -38.2 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 49.8, -32.8 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 49.8, -32.8 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 51.6, -32.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 51.6, -32.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 53.4, -32.8 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 53.4, -32.8 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 55.2, -32.8 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 55.2, -32.8 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 56.9, -32.8 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 56.9, -32.8 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 58.9, -32.6 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 58.9, -32.6 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 64.3, -32.7 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 64.3, -32.7 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 69.7, -32.7 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 69.7, -32.7 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 75.1, -32.7 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 75.1, -32.7 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 80.5, -32.7 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 80.5, -32.7 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 85.9, -32.7 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 85.9, -32.7 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 91.3, -32.7 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 91.3, -32.7 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 96.7, -32.7 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 96.7, -32.7 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 102.1, -32.7 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 102.1, -32.7 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 107.5, -32.7 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 107.5, -32.7 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 112.9, -32.7 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 112.9, -32.7 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 118.3, -32.7 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 118.3, -32.7 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 123.7, -32.7 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 123.7, -32.7 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 129.1, -32.7 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 129.1, -32.7 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 134.4, -32.7 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 134.4, -32.7 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 139.8, -32.7 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 139.8, -32.7 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 145.2, -32.7 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 145.2, -32.7 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 150.6, -32.7 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 150.6, -32.7 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 156, -32.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 156, -32.7 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 161.4, -32.7 , 0 );

setScaleKey( spep_0 + 416 + OFFSET_X, 1, 2.78 + x, 2.78 + x );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 2.78 + x, 2.78 + x );

setRotateKey( spep_0 + 416 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, -37 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 256, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE003 = playSeVer2( spep_0 + 74, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE003, 153 );
SE004 = playSeVer2( spep_0 + 80, 1192, "",spep_0 + 106, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 80, SE004, 135 );

--瞬間移動
SE005 = playSeVer2( spep_0 + 104, 1109, "", 0, 0, 0, -1);

--向かっていく
SE006 = playSeVer2( spep_0 + 130, 1497, "", 0, 0, 0, 0.6);
SE007 = playSeVer2( spep_0 + 130, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 170; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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

--ラッシュ
SE008 = playSeVer2( spep_0 + 192, 1003, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 200, 1425, "",spep_0 + 270, 0, 18, -1);
SE010 = playSeVer2( spep_0 + 254, 1425, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE010, 79 );
SE011 = playSeVer2( spep_0 + 254, 1009, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 268, 1010, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 282, 1009, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 300, 1010, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 322, 1009, "", 0, 0, 0, -1);

--向かってくる
SE016 = playSeVer2( spep_0 + 344, 1116, "",spep_0 + 432, 0, 34, -1);
SE017 = playSeVer2( spep_0 + 344, 1278, "",spep_0 + 416, 0, 20, -1);

--ビンタ
SE018 = playSeVer2( spep_0 + 392, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 392, SE018, 188 );
SE019 = playSeVer2( spep_0 + 404, 1120, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 404, 1010, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;--480F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--おりてくる
SE022 = playSeVer2( spep_1 + 90, 1182, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_1 + 90, 9, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 90, 1118, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 90, SE024, 63 );

-------------------------------------------------
-- キック→ラスト
-------------------------------------------------
MAX_FRAME_2 = 346;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- キック→ラスト前(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- キック→ラスト後(ef_002br)
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

setDisp( spep_2 + 42 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 194 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 42 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 56 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 42 + OFFSET_X, 1, -162.3, -27.1 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -162.3, -27.1 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -153.6, -24.5 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -153.6, -24.5 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -144.9, -21.9 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -144.9, -21.9 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -136.2, -19.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -136.2, -19.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 49.5, -75.1 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 49.5, -75.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 116.6, -117.3 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 116.6, -117.3 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 89.6, -56.8 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 89.6, -56.8 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 63.4, -135.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 63.4, -135.1 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 79.6, -86.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 79.6, -86.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 91.7, -83.2 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 91.7, -83.2 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 96.8, -92.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 96.8, -92.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 91.3, -90.5 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 91.3, -90.5 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 105.4, -89.3 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 105.4, -89.3 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 110.5, -98.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 110.5, -98.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 105.1, -96.5 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 105.1, -96.5 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 249.4, -167.2 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 249.4, -167.2 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 341.4, -231.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 341.4, -231.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 399.5, -237.1 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 399.5, -237.1 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 439.2, -284 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 439.2, -284 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 534.9, -361.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 534.9, -361.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 596.1, -404.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 596.1, -404.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 653, -424.5 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 653, -424.5 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 724.2, -471.3 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 724.2, -471.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 795.4, -518.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 795.4, -518.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 866.7, -565 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 866.7, -565 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -25.9, -76.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -25.9, -76.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -5.6, -59.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -5.6, -59.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 10.8, -30.9 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 10.8, -30.9 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -25.9, -76.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -25.9, -76.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -5.6, -59.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -5.6, -59.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 8.9, 5.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 8.9, 5.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -27.8, -40.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -27.8, -40.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -0.2, 0.5 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -0.2, 0.5 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 8.9, 5.5 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 8.9, 5.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 5.1, 35.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 5.1, 35.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -0.1, 47.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -0.1, 47.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 9, 48.5 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 9, 48.5 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 5.1, 24.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 5.1, 24.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -0.1, 37.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -0.1, 37.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 9, 40.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 9, 40.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -0.1, 33.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -0.1, 33.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 9, 37.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 9, 37.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 5.1, 14.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 5.1, 14.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -0.1, 29.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -0.1, 29.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 9, 34 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 9, 34 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 5.1, 12 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 5.1, 12 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -0.1, 27.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -0.1, 27.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 8.9, 32.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 8.9, 32.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -0.2, 27.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -0.2, 27.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 8.9, 31.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 8.9, 31.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -0.2, 26.8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -0.2, 26.8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 8.9, 31.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 8.9, 31.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -0.2, 26.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -0.2, 26.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 8.9, 31.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 8.9, 31.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 5.9, 29.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 5.9, 29.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 8.8, 31.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 8.8, 31.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 5.8, 29.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 5.8, 29.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 8.8, 31.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 8.8, 31.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 5.8, 29.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 5.8, 29.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 8.8, 31.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 8.8, 31.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 5.8, 29.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 5.8, 29.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 8.8, 31.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 8.8, 31.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 5.8, 29.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 5.8, 29.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 8.8, 31.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 8.8, 31.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 5.8, 29.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 5.8, 29.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 8.8, 31.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 8.8, 31.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 5.8, 29.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 5.8, 29.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 8.8, 31.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 8.8, 31.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 5.8, 29.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 5.8, 29.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 8.8, 31.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 8.8, 31.3 , 0 );

setScaleKey( spep_2 + 42 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_2 + 42 + OFFSET_X, 1, -34 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -34 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -31 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, -31 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 44 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 44 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 48 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 48 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 15.8 );

-- ** 音 ** --

--キックヒット
SE025 = playSeVer2( spep_2 + 46, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE026 = playSeVer2( spep_2 + 76, 1027, "", 0, 0, 0, -1);

--地面激突
SE027 = playSeVer2( spep_2 + 102, 1159, "",spep_2 + 212, 0, 70, -1);
setSeVolumeByWorkId( spep_2 + 102, SE027, 68 );
SE028 = playSeVer2( spep_2 + 102, 1044, "",spep_2 + 204, 0, 56, -1);

--環境音
SE029 = playSeVer2( spep_2 + 152, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 152, SE029, 25 );

--画面遷移
SE030 = playSeVer2( spep_2 + 174, 8, "", 0, 0, 0, -1);

--ラスト決め
SE031 = playSeVer2( spep_2 + 200, 1434, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 200, SE031, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 194); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 346F


end
