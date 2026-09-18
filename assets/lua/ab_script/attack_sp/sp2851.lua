-- 4030980: LR_パイクーハン（変身後）_必殺技：バーニングシュート
-- sp_effect_b1_00323
-- sp2851

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163751;  -- カード前 前 ef_001
SP_001b = 163753;  -- カード前 奥 ef_001b
SP_002 = 163754;  -- カード後 前 ef_002
SP_002b = 163756;  -- カード後 奥 ef_002b

-- 敵側
SP_001r = 163752;  -- カード前 前敵側 ef_001r
SP_002r = 163755;  -- カード後 前敵側 ef_002r

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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- カード前 前 ef_001
------------------------------------------------------
MAX_FRAME_0 = 312;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- カード前 前 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- カード前 奥 ef_001b
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
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 75, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 75, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 75, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 124 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 314 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 124 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 234 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 256 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 274 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 124 + OFFSET_X, 1, 155.4, -119.7 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 155.4, -119.7 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 222, -171 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 222, -171 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 33.5, -158.8 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 33.5, -158.8 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 263.5, -60.6 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 263.5, -60.6 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 215, -38.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 215, -38.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 241.6, -110.7 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 241.6, -110.7 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 165.5, -87.5 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 165.5, -87.5 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 212.7, -98.5 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 212.7, -98.5 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 192.4, -81.2 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 192.4, -81.2 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 221.3, -93.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 221.3, -93.4 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 192.8, -81.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 192.8, -81.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 192.4, -81.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 192.4, -81.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 58.3, -66.7 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 58.3, -66.7 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 43.2, -72.9 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 43.2, -72.9 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 28.1, -79.1 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 28.1, -79.1 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 13, -85.3 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 13, -85.3 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -2.1, -91.5 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -2.1, -91.5 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -17.2, -97.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -17.2, -97.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 10.2, -199.9 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 10.2, -199.9 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -73.8, -175.2 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -73.8, -175.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -17.9, -155.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -17.9, -155.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 8.7, -227.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 8.7, -227.3 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -72.3, -147.8 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -72.3, -147.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -16.4, -127.9 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -16.4, -127.9 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 8.7, -227.3 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 8.7, -227.3 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 30.6, -177.2 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 30.6, -177.2 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -38.4, -147.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -38.4, -147.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -10.1, -182.6 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -10.1, -182.6 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -38.4, -147.8 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -38.4, -147.8 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -10.1, -182.6 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -10.1, -182.6 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 1.7, -184.6 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 1.7, -184.6 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -185.7, -105.4 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -185.7, -105.4 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -331.4, -43.7 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -331.4, -43.7 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -435.5, 0.3 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -435.5, 0.3 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -498, 26.8 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -498, 26.8 , 0 );

setScaleKey( spep_0 + 124 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 3.89, 3.89 );

