--4034710:UR_グルド+リクーム_必殺技：サイコキネシス
--sp_effect_b4_00446
--sp3072

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164536;--最初〜最後まで ef_001

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



ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 200;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        SE006 = playSeVer2( spep_0 + 201, 1051, "", 0, 0, 0, -1);
        SE007 = playSeVer2( spep_0 + 201, 20, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_0 + 201, SE007, 78 );

    else
        setupMovie(0, SP_01, 0, 1);
    end

else

    setupMovie(0, SP_01, 0, 1);

    mirror = -1;

    --SP_01  = SP_01r; -- 敵側エフェクトがある場合のみ

end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 最初〜最後まで
-------------------------------------------------
MAX_FRAME_0 = 340;
CARD_FRAME = 88;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初〜最後まで(ef_001)
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
spep_x = spep_0 + 000; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
--    speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--    setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き
setDisp( spep_0 + 268 + OFFSET_X, 1, 1 );

changeAnimeBySide( spep_0 + 268 + OFFSET_X, 1, 104 );
changeAnimeBySide( spep_0 + 276 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 326 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 268 + OFFSET_X, 1, 140.7 * mirror, -56.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 140.7 * mirror, -56.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 154.3 * mirror, -73.3 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 154.3 * mirror, -73.3 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 152.8 * mirror, -54.9 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 152.8 * mirror, -54.9 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 201.2 * mirror, -81 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 201.2 * mirror, -81 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 146 * mirror, -65.1 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 146 * mirror, -65.1 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 176.5 * mirror, -84.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 176.5 * mirror, -84.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 167.2 * mirror, -50.1 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 167.2 * mirror, -50.1 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 150.5 * mirror, -72.6 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 150.5 * mirror, -72.6 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 168.2 * mirror, -76.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 168.2 * mirror, -76.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 171.7 * mirror, -57.6 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 171.7 * mirror, -57.6 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 146 * mirror, -65.1 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 146 * mirror, -65.1 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 172.7 * mirror, -83.9 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 172.7 * mirror, -83.9 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 167.2 * mirror, -50.1 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 167.2 * mirror, -50.1 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 150.5 * mirror, -72.6 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 150.5 * mirror, -72.6 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 168.2 * mirror, -76.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 168.2 * mirror, -76.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 171.7 * mirror, -57.6 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 171.7 * mirror, -57.6 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 146 * mirror, -65.1 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 146 * mirror, -65.1 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 172.7 * mirror, -83.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 172.7 * mirror, -83.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 167.2 * mirror, -50.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 167.2 * mirror, -50.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 150.5 * mirror, -72.6 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 150.5 * mirror, -72.6 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 168.2 * mirror, -76.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 168.2 * mirror, -76.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 171.7 * mirror, -57.6 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 171.7 * mirror, -57.6 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 146 * mirror, -65.1 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 146 * mirror, -65.1 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 172.7 * mirror, -83.9 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 172.7 * mirror, -83.9 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 167.2 * mirror, -50.1 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 167.2 * mirror, -50.1 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 150.5 * mirror, -72.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 150.5 * mirror, -72.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 136.6 * mirror, -47.2 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 136.6 * mirror, -47.2 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 200.9 * mirror, -3.3 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 200.9 * mirror, -3.3 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 256.2 * mirror, 55.6 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 256.2 * mirror, 55.6 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 320.5 * mirror, 99.6 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 320.5 * mirror, 99.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 375.8 * mirror, 158.5 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 375.8 * mirror, 158.5 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 440.1 * mirror, 202.5 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 440.1 * mirror, 202.5 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 495.4 * mirror, 261.4 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 495.4 * mirror, 261.4 , 0 );

setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_0 + 268 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, 64 * mirror );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, 64 * mirror );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 64.5 * mirror );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 64.5 * mirror );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 65 * mirror );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 65 * mirror );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 65.5 * mirror );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, 65.5 * mirror );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 66 * mirror );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 66 * mirror );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 66.5 * mirror );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, 66.5 * mirror );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, 67 * mirror );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, 67 * mirror );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--地面持ち上げる
SE002 = playSeVer2( spep_0 + 22, 1168, "",spep_0 + 101, 0, 20, -1);
SE003 = playSeVer2( spep_0 + 22, 1044, "",spep_0 + 100, 0, 18, -1);

--画面遷移
SE005 = playSeVer2( spep_0 + 170, 1232, "", 0, 0, 0, -1);

--地面投げつける
SE006 = playSeVer2( spep_0 + 193, 1051, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 193, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 193, SE007, 78 );
SE008 = playSeVer2( spep_0 + 208, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 208, SE008, 71 );
SE009 = playSeVer2( spep_0 + 216, 1027, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 217, 1178, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 250; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--敵ヒット
SE011 = playSeVer2( spep_0 + 258, 1168, "",spep_0 + 350, 0, 27, -1);

--爆発
SE012 = playSeVer2( spep_0 + 315, 1025, "", 0, 0, 0, -1);


--次のフレーム
spep_N = spep_0 + MAX_FRAME_0; -- 340F

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** 画面手前衝突(ガッ)演出のテンプレ ** --

-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3 * mirror, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3 * mirror, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_wh, 1 * mirror, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1 * mirror, 1 ); -- 通常

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

setEffMoveKey( spep_N + 14, ctga, 3.9 * mirror, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9 * mirror, 316.1 , 0 );

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

--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒　背景

  -- ** 敵キャラクター ** --
--setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnimeBySide( spep_N + 0 + OFFSET_X, 1, 107 );

setMoveKey( spep_N + 0 + OFFSET_X, 1, 21.8 * mirror, 10.7, 0 );
setMoveKey( spep_N + 2 + OFFSET_X, 1, -8.2 * mirror, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5 * mirror, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6 * mirror, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2 * mirror, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9 * mirror, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8 * mirror, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3 * mirror, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2 * mirror, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3 * mirror -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2 * mirror, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3 * mirror, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2 * mirror, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3 * mirror, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2 * mirror, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3 * mirror, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2 * mirror, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2 * mirror, -57.6 , 0 );

setScaleKey( spep_N + 0 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2 + OFFSET_X, 1, 0.2, 0.2 );
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

setRotateKey( spep_N + 0 + OFFSET_X, 1, -354.8 * mirror );
setRotateKey( spep_N + 2 + OFFSET_X, 1, -122.8 * mirror );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 * mirror );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 * mirror );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 * mirror );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 * mirror );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 * mirror );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 * mirror );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 * mirror );
setRotateKey( spep_N + 112, 1, 729.5 * mirror );

-- ** 音 ** --
--爆発
--SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム