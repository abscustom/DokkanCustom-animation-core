--1029440:LR_伝説の超サイヤ人ブロリー_超必殺技：ギガンティックドライバー
--sp_effect_a2_00244
--sp2756

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163148; --開始ブロリー顔アップ〜踏みつけまで ef_001
SP_01b = 163149; --開始ブロリー顔アップ〜踏みつけまで ef_001b
SP_02  = 163152; --光弾構えの顔アップ〜フィニッシュまで ef_002
SP_02b = 163153; --光弾構えの顔アップ〜フィニッシュまで ef_002b

--エフェクト(敵)
SP_01r  = 163150; --開始ブロリー顔アップ〜踏みつけまで ef_001r
SP_01br = 163151; --開始ブロリー顔アップ〜踏みつけまで ef_001br
SP_02r  = 163154; --光弾構えの顔アップ〜フィニッシュまで ef_002r

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

ENABLE_AUTO_TIME_STRETCH(0.78);

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
-- 開始ブロリー顔アップ〜踏みつけまで
-------------------------------------------------
MAX_FRAME_0 = 654;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始ブロリー顔アップ〜踏みつけまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開始ブロリー顔アップ〜踏みつけまで(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 76;
 
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


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_0 + 222 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 252 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 222 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 230 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 222 + OFFSET_X, 1, 394.9, -1074 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 394.9, -1074 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 333.6, -929.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 333.6, -929.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 272.4, -785.6 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 272.4, -785.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 211.1, -641.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 211.1, -641.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 118.4, -542.3 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 118.4, -542.3 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 184.3, -239.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 184.3, -239.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 278.7, -367.4 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 278.7, -367.4 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 234.1, -313.4 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 234.1, -313.4 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 188.7, -256.4 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 188.7, -256.4 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 285.3, -393.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 285.3, -393.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 235.2, -540.4 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 235.2, -540.4 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 190.9, -594.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 190.9, -594.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 179.7, -766.3 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 179.7, -766.3 , 0 );

setScaleKey( spep_0 + 222 + OFFSET_X, 1, 9.56, 9.56 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 9.56, 9.56 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 8.42, 8.42 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 8.42, 8.42 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 7.28, 7.28 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 7.28, 7.28 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 6.15, 6.15 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 6.15, 6.15 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 2.57, 2.57 );

setRotateKey( spep_0 + 222 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, 21 );


--敵の動き２
setDisp( spep_0 + 270 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 290 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 270 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 270 + OFFSET_X, 1, -155.9, -487.3 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -155.9, -487.3 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -155.5, -52.7 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -155.5, -52.7 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -233.2, -81.6 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -233.2, -81.6 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -194.3, -70.1 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -194.3, -70.1 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -155.4, -57.8 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -155.4, -57.8 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -233.1, -89.3 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -233.1, -89.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -194.5, -433.2 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -194.5, -433.2 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -155.7, -633.5 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -155.7, -633.5 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -151.2, -915.9 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -151.2, -915.9 , 0 );

setScaleKey( spep_0 + 270 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.55, 2.55 );

setRotateKey( spep_0 + 270 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -7.8 );

--敵の動き３
setDisp( spep_0 + 310 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 352 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 310 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 310 + OFFSET_X, 1, 72.2, -842.7 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 72.2, -842.7 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 108.3, -1264.1 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 108.3, -1264.1 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 90.3, -1053.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 90.3, -1053.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 72.2, -842.7 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 72.2, -842.7 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 108.3, -1264.1 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 108.3, -1264.1 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 90.3, -1053.4 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 90.3, -1053.4 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 72.2, -842.7 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 72.2, -842.7 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 168, -793.1 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 168, -793.1 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 251.1, -750.8 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 251.1, -750.8 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 321.7, -715.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 321.7, -715.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 384.4, -680.7 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 384.4, -680.7 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 376.2, -664.1 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 376.2, -664.1 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 386.6, -643.9 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 386.6, -643.9 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 377.8, -620.1 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 377.8, -620.1 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 382.9, -616.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 382.9, -616.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 383, -613.3 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 383, -613.3 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 389.1, -617.6 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 389.1, -617.6 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 407.2, -630.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 407.2, -630.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 515, -709.3 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 515, -709.3 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 708.9, -850.5 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 708.9, -850.5 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 989.1, -1054.6 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 989.1, -1054.6 , 0 );

