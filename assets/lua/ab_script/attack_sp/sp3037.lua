--1034030:LR_超サイヤ人孫悟空_必殺技：超メテオスマッシュ
--sp_effect_b1_00376
--sp3037

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164566; --開始〜フィニッシュ ef_001

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

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 1048;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --拳めりこませる
        SE061 = playSeVer2( spep_0 + timing_skip + 3, 1359, "", 0, 0, 0, -1);
        SE062 = playSeVer2( spep_0 + timing_skip + 3, 1153, "", 0, 0, 0, -1);

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
-- 開始〜フィニッシュ
-------------------------------------------------
MAX_FRAME_0 = 1158;
CARD_FRAME = 256;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始〜フィニッシュ(ef_001)
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
spep_x = spep_0 + 80; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   --speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   --setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end
--[[
ctgogo_x = 0; -- 演出によって白目にかからないように調整

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

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き1
setDisp( spep_0 + 212 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 260 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 212 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 212 + OFFSET_X, 1, -544 * mirror, -1125.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -544 * mirror, -1125.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 189.8 * mirror, -179.9 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 189.8 * mirror, -179.9 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -375.3 * mirror, -793.5 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -375.3 * mirror, -793.5 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -174.1 * mirror, -532 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -174.1 * mirror, -532 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 27.4 * mirror, -229.2 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 27.4 * mirror, -229.2 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -61.3 * mirror, -346.8 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -61.3 * mirror, -346.8 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -14.6 * mirror, -285.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -14.6 * mirror, -285.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -54.4 * mirror, -329.3 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -54.4 * mirror, -329.3 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -52.5 * mirror, -310.9 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -52.5 * mirror, -310.9 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -54.6 * mirror, -325.8 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -54.6 * mirror, -325.8 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -48.3 * mirror, -324 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -48.3 * mirror, -324 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -66.3 * mirror, -328.5 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -66.3 * mirror, -328.5 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -53.8 * mirror, -322.9 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -53.8 * mirror, -322.9 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -74.6 * mirror, -347 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -74.6 * mirror, -347 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -73.3 * mirror, -348.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -73.3 * mirror, -348.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -81.5 * mirror, -362.5 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -81.5 * mirror, -362.5 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -85.2 * mirror, -370.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -85.2 * mirror, -370.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -87.3 * mirror, -372.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -87.3 * mirror, -372.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -89.5 * mirror, -375 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -89.5 * mirror, -375 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -91.7 * mirror, -377.2 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -91.7 * mirror, -377.2 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -93.9 * mirror, -379.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -93.9 * mirror, -379.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -96 * mirror, -381.5 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -96 * mirror, -381.5 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -98.3 * mirror, -383.7 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -98.3 * mirror, -383.7 , 0 );

setScaleKey( spep_0 + 212 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 2.58, 2.58 );

setRotateKey( spep_0 + 212 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 0 * mirror );

-- 敵の動き2
setDisp( spep_0 + 446 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 466 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 446 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 446 + OFFSET_X, 1, -157.2 * mirror, -186.3 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -157.2 * mirror, -186.3 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -41.5 * mirror, -60.1 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -41.5 * mirror, -60.1 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -95 * mirror, -188.1 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -95 * mirror, -188.1 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -143.4 * mirror, -159 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -143.4 * mirror, -159 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -243 * mirror, -292.5 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -243 * mirror, -292.5 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -263.3 * mirror, -315.1 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -263.3 * mirror, -315.1 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -296.3 * mirror, -356 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -296.3 * mirror, -356 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -322.9 * mirror, -382.3 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -322.9 * mirror, -382.3 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -335.2 * mirror, -400.6 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -335.2 * mirror, -400.6 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -341.2 * mirror, -405.2 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -341.2 * mirror, -405.2 , 0 );

setScaleKey( spep_0 + 446 + OFFSET_X, 1, 5.66, 5.66 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 5.66, 5.66 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_0 + 446 + OFFSET_X, 1, -28 * mirror );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -28 * mirror );

-- 敵の動き3
setDisp( spep_0 + 522 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 546 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 522 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 522 + OFFSET_X, 1, -418.1 * mirror, 678.3 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, -418.1 * mirror, 678.3 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -272.5 * mirror, 247.2 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, -272.5 * mirror, 247.2 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -231 * mirror, 136.8 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -231 * mirror, 136.8 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -224.6 * mirror, 130.4 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, -224.6 * mirror, 130.4 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, -229.3 * mirror, 122.4 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -229.3 * mirror, 122.4 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, -283 * mirror, 107.3 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, -283 * mirror, 107.3 , 0 );

setScaleKey( spep_0 + 522 + OFFSET_X, 1, 7.52, 7.52 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 7.52, 7.52 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 5.31, 5.31 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 5.31, 5.31 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 5.28, 5.28 );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 5.28, 5.28 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 5.09, 5.09 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 5.09, 5.09 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 5.3, 5.3 );

setRotateKey( spep_0 + 522 + OFFSET_X, 1, 116 * mirror );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, 116 * mirror );


