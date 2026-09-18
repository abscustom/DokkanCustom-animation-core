--1034070:LR_超サイヤ人孫悟飯(少年期)_超必殺技：爆裂乱魔
--sp_effect_b4_00452
--sp3041

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164557; --スタート〜フィニッシュ ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);

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

--setAlphaKey( 0, 1, 255 );



ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

else
    mirror = -1;

    --SP_01  = SP_01r; -- 敵側エフェクトがある場合のみ

end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- スタート〜フィニッシュ
-------------------------------------------------
MAX_FRAME_0 = 1180;
CARD_FRAME = 590;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); --  スタート〜フィニッシュ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   --speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   --setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

--ctgogo_x = 0; -- 演出によって白目にかからないように調整

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, ctgogo_x * mirror, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7 * mirror, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7 * mirror, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0 * mirror, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09 * mirror, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39 * mirror, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69 * mirror, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
--敵の動き1
setDisp( spep_0 + 178 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 208 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 178 + OFFSET_X, 1, 2 );

setMoveKey( spep_0 + 178 + OFFSET_X, 1, 246.5 * mirror, -18.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 246.5 * mirror, -18.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 248.6 * mirror, -19.4 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 248.6 * mirror, -19.4 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 246.7 * mirror, -20.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 246.7 * mirror, -20.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 239.9 * mirror, -25.4 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 239.9 * mirror, -25.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 233.1 * mirror, -28.2 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 233.1 * mirror, -28.2 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 226.5 * mirror, -19.3 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 226.5 * mirror, -19.3 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 228.6 * mirror, -13.8 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 228.6 * mirror, -13.8 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 230.4 * mirror, -15.4 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 230.4 * mirror, -15.4 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 234 * mirror, -35.4 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 234 * mirror, -35.4 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 216.5 * mirror, -58.5 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 216.5 * mirror, -58.5 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 195.9 * mirror, -87.2 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 195.9 * mirror, -87.2 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 178.8 * mirror, -111.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 178.8 * mirror, -111.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 135.3 * mirror, -163.4 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 135.3 * mirror, -163.4 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 77.1 * mirror, -240.3 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 77.1 * mirror, -240.3 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 16.4 * mirror, -313.6 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 16.4 * mirror, -313.6 , 0 );

setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 5.67, 5.67 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 5.67, 5.67 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 7.68, 7.68 );

setRotateKey( spep_0 + 178 + OFFSET_X, 1, 29.3 * mirror );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, 29.3 * mirror );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 29.2 * mirror );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, 29.2 * mirror );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, 27.5 * mirror );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, 27.5 * mirror );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, 27 * mirror );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, 27 * mirror );


--敵の動き2
setDisp( spep_0 + 262 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 278 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 262 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 262 + OFFSET_X, 1, 264.3 * mirror, -84.1 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 264.3 * mirror, -84.1 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 308.8 * mirror, -107 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 308.8 * mirror, -107 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 346.8 * mirror, -140.6 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 346.8 * mirror, -140.6 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 377.2 * mirror, -172 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 377.2 * mirror, -172 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 397.3 * mirror, -207 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 397.3 * mirror, -207 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 412.6 * mirror, -220.9 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 412.6 * mirror, -220.9 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 419 * mirror, -220.9 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 419 * mirror, -220.9 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 421.6 * mirror, -209.8 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 421.6 * mirror, -209.8 , 0 );

setScaleKey( spep_0 + 262 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 0.02, 0.02 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 0.02, 0.02 );

setRotateKey( spep_0 + 262 + OFFSET_X, 1, 82.8 * mirror );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 82.8 * mirror );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 127.7 * mirror );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 127.7 * mirror );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 166 * mirror );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 166 * mirror );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 214.4 * mirror );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 214.4 * mirror );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 240.7 * mirror );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 240.7 * mirror );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 257.1 * mirror );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 257.1 * mirror );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 257.2 * mirror );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 257.2 * mirror );