setScaleKey( spep_0 + 310 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 12.5, 12.5 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 12.5, 12.5 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 12.5, 12.5 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 12.5, 12.5 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 8.36, 8.36 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 8.36, 8.36 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 5.71, 5.71 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 5.71, 5.71 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 6.13, 6.13 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 6.13, 6.13 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 8, 8 );

setRotateKey( spep_0 + 310 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, 33.5 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, 33.5 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 53.3 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 53.3 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 69.7 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 69.7 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 76.7 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, 76.7 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 82.1 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 82.1 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 85.9 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, 85.9 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, 88.2 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, 88.2 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, 89 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, 89 );


--敵の動き４
setDisp( spep_0 + 402 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 458 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 402 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 420 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 434 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 402 + OFFSET_X, 1, -328.4, -23.6 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -328.4, -23.6 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -295.5, -30.5 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -295.5, -30.5 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -283, -47.6 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -283, -47.6 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -291, -75 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -291, -75 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -319.3, -112.7 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -319.3, -112.7 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -260.2, -107.1 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -260.2, -107.1 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -201, -101.4 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -201, -101.4 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -141.5, -95.5 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -141.5, -95.5 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -81.8, -89.5 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -81.8, -89.5 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -42.3, -70 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -42.3, -70 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -35.6, -78.1 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -35.6, -78.1 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -20.7, -81.9 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -20.7, -81.9 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -13.7, -81.7 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -13.7, -81.7 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 1.7, -85.4 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 1.7, -85.4 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 2.1, -92 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 2.1, -92 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 10.7, -94.4 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 10.7, -94.4 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 24.4, -70 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 24.4, -70 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 36.5, -63.4 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 36.5, -63.4 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 42.8, -58.7 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 42.8, -58.7 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 43.2, -62.4 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 43.2, -62.4 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 43.7, -66.1 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 43.7, -66.1 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 44.5, -69.6 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 44.5, -69.6 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 45.5, -73 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 45.5, -73 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 46.6, -76.3 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 46.6, -76.3 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 48, -79.4 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 48, -79.4 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 49.5, -82.4 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 49.5, -82.4 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 51.2, -85.2 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 51.2, -85.2 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 53.1, -88 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 53.1, -88 , 0 );

setScaleKey( spep_0 + 402 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 447 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_0 + 402 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, -170.2 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, -170.2 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, -177 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, -177 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -164 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, -164 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, -181 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -181 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -167.5 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, -167.5 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, -174.1 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, -174.1 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, -170.2 );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, -170.2 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -147.5 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, -147.5 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -143.8 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, -143.8 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, -140.2 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -140.2 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -139.3 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -139.3 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -138.5 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -138.5 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -137.6 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -137.6 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -136.8 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -136.8 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -135.9 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -135.9 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -135.1 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -135.1 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -134.2 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -134.2 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -133.3 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, -133.3 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, -132.5 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -132.5 );