-- 敵の動き4
setDisp( spep_0 + 548 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 586 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 548 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 548 + OFFSET_X, 1, -90.2 * mirror, 18 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, -90.2 * mirror, 18 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, -16.3 * mirror, -81.6 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, -16.3 * mirror, -81.6 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, -85.2 * mirror, 121.3 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, -85.2 * mirror, 121.3 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, -47.2 * mirror, 27.4 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, -47.2 * mirror, 27.4 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, -83.8 * mirror, -35.4 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, -83.8 * mirror, -35.4 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, -22.3 * mirror, -21.9 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, -22.3 * mirror, -21.9 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, -50.6 * mirror, 4.1 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, -50.6 * mirror, 4.1 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, -60.7 * mirror, -19.2 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, -60.7 * mirror, -19.2 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, -58.8 * mirror, -10.1 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, -58.8 * mirror, -10.1 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, -76.3 * mirror, -12.2 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, -76.3 * mirror, -12.2 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, -182.4 * mirror, -28.4 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, -182.4 * mirror, -28.4 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, -148.2 * mirror, -26.7 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, -148.2 * mirror, -26.7 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, -363.8 * mirror, -40.2 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, -363.8 * mirror, -40.2 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, -693.8 * mirror, -51.9 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, -693.8 * mirror, -51.9 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, -683.6 * mirror, -51.3 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, -683.6 * mirror, -51.3 , 0 );

setScaleKey( spep_0 + 548 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 577 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 578 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 583 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 586 + OFFSET_X, 1, 0.98, 0.98 );

setRotateKey( spep_0 + 548 + OFFSET_X, 1, 174 * mirror );
setRotateKey( spep_0 + 586 + OFFSET_X, 1, 174 * mirror );

-- 敵の動き5
setDisp( spep_0 + 748 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 832 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 748 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 748 + OFFSET_X, 1, -283.5 * mirror, 237.4 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, -283.5 * mirror, 237.4 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, -283.4 * mirror, 241.5 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, -283.4 * mirror, 241.5 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, -283.3 * mirror, 243.2 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, -283.3 * mirror, 243.2 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, -283.3 * mirror, 244.1 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, -283.3 * mirror, 244.1 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, -279.1 * mirror, 231.2 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, -279.1 * mirror, 231.2 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, -268.4 * mirror, 198.2 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, -268.4 * mirror, 198.2 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, -237.4 * mirror, 102.7 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, -237.4 * mirror, 102.7 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, -212.9 * mirror, 27 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, -212.9 * mirror, 27 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, -896.2 * mirror, 181.9 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, -896.2 * mirror, 181.9 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, -442.8 * mirror, 29.8 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, -442.8 * mirror, 29.8 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, -518.7 * mirror, 139.4 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, -518.7 * mirror, 139.4 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, -314.4 * mirror, 20.7 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, -314.4 * mirror, 20.7 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, -378.7 * mirror, 135 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, -378.7 * mirror, 135 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, -197.7 * mirror, 37.2 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, -197.7 * mirror, 37.2 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, -324.7 * mirror, 120 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, -324.7 * mirror, 120 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, -238.6 * mirror, 83.4 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, -238.6 * mirror, 83.4 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, -268.8 * mirror, 141.5 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, -268.8 * mirror, 141.5 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, -191.7 * mirror, 84 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, -191.7 * mirror, 84 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, -263.5 * mirror, 126.9 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, -263.5 * mirror, 126.9 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, -209.2 * mirror, 81.4 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, -209.2 * mirror, 81.4 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, -262.1 * mirror, 111.1 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, -262.1 * mirror, 111.1 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, -242.9 * mirror, 94 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, -242.9 * mirror, 94 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, -253.6 * mirror, 101.6 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, -253.6 * mirror, 101.6 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, -243.6 * mirror, 101.6 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, -243.6 * mirror, 101.6 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, -241.2 * mirror, 101.8 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, -241.2 * mirror, 101.8 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, -242.3 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, -242.3 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, -243.2 * mirror, 104.5 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, -243.2 * mirror, 104.5 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, -240.5 * mirror, 105.2 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, -240.5 * mirror, 105.2 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, -237 * mirror, 99.8 , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, -237 * mirror, 99.8 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, -239.2 * mirror, 103.5 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, -239.2 * mirror, 103.5 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, -233 * mirror, 102.3 , 0 );
setMoveKey( spep_0 + 821 + OFFSET_X, 1, -233 * mirror, 102.3 , 0 );
setMoveKey( spep_0 + 822 + OFFSET_X, 1, -234.3 * mirror, 98.6 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, -234.3 * mirror, 98.6 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, -227.8 * mirror, 101.8 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, -227.8 * mirror, 101.8 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, -229.6 * mirror, 101.1 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, -229.6 * mirror, 101.1 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, -225 * mirror, 99.8 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, -225 * mirror, 99.8 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, -226.3 * mirror, 101.4 , 0 );
setMoveKey( spep_0 + 832 + OFFSET_X, 1, -226.3 * mirror, 101.4 , 0 );

