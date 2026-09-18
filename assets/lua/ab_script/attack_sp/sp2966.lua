--1032550:LR_超サイヤ人4孫悟空(DAIMA)_必殺技：龍撃拳
--sp_effect_b1_00358
--sp2966

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164371;  -- カットイン前 ef_001
SP_02 = 164372;  -- カットイン後 ef_002


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

ENABLE_AUTO_TIME_STRETCH(0.76);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 410;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 450);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 450, SP_01, spep_2 + 450 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。

        --地面凹む
SE032 = playSeVer2( spep_2 + 453, 1188, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 453, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 453, SE033, 77 );

--亀裂入る
SE034 = playSeVer2( spep_2 + 453, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 453, SE034, 148 );
    else

        setupMovie(0 , SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- カットイン前
-------------------------------------------------
MAX_FRAME_0 = 410;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カットイン前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1, 1);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1, 1);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 310;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -35, 515.5 , 0 );
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

--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 8, 0, -1);
setStartTimeMs( SE001, 167 );

--地響き
SE002 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 210, 32, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 45 );
SE003 = playSeVer2( spep_0 + 0, 1044, "",spep_0 + 214, 24, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 40 );
setStartTimeMs( SE003, 33 );
SE004 = playSeVer2( spep_0 + 0, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 46 );
setBandpassFilter ( spep_0 + 0, SE004, 24, 295 );
SE009 = playSeVer2( spep_0 + 196, 1044, "",spep_0 + 422, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 196, SE009, 50 );
setBandpassFilter ( spep_0 + 196, SE009, 24, 295 );

--気が弾ける
SE005 = playSeVer2( spep_0 + 62, 1452, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE005, 84 );
SE006 = playSeVer2( spep_0 + 80, 1426, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE006, 79 );
SE007 = playSeVer2( spep_0 + 88, 1427, "", 0, 0, 0, -1);

--環境音
SE008 = playSeVer2( spep_0 + 180, 1263, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE008, 112 );
setTimeStretch( SE008, 1.42, 30, 4 );
SE010 = playSeVer2( spep_0 + 198, 1175, "",spep_0 + 428, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 198, SE010, 45 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --410F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--気ダメ
SE013 = playSeVer2( spep_1 + 92, 1035, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 92, 1503, "", 0, 0, 0, -1);

-------------------------------------------------
-- カットイン後
-------------------------------------------------
MAX_FRAME_2 = 650;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カットイン後(ef_00b)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1, 1);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1, 1);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_2 + 238 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 326 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 238 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 238 + OFFSET_X, 1, 166.4, 22.4 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 166.4, 22.4 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 66.4, -29.6 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 66.4, -29.6 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 26.3, -25.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 26.3, -25.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -37.6, -57.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -37.6, -57.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -57.6, -37.5 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -57.6, -37.5 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -17.6, -77.5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -17.6, -77.5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -57.6, -77.5 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -57.6, -77.5 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -17.6, -37.5 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -17.6, -37.5 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -57.6, -37.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -57.6, -37.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -17.6, -77.5 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -17.6, -77.5 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -57.6, -77.5 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -57.6, -77.5 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -17.6, -37.5 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -17.6, -37.5 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -37.6, -57.5 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -37.6, -57.5 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -17.6, -77.5 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -17.6, -77.5 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -156.8, 87 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -156.8, 87 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -160.3, 74 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -160.3, 74 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -163.8, 73 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -163.8, 73 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -161.3, 82 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -161.3, 82 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -164.8, 81 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -164.8, 81 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -182.3, 88 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -182.3, 88 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -173.8, 75 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -173.8, 75 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -183.3, 84.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -183.3, 84.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -192.8, 75.1 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -192.8, 75.1 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -196.3, 74.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -196.3, 74.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -195.9, 77.1 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -195.9, 77.1 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -191.4, 70.1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -191.4, 70.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -206.9, 79.1 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -206.9, 79.1 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -216.4, 70.1 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -216.4, 70.1 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -223.9, 83.1 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -223.9, 83.1 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -219.4, 76.2 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -219.4, 76.2 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -222.9, 75.2 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -222.9, 75.2 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -234.4, 70.2 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -234.4, 70.2 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -227.9, 73.2 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -227.9, 73.2 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -231.4, 72.2 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -231.4, 72.2 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -216.9, 83.2 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -216.9, 83.2 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -220.4, 62.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -220.4, 62.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -223.9, 61.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -223.9, 61.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -245.4, 64.3 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -245.4, 64.3 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -248.9, 63.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -248.9, 63.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -262.4, 70.3 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -262.4, 70.3 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -249.9, 69.3 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -249.9, 69.3 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -253.4, 68.3 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -253.4, 68.3 , 0 );