--敵の動き3
setDisp( spep_0 + 284 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 304 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 284 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 300 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 284 + OFFSET_X, 1, 58.5 * mirror, -82.5 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 58.5 * mirror, -82.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 34.9 * mirror, -99.8 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 34.9 * mirror, -99.8 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 58.5 * mirror, -73 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 58.5 * mirror, -73 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 75.7 * mirror, -60.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 75.7 * mirror, -60.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 67.4 * mirror, -39.7 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 67.4 * mirror, -39.7 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 45 * mirror, -3.4 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 45 * mirror, -3.4 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 80.8 * mirror, 19.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 80.8 * mirror, 19.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 89.8 * mirror, 73.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 89.8 * mirror, 73.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -34.3 * mirror, 51.6 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -34.3 * mirror, 51.6 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 8 * mirror, 55.5 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 8 * mirror, 55.5 , 0 );

setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 7.1, 7.1 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 7.1, 7.1 );

setRotateKey( spep_0 + 284 + OFFSET_X, 1, 361.2 * mirror );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, 361.2 * mirror );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 312.5 * mirror );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 312.5 * mirror );


--敵の動き4
setDisp( spep_0 + 420 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 432 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 420 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 420 + OFFSET_X, 1, 147.9 * mirror, -292.8 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 147.9 * mirror, -292.8 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 5.1 * mirror, -104.1 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 5.1 * mirror, -104.1 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 88.5 * mirror, -232.1 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 88.5 * mirror, -232.1 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 148.6 * mirror, -345.8 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 148.6 * mirror, -345.8 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 242.3 * mirror, -453.8 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 242.3 * mirror, -453.8 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 342.5 * mirror, -594 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 342.5 * mirror, -594 , 0 );

setScaleKey( spep_0 + 420 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 0.33, 0.33 );

setRotateKey( spep_0 + 420 + OFFSET_X, 1, 196.4 * mirror );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, 196.4 * mirror );


--敵の動き5
setDisp( spep_0 + 460 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 462 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 460 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 460 + OFFSET_X, 1, 87.7 * mirror, -260.1 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 87.7 * mirror, -260.1 , 0 );

setScaleKey( spep_0 + 460 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 3.79, 3.79 );

setRotateKey( spep_0 + 460 + OFFSET_X, 1, 314.8 * mirror );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, 314.8 * mirror );


--敵の動き6
setDisp( spep_0 + 468 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 472 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 468 + OFFSET_X, 1, 16 * mirror, -124.2 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 16 * mirror, -124.2 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -21 * mirror, -129.2 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -21 * mirror, -129.2 , 0 );

setScaleKey( spep_0 + 468 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 3.79, 3.79 );

setRotateKey( spep_0 + 468 + OFFSET_X, 1, 314.8 * mirror );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, 314.8 * mirror );

--敵の動き7
setDisp( spep_0 + 474 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 500 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 474 + OFFSET_X, 1, 10.1 * mirror, 7.4 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 10.1 * mirror, 7.4 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -124.4 * mirror, -52.2 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -124.4 * mirror, -52.2 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -117.1 * mirror, -17.9 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -117.1 * mirror, -17.9 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -112.2 * mirror, -42.6 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -112.2 * mirror, -42.6 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -117.1 * mirror, -37.6 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -117.1 * mirror, -37.6 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -134.4 * mirror, -54.9 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -134.4 * mirror, -54.9 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -127 * mirror, -57.4 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -127 * mirror, -57.4 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -89 * mirror, -47.9 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -89 * mirror, -47.9 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -22.6 * mirror, -47.9 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -22.6 * mirror, -47.9 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 85.3 * mirror, -51.3 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 85.3 * mirror, -51.3 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 167.6 * mirror, -46.5 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 167.6 * mirror, -46.5 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 204 * mirror, -49.7 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 204 * mirror, -49.7 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 232.4 * mirror, -54.4 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 232.4 * mirror, -54.4 , 0 );

setScaleKey( spep_0 + 474 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 3.52, 3.52 );

setRotateKey( spep_0 + 474 + OFFSET_X, 1, 349.2 * mirror );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, 349.2 * mirror );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, 329.7 * mirror );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, 329.7 * mirror );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, 328.3 * mirror );
setRotateKey( spep_0 + 491 + OFFSET_X, 1, 328.3 * mirror );
setRotateKey( spep_0 + 492 + OFFSET_X, 1, 327.8 * mirror );
setRotateKey( spep_0 + 500 + OFFSET_X, 1, 327.8 * mirror );


