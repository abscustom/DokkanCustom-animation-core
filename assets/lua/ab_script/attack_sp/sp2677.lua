-- 1028630: UR_ブヨン_電撃光線
-- sp_effect_a4_00025
-- sp2677

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162744;  -- 開幕　尻尾叩きつけ〜振り払い ef_001
SP_001b = 162745;  -- ↑敵挟んだ背景 ef_001_b
SP_002 = 162748;  -- 電撃 ef_002
SP_002b = 162749;  -- ↑敵挟んだ背景 ef_002_b
SP_003 = 162752;  -- ラストのガッの背景 ef_003

-- 敵側
SP_001r = 162746;  -- 敵側:開幕　尻尾叩きつけ〜振り払い ef_001_r
SP_001br = 162747;  -- 敵側:↑敵挟んだ背景 ef_001_r_b
SP_002r = 162750;  -- 敵側:電撃 ef_002_r
SP_002br = 162751;  -- 敵側:↑敵挟んだ背景 ef_002_r_b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

ENABLE_AUTO_TIME_STRETCH(0.86);

OFFSET_X = -1;

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕　尻尾叩きつけ〜振り払い ef_001
------------------------------------------------------
MAX_FRAME_0 = 398;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );    -- 開幕　尻尾叩きつけ〜振り払い ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );   -- ↑敵挟んだ背景 ef_001_b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 44;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 130 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 202 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 130 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 130 + OFFSET_X, 1, 278.9, -420.4 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 278.9, -420.4 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 327.9, -420.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 327.9, -420.4 , 0 );

setScaleKey( spep_0 + 130 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_0 + 130 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -14.5 );

--敵の動き2
setDisp( spep_0 + 208 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 324 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 208 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 220 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 256 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 208 + OFFSET_X, 1, 92.9, -94.4 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 92.9, -94.4 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 2.1, -285.3 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 2.1, -285.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 2.1, -308.5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 2.1, -308.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 2.1, -264 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 2.1, -264 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 2.1, -240.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 2.1, -240.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 2.1, -266.9 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 2.1, -266.9 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 2.1, -241.1 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 2.1, -241.1 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 2.1, -269.8 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 2.1, -269.8 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 2.1, -234.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 2.1, -234.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 2.1, -272.7 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 2.1, -272.7 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 2.1, -239.3 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 2.1, -239.3 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 2.1, -247.2 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 2.1, -247.2 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 86.1, 99.6 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 86.1, 99.6 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 143.2, 191 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 143.2, 191 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 200.4, 282.5 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 200.4, 282.5 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 257.6, 373.9 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 257.6, 373.9 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 343.9, 418.7 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 343.9, 418.7 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 430.2, 463.5 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 430.2, 463.5 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 516.6, 508.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 516.6, 508.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -57.7, -364.7 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -57.7, -364.7 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -52.9, -291.2 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -52.9, -291.2 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -48.3, -214.8 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -48.3, -214.8 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -43.6, -138.5 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -43.6, -138.5 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -39, -62.4 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -39, -62.4 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -34.4, 13.6 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -34.4, 13.6 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -29.9, 89.5 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -29.9, 89.5 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -22.5, 102.2 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -22.5, 102.2 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -15.3, 114.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -15.3, 114.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -8.1, 127.4 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -8.1, 127.4 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 1.5, 141.2 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 1.5, 141.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 10.9, 155 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 10.9, 155 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 20.2, 168.7 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 20.2, 168.7 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 25.3, 175.9 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 25.3, 175.9 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 30.3, 183 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 30.3, 183 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 35.1, 190.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 35.1, 190.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 43.9, 192.6 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 43.9, 192.6 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 52.6, 195 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 52.6, 195 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 61.1, 197.6 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 61.1, 197.6 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 72.2, 189.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 72.2, 189.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 83.2, 182.2 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 83.2, 182.2 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 94.2, 174.7 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 94.2, 174.7 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 98.9, 157.5 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 98.9, 157.5 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 104.1, 140.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 104.1, 140.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 109.3, 123.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 109.3, 123.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 115.5, 110.4 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 115.5, 110.4 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 121.8, 97.5 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 121.8, 97.5 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 128, 84.7 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 128, 84.7 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 134.6, 59 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 134.6, 59 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 141.2, 33.3 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 141.2, 33.3 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 147.9, 7.7 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 147.9, 7.7 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 154.6, -17.9 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 154.6, -17.9 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 161.3, -43.4 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 161.3, -43.4 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 168.1, -69 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 168.1, -69 , 0 );

