--4031730:LR_ゴジータ+ゴールデンフリーザ_アクティブ必殺：かめはめ波
--sp_effect_a1_00502
--ut0108

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164070; --ef_001 敵より前面

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
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 640 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 640 -13, SP_01, spep_0 + 640 -13 + 2, 1);
       else
           skipFrame(0, spep_0 + 556 - 1);  -- スキップ先フレーム指定
           setupMovie(spep_0 + 556, SP_01, spep_0 + 556 + 2, 1);

            --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
            --気を溜める
            SE005 = playSeVer2( spep_0 + 556, 1181, "",spep_0 + 610, 0, 18, -1);
            setSeVolumeByWorkId( spep_0 + 556, SE005, 188 );
            --オーラ（近）
            SE008 = playSeVer2( spep_0 + 556, 1176, "",spep_0 + 612, 0, 22, -1);
            setSeVolumeByWorkId( spep_0 + 556, SE008, 79 );
            --オーラ
            SE023 = playSeVer2( spep_0 + 556, 1036, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 556, SE023, 63 );
            --かめはめ波溜め
            SE024 = playSeVer2( spep_0 + 556, 1209, "", 0, 0, 0, -1);

            --ボイス名
            --playVoice( spep_0 + 000, XXX );
            --setVoiceVolume( spep_0 + 000, XXX, 100 );
       end
    else

        setupMovie(0, SP_01, 0, 1);

    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 敵より前面,敵より背面
-------------------------------------------------

MAX_FRAME_0 = 860;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001(敵より前面)
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_0 + 0, base_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1
setDisp(spep_0 + 498 + OFFSET_X, 1, 1);
setDisp(spep_0 + 512 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 498 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 504 + OFFSET_X, 1, 18 );

setMoveKey( spep_0 + 498 + OFFSET_X, 1, 478.9, -298.9 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 478.9, -298.9 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 285.6, -253.3 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 285.6, -253.3 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 92.3, -207.7 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 92.3, -207.7 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -100.9, -162.2 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -100.9, -162.2 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -294.2, -127.2 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -294.2, -127.2 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -487.5, -92.2 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -487.5, -92.2 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -680.8, -57.2 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -680.8, -57.2 , 0 );

