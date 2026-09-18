--1033840:UR_メタルクウラ軍団_必殺技：スーパーノヴァ
--sp_effect_a1_00538
--sp3023

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164505; --崖を降りる〜フィニッシュまで ef_001

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

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！

        timing_skip = 954;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --気弾発射
        SE040 = playSeVer2( spep_0 + 957, 1027, "", 0, 0, 0, -1);
        SE041 = playSeVer2( spep_0 + 957, 1193, "",spep_0 + 1084, 0, 32, -1);
        SE042 = playSeVer2( spep_0 + 957, 1430, "",spep_0 + 1086, 0, 28, -1);
        setSeVolumeByWorkId( spep_0 + 957, SE042, 240 );
        
    else
        setupMovie(0, SP_01, 0, 1);
    end

else

    setupMovie(0, SP_01, 0, 1);

    mirror = -1;

end

------------------------------------------------------------------------------------------------------------
-- 共通演出
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 冒頭 〜 カードカットイン前まで
-------------------------------------------------
MAX_FRAME_0 = 1172;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 崖を降りる〜フィニッシュまで(ef_001)
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
spep_x = spep_0 + 598; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
--   speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--   setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end
--[[
ctgogo_x = 50 -- 演出によって白目にかからないように調整

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, ctgogo_x * mirror, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0 * mirror, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09 * mirror, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39 * mirror, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69 * mirror, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
]]

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 202 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 488 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 202 + OFFSET_X, 1, 117 );
changeAnimeBySide( spep_0 + 244 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 264 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 290 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 338 + OFFSET_X, 1, 107 );
changeAnimeBySide( spep_0 + 360 + OFFSET_X, 1, 105 );
changeAnimeBySide( spep_0 + 402 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 428 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 468 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 202 + OFFSET_X, 1, 755.5 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 755.5 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 712.2 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 712.2 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 669 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 669 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 625.7 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 625.7 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 582.5 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 582.5 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 539.3 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 539.3 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 496 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 496 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 452.8 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 452.8 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 409.5 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 409.5 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 366.3 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 366.3 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 323.1 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 323.1 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 279.8 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 279.8 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 236.6 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 236.6 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 193.3 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 193.3 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 150.1 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 150.1 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 106.9 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 106.9 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 99.1 * mirror, -110 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 99.1 * mirror, -110 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 91.4 * mirror, -110 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 91.4 * mirror, -110 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 83.6 * mirror, -110 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 83.6 * mirror, -110 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 75.9 * mirror, -110 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 75.9 * mirror, -110 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 68.1 * mirror, -110 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 68.1 * mirror, -110 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 60.5 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 60.5 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 76 * mirror, -125.6 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 76 * mirror, -125.6 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 54.2 * mirror, -94.5 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 54.2 * mirror, -94.5 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 55.8 * mirror, -113.2 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 55.8 * mirror, -113.2 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 60.5 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 60.5 * mirror, -110.1 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 74.6 * mirror, -47.1 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 74.6 * mirror, -47.1 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 70.7 * mirror, -29 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 70.7 * mirror, -29 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 74.7 * mirror, -45.2 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 74.7 * mirror, -45.2 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 97.3 * mirror, -55.1 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 97.3 * mirror, -55.1 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 77.9 * mirror, -21.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 77.9 * mirror, -21.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 86.6 * mirror, -34.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 86.6 * mirror, -34.6 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 89.1 * mirror, -32.1 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 89.1 * mirror, -32.1 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 91.5 * mirror, -29.5 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 91.5 * mirror, -29.5 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 93.9 * mirror, -27 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 93.9 * mirror, -27 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 96.3 * mirror, -24.5 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 96.3 * mirror, -24.5 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 98.7 * mirror, -22 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 98.7 * mirror, -22 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 101.1 * mirror, -19.5 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 101.1 * mirror, -19.5 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 103.5 * mirror, -17 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 103.5 * mirror, -17 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 77.1 * mirror, -57.3 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 77.1 * mirror, -57.3 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 74.3 * mirror, -73.4 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 74.3 * mirror, -73.4 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 61.4 * mirror, -42.6 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 61.4 * mirror, -42.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 71.8 * mirror, -61.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 71.8 * mirror, -61.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 88.7 * mirror, -75.8 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 88.7 * mirror, -75.8 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 63.6 * mirror, -46.6 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 63.6 * mirror, -46.6 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 61.9 * mirror, -67.1 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 61.9 * mirror, -67.1 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 63.4 * mirror, -65.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 63.4 * mirror, -65.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 55.4 * mirror, -70.8 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 55.4 * mirror, -70.8 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 56.8 * mirror, -69.6 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 56.8 * mirror, -69.6 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 48.8 * mirror, -74.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 48.8 * mirror, -74.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 50.2 * mirror, -73.3 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 50.2 * mirror, -73.3 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 42.2 * mirror, -78.2 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 42.2 * mirror, -78.2 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 43.7 * mirror, -77 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 43.7 * mirror, -77 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 35.7 * mirror, -81.9 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 35.7 * mirror, -81.9 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 37.1 * mirror, -80.7 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 37.1 * mirror, -80.7 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 29.1 * mirror, -85.6 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 29.1 * mirror, -85.6 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 30.5 * mirror, -84.4 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 30.5 * mirror, -84.4 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 27.2 * mirror, -86.2 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 27.2 * mirror, -86.2 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 24 * mirror, -88.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 24 * mirror, -88.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 20.7 * mirror, -89.9 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 20.7 * mirror, -89.9 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 17.4 * mirror, -91.7 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 17.4 * mirror, -91.7 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 45.7 * mirror, -4.9 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 45.7 * mirror, -4.9 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 74 * mirror, 82 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 74 * mirror, 82 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 102.3 * mirror, 169 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 102.3 * mirror, 169 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 99.1 * mirror, 195.1 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 99.1 * mirror, 195.1 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 103.8 * mirror, 186.9 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 103.8 * mirror, 186.9 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 111.6 * mirror, 200.4 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 111.6 * mirror, 200.4 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 259 * mirror, 362.5 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 259 * mirror, 362.5 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 390.5 * mirror, 507.3 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 390.5 * mirror, 507.3 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 512.6 * mirror, 645.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 512.6 * mirror, 645.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 644.1 * mirror, 790.7 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 644.1 * mirror, 790.7 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 766.2 * mirror, 929.3 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 766.2 * mirror, 929.3 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 897.7 * mirror, 1074.1 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 897.7 * mirror, 1074.1 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 893 * mirror, 1071 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 893 * mirror, 1071 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -750.3 * mirror, -945.2 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -750.3 * mirror, -945.2 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -534 * mirror, -651.8 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -534 * mirror, -651.8 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -345.1 * mirror, -401.4 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -345.1 * mirror, -401.4 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -199 * mirror, -202 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -199 * mirror, -202 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -73.6 * mirror, -36.8 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -73.6 * mirror, -36.8 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 15.8 * mirror, 86.3 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 15.8 * mirror, 86.3 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 91.2 * mirror, 184.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 91.2 * mirror, 184.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 137.1 * mirror, 249.2 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 137.1 * mirror, 249.2 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 175.8 * mirror, 297.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 175.8 * mirror, 297.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 191.7 * mirror, 322.4 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 191.7 * mirror, 322.4 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 206.9 * mirror, 339.7 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 206.9 * mirror, 339.7 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 206.1 * mirror, 341.8 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 206.1 * mirror, 341.8 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 211.4 * mirror, 345.7 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 211.4 * mirror, 345.7 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -693.1 * mirror, -801.1 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -693.1 * mirror, -801.1 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -600.8 * mirror, -692.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -600.8 * mirror, -692.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -508.6 * mirror, -583.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -508.6 * mirror, -583.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -416.3 * mirror, -474.5 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -416.3 * mirror, -474.5 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -324 * mirror, -365.6 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -324 * mirror, -365.6 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -231.8 * mirror, -256.8 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -231.8 * mirror, -256.8 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -139.5 * mirror, -147.9 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -139.5 * mirror, -147.9 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -47.2 * mirror, -39 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -47.2 * mirror, -39 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -60.1 * mirror, 25.7 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -60.1 * mirror, 25.7 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -47.5 * mirror, 6.1 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -47.5 * mirror, 6.1 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -72.2 * mirror, 33.1 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -72.2 * mirror, 33.1 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -73.5 * mirror, 10.4 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -73.5 * mirror, 10.4 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -56.1 * mirror, -6.1 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -56.1 * mirror, -6.1 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -74.5 * mirror, 5.3 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -74.5 * mirror, 5.3 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -77.4 * mirror, 1.3 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -77.4 * mirror, 1.3 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -80.3 * mirror, -2.8 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -80.3 * mirror, -2.8 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -83.2 * mirror, -6.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -83.2 * mirror, -6.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -86.1 * mirror, -10.9 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -86.1 * mirror, -10.9 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -89 * mirror, -15 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -89 * mirror, -15 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -91.9 * mirror, -19.1 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -91.9 * mirror, -19.1 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -94.7 * mirror, -23.1 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -94.7 * mirror, -23.1 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -46.3 * mirror, -19.3 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -46.3 * mirror, -19.3 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 58.5 * mirror, 41.5 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 58.5 * mirror, 41.5 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 60.5 * mirror, 44.4 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 60.5 * mirror, 44.4 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 78.1 * mirror, 31.7 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 78.1 * mirror, 31.7 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 58.4 * mirror, 65.7 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 58.4 * mirror, 65.7 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 62.1 * mirror, 49.9 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 62.1 * mirror, 49.9 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 83.3 * mirror, 34.8 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 83.3 * mirror, 34.8 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 68.9 * mirror, 47.6 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 68.9 * mirror, 47.6 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 69.9 * mirror, 44.9 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 69.9 * mirror, 44.9 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 71 * mirror, 42.3 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 71 * mirror, 42.3 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 72 * mirror, 39.6 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 72 * mirror, 39.6 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 73.1 * mirror, 36.9 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 73.1 * mirror, 36.9 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 74.1 * mirror, 34.2 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 74.1 * mirror, 34.2 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 75.2 * mirror, 31.5 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 75.2 * mirror, 31.5 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 76.3 * mirror, 28.8 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 76.3 * mirror, 28.8 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 77.3 * mirror, 26.2 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 77.3 * mirror, 26.2 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 78.4 * mirror, 23.5 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 78.4 * mirror, 23.5 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 79.4 * mirror, 20.8 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 79.4 * mirror, 20.8 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 80.5 * mirror, 18.1 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 80.5 * mirror, 18.1 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 81.5 * mirror, 15.4 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 81.5 * mirror, 15.4 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -11.1 * mirror, -240 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -11.1 * mirror, -240 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -69.1 * mirror, -332 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -69.1 * mirror, -332 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -164.3 * mirror, -377.3 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -164.3 * mirror, -377.3 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -236.2 * mirror, -472.5 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -236.2 * mirror, -472.5 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -289.5 * mirror, -561.3 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -289.5 * mirror, -561.3 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -384.7 * mirror, -606.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -384.7 * mirror, -606.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -456.6 * mirror, -701.8 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -456.6 * mirror, -701.8 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -509.9 * mirror, -790.7 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -509.9 * mirror, -790.7 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -598.8 * mirror, -851.6 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -598.8 * mirror, -851.6 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -677 * mirror, -931.2 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -677 * mirror, -931.2 , 0 );