setScaleKey( spep_0 + 208 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_0 + 208 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -142.5 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -142.5 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -41.4 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -41.4 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -41.5 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -41.5 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 48.4 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 48.4 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 56.5 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 56.5 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 72.7 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 72.7 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 80.7 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 80.7 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 88.8 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 88.8 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 97.3 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 97.3 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 105.9 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, 105.9 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 114.4 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 114.4 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 122.9 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 122.9 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 131.4 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 131.4 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 139.9 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 139.9 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 148.5 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 148.5 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 157 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 157 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 165.5 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 165.5 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 174 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, 174 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 182.5 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 182.5 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 187.2 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 187.2 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 191.9 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 191.9 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 196.6 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, 196.6 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 201.3 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 201.3 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 206 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 206 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 210.7 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 210.7 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 215.4 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 215.4 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 220.1 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, 220.1 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 224.8 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, 224.8 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, 229.5 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, 229.5 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 234.2 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 234.2 );

--敵の動き3
setDisp( spep_0 + 344 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 398 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 362 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 344 + OFFSET_X, 1, 103.5, 795.2 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 103.5, 795.2 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 125.2, 661.8 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 125.2, 661.8 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 147, 528.3 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 147, 528.3 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 168.6, 394.8 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 168.6, 394.8 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 190.4, 261.4 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 190.4, 261.4 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 212.1, 127.9 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 212.1, 127.9 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 233.7, -5.6 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 233.7, -5.6 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 255.5, -139 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 255.5, -139 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 187.5, -139 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 187.5, -139 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 271.1, -157.2 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 271.1, -157.2 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 232.6, -157.2 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 232.6, -157.2 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 214.1, -157.1 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 214.1, -157.1 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 271.1, -157.2 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 271.1, -157.2 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 309.9, -32 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 309.9, -32 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 346, 84.4 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 346, 84.4 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 379.4, 192.3 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 379.4, 192.3 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 410.1, 291.5 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 410.1, 291.5 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 438.2, 382.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 438.2, 382.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 463.6, 464.1 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 463.6, 464.1 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 486.3, 537.4 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 486.3, 537.4 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 506.4, 602.2 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 506.4, 602.2 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 523.7, 658.2 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 523.7, 658.2 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 538.4, 705.7 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 538.4, 705.7 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 550.5, 744.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 550.5, 744.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 559.8, 774.7 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 559.8, 774.7 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 566.5, 796.3 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 566.5, 796.3 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 570.5, 809.2 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 570.5, 809.2 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 571.8, 813.5 , 0 );

setScaleKey( spep_0 + 344 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.56, 1.56 );

setRotateKey( spep_0 + 344 + OFFSET_X, 1, -104.8 );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, -104.8 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, 178.8 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, 178.8 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, 179 );
setRotateKey( spep_0 + 367 + OFFSET_X, 1, 179 );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, 178.8 );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, 178.8 );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, 180.5 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, 180.5 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, 182.1 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, 182.1 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, 183.5 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, 183.5 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, 184.9 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, 184.9 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, 186.1 );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, 186.1 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, 187.2 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, 187.2 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 188.2 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, 188.2 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, 189 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, 189 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 189.8 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, 189.8 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 190.4 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, 190.4 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 191 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, 191 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 191.4 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, 191.4 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, 191.7 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, 191.7 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, 191.8 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, 191.8 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, 191.9 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--集中線
SE003 = playSeVer2( spep_0 + 66, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE003, 75 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 144; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE00X, 0);
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
--尻尾あげる
SE004 = playSeVer2( spep_0 + 140, 1116, "",spep_0 + 190, 0, 24, -1);
SE005 = playSeVer2( spep_0 + 140, 1004, "", 0, 0, 0, -1);

