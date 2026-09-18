--1031920:LR_ブロリー(怒り)_超必殺技：アンガーシャウト
--sp_effect_a3_00121
--sp2907

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164088;  -- 開始〜ブロリー浮上 ef_001
--SP_01b = 164089;  -- 開始〜ブロリー浮上 ef_001b
SP_02 = 164090;  -- ビーム発射〜フィニッシュ ef_002
--SP_02b = 164091;  -- ビーム発射〜フィニッシュ ef_002b


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

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- 開始〜ブロリー浮上
-------------------------------------------------
MAX_FRAME_0 = 484;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始〜ブロリー浮上(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);
--[[
start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開始〜ブロリー浮上(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
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

setDisp( spep_0 + 228 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 274 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 228 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 238 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 228 + OFFSET_X, 1, 54.6, -77 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 54.6, -77 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 64.6, -77 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 64.6, -77 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 62.6, -76.5 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 62.6, -76.5 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 67.2, -72.5 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 67.2, -72.5 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 80.8, -77.5 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 80.8, -77.5 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 111.8, -79.6 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 111.8, -79.6 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 117.8, -86.6 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 117.8, -86.6 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 145.4, -85.7 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 145.4, -85.7 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 144.4, -83.7 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 144.4, -83.7 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 156.6, -72.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 156.6, -72.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 163.7, -68.8 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 163.7, -68.8 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 167.7, -62.8 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 167.7, -62.8 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 175.5, -65.8 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 175.5, -65.8 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 169.5, -69.8 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 169.5, -69.8 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 174.8, -69.8 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 174.8, -69.8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 181.3, -80.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 181.3, -80.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 175.3, -81.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 175.3, -81.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 180, -81.8 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 180, -81.8 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 178.2, -84.8 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 178.2, -84.8 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 175.5, -80.7 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 175.5, -80.7 , 0 );

setScaleKey( spep_0 + 228 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.8, 1.8 );

setRotateKey( spep_0 + 228 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 0 );

setGaussBlurKey( spep_0 + 228 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_0 + 235 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_0 + 236 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_0 + 274 + OFFSET_X, 1, 0 );

--敵の動き2

setDisp( spep_0 + 454 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 486 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 454 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 454 + OFFSET_X, 1, 245.4, 119.5 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 245.4, 119.5 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 244.4, 117.5 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 244.4, 117.5 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 243.4, 114 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 243.4, 114 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 242.9, 112.5 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 242.9, 112.5 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 241.4, 110.5 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 241.4, 110.5 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 240.9, 108.5 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 240.9, 108.5 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 240.4, 107.5 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 240.4, 107.5 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 239.9, 107 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 239.9, 107 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 239.4, 106 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 239.4, 106 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 238.9, 105.5 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 238.9, 105.5 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 237.9, 105 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 237.9, 105 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 236.9, 105 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 236.9, 105 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 235.9, 105 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 235.9, 105 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 234.9, 105 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 234.9, 105 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 234.4, 105 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 234.4, 105 , 0 );

setScaleKey( spep_0 + 454 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_0 + 454 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, 0 );

setGaussBlurKey( spep_0 + 454 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_0 + 486 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 504, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 60 );
SE002 = playSeVer2( spep_0 + 0, 1166, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 48 );
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 508, 0, 24, -1);

--構える１
SE005 = playSeVer2( spep_0 + 116, 1233, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 126, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE006, 78 );

--構える２
SE007 = playSeVer2( spep_0 + 150, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE007, 71 );
SE008 = playSeVer2( spep_0 + 150, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE008, 77 );

--叫ぶ
SE009 = playSeVer2( spep_0 + 174, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 174, SE009, 62 );
SE010 = playSeVer2( spep_0 + 180, 1010, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 180, 1179, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 202, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE012, 77 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 220; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
pauseAll( SP_dodge, 67);

setGaussBlurKey( spep_0 + 230 + OFFSET_X, 1, 0 );

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

--叫ぶ
SE013 = playSeVer2( spep_0 + 218, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE013, 72 );

--水面で浮かび上がる
SE014 = playSeVer2( spep_0 + 266, 1175, "",spep_0 + 506, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 266, SE014, 40 );
SE015 = playSeVer2( spep_0 + 266, 1166, "",spep_0 + 504, 0, 22, -1);
SE016 = playSeVer2( spep_0 + 266, 1165, "",spep_0 + 502, 0, 22, -1);
SE017 = playSeVer2( spep_0 + 298, 1278, "",spep_0 + 504, 0, 24, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --484F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--オーラ
SE019 = playSeVer2( spep_1 + 86, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE019, 56 );
SE020 = playSeVer2( spep_1 + 86, 1181, "",spep_1 + 296, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 86, SE020, 126 );

--画面遷移
SE021 = playSeVer2( spep_1 + 86, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE021, 81 );

-------------------------------------------------
-- ビーム発射〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 586;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ビーム発射〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);
--[[
finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ビーム発射〜フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);
]]
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 262 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 282 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 262 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 280 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 262 + OFFSET_X, 1, 2.3, 111.5 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 2.3, 111.5 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 4.6, 98.9 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 4.6, 98.9 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -6.9, 51.6 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -6.9, 51.6 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -13.7, 35.3 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -13.7, 35.3 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -13.7, 17 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -13.7, 17 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -12.4, -2.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -12.4, -2.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -25.7, -127 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -25.7, -127 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 8.7, -92.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 8.7, -92.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 23.5, -106.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 23.5, -106.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -123, -333.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -123, -333.8 , 0 );

setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_2 + 262 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -45 );

