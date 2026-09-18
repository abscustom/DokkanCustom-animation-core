-- 1027040: LR_超一星龍_マイナスエネルギーパワーボール(アクティブ)
-- sp_effect_a5_00018
-- ut0056

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- エフェクト(味方)
SP_01 = 161984;  -- 開始～フィニッシュ～KO ef_001
SP_01b = 161985;  -- 開始～フィニッシュ～KO ef_001b

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
 
if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
 
       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 698 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 922 -1);  -- スキップ先フレーム指定

           --ラスト爆発
           SE033 = playSeVer2( spep_0 + 924, 1418, "", 0, 32, 0, -1);
           setStartTimeMs( SE033,  933 );
           SE035 = playSeVer2( spep_0 + 924, 1024, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 924, SE035, 80 );
           SE036 = playSeVer2( spep_0 + 924, 1159, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 924, SE036, 80 );
       end
    else end

------------------------------------------------------
-- 開始～フィニッシュ～KO ef_001 (1176F)
------------------------------------------------------
spep_0 = 0;
MAX_FRAME_0 = 1176;

-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001, 255 );
entry_SP_001b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
OFFSET_1 = -1

--敵の動き_1
setDisp(spep_0 + 48 + OFFSET_1,1,1);
setDisp(spep_0 + 98 + OFFSET_1,1,0);

changeAnime( spep_0 + 48 + OFFSET_1, 1, 118 );

setMoveKey( spep_0 + 48 + OFFSET_1, 1, 1034.5, -994.8 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_1, 1, 1034.5, -994.8 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_1, 1, 825.2, -807.6 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_1, 1, 825.2, -807.6 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_1, 1, 616, -620.4 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_1, 1, 616, -620.4 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_1, 1, 406.7, -433.2 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_1, 1, 406.7, -433.2 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_1, 1, 197.5, -246 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_1, 1, 197.5, -246 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_1, 1, 195.2, -243.7 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_1, 1, 195.2, -243.7 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_1, 1, 193, -241.3 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_1, 1, 193, -241.3 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_1, 1, 190.6, -239 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_1, 1, 190.6, -239 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_1, 1, 188.4, -236.6 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_1, 1, 188.4, -236.6 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_1, 1, 186.1, -234.3 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_1, 1, 186.1, -234.3 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_1, 1, 183.8, -231.9 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_1, 1, 183.8, -231.9 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_1, 1, 181.5, -229.6 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_1, 1, 181.5, -229.6 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_1, 1, 179.2, -227.2 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_1, 1, 179.2, -227.2 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_1, 1, 176.9, -224.8 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_1, 1, 176.9, -224.8 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_1, 1, 174.6, -222.5 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_1, 1, 174.6, -222.5 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_1, 1, 172.4, -220.2 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_1, 1, 172.4, -220.2 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_1, 1, 170.1, -217.8 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_1, 1, 170.1, -217.8 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_1, 1, 167.8, -215.4 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_1, 1, 167.8, -215.4 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_1, 1, 165.5, -213.1 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_1, 1, 165.5, -213.1 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_1, 1, 163.2, -210.7 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_1, 1, 163.2, -210.7 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_1, 1, 160.9, -208.4 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_1, 1, 160.9, -208.4 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_1, 1, 158.7, -206 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_1, 1, 158.7, -206 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_1, 1, 156.3, -203.7 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_1, 1, 156.3, -203.7 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_1, 1, 154.1, -201.3 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_1, 1, 154.1, -201.3 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_1, 1, 151.8, -199 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_1, 1, 151.8, -199 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_1, 1, 151.8, -199 , 0 );