--敵の動き５
setDisp( spep_0 + 566 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 658 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 566 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 592 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 566 + OFFSET_X, 1, 18, -521.3 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 18, -521.3 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 18, -519.8 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 18, -519.8 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 18, -515.3 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 18, -515.3 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 18.1, -507.9 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 18.1, -507.9 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 18.1, -497.5 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 18.1, -497.5 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 18.2, -484.2 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 18.2, -484.2 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 18.4, -467.9 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 18.4, -467.9 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 18.5, -448.6 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 18.5, -448.6 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 18.7, -426.4 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 18.7, -426.4 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 18.9, -401.2 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 18.9, -401.2 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 19.1, -373.1 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 19.1, -373.1 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 19.3, -341.9 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 19.3, -341.9 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 19.6, -307.8 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 19.6, -307.8 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 37.5, -286.6 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 37.5, -286.6 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 37.5, -283.1 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, 37.5, -283.1 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 37.5, -280.2 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, 37.5, -280.2 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 58.7, -416.9 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 58.7, -416.9 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 48.1, -345.4 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 48.1, -345.4 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 37.5, -275.4 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 37.5, -275.4 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 48.1, -343.8 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 48.1, -343.8 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 37.5, -275.1 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 37.5, -275.1 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 44.7, -256.7 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 44.7, -256.7 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 36.2, -270 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 36.2, -270 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 46, -271.8 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 46, -271.8 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 36.6, -262.6 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 36.6, -262.6 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 41.3, -267.3 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, 41.3, -267.3 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 46, -262.7 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 46, -262.7 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 36.6, -272 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, 36.6, -272 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 46, -272 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 46, -272 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 36.6, -262.5 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 36.6, -262.5 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 43.3, -265.3 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 43.3, -265.3 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 39.3, -269.2 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 39.3, -269.2 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 43.3, -269.2 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 43.3, -269.2 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 39.2, -265.2 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 39.2, -265.2 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 41.2, -267.1 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, 41.2, -267.1 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 41.2, -267 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 41.2, -267 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 40.9, -266.1 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, 40.9, -266.1 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 40.4, -264.6 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, 40.4, -264.6 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 39.7, -262.4 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, 39.7, -262.4 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 38.9, -259.6 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, 38.9, -259.6 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 37.8, -256.2 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, 37.8, -256.2 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, 36.5, -252.3 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, 36.5, -252.3 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, 35, -247.6 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, 35, -247.6 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, 33.4, -242.4 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, 33.4, -242.4 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, 31.5, -236.6 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, 31.5, -236.6 , 0 );

setScaleKey( spep_0 + 566 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 577 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 578 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 581 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 583 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 584 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 585 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 586 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 589 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 590 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 597 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 598 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 601 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 603 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 605 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 609 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 610 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 611 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 639 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 640 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 641 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 642 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 643 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 644 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 645 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 646 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 647 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 648 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 649 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 650 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 651 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 652 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 653 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 654 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 655 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 656 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 658 + OFFSET_X, 1, 0.98, 0.98 );

setRotateKey( spep_0 + 566 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 591 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 592 + OFFSET_X, 1, 54 );
setRotateKey( spep_0 + 658 + OFFSET_X, 1, 54 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 71 );
SE003 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 71 );

--腕あげる
SE004 = playSeVer2( spep_0 + 38, 1004, "", 0, 0, 0, -1);

--オーラ
SE005 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE005, 71 );
SE006 = playSeVer2( spep_0 + 68, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE006, 71 );

--気を高める
SE007 = playSeVer2( spep_0 + 74, 1043, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 80, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE009, 72 );
SE010 = playSeVer2( spep_0 + 80, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE010, 78 );

--オーラ
SE011 = playSeVer2( spep_0 + 92, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE011, 71 );
SE012 = playSeVer2( spep_0 + 116, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE012, 71 );
SE013 = playSeVer2( spep_0 + 140, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE013, 71 );
SE014 = playSeVer2( spep_0 + 164, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE014, 71 );

--向かってくる
SE015 = playSeVer2( spep_0 + 166, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 166, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE016, 62 );
SE017 = playSeVer2( spep_0 + 166, 9, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
SP_dodge = spep_0 + 188; --エンドフェイズのフレーム数を置き換える
 
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 18, SE011, 0);
stopSe( SP_dodge - 18, SE012, 0);
stopSe( SP_dodge - 18, SE013, 0);
stopSe( SP_dodge - 18, SE014, 0);
stopSe( SP_dodge - 18, SE015, 0);
stopSe( SP_dodge - 18, SE016, 0);
stopSe( SP_dodge - 18, SE017, 0);
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
--振りかぶる
SE018 = playSeVer2( spep_0 + 196, 1116, "",spep_0 + 250, 0, 18, -1);

--パンチ1
SE019 = playSeVer2( spep_0 + 228, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 228, 1153, "", 0, 0, 0, -1);

--パンチ2
SE021 = playSeVer2( spep_0 + 270, 1187, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 270, 1414, "", 0, 0, 0, -1);

--パンチ3
SE023 = playSeVer2( spep_0 + 306, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE023, 63 );
SE024 = playSeVer2( spep_0 + 308, 1187, "", 0, 0, 0, -1);

--振りかぶる
SE025 = playSeVer2( spep_0 + 344, 1304, "",spep_0 + 412, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 344, SE025, 60 );
setPitch( spep_0 + 344, SE025, 300 );
setTimeStretch( SE025, 1.2, 30, 4 );
SE026 = playSeVer2( spep_0 + 344, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 344, SE026, 79 );