setScaleKey( spep_0 + 498 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_0 + 498 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 512 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp(spep_0 + 538 + OFFSET_X, 1, 1);
setDisp(spep_0 + 554 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 538 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 546 + OFFSET_X, 1, 18 );

setMoveKey( spep_0 + 538 + OFFSET_X, 1, 641.4, -213.4 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 641.4, -213.4 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 465.3, -174 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 465.3, -174 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 289.1, -134.5 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 289.1, -134.5 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 112.9, -95.1 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 112.9, -95.1 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, -62.7, -55 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, -62.7, -55 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, -238.8, -15.5 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, -238.8, -15.5 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, -415, 23.9 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, -415, 23.9 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, -591.2, 63.4 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, -591.2, 63.4 , 0 );

setScaleKey( spep_0 + 538 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 554 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_0 + 538 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_0 + 554 + OFFSET_X, 1, 7.2 );

--敵の動き3
setDisp(spep_0 + 642 + OFFSET_X, 1, 1);
setDisp(spep_0 + 664 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 642 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 652 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 642 + OFFSET_X, 1, -432.2, -86.4 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, -432.2, -86.4 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, -383.6, -60.6 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, -383.6, -60.6 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, -319.1, -42.9 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, -319.1, -42.9 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, -270.5, -33.1 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, -270.5, -33.1 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, -206, -15.4 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, -206, -15.4 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, -119.3, -12.7 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, -119.3, -12.7 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, -111.3, -12.7 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, -111.3, -12.7 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, -119.3, -20.7 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, -119.3, -20.7 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, -111.3, -20.7 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, -111.3, -20.7 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, -119.3, -12.7 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, -119.3, -12.7 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, -111.3, -12.7 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, -111.3, -12.7 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, -119.3, -20.7 , 0 );

setScaleKey( spep_0 + 642 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 643 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 644 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 645 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 646 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 647 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 648 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 649 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 650 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 651 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 652 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 664 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_0 + 642 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_0 + 651 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_0 + 652 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_0 + 664 + OFFSET_X, 1, 24.3 );

--敵の動き4
setDisp(spep_0 + 680 + OFFSET_X, 1, 1);
setDisp(spep_0 + 728 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 680 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 680 + OFFSET_X, 1, -111.3, -20.7 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, -111.3, -20.7 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, -119.3, -12.6 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, -119.3, -12.6 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, -119.3, -20.7 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, -119.3, -20.7 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, -111.3, -12.6 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, -111.3, -12.6 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, -111.3, -20.7 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, -111.3, -20.7 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, -119.3, -12.6 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, -119.3, -12.6 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, -119.3, -20.7 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, -119.3, -20.7 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, -111.3, -12.6 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, -111.3, -12.6 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, -107.3, -24.7 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, -107.3, -24.7 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, -123.3, -8.6 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, -123.3, -8.6 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, -123.3, -24.7 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, -123.3, -24.7 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, -107.3, -8.6 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, -107.3, -8.6 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, -107.3, -24.7 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, -107.3, -24.7 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, -123.3, -8.6 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, -123.3, -8.6 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, -123.3, -24.7 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, -123.3, -24.7 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, -107.3, -8.6 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, -107.3, -8.6 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, -107.3, -24.7 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, -107.3, -24.7 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, -123.3, -8.6 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, -123.3, -8.6 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, -123.3, -24.7 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, -123.3, -24.7 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, -107.3, -8.6 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, -107.3, -8.6 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, -107.3, -24.7 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, -107.3, -24.7 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, -123.3, -8.6 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, -123.3, -8.6 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, -123.3, -24.7 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, -123.3, -24.7 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, -111.3, -20.7 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, -111.3, -20.7 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, -119.3, -12.6 , 0 );

setScaleKey( spep_0 + 680 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_0 + 680 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 728 + OFFSET_X, 1, 0.1 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 68 );
--気を溜める
SE002 = playSeVer2( spep_0 + 28, 1265, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 28, 1131, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 28, SE003, 72 );
--セリフカットイン
SE004 = playSeVer2( spep_0 + 30, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE004, 63 );
--気を溜める
SE005 = playSeVer2( spep_0 + 30, 1181, "",spep_0 + 610, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 30, SE005, 188 );
--オーラ（近）
SE006 = playSeVer2( spep_0 + 120, 1176, "",spep_0 + 196, 0, 14, -1);
--オーラ（遠）
SE007 = playSeVer2( spep_0 + 180, 1176, "",spep_0 + 232, 6, 20, -1);
setSeVolumeByWorkId( spep_0 + 180, SE007, 50 );
--オーラ（近）
SE008 = playSeVer2( spep_0 + 214, 1176, "",spep_0 + 612, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 214, SE008, 79 );
--振りかぶる
SE009 = playSeVer2( spep_0 + 248, 1116, "",spep_0 + 296, 0, 28, -1);
--気ダメ
SE010 = playSeVer2( spep_0 + 294, 1035, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 294, 1503, "", 0, 0, 0, -1);
--オーラ
SE012 = playSeVer2( spep_0 + 310, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 310, SE012, 63 );
--かめはめ波溜め
SE013 = playSeVer2( spep_0 + 476, 1210, "",spep_0 + 612, 4, 20, -1);
setStartTimeMs( SE013, 2767 );
--気ダメ
SE014 = playSeVer2( spep_0 + 314, 1504, "", 0, 0, 0, -1);
--オーラ
SE015 = playSeVer2( spep_0 + 334, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334, SE015, 63 );
SE016 = playSeVer2( spep_0 + 358, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 358, SE016, 63 );
SE017 = playSeVer2( spep_0 + 382, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 382, SE017, 63 );
SE018 = playSeVer2( spep_0 + 406, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE018, 63 );
--画面遷移
SE019 = playSeVer2( spep_0 + 418, 1188, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_0 + 418, SE019, 76 );
setStartTimeMs( SE019, 167 );
--かめはめ波溜め
SE020 = playSeVer2( spep_0 + 478, 1278, "",spep_0 + 616, 12, 26, -1);
setSeVolumeByWorkId( spep_0 + 478, SE020, 58 );
setStartTimeMs( SE020, 1000 );
--オーラ
SE021 = playSeVer2( spep_0 + 430, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 430, SE021, 63 );
--画面遷移
SE022 = playSeVer2( spep_0 + 430, 44, "", 0, 0, 0, -1);
--オーラ
SE023 = playSeVer2( spep_0 + 454, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 454, SE023, 63 );
--かめはめ波溜め
SE024 = playSeVer2( spep_0 + 476, 1209, "", 0, 0, 0, -1);
--かめはめ波発射
SE025 = playSeVer2( spep_0 + 590, 1027, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 590, 1213, "",spep_0 + 752, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 590, SE026, 72 );
SE027 = playSeVer2( spep_0 + 590, 1133, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 590, SE027, 115 );
SE028 = playSeVer2( spep_0 + 590, 1223, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 590, 1423, "",spep_0 + 750, 0, 16, -1);

-- ** ボイス ** --

--「はああー…!」
playVoice( spep_0 + 28, 1067 );
setVoiceVolume( spep_0 + 28, 1067, 122 );
--「かめはめ…」
playVoice( spep_0 + 440, 1068 );
setVoiceVolume( spep_0 + 440, 1068, 134 );
--「波ーーっ!!」
playVoice( spep_0 + 570, 1069 );
setVoiceVolume( spep_0 + 570, 1069, 142 );

-----------------------------
-- 回避
-----------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 640; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    stopMovie( SP_dodge + 9 );   -- 停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除

    playSe( SP_dodge - 12, 1042);

    setVoiceVolume( SP_dodge - 12, 1069, 0 );

    stopSe( SP_dodge - 12, SE025, 0);
    stopSe( SP_dodge - 12, SE026, 0);
    stopSe( SP_dodge - 12, SE027, 0);
    stopSe( SP_dodge - 12, SE028, 0);
    stopSe( SP_dodge - 12, SE029, 0);
    pauseAll( SP_dodge, 67);
    
    --setBlendColor( SP_dodge + 2 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
    
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

--敵ヒット
SE030 = playSeVer2( spep_0 + 672, 1024, "", 0, 0, 0, -1);
--画面ヒビ入る
SE031 = playSeVer2( spep_0 + 684, 1041, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 700, 1041, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 700, SE032, 133 );
SE033 = playSeVer2( spep_0 + 718, 1041, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 718, SE033, 63 );
--爆発
SE034 = playSeVer2( spep_0 + 736, 1384, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 736, 1159, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 746, 1067, "", 0, 0, 0, -1);

--終わり
-- hideKoScreen();
dealDamage( spep_0 + 730);
endPhase( spep_0 + MAX_FRAME_0);--860

else end