setScaleKey( spep_0 + 748 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 751 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 752 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 755 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 756 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 759 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 760 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 763 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 764 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 767 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 768 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 771 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 772 + OFFSET_X, 1, 6.89, 6.89 );
setScaleKey( spep_0 + 773 + OFFSET_X, 1, 6.89, 6.89 );
setScaleKey( spep_0 + 774 + OFFSET_X, 1, 9.61, 9.61 );
setScaleKey( spep_0 + 775 + OFFSET_X, 1, 9.61, 9.61 );
setScaleKey( spep_0 + 776 + OFFSET_X, 1, 9.23, 9.23 );
setScaleKey( spep_0 + 777 + OFFSET_X, 1, 9.23, 9.23 );
setScaleKey( spep_0 + 778 + OFFSET_X, 1, 7.32, 7.32 );
setScaleKey( spep_0 + 779 + OFFSET_X, 1, 7.32, 7.32 );
setScaleKey( spep_0 + 780 + OFFSET_X, 1, 6.3, 6.31 );
setScaleKey( spep_0 + 781 + OFFSET_X, 1, 6.3, 6.31 );
setScaleKey( spep_0 + 782 + OFFSET_X, 1, 5.55, 5.55 );
setScaleKey( spep_0 + 783 + OFFSET_X, 1, 5.55, 5.55 );
setScaleKey( spep_0 + 784 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_0 + 785 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_0 + 786 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_0 + 787 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_0 + 788 + OFFSET_X, 1, 4.05, 4.05 );
setScaleKey( spep_0 + 789 + OFFSET_X, 1, 4.05, 4.05 );
setScaleKey( spep_0 + 790 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 791 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 792 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 793 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 794 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 795 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 796 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 797 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 798 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 799 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 800 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 801 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 802 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 803 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 804 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 805 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 806 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_0 + 807 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_0 + 808 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_0 + 811 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_0 + 812 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 815 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 816 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 821 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 822 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 832 + OFFSET_X, 1, 3.59, 3.59 );

setRotateKey( spep_0 + 748 + OFFSET_X, 1, 254 * mirror );
setRotateKey( spep_0 + 775 + OFFSET_X, 1, 254 * mirror );
setRotateKey( spep_0 + 776 + OFFSET_X, 1, 241.4 * mirror );
setRotateKey( spep_0 + 777 + OFFSET_X, 1, 241.4 * mirror );
setRotateKey( spep_0 + 778 + OFFSET_X, 1, 242.2 * mirror );
setRotateKey( spep_0 + 779 + OFFSET_X, 1, 242.2 * mirror );
setRotateKey( spep_0 + 780 + OFFSET_X, 1, 242.9 * mirror );
setRotateKey( spep_0 + 781 + OFFSET_X, 1, 242.9 * mirror );
setRotateKey( spep_0 + 782 + OFFSET_X, 1, 243.7 * mirror );
setRotateKey( spep_0 + 783 + OFFSET_X, 1, 243.7 * mirror );
setRotateKey( spep_0 + 784 + OFFSET_X, 1, 244.2 * mirror );
setRotateKey( spep_0 + 785 + OFFSET_X, 1, 244.2 * mirror );
setRotateKey( spep_0 + 786 + OFFSET_X, 1, 244.9 * mirror );
setRotateKey( spep_0 + 787 + OFFSET_X, 1, 244.9 * mirror );
setRotateKey( spep_0 + 788 + OFFSET_X, 1, 245.4 * mirror );
setRotateKey( spep_0 + 789 + OFFSET_X, 1, 245.4 * mirror );
setRotateKey( spep_0 + 790 + OFFSET_X, 1, 245.9 * mirror );
setRotateKey( spep_0 + 793 + OFFSET_X, 1, 245.9 * mirror );
setRotateKey( spep_0 + 794 + OFFSET_X, 1, 246 * mirror );
setRotateKey( spep_0 + 797 + OFFSET_X, 1, 246 * mirror );
setRotateKey( spep_0 + 798 + OFFSET_X, 1, 246.2 * mirror );
setRotateKey( spep_0 + 832 + OFFSET_X, 1, 246.2 * mirror );

-- 敵の動き6
setDisp( spep_0 + 892 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 902 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 892 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 892 + OFFSET_X, 1, -1628.5 * mirror, -105.9 , 0 );
setMoveKey( spep_0 + 895 + OFFSET_X, 1, -1628.5 * mirror, -105.9 , 0 );
setMoveKey( spep_0 + 896 + OFFSET_X, 1, -656.6 * mirror, 102.3 , 0 );
setMoveKey( spep_0 + 899 + OFFSET_X, 1, -656.6 * mirror, 102.3 , 0 );
setMoveKey( spep_0 + 900 + OFFSET_X, 1, -461.5 * mirror, 144 , 0 );
setMoveKey( spep_0 + 902 + OFFSET_X, 1, -461.5 * mirror, 144 , 0 );

setScaleKey( spep_0 + 892 + OFFSET_X, 1, 15.64, 15.64 );
setScaleKey( spep_0 + 895 + OFFSET_X, 1, 15.64, 15.64 );
setScaleKey( spep_0 + 896 + OFFSET_X, 1, 7.44, 7.44 );
setScaleKey( spep_0 + 899 + OFFSET_X, 1, 7.44, 7.44 );
setScaleKey( spep_0 + 900 + OFFSET_X, 1, 6.21, 6.21 );
setScaleKey( spep_0 + 902 + OFFSET_X, 1, 6.21, 6.21 );