--クロスパンチ
SE027 = playSeVer2( spep_0 + 390, 1153, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 390, 1187, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 390, 1179, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE030 = playSeVer2( spep_0 + 402, 1023, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 410, 1044, "",spep_0 + 476, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 410, SE031, 138 );
SE032 = playSeVer2( spep_0 + 410, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE032, 100 );
SE033 = playSeVer2( spep_0 + 414, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 414, SE033, 73 );
SE034 = playSeVer2( spep_0 + 420, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 420, SE034, 64 );

--壁激突
SE035 = playSeVer2( spep_0 + 454, 1159, "",spep_0 + 622, 0, 84, -1);

--落ちてくる
SE036 = playSeVer2( spep_0 + 504, 1116, "",spep_0 + 570, 0, 36, -1);
SE037 = playSeVer2( spep_0 + 516, 1117, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 522, 1118, "",spep_0 + 580, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 522, SE038, 73 );
setPitch( spep_0 + 522, SE038, 400 );
setTimeStretch( SE038, 1.27, 30, 4 );
SE039 = playSeVer2( spep_0 + 558, 1119, "", 0, 8, 0, -1);
setStartTimeMs( SE039,  500 );

--踏みつけ
SE040 = playSeVer2( spep_0 + 588, 1187, "",spep_0 + 672, 0, 14, -1);
SE041 = playSeVer2( spep_0 + 588, 1159, "",spep_0 + 676, 0, 18, -1);
SE042 = playSeVer2( spep_0 + 588, 1114, "", 0, 0, 0, -1);

--飛び上がる
SE043 = playSeVer2( spep_0 + 630, 63, "",spep_0 + 672, 0, 12, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 654f

-- ** 音 ** --
--両手前に出す
SE045 = playSeVer2( spep_1 + 86, 1072, "", 0, 0, 0, -1);

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 光弾構えの顔アップ〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 328;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 光弾構えの顔アップ〜フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 光弾構えの顔アップ〜フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 168 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 200 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 168 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 168 + OFFSET_X, 1, 31.5, -215.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 31.5, -215.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 28.1, -212.1 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 28.1, -212.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 31.5, -208.6 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 31.5, -208.6 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 24.6, -215.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 24.6, -215.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 24.6, -208.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 24.6, -208.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 31.5, -215.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 31.5, -215.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 28.1, -212.1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 28.1, -212.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 22.2, -217.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 22.2, -217.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 22.2, -206.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 22.2, -206.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 33.9, -217.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 33.9, -217.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 28.3, -212.1 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 28.3, -212.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 33.9, -206.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 33.9, -206.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 22.2, -217.9 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 22.2, -217.9 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 22.2, -206.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 22.2, -206.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 33.9, -217.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 33.9, -217.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 28.1, -212.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 28.1, -212.1 , 0 );

setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.05, 1.05 );

setRotateKey( spep_2 + 168 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -4 );

setBlendColor( spep_2 + 188 + OFFSET_X, 1, 2, 0, 0, 0, 0 );
setBlendColor( spep_2 + 190 + OFFSET_X, 1, 2, 0.22, 0.22, 0.22, 0.8 );
setBlendColor( spep_2 + 192 + OFFSET_X, 1, 2, 0.22, 0.22, 0.22, 0.8 );
setBlendColor( spep_2 + 194 + OFFSET_X, 1, 2, 0, 0, 0, 0 );

-- ** 音 ** --
--両手前に出す
SE046 = playSeVer2( spep_2 + 14, 1116, "",spep_2 + 62, 0, 26, -1);

--気弾溜め
SE047 = playSeVer2( spep_2 + 72, 1440, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE047, 166 );
SE048 = playSeVer2( spep_2 + 72, 1441, "",spep_2 + 156, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 72, SE048, 126 );
SE049 = playSeVer2( spep_2 + 72, 1144, "",spep_2 + 154, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 72, SE049, 56 );
SE050 = playSeVer2( spep_2 + 72, 1271, "",spep_2 + 152, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 68, SE050, 66 );

--気弾発射
SE051 = playSeVer2( spep_2 + 128, 1146, "",spep_2 + 216, 0, 20, -1);
SE052 = playSeVer2( spep_2 + 128, 1193, "",spep_2 + 214, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 128, SE052, 116 );