--敵の動き8
setDisp( spep_0 + 502 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 524 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 502 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 502 + OFFSET_X, 1, -293.2 * mirror, -318.4 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -293.2 * mirror, -318.4 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -201.3 * mirror, -266.1 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -201.3 * mirror, -266.1 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -259.5 * mirror, -331.3 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -259.5 * mirror, -331.3 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -295.9 * mirror, -315.5 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -295.9 * mirror, -315.5 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -249.9 * mirror, -323.4 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -249.9 * mirror, -323.4 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -275.4 * mirror, -328.3 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -275.4 * mirror, -328.3 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -310.1 * mirror, -374.2 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -310.1 * mirror, -374.2 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -348.3 * mirror, -456.6 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -348.3 * mirror, -456.6 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -437.5 * mirror, -490.7 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -437.5 * mirror, -490.7 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -425.3 * mirror, -530.1 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -425.3 * mirror, -530.1 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -284.2 * mirror, -502.6 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -284.2 * mirror, -502.6 , 0 );

setScaleKey( spep_0 + 502 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 5.26, 5.26 );

setRotateKey( spep_0 + 502 + OFFSET_X, 1, 323.3 * mirror );
setRotateKey( spep_0 + 503 + OFFSET_X, 1, 323.3 * mirror );
setRotateKey( spep_0 + 504 + OFFSET_X, 1, 326.8 * mirror );
setRotateKey( spep_0 + 505 + OFFSET_X, 1, 326.8 * mirror );
setRotateKey( spep_0 + 506 + OFFSET_X, 1, 331.3 * mirror );
setRotateKey( spep_0 + 509 + OFFSET_X, 1, 331.3 * mirror );
setRotateKey( spep_0 + 510 + OFFSET_X, 1, 332.8 * mirror );
setRotateKey( spep_0 + 511 + OFFSET_X, 1, 332.8 * mirror );
setRotateKey( spep_0 + 512 + OFFSET_X, 1, 332.3 * mirror );
setRotateKey( spep_0 + 513 + OFFSET_X, 1, 332.3 * mirror );
setRotateKey( spep_0 + 514 + OFFSET_X, 1, 333.3 * mirror );
setRotateKey( spep_0 + 515 + OFFSET_X, 1, 333.3 * mirror );
setRotateKey( spep_0 + 516 + OFFSET_X, 1, 330.2 * mirror );
setRotateKey( spep_0 + 517 + OFFSET_X, 1, 330.2 * mirror );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, 330.6 * mirror );
setRotateKey( spep_0 + 521 + OFFSET_X, 1, 330.6 * mirror );
setRotateKey( spep_0 + 522 + OFFSET_X, 1, 331.1 * mirror );
setRotateKey( spep_0 + 524 + OFFSET_X, 1, 331.1 * mirror );


--敵の動き9
setDisp( spep_0 + 526 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 546 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 526 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 536 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 526 + OFFSET_X, 1, -329.6 * mirror, -207 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -329.6 * mirror, -207 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 15.5 * mirror, -55.9 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 15.5 * mirror, -55.9 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -64 * mirror, -157.6 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -64 * mirror, -157.6 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -96.3 * mirror, -207.3 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -96.3 * mirror, -207.3 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -19.5 * mirror, -206.2 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, -19.5 * mirror, -206.2 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 119.7 * mirror, -357 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 119.7 * mirror, -357 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 216.9 * mirror, -376.3 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 216.9 * mirror, -376.3 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 217.1 * mirror, -450.7 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 217.1 * mirror, -450.7 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 577.8 * mirror, -485.1 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 577.8 * mirror, -485.1 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 368.9 * mirror, -585.3 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 368.9 * mirror, -585.3 , 0 );

setScaleKey( spep_0 + 526 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 527 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 7.42, 7.42 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 7.42, 7.42 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 7.88, 7.88 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 7.88, 7.88 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 8.6, 8.6 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 8.6, 8.6 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 8.89, 8.89 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 8.89, 8.89 );

