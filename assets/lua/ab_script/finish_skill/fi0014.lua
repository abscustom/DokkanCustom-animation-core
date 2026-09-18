--4029370:LR_超サイヤ人孫悟空_フィニッシュ(失敗)：絆の拳
--sp_effect_b1_00289
--fi0014

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163080;  -- ef_001　敵を見上げる悟空～フィニッシュ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 556 -13 );        -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie( spep_0 + 556 -13, SP_01, spep_0 + 556 -13+2, 1);

        else
           skipFrame(0, spep_0 + 720 );      -- スキップ先フレーム指定
           setupMovie( spep_0 + 720, SP_01, spep_0 + 716+2, 1);

           --飛び上がる
           SE043 = playSeVer2( spep_0 + 720+1, 1019, "", 0, 0, 0, -1);

           --オーラ
           SE045 = playSeVer2( spep_0 + 720+1, 1036, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 720+1, SE045, 50 );
           
           --向かってくる
           SE038 = playSeVer2( spep_0 + 720+1, 1121, "",spep_0 + 802, 0, 28, -1);
           setSeVolumeByWorkId( spep_0 + 720+1, SE038, 73 );
           setStartTimeMs( SE038,  500 );
           SE044 = playSeVer2( spep_0 + 720+1, 1167, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 720+1, SE044, 60 );
           setTimeStretch( SE044, 1.11, 30, 4 );

       end
    else
        setupMovie( 0, SP_01, 0, 1);
    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

--はじめの準備
spep_0 = 0;

------------------------------------------------------
-- 敵を見上げる悟空～フィニッシュ
------------------------------------------------------
MAX_FRAME_0 = 912;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --敵を見上げる悟空～フィニッシュ(ef_001)
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_f, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0 );
setEffAlphaKey( spep_0 + 0, base_f, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 572 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 718 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 572 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 666 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 572 + OFFSET_X, 1, -1.8, 312.4 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, -1.8, 312.4 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, -1.8, 353.9 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, -1.8, 353.9 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, -1.8, 192.6 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, -1.8, 192.6 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, -1.8, 334.7 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, -1.8, 334.7 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, -1.8, 230.2 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, -1.8, 230.2 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, -1.8, 290 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, -1.8, 290 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, -1.8, 224.9 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, -1.8, 224.9 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, -1.8, 245.9 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, -1.8, 245.9 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, -1.8, 212.5 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, -1.8, 212.5 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, -1, 218.6 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, -1, 218.6 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, -1.1, 197.4 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, -1.1, 197.4 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, -1.1, 196.1 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, -1.1, 196.1 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, -1.1, 183.8 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, -1.1, 183.8 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, -1.7, 175.4 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, -1.7, 175.4 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, -1.7, 167.4 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, -1.7, 167.4 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, -1.7, 159.9 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, -1.7, 159.9 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, -1.7, 152.9 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, -1.7, 152.9 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, -1.7, 146.4 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, -1.7, 146.4 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, -1.7, 140.3 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, -1.7, 140.3 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, -1.7, 134.8 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, -1.7, 134.8 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, -1.7, 129.7 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, -1.7, 129.7 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, -1.7, 125.1 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, -1.7, 125.1 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, -1.7, 121 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, -1.7, 121 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, -1.7, 117.4 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, -1.7, 117.4 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, -1.7, 114.2 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, -1.7, 114.2 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, -1.7, 111.5 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, -1.7, 111.5 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, -1.7, 109.4 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, -1.7, 109.4 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, -1.7, 107.7 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, -1.7, 107.7 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, -1.7, 106.5 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, -1.7, 106.5 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, -1.7, 105.7 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, -1.7, 105.7 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 5.9, 113 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 5.9, 113 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, -15.4, 91.2 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, -15.4, 91.2 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, -16.9, 58.2 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, -16.9, 58.2 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 15.5, 25.1 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 15.5, 25.1 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 14.1, 41.7 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, 14.1, 41.7 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, -13.6, 7 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, -13.6, 7 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, -9, 10.3 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, -9, 10.3 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 4.9, -2.5 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, 4.9, -2.5 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 2, -5 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, 2, -5 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, -3.1, -10.7 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, -3.1, -10.7 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, -2.5, -14.8 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, -2.5, -14.8 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, -0.2, -16.8 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, -0.2, -16.8 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, -0.6, -21.1 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, -0.6, -21.1 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, -1.1, -21.6 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, -1.1, -21.6 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, -1.1, -24.7 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, -1.1, -24.7 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, -1.1, -25.3 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, -1.1, -25.3 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, 312.2, 438.8 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, 312.2, 438.8 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, 302.7, 422.2 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, 302.7, 422.2 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, 293.5, 406.2 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, 293.5, 406.2 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, 284.7, 390.7 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, 284.7, 390.7 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, 276.1, 375.7 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, 276.1, 375.7 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, 267.8, 361.1 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, 267.8, 361.1 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, 259.9, 347.1 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, 259.9, 347.1 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, 252.2, 333.6 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, 252.2, 333.6 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, 244.8, 320.6 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, 244.8, 320.6 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, 237.7, 308.1 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, 237.7, 308.1 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, 230.8, 296.1 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, 230.8, 296.1 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, 224.3, 284.5 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, 224.3, 284.5 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 218.1, 273.6 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, 218.1, 273.6 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, 212.1, 263.1 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, 212.1, 263.1 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, 206.4, 253.1 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, 206.4, 253.1 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, 201, 243.5 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, 201, 243.5 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, 195.9, 234.5 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, 195.9, 234.5 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 191.1, 226.1 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, 191.1, 226.1 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, 186.6, 218 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, 186.6, 218 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, 182.4, 210.5 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, 182.4, 210.5 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, 178.4, 203.5 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, 178.4, 203.5 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 174.8, 197.1 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, 174.8, 197.1 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 171.4, 191.1 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, 171.4, 191.1 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 168.3, 185.6 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 168.3, 185.6 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 165.6, 180.6 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 165.6, 180.6 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 163.1, 176.1 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 163.1, 176.1 , 0 );