setScaleKey( spep_0 + 202 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 2.69, 2.69 );

setRotateKey( spep_0 + 202 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -42 * mirror );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -42 * mirror );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -41 * mirror );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -41 * mirror );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -40 * mirror );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, -40 * mirror );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -39 * mirror );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -39 * mirror );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -37.9 * mirror );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -37.9 * mirror );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -36.9 * mirror );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -36.9 * mirror );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -35.9 * mirror );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -35.9 * mirror );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -34.9 * mirror );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -34.9 * mirror );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -33.9 * mirror );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -33.9 * mirror );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -32.9 * mirror );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -32.9 * mirror );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -4 * mirror );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -4 * mirror );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -2.9 * mirror );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -2.9 * mirror );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -1.8 * mirror );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -1.8 * mirror );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -0.8 * mirror );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, -0.8 * mirror );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 0.3 * mirror );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 0.3 * mirror );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 1.4 * mirror );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 1.4 * mirror );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 2.5 * mirror );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 2.5 * mirror );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 3.6 * mirror );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 3.6 * mirror );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 4.7 * mirror );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 4.7 * mirror );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 5.7 * mirror );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, 5.7 * mirror );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 6.8 * mirror );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 6.8 * mirror );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 7.9 * mirror );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 7.9 * mirror );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 9 * mirror );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 9 * mirror );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -83 * mirror );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -83 * mirror );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -82.5 * mirror );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -82.5 * mirror );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -82 * mirror );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -82 * mirror );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -83.1 * mirror );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -83.1 * mirror );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -84.1 * mirror );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -84.1 * mirror );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -85.2 * mirror );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -85.2 * mirror );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -86.2 * mirror );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -86.2 * mirror );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -87.3 * mirror );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -87.3 * mirror );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -88.3 * mirror );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, -88.3 * mirror );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -89.4 * mirror );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -89.4 * mirror );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -90.4 * mirror );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, -90.4 * mirror );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, -91.5 * mirror );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, -91.5 * mirror );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, -92.6 * mirror );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -92.6 * mirror );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -93.6 * mirror );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -93.6 * mirror );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -94.7 * mirror );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -94.7 * mirror );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -95.7 * mirror );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -95.7 * mirror );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -96.8 * mirror );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -96.8 * mirror );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -97.8 * mirror );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -97.8 * mirror );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -98.9 * mirror );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -98.9 * mirror );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -99.9 * mirror );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -99.9 * mirror );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -101 * mirror );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -101 * mirror );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -72 * mirror );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -72 * mirror );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -43 * mirror );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, -43 * mirror );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -14 * mirror );
setRotateKey( spep_0 + 359 + OFFSET_X, 1, -14 * mirror );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, 21 * mirror );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, 21 * mirror );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 26 * mirror );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, 26 * mirror );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, -53 * mirror );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, -53 * mirror );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, -54.3 * mirror );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, -54.3 * mirror );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, -55.7 * mirror );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, -55.7 * mirror );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, -57 * mirror );
setRotateKey( spep_0 + 409 + OFFSET_X, 1, -57 * mirror );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, -58.3 * mirror );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, -58.3 * mirror );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, -59.7 * mirror );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, -59.7 * mirror );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, -61 * mirror );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, -61 * mirror );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, -62.3 * mirror );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, -62.3 * mirror );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, -63.7 * mirror );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, -63.7 * mirror );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, -65 * mirror );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, -65 * mirror );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, -66.3 * mirror );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, -66.3 * mirror );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -67.7 * mirror );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, -67.7 * mirror );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, -69 * mirror );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -69 * mirror );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -4 * mirror );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, -4 * mirror );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, -2.5 * mirror );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, -2.5 * mirror );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, -0.6 * mirror );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, -0.6 * mirror );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, 1.3 * mirror );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, 1.3 * mirror );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, 3.1 * mirror );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, 3.1 * mirror );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, 5 * mirror );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, 5 * mirror );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, 5.4 * mirror );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, 5.4 * mirror );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, 5.9 * mirror );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, 5.9 * mirror );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, 6.3 * mirror );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, 6.3 * mirror );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, 6.7 * mirror );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, 6.7 * mirror );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, 7.1 * mirror );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, 7.1 * mirror );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, 7.6 * mirror );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, 7.6 * mirror );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, 8 * mirror );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, 8 * mirror );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, 8.4 * mirror );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, 8.4 * mirror );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, 8.9 * mirror );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, 8.9 * mirror );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, 9.3 * mirror );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, 9.3 * mirror );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, 9.7 * mirror );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, 9.7 * mirror );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, 10.1 * mirror );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, 10.1 * mirror );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, 10.6 * mirror );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, 10.6 * mirror );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, 11 * mirror );
setRotateKey( spep_0 + 467 + OFFSET_X, 1, 11 * mirror );
setRotateKey( spep_0 + 468 + OFFSET_X, 1, -140 * mirror );
setRotateKey( spep_0 + 469 + OFFSET_X, 1, -140 * mirror );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, -144.8 * mirror );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, -144.8 * mirror );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, -149.6 * mirror );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, -149.6 * mirror );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, -154.3 * mirror );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, -154.3 * mirror );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, -159.1 * mirror );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, -159.1 * mirror );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, -163.9 * mirror );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, -163.9 * mirror );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, -168.7 * mirror );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, -168.7 * mirror );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, -173.4 * mirror );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, -173.4 * mirror );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, -178.2 * mirror );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, -178.2 * mirror );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, -183 * mirror );
setRotateKey( spep_0 + 488 + OFFSET_X, 1, -183 * mirror );