--爆発
SE053 = playSeVer2( spep_2 + 188, 1159, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 202, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 202, SE054, 91 );
SE055 = playSeVer2( spep_2 + 238, 1168, "", 0, 48, 0, -1);
setSeVolumeByWorkId( spep_2 + 238, SE055, 168 );
setStartTimeMs( SE055,  300 );
SE056 = playSeVer2( spep_2 + 250, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 212); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 328f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始ブロリー顔アップ〜踏みつけまで
-------------------------------------------------
MAX_FRAME_0 = 654;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開始ブロリー顔アップ〜踏みつけまで(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 開始ブロリー顔アップ〜踏みつけまで(ef_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 76;
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_0 + 222 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 252 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 222 + OFFSET_X, 1, 2 );
changeAnime( spep_0 + 230 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 222 + OFFSET_X, 1, -394.9, -1074 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -394.9, -1074 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -333.6, -929.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -333.6, -929.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -272.4, -785.6 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -272.4, -785.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -211.1, -641.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -211.1, -641.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -118.4, -542.3 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -118.4, -542.3 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -184.3, -239.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -184.3, -239.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -278.7, -367.4 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -278.7, -367.4 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -234.1, -313.4 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -234.1, -313.4 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -188.7, -256.4 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -188.7, -256.4 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -285.3, -393.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -285.3, -393.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -235.2, -540.4 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -235.2, -540.4 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -190.9, -594.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -190.9, -594.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -179.7, -766.3 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -179.7, -766.3 , 0 );

setScaleKey( spep_0 + 222 + OFFSET_X, 1, 9.56, 9.56 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 9.56, 9.56 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 8.42, 8.42 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 8.42, 8.42 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 7.28, 7.28 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 7.28, 7.28 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 6.15, 6.15 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 6.15, 6.15 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 2.57, 2.57 );

setRotateKey( spep_0 + 222 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -21 );


--敵の動き２
setDisp( spep_0 + 270 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 290 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 270 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 270 + OFFSET_X, 1, 155.9, -487.3 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 155.9, -487.3 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 155.5, -52.7 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 155.5, -52.7 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 233.2, -81.6 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 233.2, -81.6 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 194.3, -70.1 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 194.3, -70.1 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 155.4, -57.8 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 155.4, -57.8 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 233.1, -89.3 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 233.1, -89.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 194.5, -433.2 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 194.5, -433.2 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 155.7, -633.5 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 155.7, -633.5 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 151.2, -915.9 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 151.2, -915.9 , 0 );

setScaleKey( spep_0 + 270 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.55, 2.55 );

setRotateKey( spep_0 + 270 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 7.8 );


--敵の動き３
setDisp( spep_0 + 310 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 352 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 310 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 310 + OFFSET_X, 1, -72.2, -842.7 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -72.2, -842.7 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -108.3, -1264.1 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -108.3, -1264.1 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -90.3, -1053.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -90.3, -1053.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -72.2, -842.7 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -72.2, -842.7 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -108.3, -1264.1 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -108.3, -1264.1 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -90.3, -1053.4 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -90.3, -1053.4 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -72.2, -842.7 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -72.2, -842.7 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -168, -793.1 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -168, -793.1 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -251.1, -750.8 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -251.1, -750.8 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -321.7, -715.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -321.7, -715.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -384.4, -680.7 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -384.4, -680.7 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -376.2, -664.1 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -376.2, -664.1 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -386.6, -643.9 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -386.6, -643.9 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -377.8, -620.1 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -377.8, -620.1 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -382.9, -616.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -382.9, -616.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -383, -613.3 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -383, -613.3 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -389.1, -617.6 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -389.1, -617.6 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -407.2, -630.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -407.2, -630.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -515, -709.3 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -515, -709.3 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -708.9, -850.5 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -708.9, -850.5 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -989.1, -1054.6 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -989.1, -1054.6 , 0 );

setScaleKey( spep_0 + 310 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 12.5, 12.5 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 12.5, 12.5 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 12.5, 12.5 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 12.5, 12.5 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 8.36, 8.36 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 8.36, 8.36 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 5.71, 5.71 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 5.71, 5.71 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 6.13, 6.13 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 6.13, 6.13 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 8, 8 );

setRotateKey( spep_0 + 310 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -53.3 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -53.3 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -69.7 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -69.7 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -76.7 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -76.7 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -82.1 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -82.1 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -85.9 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, -85.9 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -88.2 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -88.2 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -89 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -89 );


--敵の動き４
setDisp( spep_0 + 402 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 458 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 402 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 420 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 434 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 402 + OFFSET_X, 1, -328.4, -23.6 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -328.4, -23.6 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -295.5, -30.5 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -295.5, -30.5 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -283, -47.6 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -283, -47.6 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -291, -75 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -291, -75 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -319.3, -112.7 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -319.3, -112.7 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -260.2, -107.1 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -260.2, -107.1 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -201, -101.4 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -201, -101.4 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -141.5, -95.5 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -141.5, -95.5 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -81.8, -89.5 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -81.8, -89.5 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -42.3, -70 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -42.3, -70 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -35.6, -78.1 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -35.6, -78.1 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -20.7, -81.9 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -20.7, -81.9 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -13.7, -81.7 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -13.7, -81.7 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 1.7, -85.4 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 1.7, -85.4 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 2.1, -92 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 2.1, -92 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 10.7, -94.4 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 10.7, -94.4 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 24.4, -70 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 24.4, -70 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 36.5, -63.4 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 36.5, -63.4 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 42.8, -58.7 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 42.8, -58.7 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 43.2, -62.4 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 43.2, -62.4 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 43.7, -66.1 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 43.7, -66.1 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 44.5, -69.6 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 44.5, -69.6 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 45.5, -73 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 45.5, -73 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 46.6, -76.3 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 46.6, -76.3 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 48, -79.4 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 48, -79.4 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 49.5, -82.4 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 49.5, -82.4 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 51.2, -85.2 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 51.2, -85.2 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 53.1, -88 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 53.1, -88 , 0 );

setScaleKey( spep_0 + 402 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 447 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_0 + 402 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, -170.2 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, -170.2 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, -177 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, -177 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -164 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, -164 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, -181 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -181 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -167.5 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, -167.5 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, -174.1 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, -174.1 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, -170.2 );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, -170.2 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -147.5 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, -147.5 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -143.8 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, -143.8 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, -140.2 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -140.2 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -139.3 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -139.3 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -138.5 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -138.5 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -137.6 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -137.6 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -136.8 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -136.8 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -135.9 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -135.9 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -135.1 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -135.1 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -134.2 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -134.2 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -133.3 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, -133.3 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, -132.5 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -132.5 );