setScaleKey( spep_0 + 572 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 581 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 605 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 635 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 636 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 639 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 640 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 643 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 644 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 647 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 648 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 655 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 656 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 665 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 666 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 0.45, 0.45 );

setRotateKey( spep_0 + 572+ OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 718+ OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 736 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 776 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 780 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 808 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 736 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 780 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 736 + OFFSET_X, 1, 2079.2, -479.4 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 2079.2, -479.4 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 1957.6, -449.5 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 1957.6, -449.5 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 1842.5, -421.1 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 1842.5, -421.1 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 1733.2, -394.2 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 1733.2, -394.2 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 1629.4, -368.5 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 1629.4, -368.5 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 1530.9, -344.1 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 1530.9, -344.1 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 1437.4, -320.9 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 1437.4, -320.9 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 1348.7, -298.9 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 1348.7, -298.9 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 1264.7, -277.9 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 1264.7, -277.9 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 1185, -258.1 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 1185, -258.1 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 1109.7, -239.2 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 1109.7, -239.2 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 1038.4, -221.4 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 1038.4, -221.4 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 970.9, -204.5 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 970.9, -204.5 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 907.1, -188.4 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 907.1, -188.4 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 846.7, -173.2 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, 846.7, -173.2 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, 789.4, -158.7 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, 789.4, -158.7 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, 735, -144.9 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, 735, -144.9 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, 683.1, -131.7 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, 683.1, -131.7 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, 633.5, -119 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, 633.5, -119 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, 585.6, -106.7 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, 585.6, -106.7 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, 539.1, -94.8 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, 539.1, -94.8 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, 493.6, -83 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, 493.6, -83 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, 111.3, -122.6 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, 111.3, -122.6 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, 84.8, -36.8 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, 84.8, -36.8 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, 111.3, -40.4 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, 111.3, -40.4 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, 69.9, -63.3 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, 69.9, -63.3 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, 162.7, -36.5 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, 162.7, -36.5 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, 93.5, -48.5 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, 93.5, -48.5 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, 167.9, -66.7 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, 167.9, -66.7 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, 171.3, -65.5 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, 171.3, -65.5 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, 349.7, -73.3 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, 349.7, -73.3 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, 566.6, -37.1 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, 566.6, -37.1 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, 857.8, -2.4 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, 857.8, -2.4 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 1203.2, 36.9 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 1203.2, 36.9 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 1618.8, 88.1 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, 1618.8, 88.1 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, 2090.2, 150.7 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, 2090.2, 150.7 , 0 );

