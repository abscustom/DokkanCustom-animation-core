--4031230:LR_超サイヤ人2ケール+超サイヤ人2カリフラ_必殺技：ブラスターボム
--sp_effect_a2_00259
--sp2861

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方敵共通)
SP_01  = 163789;  --ef_001 握った拳を見る～敵を見る
SP_02  = 163790;  --ef_002 カードカットイン～フィニッシュまで 前面
SP_02b = 163791;  --ef_002b カードカットイン～フィニッシュまで 背面


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

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 100;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 216);  -- スキップ先フレーム指定
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
        --気弾発射
        SE011 = playSeVer2( spep_2 + 219, 1027, "", 0, 0, 0, -1);
        SE012 = playSeVer2( spep_2 + 219, 1169, "", 0, 0, 0, -1);
        SE013 = playSeVer2( spep_2 + 219, 1145, "", 0, 0, 0, -1);
        SE014 = playSeVer2( spep_2 + 219, 1212, "",spep_2 + 312, 0, 22, -1);
        setSeVolumeByWorkId( spep_2 + 219, SE014, 71 );
        SE015 = playSeVer2( spep_2 + 219, 1430, "",spep_2 + 316, 0, 28, -1);
        setSeVolumeByWorkId( spep_2 + 219, SE015, 178 );
        SE016 = playSeVer2( spep_2 + 219, 1021, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 219, SE016, 120 );
    else

    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 握った拳を見る～敵を見る
