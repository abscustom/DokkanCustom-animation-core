--4033770:LR_孫悟空_必殺技：かめはめ波
--sp_effect_a1_00534
--sp3020

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164467; --煽りの空～ジャンプ ef_001
SP_02  = 164468; --カットイン後～フィニッシュ ef_002

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

adjustAttackerLabel( 0, 205);

ENABLE_AUTO_TIME_STRETCH(0.72);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_1 = spep_0 + 88;
        spep_2 = spep_1 + 94;

        timing_skip = 374;
        
        skipFrame(0, spep_2 + timing_skip);  -- スキップ先フレーム指定
        setupMovie(spep_2 + timing_skip, SP_01, spep_2 + timing_skip + 2-1, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
        --気弾中
        SE022 = playSeVer2( spep_2 + 374 + 3, 1211, "",spep_2 + 514, 0, 34, -1);
        SE023 = playSeVer2( spep_2 + 374 + 3, 1161, "",spep_2 + 518, 0, 44, -1);
        --気弾曲げる
        SE024 = playSeVer2( spep_2 + 374 + 3, 1479, "", 0, 0, 0, -1);
        SE025 = playSeVer2( spep_2 + 374 + 3, 1402, "", 0, 0, 0, -1);
        SE026 = playSeVer2( spep_2 + 374 + 3, 1128, "",spep_2 + 500, 0, 56, 0.6);
        setPitch( spep_2 + 374 + 3, SE026, -300 );
        setTimeStretch( SE026, 0.8, 30, 4 );
    else

        setupMovie(0 , SP_01, 0, 1);
    end


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 煽りの空～ジャンプ
-------------------------------------------------
MAX_FRAME_0 = 88;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 煽りの空～ジャンプ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
-- ** 音 ** --

--踏み出す
SE001 = playSeVer2( spep_0 + 0, 1116, "",spep_0 + 36, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 76 );
--顔カットイン
--SE002 = playSeVer2( spep_0 + 14, 1018, "", 0, 0, 0, -1);
--踏み出す
SE003 = playSeVer2( spep_0 + 14, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 68 );
SE004 = playSeVer2( spep_0 + 24, 1111, "",spep_0 + 50, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 141 );
SE005 = playSeVer2( spep_0 + 28, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 28, SE005, 243 );
SE006 = playSeVer2( spep_0 + 30, 1007, "", 0, 0, 0, -1);
--飛び上がる
SE007 = playSeVer2( spep_0 + 60, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE007, 65 );
SE008 = playSeVer2( spep_0 + 64, 1452, "",spep_0 + 96, 0, 8, -1);
SE009 = playSeVer2( spep_0 + 64, 1017, "",spep_0 + 100, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 64, SE009, 74 );
--カードカットイン
--SE010 = playSeVer2( spep_1 + 2, 1035, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 88

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カットイン後～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 608;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カットイン後～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_2 + 266 + OFFSET_X, 1, 1);
setDisp( spep_2 + 336 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 266 + OFFSET_X, 1, 17 );
changeAnime( spep_2 + 304 + OFFSET_X, 1, 116 );

setMoveKey( spep_2 + 266 + OFFSET_X, 1, -199.9, -688.3 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -199.9, -688.3 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -193.6, -647.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -193.6, -647.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -187.2, -608.6 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -187.2, -608.6 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -179.6, -568.2 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -179.6, -568.2 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -171.7, -524.5 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -171.7, -524.5 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -163.2, -478.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -163.2, -478.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -155.6, -431.6 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -155.6, -431.6 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -148, -382.3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -148, -382.3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -136.7, -331.5 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -136.7, -331.5 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -127.3, -279 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -127.3, -279 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -116.3, -226.3 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -116.3, -226.3 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -107.5, -167.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -107.5, -167.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -95.8, -111.1 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -95.8, -111.1 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -61.7, -84.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -61.7, -84.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -61.6, -84.5 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -61.6, -84.5 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -61.4, -84.4 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -61.4, -84.4 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -60.9, -84.2 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -60.9, -84.2 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -59.9, -83.9 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -59.9, -83.9 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -58.2, -83.3 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -58.2, -83.3 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -55.4, -82.3 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -55.4, -82.3 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -51.1, -80.8 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -51.1, -80.8 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -44.6, -78.6 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -44.6, -78.6 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -35.3, -75.4 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -35.3, -75.4 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -22.3, -70.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -22.3, -70.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -4.7, -64.7 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -4.7, -64.7 , 0 );

setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 6.01, 6.01 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 6.01, 6.01 );