setScaleKey( spep_0 + 736 + OFFSET_X, 1, 24.97, 24.97 );
setScaleKey( spep_0 + 737 + OFFSET_X, 1, 24.97, 24.97 );
setScaleKey( spep_0 + 738 + OFFSET_X, 1, 23.54, 23.54 );
setScaleKey( spep_0 + 739 + OFFSET_X, 1, 23.54, 23.54 );
setScaleKey( spep_0 + 740 + OFFSET_X, 1, 22.19, 22.19 );
setScaleKey( spep_0 + 741 + OFFSET_X, 1, 22.19, 22.19 );
setScaleKey( spep_0 + 742 + OFFSET_X, 1, 20.92, 20.92 );
setScaleKey( spep_0 + 743 + OFFSET_X, 1, 20.92, 20.92 );
setScaleKey( spep_0 + 744 + OFFSET_X, 1, 19.72, 19.72 );
setScaleKey( spep_0 + 745 + OFFSET_X, 1, 19.72, 19.72 );
setScaleKey( spep_0 + 746 + OFFSET_X, 1, 18.58, 18.58 );
setScaleKey( spep_0 + 747 + OFFSET_X, 1, 18.58, 18.58 );
setScaleKey( spep_0 + 748 + OFFSET_X, 1, 17.51, 17.51 );
setScaleKey( spep_0 + 749 + OFFSET_X, 1, 17.51, 17.51 );
setScaleKey( spep_0 + 750 + OFFSET_X, 1, 16.5, 16.5 );
setScaleKey( spep_0 + 751 + OFFSET_X, 1, 16.5, 16.5 );
setScaleKey( spep_0 + 752 + OFFSET_X, 1, 15.54, 15.54 );
setScaleKey( spep_0 + 753 + OFFSET_X, 1, 15.54, 15.54 );
setScaleKey( spep_0 + 754 + OFFSET_X, 1, 14.64, 14.64 );
setScaleKey( spep_0 + 755 + OFFSET_X, 1, 14.64, 14.64 );
setScaleKey( spep_0 + 756 + OFFSET_X, 1, 13.79, 13.79 );
setScaleKey( spep_0 + 757 + OFFSET_X, 1, 13.79, 13.79 );
setScaleKey( spep_0 + 758 + OFFSET_X, 1, 12.99, 12.99 );
setScaleKey( spep_0 + 759 + OFFSET_X, 1, 12.99, 12.99 );
setScaleKey( spep_0 + 760 + OFFSET_X, 1, 12.24, 12.24 );
setScaleKey( spep_0 + 761 + OFFSET_X, 1, 12.24, 12.24 );
setScaleKey( spep_0 + 762 + OFFSET_X, 1, 11.53, 11.53 );
setScaleKey( spep_0 + 763 + OFFSET_X, 1, 11.53, 11.53 );
setScaleKey( spep_0 + 764 + OFFSET_X, 1, 10.87, 10.87 );
setScaleKey( spep_0 + 765 + OFFSET_X, 1, 10.87, 10.87 );
setScaleKey( spep_0 + 766 + OFFSET_X, 1, 10.24, 10.24 );
setScaleKey( spep_0 + 767 + OFFSET_X, 1, 10.24, 10.24 );
setScaleKey( spep_0 + 768 + OFFSET_X, 1, 9.65, 9.65 );
setScaleKey( spep_0 + 769 + OFFSET_X, 1, 9.65, 9.65 );
setScaleKey( spep_0 + 770 + OFFSET_X, 1, 9.1, 9.1 );
setScaleKey( spep_0 + 771 + OFFSET_X, 1, 9.1, 9.1 );
setScaleKey( spep_0 + 772 + OFFSET_X, 1, 8.57, 8.57 );
setScaleKey( spep_0 + 773 + OFFSET_X, 1, 8.57, 8.57 );
setScaleKey( spep_0 + 774 + OFFSET_X, 1, 8.07, 8.07 );
setScaleKey( spep_0 + 775 + OFFSET_X, 1, 8.07, 8.07 );
setScaleKey( spep_0 + 776 + OFFSET_X, 1, 7.59, 7.59 );
setScaleKey( spep_0 + 777 + OFFSET_X, 1, 7.59, 7.59 );
setScaleKey( spep_0 + 778 + OFFSET_X, 1, 7.13, 7.13 );
setScaleKey( spep_0 + 779 + OFFSET_X, 1, 7.13, 7.13 );
setScaleKey( spep_0 + 780 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 783 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 784 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 791 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 792 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 793 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 794 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 795 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 796 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 797 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 798 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 799 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 800 + OFFSET_X, 1, 6.15, 6.15 );
setScaleKey( spep_0 + 801 + OFFSET_X, 1, 6.15, 6.15 );
setScaleKey( spep_0 + 802 + OFFSET_X, 1, 8.17, 8.17 );
setScaleKey( spep_0 + 803 + OFFSET_X, 1, 8.17, 8.17 );
setScaleKey( spep_0 + 804 + OFFSET_X, 1, 10.55, 10.55 );
setScaleKey( spep_0 + 805 + OFFSET_X, 1, 10.55, 10.55 );
setScaleKey( spep_0 + 806 + OFFSET_X, 1, 13.29, 13.29 );
setScaleKey( spep_0 + 808 + OFFSET_X, 1, 13.29, 13.29 );