setRotateKey( spep_0 + 892 + OFFSET_X, 1, 131 * mirror );
setRotateKey( spep_0 + 902 + OFFSET_X, 1, 131 * mirror );

-- 敵の動き7
setDisp( spep_0 + 984 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1034 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 984 + OFFSET_X, 1, 5 );
changeAnimeBySide( spep_0 + 1028 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 984 + OFFSET_X, 1, -112.8 * mirror, 471.1 , 0 );
setMoveKey( spep_0 + 985 + OFFSET_X, 1, -112.8 * mirror, 471.1 , 0 );
setMoveKey( spep_0 + 986 + OFFSET_X, 1, -349.6 * mirror, 809.5 , 0 );
setMoveKey( spep_0 + 987 + OFFSET_X, 1, -349.6 * mirror, 809.5 , 0 );
setMoveKey( spep_0 + 988 + OFFSET_X, 1, -208.6 * mirror, 398.8 , 0 );
setMoveKey( spep_0 + 989 + OFFSET_X, 1, -208.6 * mirror, 398.8 , 0 );
setMoveKey( spep_0 + 990 + OFFSET_X, 1, -408.5 * mirror, 821 , 0 );
setMoveKey( spep_0 + 991 + OFFSET_X, 1, -408.5 * mirror, 821 , 0 );
setMoveKey( spep_0 + 992 + OFFSET_X, 1, -249 * mirror, 377.4 , 0 );
setMoveKey( spep_0 + 993 + OFFSET_X, 1, -249 * mirror, 377.4 , 0 );
setMoveKey( spep_0 + 994 + OFFSET_X, 1, -404 * mirror, 688.7 , 0 );
setMoveKey( spep_0 + 995 + OFFSET_X, 1, -404 * mirror, 688.7 , 0 );
setMoveKey( spep_0 + 996 + OFFSET_X, 1, -257.7 * mirror, 412.1 , 0 );
setMoveKey( spep_0 + 997 + OFFSET_X, 1, -257.7 * mirror, 412.1 , 0 );
setMoveKey( spep_0 + 998 + OFFSET_X, 1, -302.7 * mirror, 489.6 , 0 );
setMoveKey( spep_0 + 999 + OFFSET_X, 1, -302.7 * mirror, 489.6 , 0 );
setMoveKey( spep_0 + 1000 + OFFSET_X, 1, -341.9 * mirror, 569 , 0 );
setMoveKey( spep_0 + 1001 + OFFSET_X, 1, -341.9 * mirror, 569 , 0 );
setMoveKey( spep_0 + 1002 + OFFSET_X, 1, -288.9 * mirror, 443.9 , 0 );
setMoveKey( spep_0 + 1003 + OFFSET_X, 1, -288.9 * mirror, 443.9 , 0 );
setMoveKey( spep_0 + 1004 + OFFSET_X, 1, -331.2 * mirror, 509.8 , 0 );
setMoveKey( spep_0 + 1005 + OFFSET_X, 1, -331.2 * mirror, 509.8 , 0 );
setMoveKey( spep_0 + 1006 + OFFSET_X, 1, -309.2 * mirror, 441.9 , 0 );
setMoveKey( spep_0 + 1007 + OFFSET_X, 1, -309.2 * mirror, 441.9 , 0 );
setMoveKey( spep_0 + 1008 + OFFSET_X, 1, -349.8 * mirror, 486.4 , 0 );
setMoveKey( spep_0 + 1009 + OFFSET_X, 1, -349.8 * mirror, 486.4 , 0 );
setMoveKey( spep_0 + 1010 + OFFSET_X, 1, -341.5 * mirror, 447.2 , 0 );
setMoveKey( spep_0 + 1011 + OFFSET_X, 1, -341.5 * mirror, 447.2 , 0 );
setMoveKey( spep_0 + 1012 + OFFSET_X, 1, -358.3 * mirror, 468.3 , 0 );
setMoveKey( spep_0 + 1013 + OFFSET_X, 1, -358.3 * mirror, 468.3 , 0 );
setMoveKey( spep_0 + 1014 + OFFSET_X, 1, -354.8 * mirror, 461.4 , 0 );
setMoveKey( spep_0 + 1015 + OFFSET_X, 1, -354.8 * mirror, 461.4 , 0 );
setMoveKey( spep_0 + 1016 + OFFSET_X, 1, -357.3 * mirror, 460.5 , 0 );
setMoveKey( spep_0 + 1017 + OFFSET_X, 1, -357.3 * mirror, 460.5 , 0 );
setMoveKey( spep_0 + 1018 + OFFSET_X, 1, -359.7 * mirror, 459.9 , 0 );
setMoveKey( spep_0 + 1019 + OFFSET_X, 1, -359.7 * mirror, 459.9 , 0 );
setMoveKey( spep_0 + 1020 + OFFSET_X, 1, -361.8 * mirror, 459.1 , 0 );
setMoveKey( spep_0 + 1021 + OFFSET_X, 1, -361.8 * mirror, 459.1 , 0 );
setMoveKey( spep_0 + 1022 + OFFSET_X, 1, -363.7 * mirror, 458.4 , 0 );
setMoveKey( spep_0 + 1023 + OFFSET_X, 1, -363.7 * mirror, 458.4 , 0 );
setMoveKey( spep_0 + 1024 + OFFSET_X, 1, -365.7 * mirror, 457.7 , 0 );
setMoveKey( spep_0 + 1026 + OFFSET_X, 1, -365.7 * mirror, 457.7 , 0 );
setMoveKey( spep_0 + 1027 + OFFSET_X, 1, -367.7 * mirror, 457.2 , 0 );
setMoveKey( spep_0 + 1028 + OFFSET_X, 1, 149.8 * mirror, 118.4 , 0 );
setMoveKey( spep_0 + 1029 + OFFSET_X, 1, 149.8 * mirror, 118.4 , 0 );
setMoveKey( spep_0 + 1030 + OFFSET_X, 1, 441.4 * mirror, 424.1 , 0 );
setMoveKey( spep_0 + 1031 + OFFSET_X, 1, 441.4 * mirror, 424.1 , 0 );
setMoveKey( spep_0 + 1032 + OFFSET_X, 1, 732.9 * mirror, 729.9 , 0 );
setMoveKey( spep_0 + 1034 + OFFSET_X, 1, 732.9 * mirror, 729.9 , 0 );