setRotateKey( spep_2 + 266 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 266 + OFFSET_X, 1, 3, 0, 0.6, 1.0, 0.31);
setBlendColor( spep_2 + 304 + OFFSET_X, 1, 3, 0.4, 1.0, 1.0, 0.44);
setBlendColor( spep_2 + 306 + OFFSET_X, 1, 3, 0, 0.6, 1.0, 0.31);
setBlendColor( spep_2 + 308 + OFFSET_X, 1, 3, 0.4, 1.0, 1.0, 0.44);
setBlendColor( spep_2 + 310 + OFFSET_X, 1, 3, 0, 0.6, 1.0, 0.31);
setBlendColor( spep_2 + 312 + OFFSET_X, 1, 3, 0.4, 1.0, 1.0, 0.44);
setBlendColor( spep_2 + 314 + OFFSET_X, 1, 3, 0, 0.6, 1.0, 0.31);
setBlendColor( spep_2 + 318 + OFFSET_X, 1, 3, 0.4, 1.0, 1.0, 0.44);
setBlendColor( spep_2 + 320 + OFFSET_X, 1, 3, 0, 0.6, 1.0, 0.31);
setBlendColor( spep_2 + 322 + OFFSET_X, 1, 3, 0.4, 1.0, 1.0, 0.44);
setBlendColor( spep_2 + 324 + OFFSET_X, 1, 3, 0, 0.6, 1.0, 0.31);
setBlendColor( spep_2 + 328 + OFFSET_X, 1, 3, 0.4, 1.0, 1.0, 0.44);
setBlendColor( spep_2 + 330 + OFFSET_X, 1, 3, 0, 0.6, 1.0, 0.31);
setBlendColor( spep_2 + 332 + OFFSET_X, 1, 3, 0.4, 1.0, 1.0, 0.44);
setBlendColor( spep_2 + 336 + OFFSET_X, 1, 0, 0, 0, 0, 0);

--敵の動き2
setDisp( spep_2 + 436 + OFFSET_X, 1, 1);
setDisp( spep_2 + 476 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 436 + OFFSET_X, 1, 3 );

setMoveKey( spep_2 + 436 + OFFSET_X, 1, 99.5, -7.2 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 99.5, -7.2 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 104.1, -7.2 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 104.1, -7.2 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 108.5, -7.2 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 108.5, -7.2 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 112.7, -7.2 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 112.7, -7.2 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 116.5, -7.2 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 116.5, -7.2 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 120.2, -7.2 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 120.2, -7.2 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 123.6, -7.2 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 123.6, -7.2 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 126.7, -7.2 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 126.7, -7.2 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 129.6, -7.2 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 129.6, -7.2 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 132.2, -7.2 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 132.2, -7.2 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 134.6, -7.2 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 134.6, -7.2 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 136.7, -7.2 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 136.7, -7.2 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 138.6, -7.2 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 138.6, -7.2 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 140.2, -7.2 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 140.2, -7.2 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 141.6, -7.2 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 141.6, -7.2 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 142.7, -7.2 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 142.7, -7.2 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 143.6, -7.2 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 143.6, -7.2 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 144.2, -7.2 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 144.2, -7.2 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 144.6, -7.2 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 144.6, -7.2 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 144.7, -7.2 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 144.7, -7.2 , 0 );

