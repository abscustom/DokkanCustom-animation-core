--1029090:LR_ジレン_必殺技：完成されたパワー
--sp_effect_b4_00330
--sp2733

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162999;  --ef_001　 開始～カードカットイン前
SP_01b = 163000;  --ef_001b　開始～カードカットイン前
SP_02  = 163003;  --ef_002　 拳を握る～フィニッシュ
SP_02b = 163004;  --ef_002b　拳を握る～フィニッシュ

--エフェクト(敵)
SP_01r  = 163001;  --ef_001r　 開始～カードカットイン前　敵側
SP_01br = 163002;  --ef_001br　開始～カードカットイン前　敵側
SP_02r  = 163005;  --ef_002r　 拳を握る～フィニッシュ　敵側
SP_02br = 163006;  --ef_002br　拳を握る～フィニッシュ　敵側


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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 516;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;


        skipFrame(0, spep_2 + 194 );  -- スキップ先フレーム指定

        --気弾発射
        SE044 = playSeVer2( spep_2 + 194 +3, 1371, "",spep_2 + 330, 6, 48, -1);
        setStartTimeMs( SE044,  1500 );
        setPitch( spep_2 + 194 +3, SE044, -1200 );
        setTimeStretch( SE044, 0.2, 30, 4 );
        SE045 = playSeVer2( spep_2 + 194 +3, 1374, "",spep_2 + 294, 0, 30, -1);
        SE046 = playSeVer2( spep_2 + 194 +3, 1423, "",spep_2 + 330, 0, 46, -1);
        SE047 = playSeVer2( spep_2 + 194 +3, 1338, "", 0, 0, 0, -1);
        SE048 = playSeVer2( spep_2 + 194 +3, 1047, "", 0, 0, 0, -1);

    else 
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始～カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 516;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始～カードカットイン前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開始～カードカットイン前(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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
--敵の動き1
setDisp( spep_0 + 208 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 338 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 208 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 232 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 248 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 260 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 278 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 208 + OFFSET_X, 1, 288.8, 151.1 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 288.8, 151.1 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 275.1, 147 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 275.1, 147 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 260.2, 142.4 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 260.2, 142.4 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 244.3, 137.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 244.3, 137.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 227.3, 132.1 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 227.3, 132.1 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 209.3, 126.4 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 209.3, 126.4 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 190.2, 120.3 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 190.2, 120.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 170.1, 113.7 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 170.1, 113.7 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 148.9, 106.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 148.9, 106.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 126.6, 99.4 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 126.6, 99.4 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 103.3, 91.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 103.3, 91.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 78.8, 83.5 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 78.8, 83.5 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 126.2, 59.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 126.2, 59.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 91.2, 91.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 91.2, 91.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 81.6, 53 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 81.6, 53 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 98.5, 54.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 98.5, 54.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 108.8, 35.2 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 108.8, 35.2 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 97.1, 58.3 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 97.1, 58.3 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 111.4, 45.3 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 111.4, 45.3 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 114.9, 53.4 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 114.9, 53.4 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 59.3, 26.1 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 59.3, 26.1 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 64.4, 23.3 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 64.4, 23.3 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 68.3, 21.1 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 68.3, 21.1 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 71.2, 19.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 71.2, 19.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 73, 18.6 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 73, 18.6 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 73.6, 18.3 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 73.6, 18.3 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 99.7, -21.7 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 99.7, -21.7 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 58.2, -47.3 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 58.2, -47.3 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 99.9, 16.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 99.9, 16.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 131.2, -20.4 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 131.2, -20.4 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 104.9, -15.9 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 104.9, -15.9 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 107.4, -27.4 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 107.4, -27.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 110, -29.3 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 110, -29.3 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 112.5, -31.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 112.5, -31.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 114.9, -33.2 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 114.9, -33.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 66.7, -8 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 66.7, -8 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 53.8, 14.9 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 53.8, 14.9 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 39.9, -5.1 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 39.9, -5.1 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 68.5, -2.8 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 68.5, -2.8 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 61.5, -6.5 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 61.5, -6.5 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 71.8, -9.2 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 71.8, -9.2 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 74.4, -10.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 74.4, -10.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 75.4, -11.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 75.4, -11.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 76.9, -12.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 76.9, -12.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 78.5, -14.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 78.5, -14.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 80, -15.5 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 80, -15.5 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 81.5, -16.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 81.5, -16.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 83.1, -18.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 83.1, -18.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 88.6, -21.2 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 88.6, -21.2 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 94.3, -24.2 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 94.3, -24.2 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -34.5, -9.8 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -34.5, -9.8 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -14.1, 16 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -14.1, 16 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -10.7, -9.1 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -10.7, -9.1 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -30.3, 11.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -30.3, 11.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -7.9, -1.4 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -7.9, -1.4 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -41.5, -9.5 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -41.5, -9.5 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -33.9, -24.2 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -33.9, -24.2 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -43.9, -35.2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -43.9, -35.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -49.6, -45.5 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -49.6, -45.5 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -55, -55.1 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -55, -55.1 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -60, -64 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -60, -64 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -64.5, -72.1 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -64.5, -72.1 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -68.7, -79.3 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -68.7, -79.3 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -72.4, -85.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -72.4, -85.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -75.4, -90.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -75.4, -90.9 , 0 );

setScaleKey( spep_0 + 208 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 2.97, 2.97 );

setRotateKey( spep_0 + 208 + OFFSET_X, 1, -28 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -28 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -33 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -33 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 42.4 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 42.4 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -101.7 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -101.7 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -102.3 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -102.3 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -102.7 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -102.7 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -103.2 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -103.2 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -103.6 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -103.6 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -104 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -104 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -104.3 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -104.3 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -104.5 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -104.5 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -104.8 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -104.8 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -105 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -105 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -105.1 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -105.1 );

--敵の動き2
setDisp( spep_0 + 394 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 518 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 394 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 402 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 420 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 434 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 448 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 394 + OFFSET_X, 1, 72, -36 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 72, -36 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 29.9, -68.3 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 29.9, -68.3 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 52.3, -84.3 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 52.3, -84.3 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 45.9, -39.5 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 45.9, -39.5 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 4.3, -55.5 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 4.3, -55.5 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 29.5, -107.1 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 29.5, -107.1 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 54.7, -65.9 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 54.7, -65.9 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 38.3, -88.7 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 38.3, -88.7 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 41.1, -95.5 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 41.1, -95.5 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 43.9, -102.3 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 43.9, -102.3 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 154.1, -78 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 154.1, -78 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 173.3, -87.6 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 173.3, -87.6 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 134.9, -52.4 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 134.9, -52.4 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 176.5, -62 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 176.5, -62 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 138.9, -99.6 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 138.9, -99.6 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 165.3, -63.7 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 165.3, -63.7 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 166.1, -85.4 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 166.1, -85.4 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -37, -39.5 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -37, -39.5 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -20.3, -32.9 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -20.3, -32.9 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -3.5, -26.3 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -3.5, -26.3 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 13.2, -19.7 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 13.2, -19.7 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 93.3, -164.3 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 93.3, -164.3 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -3.2, -20.4 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -3.2, -20.4 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -23.5, -153.1 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -23.5, -153.1 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 48.3, -69.3 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 48.3, -69.3 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -4, -105.8 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -4, -105.8 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 38.9, -106.7 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 38.9, -106.7 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 87.4, -180.2 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 87.4, -180.2 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 168.5, -304.6 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 168.5, -304.6 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 165.9, -303.6 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 165.9, -303.6 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 163.2, -302.1 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 163.2, -302.1 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 160.4, -300.2 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 160.4, -300.2 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 157.6, -297.8 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 157.6, -297.8 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 154.8, -295 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 154.8, -295 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 151.9, -291.8 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 151.9, -291.8 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 148.9, -288.2 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 148.9, -288.2 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 145.8, -284.1 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 145.8, -284.1 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 142.8, -279.7 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 142.8, -279.7 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 139.6, -274.9 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 139.6, -274.9 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 136.5, -269.7 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 136.5, -269.7 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 133.2, -264.1 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 133.2, -264.1 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 129.9, -258.2 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 129.9, -258.2 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 126.5, -251.9 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 126.5, -251.9 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 123.1, -245.3 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 123.1, -245.3 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 119.7, -238.4 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 119.7, -238.4 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 116.2, -231.1 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 116.2, -231.1 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 112.6, -223.6 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 112.6, -223.6 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 109.1, -215.7 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 109.1, -215.7 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 105.4, -207.6 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 105.4, -207.6 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 101.8, -199.2 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 101.8, -199.2 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 98.1, -190.5 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 98.1, -190.5 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 94.4, -181.6 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 94.4, -181.6 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 90.6, -172.5 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 90.6, -172.5 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 86.8, -163.2 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 86.8, -163.2 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 83, -153.9 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 83, -153.9 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 79.2, -144.6 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 79.2, -144.6 , 0 );

setScaleKey( spep_0 + 394 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 447 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 449 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_0 + 394 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -54.2 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -54.2 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, 9 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 228, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--歩み寄る
SE003 = playSeVer2( spep_0 + 2, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 224 );
setPitch( spep_0 + 2, SE003, -600 );
setTimeStretch( SE003, 0.6, 30, 4 );
SE004 = playSeVer2( spep_0 + 30, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE004, 224 );
setPitch( spep_0 + 30, SE004, -600 );
setTimeStretch( SE004, 0.6, 30, 4 );
SE005 = playSeVer2( spep_0 + 54, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE005, 224 );
setPitch( spep_0 + 54, SE005, -600 );
setTimeStretch( SE005, 0.6, 30, 4 );
SE006 = playSeVer2( spep_0 + 78, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE006, 224 );
setPitch( spep_0 + 78, SE006, -600 );
setTimeStretch( SE006, 0.6, 30, 4 );
SE007 = playSeVer2( spep_0 + 94, 1192, "",spep_0 + 118, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 94, SE007, 79 );


--構える
SE008 = playSeVer2( spep_0 + 118, 1233, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 124, 1330, "",spep_0 + 180, 0, 22, -1);

--飛び込んでくる
SE010 = playSeVer2( spep_0 + 150, 1182, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 154, 9, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 180; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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
--連打
SE012 = playSeVer2( spep_0 + 212, 1004, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 218, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 218, 1153, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 248, 1187, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 248, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 264, 1009, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 264, 1187, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 296, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 296, 1010, "", 0, 0, 0, -1);

--空中連打
SE021 = playSeVer2( spep_0 + 330, 20, "",spep_0 + 382, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 330, SE021, 88 );
SE022 = playSeVer2( spep_0 + 330, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE022, 75 );
SE023 = playSeVer2( spep_0 + 340, 20, "",spep_0 + 390, 0, 18, -1);
SE024 = playSeVer2( spep_0 + 346, 1047, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 356, 20, "",spep_0 + 410, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 356, SE025, 78 );
SE026 = playSeVer2( spep_0 + 364, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE026, 84 );
SE027 = playSeVer2( spep_0 + 366, 19, "",spep_0 + 412, 0, 14, -1);

--連打２
SE028 = playSeVer2( spep_0 + 388, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 388, SE028, 150 );
SE029 = playSeVer2( spep_0 + 394, 1187, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 394, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 394, SE030, 78 );
SE031 = playSeVer2( spep_0 + 410, 1187, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 410, 1009, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 434, 1187, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 434, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE035 = playSeVer2( spep_0 + 452, 1121, "",spep_0 + 538, 0, 16, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --516f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--気弾溜め
SE038 = playSeVer2( spep_1 + 80, 1313, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 80, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 80, SE039, 133 );
SE040 = playSeVer2( spep_1 + 80, 1298, "", 0, 0, 0, -1);

-------------------------------------------------
-- 拳を握る～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 480;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 拳を握る～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 拳を握る～フィニッシュ(ef_002b)
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
setDisp( spep_2 + 262 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 304 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 262 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 262 + OFFSET_X, 1, -103.6, -171.6 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -103.6, -171.6 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -100.9, -153.7 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -100.9, -153.7 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -55.5, -98.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -55.5, -98.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 71.5, 42.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 71.5, 42.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 15.4, -101.6 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 15.4, -101.6 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -40.6, 50.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -40.6, 50.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 127.6, -53.5 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 127.6, -53.5 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -24.6, -125.6 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -24.6, -125.6 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 47.5, 50.6 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 47.5, 50.6 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 15.5, -69.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 15.5, -69.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 23.5, 18.5 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 23.5, 18.5 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 47.5, -13.5 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 47.5, -13.5 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -12.3, -32.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -12.3, -32.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -48, -51.9 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -48, -51.9 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -83.8, -71.1 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -83.8, -71.1 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -119.4, -90.2 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -119.4, -90.2 , 0 );

setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.43, 0.43 );

setRotateKey( spep_2 + 262 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--気弾溜め
SE037 = playSeVer2( spep_2 + 0, 1371, "",spep_2 + 238, 32, 26, -1);
setSeVolumeByWorkId( spep_2 + 0, SE037, 89 );
setStartTimeMs( SE037,  1100 );
setPitch( spep_2 + 0, SE037, -200 );
setTimeStretch( SE037, 0.87, 30, 4 );
SE041 = playSeVer2( spep_2 + 2, 1227, "",spep_2 + 244, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 2, SE041, 80 );

--足踏み込む
SE042 = playSeVer2( spep_2 + 96, 1395, "", spep_2 + 184, 0, 10, -1);
stopSeIfDoubleSpeed( spep_2 + 96, SE042 );
SE043 = playSeVer2( spep_2 + 96, 1011, "", spep_2 + 184, 0, 10, -1);

--気弾発射
SE044 = playSeVer2( spep_2 + 186, 1371, "",spep_2 + 330, 6, 48, -1);
setStartTimeMs( SE044,  1500 );
setPitch( spep_2 + 186, SE044, -1200 );
setTimeStretch( SE044, 0.2, 30, 4 );
SE045 = playSeVer2( spep_2 + 192, 1374, "",spep_2 + 294, 0, 30, -1);
SE046 = playSeVer2( spep_2 + 192, 1423, "",spep_2 + 330, 0, 46, -1);
SE047 = playSeVer2( spep_2 + 192, 1338, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 192, 1047, "", 0, 0, 0, -1);

--岩貫通
SE049 = playSeVer2( spep_2 + 256, 1256, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 256, 1179, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 256, 1145, "",spep_2 + 340, 0, 40, -1);

--爆発
SE052 = playSeVer2( spep_2 + 288, 1159, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 300, 1023, "", 0, 0, 0, -1);

--地響き
SE053 = playSeVer2( spep_2 + 300, 1044, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 362); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  480f -4


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 開始～カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 516;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開始～カードカットイン前(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 開始～カードカットイン前(ef_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 208 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 338 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 208 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 232 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 248 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 260 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 278 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 208 + OFFSET_X, 1, 288.8, 151.1 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 288.8, 151.1 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 275.1, 147 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 275.1, 147 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 260.2, 142.4 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 260.2, 142.4 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 244.3, 137.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 244.3, 137.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 227.3, 132.1 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 227.3, 132.1 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 209.3, 126.4 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 209.3, 126.4 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 190.2, 120.3 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 190.2, 120.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 170.1, 113.7 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 170.1, 113.7 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 148.9, 106.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 148.9, 106.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 126.6, 99.4 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 126.6, 99.4 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 103.3, 91.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 103.3, 91.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 78.8, 83.5 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 78.8, 83.5 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 126.2, 59.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 126.2, 59.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 91.2, 91.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 91.2, 91.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 81.6, 53 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 81.6, 53 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 98.5, 54.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 98.5, 54.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 108.8, 35.2 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 108.8, 35.2 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 97.1, 58.3 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 97.1, 58.3 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 111.4, 45.3 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 111.4, 45.3 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 114.9, 53.4 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 114.9, 53.4 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 59.3, 26.1 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 59.3, 26.1 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 64.4, 23.3 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 64.4, 23.3 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 68.3, 21.1 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 68.3, 21.1 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 71.2, 19.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 71.2, 19.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 73, 18.6 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 73, 18.6 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 73.6, 18.3 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 73.6, 18.3 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 99.7, -21.7 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 99.7, -21.7 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 58.2, -47.3 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 58.2, -47.3 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 99.9, 16.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 99.9, 16.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 131.2, -20.4 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 131.2, -20.4 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 104.9, -15.9 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 104.9, -15.9 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 107.4, -27.4 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 107.4, -27.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 110, -29.3 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 110, -29.3 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 112.5, -31.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 112.5, -31.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 114.9, -33.2 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 114.9, -33.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 66.7, -8 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 66.7, -8 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 53.8, 14.9 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 53.8, 14.9 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 39.9, -5.1 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 39.9, -5.1 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 68.5, -2.8 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 68.5, -2.8 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 61.5, -6.5 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 61.5, -6.5 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 71.8, -9.2 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 71.8, -9.2 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 74.4, -10.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 74.4, -10.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 75.4, -11.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 75.4, -11.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 76.9, -12.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 76.9, -12.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 78.5, -14.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 78.5, -14.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 80, -15.5 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 80, -15.5 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 81.5, -16.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 81.5, -16.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 83.1, -18.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 83.1, -18.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 88.6, -21.2 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 88.6, -21.2 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 94.3, -24.2 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 94.3, -24.2 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -34.5, -9.8 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -34.5, -9.8 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -14.1, 16 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -14.1, 16 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -10.7, -9.1 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -10.7, -9.1 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -30.3, 11.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -30.3, 11.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -7.9, -1.4 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -7.9, -1.4 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -41.5, -9.5 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -41.5, -9.5 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -33.9, -24.2 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -33.9, -24.2 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -43.9, -35.2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -43.9, -35.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -49.6, -45.5 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -49.6, -45.5 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -55, -55.1 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -55, -55.1 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -60, -64 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -60, -64 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -64.5, -72.1 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -64.5, -72.1 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -68.7, -79.3 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -68.7, -79.3 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -72.4, -85.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -72.4, -85.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -75.4, -90.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -75.4, -90.9 , 0 );

setScaleKey( spep_0 + 208 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 2.97, 2.97 );

setRotateKey( spep_0 + 208 + OFFSET_X, 1, -28 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -28 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -33 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -33 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 42.4 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 42.4 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -101.7 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -101.7 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -102.3 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -102.3 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -102.7 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -102.7 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -103.2 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -103.2 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -103.6 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -103.6 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -104 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -104 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -104.3 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -104.3 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -104.5 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -104.5 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -104.8 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -104.8 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -105 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -105 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -105.1 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -105.1 );

--敵の動き2
setDisp( spep_0 + 394 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 518 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 394 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 402 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 420 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 434 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 448 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 394 + OFFSET_X, 1, 72, -36 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 72, -36 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 29.9, -68.3 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 29.9, -68.3 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 52.3, -84.3 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 52.3, -84.3 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 45.9, -39.5 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 45.9, -39.5 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 4.3, -55.5 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 4.3, -55.5 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 29.5, -107.1 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 29.5, -107.1 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 54.7, -65.9 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 54.7, -65.9 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 38.3, -88.7 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 38.3, -88.7 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 41.1, -95.5 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 41.1, -95.5 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 43.9, -102.3 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 43.9, -102.3 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 154.1, -78 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 154.1, -78 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 173.3, -87.6 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 173.3, -87.6 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 134.9, -52.4 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 134.9, -52.4 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 176.5, -62 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 176.5, -62 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 138.9, -99.6 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 138.9, -99.6 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 165.3, -63.7 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 165.3, -63.7 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 166.1, -85.4 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 166.1, -85.4 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -37, -39.5 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -37, -39.5 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -20.3, -32.9 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -20.3, -32.9 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -3.5, -26.3 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -3.5, -26.3 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 13.2, -19.7 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 13.2, -19.7 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 93.3, -164.3 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 93.3, -164.3 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -3.2, -20.4 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -3.2, -20.4 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -23.5, -153.1 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -23.5, -153.1 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 48.3, -69.3 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 48.3, -69.3 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -4, -105.8 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -4, -105.8 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 38.9, -106.7 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 38.9, -106.7 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 87.4, -180.2 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 87.4, -180.2 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 168.5, -304.6 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 168.5, -304.6 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 165.9, -303.6 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 165.9, -303.6 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 163.2, -302.1 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 163.2, -302.1 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 160.4, -300.2 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 160.4, -300.2 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 157.6, -297.8 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 157.6, -297.8 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 154.8, -295 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 154.8, -295 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 151.9, -291.8 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 151.9, -291.8 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 148.9, -288.2 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 148.9, -288.2 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 145.8, -284.1 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 145.8, -284.1 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 142.8, -279.7 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 142.8, -279.7 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 139.6, -274.9 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 139.6, -274.9 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 136.5, -269.7 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 136.5, -269.7 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 133.2, -264.1 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 133.2, -264.1 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 129.9, -258.2 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 129.9, -258.2 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 126.5, -251.9 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 126.5, -251.9 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 123.1, -245.3 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 123.1, -245.3 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 119.7, -238.4 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 119.7, -238.4 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 116.2, -231.1 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 116.2, -231.1 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 112.6, -223.6 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 112.6, -223.6 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 109.1, -215.7 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 109.1, -215.7 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 105.4, -207.6 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 105.4, -207.6 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 101.8, -199.2 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 101.8, -199.2 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 98.1, -190.5 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 98.1, -190.5 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 94.4, -181.6 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 94.4, -181.6 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 90.6, -172.5 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 90.6, -172.5 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 86.8, -163.2 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 86.8, -163.2 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 83, -153.9 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 83, -153.9 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 79.2, -144.6 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 79.2, -144.6 , 0 );

setScaleKey( spep_0 + 394 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 447 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 449 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_0 + 394 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -54.2 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -54.2 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, 9 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 228, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--歩み寄る
SE003 = playSeVer2( spep_0 + 2, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 224 );
setPitch( spep_0 + 2, SE003, -600 );
setTimeStretch( SE003, 0.6, 30, 4 );
SE004 = playSeVer2( spep_0 + 30, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE004, 224 );
setPitch( spep_0 + 30, SE004, -600 );
setTimeStretch( SE004, 0.6, 30, 4 );
SE005 = playSeVer2( spep_0 + 54, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE005, 224 );
setPitch( spep_0 + 54, SE005, -600 );
setTimeStretch( SE005, 0.6, 30, 4 );
SE006 = playSeVer2( spep_0 + 78, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE006, 224 );
setPitch( spep_0 + 78, SE006, -600 );
setTimeStretch( SE006, 0.6, 30, 4 );
SE007 = playSeVer2( spep_0 + 94, 1192, "",spep_0 + 118, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 94, SE007, 79 );


--構える
SE008 = playSeVer2( spep_0 + 118, 1233, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 124, 1330, "",spep_0 + 180, 0, 22, -1);

--飛び込んでくる
SE010 = playSeVer2( spep_0 + 150, 1182, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 154, 9, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 180; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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
--連打
SE012 = playSeVer2( spep_0 + 212, 1004, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 218, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 218, 1153, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 248, 1187, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 248, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 264, 1009, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 264, 1187, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 296, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 296, 1010, "", 0, 0, 0, -1);

--空中連打
SE021 = playSeVer2( spep_0 + 330, 20, "",spep_0 + 382, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 330, SE021, 88 );
SE022 = playSeVer2( spep_0 + 330, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE022, 75 );
SE023 = playSeVer2( spep_0 + 340, 20, "",spep_0 + 390, 0, 18, -1);
SE024 = playSeVer2( spep_0 + 346, 1047, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 356, 20, "",spep_0 + 410, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 356, SE025, 78 );
SE026 = playSeVer2( spep_0 + 364, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE026, 84 );
SE027 = playSeVer2( spep_0 + 366, 19, "",spep_0 + 412, 0, 14, -1);

--連打２
SE028 = playSeVer2( spep_0 + 388, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 388, SE028, 150 );
SE029 = playSeVer2( spep_0 + 394, 1187, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 394, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 394, SE030, 78 );
SE031 = playSeVer2( spep_0 + 410, 1187, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 410, 1009, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 434, 1187, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 434, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE035 = playSeVer2( spep_0 + 452, 1121, "",spep_0 + 538, 0, 16, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --516f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--気弾溜め
SE038 = playSeVer2( spep_1 + 80, 1313, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 80, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 80, SE039, 133 );
SE040 = playSeVer2( spep_1 + 80, 1298, "", 0, 0, 0, -1);

-------------------------------------------------
-- 拳を握る～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 480;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 拳を握る～フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 拳を握る～フィニッシュ(ef_002br)
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
setDisp( spep_2 + 262 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 304 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 262 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 262 + OFFSET_X, 1, -103.6, -171.6 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -103.6, -171.6 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -100.9, -153.7 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -100.9, -153.7 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -55.5, -98.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -55.5, -98.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 71.5, 42.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 71.5, 42.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 15.4, -101.6 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 15.4, -101.6 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -40.6, 50.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -40.6, 50.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 127.6, -53.5 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 127.6, -53.5 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -24.6, -125.6 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -24.6, -125.6 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 47.5, 50.6 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 47.5, 50.6 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 15.5, -69.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 15.5, -69.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 23.5, 18.5 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 23.5, 18.5 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 47.5, -13.5 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 47.5, -13.5 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -12.3, -32.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -12.3, -32.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -48, -51.9 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -48, -51.9 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -83.8, -71.1 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -83.8, -71.1 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -119.4, -90.2 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -119.4, -90.2 , 0 );

setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.43, 0.43 );

setRotateKey( spep_2 + 262 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--気弾溜め
SE037 = playSeVer2( spep_2 + 0, 1371, "",spep_2 + 238, 32, 26, -1);
setSeVolumeByWorkId( spep_2 + 0, SE037, 89 );
setStartTimeMs( SE037,  1100 );
setPitch( spep_2 + 0, SE037, -200 );
setTimeStretch( SE037, 0.87, 30, 4 );
SE041 = playSeVer2( spep_2 + 2, 1227, "",spep_2 + 244, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 2, SE041, 80 );

--足踏み込む
SE042 = playSeVer2( spep_2 + 96, 1395, "", spep_2 + 184, 0, 10, -1);
stopSeIfDoubleSpeed( spep_2 + 96, SE042 );
SE043 = playSeVer2( spep_2 + 96, 1011, "", spep_2 + 184, 0, 10, -1);

--気弾発射
SE044 = playSeVer2( spep_2 + 186, 1371, "",spep_2 + 330, 6, 48, -1);
setStartTimeMs( SE044,  1500 );
setPitch( spep_2 + 186, SE044, -1200 );
setTimeStretch( SE044, 0.2, 30, 4 );
SE045 = playSeVer2( spep_2 + 192, 1374, "",spep_2 + 294, 0, 30, -1);
SE046 = playSeVer2( spep_2 + 192, 1423, "",spep_2 + 330, 0, 46, -1);
SE047 = playSeVer2( spep_2 + 192, 1338, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 192, 1047, "", 0, 0, 0, -1);

--岩貫通
SE049 = playSeVer2( spep_2 + 256, 1256, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 256, 1179, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 256, 1145, "",spep_2 + 340, 0, 40, -1);

--爆発
SE052 = playSeVer2( spep_2 + 288, 1159, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 300, 1023, "", 0, 0, 0, -1);

--地響き
SE053 = playSeVer2( spep_2 + 300, 1044, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 362); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  480f -4


end