setRotateKey( spep_0 + 736 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_0 + 753 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_0 + 754 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_0 + 777 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_0 + 778 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 779 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 780 + OFFSET_X, 1, -42 );
setRotateKey( spep_0 + 783 + OFFSET_X, 1, -42 );
setRotateKey( spep_0 + 784 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_0 + 793 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_0 + 794 + OFFSET_X, 1, -42 );
setRotateKey( spep_0 + 795 + OFFSET_X, 1, -42 );
setRotateKey( spep_0 + 796 + OFFSET_X, 1, -41.7 );
setRotateKey( spep_0 + 797 + OFFSET_X, 1, -41.7 );
setRotateKey( spep_0 + 798 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 799 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 800 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_0 + 801 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_0 + 802 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_0 + 803 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_0 + 804 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_0 + 805 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_0 + 806 + OFFSET_X, 1, -38.8 );
setRotateKey( spep_0 + 808 + OFFSET_X, 1, -38.8 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 304, 0, 112, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 40 );

--力む
SE003 = playSeVer2( spep_0 + 0, 1344, "", 0, 0, 0, -1);

--セリフカットイン
SE004 = playSeVer2( spep_0 + 6, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE004, 63 );

--目見開く
SE005 = playSeVer2( spep_0 + 130, 40, "",spep_0 + 248, 0, 88, -1);
SE006 = playSeVer2( spep_0 + 130, 1179, "",spep_0 + 254, 0, 84, -1);
SE007 = playSeVer2( spep_0 + 130, 1003, "", 0, 0, 0, -1);

--エネルギー分け与える
SE008 = playSeVer2( spep_0 + 262, 1266, "",spep_0 + 494, 14, 40, -1);
setSeVolumeByWorkId( spep_0 + 262, SE008, 42 );
setStartTimeMs( SE008,  1333 );
SE009 = playSeVer2( spep_0 + 252, 1249, "",spep_0 + 480, 36, 36, -1);
setSeVolumeByWorkId( spep_0 + 252, SE009, 126 );
setPitch( spep_0 + 252, SE009, -400 );
setTimeStretch( SE009, 0.77, 30, 4 );
setStartTimeMs( SE009,  100 );
SE010 = playSeVer2( spep_0 + 256, 1116, "",spep_0 + 310, 0, 24, -1);

--画面遷移１
SE011 = playSeVer2( spep_0 + 324, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 324, SE011, 75 );

--画面遷移２
SE012 = playSeVer2( spep_0 + 384, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE012, 132 );
SE013 = playSeVer2( spep_0 + 384, 1048, "", 0, 0, 0, -1);

--画面遷移３
SE014 = playSeVer2( spep_0 + 442, 8, "", 0, 0, 0, -1);

--気ダメ
SE015 = playSeVer2( spep_0 + 448, 1035, "", 0, 0, 0, -1);

