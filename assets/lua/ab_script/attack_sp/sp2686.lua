--1028580:SSR_ドドリア_必殺技：命令の遂行
--sp_effect_a1_00425
--sp2686
 
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
 
--エフェクト(共通)
SP_01 = 162769; --冒頭(ef_003)
SP_02 = 162770; --青兵士からドドリア殴りまで：手前(ef_004)
SP_03 = 162771; --青兵士からドドリア殴りまで：奥(ef_004b)
SP_04 = 162772; --ガッ(ef_005)

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
 
ENABLE_AUTO_TIME_STRETCH(0.86);
 
OFFSET_X = -1;

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then
 
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 0;
 

-------------------------------------------------
-- 冒頭
-------------------------------------------------
MAX_FRAME_0 = 140;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 冒頭(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;
 
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
 
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--飛び上がる
SE003 = playSeVer2( spep_0 + 86, 1207, "",spep_0 + 170, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 86, SE003, 82 );
SE004 = playSeVer2( spep_0 + 86, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE004, 71 );

--瞬間移動
SE005 = playSeVer2( spep_0 + 106, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE005, 122 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; --140         

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

--空中画面遷移
SE007 = playSeVer2( spep_c + 84, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_c + 84, SE007, 78 );
SE008 = playSeVer2( spep_c + 84, 44, "",spep_1 + 52, 0, 36, -1);

-------------------------------------------------
-- 青兵士からドドリア殴りまで
-------------------------------------------------
MAX_FRAME_1 = 422;
 
-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 青兵士からドドリア殴りまで：手前(ef_004)
setEffMoveKey( spep_1 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_0f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_0f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_0f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_0f, 0);
setEffAlphaKey( spep_1 + 0, finish_0f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_0f, 255);

finish_0b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0); -- 青兵士からドドリア殴りまで：奥(ef_004b)
setEffMoveKey( spep_1 + 0, finish_0b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_0b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_0b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_0b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_0b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_0b, 0);
setEffAlphaKey( spep_1 + 0, finish_0b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_1 + 82 + OFFSET_X, 1, 1)
setDisp( spep_1 + 108 + OFFSET_X, 1, 0)

changeAnime( spep_1 + 82 + OFFSET_X, 1, 4 );

setMoveKey( spep_1 + 82 + OFFSET_X, 1, -83.4, 132.1 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, -83.4, 132.1 , 0 );

setScaleKey( spep_1 + 82 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 0.12, 0.12 );

setRotateKey( spep_1 + 82 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 108 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_1 + 262 + OFFSET_X, 1, 1)
setDisp( spep_1 + 292 + OFFSET_X, 1, 0)

changeAnime( spep_1 + 262 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 262 + OFFSET_X, 1, -85.7, 81.1 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, -85.7, 81.1 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, 15.8, 159.2 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, 15.8, 159.2 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 56.3, 53.7 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, 56.3, 53.7 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, 61.2, 91.4 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, 61.2, 91.4 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, 46.3, 81.1 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, 46.3, 81.1 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 44.7, 119.9 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, 44.7, 119.9 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 67.4, 85.5 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 67.4, 85.5 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 59.1, 108 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, 59.1, 108 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 75.1, 85.6 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, 75.1, 85.6 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 66.8, 108 , 0 );
setMoveKey( spep_1 + 281 + OFFSET_X, 1, 66.8, 108 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 250.4, -119.2 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X, 1, 250.4, -119.2 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, 315.2, -220.1 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X, 1, 315.2, -220.1 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, 380.1, -321.1 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X, 1, 380.1, -321.1 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, 444.9, -422 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X, 1, 444.9, -422 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, 509.9, -523.2 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X, 1, 509.9, -523.2 , 0 );

setScaleKey( spep_1 + 262 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 281 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 282 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 283 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 284 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_1 + 285 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_1 + 286 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 287 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 288 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_1 + 289 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_1 + 290 + OFFSET_X, 1, 2.49, 2.5 );
setScaleKey( spep_1 + 292 + OFFSET_X, 1, 2.49, 2.5 );

setRotateKey( spep_1 + 262 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_1 + 281 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_1 + 282 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_1 + 285 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_1 + 286 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_1 + 292 + OFFSET_X, 1, 34.7 );

--敵の動き3
setDisp( spep_1 + 304 + OFFSET_X, 1, 1)
setDisp( spep_1 + 342 + OFFSET_X, 1, 0)

setMoveKey( spep_1 + 304 + OFFSET_X, 1, -226.3, 114 , 0 );
setMoveKey( spep_1 + 309 + OFFSET_X, 1, -226.3, 114 , 0 );
setMoveKey( spep_1 + 310 + OFFSET_X, 1, -226.2, 114 , 0 );
setMoveKey( spep_1 + 311 + OFFSET_X, 1, -226.2, 114 , 0 );
setMoveKey( spep_1 + 312 + OFFSET_X, 1, -226, 114 , 0 );
setMoveKey( spep_1 + 313 + OFFSET_X, 1, -226, 114 , 0 );
setMoveKey( spep_1 + 314 + OFFSET_X, 1, -225.5, 114 , 0 );
setMoveKey( spep_1 + 315 + OFFSET_X, 1, -225.5, 114 , 0 );
setMoveKey( spep_1 + 316 + OFFSET_X, 1, -224.6, 114 , 0 );
setMoveKey( spep_1 + 317 + OFFSET_X, 1, -224.6, 114 , 0 );
setMoveKey( spep_1 + 318 + OFFSET_X, 1, -223.2, 114 , 0 );
setMoveKey( spep_1 + 319 + OFFSET_X, 1, -223.2, 114 , 0 );
setMoveKey( spep_1 + 320 + OFFSET_X, 1, -221, 114 , 0 );
setMoveKey( spep_1 + 321 + OFFSET_X, 1, -221, 114 , 0 );
setMoveKey( spep_1 + 322 + OFFSET_X, 1, -217.8, 114 , 0 );
setMoveKey( spep_1 + 323 + OFFSET_X, 1, -217.8, 114 , 0 );
setMoveKey( spep_1 + 324 + OFFSET_X, 1, -213.4, 113.9 , 0 );
setMoveKey( spep_1 + 325 + OFFSET_X, 1, -213.4, 113.9 , 0 );
setMoveKey( spep_1 + 326 + OFFSET_X, 1, -207.4, 113.9 , 0 );
setMoveKey( spep_1 + 327 + OFFSET_X, 1, -207.4, 113.9 , 0 );
setMoveKey( spep_1 + 328 + OFFSET_X, 1, -199.6, 113.9 , 0 );
setMoveKey( spep_1 + 329 + OFFSET_X, 1, -199.6, 113.9 , 0 );
setMoveKey( spep_1 + 330 + OFFSET_X, 1, -189.5, 113.8 , 0 );
setMoveKey( spep_1 + 331 + OFFSET_X, 1, -189.5, 113.8 , 0 );
setMoveKey( spep_1 + 332 + OFFSET_X, 1, -176.7, 113.8 , 0 );
setMoveKey( spep_1 + 333 + OFFSET_X, 1, -176.7, 113.8 , 0 );
setMoveKey( spep_1 + 334 + OFFSET_X, 1, -161, 113.7 , 0 );
setMoveKey( spep_1 + 335 + OFFSET_X, 1, -161, 113.7 , 0 );
setMoveKey( spep_1 + 336 + OFFSET_X, 1, -141.8, 113.6 , 0 );
setMoveKey( spep_1 + 337 + OFFSET_X, 1, -141.8, 113.6 , 0 );
setMoveKey( spep_1 + 338 + OFFSET_X, 1, -118.6, 113.6 , 0 );
setMoveKey( spep_1 + 339 + OFFSET_X, 1, -118.6, 113.6 , 0 );
setMoveKey( spep_1 + 340 + OFFSET_X, 1, -90.9, 113.5 , 0 );
setMoveKey( spep_1 + 342 + OFFSET_X, 1, -90.9, 113.5 , 0 );

setScaleKey( spep_1 + 304 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 315 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 316 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 317 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 318 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 319 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 320 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 321 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 322 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 323 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 324 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 325 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 326 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 327 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 328 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 329 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 330 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 331 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 332 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 333 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 334 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_1 + 335 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_1 + 336 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 337 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 338 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 339 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 340 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 342 + OFFSET_X, 1, 0.85, 0.85 );

setRotateKey( spep_1 + 304 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_1 + 313 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_1 + 314 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_1 + 315 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_1 + 316 + OFFSET_X, 1, 32.4 );
setRotateKey( spep_1 + 317 + OFFSET_X, 1, 32.4 );
setRotateKey( spep_1 + 318 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_1 + 319 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_1 + 320 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_1 + 321 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_1 + 322 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_1 + 323 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_1 + 324 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_1 + 325 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_1 + 326 + OFFSET_X, 1, 30.8 );
setRotateKey( spep_1 + 327 + OFFSET_X, 1, 30.8 );
setRotateKey( spep_1 + 328 + OFFSET_X, 1, 30.1 );
setRotateKey( spep_1 + 329 + OFFSET_X, 1, 30.1 );
setRotateKey( spep_1 + 330 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_1 + 331 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_1 + 332 + OFFSET_X, 1, 28 );
setRotateKey( spep_1 + 333 + OFFSET_X, 1, 28 );
setRotateKey( spep_1 + 334 + OFFSET_X, 1, 26.5 );
setRotateKey( spep_1 + 335 + OFFSET_X, 1, 26.5 );
setRotateKey( spep_1 + 336 + OFFSET_X, 1, 24.7 );
setRotateKey( spep_1 + 337 + OFFSET_X, 1, 24.7 );
setRotateKey( spep_1 + 338 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_1 + 339 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_1 + 340 + OFFSET_X, 1, 20 );
setRotateKey( spep_1 + 342 + OFFSET_X, 1, 20 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_1 + 48; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
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
--気弾撃つ
SE008 = playSeVer2( spep_1 + 48, 1177, "",spep_1 + 128, 0, 18, -1);
SE009 = playSeVer2( spep_1 + 48, 1155, "", 0, 0, 0, -1);

--爆発
SE010 = playSeVer2( spep_1 + 94, 1024, "", 0, 0, 0, -1);

--向かってくる
SE011 = playSeVer2( spep_1 + 170, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 170, 9, "", 0, 0, 0, -1);

--振りかぶる
SE013 = playSeVer2( spep_1 + 192, 1116, "",spep_1 + 238, 0, 20, -1);
SE014 = playSeVer2( spep_1 + 192, 1004, "", 0, 0, 0, -1);

--敵ヒット
SE015 = playSeVer2( spep_1 + 242, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 242, 1153, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE017 = playSeVer2( spep_1 + 270, 1027, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 276, 1121, "",spep_1 + 422, 0, 82, -1);
setSeVolumeByWorkId( spep_1 + 276, SE018, 62 );

--瞬間移動
SE019 = playSeVer2( spep_1 + 308, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 308, SE019, 116 );

--振りかぶる
SE020 = playSeVer2( spep_1 + 340, 1116, "",spep_1 + 386, 0, 22, -1);
SE021 = playSeVer2( spep_1 + 340, 1072, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 344, 1003, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_1 + 374, 1004, "", 0, 0, 0, -1);

--殴り飛ばす
SE024 = playSeVer2( spep_1 + 402, 1187, "",spep_1 + 464, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 402, SE024, 72 );
SE025 = playSeVer2( spep_1 + 402, 1120, "",spep_1 + 466, 0, 16, -1);

-- ** 次の準備 ** --
spep_N = spep_1 + MAX_FRAME_1; --　422

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 8, finish_1f, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 0, 0 , 0 );
setEffScaleKey( spep_N + 8, finish_1f, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1f, 1.0, 1.0 );
setEffRotateKey( spep_N + 8, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 8, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

finish_1b = entryEffectLife( spep_N + 0, SP_04, spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_005)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );  
 

-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );
 
changeAnime( spep_N + 0, 1, 107 );
 
--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
--ここまで

-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム
 
else
 
------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;
 

-------------------------------------------------
-- 冒頭
-------------------------------------------------
MAX_FRAME_0 = 140;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 冒頭(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;
 
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
 
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--飛び上がる
SE003 = playSeVer2( spep_0 + 86, 1207, "",spep_0 + 170, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 86, SE003, 82 );
SE004 = playSeVer2( spep_0 + 86, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE004, 71 );

--瞬間移動
SE005 = playSeVer2( spep_0 + 106, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE005, 122 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; --140         

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

--空中画面遷移
SE007 = playSeVer2( spep_c + 84, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_c + 84, SE007, 78 );
SE008 = playSeVer2( spep_c + 84, 44, "",spep_1 + 52, 0, 36, -1);

-------------------------------------------------
-- 青兵士からドドリア殴りまで
-------------------------------------------------
MAX_FRAME_1 = 422;
 
-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 青兵士からドドリア殴りまで：手前(ef_004)
setEffMoveKey( spep_1 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_0f, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_0f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_0f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_0f, 0);
setEffAlphaKey( spep_1 + 0, finish_0f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_0f, 255);

finish_0b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0); -- 青兵士からドドリア殴りまで：奥(ef_004b)
setEffMoveKey( spep_1 + 0, finish_0b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_0b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_0b, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_0b, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_0b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_0b, 0);
setEffAlphaKey( spep_1 + 0, finish_0b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_1 + 82 + OFFSET_X, 1, 1)
setDisp( spep_1 + 108 + OFFSET_X, 1, 0)

changeAnime( spep_1 + 82 + OFFSET_X, 1, 104 );

setMoveKey( spep_1 + 82 + OFFSET_X, 1, 83.4, 132.1 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 83.4, 132.1 , 0 );

setScaleKey( spep_1 + 82 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 0.12, 0.12 );

setRotateKey( spep_1 + 82 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 108 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_1 + 262 + OFFSET_X, 1, 1)
setDisp( spep_1 + 292 + OFFSET_X, 1, 0)

changeAnime( spep_1 + 262 + OFFSET_X, 1, 7 );

setMoveKey( spep_1 + 262 + OFFSET_X, 1, 85.7, 81.1 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, 85.7, 81.1 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, -15.8, 159.2 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, -15.8, 159.2 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, -56.3, 53.7 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, -56.3, 53.7 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, -61.2, 91.4 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, -61.2, 91.4 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, -46.3, 81.1 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, -46.3, 81.1 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, -44.7, 119.9 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, -44.7, 119.9 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, -67.4, 85.5 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, -67.4, 85.5 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, -59.1, 108 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, -59.1, 108 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, -75.1, 85.6 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, -75.1, 85.6 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, -66.8, 108 , 0 );
setMoveKey( spep_1 + 281 + OFFSET_X, 1, -66.8, 108 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, -250.4, -119.2 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X, 1, -250.4, -119.2 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, -315.2, -220.1 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X, 1, -315.2, -220.1 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, -380.1, -321.1 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X, 1, -380.1, -321.1 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, -444.9, -422 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X, 1, -444.9, -422 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, -509.9, -523.2 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X, 1, -509.9, -523.2 , 0 );

setScaleKey( spep_1 + 262 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 281 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 282 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 283 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 284 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_1 + 285 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_1 + 286 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 287 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 288 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_1 + 289 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_1 + 290 + OFFSET_X, 1, 2.49, 2.5 );
setScaleKey( spep_1 + 292 + OFFSET_X, 1, 2.49, 2.5 );

setRotateKey( spep_1 + 262 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_1 + 281 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_1 + 282 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_1 + 285 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_1 + 286 + OFFSET_X, 1, -34.7 );
setRotateKey( spep_1 + 292 + OFFSET_X, 1, -34.7 );

--敵の動き3
setDisp( spep_1 + 304 + OFFSET_X, 1, 1)
setDisp( spep_1 + 342 + OFFSET_X, 1, 0)

setMoveKey( spep_1 + 304 + OFFSET_X, 1, 226.3, 114 , 0 );
setMoveKey( spep_1 + 309 + OFFSET_X, 1, 226.3, 114 , 0 );
setMoveKey( spep_1 + 310 + OFFSET_X, 1, 226.2, 114 , 0 );
setMoveKey( spep_1 + 311 + OFFSET_X, 1, 226.2, 114 , 0 );
setMoveKey( spep_1 + 312 + OFFSET_X, 1, 226, 114 , 0 );
setMoveKey( spep_1 + 313 + OFFSET_X, 1, 226, 114 , 0 );
setMoveKey( spep_1 + 314 + OFFSET_X, 1, 225.5, 114 , 0 );
setMoveKey( spep_1 + 315 + OFFSET_X, 1, 225.5, 114 , 0 );
setMoveKey( spep_1 + 316 + OFFSET_X, 1, 224.6, 114 , 0 );
setMoveKey( spep_1 + 317 + OFFSET_X, 1, 224.6, 114 , 0 );
setMoveKey( spep_1 + 318 + OFFSET_X, 1, 223.2, 114 , 0 );
setMoveKey( spep_1 + 319 + OFFSET_X, 1, 223.2, 114 , 0 );
setMoveKey( spep_1 + 320 + OFFSET_X, 1, 221, 114 , 0 );
setMoveKey( spep_1 + 321 + OFFSET_X, 1, 221, 114 , 0 );
setMoveKey( spep_1 + 322 + OFFSET_X, 1, 217.8, 114 , 0 );
setMoveKey( spep_1 + 323 + OFFSET_X, 1, 217.8, 114 , 0 );
setMoveKey( spep_1 + 324 + OFFSET_X, 1, 213.4, 113.9 , 0 );
setMoveKey( spep_1 + 325 + OFFSET_X, 1, 213.4, 113.9 , 0 );
setMoveKey( spep_1 + 326 + OFFSET_X, 1, 207.4, 113.9 , 0 );
setMoveKey( spep_1 + 327 + OFFSET_X, 1, 207.4, 113.9 , 0 );
setMoveKey( spep_1 + 328 + OFFSET_X, 1, 199.6, 113.9 , 0 );
setMoveKey( spep_1 + 329 + OFFSET_X, 1, 199.6, 113.9 , 0 );
setMoveKey( spep_1 + 330 + OFFSET_X, 1, 189.5, 113.8 , 0 );
setMoveKey( spep_1 + 331 + OFFSET_X, 1, 189.5, 113.8 , 0 );
setMoveKey( spep_1 + 332 + OFFSET_X, 1, 176.7, 113.8 , 0 );
setMoveKey( spep_1 + 333 + OFFSET_X, 1, 176.7, 113.8 , 0 );
setMoveKey( spep_1 + 334 + OFFSET_X, 1, 161, 113.7 , 0 );
setMoveKey( spep_1 + 335 + OFFSET_X, 1, 161, 113.7 , 0 );
setMoveKey( spep_1 + 336 + OFFSET_X, 1, 141.8, 113.6 , 0 );
setMoveKey( spep_1 + 337 + OFFSET_X, 1, 141.8, 113.6 , 0 );
setMoveKey( spep_1 + 338 + OFFSET_X, 1, 118.6, 113.6 , 0 );
setMoveKey( spep_1 + 339 + OFFSET_X, 1, 118.6, 113.6 , 0 );
setMoveKey( spep_1 + 340 + OFFSET_X, 1, 90.9, 113.5 , 0 );
setMoveKey( spep_1 + 342 + OFFSET_X, 1, 90.9, 113.5 , 0 );

setScaleKey( spep_1 + 304 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 315 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 316 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 317 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 318 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 319 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 320 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 321 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 322 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 323 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 324 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 325 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 326 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 327 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 328 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 329 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 330 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 331 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 332 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 333 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 334 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_1 + 335 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_1 + 336 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 337 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 338 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 339 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 340 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 342 + OFFSET_X, 1, 0.85, 0.85 );

setRotateKey( spep_1 + 304 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_1 + 313 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_1 + 314 + OFFSET_X, 1, -32.5 );
setRotateKey( spep_1 + 315 + OFFSET_X, 1, -32.5 );
setRotateKey( spep_1 + 316 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_1 + 317 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_1 + 318 + OFFSET_X, 1, -32.3 );
setRotateKey( spep_1 + 319 + OFFSET_X, 1, -32.3 );
setRotateKey( spep_1 + 320 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_1 + 321 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_1 + 322 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_1 + 323 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_1 + 324 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_1 + 325 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_1 + 326 + OFFSET_X, 1, -30.8 );
setRotateKey( spep_1 + 327 + OFFSET_X, 1, -30.8 );
setRotateKey( spep_1 + 328 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_1 + 329 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_1 + 330 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_1 + 331 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_1 + 332 + OFFSET_X, 1, -28 );
setRotateKey( spep_1 + 333 + OFFSET_X, 1, -28 );
setRotateKey( spep_1 + 334 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_1 + 335 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_1 + 336 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_1 + 337 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_1 + 338 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_1 + 339 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_1 + 340 + OFFSET_X, 1, -20 );
setRotateKey( spep_1 + 342 + OFFSET_X, 1, -20 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_1 + 48; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
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
--気弾撃つ
SE008 = playSeVer2( spep_1 + 48, 1177, "",spep_1 + 128, 0, 18, -1);
SE009 = playSeVer2( spep_1 + 48, 1155, "", 0, 0, 0, -1);

--爆発
SE010 = playSeVer2( spep_1 + 94, 1024, "", 0, 0, 0, -1);

--向かってくる
SE011 = playSeVer2( spep_1 + 170, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 170, 9, "", 0, 0, 0, -1);

--振りかぶる
SE013 = playSeVer2( spep_1 + 192, 1116, "",spep_1 + 238, 0, 20, -1);
SE014 = playSeVer2( spep_1 + 192, 1004, "", 0, 0, 0, -1);

--敵ヒット
SE015 = playSeVer2( spep_1 + 242, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 242, 1153, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE017 = playSeVer2( spep_1 + 270, 1027, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 276, 1121, "",spep_1 + 422, 0, 82, -1);
setSeVolumeByWorkId( spep_1 + 276, SE018, 62 );

--瞬間移動
SE019 = playSeVer2( spep_1 + 308, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 308, SE019, 116 );

--振りかぶる
SE020 = playSeVer2( spep_1 + 340, 1116, "",spep_1 + 386, 0, 22, -1);
SE021 = playSeVer2( spep_1 + 340, 1072, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 344, 1003, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_1 + 374, 1004, "", 0, 0, 0, -1);

--殴り飛ばす
SE024 = playSeVer2( spep_1 + 402, 1187, "",spep_1 + 464, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 402, SE024, 72 );
SE025 = playSeVer2( spep_1 + 402, 1120, "",spep_1 + 466, 0, 16, -1);

-- ** 次の準備 ** --
spep_N = spep_1 + MAX_FRAME_1; --　422

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 8, finish_1f, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 0, 0 , 0 );
setEffScaleKey( spep_N + 8, finish_1f, -1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1f, -1.0, 1.0 );
setEffRotateKey( spep_N + 8, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 8, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

finish_1b = entryEffectLife( spep_N + 0, SP_04, spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_005)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, -1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, -1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, -3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, -3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, 10.9 );
setEffRotateKey( spep_N + 15, ctga, 10.9 );
setEffRotateKey( spep_N + 16, ctga, 14.9 );
setEffRotateKey( spep_N + 17, ctga, 14.9 );
setEffRotateKey( spep_N + 18, ctga, 10.9 );
setEffRotateKey( spep_N + 19, ctga, 10.9 );
setEffRotateKey( spep_N + 20, ctga, 14.9 );
setEffRotateKey( spep_N + 21, ctga, 14.9 );
setEffRotateKey( spep_N + 22, ctga, 10.9 );
setEffRotateKey( spep_N + 23, ctga, 10.9 );
setEffRotateKey( spep_N + 24, ctga, 14.9 );
setEffRotateKey( spep_N + 25, ctga, 14.9 );
setEffRotateKey( spep_N + 26, ctga, 10.9 );
setEffRotateKey( spep_N + 27, ctga, 10.9 );
setEffRotateKey( spep_N + 28, ctga, 14.9 );
setEffRotateKey( spep_N + 112, ctga, 14.9 );
 
setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );  
 
-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );
 
changeAnime( spep_N + 0, 1, 7 );
 
--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, -21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, 8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, 12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, 16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, 20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, 24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, 28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, 32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, 37.2, -57.6 , 0 );

setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );

setRotateKey( spep_N + 0, 1, 354.8 );
setRotateKey( spep_N + 2, 1, 122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, 1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, -120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, -242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, -364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, -486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, -607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, -729.5 );
setRotateKey( spep_N + 112, 1, -729.5 );
--ここまで

-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム
 
end