--尻尾振り下ろす
SE006 = playSeVer2( spep_0 + 180, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 180, SE006, -600 );
setTimeStretch( SE006, 0.6, 30, 4 );

--敵ヒット
SE007 = playSeVer2( spep_0 + 206, 1159, "",spep_0 + 280, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 206, SE007, 84 );

--敵飛び上がる
SE008 = playSeVer2( spep_0 + 230, 1027, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 234, 1116, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 234, 1119, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE010, 79 );

--尻尾で吹き飛ばす
SE011 = playSeVer2( spep_0 + 338, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 350, 1187, "",spep_0 + 414, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 350, SE012, 56 );
SE013 = playSeVer2( spep_0 + 350, 1120, "",spep_0 + 416, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 400

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

--電撃溜め
SE015 = playSeVer2( spep_1 + 84, 1255, "",spep_2 + 98, 0, 20, -1);
SE016 = playSeVer2( spep_1 + 84, 1186, "",spep_2 + 98, 0, 18, -1);
setPitch( spep_1 + 84, SE016, 200 );
setTimeStretch( SE016, 1.13, 30, 4 );

------------------------------------------------------
-- 電撃 ef_002
------------------------------------------------------
MAX_FRAME_2 = 148;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );    -- 電撃 ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2 , SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2 , SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );   -- ↑敵挟んだ背景 ef_002_b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 98 + OFFSET_X, 1, 106 );

changeAnime( spep_2 + 98 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 98 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 162, 18.8 , 0 );

setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.23, 1.23 );

setRotateKey( spep_2 + 98 + OFFSET_X, 1, 121.5 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 121.5 );

-- ** 音 ** --
--電撃溜め
SE017 = playSeVer2( spep_2 + 0, 1147, "",spep_2 + 92, 0, 24, -1);

--電撃発射
SE018 = playSeVer2( spep_2 + 68, 1212, "",spep_2 + 178, 8, 24, -1);
setSeVolumeByWorkId( spep_2 + 68, SE018, 65 );
setStartTimeMs( SE018,  800 );
SE019 = playSeVer2( spep_2 + 70, 1256, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 70, 1043, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 70, 1249, "",spep_2 + 176, 0, 22, -1);
SE022 = playSeVer2( spep_2 + 70, 1154, "",spep_2 + 174, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 70, SE022, 178 );
setPitch( spep_2 + 70, SE022, 200 );
setTimeStretch( SE022, 1.13, 30, 4 );

--爆発
SE023 = playSeVer2( spep_2 + 138, 1023, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2;  -- 148

------------------------------------------------------
-- ラストのガッの背景 ef_003
------------------------------------------------------

-- ** ひび割れ ** --
finish_f = entryEffect( spep_3 + 8, 155520, 0x100, -1, 0, 0, 0 );  -- 敵が画面衝突(画面割れ)
setEffMoveKey( spep_3 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 8, finish_f, 0 );
setEffRotateKey( spep_3 + 112, finish_f, 0 );
setEffAlphaKey( spep_3 + 8, finish_f, 255 );
setEffAlphaKey( spep_3 + 112, finish_f, 255 );
 
finish_b = entryEffect( spep_3 + 0, SP_003, 0x80, -1, 0, 0, 0 );  -- ラストのガッの背景 ef_003
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 112, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 112, finish_b, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, bakuhatsu, 0, 0 , 0 );
 
setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 112, bakuhatsu, 0.9, 0.9 );
 
setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 112, bakuhatsu, 0 );
 
setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 112, bakuhatsu, 255 );

-- ** 集中線 ** --
--[[
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );
 
setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );
]]
shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 112, ctga, 255 );  
 
-- ** 敵キャラクター ** --
setDisp( spep_3 + 112, 1, 0 );
 
changeAnime( spep_3 + 0, 1, 107 );
 
setMoveKey( spep_3 + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_3 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_3 + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_3 + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_3 + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_3 + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_3 + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_3 + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_3 + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_3 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_3 + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_3 + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_3 + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_3 + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_3 + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_3 + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_3 + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_3 + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_3 + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_3 + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_3 + 0, 1, -354.8 );
setRotateKey( spep_3 + 2, 1, -122.8 );
setRotateKey( spep_3 + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_3 + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_3 + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_3 + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_3 + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_3 + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_3 + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_3 + 112, 1, 729.5 );
 