setRotateKey( spep_0 + 526 + OFFSET_X, 1, 277.4 * mirror );
setRotateKey( spep_0 + 527 + OFFSET_X, 1, 277.4 * mirror );
setRotateKey( spep_0 + 528 + OFFSET_X, 1, 279.4 * mirror );
setRotateKey( spep_0 + 529 + OFFSET_X, 1, 279.4 * mirror );
setRotateKey( spep_0 + 530 + OFFSET_X, 1, 277.2 * mirror );
setRotateKey( spep_0 + 531 + OFFSET_X, 1, 277.2 * mirror );
setRotateKey( spep_0 + 532 + OFFSET_X, 1, 275.5 * mirror );
setRotateKey( spep_0 + 533 + OFFSET_X, 1, 275.5 * mirror );
setRotateKey( spep_0 + 534 + OFFSET_X, 1, 274.1 * mirror );
setRotateKey( spep_0 + 535 + OFFSET_X, 1, 274.1 * mirror );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, 413.3 * mirror );
setRotateKey( spep_0 + 537 + OFFSET_X, 1, 413.3 * mirror );
setRotateKey( spep_0 + 538 + OFFSET_X, 1, 414.8 * mirror );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, 414.8 * mirror );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, 420.5 * mirror );
setRotateKey( spep_0 + 541 + OFFSET_X, 1, 420.5 * mirror );
setRotateKey( spep_0 + 542 + OFFSET_X, 1, 415.3 * mirror );
setRotateKey( spep_0 + 543 + OFFSET_X, 1, 415.3 * mirror );
setRotateKey( spep_0 + 544 + OFFSET_X, 1, 413.4 * mirror );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, 413.4 * mirror );


--敵の動き10
setDisp( spep_0 + 548 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 552 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 548 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 548 + OFFSET_X, 1, 300.6 * mirror, -150.1 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 300.6 * mirror, -150.1 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 720.4 * mirror, -406.6 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 720.4 * mirror, -406.6 , 0 );

setScaleKey( spep_0 + 548 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 2.83, 2.83 );