--敵の動き５
setDisp( spep_0 + 566 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 658 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 566 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 592 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 566 + OFFSET_X, 1, 18, -521.3 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 18, -521.3 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 18, -519.8 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 18, -519.8 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 18, -515.3 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 18, -515.3 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 18.1, -507.9 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 18.1, -507.9 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 18.1, -497.5 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 18.1, -497.5 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 18.2, -484.2 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 18.2, -484.2 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 18.4, -467.9 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 18.4, -467.9 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 18.5, -448.6 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 18.5, -448.6 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 18.7, -426.4 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 18.7, -426.4 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 18.9, -401.2 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 18.9, -401.2 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 19.1, -373.1 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 19.1, -373.1 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 19.3, -341.9 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 19.3, -341.9 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 19.6, -307.8 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 19.6, -307.8 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 37.5, -286.6 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 37.5, -286.6 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 37.5, -283.1 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, 37.5, -283.1 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 37.5, -280.2 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, 37.5, -280.2 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 58.7, -416.9 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 58.7, -416.9 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 48.1, -345.4 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 48.1, -345.4 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 37.5, -275.4 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 37.5, -275.4 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 48.1, -343.8 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 48.1, -343.8 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 37.5, -275.1 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 37.5, -275.1 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 44.7, -256.7 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 44.7, -256.7 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 36.2, -270 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 36.2, -270 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 46, -271.8 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 46, -271.8 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 36.6, -262.6 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 36.6, -262.6 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 41.3, -267.3 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, 41.3, -267.3 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 46, -262.7 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 46, -262.7 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 36.6, -272 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, 36.6, -272 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 46, -272 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 46, -272 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 36.6, -262.5 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 36.6, -262.5 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 43.3, -265.3 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 43.3, -265.3 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 39.3, -269.2 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 39.3, -269.2 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 43.3, -269.2 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 43.3, -269.2 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 39.2, -265.2 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 39.2, -265.2 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 41.2, -267.1 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, 41.2, -267.1 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 41.2, -267 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 41.2, -267 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 40.9, -266.1 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, 40.9, -266.1 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 40.4, -264.6 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, 40.4, -264.6 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 39.7, -262.4 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, 39.7, -262.4 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 38.9, -259.6 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, 38.9, -259.6 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 37.8, -256.2 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, 37.8, -256.2 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, 36.5, -252.3 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, 36.5, -252.3 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, 35, -247.6 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, 35, -247.6 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, 33.4, -242.4 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, 33.4, -242.4 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, 31.5, -236.6 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, 31.5, -236.6 , 0 );