-- ** 音 ** --
--爆発
SE0N1 = playSeVer2( spep_3 + 0, 1023, "", 0, 0, 0, -1);
 
--画面割れ
SE0N2 = playSeVer2( spep_3 + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_3 + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 6 ); -- ダメージ表示フレーム
endPhase( spep_3 + 108 ); -- 終了フレーム

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕　尻尾叩きつけ〜振り払い ef_001
------------------------------------------------------
MAX_FRAME_0 = 398;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );    -- 敵側:開幕　尻尾叩きつけ〜振り払い ef_001_r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001br, 0x80, -1, 0, 0, 0 );   -- 敵側:↑敵挟んだ背景 ef_001_br
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 44;

-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 130 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 202 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 130 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 130 + OFFSET_X, 1, 278.9, -420.4 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 278.9, -420.4 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 327.9, -420.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 327.9, -420.4 , 0 );

setScaleKey( spep_0 + 130 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_0 + 130 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -14.5 );

--敵の動き2
setDisp( spep_0 + 208 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 324 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 208 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 220 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 256 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 208 + OFFSET_X, 1, 92.9, -94.4 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 92.9, -94.4 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 2.1, -285.3 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 2.1, -285.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 2.1, -308.5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 2.1, -308.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 2.1, -264 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 2.1, -264 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 2.1, -240.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 2.1, -240.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 2.1, -266.9 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 2.1, -266.9 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 2.1, -241.1 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 2.1, -241.1 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 2.1, -269.8 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 2.1, -269.8 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 2.1, -234.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 2.1, -234.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 2.1, -272.7 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 2.1, -272.7 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 2.1, -239.3 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 2.1, -239.3 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 2.1, -247.2 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 2.1, -247.2 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 86.1, 99.6 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 86.1, 99.6 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 143.2, 191 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 143.2, 191 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 200.4, 282.5 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 200.4, 282.5 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 257.6, 373.9 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 257.6, 373.9 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 343.9, 418.7 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 343.9, 418.7 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 430.2, 463.5 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 430.2, 463.5 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 516.6, 508.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 516.6, 508.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -57.7, -364.7 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -57.7, -364.7 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -52.9, -291.2 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -52.9, -291.2 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -48.3, -214.8 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -48.3, -214.8 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -43.6, -138.5 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -43.6, -138.5 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -39, -62.4 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -39, -62.4 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -34.4, 13.6 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -34.4, 13.6 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -29.9, 89.5 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -29.9, 89.5 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -22.5, 102.2 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -22.5, 102.2 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -15.3, 114.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -15.3, 114.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -8.1, 127.4 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -8.1, 127.4 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 1.5, 141.2 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 1.5, 141.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 10.9, 155 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 10.9, 155 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 20.2, 168.7 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 20.2, 168.7 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 25.3, 175.9 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 25.3, 175.9 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 30.3, 183 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 30.3, 183 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 35.1, 190.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 35.1, 190.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 43.9, 192.6 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 43.9, 192.6 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 52.6, 195 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 52.6, 195 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 61.1, 197.6 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 61.1, 197.6 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 72.2, 189.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 72.2, 189.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 83.2, 182.2 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 83.2, 182.2 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 94.2, 174.7 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 94.2, 174.7 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 98.9, 157.5 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 98.9, 157.5 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 104.1, 140.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 104.1, 140.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 109.3, 123.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 109.3, 123.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 115.5, 110.4 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 115.5, 110.4 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 121.8, 97.5 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 121.8, 97.5 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 128, 84.7 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 128, 84.7 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 134.6, 59 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 134.6, 59 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 141.2, 33.3 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 141.2, 33.3 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 147.9, 7.7 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 147.9, 7.7 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 154.6, -17.9 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 154.6, -17.9 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 161.3, -43.4 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 161.3, -43.4 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 168.1, -69 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 168.1, -69 , 0 );