--敵の動き2

setDisp( spep_0 + 502 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 516 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 502 + OFFSET_X, 1, 429.3 * mirror, 571.3 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 429.3 * mirror, 571.3 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 356.5 * mirror, 457 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 356.5 * mirror, 457 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 283.8 * mirror, 342.7 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 283.8 * mirror, 342.7 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 211 * mirror, 228.4 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 211 * mirror, 228.4 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 138.3 * mirror, 114.1 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 138.3 * mirror, 114.1 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 65.6 * mirror, -0.2 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 65.6 * mirror, -0.2 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -7.2 * mirror, -114.5 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -7.2 * mirror, -114.5 , 0 );

setScaleKey( spep_0 + 502 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 0.18, 0.18 );

setRotateKey( spep_0 + 502 + OFFSET_X, 1, 147.2 * mirror );
setRotateKey( spep_0 + 503 + OFFSET_X, 1, 147.2 * mirror );
setRotateKey( spep_0 + 504 + OFFSET_X, 1, 147.1 * mirror );
setRotateKey( spep_0 + 507 + OFFSET_X, 1, 147.1 * mirror );
setRotateKey( spep_0 + 508 + OFFSET_X, 1, 147 * mirror );
setRotateKey( spep_0 + 513 + OFFSET_X, 1, 147 * mirror );
setRotateKey( spep_0 + 514 + OFFSET_X, 1, 146.9 * mirror );
setRotateKey( spep_0 + 516 + OFFSET_X, 1, 146.9 * mirror );

