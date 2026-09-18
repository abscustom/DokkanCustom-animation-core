--1034700:UR_リクーム+グルド_必殺技：リクームイレイザーガン
--sp_effect_b4_00445
--sp3071

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164535;--最初〜最後まで ef_001

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 280;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        SE007 = playSeVer2( spep_0 + 283, 1109, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_0 + 283, SE007, 141 );
        SE008 = playSeVer2( spep_0 + 283, 1213, "",spep_0 + 360, 0, 23, -1);
        setSeVolumeByWorkId( spep_0 + 283, SE008, 69 );
        SE009 = playSeVer2( spep_0 + 283, 1177, "",spep_0 + 365, 0, 25, -1);

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
MAX_FRAME_0 = 476;
CARD_FRAME = 88;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初〜最後まで ef_001
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
setDisp( spep_0 + 300 + OFFSET_X, 1, 1);
setDisp( spep_0 + 338 + OFFSET_X, 1, 0);

changeAnimeBySide( spep_0 + 300 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 300 + OFFSET_X, 1, 640 * mirror, -131.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 640 * mirror, -131.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 556.9 * mirror, -128.5 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 556.9 * mirror, -128.5 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 536.3 * mirror, -95.7 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 536.3 * mirror, -95.7 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 461.3 * mirror, -91 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 461.3 * mirror, -91 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 413.8 * mirror, -80.6 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 413.8 * mirror, -80.6 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 357.5 * mirror, -55.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 357.5 * mirror, -55.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 310.1 * mirror, -45.2 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 310.1 * mirror, -45.2 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 253.8 * mirror, -20.1 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 253.8 * mirror, -20.1 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 206.4 * mirror, -9.7 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 206.4 * mirror, -9.7 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 150.1 * mirror, 15.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 150.1 * mirror, 15.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 154.5 * mirror, 8 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 154.5 * mirror, 8 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 150.1 * mirror, 15.4 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 150.1 * mirror, 15.4 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 154.5 * mirror, 8 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 154.5 * mirror, 8 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 150.1 * mirror, 15.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 150.1 * mirror, 15.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 154.5 * mirror, 8 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 154.5 * mirror, 8 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 150.1 * mirror, 15.4 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 150.1 * mirror, 15.4 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 154.5 * mirror, 8 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 154.5 * mirror, 8 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 150.1 * mirror, 15.4 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 150.1 * mirror, 15.4 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 154.5 * mirror, 8 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 154.5 * mirror, 8 , 0 );

setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.64, 0.64 );

setRotateKey( spep_0 + 300 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, 0 * mirror );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--気弾溜め
SE001 = playSeVer2( spep_0 + 0, 1266, "",spep_0 + 106, 4, 11, -1);
setStartTimeMs( SE001,  1500 );
SE002 = playSeVer2( spep_0 + 0, 1255, "",spep_0 + 110, 3, 15, -1);
setStartTimeMs( SE002,  700 );
SE003 = playSeVer2( spep_0 + 0, 1264, "",spep_0 + 102, 0, 7, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 61 );
SE004 = playSeVer2( spep_0 + 0, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 76 );

--気弾発射
SE007 = playSeVer2( spep_0 + 198, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE007, 141 );
SE008 = playSeVer2( spep_0 + 200, 1213, "",spep_0 + 360, 0, 23, -1);
setSeVolumeByWorkId( spep_0 + 200, SE008, 69 );
SE009 = playSeVer2( spep_0 + 200, 1177, "",spep_0 + 365, 0, 25, -1);

--気弾飛んでいく
SE010 = playSeVer2( spep_0 + 287, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 287, SE010, 162 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 320; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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
--爆発
SE011 = playSeVer2( spep_0 + 335, 1159, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 345, 1024, "", 0, 0, 0, -1);

-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 346); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 476