setScaleKey( spep_0 + 984 + OFFSET_X, 1, 4.11, 4.12 );
setScaleKey( spep_0 + 985 + OFFSET_X, 1, 4.11, 4.12 );
setScaleKey( spep_0 + 986 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_0 + 987 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_0 + 988 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_0 + 989 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_0 + 990 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 991 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 992 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 993 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 994 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_0 + 995 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_0 + 996 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 997 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 998 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 999 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 1000 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 1001 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 1002 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 1003 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 1004 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 1005 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 1006 + OFFSET_X, 1, 3.05, 3.06 );
setScaleKey( spep_0 + 1007 + OFFSET_X, 1, 3.05, 3.06 );
setScaleKey( spep_0 + 1008 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 1011 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 1012 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 1013 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 1014 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 1017 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 1018 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 1021 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 1022 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 1026 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 1027 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 1028 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 1029 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 1030 + OFFSET_X, 1, 4.85, 4.85 );
setScaleKey( spep_0 + 1031 + OFFSET_X, 1, 4.85, 4.85 );
setScaleKey( spep_0 + 1032 + OFFSET_X, 1, 6.48, 6.48 );
setScaleKey( spep_0 + 1034 + OFFSET_X, 1, 6.48, 6.48 );

setRotateKey( spep_0 + 984 + OFFSET_X, 1, 178 * mirror );
setRotateKey( spep_0 + 985 + OFFSET_X, 1, 178 * mirror );
setRotateKey( spep_0 + 986 + OFFSET_X, 1, 173 * mirror );
setRotateKey( spep_0 + 987 + OFFSET_X, 1, 173 * mirror );
setRotateKey( spep_0 + 988 + OFFSET_X, 1, 168.9 * mirror );
setRotateKey( spep_0 + 989 + OFFSET_X, 1, 168.9 * mirror );
setRotateKey( spep_0 + 990 + OFFSET_X, 1, 165.7 * mirror );
setRotateKey( spep_0 + 991 + OFFSET_X, 1, 165.7 * mirror );
setRotateKey( spep_0 + 992 + OFFSET_X, 1, 163.5 * mirror );
setRotateKey( spep_0 + 993 + OFFSET_X, 1, 163.5 * mirror );
setRotateKey( spep_0 + 994 + OFFSET_X, 1, 162 * mirror );
setRotateKey( spep_0 + 995 + OFFSET_X, 1, 162 * mirror );
setRotateKey( spep_0 + 996 + OFFSET_X, 1, 160.9 * mirror );
setRotateKey( spep_0 + 997 + OFFSET_X, 1, 160.9 * mirror );
setRotateKey( spep_0 + 998 + OFFSET_X, 1, 160.2 * mirror );
setRotateKey( spep_0 + 999 + OFFSET_X, 1, 160.2 * mirror );
setRotateKey( spep_0 + 1000 + OFFSET_X, 1, 159.5 * mirror );
setRotateKey( spep_0 + 1001 + OFFSET_X, 1, 159.5 * mirror );
setRotateKey( spep_0 + 1002 + OFFSET_X, 1, 159.2 * mirror );
setRotateKey( spep_0 + 1003 + OFFSET_X, 1, 159.2 * mirror );
setRotateKey( spep_0 + 1004 + OFFSET_X, 1, 158.7 * mirror );
setRotateKey( spep_0 + 1005 + OFFSET_X, 1, 158.7 * mirror );
setRotateKey( spep_0 + 1006 + OFFSET_X, 1, 158.5 * mirror );
setRotateKey( spep_0 + 1007 + OFFSET_X, 1, 158.5 * mirror );
setRotateKey( spep_0 + 1008 + OFFSET_X, 1, 158.4 * mirror );
setRotateKey( spep_0 + 1009 + OFFSET_X, 1, 158.4 * mirror );
setRotateKey( spep_0 + 1010 + OFFSET_X, 1, 158.2 * mirror );
setRotateKey( spep_0 + 1011 + OFFSET_X, 1, 158.2 * mirror );
setRotateKey( spep_0 + 1012 + OFFSET_X, 1, 158 * mirror );
setRotateKey( spep_0 + 1013 + OFFSET_X, 1, 158 * mirror );
setRotateKey( spep_0 + 1014 + OFFSET_X, 1, 157.9 * mirror );
setRotateKey( spep_0 + 1017 + OFFSET_X, 1, 157.9 * mirror );
setRotateKey( spep_0 + 1018 + OFFSET_X, 1, 157.7 * mirror );
setRotateKey( spep_0 + 1023 + OFFSET_X, 1, 157.7 * mirror );
setRotateKey( spep_0 + 1024 + OFFSET_X, 1, 157.5 * mirror );
setRotateKey( spep_0 + 1026 + OFFSET_X, 1, 157.5 * mirror );
setRotateKey( spep_0 + 1027 + OFFSET_X, 1, 157.4 * mirror );
setRotateKey( spep_0 + 1028 + OFFSET_X, 1, 321 * mirror );
setRotateKey( spep_0 + 1034 + OFFSET_X, 1, 321 * mirror );