z = 1.1;
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 3 * z, 3 * z );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 3 * z, 3 * z );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 2.8 * z, 2.8 * z );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 2.8 * z, 2.8 * z );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.65 * z, 2.65 * z );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 2.65 * z, 2.65 * z );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 2.3 * z, 2.3 * z );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 2.3 * z, 2.3 * z );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 1.2 * z, 1.2 * z );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 1.2 * z, 1.2 * z );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 1.21 * z, 1.21 * z );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.21 * z, 1.21 * z );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 1.22 * z, 1.22 * z );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.22 * z, 1.22 * z );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.23 * z, 1.23 * z );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.23 * z, 1.23 * z );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.24 * z, 1.24 * z );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.24 * z, 1.24 * z );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.25 * z, 1.25 * z );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.25 * z, 1.25 * z );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.26 * z, 1.26 * z );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.26 * z, 1.26 * z );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.27 * z, 1.27 * z );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.27 * z, 1.27 * z );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.28 * z, 1.28 * z );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 1.28 * z, 1.28 * z );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 1.29 * z, 1.29 * z );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.29 * z, 1.29 * z );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 1.3 * z, 1.3 * z );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 1.3 * z, 1.3 * z );

setRotateKey( spep_2 + 238 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -10.3 );

--敵の動き2

setDisp( spep_2 + 342 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 364 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 342 + OFFSET_X, 1, 110.8, 176.4 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 110.8, 176.4 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 104.1, 179.7 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 104.1, 179.7 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 79, 168.5 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 79, 168.5 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 45.5, 153.9 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 45.5, 153.9 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -1.3, 127.9 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -1.3, 127.9 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -61.6, 86.4 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -61.6, 86.4 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -135.2, 51.4 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -135.2, 51.4 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -226.3, 0 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -226.3, 0 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -322.7, -49.8 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -322.7, -49.8 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -435, -113.1 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -435, -113.1 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -568.6, -180.9 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -568.6, -180.9 , 0 );

setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.9 * z, 0.9 * z );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.9 * z, 0.9 * z );

setRotateKey( spep_2 + 342 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, 16.3 );

--敵の動き3

setDisp( spep_2 + 372 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 412 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 372 + OFFSET_X, 1, 461.1, 870.4 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 461.1, 870.4 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 258.3, 672.2 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 258.3, 672.2 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 124.6, 398.7 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 124.6, 398.7 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -27.1, 174.9 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -27.1, 174.9 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -254, -103.1 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -254, -103.1 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -263, -82.1 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -263, -82.1 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -239, -121.1 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -239, -121.1 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -239, -91.1 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -239, -91.1 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -257.1, -112.1 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -257.1, -112.1 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -236.1, -85.1 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -236.1, -85.1 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -236.1, -100.1 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -236.1, -100.1 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -236.1, -82.1 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -236.1, -82.1 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -254.1, -82.1 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -254.1, -82.1 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -254.1, -70.1 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -254.1, -70.1 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -245.1, -85.1 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -245.1, -85.1 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -263.1, -85.1 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -263.1, -85.1 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -245.1, -73.1 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -245.1, -73.1 , 0 );

setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.75 * z, 0.75 * z );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 0.75 * z, 0.75 * z );

setRotateKey( spep_2 + 372 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, 16.3 );

-- ** 音 ** --

--気ダメ
SE015 = playSeVer2( spep_2 + 12, 1504, "", 0, 0, 0, -1);