setRotateKey( spep_0 + 124 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, 70 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 70 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -63 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -63 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -64.6 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -64.6 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -66.3 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -66.3 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -67.9 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -67.9 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -69.6 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -69.6 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -71.2 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -71.2 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 23 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 23 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 348, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--服なびく
SE004 = playSeVer2( spep_0 + 10, 1332, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 40, 1331, "", 0, 0, 0, -1);

--瞬間移動
SE006 = playSeVer2( spep_0 + 96, 1497, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 138, 1499, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 138, 1500, "", 0, 0, 0, -1);

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 170;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--パンチ１
SE009 = playSeVer2( spep_0 + 222, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 228, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 228, 1153, "", 0, 0, 0, -1);

--パンチ２
SE012 = playSeVer2( spep_0 + 256, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 264, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 264, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 264, 1414, "", 0, 0, 0, -1);

--敵飛んでいく
SE016 = playSeVer2( spep_0 + 298, 1027, "",spep_0 + 346, 0, 28, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 312

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- カード後 前 ef_002
------------------------------------------------------
MAX_FRAME_2 = 470;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- カード後 前 ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- カード後 奥 ef_002b
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
setDisp( spep_2 + 174 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 298 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 174 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 270 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 174 + OFFSET_X, 1, 108.5, 152.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 108.5, 152.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 127.6, 140.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 127.6, 140.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 140.5, 158.6 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 140.5, 158.6 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 107.4, 144.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 107.4, 144.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 137.6, 146.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 137.6, 146.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 150.5, 165 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 150.5, 165 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 117.3, 150.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 117.3, 150.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 147.6, 153.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 147.6, 153.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 160.5, 171.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 160.5, 171.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 127.3, 156.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 127.3, 156.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 157.6, 159.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 157.6, 159.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 170.4, 177.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 170.4, 177.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 137.3, 163.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 137.3, 163.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 162.7, 165.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 162.7, 165.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 171.5, 174.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 171.5, 174.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 158.4, 184 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 158.4, 184 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 172.7, 172.3 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 172.7, 172.3 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 181.5, 180.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 181.5, 180.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 168.4, 190.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 168.4, 190.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 182.7, 178.7 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 182.7, 178.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 191.4, 187.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 191.4, 187.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 178.4, 196.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 178.4, 196.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 192.7, 185.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 192.7, 185.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 201.4, 193.7 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 201.4, 193.7 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 188.4, 203.2 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 188.4, 203.2 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 193.7, 203.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 193.7, 203.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 195, 207.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 195, 207.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 200.4, 207.6 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 200.4, 207.6 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 201.7, 211.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 201.7, 211.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 207, 211.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 207, 211.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 208.3, 216 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 208.3, 216 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 213.7, 216.1 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 213.7, 216.1 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 215, 220.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 215, 220.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 220.3, 220.3 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 220.3, 220.3 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 221.7, 224.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 221.7, 224.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 227, 224.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 227, 224.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 228.3, 228.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 228.3, 228.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 231.6, 230.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 231.6, 230.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 235, 233 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 235, 233 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 238.3, 235.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 238.3, 235.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 241.6, 237.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 241.6, 237.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 245, 239.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 245, 239.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 479.6, 379.7 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 479.6, 379.7 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 662.2, 488.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 662.2, 488.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 792.6, 566.9 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 792.6, 566.9 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 870.8, 613.6 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 870.8, 613.6 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 896.9, 629.2 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 896.9, 629.2 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -761.7, -682.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -761.7, -682.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -704.6, -626.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -704.6, -626.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -647.4, -569.5 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -647.4, -569.5 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -589.9, -512.5 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -589.9, -512.5 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -532.1, -455.2 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -532.1, -455.2 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -474, -397.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -474, -397.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -415.7, -339.5 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -415.7, -339.5 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -357, -281.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -357, -281.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -298, -222.6 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -298, -222.6 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -238.6, -163.7 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -238.6, -163.7 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -178.8, -104.6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -178.8, -104.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -118.7, -45.3 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -118.7, -45.3 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -58.1, 14.2 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -58.1, 14.2 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 2.9, 73.9 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 2.9, 73.9 , 0 );

setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.35, 0.35 );

setRotateKey( spep_2 + 174 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 23.9 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 23.9 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 25.3 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 25.3 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 27.9 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 27.9 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 30.5 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 30.5 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 37.1 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 37.1 );

-- ** 音 ** --
--炎まとう
SE018 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 40, 0, 20, -1);
SE019 = playSeVer2( spep_2 + 10, 44, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 14, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 38, 1178, "", 0, 0, 0, -1);

--炎まとい中
SE021 = playSeVer2( spep_2 + 34, 1268, "",spep_2 + 348, 16, 76, -1);
setSeVolumeByWorkId( spep_2 + 34, SE021, 168 );
SE022 = playSeVer2( spep_2 + 34, 1226, "",spep_2 + 148, 18, 14, -1);
setStartTimeMs( SE022,  0 );

--向かってくる
SE024 = playSeVer2( spep_2 + 68, 1068, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 68, 1177, "",spep_2 + 152, 0, 18, -1);
SE026 = playSeVer2( spep_2 + 90, 1118, "",spep_2 + 156, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 90, SE026, 60 );

--敵ヒット
SE027 = playSeVer2( spep_2 + 132, 1067, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 140, 1187, "", 0, 0, 0, -1);

