--1031060:UR_超サイヤ人3ベジータ(ミニ)(DAIMA)_アクティブ必殺技：ギャリック砲
--sp_effect_b4_00373
--ut0092

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163704;  -- 飛行→構えてギャリック砲→爆発 ef_001
SP_01b = 163705;  -- 背景側 ef_001b


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
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;---記載するspepの数に要注意

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 658 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 658 -13, SP_01, spep_0 + 658 -13, 1);
       else
           skipFrame(0, spep_0 + 740);  -- スキップ先フレーム指定
           setupMovie(spep_0 + 740, SP_01, spep_0 + 740-1 + 2, 1);
end
    else 
        setupMovie(0, SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 飛行→構えてギャリック砲→爆発
-------------------------------------------------
MAX_FRAME_0 = 918;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 飛行→構えてギャリック砲→爆発(ef_001)
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

setDisp( spep_0 + 660 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 740 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 660 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 698 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 660 + OFFSET_X, 1, -522, 10 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, -522, 10 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, -503.9, 12 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, -503.9, 12 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, -485.7, 14.1 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, -485.7, 14.1 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, -467.6, 16.1 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, -467.6, 16.1 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, -449.4, 18.1 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, -449.4, 18.1 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, -431.3, 20.2 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, -431.3, 20.2 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, -413.2, 22.2 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, -413.2, 22.2 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, -395, 24.2 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, -395, 24.2 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, -376.9, 26.2 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, -376.9, 26.2 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, -358.7, 28.3 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, -358.7, 28.3 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, -340.6, 30.3 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, -340.6, 30.3 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, -322.5, 32.3 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, -322.5, 32.3 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, -259.6, 36.2 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, -259.6, 36.2 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, -181.5, 43.6 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, -181.5, 43.6 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, -112.5, 51.6 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, -112.5, 51.6 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, -76, 55.9 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, -76, 55.9 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, -54, 57.9 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, -54, 57.9 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, -36, 58.9 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, -36, 58.9 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, -35, 58.9 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, -35, 58.9 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, -185.8, 38.3 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, -185.8, 38.3 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, -183.7, 48.2 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, -183.7, 48.2 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, -182.8, 47.3 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, -182.8, 47.3 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, -174.3, 40.2 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, -174.3, 40.2 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, -188.9, 41.1 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, -188.9, 41.1 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, -175.5, 31 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, -175.5, 31 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, -177.1, 32.9 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, -177.1, 32.9 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, -203.5, 54.3 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, -203.5, 54.3 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, -186.3, 44.8 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, -186.3, 44.8 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, -173.1, 70.2 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, -173.1, 70.2 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, -228.7, 85.8 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, -228.7, 85.8 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, -222.2, 137.5 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, -222.2, 137.5 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, -221.7, 137.2 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, -221.7, 137.2 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, -207.5, 162.1 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, -207.5, 162.1 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, -207, 161.7 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, -207, 161.7 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, -205.5, 177.8 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, -205.5, 177.8 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, -204.1, 179.3 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, -204.1, 179.3 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, -203.6, 171.8 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, -203.6, 171.8 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, -208.8, 184.8 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, -208.8, 184.8 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, -229.3, 201.4 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, -229.3, 201.4 , 0 );

setScaleKey( spep_0 + 660 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 661 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 662 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 663 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 664 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 665 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 666 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 667 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 668 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 669 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 670 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 671 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 672 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 673 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 674 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 675 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 676 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 677 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 678 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 679 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 680 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 681 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 682 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 683 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 684 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 685 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 686 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 687 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 688 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 689 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 690 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 691 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 692 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 693 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 694 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 697 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 698 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 703 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 704 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 707 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 708 + OFFSET_X, 1, 1.79, 1.81 );
setScaleKey( spep_0 + 711 + OFFSET_X, 1, 1.79, 1.81 );
setScaleKey( spep_0 + 712 + OFFSET_X, 1, 1.78, 1.8 );
setScaleKey( spep_0 + 713 + OFFSET_X, 1, 1.78, 1.8 );
setScaleKey( spep_0 + 714 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 715 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 716 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 717 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 729 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 730 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 737 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 738 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 740 + OFFSET_X, 1, 1.1, 1.1 );

setRotateKey( spep_0 + 660 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 713 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 714 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_0 + 715 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_0 + 716 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_0 + 717 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_0 + 718 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 740 + OFFSET_X, 1, 15 );

-- ** 音 ** --
--飛行中音
SE001 = playSeVer2( spep_0 + 0, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 56 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 502, 0, 26, -1);
SE003 = playSeVer2( spep_0 + 0, 1452, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 84 );
SE004 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 502, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 79 );

--電気音
SE005 = playSeVer2( spep_0 + 26, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE005, 71 );
SE006 = playSeVer2( spep_0 + 130, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE006, 71 );
SE007 = playSeVer2( spep_0 + 214, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE007, 71 );

--セリフカットイン
SE008 = playSeVer2( spep_0 + 220, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE008, 63 );

--構える
SE009 = playSeVer2( spep_0 + 224, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE009, 73 );
SE010 = playSeVer2( spep_0 + 228, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE010, 115 );

--気弾溜め
SE011 = playSeVer2( spep_0 + 292, 1224, "",spep_0 + 338, 0, 18, -1);
setPitch( spep_0 + 292, SE011, 200 );
setTimeStretch( SE011, 1.13, 30, 4 );
SE012 = playSeVer2( spep_0 + 296, 1328, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 308, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE013, 148 );
SE014 = playSeVer2( spep_0 + 310, 1252, "",spep_0 + 496, 0, 22, -1);
SE015 = playSeVer2( spep_0 + 310, 1243, "",spep_0 + 498, 0, 26, -1);
SE016 = playSeVer2( spep_0 + 310, 1210, "",spep_0 + 502, 0, 24, -1);

--電気音
SE017 = playSeVer2( spep_0 + 314, 1491, "", 0, 0, 0, -1);

--気弾発射
SE018 = playSeVer2( spep_0 + 470, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 470, SE018, 82 );
SE019 = playSeVer2( spep_0 + 470, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 470, SE019, 69 );
SE020 = playSeVer2( spep_0 + 470, 1133, "", 0, 0, 0, -1);
setPitch( spep_0 + 470, SE020, -200 );
setTimeStretch( SE020, 0.87, 30, 4 );
SE021 = playSeVer2( spep_0 + 470, 1423, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 490, 1193, "", 0, 0, 0, -1);

--気弾飛んでいく
SE023 = playSeVer2( spep_0 + 556, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 556, SE023, 79 );

-- ** ボイス ** --

--「はああっ！！」
playVoice( spep_0 + 212, 961 );
setVoiceVolume( spep_0 + 212, 961, 122 );

--「ギャリック砲！！！！」
playVoice( spep_0 + 342, 962 );
setVoiceVolume( spep_0 + 342, 962, 122 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 658; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);

stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);

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

--気弾飛んでいく2
SE024 = playSeVer2( spep_0 + 650, 1258, "",spep_0 + 768, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 650, SE024, 69 );
SE025 = playSeVer2( spep_0 + 650, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 650, SE025, 224 );

--気弾ヒット
SE026 = playSeVer2( spep_0 + 690, 1024, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 690, 1011, "", 0, 0, 0, -1);

--爆発
SE028 = playSeVer2( spep_0 + 746, 1159, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 756, 1067, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 756, 1427, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_0 + 802); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 -0); -- 918F

else end