setBlendColor( spep_2 + 262 + OFFSET_X, 1, 3, 0.392, 0.85, 0.3, 0.5 );
setBlendColor( spep_2 + 280 + OFFSET_X, 1, 3, 0.678, 1, 0.549, 0.5 );
setBlendColor( spep_2 + 282 + OFFSET_X, 1, 3, 0., 0, 0, 0 );

-- ** 音 ** --

--気弾溜め
SE022 = playSeVer2( spep_2 + 16, 1442, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE022, 178 );
SE024 = playSeVer2( spep_2 + 68, 1441, "",spep_2 + 208, 0, 24, -1);
SE025 = playSeVer2( spep_2 + 68, 1440, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 68, 1443, "",spep_2 + 198, 0, 20, -1);

--構える
SE023 = playSeVer2( spep_2 + 44, 1004, "", 0, 0, 0, -1);
setPitch( spep_2 + 44, SE023, -600 );
setTimeStretch( SE023, 0.6, 30, 4 );

--気弾発射１
SE027 = playSeVer2( spep_2 + 168, 1256, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 168, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE028, 52 );

--気弾発射２
SE029 = playSeVer2( spep_2 + 194, 1022, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 194, 1213, "",spep_2 + 464, 0, 126, -1);
setSeVolumeByWorkId( spep_2 + 194, SE030, 75 );
SE031 = playSeVer2( spep_2 + 194, 1423, "",spep_2 + 466, 0, 130, -1);
SE032 = playSeVer2( spep_2 + 194, 1446, "",spep_2 + 468, 0, 134, -1);

--水飛沫あがる
SE033 = playSeVer2( spep_2 + 210, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE033, 214 );
SE034 = playSeVer2( spep_2 + 230, 1168, "",spep_2 + 342, 0, 62, -1);

--気弾せまる
SE035 = playSeVer2( spep_2 + 250, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE035, 71 );

--気弾山にヒット
SE036 = playSeVer2( spep_2 + 296, 1159, "", 0, 0, 0, -1);

--気弾飛んでいく
SE037 = playSeVer2( spep_2 + 314, 1304, "", 0, 0, 0, -1);

--山かける
SE038 = playSeVer2( spep_2 + 364, 1011, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 374, 1466, "", 0, 0, 0, -1);

--爆発
SE040 = playSeVer2( spep_2 + 416, 1069, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 416, SE040, 120 );
SE041 = playSeVer2( spep_2 + 432, 1445, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 432, SE041, 140 );
setPitch( spep_2 + 432, SE041, -600 );
setTimeStretch( SE041, 0.6, 30, 4 );
SE042 = playSeVer2( spep_2 + 432, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 432, SE042, 120 );

--画面遷移
SE043 = playSeVer2( spep_2 + 482, 8, "", 0, 0, 0, -1);