setScaleKey( spep_0 + 48 + OFFSET_1, 1, 9.23, 9.23 );
setScaleKey( spep_0 + 49 + OFFSET_1, 1, 9.23, 9.23 );
setScaleKey( spep_0 + 50 + OFFSET_1, 1, 7.82, 7.82 );
setScaleKey( spep_0 + 51 + OFFSET_1, 1, 7.82, 7.82 );
setScaleKey( spep_0 + 52 + OFFSET_1, 1, 6.42, 6.42 );
setScaleKey( spep_0 + 53 + OFFSET_1, 1, 6.42, 6.42 );
setScaleKey( spep_0 + 54 + OFFSET_1, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 55 + OFFSET_1, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 56 + OFFSET_1, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 57 + OFFSET_1, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 58 + OFFSET_1, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 59 + OFFSET_1, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 60 + OFFSET_1, 1, 3.57, 3.57 );
setScaleKey( spep_0 + 61 + OFFSET_1, 1, 3.57, 3.57 );
setScaleKey( spep_0 + 62 + OFFSET_1, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 63 + OFFSET_1, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 64 + OFFSET_1, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 65 + OFFSET_1, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 66 + OFFSET_1, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 67 + OFFSET_1, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 68 + OFFSET_1, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 69 + OFFSET_1, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 70 + OFFSET_1, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 71 + OFFSET_1, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 72 + OFFSET_1, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 73 + OFFSET_1, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 74 + OFFSET_1, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 75 + OFFSET_1, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 76 + OFFSET_1, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 77 + OFFSET_1, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 78 + OFFSET_1, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 79 + OFFSET_1, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 80 + OFFSET_1, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 81 + OFFSET_1, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 82 + OFFSET_1, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 83 + OFFSET_1, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 84 + OFFSET_1, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 85 + OFFSET_1, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 86 + OFFSET_1, 1, 3.31, 3.31 );
setScaleKey( spep_0 + 87 + OFFSET_1, 1, 3.31, 3.31 );
setScaleKey( spep_0 + 88 + OFFSET_1, 1, 3.29, 3.29 );
setScaleKey( spep_0 + 89 + OFFSET_1, 1, 3.29, 3.29 );
setScaleKey( spep_0 + 90 + OFFSET_1, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 91 + OFFSET_1, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 92 + OFFSET_1, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 93 + OFFSET_1, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 94 + OFFSET_1, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 95 + OFFSET_1, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 96 + OFFSET_1, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 97 + OFFSET_1, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 98 + OFFSET_1, 1, 3.21, 3.21 );

setRotateKey( spep_0 + 48 + OFFSET_1, 1, -10.5 );
setRotateKey( spep_0 + 98 + OFFSET_1, 1, -10.5 );

--敵の動き_2
setDisp(spep_0 + 588 + OFFSET_1,1,1);
setDisp(spep_0 + 728 + OFFSET_1,1,0);

changeAnime( spep_0 + 588 + OFFSET_1, 1, 117 );
changeAnime( spep_0 + 638 + OFFSET_1, 1, 118 );
changeAnime( spep_0 + 710 + OFFSET_1, 1, 106 );

