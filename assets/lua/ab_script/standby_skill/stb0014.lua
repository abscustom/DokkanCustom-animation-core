--1033760:LR_ピッコロ_スタンバイ演出
--sp_effect_b4_00427
--stb0014

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164465;  -- スタンバイ ef_001


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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);
-------------------------------------------------
-- スタンバイ
-------------------------------------------------
MAX_FRAME_0 = 1628;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- スタンバイ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_0 + 340 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 606 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 340 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 340 + OFFSET_X, 1, 12, 102.6 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 12, 102.6 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 12, 102.7 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 12, 102.7 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 12, 102.8 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 12, 102.8 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 12.1, 102.8 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 12.1, 102.8 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 12.1, 102.9 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 12.1, 102.9 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 12.1, 103 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 12.1, 103 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 12.1, 103.1 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 12.1, 103.1 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 12.1, 103.2 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 12.1, 103.2 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 12.1, 103.3 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 12.1, 103.3 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 12.1, 103.4 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 12.1, 103.4 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 12.1, 103.5 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 12.1, 103.5 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 12.1, 103.6 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 12.1, 103.6 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 12.1, 103.7 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 12.1, 103.7 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 12.2, 103.7 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 12.2, 103.7 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 12.2, 103.8 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 12.2, 103.8 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 12.2, 103.9 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 12.2, 103.9 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 12.2, 104 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 12.2, 104 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 12.2, 104.1 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 12.2, 104.1 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 12.2, 104.2 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 12.2, 104.2 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 12.2, 104.3 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 12.2, 104.3 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 12.2, 104.4 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 12.2, 104.4 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 12.2, 104.5 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 12.2, 104.5 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 12.2, 104.6 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 12.2, 104.6 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 12.3, 104.6 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 12.3, 104.6 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 12.3, 104.7 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 12.3, 104.7 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 12.3, 104.8 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 12.3, 104.8 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 12.3, 104.9 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 12.3, 104.9 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 12.3, 105 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 12.3, 105 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 12.3, 105.1 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 12.3, 105.1 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 12.3, 105.2 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 12.3, 105.2 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 12.3, 105.3 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 12.3, 105.3 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 12.3, 105.4 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 12.3, 105.4 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 12.3, 105.5 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 12.3, 105.5 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 12.4, 105.5 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 12.4, 105.5 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 12.4, 105.6 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 12.4, 105.6 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 12.4, 105.7 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 12.4, 105.7 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 12.4, 105.8 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 12.4, 105.8 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 12.4, 105.9 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 12.4, 105.9 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 12.4, 106 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 12.4, 106 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 12.4, 106.1 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 12.4, 106.1 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 12.4, 106.2 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 12.4, 106.2 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 12.4, 106.3 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 12.4, 106.3 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 12.4, 106.4 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 12.4, 106.4 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 12.5, 106.4 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 12.5, 106.4 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 12.5, 106.5 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 12.5, 106.5 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 12.5, 106.6 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 12.5, 106.6 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 12.5, 106.7 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 12.5, 106.7 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 12.5, 106.8 , 0 );

setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 581 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 0.73, 0.73 );

setRotateKey( spep_0 + 340 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 606 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 4, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 63 );

--構える
SE003 = playSeVer2( spep_0 + 1062, 1189, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 1062, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1062, SE004, 63 );

--悟空とびかかる
SE005 = playSeVer2( spep_0 + 1250, 1452, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 1250, 1207, "",spep_0 + 1340, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 1250, SE006, 68 );

--気弾溜め
SE007 = playSeVer2( spep_0 + 1310, 1226, "", 0, 90, 0, -1);
setSeVolumeByWorkId( spep_0 + 1310, SE007, 45 );

--構える
SE008 = playSeVer2( spep_0 + 1314, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE009 = playSeVer2( spep_0 + 1326, 1229, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 1392, 1391, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1392, SE010, 73 );
SE011 = playSeVer2( spep_0 + 1450, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1450, SE011, 126 );
SE012 = playSeVer2( spep_0 + 1450, 1295, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1450, SE012, 200 );

--一瞬光る
SE013 = playSeVer2( spep_0 + 1486, 1231, "", 0, 0, 0, -1);


-- ** ボイス ** --

--「おめえ とっておきのあたらしい技ってのできあがったってホントか…？」
playVoice( spep_0 + 2, 1183 );
setVoiceVolume( spep_0 + 2, 1183, 108 );

--「まあな……」
playVoice( spep_0 + 264, 1184 );
setVoiceVolume( spep_0 + 264, 1184, 108 );

--「だが この技は気をためるのにやたら時間がかかる…」
playVoice( spep_0 + 334, 1185 );
setVoiceVolume( spep_0 + 334, 1185, 108 );

--「きさま そのあいだヤツとひとりで闘って注意をひきつけろ…」
playVoice( spep_0 + 600, 1186 );
setVoiceVolume( spep_0 + 600, 1186, 108 );

--「わかった…くいとめてみっか！！」
playVoice( spep_0 + 916, 1187 );
setVoiceVolume( spep_0 + 916, 1187, 108 );

--「せいぜいふんばってくれよ…！」
playVoice( spep_0 + 1094, 1188 );
setVoiceVolume( spep_0 + 1094, 1188, 108 );
-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1628F

end