--オーラ
SE044 = playSeVer2( spep_2 + 482, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 482, SE044, 61 );
SE045 = playSeVer2( spep_2 + 482, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 482, SE045, 58 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 442); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 586F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- 開始〜ブロリー浮上
-------------------------------------------------
MAX_FRAME_0 = 484;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始〜ブロリー浮上(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);
--[[
start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 開始〜ブロリー浮上(ef_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 228 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 274 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 228 + OFFSET_X, 1,17 );
changeAnime( spep_0 + 238 + OFFSET_X, 1,4 );

setMoveKey( spep_0 + 228 + OFFSET_X, 1, -54.6, -77 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -54.6, -77 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -64.6, -77 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -64.6, -77 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -62.6, -76.5 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -62.6, -76.5 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -67.2, -72.5 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -67.2, -72.5 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -80.8, -77.5 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -80.8, -77.5 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -111.8, -79.6 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -111.8, -79.6 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -117.8, -86.6 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -117.8, -86.6 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -145.4, -85.7 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -145.4, -85.7 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -144.4, -83.7 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -144.4, -83.7 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -156.6, -72.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -156.6, -72.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -163.7, -68.8 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -163.7, -68.8 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -167.7, -62.8 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -167.7, -62.8 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -175.5, -65.8 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -175.5, -65.8 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -169.5, -69.8 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -169.5, -69.8 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -174.8, -69.8 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -174.8, -69.8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -181.3, -80.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -181.3, -80.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -175.3, -81.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -175.3, -81.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -180, -81.8 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -180, -81.8 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -178.2, -84.8 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -178.2, -84.8 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -175.5, -80.7 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -175.5, -80.7 , 0 );

setScaleKey( spep_0 + 228 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.8, 1.8 );

setRotateKey( spep_0 + 228 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 0 );

setGaussBlurKey( spep_0 + 228 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_0 + 235 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_0 + 236 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_0 + 274 + OFFSET_X, 1, 0 );

--敵の動き2

setDisp( spep_0 + 454 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 486 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 454 + OFFSET_X, 1,17 );

setMoveKey( spep_0 + 454 + OFFSET_X, 1, -245.4, 119.5 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -245.4, 119.5 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -244.4, 117.5 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -244.4, 117.5 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -243.4, 114 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -243.4, 114 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -242.9, 112.5 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -242.9, 112.5 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -241.4, 110.5 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -241.4, 110.5 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -240.9, 108.5 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -240.9, 108.5 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -240.4, 107.5 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -240.4, 107.5 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -239.9, 107 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -239.9, 107 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -239.4, 106 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -239.4, 106 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -238.9, 105.5 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -238.9, 105.5 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -237.9, 105 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -237.9, 105 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -236.9, 105 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -236.9, 105 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -235.9, 105 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -235.9, 105 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -234.9, 105 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -234.9, 105 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -234.4, 105 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -234.4, 105 , 0 );

setScaleKey( spep_0 + 454 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_0 + 454 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, 0 );

setGaussBlurKey( spep_0 + 454 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_0 + 486 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 504, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 60 );
SE002 = playSeVer2( spep_0 + 0, 1166, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 48 );
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 508, 0, 24, -1);

--構える１
SE005 = playSeVer2( spep_0 + 116, 1233, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 126, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE006, 78 );

--構える２
SE007 = playSeVer2( spep_0 + 150, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE007, 71 );
SE008 = playSeVer2( spep_0 + 150, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE008, 77 );

--叫ぶ
SE009 = playSeVer2( spep_0 + 174, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 174, SE009, 62 );
SE010 = playSeVer2( spep_0 + 180, 1010, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 180, 1179, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 202, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE012, 77 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 220; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
pauseAll( SP_dodge, 67);

setGaussBlurKey( spep_0 + 230 + OFFSET_X, 1, 0 );

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

--叫ぶ
SE013 = playSeVer2( spep_0 + 218, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE013, 72 );

--水面で浮かび上がる
SE014 = playSeVer2( spep_0 + 266, 1175, "",spep_0 + 506, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 266, SE014, 40 );
SE015 = playSeVer2( spep_0 + 266, 1166, "",spep_0 + 504, 0, 22, -1);
SE016 = playSeVer2( spep_0 + 266, 1165, "",spep_0 + 502, 0, 22, -1);
SE017 = playSeVer2( spep_0 + 298, 1278, "",spep_0 + 504, 0, 24, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --484F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--オーラ
SE019 = playSeVer2( spep_1 + 86, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE019, 56 );
SE020 = playSeVer2( spep_1 + 86, 1181, "",spep_1 + 296, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 86, SE020, 126 );

--画面遷移
SE021 = playSeVer2( spep_1 + 86, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE021, 81 );

-------------------------------------------------
-- ビーム発射〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 586;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ビーム発射〜フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);
--[[
finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ビーム発射〜フィニッシュ(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);
]]
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 262 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 282 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 262 + OFFSET_X, 1,4 );
changeAnime( spep_2 + 280 + OFFSET_X, 1,7 );

setMoveKey( spep_2 + 262 + OFFSET_X, 1, -2.3, 111.5 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -2.3, 111.5 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -4.6, 98.9 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -4.6, 98.9 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 6.9, 51.6 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 6.9, 51.6 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 13.7, 35.3 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 13.7, 35.3 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 13.7, 17 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 13.7, 17 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 12.4, -2.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 12.4, -2.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 25.7, -127 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 25.7, -127 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -8.7, -92.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -8.7, -92.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -23.5, -106.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -23.5, -106.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 123, -333.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 123, -333.8 , 0 );

setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_2 + 262 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 45 );