--敵の動き3

setDisp( spep_0 + 988 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1048 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 988 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 988 + OFFSET_X, 1, 17.8 * mirror, 28.3 , 0 );
setMoveKey( spep_0 + 989 + OFFSET_X, 1, 17.8 * mirror, 28.3 , 0 );
setMoveKey( spep_0 + 990 + OFFSET_X, 1, 0.2 * mirror, 30.7 , 0 );
setMoveKey( spep_0 + 991 + OFFSET_X, 1, 0.2 * mirror, 30.7 , 0 );
setMoveKey( spep_0 + 992 + OFFSET_X, 1, 9.5 * mirror, 36 , 0 );
setMoveKey( spep_0 + 993 + OFFSET_X, 1, 9.5 * mirror, 36 , 0 );
setMoveKey( spep_0 + 994 + OFFSET_X, 1, 0.8 * mirror, 13.3 , 0 );
setMoveKey( spep_0 + 995 + OFFSET_X, 1, 0.8 * mirror, 13.3 , 0 );
setMoveKey( spep_0 + 996 + OFFSET_X, 1, 0 * mirror, 29.4 , 0 );
setMoveKey( spep_0 + 997 + OFFSET_X, 1, 0 * mirror, 29.4 , 0 );
setMoveKey( spep_0 + 998 + OFFSET_X, 1, 20.7 * mirror, 23.4 , 0 );
setMoveKey( spep_0 + 999 + OFFSET_X, 1, 20.7 * mirror, 23.4 , 0 );
setMoveKey( spep_0 + 1000 + OFFSET_X, 1, 15.4 * mirror, 28.4 , 0 );
setMoveKey( spep_0 + 1001 + OFFSET_X, 1, 15.4 * mirror, 28.4 , 0 );
setMoveKey( spep_0 + 1002 + OFFSET_X, 1, 20.6 * mirror, 22.8 , 0 );
setMoveKey( spep_0 + 1003 + OFFSET_X, 1, 20.6 * mirror, 22.8 , 0 );
setMoveKey( spep_0 + 1004 + OFFSET_X, 1, 15.3 * mirror, 27.8 , 0 );
setMoveKey( spep_0 + 1005 + OFFSET_X, 1, 15.3 * mirror, 27.8 , 0 );
setMoveKey( spep_0 + 1006 + OFFSET_X, 1, 20.5 * mirror, 22.1 , 0 );
setMoveKey( spep_0 + 1007 + OFFSET_X, 1, 20.5 * mirror, 22.1 , 0 );
setMoveKey( spep_0 + 1008 + OFFSET_X, 1, 15.2 * mirror, 27.1 , 0 );
setMoveKey( spep_0 + 1009 + OFFSET_X, 1, 15.2 * mirror, 27.1 , 0 );
setMoveKey( spep_0 + 1010 + OFFSET_X, 1, 20.4 * mirror, 21.5 , 0 );
setMoveKey( spep_0 + 1011 + OFFSET_X, 1, 20.4 * mirror, 21.5 , 0 );
setMoveKey( spep_0 + 1012 + OFFSET_X, 1, 15.1 * mirror, 26.5 , 0 );
setMoveKey( spep_0 + 1013 + OFFSET_X, 1, 15.1 * mirror, 26.5 , 0 );
setMoveKey( spep_0 + 1014 + OFFSET_X, 1, 20.3 * mirror, 20.9 , 0 );
setMoveKey( spep_0 + 1015 + OFFSET_X, 1, 20.3 * mirror, 20.9 , 0 );
setMoveKey( spep_0 + 1016 + OFFSET_X, 1, 15 * mirror, 25.9 , 0 );
setMoveKey( spep_0 + 1017 + OFFSET_X, 1, 15 * mirror, 25.9 , 0 );
setMoveKey( spep_0 + 1018 + OFFSET_X, 1, 20.2 * mirror, 20.2 , 0 );
setMoveKey( spep_0 + 1019 + OFFSET_X, 1, 20.2 * mirror, 20.2 , 0 );
setMoveKey( spep_0 + 1020 + OFFSET_X, 1, 14.9 * mirror, 25.2 , 0 );
setMoveKey( spep_0 + 1021 + OFFSET_X, 1, 14.9 * mirror, 25.2 , 0 );
setMoveKey( spep_0 + 1022 + OFFSET_X, 1, 20.1 * mirror, 19.6 , 0 );
setMoveKey( spep_0 + 1023 + OFFSET_X, 1, 20.1 * mirror, 19.6 , 0 );
setMoveKey( spep_0 + 1024 + OFFSET_X, 1, 14.8 * mirror, 24.6 , 0 );
setMoveKey( spep_0 + 1025 + OFFSET_X, 1, 14.8 * mirror, 24.6 , 0 );
setMoveKey( spep_0 + 1026 + OFFSET_X, 1, 20 * mirror, 19 , 0 );
setMoveKey( spep_0 + 1027 + OFFSET_X, 1, 20 * mirror, 19 , 0 );
setMoveKey( spep_0 + 1028 + OFFSET_X, 1, 14.8 * mirror, 23.9 , 0 );
setMoveKey( spep_0 + 1029 + OFFSET_X, 1, 14.8 * mirror, 23.9 , 0 );
setMoveKey( spep_0 + 1030 + OFFSET_X, 1, 20 * mirror, 18.3 , 0 );
setMoveKey( spep_0 + 1031 + OFFSET_X, 1, 20 * mirror, 18.3 , 0 );
setMoveKey( spep_0 + 1032 + OFFSET_X, 1, 14.7 * mirror, 23.3 , 0 );
setMoveKey( spep_0 + 1033 + OFFSET_X, 1, 14.7 * mirror, 23.3 , 0 );
setMoveKey( spep_0 + 1034 + OFFSET_X, 1, 19.9 * mirror, 17.7 , 0 );
setMoveKey( spep_0 + 1035 + OFFSET_X, 1, 19.9 * mirror, 17.7 , 0 );
setMoveKey( spep_0 + 1036 + OFFSET_X, 1, 14.6 * mirror, 22.7 , 0 );
setMoveKey( spep_0 + 1037 + OFFSET_X, 1, 14.6 * mirror, 22.7 , 0 );
setMoveKey( spep_0 + 1038 + OFFSET_X, 1, 19.9 * mirror, 17 , 0 );
setMoveKey( spep_0 + 1039 + OFFSET_X, 1, 19.9 * mirror, 17 , 0 );
setMoveKey( spep_0 + 1040 + OFFSET_X, 1, 14.6 * mirror, 22 , 0 );
setMoveKey( spep_0 + 1041 + OFFSET_X, 1, 14.6 * mirror, 22 , 0 );
setMoveKey( spep_0 + 1042 + OFFSET_X, 1, 19.8 * mirror, 16.4 , 0 );
setMoveKey( spep_0 + 1043 + OFFSET_X, 1, 19.8 * mirror, 16.4 , 0 );
setMoveKey( spep_0 + 1044 + OFFSET_X, 1, 14.6 * mirror, 21.4 , 0 );
setMoveKey( spep_0 + 1045 + OFFSET_X, 1, 14.6 * mirror, 21.4 , 0 );
setMoveKey( spep_0 + 1046 + OFFSET_X, 1, 15.4 * mirror, 18.1 , 0 );
setMoveKey( spep_0 + 1048 + OFFSET_X, 1, 15.4 * mirror, 18.1 , 0 );