setRotateKey( spep_0 + 548 + OFFSET_X, 1, 343.2 * mirror );
setRotateKey( spep_0 + 552 + OFFSET_X, 1, 343.2 * mirror );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 0, 1035, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1503, "", 0, 0, 0, -1);
--セリフカットイン
--SE003 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);
--気ダメ
SE004 = playSeVer2( spep_0 + 20, 1504, "", 0, 0, 0, -1);
--オーラ
SE005 = playSeVer2( spep_0 + 26, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE005, 50 );
SE006 = playSeVer2( spep_0 + 50, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE006, 50 );
SE007 = playSeVer2( spep_0 + 74, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE007, 50 );
--地面から気があふれる
SE008 = playSeVer2( spep_0 + 74, 1179, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 78, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE009, 58 );
--オーラ
SE010 = playSeVer2( spep_0 + 98, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE010, 50 );
SE011 = playSeVer2( spep_0 + 122, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE011, 50 );
--走り出す
SE012 = playSeVer2( spep_0 + 135, 1117, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 157, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 157, SE013, 39 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 232; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
--stopSe( SP_dodge - 12, SE015, 0);
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
-- 回避しなかった場合
-----------------------------
--瞬間移動
SE014 = playSeVer2( spep_0 + 202, 1497, "",spep_0 + 244, 0, 19, -1);
SE015 = playSeVer2( spep_0 + 215, 1109, "", 0, 0, 0, -1);
--振りかぶる
SE016 = playSeVer2( spep_0 + 231, 1116, "",spep_0 + 279, 0, 16, -1);
--殴り飛ばす
SE017 = playSeVer2( spep_0 + 253, 1153, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 253, 1187, "", 0, 0, 0, -1);
--敵飛んでいく
SE019 = playSeVer2( spep_0 + 263, 1121, "",spep_0 + 393, 0, 79, -1);
--地面激突
SE020 = playSeVer2( spep_0 + 297, 1061, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 297, 1023, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 319, 1024, "", 0, 0, 0, -1);
--追いかける
SE023 = playSeVer2( spep_0 + 416, 1499, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 416, SE023, 65 );
SE024 = playSeVer2( spep_0 + 416, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 416, SE024, 176 );
--パンチ
SE025 = playSeVer2( spep_0 + 460, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE025, 143 );
SE026 = playSeVer2( spep_0 + 465, 1359, "",spep_0 + 514, 0, 19, -1);
setSeVolumeByWorkId( spep_0 + 465, SE026, 75 );
SE027 = playSeVer2( spep_0 + 467, 1012, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 467, 1110, "", 0, 0, 0, -1);
--パンチ２
SE029 = playSeVer2( spep_0 + 496, 1110, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 496, 1153, "", 0, 0, 0, -1);
--飛び上がる
SE031 = playSeVer2( spep_0 + 519, 1003, "", 0, 0, 0, -1);
--蹴り飛ばす
SE032 = playSeVer2( spep_0 + 535, 1187, "",spep_0 + 608, 0, 7, -1);
SE033 = playSeVer2( spep_0 + 535, 1120, "",spep_0 + 609, 0, 8, -1);
--瞬間移動
SE034 = playSeVer2( spep_0 + 577, 1497, "",spep_0 + 615, 0, 15, -1);
setSeVolumeByWorkId( spep_0 + 577, SE034, 46 );
SE035 = playSeVer2( spep_0 + 590, 1109, "",spep_0 + 615, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 590, SE035, 115 );
--カードカットイン
--SE036 = playSeVer2( spep_0 + 597, 1035, "", 0, 0, 0, -1);
--空中音
SE037 = playSeVer2( spep_0 + 688, 1278, "",spep_0 + 851, 0, 90, -1);
setSeVolumeByWorkId( spep_0 + 688, SE037, 67 );
SE038 = playSeVer2( spep_0 + 688, 1452, "", 0, 0, 0, -1);
setTimeStretch( SE038, 1.43, 30, 4 );
--気弾溜め
SE039 = playSeVer2( spep_0 + 733, 1443, "",spep_0 + 805, 7, 24, -1);
setSeVolumeByWorkId( spep_0 + 733, SE039, 145 );
setStartTimeMs( SE039,  750 );
SE040 = playSeVer2( spep_0 + 720, 1328, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 731, 1296, "",spep_0 + 807, 0, 25, -1);
SE042 = playSeVer2( spep_0 + 731, 1204, "",spep_0 + 807, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 731, SE042, 127 );
setPitch( spep_0 + 731, SE042, 200 );
setTimeStretch( SE042, 1.13, 30, 4 );
SE043 = playSeVer2( spep_0 + 731, 1239, "",spep_0 + 807, 0, 24, -1);
--気弾発射
SE044 = playSeVer2( spep_0 + 777, 1145, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 777, 1027, "", 0, 0, 0, -1);
--爆発
SE046 = playSeVer2( spep_0 + 828, 1067, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 828, 1159, "", 0, 0, 0, -1);
--気弾溜め２
SE048 = playSeVer2( spep_0 + 879, 1443, "",spep_0 + 979, 7, 24, -1);
setSeVolumeByWorkId( spep_0 + 879, SE048, 164 );
setStartTimeMs( SE048,  750 );
SE049 = playSeVer2( spep_0 + 866, 1328, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 877, 1296, "",spep_0 + 979, 0, 23, -1);
setPitch( spep_0 + 877, SE050, 200 );
setTimeStretch( SE050, 1.13, 30, 4 );
SE051 = playSeVer2( spep_0 + 877, 1204, "",spep_0 + 980, 0, 25, -1);
setPitch( spep_0 + 877, SE051, 400 );
setTimeStretch( SE051, 1.27, 30, 4 );
SE052 = playSeVer2( spep_0 + 877, 1239, "",spep_0 + 980, 0, 25, -1);
setPitch( spep_0 + 877, SE052, 400 );
setTimeStretch( SE052, 1.27, 30, 4 );
--気弾発射２
SE053 = playSeVer2( spep_0 + 954, 1511, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 954, SE053, 69 );
SE054 = playSeVer2( spep_0 + 954, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 954, SE054, 122 );
--気弾直下に落ちる
SE055 = playSeVer2( spep_0 + 987, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 987, SE055, 153 );
SE056 = playSeVer2( spep_0 + 987, 1424, "",spep_0 + 1039, 0, 19, -1);
setSeVolumeByWorkId( spep_0 + 987, SE056, 145 );
--爆発
SE057 = playSeVer2( spep_0 + 1015, 1427, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_0 + 1020, 1068, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_0 + 1024, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1024, SE059, 69 );
SE060 = playSeVer2( spep_0 + 1029, 1159, "", 0, 0, 0, -1);


-----------------------------
-- 終了
-----------------------------

fadeKoLabel(1,0.5)
hideKoScreen();
dealDamage( spep_0 + 1060); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 1180