setScaleKey( spep_0 + 208 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_0 + 208 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -142.5 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -142.5 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -41.4 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -41.4 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -41.5 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -41.5 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 48.4 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 48.4 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 56.5 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 56.5 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 72.7 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 72.7 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 80.7 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 80.7 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 88.8 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 88.8 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 97.3 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 97.3 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 105.9 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, 105.9 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 114.4 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 114.4 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 122.9 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 122.9 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 131.4 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 131.4 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 139.9 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 139.9 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 148.5 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 148.5 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 157 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 157 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 165.5 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 165.5 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 174 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, 174 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 182.5 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 182.5 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 187.2 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 187.2 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 191.9 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 191.9 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 196.6 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, 196.6 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 201.3 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 201.3 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 206 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 206 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 210.7 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 210.7 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 215.4 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 215.4 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 220.1 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, 220.1 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 224.8 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, 224.8 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, 229.5 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, 229.5 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 234.2 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 234.2 );

--敵の動き3
setDisp( spep_0 + 344 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 398 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 362 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 344 + OFFSET_X, 1, 103.5, 795.2 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 103.5, 795.2 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 125.2, 661.8 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 125.2, 661.8 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 147, 528.3 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 147, 528.3 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 168.6, 394.8 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 168.6, 394.8 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 190.4, 261.4 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 190.4, 261.4 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 212.1, 127.9 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 212.1, 127.9 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 233.7, -5.6 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 233.7, -5.6 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 255.5, -139 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 255.5, -139 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 187.5, -139 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 187.5, -139 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 271.1, -157.2 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 271.1, -157.2 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 232.6, -157.2 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 232.6, -157.2 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 214.1, -157.1 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 214.1, -157.1 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 271.1, -157.2 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 271.1, -157.2 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 309.9, -32 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 309.9, -32 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 346, 84.4 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 346, 84.4 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 379.4, 192.3 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 379.4, 192.3 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 410.1, 291.5 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 410.1, 291.5 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 438.2, 382.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 438.2, 382.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 463.6, 464.1 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 463.6, 464.1 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 486.3, 537.4 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 486.3, 537.4 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 506.4, 602.2 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 506.4, 602.2 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 523.7, 658.2 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 523.7, 658.2 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 538.4, 705.7 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 538.4, 705.7 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 550.5, 744.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 550.5, 744.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 559.8, 774.7 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 559.8, 774.7 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 566.5, 796.3 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 566.5, 796.3 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 570.5, 809.2 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 570.5, 809.2 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 571.8, 813.5 , 0 );

setScaleKey( spep_0 + 344 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.56, 1.56 );

setRotateKey( spep_0 + 344 + OFFSET_X, 1, -104.8 );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, -104.8 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, 178.8 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, 178.8 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, 179 );
setRotateKey( spep_0 + 367 + OFFSET_X, 1, 179 );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, 178.8 );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, 178.8 );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, 180.5 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, 180.5 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, 182.1 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, 182.1 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, 183.5 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, 183.5 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, 184.9 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, 184.9 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, 186.1 );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, 186.1 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, 187.2 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, 187.2 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 188.2 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, 188.2 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, 189 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, 189 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 189.8 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, 189.8 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 190.4 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, 190.4 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 191 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, 191 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 191.4 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, 191.4 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, 191.7 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, 191.7 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, 191.8 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, 191.8 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, 191.9 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--集中線
SE003 = playSeVer2( spep_0 + 66, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE003, 75 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 144; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE00X, 0);
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
--尻尾あげる
SE004 = playSeVer2( spep_0 + 140, 1116, "",spep_0 + 190, 0, 24, -1);
SE005 = playSeVer2( spep_0 + 140, 1004, "", 0, 0, 0, -1);

--尻尾振り下ろす
SE006 = playSeVer2( spep_0 + 180, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 180, SE006, -600 );
setTimeStretch( SE006, 0.6, 30, 4 );

--敵ヒット
SE007 = playSeVer2( spep_0 + 206, 1159, "",spep_0 + 280, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 206, SE007, 84 );

--敵飛び上がる
SE008 = playSeVer2( spep_0 + 230, 1027, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 234, 1116, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 234, 1119, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE010, 79 );