setScaleKey( spep_0 + 988 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 1048 + OFFSET_X, 1, 2.24, 2.24 );

setRotateKey( spep_0 + 988 + OFFSET_X, 1, 25.8 * mirror );
setRotateKey( spep_0 + 989 + OFFSET_X, 1, 25.8 * mirror );
setRotateKey( spep_0 + 990 + OFFSET_X, 1, 25.5 * mirror );
setRotateKey( spep_0 + 991 + OFFSET_X, 1, 25.5 * mirror );
setRotateKey( spep_0 + 992 + OFFSET_X, 1, 25.2 * mirror );
setRotateKey( spep_0 + 993 + OFFSET_X, 1, 25.2 * mirror );
setRotateKey( spep_0 + 994 + OFFSET_X, 1, 24.9 * mirror );
setRotateKey( spep_0 + 995 + OFFSET_X, 1, 24.9 * mirror );
setRotateKey( spep_0 + 996 + OFFSET_X, 1, 24.6 * mirror );
setRotateKey( spep_0 + 997 + OFFSET_X, 1, 24.6 * mirror );
setRotateKey( spep_0 + 998 + OFFSET_X, 1, 24.3 * mirror );
setRotateKey( spep_0 + 999 + OFFSET_X, 1, 24.3 * mirror );
setRotateKey( spep_0 + 1000 + OFFSET_X, 1, 24 * mirror );
setRotateKey( spep_0 + 1001 + OFFSET_X, 1, 24 * mirror );
setRotateKey( spep_0 + 1002 + OFFSET_X, 1, 23.7 * mirror );
setRotateKey( spep_0 + 1003 + OFFSET_X, 1, 23.7 * mirror );
setRotateKey( spep_0 + 1004 + OFFSET_X, 1, 23.4 * mirror );
setRotateKey( spep_0 + 1005 + OFFSET_X, 1, 23.4 * mirror );
setRotateKey( spep_0 + 1006 + OFFSET_X, 1, 23 * mirror );
setRotateKey( spep_0 + 1007 + OFFSET_X, 1, 23 * mirror );
setRotateKey( spep_0 + 1008 + OFFSET_X, 1, 22.7 * mirror );
setRotateKey( spep_0 + 1009 + OFFSET_X, 1, 22.7 * mirror );
setRotateKey( spep_0 + 1010 + OFFSET_X, 1, 22.4 * mirror );
setRotateKey( spep_0 + 1011 + OFFSET_X, 1, 22.4 * mirror );
setRotateKey( spep_0 + 1012 + OFFSET_X, 1, 22.1 * mirror );
setRotateKey( spep_0 + 1013 + OFFSET_X, 1, 22.1 * mirror );
setRotateKey( spep_0 + 1014 + OFFSET_X, 1, 21.8 * mirror );
setRotateKey( spep_0 + 1015 + OFFSET_X, 1, 21.8 * mirror );
setRotateKey( spep_0 + 1016 + OFFSET_X, 1, 21.5 * mirror );
setRotateKey( spep_0 + 1017 + OFFSET_X, 1, 21.5 * mirror );
setRotateKey( spep_0 + 1018 + OFFSET_X, 1, 21.2 * mirror );
setRotateKey( spep_0 + 1019 + OFFSET_X, 1, 21.2 * mirror );
setRotateKey( spep_0 + 1020 + OFFSET_X, 1, 20.9 * mirror );
setRotateKey( spep_0 + 1021 + OFFSET_X, 1, 20.9 * mirror );
setRotateKey( spep_0 + 1022 + OFFSET_X, 1, 20.6 * mirror );
setRotateKey( spep_0 + 1023 + OFFSET_X, 1, 20.6 * mirror );
setRotateKey( spep_0 + 1024 + OFFSET_X, 1, 20.2 * mirror );
setRotateKey( spep_0 + 1025 + OFFSET_X, 1, 20.2 * mirror );
setRotateKey( spep_0 + 1026 + OFFSET_X, 1, 19.9 * mirror );
setRotateKey( spep_0 + 1027 + OFFSET_X, 1, 19.9 * mirror );
setRotateKey( spep_0 + 1028 + OFFSET_X, 1, 19.6 * mirror );
setRotateKey( spep_0 + 1029 + OFFSET_X, 1, 19.6 * mirror );
setRotateKey( spep_0 + 1030 + OFFSET_X, 1, 19.3 * mirror );
setRotateKey( spep_0 + 1031 + OFFSET_X, 1, 19.3 * mirror );
setRotateKey( spep_0 + 1032 + OFFSET_X, 1, 19 * mirror );
setRotateKey( spep_0 + 1033 + OFFSET_X, 1, 19 * mirror );
setRotateKey( spep_0 + 1034 + OFFSET_X, 1, 18.7 * mirror );
setRotateKey( spep_0 + 1035 + OFFSET_X, 1, 18.7 * mirror );
setRotateKey( spep_0 + 1036 + OFFSET_X, 1, 18.4 * mirror );
setRotateKey( spep_0 + 1037 + OFFSET_X, 1, 18.4 * mirror );
setRotateKey( spep_0 + 1038 + OFFSET_X, 1, 18.1 * mirror );
setRotateKey( spep_0 + 1039 + OFFSET_X, 1, 18.1 * mirror );
setRotateKey( spep_0 + 1040 + OFFSET_X, 1, 17.8 * mirror );
setRotateKey( spep_0 + 1041 + OFFSET_X, 1, 17.8 * mirror );
setRotateKey( spep_0 + 1042 + OFFSET_X, 1, 17.5 * mirror );
setRotateKey( spep_0 + 1043 + OFFSET_X, 1, 17.5 * mirror );
setRotateKey( spep_0 + 1044 + OFFSET_X, 1, 17.1 * mirror );
setRotateKey( spep_0 + 1045 + OFFSET_X, 1, 17.1 * mirror );
setRotateKey( spep_0 + 1046 + OFFSET_X, 1, 16.8 * mirror );
setRotateKey( spep_0 + 1048 + OFFSET_X, 1, 16.8 * mirror );