-- 敵の動き8
setDisp( spep_0 + 1050 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1080 + OFFSET_X, 1, 0);

--changeAnimeBySide( spep_0 + 1050 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 1050 + OFFSET_X, 1, 151.7 * mirror, 251.9 , 0 );
setMoveKey( spep_0 + 1051 + OFFSET_X, 1, 151.7 * mirror, 251.9 , 0 );
setMoveKey( spep_0 + 1052 + OFFSET_X, 1, 139.1 * mirror, 282.9 , 0 );
setMoveKey( spep_0 + 1053 + OFFSET_X, 1, 139.1 * mirror, 282.9 , 0 );
setMoveKey( spep_0 + 1054 + OFFSET_X, 1, 177.7 * mirror, 302.5 , 0 );
setMoveKey( spep_0 + 1055 + OFFSET_X, 1, 177.7 * mirror, 302.5 , 0 );
setMoveKey( spep_0 + 1056 + OFFSET_X, 1, 139 * mirror, 328.2 , 0 );
setMoveKey( spep_0 + 1057 + OFFSET_X, 1, 139 * mirror, 328.2 , 0 );
setMoveKey( spep_0 + 1058 + OFFSET_X, 1, 161.9 * mirror, 266.6 , 0 );
setMoveKey( spep_0 + 1059 + OFFSET_X, 1, 161.9 * mirror, 266.6 , 0 );
setMoveKey( spep_0 + 1060 + OFFSET_X, 1, 150.7 * mirror, 312.2 , 0 );
setMoveKey( spep_0 + 1061 + OFFSET_X, 1, 150.7 * mirror, 312.2 , 0 );
setMoveKey( spep_0 + 1062 + OFFSET_X, 1, 147.7 * mirror, 296 , 0 );
setMoveKey( spep_0 + 1063 + OFFSET_X, 1, 147.7 * mirror, 296 , 0 );
setMoveKey( spep_0 + 1064 + OFFSET_X, 1, 152.9 * mirror, 338.9 , 0 );
setMoveKey( spep_0 + 1065 + OFFSET_X, 1, 152.9 * mirror, 338.9 , 0 );
setMoveKey( spep_0 + 1066 + OFFSET_X, 1, 140.3 * mirror, 336.8 , 0 );
setMoveKey( spep_0 + 1067 + OFFSET_X, 1, 140.3 * mirror, 336.8 , 0 );
setMoveKey( spep_0 + 1068 + OFFSET_X, 1, 143.3 * mirror, 374.8 , 0 );
setMoveKey( spep_0 + 1071 + OFFSET_X, 1, 143.3 * mirror, 374.8 , 0 );
setMoveKey( spep_0 + 1072 + OFFSET_X, 1, 146.3 * mirror, 401.1 , 0 );
setMoveKey( spep_0 + 1075 + OFFSET_X, 1, 146.3 * mirror, 401.1 , 0 );
setMoveKey( spep_0 + 1076 + OFFSET_X, 1, -78.2 * mirror, 438.4 , 0 );
setMoveKey( spep_0 + 1080 + OFFSET_X, 1, -78.2 * mirror, 438.4 , 0 );

setScaleKey( spep_0 + 1050 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 1075 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 1076 + OFFSET_X, 1, 6.62, 6.62 );
setScaleKey( spep_0 + 1080 + OFFSET_X, 1, 6.62, 6.62 );

setRotateKey( spep_0 + 1050 + OFFSET_X, 1, 296 * mirror );
setRotateKey( spep_0 + 1080 + OFFSET_X, 1, 296 * mirror );

