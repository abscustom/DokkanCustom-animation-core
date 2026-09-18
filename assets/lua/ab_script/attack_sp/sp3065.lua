--1034550:UR_ドクター・ゲロ_必殺技：フォトンウェイブ
--sp_effect_a1_00545
--sp3065

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164551; --スタート〜フィニッシュまで ef_001

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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 522;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --気弾発射
        SE014 = playSeVer2( spep_0 + 522+3, 1024, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_0 + 522+3, SE014, 75 );

        --敵ヒット
        SE015 = playSeVer2( spep_0 + 522+3, 1180, "", 0, 0, 0, -1);
        SE016 = playSeVer2( spep_0 + 529+3, 1011, "", 0, 0, 0, -1);

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
-- スタート〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_0 = 700;
CARD_FRAME = 208;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- スタート〜フィニッシュまで(ef_001)
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
spep_x = spep_0 + 4; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
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
-- 敵の動き1
setDisp( spep_0 + 468 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 522 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 468 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 468 + OFFSET_X, 1, 26.8 * mirror, 189.5 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 26.8 * mirror, 189.5 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 32.3 * mirror, 192.4 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 32.3 * mirror, 192.4 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 36.8 * mirror, 188.9 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 36.8 * mirror, 188.9 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 26.8 * mirror, 189.5 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 26.8 * mirror, 189.5 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 32.2 * mirror, 178.5 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 32.2 * mirror, 178.5 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 36.7 * mirror, 175 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 36.7 * mirror, 175 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 26.8 * mirror, 168.5 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 26.8 * mirror, 168.5 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 32.3 * mirror, 171.5 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 32.3 * mirror, 171.5 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 36.8 * mirror, 161.1 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 36.8 * mirror, 161.1 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 26.8 * mirror, 161.6 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 26.8 * mirror, 161.6 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 32.3 * mirror, 157.6 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 32.3 * mirror, 157.6 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 36.8 * mirror, 154.1 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 36.8 * mirror, 154.1 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 26.8 * mirror, 147.7 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 26.8 * mirror, 147.7 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 32.3 * mirror, 147.2 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 32.3 * mirror, 147.2 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 36.7 * mirror, 140.1 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 36.7 * mirror, 140.1 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 26.7 * mirror, 137.2 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 26.7 * mirror, 137.2 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 32.2 * mirror, 136.6 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 32.2 * mirror, 136.6 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 36.7 * mirror, 129.7 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 36.7 * mirror, 129.7 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 26.7 * mirror, 126.7 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 26.7 * mirror, 126.7 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 32.2 * mirror, 126.2 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 32.2 * mirror, 126.2 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 44.5 * mirror, 133.9 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 44.5 * mirror, 133.9 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 27.9 * mirror, 91.3 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 27.9 * mirror, 91.3 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 19.6 * mirror, 128.3 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 19.6 * mirror, 128.3 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 36.7 * mirror, 108.8 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 36.7 * mirror, 108.8 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 26.6 * mirror, 105.9 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 26.6 * mirror, 105.9 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 32.1 * mirror, 105.4 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 32.1 * mirror, 105.4 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 36.1 * mirror, 97.9 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 36.1 * mirror, 97.9 , 0 );

setScaleKey( spep_0 + 468 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 2.04, 2.04 );

setRotateKey( spep_0 + 468 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 522 + OFFSET_X, 1, 0 * mirror );

-- 敵の動き2
setDisp( spep_0 + 530 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 546 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 530 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 530 + OFFSET_X, 1, 1.3 * mirror, 56.3 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 1.3 * mirror, 56.3 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 8.4 * mirror, 54.8 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 8.4 * mirror, 54.8 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 0.9 * mirror, 57.5 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 0.9 * mirror, 57.5 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 9 * mirror, 62.5 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 9 * mirror, 62.5 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 13.5 * mirror, 59 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 13.5 * mirror, 59 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 136.5 * mirror, 179.6 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 136.5 * mirror, 179.6 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 390.5 * mirror, 378.5 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 390.5 * mirror, 378.5 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 493.5 * mirror, 547.6 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 493.5 * mirror, 547.6 , 0 );

setScaleKey( spep_0 + 530 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 2.78, 2.78 );

setRotateKey( spep_0 + 530 + OFFSET_X, 1, -33.1 * mirror );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, -33.1 * mirror );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, -33 * mirror );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, -33 * mirror );

setBlendColor( spep_0 + 530 + OFFSET_X, 1, 3, 1, 0.51, 1, 0.35 );
setBlendColor( spep_0 + 546 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 238, 0, 25, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE003 = playSeVer2( spep_0 + 123, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 123, SE003, 61 );

--手のひら光る
SE004 = playSeVer2( spep_0 + 160, 1221, "",spep_0 + 233, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 160, SE004, 140 );
setPitch( spep_0 + 160, SE004, -500 );
setTimeStretch( SE004, 0.67, 30, 4 );

--画面遷移
SE006 = playSeVer2( spep_0 + 301, 8, "", 0, 0, 0, -1);

--構える
SE007 = playSeVer2( spep_0 + 330, 1182, "", 0, 13, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE007, 70 );
setStartTimeMs( SE007,  67 );
SE008 = playSeVer2( spep_0 + 338, 1333, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 349, 1116, "",spep_0 + 402, 0, 24, -1);
SE010 = playSeVer2( spep_0 + 370, 1501, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 370, 1332, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 440; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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
--気弾発射
SE012 = playSeVer2( spep_0 + 440, 1022, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 440, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 440, SE013, 62 );
SE014 = playSeVer2( spep_0 + 458, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 458, SE014, 75 );

--敵ヒット
SE015 = playSeVer2( spep_0 + 511, 1180, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 518, 1011, "", 0, 0, 0, -1);

--爆発
SE017 = playSeVer2( spep_0 + 557, 1159, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 562, 1160, "", 0, 0, 0, -1);

-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 558); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 700F