setScaleKey( spep_0 + 566 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 577 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 578 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 581 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 583 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 584 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 585 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 586 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 589 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 590 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 597 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 598 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 601 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 603 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 605 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 609 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 610 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 611 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 639 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 640 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 641 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 642 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 643 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 644 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 645 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 646 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 647 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 648 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 649 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 650 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 651 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 652 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 653 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 654 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 655 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 656 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 658 + OFFSET_X, 1, 0.98, 0.98 );

setRotateKey( spep_0 + 566 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 591 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 592 + OFFSET_X, 1, 54 );
setRotateKey( spep_0 + 658 + OFFSET_X, 1, 54 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 71 );
SE003 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 71 );

--腕あげる
SE004 = playSeVer2( spep_0 + 38, 1004, "", 0, 0, 0, -1);

--オーラ
SE005 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE005, 71 );
SE006 = playSeVer2( spep_0 + 68, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE006, 71 );

--気を高める
SE007 = playSeVer2( spep_0 + 74, 1043, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 80, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE009, 72 );
SE010 = playSeVer2( spep_0 + 80, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE010, 78 );

--オーラ
SE011 = playSeVer2( spep_0 + 92, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE011, 71 );
SE012 = playSeVer2( spep_0 + 116, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE012, 71 );
SE013 = playSeVer2( spep_0 + 140, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE013, 71 );
SE014 = playSeVer2( spep_0 + 164, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE014, 71 );

--向かってくる
SE015 = playSeVer2( spep_0 + 166, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 166, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE016, 62 );
SE017 = playSeVer2( spep_0 + 166, 9, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 188; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 18, SE011, 0);
stopSe( SP_dodge - 18, SE012, 0);
stopSe( SP_dodge - 18, SE013, 0);
stopSe( SP_dodge - 18, SE014, 0);
stopSe( SP_dodge - 18, SE015, 0);
stopSe( SP_dodge - 18, SE016, 0);
stopSe( SP_dodge - 18, SE017, 0);
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
--振りかぶる
SE018 = playSeVer2( spep_0 + 196, 1116, "",spep_0 + 250, 0, 18, -1);

--パンチ1
SE019 = playSeVer2( spep_0 + 228, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 228, 1153, "", 0, 0, 0, -1);

--パンチ2
SE021 = playSeVer2( spep_0 + 270, 1187, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 270, 1414, "", 0, 0, 0, -1);

--パンチ3
SE023 = playSeVer2( spep_0 + 306, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE023, 63 );
SE024 = playSeVer2( spep_0 + 308, 1187, "", 0, 0, 0, -1);

--振りかぶる
SE025 = playSeVer2( spep_0 + 344, 1304, "",spep_0 + 412, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 344, SE025, 60 );
setPitch( spep_0 + 344, SE025, 300 );
setTimeStretch( SE025, 1.2, 30, 4 );
SE026 = playSeVer2( spep_0 + 344, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 344, SE026, 79 );

