--1028770:UR_チルド_必殺技：デスボール
--sp_effect_a2_00235
--sp2688

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162755;	--気弾連射するチルド	ef_001
SP_01b = 162756;	--気弾連射するチルド	ef_001b
SP_02 = 162759;	--デスボール溜め～フィニッシュ	ef_002
SP_02b = 162760;	--デスボール溜め～フィニッシュ	ef_002b

--エフェクト(てき)
SP_01r = 162757;	--気弾連射するチルド　敵側	ef_001r
SP_01br = 162758;	--気弾連射するチルド　敵側	ef_001br
SP_02r = 162761;	--デスボール溜め～フィニッシュ　敵側	ef_002r
SP_02br = 162762;	--デスボール溜め～フィニッシュ　敵側	ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 気弾連射するチルド
-------------------------------------------------

MAX_FRAME_0 = 356;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -70, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -70, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -70, 515.5 , 0 );
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
setDisp( spep_0 + 186 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 352 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 186 + OFFSET_X, 1, 116 );
changeAnime( spep_0 + 208 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 246 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 250 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 254 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 258 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 262 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 266 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 270 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 274 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 278 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 282 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 286 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 290 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 294 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 298 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 186 + OFFSET_X, 1, 34.1, -39.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 34.1, -39.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 32.9, -37.7 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 32.9, -37.7 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 31.7, -36.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 31.7, -36.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 30.6, -35 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 30.6, -35 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 29.3, -33.6 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 29.3, -33.6 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 28.2, -32.3 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 28.2, -32.3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 27, -30.9 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 27, -30.9 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 25.8, -29.5 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 25.8, -29.5 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 24.6, -28.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 24.6, -28.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 23.4, -26.8 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 23.4, -26.8 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 20.9, -24 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 20.9, -24 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 23.5, -15.6 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 23.5, -15.6 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -10.1, 49.5 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -10.1, 49.5 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 69.9, -62.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 69.9, -62.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 69.9, 49.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 69.9, 49.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 21.9, -78.5 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 21.9, -78.5 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 45.9, -14.5 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 45.9, -14.5 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 12.3, -8.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 12.3, -8.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 21.9, -20.9 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 21.9, -20.9 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 21.9, -14.5 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 21.9, -14.5 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 21.9, 1.5 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 21.9, 1.5 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -0.5, -14.5 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -0.5, -14.5 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 18.7, -27.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 18.7, -27.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 21.9, -14.5 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 21.9, -14.5 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 21.9, 7.9 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 21.9, 7.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 2.7, -33.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 2.7, -33.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 5.2, -6.4 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 5.2, -6.4 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 46.8, -19.2 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 46.8, -19.2 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 34.7, 4.7 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 34.7, 4.7 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 12.3, -43.3 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 12.3, -43.3 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 56.4, -3.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 56.4, -3.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 27.6, -48 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 27.6, -48 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -10.1, 7.9 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -10.1, 7.9 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 47.5, -20.9 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 47.5, -20.9 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 46.8, 3.2 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 46.8, 3.2 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 14.8, -41.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 14.8, -41.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 47.5, -1.7 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 47.5, -1.7 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 12.3, -33.7 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 12.3, -33.7 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 18, -9.6 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 18, -9.6 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 37.2, -25.6 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 37.2, -25.6 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 21.9, 1.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 21.9, 1.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -10.1, -24.1 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -10.1, -24.1 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 40.4, -25.6 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 40.4, -25.6 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 21.2, -6.4 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 21.2, -6.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 21.9, -27.3 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 21.9, -27.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 12.3, -20.9 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 12.3, -20.9 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 27.6, -19.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 27.6, -19.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 21.2, -22.4 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 21.2, -22.4 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 28.3, -14.5 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 28.3, -14.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 21.9, -8.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 21.9, -8.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 27.6, -25.6 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 27.6, -25.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 27.6, -19.2 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 27.6, -19.2 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 50.7, 11.1 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 50.7, 11.1 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -0.6, -62.4 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -0.6, -62.4 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -55.2, 8.1 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -55.2, 8.1 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 43.9, -59 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 43.9, -59 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 5.3, -36.5 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 5.3, -36.5 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 40.4, 14.8 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 40.4, 14.8 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 5, -36.4 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 5, -36.4 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 43.3, -26.6 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 43.3, -26.6 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 11.2, 8.6 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 11.2, 8.6 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 39.8, -23.3 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 39.8, -23.3 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 17.3, 5.6 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 17.3, 5.6 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -2, -26.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -2, -26.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 39.4, -26.2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 39.4, -26.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 36.1, 5.9 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 36.1, 5.9 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 10.4, -32.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 10.4, -32.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 13.5, -0.3 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 13.5, -0.3 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 29.3, -22.7 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 29.3, -22.7 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 3.6, -22.6 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 3.6, -22.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 32.2, -3.3 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 32.2, -3.3 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 19.3, -35.2 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 19.3, -35.2 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 6.4, -3.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 6.4, -3.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 35, -12.6 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 35, -12.6 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 12.5, -28.5 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 12.5, -28.5 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 34.7, -2.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 34.7, -2.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 25, -25.1 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 25, -25.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 12.1, -5.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 12.1, -5.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 18.3, -18.5 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 18.3, -18.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 24.6, -12.1 , 0 );

setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.61, 0.61 );

setRotateKey( spep_0 + 186 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -4 );

setBlendColor( spep_0 + 212 + OFFSET_X, 1, 3, 0, 0, 0, 1);
setBlendColor( spep_0 + 351 + OFFSET_X, 1, 3, 0, 0, 0, 1);
setBlendColor( spep_0 + 352 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--気弾溜め
SE001 = playSeVer2( spep_0 + 0, 1200, "",spep_0 + 118, 0, 28, -1);
SE002 = playSeVer2( spep_0 + 0, 1154, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1262, "", 0, 0, 0, -1);

--腕振りかぶる
SE005 = playSeVer2( spep_0 + 56, 1003, "", 0, 0, 0, -1);

--連続気弾
SE006 = playSeVer2( spep_0 + 80, 1027, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 80, 1021, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 92, 1406, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 92, 1409, "",spep_0 + 296, 0, 20, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 200; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0); --回避後の敵の色戻す

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
--連続爆発
SE010 = playSeVer2( spep_0 + 188, 1014, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 188, 1023, "", 0, 0, 0, -1);


--連続気弾
SE012 = playSeVer2( spep_0 + 220, 1406, "",spep_0 + 300, 0, 26, -1);

--連続爆発
SE013 = playSeVer2( spep_0 + 220, 1024, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 272, 1159, "",spep_0 + 396, 0, 24, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --356F


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 1);


-------------------------------------------------
-- デスボール溜め～フィニッシュ
-------------------------------------------------

MAX_FRAME_1 = 490;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 敵キャラクター ** --
setDisp( spep_1 + 248 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 326 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 248 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 248 + OFFSET_X, 1, 107.4, -169.1 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, 107.4, -169.1 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 110.8, -161.4 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, 110.8, -161.4 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 110.9, -171.2 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 110.9, -171.2 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 114.3, -158.7 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 114.3, -158.7 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 101.7, -171.8 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 101.7, -171.8 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 116.3, -159.3 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 116.3, -159.3 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 111.6, -177.1 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, 111.6, -177.1 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, 102.2, -167.8 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, 102.2, -167.8 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, 112, -161.7 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, 112, -161.7 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 105.8, -174.8 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, 105.8, -174.8 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, 112.4, -162.2 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, 112.4, -162.2 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, 102.9, -173.7 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, 102.9, -173.7 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 112.7, -162.8 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, 112.7, -162.8 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 114.5, -174.2 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 114.5, -174.2 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 113.1, -164.9 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, 113.1, -164.9 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 105.2, -174.8 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, 105.2, -174.8 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 115, -167.1 , 0 );
setMoveKey( spep_1 + 281 + OFFSET_X, 1, 115, -167.1 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 110.4, -165.7 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X, 1, 110.4, -165.7 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, 105.8, -177.2 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X, 1, 105.8, -177.2 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, 112.3, -163.1 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X, 1, 112.3, -163.1 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, 107.7, -177.7 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X, 1, 107.7, -177.7 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, 117.5, -166.8 , 0 );
setMoveKey( spep_1 + 291 + OFFSET_X, 1, 117.5, -166.8 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X, 1, 106.5, -168.7 , 0 );
setMoveKey( spep_1 + 293 + OFFSET_X, 1, 106.5, -168.7 , 0 );
setMoveKey( spep_1 + 294 + OFFSET_X, 1, 109.8, -167.4 , 0 );
setMoveKey( spep_1 + 295 + OFFSET_X, 1, 109.8, -167.4 , 0 );
setMoveKey( spep_1 + 296 + OFFSET_X, 1, 116.4, -178.8 , 0 );
setMoveKey( spep_1 + 297 + OFFSET_X, 1, 116.4, -178.8 , 0 );
setMoveKey( spep_1 + 298 + OFFSET_X, 1, 108.6, -169.5 , 0 );
setMoveKey( spep_1 + 299 + OFFSET_X, 1, 108.6, -169.5 , 0 );
setMoveKey( spep_1 + 300 + OFFSET_X, 1, 113.6, -166.6 , 0 );
setMoveKey( spep_1 + 301 + OFFSET_X, 1, 113.6, -166.6 , 0 );
setMoveKey( spep_1 + 302 + OFFSET_X, 1, 107.3, -178 , 0 );
setMoveKey( spep_1 + 303 + OFFSET_X, 1, 107.3, -178 , 0 );
setMoveKey( spep_1 + 304 + OFFSET_X, 1, 115.5, -170.3 , 0 );
setMoveKey( spep_1 + 305 + OFFSET_X, 1, 115.5, -170.3 , 0 );
setMoveKey( spep_1 + 306 + OFFSET_X, 1, 106.1, -185 , 0 );
setMoveKey( spep_1 + 307 + OFFSET_X, 1, 106.1, -185 , 0 );
setMoveKey( spep_1 + 308 + OFFSET_X, 1, 119.1, -164.5 , 0 );
setMoveKey( spep_1 + 309 + OFFSET_X, 1, 119.1, -164.5 , 0 );
setMoveKey( spep_1 + 310 + OFFSET_X, 1, 106.4, -167.9 , 0 );
setMoveKey( spep_1 + 311 + OFFSET_X, 1, 106.4, -167.9 , 0 );
setMoveKey( spep_1 + 312 + OFFSET_X, 1, 122.6, -181 , 0 );
setMoveKey( spep_1 + 313 + OFFSET_X, 1, 122.6, -181 , 0 );
setMoveKey( spep_1 + 314 + OFFSET_X, 1, 108.4, -165.3 , 0 );
setMoveKey( spep_1 + 315 + OFFSET_X, 1, 108.4, -165.3 , 0 );
setMoveKey( spep_1 + 316 + OFFSET_X, 1, 102.2, -178.3 , 0 );
setMoveKey( spep_1 + 317 + OFFSET_X, 1, 102.2, -178.3 , 0 );
setMoveKey( spep_1 + 318 + OFFSET_X, 1, 123.1, -167.4 , 0 );
setMoveKey( spep_1 + 319 + OFFSET_X, 1, 123.1, -167.4 , 0 );
setMoveKey( spep_1 + 320 + OFFSET_X, 1, 112.1, -164.5 , 0 );
setMoveKey( spep_1 + 321 + OFFSET_X, 1, 112.1, -164.5 , 0 );
setMoveKey( spep_1 + 322 + OFFSET_X, 1, 109.1, -184 , 0 );
setMoveKey( spep_1 + 323 + OFFSET_X, 1, 109.1, -184 , 0 );
setMoveKey( spep_1 + 324 + OFFSET_X, 1, 120.5, -161.8 , 0 );
setMoveKey( spep_1 + 326 + OFFSET_X, 1, 120.5, -161.8 , 0 );

setScaleKey( spep_1 + 248 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 251 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 259 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 260 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 267 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 268 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 277 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 278 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 285 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 286 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 293 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 294 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 303 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 304 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 311 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 312 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 319 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 320 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 326 + OFFSET_X, 1, 1.52, 1.52 );

setRotateKey( spep_1 + 248 + OFFSET_X, 1, -59.6 );
setRotateKey( spep_1 + 326 + OFFSET_X, 1, -59.6 );

-- ** 音 ** --
--気弾溜め２
SE016 = playSeVer2( spep_1 + 0, 1442, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE016, 211 );
SE017 = playSeVer2( spep_1 + 0, 1281, "",spep_1 + 212, 0, 30, -1);
setPitch( spep_1 + 0, SE017, 300 );
setTimeStretch( SE017, 0.85, 30, 4 );
SE018 = playSeVer2( spep_1 + 0, 1334, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 22, 1311, "", 0, 0, 0, -1);
setTimeStretch( SE019, 2, 30, 4 );

--気弾膨れあがる
SE020 = playSeVer2( spep_1 + 70, 1025, "", 0, 0, 0, -1);

--画面遷移
SE021 = playSeVer2( spep_1 + 114, 8, "", 0, 0, 0, -1);

--気弾発射
SE022 = playSeVer2( spep_1 + 182, 1193, "",spep_1 + 372, 0, 42, -1);
SE023 = playSeVer2( spep_1 + 182, 1027, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 182, 1145, "",spep_1 + 372, 0, 42, -1);

--気弾飛んでいく
SE025 = playSeVer2( spep_1 + 238, 1226, "",spep_1 + 372, 0, 42, -1);

--爆発
SE026 = playSeVer2( spep_1 + 328, 1159, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 348, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 386); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 490F-4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 気弾連射するチルド
-------------------------------------------------

MAX_FRAME_0 = 356;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 186 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 352 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 186 + OFFSET_X, 1, 16 );
changeAnime( spep_0 + 208 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 246 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 250 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 254 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 258 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 262 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 266 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 270 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 274 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 278 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 282 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 286 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 290 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 294 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 298 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 186 + OFFSET_X, 1, -34.1, -39.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -34.1, -39.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -32.9, -37.7 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -32.9, -37.7 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -31.7, -36.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -31.7, -36.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -30.6, -35 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -30.6, -35 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -29.3, -33.6 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -29.3, -33.6 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -28.2, -32.3 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -28.2, -32.3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -27, -30.9 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -27, -30.9 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -25.8, -29.5 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -25.8, -29.5 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -24.6, -28.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -24.6, -28.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -23.4, -26.8 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -23.4, -26.8 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -20.9, -24 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -20.9, -24 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -23.5, -15.6 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -23.5, -15.6 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 10.1, 49.5 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 10.1, 49.5 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -69.9, -62.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -69.9, -62.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -69.9, 49.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -69.9, 49.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -21.9, -78.5 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -21.9, -78.5 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -45.9, -14.5 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -45.9, -14.5 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -12.3, -8.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -12.3, -8.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -21.9, -20.9 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -21.9, -20.9 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -21.9, -14.5 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -21.9, -14.5 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -21.9, 1.5 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -21.9, 1.5 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 0.5, -14.5 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 0.5, -14.5 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -18.7, -27.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -18.7, -27.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -21.9, -14.5 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -21.9, -14.5 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -21.9, 7.9 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -21.9, 7.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -2.7, -33.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -2.7, -33.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -5.2, -6.4 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -5.2, -6.4 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -46.8, -19.2 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -46.8, -19.2 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -34.7, 4.7 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -34.7, 4.7 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -12.3, -43.3 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -12.3, -43.3 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -56.4, -3.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -56.4, -3.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -27.6, -48 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -27.6, -48 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 10.1, 7.9 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 10.1, 7.9 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -47.5, -20.9 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -47.5, -20.9 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -46.8, 3.2 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -46.8, 3.2 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -14.8, -41.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -14.8, -41.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -47.5, -1.7 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -47.5, -1.7 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -12.3, -33.7 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -12.3, -33.7 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -18, -9.6 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -18, -9.6 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -37.2, -25.6 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -37.2, -25.6 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -21.9, 1.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -21.9, 1.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 10.1, -24.1 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 10.1, -24.1 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -40.4, -25.6 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -40.4, -25.6 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -21.2, -6.4 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -21.2, -6.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -21.9, -27.3 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -21.9, -27.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -12.3, -20.9 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -12.3, -20.9 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -27.6, -19.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -27.6, -19.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -21.2, -22.4 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -21.2, -22.4 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -28.3, -14.5 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -28.3, -14.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -21.9, -8.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -21.9, -8.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -27.6, -25.6 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -27.6, -25.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -27.6, -19.2 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -27.6, -19.2 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -50.7, 11.1 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -50.7, 11.1 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 0.6, -62.4 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 0.6, -62.4 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 55.2, 8.1 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 55.2, 8.1 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -43.9, -59 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -43.9, -59 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -5.3, -36.5 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -5.3, -36.5 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -40.4, 14.8 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -40.4, 14.8 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -5, -36.4 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -5, -36.4 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -43.3, -26.6 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -43.3, -26.6 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -11.2, 8.6 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -11.2, 8.6 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -39.8, -23.3 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -39.8, -23.3 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -17.3, 5.6 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -17.3, 5.6 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 2, -26.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 2, -26.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -39.4, -26.2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -39.4, -26.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -36.1, 5.9 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -36.1, 5.9 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -10.4, -32.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -10.4, -32.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -13.5, -0.3 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -13.5, -0.3 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -29.3, -22.7 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -29.3, -22.7 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -3.6, -22.6 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -3.6, -22.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -32.2, -3.3 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -32.2, -3.3 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -19.3, -35.2 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -19.3, -35.2 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -6.4, -3.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -6.4, -3.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -35, -12.6 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -35, -12.6 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -12.5, -28.5 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -12.5, -28.5 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -34.7, -2.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -34.7, -2.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -25, -25.1 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -25, -25.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -12.1, -5.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -12.1, -5.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -18.3, -18.5 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -18.3, -18.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -24.6, -12.1 , 0 );

setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.61, 0.61 );

setRotateKey( spep_0 + 186 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, 4 );

setBlendColor( spep_0 + 212 + OFFSET_X, 1, 3, 0, 0, 0, 1);
setBlendColor( spep_0 + 351 + OFFSET_X, 1, 3, 0, 0, 0, 1);
setBlendColor( spep_0 + 352 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--気弾溜め
SE001 = playSeVer2( spep_0 + 0, 1200, "",spep_0 + 118, 0, 28, -1);
SE002 = playSeVer2( spep_0 + 0, 1154, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1262, "", 0, 0, 0, -1);

--腕振りかぶる
SE005 = playSeVer2( spep_0 + 56, 1003, "", 0, 0, 0, -1);

--連続気弾
SE006 = playSeVer2( spep_0 + 80, 1027, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 80, 1021, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 92, 1406, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 92, 1409, "",spep_0 + 296, 0, 20, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 200; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0); --回避後の敵の色戻す

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
--連続爆発
SE010 = playSeVer2( spep_0 + 188, 1014, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 188, 1023, "", 0, 0, 0, -1);


--連続気弾
SE012 = playSeVer2( spep_0 + 220, 1406, "",spep_0 + 300, 0, 26, -1);

--連続爆発
SE013 = playSeVer2( spep_0 + 220, 1024, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 272, 1159, "",spep_0 + 396, 0, 24, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --356F


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 1);


-------------------------------------------------
-- デスボール溜め～フィニッシュ
-------------------------------------------------

MAX_FRAME_1 = 490;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 敵キャラクター ** --
setDisp( spep_1 + 248 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 326 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 248 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 248 + OFFSET_X, 1, 107.4, -169.1 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, 107.4, -169.1 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 110.8, -161.4 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, 110.8, -161.4 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 110.9, -171.2 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 110.9, -171.2 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 114.3, -158.7 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 114.3, -158.7 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 101.7, -171.8 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 101.7, -171.8 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 116.3, -159.3 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 116.3, -159.3 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 111.6, -177.1 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, 111.6, -177.1 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, 102.2, -167.8 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, 102.2, -167.8 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, 112, -161.7 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, 112, -161.7 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 105.8, -174.8 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, 105.8, -174.8 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, 112.4, -162.2 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, 112.4, -162.2 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, 102.9, -173.7 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, 102.9, -173.7 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 112.7, -162.8 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, 112.7, -162.8 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 114.5, -174.2 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 114.5, -174.2 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 113.1, -164.9 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, 113.1, -164.9 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 105.2, -174.8 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, 105.2, -174.8 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 115, -167.1 , 0 );
setMoveKey( spep_1 + 281 + OFFSET_X, 1, 115, -167.1 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 110.4, -165.7 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X, 1, 110.4, -165.7 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, 105.8, -177.2 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X, 1, 105.8, -177.2 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, 112.3, -163.1 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X, 1, 112.3, -163.1 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, 107.7, -177.7 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X, 1, 107.7, -177.7 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, 117.5, -166.8 , 0 );
setMoveKey( spep_1 + 291 + OFFSET_X, 1, 117.5, -166.8 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X, 1, 106.5, -168.7 , 0 );
setMoveKey( spep_1 + 293 + OFFSET_X, 1, 106.5, -168.7 , 0 );
setMoveKey( spep_1 + 294 + OFFSET_X, 1, 109.8, -167.4 , 0 );
setMoveKey( spep_1 + 295 + OFFSET_X, 1, 109.8, -167.4 , 0 );
setMoveKey( spep_1 + 296 + OFFSET_X, 1, 116.4, -178.8 , 0 );
setMoveKey( spep_1 + 297 + OFFSET_X, 1, 116.4, -178.8 , 0 );
setMoveKey( spep_1 + 298 + OFFSET_X, 1, 108.6, -169.5 , 0 );
setMoveKey( spep_1 + 299 + OFFSET_X, 1, 108.6, -169.5 , 0 );
setMoveKey( spep_1 + 300 + OFFSET_X, 1, 113.6, -166.6 , 0 );
setMoveKey( spep_1 + 301 + OFFSET_X, 1, 113.6, -166.6 , 0 );
setMoveKey( spep_1 + 302 + OFFSET_X, 1, 107.3, -178 , 0 );
setMoveKey( spep_1 + 303 + OFFSET_X, 1, 107.3, -178 , 0 );
setMoveKey( spep_1 + 304 + OFFSET_X, 1, 115.5, -170.3 , 0 );
setMoveKey( spep_1 + 305 + OFFSET_X, 1, 115.5, -170.3 , 0 );
setMoveKey( spep_1 + 306 + OFFSET_X, 1, 106.1, -185 , 0 );
setMoveKey( spep_1 + 307 + OFFSET_X, 1, 106.1, -185 , 0 );
setMoveKey( spep_1 + 308 + OFFSET_X, 1, 119.1, -164.5 , 0 );
setMoveKey( spep_1 + 309 + OFFSET_X, 1, 119.1, -164.5 , 0 );
setMoveKey( spep_1 + 310 + OFFSET_X, 1, 106.4, -167.9 , 0 );
setMoveKey( spep_1 + 311 + OFFSET_X, 1, 106.4, -167.9 , 0 );
setMoveKey( spep_1 + 312 + OFFSET_X, 1, 122.6, -181 , 0 );
setMoveKey( spep_1 + 313 + OFFSET_X, 1, 122.6, -181 , 0 );
setMoveKey( spep_1 + 314 + OFFSET_X, 1, 108.4, -165.3 , 0 );
setMoveKey( spep_1 + 315 + OFFSET_X, 1, 108.4, -165.3 , 0 );
setMoveKey( spep_1 + 316 + OFFSET_X, 1, 102.2, -178.3 , 0 );
setMoveKey( spep_1 + 317 + OFFSET_X, 1, 102.2, -178.3 , 0 );
setMoveKey( spep_1 + 318 + OFFSET_X, 1, 123.1, -167.4 , 0 );
setMoveKey( spep_1 + 319 + OFFSET_X, 1, 123.1, -167.4 , 0 );
setMoveKey( spep_1 + 320 + OFFSET_X, 1, 112.1, -164.5 , 0 );
setMoveKey( spep_1 + 321 + OFFSET_X, 1, 112.1, -164.5 , 0 );
setMoveKey( spep_1 + 322 + OFFSET_X, 1, 109.1, -184 , 0 );
setMoveKey( spep_1 + 323 + OFFSET_X, 1, 109.1, -184 , 0 );
setMoveKey( spep_1 + 324 + OFFSET_X, 1, 120.5, -161.8 , 0 );
setMoveKey( spep_1 + 326 + OFFSET_X, 1, 120.5, -161.8 , 0 );

setScaleKey( spep_1 + 248 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 251 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 259 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 260 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 267 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 268 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 277 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 278 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 285 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 286 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 293 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 294 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 303 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 304 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 311 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 312 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 319 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 320 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 326 + OFFSET_X, 1, 1.52, 1.52 );

setRotateKey( spep_1 + 248 + OFFSET_X, 1, -59.6 );
setRotateKey( spep_1 + 326 + OFFSET_X, 1, -59.6 );

-- ** 音 ** --
--気弾溜め２
SE016 = playSeVer2( spep_1 + 0, 1442, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE016, 211 );
SE017 = playSeVer2( spep_1 + 0, 1281, "",spep_1 + 212, 0, 30, -1);
setPitch( spep_1 + 0, SE017, 300 );
setTimeStretch( SE017, 0.85, 30, 4 );
SE018 = playSeVer2( spep_1 + 0, 1334, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 22, 1311, "", 0, 0, 0, -1);
setTimeStretch( SE019, 2, 30, 4 );

--気弾膨れあがる
SE020 = playSeVer2( spep_1 + 70, 1025, "", 0, 0, 0, -1);

--画面遷移
SE021 = playSeVer2( spep_1 + 114, 8, "", 0, 0, 0, -1);

--気弾発射
SE022 = playSeVer2( spep_1 + 182, 1193, "",spep_1 + 372, 0, 42, -1);
SE023 = playSeVer2( spep_1 + 182, 1027, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 182, 1145, "",spep_1 + 372, 0, 42, -1);

--気弾飛んでいく
SE025 = playSeVer2( spep_1 + 238, 1226, "",spep_1 + 372, 0, 42, -1);

--爆発
SE026 = playSeVer2( spep_1 + 328, 1159, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 348, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 386); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 490F-4

end