--オーラ
SE016 = playSeVer2( spep_0 + 452, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 452, SE016, 63 );
SE017 = playSeVer2( spep_0 + 476, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE017, 63 );
SE019 = playSeVer2( spep_0 + 500, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE019, 63 );
SE022 = playSeVer2( spep_0 + 524, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 524, SE022, 63 );

--飛び上がる
SE018 = playSeVer2( spep_0 + 492, 63, "",spep_0 + 538, 0, 12, -1);

--着地
SE020 = playSeVer2( spep_0 + 518, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 518, SE020, 158 );
SE021 = playSeVer2( spep_0 + 518, 1192, "",spep_0 + 552, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 518, SE021, 195 );

--向かってくる
SE023 = playSeVer2( spep_0 + 538, 1182, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 538, 9, "",spep_0 + 630, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 538, SE024, 71 );
SE025 = playSeVer2( spep_0 + 538, 1117, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「負けらんねぇ　パワーをもっとくれ！」
playVoice( spep_0 + 0, 819 );
setVoiceVolume( spep_0 + 0, 819, 100 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 556 ; --エンドフェイズのフレーム数を置き換える
  
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
  stopSe( SP_dodge - 12, SE024, 0);
  stopSe( SP_dodge - 12, SE025, 0);

  pauseAll( SP_dodge, 67);
  
  speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
  setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
  
  kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
  
  entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
  endPhase(SP_dodge+10);
  
do return end
else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--オーラ
SE026 = playSeVer2( spep_0 + 548, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 548, SE026, 63 );
SE028 = playSeVer2( spep_0 + 572, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 572, SE028, 63 );
SE031 = playSeVer2( spep_0 + 596, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 596, SE031, 40 );
SE036 = playSeVer2( spep_0 + 620, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 620, SE036, 25 );
SE040 = playSeVer2( spep_0 + 644, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 644, SE040, 32 );
SE041 = playSeVer2( spep_0 + 668, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 668, SE041, 50 );
SE042 = playSeVer2( spep_0 + 692, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 692, SE042, 50 );
SE045 = playSeVer2( spep_0 + 716, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 716, SE045, 50 );
SE046 = playSeVer2( spep_0 + 740, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 740, SE046, 50 );
SE048 = playSeVer2( spep_0 + 764, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 764, SE048, 50 );
SE052 = playSeVer2( spep_0 + 788, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 788, SE052, 79 );
SE055 = playSeVer2( spep_0 + 812, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 812, SE055, 79 );
SE056 = playSeVer2( spep_0 + 836, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 836, SE056, 79 );
SE057 = playSeVer2( spep_0 + 860, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 860, SE057, 79 );

--走っていく
SE027 = playSeVer2( spep_0 + 572, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 572, SE027, 172 );
SE029 = playSeVer2( spep_0 + 582, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 582, SE029, 158 );
SE030 = playSeVer2( spep_0 + 594, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 594, SE030, 155 );
SE032 = playSeVer2( spep_0 + 604, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 604, SE032, 178 );

--飛び上がる
SE033 = playSeVer2( spep_0 + 616, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 616, SE033, 72 ); 
SE034 = playSeVer2( spep_0 + 616, 1008, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 618, 1207, "", 0, 10, 0, -1);
setStartTimeMs( SE035,  33 );
SE037 = playSeVer2( spep_0 + 630, 44, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 644, 1019, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 708, 1019, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_0 + 772, 1019, "",spep_0 + 812, 0, 24, -1);

--向かってくる
SE038 = playSeVer2( spep_0 + 640, 1121, "",spep_0 + 802, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 640, SE038, 73 );
SE044 = playSeVer2( spep_0 + 712, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 712, SE044, 60 );
setTimeStretch( SE044, 1.11, 30, 4 );

--殴り飛ばす
SE047 = playSeVer2( spep_0 + 764, 1004, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 772, 1187, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_0 + 772, 1120, "", 0, 0, 0, -1);

--余韻
SE053 = playSeVer2( spep_0 + 788, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 788, SE053, 51 );
SE054 = playSeVer2( spep_0 + 800, 8, "", 0, 0, 0, -1);
setPitch( spep_0 + 800, SE054, -600 );
setTimeStretch( SE054, 0.6, 30, 4 );

-- ** ダメージ表示 ** --
-- hideKoScreen();
dealDamage( spep_0 + 794 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 912f

end