--クロスパンチ
SE027 = playSeVer2( spep_0 + 390, 1153, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 390, 1187, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 390, 1179, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE030 = playSeVer2( spep_0 + 402, 1023, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 410, 1044, "",spep_0 + 476, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 410, SE031, 138 );
SE032 = playSeVer2( spep_0 + 410, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE032, 100 );
SE033 = playSeVer2( spep_0 + 414, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 414, SE033, 73 );
SE034 = playSeVer2( spep_0 + 420, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 420, SE034, 64 );

--壁激突
SE035 = playSeVer2( spep_0 + 454, 1159, "",spep_0 + 622, 0, 84, -1);

--落ちてくる
SE036 = playSeVer2( spep_0 + 504, 1116, "",spep_0 + 570, 0, 36, -1);
SE037 = playSeVer2( spep_0 + 516, 1117, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 522, 1118, "",spep_0 + 580, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 522, SE038, 73 );
setPitch( spep_0 + 522, SE038, 400 );
setTimeStretch( SE038, 1.27, 30, 4 );
SE039 = playSeVer2( spep_0 + 558, 1119, "", 0, 8, 0, -1);
setStartTimeMs( SE039,  500 );

--踏みつけ
SE040 = playSeVer2( spep_0 + 588, 1187, "",spep_0 + 672, 0, 14, -1);
SE041 = playSeVer2( spep_0 + 588, 1159, "",spep_0 + 676, 0, 18, -1);
SE042 = playSeVer2( spep_0 + 588, 1114, "", 0, 0, 0, -1);

--飛び上がる
SE043 = playSeVer2( spep_0 + 630, 63, "",spep_0 + 672, 0, 12, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 654f

-- ** 音 ** --
--両手前に出す
SE045 = playSeVer2( spep_1 + 86, 1072, "", 0, 0, 0, -1);

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 光弾構えの顔アップ〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 328;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 光弾構えの顔アップ〜フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 光弾構えの顔アップ〜フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 168 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 200 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 168 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 168 + OFFSET_X, 1, 31.5, -215.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 31.5, -215.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 28.1, -212.1 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 28.1, -212.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 31.5, -208.6 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 31.5, -208.6 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 24.6, -215.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 24.6, -215.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 24.6, -208.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 24.6, -208.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 31.5, -215.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 31.5, -215.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 28.1, -212.1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 28.1, -212.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 22.2, -217.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 22.2, -217.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 22.2, -206.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 22.2, -206.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 33.9, -217.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 33.9, -217.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 28.3, -212.1 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 28.3, -212.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 33.9, -206.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 33.9, -206.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 22.2, -217.9 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 22.2, -217.9 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 22.2, -206.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 22.2, -206.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 33.9, -217.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 33.9, -217.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 28.1, -212.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 28.1, -212.1 , 0 );

setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.05, 1.05 );

setRotateKey( spep_2 + 168 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -4 );

setBlendColor( spep_2 + 188 + OFFSET_X, 1, 2, 0, 0, 0, 0 );
setBlendColor( spep_2 + 190 + OFFSET_X, 1, 2, 0.22, 0.22, 0.22, 0.8 );
setBlendColor( spep_2 + 192 + OFFSET_X, 1, 2, 0.22, 0.22, 0.22, 0.8 );
setBlendColor( spep_2 + 194 + OFFSET_X, 1, 2, 0, 0, 0, 0 );

-- ** 音 ** --
--両手前に出す
SE046 = playSeVer2( spep_2 + 14, 1116, "",spep_2 + 62, 0, 26, -1);

--気弾溜め
SE047 = playSeVer2( spep_2 + 72, 1440, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE047, 166 );
SE048 = playSeVer2( spep_2 + 72, 1441, "",spep_2 + 156, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 72, SE048, 126 );
SE049 = playSeVer2( spep_2 + 72, 1144, "",spep_2 + 154, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 72, SE049, 56 );
SE050 = playSeVer2( spep_2 + 72, 1271, "",spep_2 + 152, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 68, SE050, 66 );

--気弾発射
SE051 = playSeVer2( spep_2 + 128, 1146, "",spep_2 + 216, 0, 20, -1);
SE052 = playSeVer2( spep_2 + 128, 1193, "",spep_2 + 214, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 128, SE052, 116 );

--爆発
SE053 = playSeVer2( spep_2 + 188, 1159, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 202, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 202, SE054, 91 );
SE055 = playSeVer2( spep_2 + 238, 1168, "", 0, 48, 0, -1);
setSeVolumeByWorkId( spep_2 + 238, SE055, 168 );
setStartTimeMs( SE055,  300 );
SE056 = playSeVer2( spep_2 + 250, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 212); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 328f -4

end