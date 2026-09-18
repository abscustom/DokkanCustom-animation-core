--1034690:UR_ギニュー(孫悟空)_必殺技：ミルキーキャノン
--sp_effect_b4_00444
--sp3070

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164547; --最初〜最後まで ef_001

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



ENABLE_AUTO_TIME_STRETCH(0.76);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 333;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --敵ヒット
        SE014 = playSeVer2( spep_0 + 333 + 3, 1202, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_0 + 333 + 3, SE014, 180 );


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
MAX_FRAME_0 = 500;
CARD_FRAME = 96;

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
setDisp( spep_0 + 284 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 334 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 284 + OFFSET_X, 1, 117 );
changeAnimeBySide( spep_0 + 306 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 284 + OFFSET_X, 1, 419.4 * mirror, -35 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 419.4 * mirror, -35 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 403.5 * mirror, -35 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 403.5 * mirror, -35 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 387.5 * mirror, -34.9 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 387.5 * mirror, -34.9 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 371.6 * mirror, -34.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 371.6 * mirror, -34.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 355.6 * mirror, -34.8 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 355.6 * mirror, -34.8 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 339.6 * mirror, -34.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 339.6 * mirror, -34.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 323.7 * mirror, -34.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 323.7 * mirror, -34.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 307.7 * mirror, -34.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 307.7 * mirror, -34.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 291.7 * mirror, -34.5 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 291.7 * mirror, -34.5 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 275.8 * mirror, -34.4 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 275.8 * mirror, -34.4 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 248.3 * mirror, -34.6 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 248.3 * mirror, -34.6 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 220.8 * mirror, -34.7 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 220.8 * mirror, -34.7 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 193.3 * mirror, -34.9 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 193.3 * mirror, -34.9 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 165.8 * mirror, -34.9 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 165.8 * mirror, -34.9 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 138.3 * mirror, -35 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 138.3 * mirror, -35 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 78.2 * mirror, -35.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 78.2 * mirror, -35.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 89.5 * mirror, -35.2 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 89.5 * mirror, -35.2 , 0 );

setScaleKey( spep_0 + 284 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.54, 0.54 );

setRotateKey( spep_0 + 284 + OFFSET_X, 1, 10.6 * mirror );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 10.6 * mirror );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 10.7 * mirror );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 10.7 * mirror );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 10.8 * mirror );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 10.8 * mirror );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 10.9 * mirror );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 10.9 * mirror );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 11 * mirror );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 11 * mirror );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 11.1 * mirror );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 11.1 * mirror );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 11.2 * mirror );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 11.2 * mirror );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 11.3 * mirror );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, 11.3 * mirror );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 11.4 * mirror );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 11.4 * mirror );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 11.5 * mirror );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 11.5 * mirror );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 11.7 * mirror );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 11.7 * mirror );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 11.9 * mirror );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 11.9 * mirror );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 12 * mirror );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, 12 * mirror );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 12.2 * mirror );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, 12.2 * mirror );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 12.4 * mirror );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, 12.4 * mirror );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, 12.5 * mirror );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 12.5 * mirror );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 12.7 * mirror );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 12.7 * mirror );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--セリフカットイン
--SE002 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);
--気弾溜め
SE003 = playSeVer2( spep_0 + 19, 1161, "",spep_0 + 117, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 19, SE003, 73 );
SE004 = playSeVer2( spep_0 + 39, 1037, "",spep_0 + 115, 0, 7, -1);
setSeVolumeByWorkId( spep_0 + 39, SE004, 87 );
SE005 = playSeVer2( spep_0 + 39, 1200, "",spep_0 + 114, 0, 7, -1);
setSeVolumeByWorkId( spep_0 + 39, SE005, 260 );
SE006 = playSeVer2( spep_0 + 39, 1122, "",spep_0 + 116, 0, 9, -1);
setSeVolumeByWorkId( spep_0 + 39, SE006, 61 );
--カードカットイン
--SE007 = playSeVer2( spep_0 + 104, 1035, "", 0, 0, 0, -1);
--発射前気弾溜め
SE008 = playSeVer2( spep_0 + 187, 1200, "",spep_0 + 234, 6, 15, -1);
setSeVolumeByWorkId( spep_0 + 187, SE008, 266 );
setStartTimeMs( SE008, 567 );
SE009 = playSeVer2( spep_0 + 185, 1161, "",spep_0 + 233, 8, 13, -1);
setStartTimeMs( SE009, 433 );
SE010 = playSeVer2( spep_0 + 184, 1037, "",spep_0 + 232, 0, 12, -1);
--気弾発射
SE011 = playSeVer2( spep_0 + 216, 1133, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE011, 85 );
SE012 = playSeVer2( spep_0 + 216, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE012, 84 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 260; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
-- stopSe( SP_dodge - 12, SE003, 0);
-- stopSe( SP_dodge - 12, SE004, 0);
-- stopSe( SP_dodge - 12, SE005, 0);
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
--気弾飛んでいく
SE013 = playSeVer2( spep_0 + 281, 1021, "", 0, 0, 0, -1);
--敵ヒット
SE014 = playSeVer2( spep_0 + 327, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 327, SE014, 180 );
SE015 = playSeVer2( spep_0 + 335, 1213, "",spep_0 + 462, 0, 80, -1);
setSeVolumeByWorkId( spep_0 + 335, SE015, 58 );
SE016 = playSeVer2( spep_0 + 335, 1168, "",spep_0 + 465, 0, 83, -1);
setSeVolumeByWorkId( spep_0 + 335, SE016, 79 );
--爆発
SE017 = playSeVer2( spep_0 + 393, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 393, SE017, 72 );
SE018 = playSeVer2( spep_0 + 393, 1067, "", 0, 0, 0, -1);


-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 380); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 500