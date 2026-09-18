--1031080:UR_孫悟空(少年期)_ユニット必殺技：ミラクルロマンアドベンチャー
--sp_effect_b1_00320
--sp2852

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163723; --開始セリフカットイン～カードカットインまで ef_001
SP_02  = 163724; --カードカットイン～フィニッシュまで ef_002
--SP_02b = 163725; --カードカットイン～フィニッシュまで ef_002b

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
-- 開始セリフカットイン～カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 136;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
--base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始セリフカットイン～カードカットインまで(ef_001)
--setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
--setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
--setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
--setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
--setEffRotateKey( spep_0 + 0, base_0, 0);
--setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
--setEffAlphaKey( spep_0 + 0, base_0, 255);
--setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[
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


-- ** 音 ** --
--筋斗雲飛ぶ
SE001 = playSeVer2( spep_0 + 0, 1186, "", 0, 0, 0, -1);

--バイク走行音
SE002 = playSeVer2( spep_0 + 0, 1492, "",spep_0 + 170, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 112 );

--悟空飛んでいく
SE004 = playSeVer2( spep_0 + 64, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE004, 79 );
SE005 = playSeVer2( spep_0 + 88, 1452, "",spep_0 + 164, 0, 20, -1);
SE006 = playSeVer2( spep_0 + 88, 63, "",spep_0 + 166, 0, 22, -1);
SE007 = playSeVer2( spep_0 + 88, 44, "",spep_0 + 166, 0, 18, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 136f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カードカットイン～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 766;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン～フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

--finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カードカットイン～フィニッシュまで(ef_002b)
--setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
--setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
--setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
--setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
--setEffRotateKey( spep_2 + 0, finish_b, 0);
--setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
--setEffAlphaKey( spep_2 + 0, finish_b, 255);
--setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 82 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 0, 1, 117 );

setMoveKey( spep_2 + 0, 1, 132.5, 45.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X , 1, 132.5, 45.4 , 0 );

setScaleKey( spep_2 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 82 + OFFSET_X , 1, 1.3, 1.3 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 82 + OFFSET_X , 1, 0 );


--敵の動き2
setDisp( spep_2 + 230 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 308 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 230 + OFFSET_X , 1, 100 );
changeAnime( spep_2 + 234 + OFFSET_X , 1, 105 );

setMoveKey( spep_2 + 230 + OFFSET_X , 1, 0, -84.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X , 1, 0, -84.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X , 1, 0, -3.1 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X , 1, 0, -3.1 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X , 1, -3.1, 1.7 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X , 1, -3.1, 1.7 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X , 1, -6.3, 6.6 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X , 1, -6.3, 6.6 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X , 1, -9.4, 11.4 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X , 1, -9.4, 11.4 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X , 1, 8.9, -4.6 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X , 1, 8.9, -4.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X , 1, -0.9, -13.9 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X , 1, -0.9, -13.9 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X , 1, 7.7, 3.7 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X , 1, 7.7, 3.7 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X , 1, 5.6, -5.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X , 1, 5.6, -5.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X , 1, -5.8, 4.3 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X , 1, -5.8, 4.3 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X , 1, -4.7, -4.6 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X , 1, -4.7, -4.6 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X , 1, 0.1, 0.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X , 1, 0.1, 0.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X , 1, 0.1, -0.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X , 1, 0.1, -0.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X , 1, 0.1, -0.3 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X , 1, 0.1, -0.3 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X , 1, 0.1, -0.5 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X , 1, 0.1, -0.5 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X , 1, -4.8, 2.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X , 1, -4.8, 2.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X , 1, -9.6, 5.4 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X , 1, -9.6, 5.4 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X , 1, -14.4, 8.3 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X , 1, -14.4, 8.3 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X , 1, -2.7, 0.3 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X , 1, -2.7, 0.3 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X , 1, 5.2, 5.9 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X , 1, 5.2, 5.9 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X , 1, -5.7, -8.8 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X , 1, -5.7, -8.8 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X , 1, 5.4, -2.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X , 1, 5.4, -2.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X , 1, -4.1, -1.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X , 1, -4.1, -1.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X , 1, 10.4, 6 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X , 1, 10.4, 6 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X , 1, 0.1, 0.1 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X , 1, 0.1, 0.1 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X , 1, 0, -1 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X , 1, 0, -1 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X , 1, 0, -2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X , 1, 0, -2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X , 1, 0, -3.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X , 1, 0, -3.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X , 1, -4.3, -13.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X , 1, -4.3, -13.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X , 1, -17.4, -46.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X , 1, -17.4, -46.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X , 1, -39.1, -100.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X , 1, -39.1, -100.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X , 1, -69.5, -176.2 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X , 1, -69.5, -176.2 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X , 1, -108.6, -273.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X , 1, -108.6, -273.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X , 1, -156.4, -392.7 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X , 1, -156.4, -392.7 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X , 1, -212.9, -533.3 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X , 1, -212.9, -533.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X , 1, -278, -695.6 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X , 1, -278, -695.6 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X , 1, -351.8, -879.6 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X , 1, -351.8, -879.6 , 0 );

setScaleKey( spep_2 + 230 + OFFSET_X , 1, 1.68, 1.68 );
setScaleKey( spep_2 + 233 + OFFSET_X , 1, 1.68, 1.68 );
setScaleKey( spep_2 + 234 + OFFSET_X , 1, 1.56, 1.56 );
setScaleKey( spep_2 + 235 + OFFSET_X , 1, 1.56, 1.56 );
setScaleKey( spep_2 + 236 + OFFSET_X , 1, 1.55, 1.55 );
setScaleKey( spep_2 + 237 + OFFSET_X , 1, 1.55, 1.55 );
setScaleKey( spep_2 + 238 + OFFSET_X , 1, 1.54, 1.54 );
setScaleKey( spep_2 + 239 + OFFSET_X , 1, 1.54, 1.54 );
setScaleKey( spep_2 + 240 + OFFSET_X , 1, 1.53, 1.53 );
setScaleKey( spep_2 + 241 + OFFSET_X , 1, 1.53, 1.53 );
setScaleKey( spep_2 + 242 + OFFSET_X , 1, 1.52, 1.52 );
setScaleKey( spep_2 + 245 + OFFSET_X , 1, 1.52, 1.52 );
setScaleKey( spep_2 + 246 + OFFSET_X , 1, 1.51, 1.51 );
setScaleKey( spep_2 + 247 + OFFSET_X , 1, 1.51, 1.51 );
setScaleKey( spep_2 + 248 + OFFSET_X , 1, 1.5, 1.5 );
setScaleKey( spep_2 + 251 + OFFSET_X , 1, 1.5, 1.5 );
setScaleKey( spep_2 + 252 + OFFSET_X , 1, 1.49, 1.49 );
setScaleKey( spep_2 + 253 + OFFSET_X , 1, 1.49, 1.49 );
setScaleKey( spep_2 + 254 + OFFSET_X , 1, 1.48, 1.48 );
setScaleKey( spep_2 + 255 + OFFSET_X , 1, 1.48, 1.48 );
setScaleKey( spep_2 + 256 + OFFSET_X , 1, 1.47, 1.47 );
setScaleKey( spep_2 + 259 + OFFSET_X , 1, 1.47, 1.47 );
setScaleKey( spep_2 + 260 + OFFSET_X , 1, 1.46, 1.46 );
setScaleKey( spep_2 + 261 + OFFSET_X , 1, 1.46, 1.46 );
setScaleKey( spep_2 + 262 + OFFSET_X , 1, 1.45, 1.45 );
setScaleKey( spep_2 + 263 + OFFSET_X , 1, 1.45, 1.45 );
setScaleKey( spep_2 + 264 + OFFSET_X , 1, 1.44, 1.44 );
setScaleKey( spep_2 + 265 + OFFSET_X , 1, 1.44, 1.44 );
setScaleKey( spep_2 + 266 + OFFSET_X , 1, 1.43, 1.43 );
setScaleKey( spep_2 + 267 + OFFSET_X , 1, 1.43, 1.43 );
setScaleKey( spep_2 + 268 + OFFSET_X , 1, 1.41, 1.41 );
setScaleKey( spep_2 + 269 + OFFSET_X , 1, 1.41, 1.41 );
setScaleKey( spep_2 + 270 + OFFSET_X , 1, 1.39, 1.39 );
setScaleKey( spep_2 + 271 + OFFSET_X , 1, 1.39, 1.39 );
setScaleKey( spep_2 + 272 + OFFSET_X , 1, 1.37, 1.37 );
setScaleKey( spep_2 + 273 + OFFSET_X , 1, 1.37, 1.37 );
setScaleKey( spep_2 + 274 + OFFSET_X , 1, 1.35, 1.35 );
setScaleKey( spep_2 + 275 + OFFSET_X , 1, 1.35, 1.35 );
setScaleKey( spep_2 + 276 + OFFSET_X , 1, 1.33, 1.33 );
setScaleKey( spep_2 + 277 + OFFSET_X , 1, 1.33, 1.33 );
setScaleKey( spep_2 + 278 + OFFSET_X , 1, 1.32, 1.32 );
setScaleKey( spep_2 + 279 + OFFSET_X , 1, 1.32, 1.32 );
setScaleKey( spep_2 + 280 + OFFSET_X , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 281 + OFFSET_X , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 282 + OFFSET_X , 1, 1.28, 1.28 );
setScaleKey( spep_2 + 283 + OFFSET_X , 1, 1.28, 1.28 );
setScaleKey( spep_2 + 284 + OFFSET_X , 1, 1.26, 1.26 );
setScaleKey( spep_2 + 285 + OFFSET_X , 1, 1.26, 1.26 );
setScaleKey( spep_2 + 286 + OFFSET_X , 1, 1.24, 1.24 );
setScaleKey( spep_2 + 289 + OFFSET_X , 1, 1.24, 1.24 );
setScaleKey( spep_2 + 290 + OFFSET_X , 1, 1.26, 1.26 );
setScaleKey( spep_2 + 291 + OFFSET_X , 1, 1.26, 1.26 );
setScaleKey( spep_2 + 292 + OFFSET_X , 1, 1.32, 1.32 );
setScaleKey( spep_2 + 293 + OFFSET_X , 1, 1.32, 1.32 );
setScaleKey( spep_2 + 294 + OFFSET_X , 1, 1.41, 1.41 );
setScaleKey( spep_2 + 295 + OFFSET_X , 1, 1.41, 1.41 );
setScaleKey( spep_2 + 296 + OFFSET_X , 1, 1.54, 1.54 );
setScaleKey( spep_2 + 297 + OFFSET_X , 1, 1.54, 1.54 );
setScaleKey( spep_2 + 298 + OFFSET_X , 1, 1.7, 1.7 );
setScaleKey( spep_2 + 299 + OFFSET_X , 1, 1.7, 1.7 );
setScaleKey( spep_2 + 300 + OFFSET_X , 1, 1.91, 1.91 );
setScaleKey( spep_2 + 301 + OFFSET_X , 1, 1.91, 1.91 );
setScaleKey( spep_2 + 302 + OFFSET_X , 1, 2.15, 2.15 );
setScaleKey( spep_2 + 303 + OFFSET_X , 1, 2.15, 2.15 );
setScaleKey( spep_2 + 304 + OFFSET_X , 1, 2.42, 2.42 );
setScaleKey( spep_2 + 305 + OFFSET_X , 1, 2.42, 2.42 );
setScaleKey( spep_2 + 306 + OFFSET_X , 1, 2.73, 2.73 );
setScaleKey( spep_2 + 308 + OFFSET_X , 1, 2.73, 2.73 );

setRotateKey( spep_2 + 230 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 233 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 234 + OFFSET_X , 1, -8 );
setRotateKey( spep_2 + 235 + OFFSET_X , 1, -8 );
setRotateKey( spep_2 + 236 + OFFSET_X , 1, -1 );
setRotateKey( spep_2 + 237 + OFFSET_X , 1, -1 );
setRotateKey( spep_2 + 238 + OFFSET_X , 1, 6 );
setRotateKey( spep_2 + 261 + OFFSET_X , 1, 6 );
setRotateKey( spep_2 + 262 + OFFSET_X , 1, -8.5 );
setRotateKey( spep_2 + 263 + OFFSET_X , 1, -8.5 );
setRotateKey( spep_2 + 264 + OFFSET_X , 1, -23 );
setRotateKey( spep_2 + 308 + OFFSET_X , 1, -23 );


--敵の動き3
setDisp( spep_2 + 636 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 660 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 636 + OFFSET_X , 1, 106 );
changeAnime( spep_2 + 646 + OFFSET_X , 1, 108 );

setMoveKey( spep_2 + 636 + OFFSET_X , 1, -808, -831.7 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X , 1, -808, -831.7 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X , 1, -545.5, -611.3 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X , 1, -545.5, -611.3 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X , 1, -320.7, -395.1 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X , 1, -320.7, -395.1 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X , 1, -269, -389.3 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X , 1, -269, -389.3 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X , 1, -214.5, -379.4 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X , 1, -214.5, -379.4 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X , 1, -179.1, -378.3 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X , 1, -179.1, -378.3 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X , 1, -200.2, -363.5 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X , 1, -200.2, -363.5 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X , 1, -199.5, -354.4 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X , 1, -199.5, -354.4 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X , 1, -195.7, -357.2 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X , 1, -195.7, -357.2 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X , 1, -222.4, -479.1 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X , 1, -222.4, -479.1 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X , 1, -197.3, -604.3 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X , 1, -197.3, -604.3 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X , 1, -193.9, -732.5 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X , 1, -193.9, -732.5 , 0 );

setScaleKey( spep_2 + 636 + OFFSET_X , 1, 8.46, 8.46 );
setScaleKey( spep_2 + 637 + OFFSET_X , 1, 8.46, 8.46 );
setScaleKey( spep_2 + 638 + OFFSET_X , 1, 6.08, 6.08 );
setScaleKey( spep_2 + 639 + OFFSET_X , 1, 6.08, 6.08 );
setScaleKey( spep_2 + 640 + OFFSET_X , 1, 4.02, 4.02 );
setScaleKey( spep_2 + 641 + OFFSET_X , 1, 4.02, 4.02 );
setScaleKey( spep_2 + 642 + OFFSET_X , 1, 3.59, 3.59 );
setScaleKey( spep_2 + 643 + OFFSET_X , 1, 3.59, 3.59 );
setScaleKey( spep_2 + 644 + OFFSET_X , 1, 3.16, 3.16 );
setScaleKey( spep_2 + 645 + OFFSET_X , 1, 3.16, 3.16 );
setScaleKey( spep_2 + 646 + OFFSET_X , 1, 3.73, 3.73 );
setScaleKey( spep_2 + 660 + OFFSET_X , 1, 3.73, 3.73 );

setRotateKey( spep_2 + 636 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 645 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 646 + OFFSET_X , 1, 75.2 );
setRotateKey( spep_2 + 660 + OFFSET_X , 1, 75.2 );


-- ** 音 ** --
--バイクブレーキ
SE010 = playSeVer2( spep_2 + 2, 1323, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 2, 1044, "",spep_2 + 52, 0, 16, -1);
SE008 = playSeVer2( spep_2 + 4, 1492, "",spep_2 + 58, 4, 14, -1);
setStartTimeMs( SE008,  2300 );
SE012 = playSeVer2( spep_2 + 20, 1261, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE012, 77 );

--銃構える
SE013 = playSeVer2( spep_2 + 84, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 90, 22, "",spep_2 + 110, 0, 8, -1);
SE015 = playSeVer2( spep_2 + 94, 1013, "", 0, 0, 0, -1);

--腕おろす
SE017 = playSeVer2( spep_2 + 132, 1003, "", 0, 0, 0, -1);

--銃撃つ
SE018 = playSeVer2( spep_2 + 150, 1028, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 150, 1150, "",spep_2 + 182, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 150, SE019, 75 );
SE020 = playSeVer2( spep_2 + 188, 1028, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 188, 1150, "",spep_2 + 220, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 188, SE021, 79 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 174; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
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
--敵ヒット
SE022 = playSeVer2( spep_2 + 220, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 220, SE022, 71 );
SE023 = playSeVer2( spep_2 + 222, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 222, SE023, 60 );
SE024 = playSeVer2( spep_2 + 246, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 246, SE024, 77 );
SE025 = playSeVer2( spep_2 + 252, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 252, SE025, 60 );

--悟空上昇する
SE016 = playSeVer2( spep_2 + 300, 1326, "",spep_2 + 500, 14, 42, -1);
setStartTimeMs( SE016,  3367 );
SE026 = playSeVer2( spep_2 + 302, 1239, "",spep_2 + 486, 0, 52, -1);
SE027 = playSeVer2( spep_2 + 302, 1116, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 304, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 304, SE028, 71 );
SE029 = playSeVer2( spep_2 + 366, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 366, SE029, 148 );

--如意棒回転しながらおりてくる
SE030 = playSeVer2( spep_2 + 446, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 446, SE030, 54 );
SE031 = playSeVer2( spep_2 + 452, 1117, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 458, 1151, "",spep_2 + 470, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 458, SE032, 38 );
SE033 = playSeVer2( spep_2 + 464, 1151, "",spep_2 + 476, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 464, SE033, 38 );
SE034 = playSeVer2( spep_2 + 472, 1151, "",spep_2 + 484, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 472, SE034, 44 );
SE035 = playSeVer2( spep_2 + 480, 1151, "",spep_2 + 492, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 480, SE035, 45 );
SE036 = playSeVer2( spep_2 + 486, 1151, "",spep_2 + 498, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 486, SE036, 48 );
SE037 = playSeVer2( spep_2 + 486, 1388, "",spep_2 + 656, 0, 40, -1);
SE038 = playSeVer2( spep_2 + 494, 1151, "",spep_2 + 506, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 494, SE038, 50 );
SE039 = playSeVer2( spep_2 + 500, 1151, "",spep_2 + 512, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 500, SE039, 55 );
SE040 = playSeVer2( spep_2 + 508, 1151, "",spep_2 + 520, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 508, SE040, 60 );
SE041 = playSeVer2( spep_2 + 516, 1151, "",spep_2 + 528, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 516, SE041, 60 );
SE042 = playSeVer2( spep_2 + 522, 1151, "",spep_2 + 534, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 522, SE042, 63 );
SE043 = playSeVer2( spep_2 + 530, 1151, "",spep_2 + 542, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 530, SE043, 65 );
SE044 = playSeVer2( spep_2 + 538, 1151, "",spep_2 + 550, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 538, SE044, 77 );
SE045 = playSeVer2( spep_2 + 544, 1151, "",spep_2 + 556, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 544, SE045, 79 );
SE046 = playSeVer2( spep_2 + 552, 1151, "",spep_2 + 564, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 552, SE046, 86 );
SE047 = playSeVer2( spep_2 + 558, 1118, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 558, SE047, 61 );
SE048 = playSeVer2( spep_2 + 558, 1151, "",spep_2 + 570, 0, 4, -1);
SE049 = playSeVer2( spep_2 + 566, 1151, "",spep_2 + 578, 0, 4, -1);
SE050 = playSeVer2( spep_2 + 574, 1151, "",spep_2 + 586, 0, 4, -1);
SE051 = playSeVer2( spep_2 + 580, 1151, "",spep_2 + 592, 0, 4, -1);
SE052 = playSeVer2( spep_2 + 588, 1151, "",spep_2 + 600, 0, 4, -1);
SE053 = playSeVer2( spep_2 + 596, 1151, "",spep_2 + 608, 0, 4, -1);
SE054 = playSeVer2( spep_2 + 602, 1151, "",spep_2 + 614, 0, 4, -1);
SE055 = playSeVer2( spep_2 + 610, 1151, "",spep_2 + 622, 0, 4, -1);
SE056 = playSeVer2( spep_2 + 616, 1151, "",spep_2 + 628, 0, 4, -1);
SE057 = playSeVer2( spep_2 + 624, 1151, "",spep_2 + 636, 0, 4, -1);

--叩きつける
SE058 = playSeVer2( spep_2 + 630, 1189, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 638, 1120, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 644, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 644, SE060, 87 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 646); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 766f -4f

else

end