setBlendColor( spep_0 + 988 + OFFSET_X, 1, 3, 1, 0.56, 0.11, 0.8 );
setBlendColor( spep_0 + 1048 + OFFSET_X, 1, 0, 0, 0, 0, 0 );

-- ** 音 ** --

--崖から降りてくる
SE001 = playSeVer2( spep_0 + 0, 1044, "",spep_0 + 219, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 62 );
SE002 = playSeVer2( spep_0 + 0, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 72 );
SE003 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 226, 0, 47, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 52 );

--飛んでくる
SE004 = playSeVer2( spep_0 + 164, 1033, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 164, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 164, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 172, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 172, SE007, 71 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 202; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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

--パンチ
SE008 = playSeVer2( spep_0 + 230, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 230, SE008, 133 );
SE009 = playSeVer2( spep_0 + 236, 1010, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 236, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 236, 1190, "",spep_0 + 274, 0, 20, -1);

--パンチ２
SE012 = playSeVer2( spep_0 + 260, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 260, 1110, "", 0, 0, 0, -1);

--２体目タックル
SE014 = playSeVer2( spep_0 + 292, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE014, 66 );
SE015 = playSeVer2( spep_0 + 292, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE016 = playSeVer2( spep_0 + 311, 1109, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 315, 43, "", 0, 0, 0, -1);

--蹴り飛ばす
SE018 = playSeVer2( spep_0 + 334, 1187, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 334, 1121, "",spep_0 + 421, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 334, SE019, 59 );
SE020 = playSeVer2( spep_0 + 338, 1183, "",spep_0 + 424, 0, 25, -1);

--受け止める
SE021 = playSeVer2( spep_0 + 402, 1169, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE021, 91 );
SE022 = playSeVer2( spep_0 + 402, 1414, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 402, 1010, "", 0, 0, 0, -1);

--腹パン
SE024 = playSeVer2( spep_0 + 428, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 428, SE024, 73 );
SE025 = playSeVer2( spep_0 + 428, 1153, "", 0, 0, 0, -1);

--殴り飛ばす
SE026 = playSeVer2( spep_0 + 468, 1180, "",spep_0 + 545, 0, 43, -1);
SE027 = playSeVer2( spep_0 + 468, 1187, "", 0, 0, 0, -1);

--地面激突
SE028 = playSeVer2( spep_0 + 486, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 486, SE028, 200 );
SE029 = playSeVer2( spep_0 + 515, 1159, "",spep_0 + 700, 0, 16, -1);

--気弾溜め
SE032 = playSeVer2( spep_0 + 735, 1442, "",spep_0 + 850, 0, 21, -1);
setSeVolumeByWorkId( spep_0 + 735, SE032, 193 );

--気弾溜め前兆
SE033 = playSeVer2( spep_0 + 760, 1396, "",spep_0 + 820, 0, 26, -1);

--気弾溜め
SE034 = playSeVer2( spep_0 + 791, 1503, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 791, 1465, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 791, 1158, "",spep_0 + 968, 0, 31, -1);
SE037 = playSeVer2( spep_0 + 791, 1203, "",spep_0 + 957, 0, 24, -1);
SE038 = playSeVer2( spep_0 + 841, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 841, SE038, 66 );

--画面ズーム
SE039 = playSeVer2( spep_0 + 855, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 855, SE039, 114 );

--気弾発射
SE040 = playSeVer2( spep_0 + 932, 1027, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 932, 1193, "",spep_0 + 1084, 0, 32, -1);
SE042 = playSeVer2( spep_0 + 932, 1430, "",spep_0 + 1086, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 932, SE042, 240 );

--気弾に飲まれる
SE043 = playSeVer2( spep_0 + 960, 1258, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_0 + 960, SE043, 78 );
SE044 = playSeVer2( spep_0 + 978, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 978, SE044, 76 );

--爆発
SE045 = playSeVer2( spep_0 + 1052, 1159, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 1093, 1067, "", 0, 0, 0, -1);

-----------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + 680, 0);

-- ** ダメージ表示 ** --
dealDamage( spep_0 + 1050); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 -0); -- 終了フレーム