setScaleKey( spep_2 + 436 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 0.41, 0.41 );

setRotateKey( spep_2 + 436 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 476 + OFFSET_X, 1, -21 );

setBlendColor( spep_2 + 436 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.015);
setBlendColor( spep_2 + 438 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.03);
setBlendColor( spep_2 + 440 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.045);
setBlendColor( spep_2 + 442 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.06);
setBlendColor( spep_2 + 444 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.075);
setBlendColor( spep_2 + 446 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.09);
setBlendColor( spep_2 + 448 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.105);
setBlendColor( spep_2 + 450 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.12);
setBlendColor( spep_2 + 452 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.135);
setBlendColor( spep_2 + 454 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.15);
setBlendColor( spep_2 + 456 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.165);
setBlendColor( spep_2 + 458 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.18);
setBlendColor( spep_2 + 460 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.195);
setBlendColor( spep_2 + 462 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.21);
setBlendColor( spep_2 + 464 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.225);
setBlendColor( spep_2 + 466 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.24);
setBlendColor( spep_2 + 468 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.255);
setBlendColor( spep_2 + 470 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.27);
setBlendColor( spep_2 + 472 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.285);
setBlendColor( spep_2 + 474 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.3);
setBlendColor( spep_2 + 476 + OFFSET_X, 1, 3, 0, 0, 0, 0);

--敵の動き3
setDisp( spep_2 + 482 + OFFSET_X, 1, 1);
setDisp( spep_2 + 484 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 482 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 482 + OFFSET_X, 1, 148.6, -217.8 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 148.6, -217.8 , 0 );

setScaleKey( spep_2 + 482 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 484 + OFFSET_X, 1, 1.98, 1.98 );

setRotateKey( spep_2 + 482 + OFFSET_X, 1, 80 );
setRotateKey( spep_2 + 484 + OFFSET_X, 1, 80 );

setBlendColor( spep_2 + 482 + OFFSET_X, 1, 3, 0, 0, 0, 1);
setBlendColor( spep_2 + 484 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--ジャンプ中
SE011 = playSeVer2( spep_2 + 2, 1207, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 2, 1117, "", 0, 0, 0, -1);
--気弾溜め
SE013 = playSeVer2( spep_2 + 78, 1200, "",spep_2 + 184, 12, 26, -1);
setSeVolumeByWorkId( spep_2 + 78, SE013, 243 );
setStartTimeMs( SE013,  467 );
SE014 = playSeVer2( spep_2 + 68, 1328, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 78, 1295, "",spep_2 + 178, 0, 22, -1);
SE016 = playSeVer2( spep_2 + 78, 1391, "",spep_2 + 214, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 78, SE016, 191 );
setTimeStretch( SE016, 0.77, 30, 4 );
--気弾発射
SE017 = playSeVer2( spep_2 + 150, 1146, "", 0, 0, 0, -1);
setPitch( spep_2 + 150, SE017, -300 );
setTimeStretch( SE017, 0.8, 30, 4 );
SE018 = playSeVer2( spep_2 + 150, 1312, "", 0, 0, 0, -1);
--気弾飛んでいく
SE019 = playSeVer2( spep_2 + 206, 1185, "", 0, 10, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 206, SE019, 160 );
setStartTimeMs( SE019,  1100 );
setPitch( spep_2 + 206, SE019, -1000 );
setTimeStretch( SE019, 0.33, 30, 4 );
SE020 = playSeVer2( spep_2 + 204, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 204, SE020, 63 );
SE021 = playSeVer2( spep_2 + 204, 1022, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 272; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0);

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
--stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--気弾中
SE022 = playSeVer2( spep_2 + 292, 1211, "",spep_2 + 514, 0, 34, -1);
SE023 = playSeVer2( spep_2 + 292, 1161, "",spep_2 + 518, 0, 44, -1);
--気弾曲げる
SE024 = playSeVer2( spep_2 + 338, 1479, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 338, 1402, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 358, 1128, "",spep_2 + 500, 0, 56, -1);
setPitch( spep_2 + 358, SE026, -300 );
setTimeStretch( SE026, 0.8, 30, 4 );
SE027 = playSeVer2( spep_2 + 376, 1014, "", 0, 0, 0, -1);
--気弾飛んでいく2
SE028 = playSeVer2( spep_2 + 440, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 440, SE028, 191 );
setPitch( spep_2 + 440, SE028, 400 );
setTimeStretch( SE028, 1.27, 30, 4 );
--爆発
SE029 = playSeVer2( spep_2 + 484, 1159, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 484, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 488); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 - 2); -- 608

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------
spep_0 = 0;
setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 煽りの空～ジャンプ
-------------------------------------------------
MAX_FRAME_0 = 88;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 煽りの空～ジャンプ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

---- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

----顔カットイン
-- SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
-- ** 音 ** --
--踏み出す
SE001 = playSeVer2( spep_0 + 0, 1116, "",spep_0 + 36, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 76 );
--顔カットイン
--SE002 = playSeVer2( spep_0 + 14, 1018, "", 0, 0, 0, -1);
--踏み出す
SE003 = playSeVer2( spep_0 + 14, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 68 );
SE004 = playSeVer2( spep_0 + 24, 1111, "",spep_0 + 50, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 141 );
SE005 = playSeVer2( spep_0 + 28, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 28, SE005, 243 );
SE006 = playSeVer2( spep_0 + 30, 1007, "", 0, 0, 0, -1);
--飛び上がる
SE007 = playSeVer2( spep_0 + 60, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE007, 65 );
SE008 = playSeVer2( spep_0 + 64, 1452, "",spep_0 + 96, 0, 8, -1);
SE009 = playSeVer2( spep_0 + 64, 1017, "",spep_0 + 100, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 64, SE009, 74 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 88

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カットイン後～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 608;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カットイン後～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_2 + 266 + OFFSET_X, 1, 1);
setDisp( spep_2 + 336 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 266 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 304 + OFFSET_X, 1, 16 );

setMoveKey( spep_2 + 266 + OFFSET_X, 1, 199.9, -688.3 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 199.9, -688.3 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 193.6, -647.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 193.6, -647.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 187.2, -608.6 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 187.2, -608.6 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 179.6, -568.2 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 179.6, -568.2 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 171.7, -524.5 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 171.7, -524.5 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 163.2, -478.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 163.2, -478.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 155.6, -431.6 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 155.6, -431.6 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 148, -382.3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 148, -382.3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 136.7, -331.5 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 136.7, -331.5 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 127.3, -279 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 127.3, -279 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 116.3, -226.3 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 116.3, -226.3 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 107.5, -167.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 107.5, -167.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 95.8, -111.1 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 95.8, -111.1 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 61.7, -84.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 61.7, -84.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 61.6, -84.5 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 61.6, -84.5 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 61.4, -84.4 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 61.4, -84.4 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 60.9, -84.2 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 60.9, -84.2 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 59.9, -83.9 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 59.9, -83.9 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 58.2, -83.3 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 58.2, -83.3 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 55.4, -82.3 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 55.4, -82.3 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 51.1, -80.8 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 51.1, -80.8 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 44.6, -78.6 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 44.6, -78.6 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 35.3, -75.4 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 35.3, -75.4 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 22.3, -70.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 22.3, -70.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 4.7, -64.7 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 4.7, -64.7 , 0 );

setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 6.01, 6.01 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 6.01, 6.01 );