setBlendColor( spep_2 + 262 + OFFSET_X, 1, 3, 0.392, 0.85, 0.3, 0.5 );
setBlendColor( spep_2 + 280 + OFFSET_X, 1, 3, 0.678, 1, 0.549, 0.5 );
setBlendColor( spep_2 + 282 + OFFSET_X, 1, 3, 0., 0, 0, 0 );

-- ** 音 ** --

--気弾溜め
SE022 = playSeVer2( spep_2 + 16, 1442, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE022, 178 );
SE024 = playSeVer2( spep_2 + 68, 1441, "",spep_2 + 208, 0, 24, -1);
SE025 = playSeVer2( spep_2 + 68, 1440, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 68, 1443, "",spep_2 + 198, 0, 20, -1);

--構える
SE023 = playSeVer2( spep_2 + 44, 1004, "", 0, 0, 0, -1);
setPitch( spep_2 + 44, SE023, -600 );
setTimeStretch( SE023, 0.6, 30, 4 );

--気弾発射１
SE027 = playSeVer2( spep_2 + 168, 1256, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 168, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE028, 52 );

--気弾発射２
SE029 = playSeVer2( spep_2 + 194, 1022, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 194, 1213, "",spep_2 + 464, 0, 126, -1);
setSeVolumeByWorkId( spep_2 + 194, SE030, 75 );
SE031 = playSeVer2( spep_2 + 194, 1423, "",spep_2 + 466, 0, 130, -1);
SE032 = playSeVer2( spep_2 + 194, 1446, "",spep_2 + 468, 0, 134, -1);

--水飛沫あがる
SE033 = playSeVer2( spep_2 + 210, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE033, 214 );
SE034 = playSeVer2( spep_2 + 230, 1168, "",spep_2 + 342, 0, 62, -1);

--気弾せまる
SE035 = playSeVer2( spep_2 + 250, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE035, 71 );

--気弾山にヒット
SE036 = playSeVer2( spep_2 + 296, 1159, "", 0, 0, 0, -1);

--気弾飛んでいく
SE037 = playSeVer2( spep_2 + 314, 1304, "", 0, 0, 0, -1);

--山かける
SE038 = playSeVer2( spep_2 + 364, 1011, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 374, 1466, "", 0, 0, 0, -1);

--爆発
SE040 = playSeVer2( spep_2 + 416, 1069, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 416, SE040, 120 );
SE041 = playSeVer2( spep_2 + 432, 1445, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 432, SE041, 140 );
setPitch( spep_2 + 432, SE041, -600 );
setTimeStretch( SE041, 0.6, 30, 4 );
SE042 = playSeVer2( spep_2 + 432, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 432, SE042, 120 );

--画面遷移
SE043 = playSeVer2( spep_2 + 482, 8, "", 0, 0, 0, -1);

--オーラ
SE044 = playSeVer2( spep_2 + 482, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 482, SE044, 61 );
SE045 = playSeVer2( spep_2 + 482, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 482, SE045, 58 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 442); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 586F


end