--尻尾で吹き飛ばす
SE011 = playSeVer2( spep_0 + 338, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 350, 1187, "",spep_0 + 414, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 350, SE012, 56 );
SE013 = playSeVer2( spep_0 + 350, 1120, "",spep_0 + 416, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 398

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

--電撃溜め
SE015 = playSeVer2( spep_1 + 84, 1255, "",spep_2 + 98, 0, 20, -1);
SE016 = playSeVer2( spep_1 + 84, 1186, "",spep_2 + 98, 0, 18, -1);
setPitch( spep_1 + 84, SE016, 200 );
setTimeStretch( SE016, 1.13, 30, 4 );

------------------------------------------------------
-- 電撃 ef_002
------------------------------------------------------
MAX_FRAME_2 = 148;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );    -- 敵側:電撃 ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2 , SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2 , SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );   -- 敵側:↑敵挟んだ背景 ef_002_br
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 98 + OFFSET_X, 1, 106 );

changeAnime( spep_2 + 98 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 98 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 173.5, 22.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 162, 18.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 162, 18.8 , 0 );

setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.23, 1.23 );

setRotateKey( spep_2 + 98 + OFFSET_X, 1, 121.5 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 121.5 );

-- ** 音 ** --
--電撃溜め
SE017 = playSeVer2( spep_2 + 0, 1147, "",spep_2 + 92, 0, 24, -1);

--電撃発射
SE018 = playSeVer2( spep_2 + 68, 1212, "",spep_2 + 178, 8, 24, -1);
setSeVolumeByWorkId( spep_2 + 68, SE018, 65 );
setStartTimeMs( SE018,  800 );
SE019 = playSeVer2( spep_2 + 70, 1256, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 70, 1043, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 70, 1249, "",spep_2 + 176, 0, 22, -1);
SE022 = playSeVer2( spep_2 + 70, 1154, "",spep_2 + 174, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 70, SE022, 178 );
setPitch( spep_2 + 70, SE022, 200 );
setTimeStretch( SE022, 1.13, 30, 4 );

--爆発
SE023 = playSeVer2( spep_2 + 138, 1023, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2;  -- 148

------------------------------------------------------
-- ラストのガッの背景 ef_003
------------------------------------------------------

-- ** ひび割れ ** --
finish_f = entryEffect( spep_3 + 8, 155520, 0x100, -1, 0, 0, 0 );  -- 敵が画面衝突(画面割れ)
setEffMoveKey( spep_3 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 8, finish_f, 0 );
setEffRotateKey( spep_3 + 112, finish_f, 0 );
setEffAlphaKey( spep_3 + 8, finish_f, 255 );
setEffAlphaKey( spep_3 + 112, finish_f, 255 );
 
finish_b = entryEffect( spep_3 + 0, SP_003, 0x80, -1, 0, 0, 0 );  -- ラストのガッの背景 ef_003
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 112, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 112, finish_b, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, bakuhatsu, 0, 0 , 0 );
 
setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 112, bakuhatsu, 0.9, 0.9 );
 
setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 112, bakuhatsu, 0 );
 
setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 112, bakuhatsu, 255 );

-- ** 集中線 ** --
--[[
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );
 
setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );
]]
shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 112, ctga, 255 );  
 
-- ** 敵キャラクター ** --
setDisp( spep_3 + 112, 1, 0 );
 
changeAnime( spep_3 + 0, 1, 107 );
 
setMoveKey( spep_3 + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_3 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_3 + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_3 + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_3 + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_3 + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_3 + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_3 + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_3 + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_3 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_3 + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_3 + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_3 + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_3 + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_3 + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_3 + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_3 + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_3 + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_3 + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_3 + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_3 + 0, 1, -354.8 );
setRotateKey( spep_3 + 2, 1, -122.8 );
setRotateKey( spep_3 + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_3 + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_3 + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_3 + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_3 + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_3 + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_3 + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_3 + 112, 1, 729.5 );
 
-- ** 音 ** --
--爆発
SE0N1 = playSeVer2( spep_3 + 0, 1023, "", 0, 0, 0, -1);
 
--画面割れ
SE0N2 = playSeVer2( spep_3 + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_3 + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 6 ); -- ダメージ表示フレーム
endPhase( spep_3 + 108 ); -- 終了フレーム

end