--向かってくる
SE016 = playSeVer2( spep_2 + 76, 1278, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE016, 50 );
setStartTimeMs( SE016, 400 );
SE019 = playSeVer2( spep_2 + 100, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE019, 65 );
SE020 = playSeVer2( spep_2 + 106, 1179, "", 0, 0, 0, -1);

--飛び上がる
SE017 = playSeVer2( spep_2 + 70, 1117, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 70, 1182, "", 0, 0, 0, -1);

--加速する
SE021 = playSeVer2( spep_2 + 176, 1172, "",spep_2 + 254, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 176, SE021, 92 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 200; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
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

--加速する
SE022 = playSeVer2( spep_2 + 212, 1277, "", 0, 0, 0, -1);

--地響き
SE025 = playSeVer2( spep_2 + 238, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 238, SE025, 60 );

--パンチヒット
SE023 = playSeVer2( spep_2 + 230, 1187, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 230, 1120, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 246, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 246, SE026, 84 );

--ズーム
SE027 = playSeVer2( spep_2 + 290, 1072, "", 0, 0, 0, -1);

--敵と落ちていく
SE028 = playSeVer2( spep_2 + 320, 1304, "",spep_2 + 398, 0, 36, -1);
SE029 = playSeVer2( spep_2 + 328, 1422, "",spep_2 + 422, 0, 58, -1);
setSeVolumeByWorkId( spep_2 + 328, SE029, 82 );

--地面激突
SE030 = playSeVer2( spep_2 + 366, 1159, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 366, 1168, "", 0, 0, 0, -1);

--地面凹む
SE032 = playSeVer2( spep_2 + 414, 1188, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 424, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 424, SE033, 77 );

--亀裂入る
SE034 = playSeVer2( spep_2 + 436, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 436, SE034, 148 );
SE035 = playSeVer2( spep_2 + 464, 1305, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 468, 1041, "", 0, 0, 0, -1);
setPitch( spep_2 + 468, SE036, -1200 );
setTimeStretch( SE036, 0.2, 30, 4 );
SE037 = playSeVer2( spep_2 + 474, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 474, SE037, 73 );
SE038 = playSeVer2( spep_2 + 490, 1041, "", 0, 0, 0, -1);
setPitch( spep_2 + 496, SE038, -1200 );
setTimeStretch( SE038, 0.2, 30, 4 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 496); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 650F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

setupMovie(0 , SP_01, 0, 1);

spep_0 = 0;

-------------------------------------------------
-- カットイン前
-------------------------------------------------
MAX_FRAME_0 = 410;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カットイン前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1, 1);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1, 1);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 310;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -35, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 8, 0, -1);
setStartTimeMs( SE001, 167 );

--地響き
SE002 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 210, 32, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 45 );
SE003 = playSeVer2( spep_0 + 0, 1044, "",spep_0 + 214, 24, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 40 );
setStartTimeMs( SE003, 33 );
SE004 = playSeVer2( spep_0 + 0, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 46 );
setBandpassFilter ( spep_0 + 0, SE004, 24, 295 );
SE009 = playSeVer2( spep_0 + 196, 1044, "",spep_0 + 422, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 196, SE009, 50 );
setBandpassFilter ( spep_0 + 196, SE009, 24, 295 );

--気が弾ける
SE005 = playSeVer2( spep_0 + 62, 1452, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE005, 84 );
SE006 = playSeVer2( spep_0 + 80, 1426, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE006, 79 );
SE007 = playSeVer2( spep_0 + 88, 1427, "", 0, 0, 0, -1);