-------------------------------------------------
MAX_FRAME_0 = 100;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 握った拳を見る～敵を見る(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);


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

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 126, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--構える
SE004 = playSeVer2( spep_0 + 66, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE004, 60 );
SE005 = playSeVer2( spep_0 + 74, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE005, 65 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --100f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- カードカットイン～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 394;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン～フィニッシュまで 前面(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カードカットイン～フィニッシュまで 背面(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 214 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 282 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 214 + OFFSET_X, 1, 118 );

setMoveKey( spep_2 + 214 + OFFSET_X, 1, 547.2, 49.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 547.2, 49.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 546.8, 49.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 546.8, 49.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 545.8, 49.4 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 545.8, 49.4 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 544, 49.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 544, 49.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 541.4, 49 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 541.4, 49 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 538.2, 48.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 538.2, 48.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 534.3, 48.3 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 534.3, 48.3 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 529.6, 47.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 529.6, 47.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 524.2, 47.4 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 524.2, 47.4 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 518.1, 46.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 518.1, 46.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 511.3, 46.2 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 511.3, 46.2 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 503.8, 45.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 503.8, 45.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 495.6, 44.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 495.6, 44.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 486.6, 43.9 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 486.6, 43.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 477, 43 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 477, 43 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 466.6, 42 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 466.6, 42 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 455.6, 41 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 455.6, 41 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 443.6, 40.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 443.6, 40.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 432, 38.3 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 432, 38.3 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 417.4, 36.7 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 417.4, 36.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 404.9, 36.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 404.9, 36.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 386.5, 37.3 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 386.5, 37.3 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 377.8, 29.2 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 377.8, 29.2 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 354.3, 28.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 354.3, 28.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 344.1, 34.9 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 344.1, 34.9 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 312, 39.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 312, 39.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 313.9, 15.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 313.9, 15.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 273.7, 12.9 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 273.7, 12.9 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 268.5, 31.8 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 268.5, 31.8 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 185.6, 65.6 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 185.6, 65.6 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 250.7, -20.5 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 250.7, -20.5 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 142.2, -23.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 142.2, -23.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 150.4, 58.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 150.4, 58.8 , 0 );

setScaleKey( spep_2 + 214 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 1.69, 1.69 );

setRotateKey( spep_2 + 214 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 214 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.5 );
setBlendColor( spep_2 + 266 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.62 );
setBlendColor( spep_2 + 274 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7 );
setBlendColor( spep_2 + 280 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.9 );
setBlendColor( spep_2 + 282 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--気弾溜め
SE007 = playSeVer2( spep_2 + 4, 1443, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE007, 182 );
SE008 = playSeVer2( spep_2 + 4, 1440, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 4, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE009, 56 );
SE010 = playSeVer2( spep_2 + 14, 1254, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE010, 68 );
setTimeStretch( SE010, 2, 30, 4 );

--気弾発射
SE011 = playSeVer2( spep_2 + 156, 1027, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 156, 1169, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 156, 1145, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 166, 1212, "",spep_2 + 312, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 166, SE014, 71 );
SE015 = playSeVer2( spep_2 + 190, 1430, "",spep_2 + 316, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 190, SE015, 178 );
SE016 = playSeVer2( spep_2 + 212, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE016, 120 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 260; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 6, 1, 3, 0.0, 0.0, 0.0, 0.0 );

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
--爆発
SE017 = playSeVer2( spep_2 + 280, 1159, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 288, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 292 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム  394f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 握った拳を見る～敵を見る
-------------------------------------------------
MAX_FRAME_0 = 100;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 握った拳を見る～敵を見る(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 126, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--構える
SE004 = playSeVer2( spep_0 + 66, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE004, 60 );
SE005 = playSeVer2( spep_0 + 74, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE005, 65 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --100f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- カードカットイン～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 394;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン～フィニッシュまで 前面(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カードカットイン～フィニッシュまで 背面(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 214 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 282 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 214 + OFFSET_X, 1, 18 );

setMoveKey( spep_2 + 214 + OFFSET_X, 1, -547.2, 49.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -547.2, 49.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -546.8, 49.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -546.8, 49.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -545.8, 49.4 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -545.8, 49.4 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -544, 49.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -544, 49.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -541.4, 49 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -541.4, 49 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -538.2, 48.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -538.2, 48.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -534.3, 48.3 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -534.3, 48.3 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -529.6, 47.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -529.6, 47.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -524.2, 47.4 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -524.2, 47.4 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -518.1, 46.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -518.1, 46.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -511.3, 46.2 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -511.3, 46.2 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -503.8, 45.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -503.8, 45.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -495.6, 44.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -495.6, 44.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -486.6, 43.9 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -486.6, 43.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -477, 43 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -477, 43 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -466.6, 42 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -466.6, 42 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -455.6, 41 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -455.6, 41 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -443.6, 40.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -443.6, 40.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -432, 38.3 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -432, 38.3 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -417.4, 36.7 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -417.4, 36.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -404.9, 36.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -404.9, 36.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -386.5, 37.3 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -386.5, 37.3 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -377.8, 29.2 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -377.8, 29.2 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -354.3, 28.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -354.3, 28.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -344.1, 34.9 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -344.1, 34.9 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -312, 39.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -312, 39.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -313.9, 15.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -313.9, 15.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -273.7, 12.9 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -273.7, 12.9 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -268.5, 31.8 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -268.5, 31.8 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -185.6, 65.6 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -185.6, 65.6 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -250.7, -20.5 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -250.7, -20.5 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -142.2, -23.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -142.2, -23.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -150.4, 58.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -150.4, 58.8 , 0 );

setScaleKey( spep_2 + 214 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 1.69, 1.69 );

setRotateKey( spep_2 + 214 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 214 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.5 );
setBlendColor( spep_2 + 266 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.62 );
setBlendColor( spep_2 + 274 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7 );
setBlendColor( spep_2 + 280 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.9 );
setBlendColor( spep_2 + 282 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--気弾溜め
SE007 = playSeVer2( spep_2 + 4, 1443, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE007, 182 );
SE008 = playSeVer2( spep_2 + 4, 1440, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 4, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE009, 56 );
SE010 = playSeVer2( spep_2 + 14, 1254, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE010, 68 );
setTimeStretch( SE010, 2, 30, 4 );

--気弾発射
SE011 = playSeVer2( spep_2 + 156, 1027, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 156, 1169, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 156, 1145, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 166, 1212, "",spep_2 + 312, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 166, SE014, 71 );
SE015 = playSeVer2( spep_2 + 190, 1430, "",spep_2 + 316, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 190, SE015, 178 );
SE016 = playSeVer2( spep_2 + 212, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE016, 120 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 260; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 6, 1, 3, 0.0, 0.0, 0.0, 0.0 );

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
--爆発
SE017 = playSeVer2( spep_2 + 280, 1159, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 288, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 292 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム  394f


end