--蹴る上げる
SE029 = playSeVer2( spep_2 + 174, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE030 = playSeVer2( spep_2 + 256, 1027, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 264, 1121, "",spep_2 + 336, 0, 28, -1);

--爆発
SE032 = playSeVer2( spep_2 + 298, 1024, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 304, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 310 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 470

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- カード前 前 ef_001r
------------------------------------------------------
MAX_FRAME_0 = 312;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );  -- カード前 前 ef_001r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- カード前 奥 ef_001b
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
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 75, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 75, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 75, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 124 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 314 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 124 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 234 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 256 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 274 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 124 + OFFSET_X, 1, 155.4, -119.7 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 155.4, -119.7 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 222, -171 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 222, -171 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 33.5, -158.8 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 33.5, -158.8 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 263.5, -60.6 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 263.5, -60.6 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 215, -38.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 215, -38.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 241.6, -110.7 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 241.6, -110.7 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 165.5, -87.5 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 165.5, -87.5 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 212.7, -98.5 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 212.7, -98.5 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 192.4, -81.2 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 192.4, -81.2 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 221.3, -93.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 221.3, -93.4 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 192.8, -81.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 192.8, -81.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 192.4, -81.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 192.4, -81.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 58.3, -66.7 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 58.3, -66.7 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 43.2, -72.9 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 43.2, -72.9 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 28.1, -79.1 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 28.1, -79.1 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 13, -85.3 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 13, -85.3 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -2.1, -91.5 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -2.1, -91.5 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -17.2, -97.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -17.2, -97.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 10.2, -199.9 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 10.2, -199.9 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -73.8, -175.2 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -73.8, -175.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -17.9, -155.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -17.9, -155.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 8.7, -227.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 8.7, -227.3 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -72.3, -147.8 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -72.3, -147.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -16.4, -127.9 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -16.4, -127.9 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 8.7, -227.3 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 8.7, -227.3 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 30.6, -177.2 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 30.6, -177.2 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -38.4, -147.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -38.4, -147.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -10.1, -182.6 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -10.1, -182.6 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -38.4, -147.8 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -38.4, -147.8 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -10.1, -182.6 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -10.1, -182.6 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 1.7, -184.6 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 1.7, -184.6 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -185.7, -105.4 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -185.7, -105.4 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -331.4, -43.7 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -331.4, -43.7 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -435.5, 0.3 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -435.5, 0.3 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -498, 26.8 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -498, 26.8 , 0 );

setScaleKey( spep_0 + 124 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 3.89, 3.89 );