setRotateKey( spep_2 + 266 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 266 + OFFSET_X, 1, 3, 0, 0.6, 1.0, 0.31);
setBlendColor( spep_2 + 304 + OFFSET_X, 1, 3, 0.4, 1.0, 1.0, 0.44);
setBlendColor( spep_2 + 306 + OFFSET_X, 1, 3, 0, 0.6, 1.0, 0.31);
setBlendColor( spep_2 + 308 + OFFSET_X, 1, 3, 0.4, 1.0, 1.0, 0.44);
setBlendColor( spep_2 + 310 + OFFSET_X, 1, 3, 0, 0.6, 1.0, 0.31);
setBlendColor( spep_2 + 312 + OFFSET_X, 1, 3, 0.4, 1.0, 1.0, 0.44);
setBlendColor( spep_2 + 314 + OFFSET_X, 1, 3, 0, 0.6, 1.0, 0.31);
setBlendColor( spep_2 + 318 + OFFSET_X, 1, 3, 0.4, 1.0, 1.0, 0.44);
setBlendColor( spep_2 + 320 + OFFSET_X, 1, 3, 0, 0.6, 1.0, 0.31);
setBlendColor( spep_2 + 322 + OFFSET_X, 1, 3, 0.4, 1.0, 1.0, 0.44);
setBlendColor( spep_2 + 324 + OFFSET_X, 1, 3, 0, 0.6, 1.0, 0.31);
setBlendColor( spep_2 + 328 + OFFSET_X, 1, 3, 0.4, 1.0, 1.0, 0.44);
setBlendColor( spep_2 + 330 + OFFSET_X, 1, 3, 0, 0.6, 1.0, 0.31);
setBlendColor( spep_2 + 332 + OFFSET_X, 1, 3, 0.4, 1.0, 1.0, 0.44);
setBlendColor( spep_2 + 336 + OFFSET_X, 1, 0, 0, 0, 0, 0);

--敵の動き2
setDisp( spep_2 + 436 + OFFSET_X, 1, 1);
setDisp( spep_2 + 476 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 436 + OFFSET_X, 1, 103 );

setMoveKey( spep_2 + 436 + OFFSET_X, 1, -99.5, -7.2 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -99.5, -7.2 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -104.1, -7.2 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -104.1, -7.2 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -108.5, -7.2 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -108.5, -7.2 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -112.7, -7.2 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -112.7, -7.2 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -116.5, -7.2 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -116.5, -7.2 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -120.2, -7.2 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -120.2, -7.2 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -123.6, -7.2 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -123.6, -7.2 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -126.7, -7.2 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -126.7, -7.2 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -129.6, -7.2 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -129.6, -7.2 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -132.2, -7.2 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -132.2, -7.2 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -134.6, -7.2 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -134.6, -7.2 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -136.7, -7.2 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -136.7, -7.2 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -138.6, -7.2 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -138.6, -7.2 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -140.2, -7.2 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -140.2, -7.2 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -141.6, -7.2 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -141.6, -7.2 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -142.7, -7.2 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -142.7, -7.2 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -143.6, -7.2 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -143.6, -7.2 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -144.2, -7.2 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -144.2, -7.2 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -144.6, -7.2 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -144.6, -7.2 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -144.7, -7.2 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -144.7, -7.2 , 0 );

setScaleKey( spep_2 + 436 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 0.41, 0.41 );

setRotateKey( spep_2 + 436 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 476 + OFFSET_X, 1, 21 );