--環境音
SE008 = playSeVer2( spep_0 + 180, 1263, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE008, 112 );
setTimeStretch( SE008, 1.42, 30, 4 );
SE010 = playSeVer2( spep_0 + 198, 1175, "",spep_0 + 428, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 198, SE010, 45 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --410F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--気ダメ
SE013 = playSeVer2( spep_1 + 92, 1035, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 92, 1503, "", 0, 0, 0, -1);

-------------------------------------------------
-- カットイン後
-------------------------------------------------
MAX_FRAME_2 = 650;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カットイン後(ef_00b)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1, 1);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1, 1);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_2 + 238 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 326 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 238 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 238 + OFFSET_X, 1, -166.4, 22.4 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -166.4, 22.4 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -66.4, -29.6 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -66.4, -29.6 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -26.3, -25.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -26.3, -25.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 37.6, -57.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 37.6, -57.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 57.6, -37.5 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 57.6, -37.5 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 17.6, -77.5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 17.6, -77.5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 57.6, -77.5 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 57.6, -77.5 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 17.6, -37.5 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 17.6, -37.5 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 57.6, -37.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 57.6, -37.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 17.6, -77.5 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 17.6, -77.5 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 57.6, -77.5 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 57.6, -77.5 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 17.6, -37.5 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 17.6, -37.5 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 37.6, -57.5 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 37.6, -57.5 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 17.6, -77.5 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 17.6, -77.5 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 156.8, 87 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 156.8, 87 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 160.3, 74 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 160.3, 74 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 163.8, 73 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 163.8, 73 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 161.3, 82 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 161.3, 82 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 164.8, 81 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 164.8, 81 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 182.3, 88 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 182.3, 88 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 173.8, 75 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 173.8, 75 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 183.3, 84.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 183.3, 84.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 192.8, 75.1 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 192.8, 75.1 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 196.3, 74.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 196.3, 74.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 195.9, 77.1 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 195.9, 77.1 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 191.4, 70.1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 191.4, 70.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 206.9, 79.1 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 206.9, 79.1 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 216.4, 70.1 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 216.4, 70.1 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 223.9, 83.1 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 223.9, 83.1 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 219.4, 76.2 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 219.4, 76.2 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 222.9, 75.2 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 222.9, 75.2 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 234.4, 70.2 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 234.4, 70.2 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 227.9, 73.2 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 227.9, 73.2 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 231.4, 72.2 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 231.4, 72.2 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 216.9, 83.2 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 216.9, 83.2 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 220.4, 62.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 220.4, 62.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 223.9, 61.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 223.9, 61.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 245.4, 64.3 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 245.4, 64.3 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 248.9, 63.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 248.9, 63.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 262.4, 70.3 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 262.4, 70.3 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 249.9, 69.3 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 249.9, 69.3 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 253.4, 68.3 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 253.4, 68.3 , 0 );

z = 1.1;
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 3 * z, 3 * z );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 3 * z, 3 * z );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 2.8 * z, 2.8 * z );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 2.8 * z, 2.8 * z );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.65 * z, 2.65 * z );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 2.65 * z, 2.65 * z );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 2.3 * z, 2.3 * z );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 2.3 * z, 2.3 * z );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 1.2 * z, 1.2 * z );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 1.2 * z, 1.2 * z );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 1.21 * z, 1.21 * z );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.21 * z, 1.21 * z );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 1.22 * z, 1.22 * z );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.22 * z, 1.22 * z );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.23 * z, 1.23 * z );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.23 * z, 1.23 * z );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.24 * z, 1.24 * z );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.24 * z, 1.24 * z );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.25 * z, 1.25 * z );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.25 * z, 1.25 * z );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.26 * z, 1.26 * z );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.26 * z, 1.26 * z );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.27 * z, 1.27 * z );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.27 * z, 1.27 * z );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.28 * z, 1.28 * z );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 1.28 * z, 1.28 * z );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 1.29 * z, 1.29 * z );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.29 * z, 1.29 * z );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 1.3 * z, 1.3 * z );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 1.3 * z, 1.3 * z );

setRotateKey( spep_2 + 238 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 10.3 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 10.3 );

--敵の動き2

setDisp( spep_2 + 342 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 364 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 342 + OFFSET_X, 1, -110.8, 176.4 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -110.8, 176.4 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -104.1, 179.7 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -104.1, 179.7 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -79, 168.5 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -79, 168.5 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -45.5, 153.9 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -45.5, 153.9 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 1.3, 127.9 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 1.3, 127.9 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 61.6, 86.4 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 61.6, 86.4 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 135.2, 51.4 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 135.2, 51.4 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 226.3, 0 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 226.3, 0 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 322.7, -49.8 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 322.7, -49.8 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 435, -113.1 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 435, -113.1 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 568.6, -180.9 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 568.6, -180.9 , 0 );

setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.9 * z, 0.9 * z );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.9 * z, 0.9 * z );

setRotateKey( spep_2 + 342 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, -16.3 );

--敵の動き3

setDisp( spep_2 + 372 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 412 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 372 + OFFSET_X, 1, -461.1, 870.4 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -461.1, 870.4 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -258.3, 672.2 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -258.3, 672.2 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -124.6, 398.7 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -124.6, 398.7 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 27.1, 174.9 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 27.1, 174.9 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 254, -103.1 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 254, -103.1 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 263, -82.1 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 263, -82.1 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 239, -121.1 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 239, -121.1 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 239, -91.1 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 239, -91.1 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 257.1, -112.1 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 257.1, -112.1 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 236.1, -85.1 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 236.1, -85.1 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 236.1, -100.1 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 236.1, -100.1 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 236.1, -82.1 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 236.1, -82.1 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 254.1, -82.1 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 254.1, -82.1 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 254.1, -70.1 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 254.1, -70.1 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 245.1, -85.1 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 245.1, -85.1 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 263.1, -85.1 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 263.1, -85.1 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 245.1, -73.1 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 245.1, -73.1 , 0 );

setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.75 * z, 0.75 * z );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 0.75 * z, 0.75 * z );

setRotateKey( spep_2 + 372 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, -16.3 );

-- ** 音 ** --

--気ダメ
SE015 = playSeVer2( spep_2 + 12, 1504, "", 0, 0, 0, -1);

--向かってくる
SE016 = playSeVer2( spep_2 + 76, 1278, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE016, 50 );
setStartTimeMs( SE016, 400 );
SE019 = playSeVer2( spep_2 + 100, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE019, 65 );
SE020 = playSeVer2( spep_2 + 106, 1179, "", 0, 0, 0, -1);

--飛び上がる
SE017 = playSeVer2( spep_2 + 70, 1117, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 70, 1182, "", 0, 0, 0, -1);

--加速する
SE021 = playSeVer2( spep_2 + 176, 1172, "",spep_2 + 254, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 176, SE021, 92 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 200; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
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

--加速する
SE022 = playSeVer2( spep_2 + 212, 1277, "", 0, 0, 0, -1);

--地響き
SE025 = playSeVer2( spep_2 + 238, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 238, SE025, 60 );

--パンチヒット
SE023 = playSeVer2( spep_2 + 230, 1187, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 230, 1120, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 246, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 246, SE026, 84 );

--ズーム
SE027 = playSeVer2( spep_2 + 290, 1072, "", 0, 0, 0, -1);

--敵と落ちていく
SE028 = playSeVer2( spep_2 + 320, 1304, "",spep_2 + 398, 0, 36, -1);
SE029 = playSeVer2( spep_2 + 328, 1422, "",spep_2 + 422, 0, 58, -1);
setSeVolumeByWorkId( spep_2 + 328, SE029, 82 );

--地面激突
SE030 = playSeVer2( spep_2 + 366, 1159, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 366, 1168, "", 0, 0, 0, -1);

--地面凹む
SE032 = playSeVer2( spep_2 + 414, 1188, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 424, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 424, SE033, 77 );

--亀裂入る
SE034 = playSeVer2( spep_2 + 436, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 436, SE034, 148 );
SE035 = playSeVer2( spep_2 + 464, 1305, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 468, 1041, "", 0, 0, 0, -1);
setPitch( spep_2 + 468, SE036, -1200 );
setTimeStretch( SE036, 0.2, 30, 4 );
SE037 = playSeVer2( spep_2 + 474, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 474, SE037, 73 );
SE038 = playSeVer2( spep_2 + 490, 1041, "", 0, 0, 0, -1);
setPitch( spep_2 + 496, SE038, -1200 );
setTimeStretch( SE038, 0.2, 30, 4 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 496); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 650F


end