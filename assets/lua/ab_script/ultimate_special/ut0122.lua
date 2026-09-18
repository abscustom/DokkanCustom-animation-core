-- 1033010:UR_ダーブラ_アクティブ必殺：エビルフレイム
-- sp_effect_a9_00165
-- ut0122

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01  = 164402;  --   ef_001 口から炎を出して敵を飛ばす

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;---記載するspepの数に要注意

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 450 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 450 -13, SP_01, spep_0 + 450 -13, 1);

       else
            skipFrame(0, spep_0 + 424);  -- スキップ先フレーム指定
            setupMovie(spep_0 + 424, SP_01, spep_0 + 424, 1);

            --環境音
            SE002 = playSeVer2( spep_0 + 424+1, 1269, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 424+1, SE002, 25 );

            --フレイム放つ
            SE007 = playSeVer2( spep_0 + 424+1, 1258, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 424+1, SE007, 81 );
            SE008 = playSeVer2( spep_0 + 428+1, 1027, "", 0, 0, 0, -1);
            SE009 = playSeVer2( spep_0 + 428+1, 1022, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 428+1, SE009, 95 );
            SE010 = playSeVer2( spep_0 + 430+1, 1145, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 430+1, SE010, 68 );
            SE011 = playSeVer2( spep_0 + 450+1, 1211, "",spep_0 + 568, 0, 66, -1);
            setSeVolumeByWorkId( spep_0 + 450+1, SE011, 188 );
       end
    else 
        setupMovie(0, SP_01, 0, 1);
    end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 口から炎を出して敵を飛ばす
------------------------------------------------------
MAX_FRAME_0 = 820;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 口から炎を出して敵を飛ばす(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 480 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 558 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 480 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 494 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 480 + OFFSET_X, 1, 78, 127 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 78, 127 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 106.5, 127 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 106.5, 127 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 118.7, 139 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 118.7, 139 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 104.9, 123 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 104.9, 123 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 104.1, 137.8 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 104.1, 137.8 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 118.2, 122.7 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 118.2, 122.7 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 119.3, 139.4 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 119.3, 139.4 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 111.3, 135.1 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 111.3, 135.1 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 112.3, 141.7 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 112.3, 141.7 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 119.3, 137.3 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 119.3, 137.3 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 120.2, 144.8 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 120.2, 144.8 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 115.1, 141.2 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 115.1, 141.2 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 115.9, 147.5 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 115.9, 147.5 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 122.7, 142.8 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 122.7, 142.8 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 123.4, 150.1 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 123.4, 150.1 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 118.2, 146.2 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 118.2, 146.2 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 118.8, 152.3 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 118.8, 152.3 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 125.5, 147.3 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 125.5, 147.3 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 126, 154.3 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 126, 154.3 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 120.6, 150.2 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 120.6, 150.2 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 121.1, 156 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 121.1, 156 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 127.6, 150.8 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 127.6, 150.8 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 128, 157.5 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 128, 157.5 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 122.4, 153.1 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 122.4, 153.1 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 122.7, 158.7 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 122.7, 158.7 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 129, 153.2 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 129, 153.2 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 129.3, 159.6 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 129.3, 159.6 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 123.5, 155 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 123.5, 155 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 123.7, 160.3 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 123.7, 160.3 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 129.8, 154.5 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 129.8, 154.5 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 129.9, 160.7 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 129.9, 160.7 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 124, 155.8 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 124, 155.8 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 124, 160.8 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 124, 160.8 , 0 );

setScaleKey( spep_0 + 480 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 527 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 0.35, 0.35 );

setRotateKey( spep_0 + 480 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 600 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 720 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 600 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 600 + OFFSET_X, 1, 189.2, 369 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 189.2, 369 , 0 );

setScaleKey( spep_0 + 600 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 720 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_0 + 600 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 720 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );

--吸い込む
SE004 = playSeVer2( spep_0 + 288, 1229, "",spep_0 + 426, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 288, SE004, 130 );
SE005 = playSeVer2( spep_0 + 288, 1227, "",spep_0 + 424, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 288, SE005, 180 );
SE006 = playSeVer2( spep_0 + 302, 1119, "",spep_0 + 368, 0, 30, -1);
setPitch( spep_0 + 302, SE006, -1200 );
setTimeStretch( SE006, 0.2, 30, 4 );

--フレイム放つ
SE007 = playSeVer2( spep_0 + 396, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 396, SE007, 81 );
setTimeStretch( SE007, 1.2, 30, 4 );
SE008 = playSeVer2( spep_0 + 400, 1027, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 400, 1022, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE009, 95 );
SE010 = playSeVer2( spep_0 + 402, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE010, 68 );
SE011 = playSeVer2( spep_0 + 422, 1211, "",spep_0 + 568, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 422, SE011, 188 );

--敵ヒット
SE012 = playSeVer2( spep_0 + 490, 1024, "", 0, 0, 0, -1);

--振り返る
SE013 = playSeVer2( spep_0 + 604, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 604, SE013, 168 );

--腕上げる
SE014 = playSeVer2( spep_0 + 646, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 646, SE014, 56 );

--手首返す
SE015 = playSeVer2( spep_0 + 662, 4, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 704, 4, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 722, 37, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 722, SE017, 79 );
SE018 = playSeVer2( spep_0 + 724, 4, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 758, 4, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 758, 37, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 758, SE020, 79 );

-- ** ボイス ** --
--「暗黒魔界の王の力を教えてやろう！！」
playVoice( spep_0 + 6, 1163 );
setVoiceVolume( spep_0 + 6, 1163, 112 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 450; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, - 1, 0, 0, - 350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, - 1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge + 10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** おわり ** --
--hideKoScreen();
dealDamage( spep_0 + 600 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 終了フレーム 820F

else end