-- 敵の動き9
setDisp( spep_0 + 1102 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1132 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 1102 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 1102 + OFFSET_X, 1, -226.7 * mirror, -35.7 , 0 );
setMoveKey( spep_0 + 1105 + OFFSET_X, 1, -226.7 * mirror, -35.7 , 0 );
setMoveKey( spep_0 + 1106 + OFFSET_X, 1, -56.8 * mirror, 242.4 , 0 );
setMoveKey( spep_0 + 1107 + OFFSET_X, 1, -56.8 * mirror, 242.4 , 0 );
setMoveKey( spep_0 + 1108 + OFFSET_X, 1, 4.4 * mirror, 395.6 , 0 );
setMoveKey( spep_0 + 1109 + OFFSET_X, 1, 4.4 * mirror, 395.6 , 0 );
setMoveKey( spep_0 + 1110 + OFFSET_X, 1, 55.2 * mirror, 485.1 , 0 );
setMoveKey( spep_0 + 1111 + OFFSET_X, 1, 55.2 * mirror, 485.1 , 0 );
setMoveKey( spep_0 + 1112 + OFFSET_X, 1, 42.2 * mirror, 355.4 , 0 );
setMoveKey( spep_0 + 1113 + OFFSET_X, 1, 42.2 * mirror, 355.4 , 0 );
setMoveKey( spep_0 + 1114 + OFFSET_X, 1, 45.2 * mirror, 416.2 , 0 );
setMoveKey( spep_0 + 1115 + OFFSET_X, 1, 45.2 * mirror, 416.2 , 0 );
setMoveKey( spep_0 + 1116 + OFFSET_X, 1, 79.5 * mirror, 459.9 , 0 );
setMoveKey( spep_0 + 1117 + OFFSET_X, 1, 79.5 * mirror, 459.9 , 0 );
setMoveKey( spep_0 + 1118 + OFFSET_X, 1, 112.9 * mirror, 466 , 0 );
setMoveKey( spep_0 + 1119 + OFFSET_X, 1, 112.9 * mirror, 466 , 0 );
setMoveKey( spep_0 + 1120 + OFFSET_X, 1, 98.2 * mirror, 478.3 , 0 );
setMoveKey( spep_0 + 1121 + OFFSET_X, 1, 98.2 * mirror, 478.3 , 0 );
setMoveKey( spep_0 + 1122 + OFFSET_X, 1, 115.7 * mirror, 501 , 0 );
setMoveKey( spep_0 + 1123 + OFFSET_X, 1, 115.7 * mirror, 501 , 0 );
setMoveKey( spep_0 + 1124 + OFFSET_X, 1, 122.3 * mirror, 513.5 , 0 );
setMoveKey( spep_0 + 1125 + OFFSET_X, 1, 122.3 * mirror, 513.5 , 0 );
setMoveKey( spep_0 + 1126 + OFFSET_X, 1, 126.8 * mirror, 522.4 , 0 );
setMoveKey( spep_0 + 1127 + OFFSET_X, 1, 126.8 * mirror, 522.4 , 0 );
setMoveKey( spep_0 + 1128 + OFFSET_X, 1, 129.3 * mirror, 527.5 , 0 );
setMoveKey( spep_0 + 1129 + OFFSET_X, 1, 129.3 * mirror, 527.5 , 0 );
setMoveKey( spep_0 + 1132 + OFFSET_X, 1, 129.8 * mirror, 529.3 , 0 );

setScaleKey( spep_0 + 1102 + OFFSET_X, 1, 6.74, 6.74 );
setScaleKey( spep_0 + 1105 + OFFSET_X, 1, 6.74, 6.74 );
setScaleKey( spep_0 + 1106 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_0 + 1107 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_0 + 1108 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 1109 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 1110 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 1111 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 1112 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 1113 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 1114 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 1115 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 1116 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 1117 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 1118 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 1119 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 1120 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 1121 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 1122 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 1123 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 1124 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 1125 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 1126 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 1127 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 1128 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 1132 + OFFSET_X, 1, 0.13, 0.13 );

setRotateKey( spep_0 + 1102 + OFFSET_X, 1, 417 * mirror );
setRotateKey( spep_0 + 1132 + OFFSET_X, 1, 417 * mirror );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 283, 0, 27, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--拳にぎる
SE002 = playSeVer2( spep_0 + 11, 1189, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 11, 1233, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 17, 1330, "",spep_0 + 87, 0, 31, -1);

--構える
SE005 = playSeVer2( spep_0 + 62, 1004, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 90, 1241, "",spep_0 + 163, 0, 24, -1);
setPitch( spep_0 + 90, SE007, -1200 );
setTimeStretch( SE007, 0.2, 30, 4 );
SE008 = playSeVer2( spep_0 + 90, 1006, "", 0, 0, 0, -1);

--気ダメ
SE009 = playSeVer2( spep_0 + 126, 1035, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 127, 1503, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 134, 1504, "", 0, 0, 0, -1);

--向かってくる
SE012 = playSeVer2( spep_0 + 175, 1024, "",spep_0 + 238, 0, 23, -1);
SE013 = playSeVer2( spep_0 + 175, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 183, 1277, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 196; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);

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