setMoveKey( spep_0 + 588 + OFFSET_1, 1, 3.3, 10.1 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_1, 1, 3.3, 10.1 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_1, 1, 3.3, 10.1 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_1, 1, 3.2, 10.1 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_1, 1, 3.2, 10.1 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_1, 1, 3.2, 10.1 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_1, 1, 3.1, 10.1 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_1, 1, 3.1, 10.1 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_1, 1, 3.1, 10.1 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_1, 1, 3, 10.1 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_1, 1, 3, 10.1 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_1, 1, 3, 10.1 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_1, 1, 2.9, 10.1 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_1, 1, 2.9, 10.1 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_1, 1, 2.9, 10.1 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_1, 1, 2.8, 10.1 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_1, 1, 2.8, 10.1 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_1, 1, 2.8, 10.1 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_1, 1, 2.7, 10.1 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_1, 1, 2.7, 10.1 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_1, 1, 2.7, 10.1 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_1, 1, 2.6, 10.1 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_1, 1, 2.6, 10.1 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_1, 1, 101.8, -137.6 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_1, 1, 101.8, -137.6 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_1, 1, 102.5, -138.6 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_1, 1, 102.5, -138.6 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_1, 1, 107.2, -143.7 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_1, 1, 107.2, -143.7 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_1, 1, 103.9, -140.7 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_1, 1, 103.9, -140.7 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_1, 1, 104.6, -137.8 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_1, 1, 104.6, -137.8 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_1, 1, 105.4, -142.8 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_1, 1, 105.4, -142.8 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_1, 1, 110.1, -143.9 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_1, 1, 110.1, -143.9 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_1, 1, 106.8, -144.9 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_1, 1, 106.8, -144.9 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_1, 1, 99.5, -146 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_1, 1, 99.5, -146 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_1, 1, 108.2, -147 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_1, 1, 108.2, -147 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_1, 1, 112.9, -132 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_1, 1, 112.9, -132 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_1, 1, 109.7, -149.1 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_1, 1, 109.7, -149.1 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_1, 1, 110.4, -162.1 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_1, 1, 110.4, -162.1 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_1, 1, 111.1, -151.2 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_1, 1, 111.1, -151.2 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_1, 1, 123.8, -128.2 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_1, 1, 123.8, -128.2 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_1, 1, 112.5, -153.2 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_1, 1, 112.5, -153.2 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_1, 1, 109.3, -166.3 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_1, 1, 109.3, -166.3 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_1, 1, 114, -155.3 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_1, 1, 114, -155.3 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_1, 1, 130.7, -148.4 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_1, 1, 130.7, -148.4 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_1, 1, 115.4, -157.4 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_1, 1, 115.4, -157.4 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_1, 1, 124.1, -166.5 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_1, 1, 124.1, -166.5 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_1, 1, 116.8, -159.5 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_1, 1, 116.8, -159.5 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_1, 1, 125.6, -152.6 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_1, 1, 125.6, -152.6 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_1, 1, 118.3, -161.6 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_1, 1, 118.3, -161.6 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_1, 1, 127.1, -170.7 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_1, 1, 127.1, -170.7 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_1, 1, 119.8, -163.7 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_1, 1, 119.8, -163.7 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_1, 1, 124.5, -156.8 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_1, 1, 124.5, -156.8 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_1, 1, 121.2, -165.8 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_1, 1, 121.2, -165.8 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_1, 1, 125.9, -174.9 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_1, 1, 125.9, -174.9 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_1, 1, 138.6, -183.9 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_1, 1, 138.6, -183.9 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_1, 1, 135.4, -161 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_1, 1, 135.4, -161 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_1, 1, 108.1, -154 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_1, 1, 108.1, -154 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_1, 1, 124.8, -171 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_1, 1, 124.8, -171 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_1, 1, 165.5, -220.1 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_1, 1, 165.5, -220.1 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_1, 1, 126.2, -173.1 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_1, 1, 126.2, -173.1 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_1, 1, 87, -134.2 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_1, 1, 87, -134.2 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_1, 1, 153, -141.7 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_1, 1, 153, -141.7 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_1, 1, 161.8, -54.3 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_1, 1, 161.8, -54.3 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_1, 1, 146.6, -111 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_1, 1, 146.6, -111 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_1, 1, 155.4, -119.7 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_1, 1, 155.4, -119.7 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_1, 1, 148.2, -112.3 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_1, 1, 148.2, -112.3 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_1, 1, 153.1, -105 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_1, 1, 153.1, -105 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_1, 1, 149.9, -113.7 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_1, 1, 149.9, -113.7 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_1, 1, 126.7, -138.3 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_1, 1, 126.7, -138.3 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_1, 1, 151.5, -67 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_1, 1, 151.5, -67 , 0 );

setScaleKey( spep_0 + 588 + OFFSET_1, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 592 + OFFSET_1, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 593 + OFFSET_1, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 594 + OFFSET_1, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 602 + OFFSET_1, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 603 + OFFSET_1, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 604 + OFFSET_1, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 610 + OFFSET_1, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 611 + OFFSET_1, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 612 + OFFSET_1, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 620 + OFFSET_1, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 621 + OFFSET_1, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 622 + OFFSET_1, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 628 + OFFSET_1, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 629 + OFFSET_1, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 630 + OFFSET_1, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 637 + OFFSET_1, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 638 + OFFSET_1, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 639 + OFFSET_1, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 640 + OFFSET_1, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 641 + OFFSET_1, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 642 + OFFSET_1, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 643 + OFFSET_1, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 644 + OFFSET_1, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 645 + OFFSET_1, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 646 + OFFSET_1, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 647 + OFFSET_1, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 648 + OFFSET_1, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 649 + OFFSET_1, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 650 + OFFSET_1, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 651 + OFFSET_1, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 652 + OFFSET_1, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 653 + OFFSET_1, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 654 + OFFSET_1, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 655 + OFFSET_1, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 656 + OFFSET_1, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 657 + OFFSET_1, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 658 + OFFSET_1, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 659 + OFFSET_1, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 660 + OFFSET_1, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 661 + OFFSET_1, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 662 + OFFSET_1, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 663 + OFFSET_1, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 664 + OFFSET_1, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 665 + OFFSET_1, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 666 + OFFSET_1, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 667 + OFFSET_1, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 668 + OFFSET_1, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 669 + OFFSET_1, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 670 + OFFSET_1, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 671 + OFFSET_1, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 672 + OFFSET_1, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 673 + OFFSET_1, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 674 + OFFSET_1, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 675 + OFFSET_1, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 676 + OFFSET_1, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 677 + OFFSET_1, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 678 + OFFSET_1, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 679 + OFFSET_1, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 680 + OFFSET_1, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 681 + OFFSET_1, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 682 + OFFSET_1, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 683 + OFFSET_1, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 684 + OFFSET_1, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 685 + OFFSET_1, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 686 + OFFSET_1, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 687 + OFFSET_1, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 688 + OFFSET_1, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 689 + OFFSET_1, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 690 + OFFSET_1, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 691 + OFFSET_1, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 692 + OFFSET_1, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 693 + OFFSET_1, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 694 + OFFSET_1, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 695 + OFFSET_1, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 696 + OFFSET_1, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 697 + OFFSET_1, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 698 + OFFSET_1, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 699 + OFFSET_1, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 700 + OFFSET_1, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 701 + OFFSET_1, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 702 + OFFSET_1, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 703 + OFFSET_1, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 704 + OFFSET_1, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 705 + OFFSET_1, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 706 + OFFSET_1, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 707 + OFFSET_1, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 708 + OFFSET_1, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 709 + OFFSET_1, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 710 + OFFSET_1, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 711 + OFFSET_1, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 712 + OFFSET_1, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 713 + OFFSET_1, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 714 + OFFSET_1, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 716 + OFFSET_1, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 717 + OFFSET_1, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 718 + OFFSET_1, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 719 + OFFSET_1, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 720 + OFFSET_1, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 721 + OFFSET_1, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 722 + OFFSET_1, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 723 + OFFSET_1, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 724 + OFFSET_1, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 725 + OFFSET_1, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 726 + OFFSET_1, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 728 + OFFSET_1, 1, 2.61, 2.61 );

setRotateKey( spep_0 + 588 + OFFSET_1, 1, 0 );
setRotateKey( spep_0 + 637 + OFFSET_1, 1, 0 );
setRotateKey( spep_0 + 638 + OFFSET_1, 1, 0.3 );
setRotateKey( spep_0 + 709 + OFFSET_1, 1, 0.3 );
setRotateKey( spep_0 + 710 + OFFSET_1, 1, -33.1 );
setRotateKey( spep_0 + 728 + OFFSET_1, 1, -33.1 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 98, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--手をかかげる
SE002 = playSeVer2( spep_0 + 14, 1116, "",spep_0 + 50, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 14, SE002, 82 );
SE003 = playSeVer2( spep_0 + 18, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 84 );

--気弾溜め開始１
SE004 = playSeVer2( spep_0 + 60, 1274, "", 0, 6, 0, -1);
setStartTimeMs( SE004,  300 );
setPitch( spep_0 + 60, SE004, -300 );
setTimeStretch( SE004, 0.8, 30, 4 );
SE005 = playSeVer2( spep_0 + 60, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE005, 48 );

--気弾溜める１
SE006 = playSeVer2( spep_0 + 66 +10, 1396, "",spep_0 + 560, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 66 +10, SE006, 200 );
setPitch( spep_0 + 66 +10, SE006, -1100 );
setTimeStretch( SE006, 0.27, 30, 4 );
SE007 = playSeVer2( spep_0 + 66 +10, 1356, "",spep_0 + 560, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 66 +10, SE007, 65 );
setPitch( spep_0 + 66 +10, SE007, -600 );
setTimeStretch( SE007, 0.6, 30, 4 );

--気弾溜め開始２
SE008 = playSeVer2( spep_0 + 60, 49, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE008, 123 );
setPitch( spep_0 + 60, SE008, -900 );
setTimeStretch( SE008, 0.4, 30, 4 );
SE009 = playSeVer2( spep_0 + 60, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE009, 59 );
setPitch( spep_0 + 60, SE009, -600 );
setTimeStretch( SE009, 0.6, 30, 4 );

--気弾溜める１
SE010 = playSeVer2( spep_0 + 66 +10, 1362, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66 +10, SE010, 53 );
setPitch( spep_0 + 66 +10, SE010, -600 );
setTimeStretch( SE010, 0.6, 30, 4 );

--セリフカットイン
SE011 = playSeVer2( spep_0 + 110, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE011, 56 );

--気弾溜める２
SE012 = playSeVer2( spep_0 + 340, 1341, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE012, 79 );
setPitch( spep_0 + 340, SE012, -600 );
setTimeStretch( SE012, 0.74, 30, 4 );

--画面遷移
SE013 = playSeVer2( spep_0 + 340, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE013, 66 );

--腕上げる
SE014 = playSeVer2( spep_0 + 386, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE014, 260 );
setPitch( spep_0 + 386, SE014, -600 );
setTimeStretch( SE014, 0.6, 30, 4 );

--気弾溜める３
SE015 = playSeVer2( spep_0 + 404, 1362, "",spep_0 + 564, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 404, SE015, 53 );
setPitch( spep_0 + 404, SE015, -600 );
setTimeStretch( SE015, 0.6, 30, 4 );

--投げる前背景
SE016 = playSeVer2( spep_0 + 466, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE016, 100 );
setPitch( spep_0 + 466, SE016, -400 );
setTimeStretch( SE016, 0.73, 30, 4 );

--気弾投げる
SE017 = playSeVer2( spep_0 + 530, 1193, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 530, SE017, 136 );
SE018 = playSeVer2( spep_0 + 530, 1027, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 530, 1182, "", 0, 0, 0, -1);

--気弾飛んでいく
SE020 = playSeVer2( spep_0 + 584, 1121, "",spep_0 + 796, 0, 110, -1);
setSeVolumeByWorkId( spep_0 + 584, SE020, 59 );
SE021 = playSeVer2( spep_0 + 598, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 598, SE021, 234 );

--気弾向かってくる
SE022 = playSeVer2( spep_0 + 642, 1226, "",spep_0 + 752, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 642, SE022, 48 );
SE023 = playSeVer2( spep_0 + 642, 1044, "",spep_0 + 760, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 642, SE023, 60 );
SE024 = playSeVer2( spep_0 + 652, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 652, SE024, 63 );

--ボイス
--「一気にこの星ごと吹き飛ばしてやる！」
playVoice( spep_0 + 100 +8, 657 );
setVoiceVolume( spep_0 + 100 +8, 657, 130 );

--「この星もろとも消えてなくなれ！」
playVoice( spep_0 + 354 -5, 658 );
setVoiceVolume( spep_0 + 354 -5, 658, 130 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 698; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
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
--胸光る
SE025 = playSeVer2( spep_0 + 742, 1265, "",spep_0 + 814, 2, 32, -1);
setSeVolumeByWorkId( spep_0 + 742, SE025, 200 );
setStartTimeMs( SE025,  367 );
setPitch( spep_0 + 742, SE025, -1200 );
setTimeStretch( SE025, 0.2, 30, 4 );

--気弾向かってくる２
SE026 = playSeVer2( spep_0 + 734, 1226, "",spep_0 + 982, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 734, SE026, 32 );

--胸光る
SE027 = playSeVer2( spep_0 + 742, 1154, "",spep_0 + 816, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 742, SE027, 140 );
setPitch( spep_0 + 742, SE027, 300 );
setTimeStretch( SE027, 1.2, 30, 4 );

--腕前に出す
SE028 = playSeVer2( spep_0 + 796, 1394, "",spep_0 + 876, 10, 24, -1);
setSeVolumeByWorkId( spep_0 + 796, SE028, 100 );
setStartTimeMs( SE028,  400 );
setPitch( spep_0 + 796, SE028, 300 );
setTimeStretch( SE028, 1.2, 30, 4 );
SE029 = playSeVer2( spep_0 + 788, 1231, "",spep_0 + 856, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 788, SE029, 120 );
SE030 = playSeVer2( spep_0 + 792, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 792, SE030, 146 );
setPitch( spep_0 + 792, SE030, -300 );
setTimeStretch( SE030, 0.99, 30, 4 );

--ビーム飛んでいく
SE031 = playSeVer2( spep_0 + 816, 1326, "",spep_0 + 920, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 816, SE031, 120 );
setPitch( spep_0 + 816, SE031, 50 );
setTimeStretch( SE031, 1.03, 30, 4 );
SE032 = playSeVer2( spep_0 + 832, 1249, "",spep_0 + 920, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 832, SE032, 140 );

--ラスト爆発
SE033 = playSeVer2( spep_0 + 912, 1418, "", 0, 32, 0, -1);
setStartTimeMs( SE033,  933 );

--ビーム敵ヒット
SE034 = playSeVer2( spep_0 + 868, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 868, SE034, 71 );

--ラスト爆発
SE035 = playSeVer2( spep_0 + 900, 1024, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 900, 1159, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 924, 1343, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 924, SE037, 79 );

--終わり
hideKoScreen();
dealDamage( spep_0 + 926);
endPhase( spep_0 + 1058 );

else end