setRotateKey( spep_0 + 124 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, 70 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 70 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -63 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -63 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -64.6 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -64.6 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -66.3 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -66.3 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -67.9 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -67.9 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -69.6 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -69.6 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -71.2 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -71.2 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 23 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 23 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 348, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--服なびく
SE004 = playSeVer2( spep_0 + 10, 1332, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 40, 1331, "", 0, 0, 0, -1);

--瞬間移動
SE006 = playSeVer2( spep_0 + 96, 1497, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 138, 1499, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 138, 1500, "", 0, 0, 0, -1);

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 170;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--パンチ１
SE009 = playSeVer2( spep_0 + 222, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 228, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 228, 1153, "", 0, 0, 0, -1);

--パンチ２
SE012 = playSeVer2( spep_0 + 256, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 264, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 264, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 264, 1414, "", 0, 0, 0, -1);

--敵飛んでいく
SE016 = playSeVer2( spep_0 + 298, 1027, "",spep_0 + 346, 0, 28, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 312

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- カード後 前 ef_002
------------------------------------------------------
MAX_FRAME_2 = 470;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );  -- カード後 前 ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- カード後 奥 ef_002b
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
setDisp( spep_2 + 174 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 298 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 174 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 270 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 174 + OFFSET_X, 1, 108.5, 152.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 108.5, 152.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 127.6, 140.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 127.6, 140.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 140.5, 158.6 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 140.5, 158.6 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 107.4, 144.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 107.4, 144.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 137.6, 146.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 137.6, 146.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 150.5, 165 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 150.5, 165 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 117.3, 150.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 117.3, 150.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 147.6, 153.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 147.6, 153.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 160.5, 171.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 160.5, 171.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 127.3, 156.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 127.3, 156.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 157.6, 159.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 157.6, 159.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 170.4, 177.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 170.4, 177.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 137.3, 163.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 137.3, 163.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 162.7, 165.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 162.7, 165.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 171.5, 174.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 171.5, 174.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 158.4, 184 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 158.4, 184 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 172.7, 172.3 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 172.7, 172.3 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 181.5, 180.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 181.5, 180.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 168.4, 190.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 168.4, 190.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 182.7, 178.7 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 182.7, 178.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 191.4, 187.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 191.4, 187.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 178.4, 196.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 178.4, 196.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 192.7, 185.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 192.7, 185.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 201.4, 193.7 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 201.4, 193.7 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 188.4, 203.2 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 188.4, 203.2 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 193.7, 203.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 193.7, 203.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 195, 207.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 195, 207.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 200.4, 207.6 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 200.4, 207.6 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 201.7, 211.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 201.7, 211.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 207, 211.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 207, 211.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 208.3, 216 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 208.3, 216 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 213.7, 216.1 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 213.7, 216.1 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 215, 220.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 215, 220.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 220.3, 220.3 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 220.3, 220.3 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 221.7, 224.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 221.7, 224.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 227, 224.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 227, 224.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 228.3, 228.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 228.3, 228.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 231.6, 230.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 231.6, 230.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 235, 233 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 235, 233 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 238.3, 235.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 238.3, 235.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 241.6, 237.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 241.6, 237.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 245, 239.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 245, 239.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 479.6, 379.7 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 479.6, 379.7 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 662.2, 488.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 662.2, 488.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 792.6, 566.9 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 792.6, 566.9 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 870.8, 613.6 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 870.8, 613.6 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 896.9, 629.2 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 896.9, 629.2 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -761.7, -682.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -761.7, -682.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -704.6, -626.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -704.6, -626.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -647.4, -569.5 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -647.4, -569.5 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -589.9, -512.5 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -589.9, -512.5 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -532.1, -455.2 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -532.1, -455.2 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -474, -397.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -474, -397.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -415.7, -339.5 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -415.7, -339.5 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -357, -281.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -357, -281.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -298, -222.6 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -298, -222.6 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -238.6, -163.7 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -238.6, -163.7 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -178.8, -104.6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -178.8, -104.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -118.7, -45.3 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -118.7, -45.3 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -58.1, 14.2 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -58.1, 14.2 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 2.9, 73.9 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 2.9, 73.9 , 0 );

setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.35, 0.35 );

setRotateKey( spep_2 + 174 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 23.9 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 23.9 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 25.3 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 25.3 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 27.9 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 27.9 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 30.5 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 30.5 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 37.1 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 37.1 );

-- ** 音 ** --
--炎まとう
SE018 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 40, 0, 20, -1);
SE019 = playSeVer2( spep_2 + 10, 44, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 14, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 38, 1178, "", 0, 0, 0, -1);

--炎まとい中
SE021 = playSeVer2( spep_2 + 34, 1268, "",spep_2 + 348, 16, 76, -1);
setSeVolumeByWorkId( spep_2 + 34, SE021, 168 );
SE022 = playSeVer2( spep_2 + 34, 1226, "",spep_2 + 148, 18, 14, -1);
setStartTimeMs( SE022,  0 );

--向かってくる
SE024 = playSeVer2( spep_2 + 68, 1068, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 68, 1177, "",spep_2 + 152, 0, 18, -1);
SE026 = playSeVer2( spep_2 + 90, 1118, "",spep_2 + 156, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 90, SE026, 60 );

--敵ヒット
SE027 = playSeVer2( spep_2 + 132, 1067, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 140, 1187, "", 0, 0, 0, -1);

--蹴る上げる
SE029 = playSeVer2( spep_2 + 174, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE030 = playSeVer2( spep_2 + 256, 1027, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 264, 1121, "",spep_2 + 336, 0, 28, -1);

--爆発
SE032 = playSeVer2( spep_2 + 298, 1024, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 304, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 310 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 470

end