-- ** SE ** --
--殴る
SE015 = playSeVer2( spep_0 + 208, 1414, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 209, 1187, "", 0, 0, 0, -1);

--飛びかかる
SE018 = playSeVer2( spep_0 + 361, 1024, "",spep_0 + 444, 0, 47, -1);
SE019 = playSeVer2( spep_0 + 361, 1182, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 364, 1355, "",spep_0 + 455, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 364, SE020, 69 );
setPitch( spep_0 + 364, SE020, 600 );
setTimeStretch( SE020, 0.93, 30, 4 );
SE021 = playSeVer2( spep_0 + 367, 1167, "",spep_0 + 431, 0, 24, -1);

--叩きつける
SE022 = playSeVer2( spep_0 + 434, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 434, SE022, 90 );
SE023 = playSeVer2( spep_0 + 438, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 438, SE023, 90 );

--オーラ
SE024 = playSeVer2( spep_0 + 460, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE024, 50 );
SE026 = playSeVer2( spep_0 + 484, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 484, SE026, 50 );
SE027 = playSeVer2( spep_0 + 508, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 508, SE027, 50 );
SE028 = playSeVer2( spep_0 + 532, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 532, SE028, 50 );

--画面遷移
SE025 = playSeVer2( spep_0 + 475, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 475, SE025, 71 );

--水飛沫
SE029 = playSeVer2( spep_0 + 559, 1163, "", 0, 3, 0, -1);
setSeVolumeByWorkId( spep_0 + 559, SE029, 292 );
setStartTimeMs( SE029,  300 );
SE033 = playSeVer2( spep_0 + 574, 1163, "", 0, 3, 0, -1);
setStartTimeMs( SE033,  300 );
SE034 = playSeVer2( spep_0 + 568, 1160, "",spep_0 + 670, 0, 72, -1);

--エルボー
SE030 = playSeVer2( spep_0 + 545, 1003, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 548, 1110, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 548, 1153, "", 0, 0, 0, -1);

--敵飛んでいく
SE035 = playSeVer2( spep_0 + 575, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 575, SE035, 69 );
SE036 = playSeVer2( spep_0 + 575, 1027, "", 0, 0, 0, -1);

--気ダメ
SE037 = playSeVer2( spep_0 + 654, 1035, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 654, 1503, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 665, 1504, "", 0, 0, 0, -1);

--追いかける
SE040 = playSeVer2( spep_0 + 691, 1183, "",spep_0 + 816, 0, 28, -1);
SE041 = playSeVer2( spep_0 + 691, 1166, "",spep_0 + 824, 0, 37, -1);
setSeVolumeByWorkId( spep_0 + 691, SE041, 80 );
SE042 = playSeVer2( spep_0 + 694, 1117, "", 0, 0, 0, -1);

--頭突き
SE043 = playSeVer2( spep_0 + 777, 1049, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 777, 1187, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 786, 1470, "",spep_0 + 894, 0, 54, -1);

--オーラ
SE046 = playSeVer2( spep_0 + 791, 1176, "",spep_0 + 1029, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 791, SE046, 54 );
SE047 = playSeVer2( spep_0 + 825, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 825, SE047, 50 );
SE048 = playSeVer2( spep_0 + 849, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 849, SE048, 50 );
SE049 = playSeVer2( spep_0 + 873, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 873, SE049, 50 );
SE050 = playSeVer2( spep_0 + 897, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 897, SE050, 50 );
SE052 = playSeVer2( spep_0 + 921, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 921, SE052, 50 );
SE054 = playSeVer2( spep_0 + 945, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 945, SE054, 50 );
SE055 = playSeVer2( spep_0 + 969, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 969, SE055, 50 );
SE059 = playSeVer2( spep_0 + 993, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 993, SE059, 50 );

--振りかぶる
SE051 = playSeVer2( spep_0 + 913, 1004, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 927, 1116, "",spep_0 + 973, 0, 16, -1);

--アッパー
SE056 = playSeVer2( spep_0 + 970, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 970, SE056, 214 );
SE057 = playSeVer2( spep_0 + 979, 1049, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_0 + 981, 1187, "", 0, 0, 0, -1);

--溜め
SE060 = playSeVer2( spep_0 + 1049, 1443, "",spep_0 + 1131, 7, 22, -1);
setSeVolumeByWorkId( spep_0 + 1049, SE060, 138 );
setStartTimeMs( SE060,  933 );
setPitch( spep_0 + 1049, SE060, 600 );
setTimeStretch( SE060, 1.4, 30, 4 );

--拳めりこませる
SE061 = playSeVer2( spep_0 + 1040, 1359, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_0 + 1044, 1153, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_0 + 1052, 1465, "", 0, 0, 0, -1);

--風圧
SE064 = playSeVer2( spep_0 + 1096, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1096, SE064, 79 );

--ラスト殴り飛ばし
SE065 = playSeVer2( spep_0 + 1104, 1120, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_0 + 1104, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1104, SE066, 65 );

-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 1052); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 終了フレーム 1158f