setBlendColor( spep_2 + 436 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.015);
setBlendColor( spep_2 + 438 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.03);
setBlendColor( spep_2 + 440 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.045);
setBlendColor( spep_2 + 442 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.06);
setBlendColor( spep_2 + 444 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.075);
setBlendColor( spep_2 + 446 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.09);
setBlendColor( spep_2 + 448 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.105);
setBlendColor( spep_2 + 450 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.12);
setBlendColor( spep_2 + 452 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.135);
setBlendColor( spep_2 + 454 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.15);
setBlendColor( spep_2 + 456 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.165);
setBlendColor( spep_2 + 458 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.18);
setBlendColor( spep_2 + 460 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.195);
setBlendColor( spep_2 + 462 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.21);
setBlendColor( spep_2 + 464 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.225);
setBlendColor( spep_2 + 466 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.24);
setBlendColor( spep_2 + 468 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.255);
setBlendColor( spep_2 + 470 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.27);
setBlendColor( spep_2 + 472 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.285);
setBlendColor( spep_2 + 474 + OFFSET_X, 1, 3, 0, 0.6, 0.8, 0.3);
setBlendColor( spep_2 + 476 + OFFSET_X, 1, 3, 0, 0, 0, 0);

--敵の動き3
setDisp( spep_2 + 482 + OFFSET_X, 1, 1);
setDisp( spep_2 + 484 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 482 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 482 + OFFSET_X, 1, -148.6, -217.8 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -148.6, -217.8 , 0 );

setScaleKey( spep_2 + 482 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 484 + OFFSET_X, 1, 1.98, 1.98 );

setRotateKey( spep_2 + 482 + OFFSET_X, 1, -80 );
setRotateKey( spep_2 + 484 + OFFSET_X, 1, -80 );

setBlendColor( spep_2 + 482 + OFFSET_X, 1, 3, 0, 0, 0, 1);
setBlendColor( spep_2 + 484 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--ジャンプ中
SE011 = playSeVer2( spep_2 + 2, 1207, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 2, 1117, "", 0, 0, 0, -1);
--気弾溜め
SE013 = playSeVer2( spep_2 + 78, 1200, "",spep_2 + 184, 12, 26, -1);
setSeVolumeByWorkId( spep_2 + 78, SE013, 243 );
setStartTimeMs( SE013,  467 );
SE014 = playSeVer2( spep_2 + 68, 1328, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 78, 1295, "",spep_2 + 178, 0, 22, -1);
SE016 = playSeVer2( spep_2 + 78, 1391, "",spep_2 + 214, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 78, SE016, 191 );
setTimeStretch( SE016, 0.77, 30, 4 );
--気弾発射
SE017 = playSeVer2( spep_2 + 150, 1146, "", 0, 0, 0, -1);
setPitch( spep_2 + 150, SE017, -300 );
setTimeStretch( SE017, 0.8, 30, 4 );
SE018 = playSeVer2( spep_2 + 150, 1312, "", 0, 0, 0, -1);
--気弾飛んでいく
SE019 = playSeVer2( spep_2 + 206, 1185, "", 0, 10, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 206, SE019, 160 );
setStartTimeMs( SE019,  1100 );
setPitch( spep_2 + 206, SE019, -1000 );
setTimeStretch( SE019, 0.33, 30, 4 );
SE020 = playSeVer2( spep_2 + 204, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 204, SE020, 63 );
SE021 = playSeVer2( spep_2 + 204, 1022, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 272; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0);

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
--stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--気弾中
SE022 = playSeVer2( spep_2 + 292, 1211, "",spep_2 + 514, 0, 34, -1);
SE023 = playSeVer2( spep_2 + 292, 1161, "",spep_2 + 518, 0, 44, -1);
--気弾曲げる
SE024 = playSeVer2( spep_2 + 338, 1479, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 338, 1402, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 358, 1128, "",spep_2 + 500, 0, 56, -1);
setPitch( spep_2 + 358, SE026, -300 );
setTimeStretch( SE026, 0.8, 30, 4 );
SE027 = playSeVer2( spep_2 + 376, 1014, "", 0, 0, 0, -1);
--気弾飛んでいく2
SE028 = playSeVer2( spep_2 + 440, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 440, SE028, 191 );
setPitch( spep_2 + 440, SE028, 400 );
setTimeStretch( SE028, 1.27, 30, 4 );
--爆発
SE029 = playSeVer2( spep_2 + 484, 1159, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 484, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 488); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 - 2); -- 608


end