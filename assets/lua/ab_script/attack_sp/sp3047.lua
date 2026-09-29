--1034150:LR_魔人ブウ(純粋)_必殺技：バニシングダイブ
--sp_effect_b1_00379
--sp3047

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164549; --開始〜カードカットイン〜フィニッシュまで ef_001

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

setAlphaKey( 0, 1, 255 );



ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 684;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --降りてくる
        SE013 = playSeVer2( spep_0 + 684 + 3, 1314, "",spep_0 + 795, 0, 43, -1);
        SE016 = playSeVer2( spep_0 + 684 + 3, 1167, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_0 + 684 + 3, SE016, 47 );
        setTimeStretch( SE016, 2, 30, 4 );
        SE017 = playSeVer2( spep_0 + 684 + 3, 1277, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_0 + 684 + 3, SE017, 195 );

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
MAX_FRAME_0 = 938;
CARD_FRAME = 116;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始〜カードカットイン〜フィニッシュまで(ef_001)
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
   speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

ctgogo_x = 236; -- 演出によって白目にかからないように調整

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


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き1
setDisp( spep_0 + 622 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 684 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 622 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 622 + OFFSET_X, 1, -3.1 * mirror, -0.2 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, -3.1 * mirror, -0.2 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, -3.2 * mirror, -0.4 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, -3.2 * mirror, -0.4 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, -3.1 * mirror, -0.4 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, -3.1 * mirror, -0.4 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, -3.1 * mirror, -0.6 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, -3.1 * mirror, -0.6 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, -3.1 * mirror, -0.7 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, -3.1 * mirror, -0.7 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, -3.2 * mirror, -0.8 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, -3.2 * mirror, -0.8 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, -3.1 * mirror, -1 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, -3.1 * mirror, -1 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, -3.2 * mirror, -1.1 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, -3.2 * mirror, -1.1 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, -3.2 * mirror, -1.2 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, -3.2 * mirror, -1.2 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, -3.2 * mirror, -1.4 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, -3.2 * mirror, -1.4 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, -3 * mirror, -1.4 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, -3 * mirror, -1.4 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, -3.1 * mirror, -1.7 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, -3.1 * mirror, -1.7 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, -3.1 * mirror, -2 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, -3.1 * mirror, -2 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, -3.1 * mirror, -2.3 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, -3.1 * mirror, -2.3 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, -3.1 * mirror, -2.5 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, -3.1 * mirror, -2.5 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, -3.1 * mirror, -2.7 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, -3.1 * mirror, -2.7 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, -3.1 * mirror, -3 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, -3.1 * mirror, -3 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, -3.1 * mirror, -3.3 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, -3.1 * mirror, -3.3 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, -3.1 * mirror, -3.5 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, -3.1 * mirror, -3.5 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, -3.1 * mirror, -3.8 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, -3.1 * mirror, -3.8 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, -3.1 * mirror, -4.1 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, -3.1 * mirror, -4.1 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, -3 * mirror, -4.4 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, -3 * mirror, -4.4 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, -3 * mirror, -4.6 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, -3 * mirror, -4.6 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, -3 * mirror, -4.9 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, -3 * mirror, -4.9 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, -3 * mirror, -5.1 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, -3 * mirror, -5.1 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, -3 * mirror, -5.4 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, -3 * mirror, -5.4 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, -3 * mirror, -5.7 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, -3 * mirror, -5.7 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, -3 * mirror, -5.9 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, -3 * mirror, -5.9 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, -3 * mirror, -6.2 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, -3 * mirror, -6.2 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, -3 * mirror, -6.4 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, -3 * mirror, -6.4 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, -3 * mirror, -6.7 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, -3 * mirror, -6.7 , 0 );

setScaleKey( spep_0 + 622 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 623 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 624 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 627 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 628 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 631 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 632 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 633 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 634 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 637 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 638 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 641 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 642 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 647 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 648 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 655 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 656 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 663 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 664 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 671 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 672 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 679 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 680 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 684 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_0 + 622 + OFFSET_X, 1, 4.8 * mirror );
setRotateKey( spep_0 + 684 + OFFSET_X, 1, 4.8 * mirror );

setAlphaKey( spep_0 + 622 + OFFSET_X, 1, 0 );
setAlphaKey( spep_0 + 640 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 684 + OFFSET_X, 1, 255 );

-- 敵の動き2
setDisp( spep_0 + 714 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 762 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 726 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 714 + OFFSET_X, 1, -26.6 * mirror, -64.2 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, -26.6 * mirror, -64.2 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, -26.6 * mirror, -165 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, -26.6 * mirror, -165 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, -26.6 * mirror, -146.7 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, -26.6 * mirror, -146.7 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, -26.6 * mirror, -177.2 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, -26.6 * mirror, -177.2 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, -26.6 * mirror, -155.8 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, -26.6 * mirror, -155.8 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, -26.6 * mirror, -177.2 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, -26.6 * mirror, -177.2 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, -26.6 * mirror, -155.8 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, -26.6 * mirror, -155.8 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, -26.6 * mirror, -186.4 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, -26.6 * mirror, -186.4 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, -26.6 * mirror, -336.2 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, -26.6 * mirror, -336.2 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, -26.6 * mirror, -550.2 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, -26.6 * mirror, -550.2 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, -26.6 * mirror, -699.9 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, -26.6 * mirror, -699.9 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, -26.6 * mirror, -795.7 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, -26.6 * mirror, -795.7 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, -26.6 * mirror, -891.6 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, -26.6 * mirror, -891.6 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, -26.6 * mirror, -987.5 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, -26.6 * mirror, -987.5 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, -26.6 * mirror, -1083.4 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, -26.6 * mirror, -1083.4 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, -26.6 * mirror, -1179.3 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, -26.6 * mirror, -1179.3 , 0 );

setScaleKey( spep_0 + 714 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 762 + OFFSET_X, 1, 3.82, 3.82 );

setRotateKey( spep_0 + 714 + OFFSET_X, 1, 75 * mirror );
setRotateKey( spep_0 + 762 + OFFSET_X, 1, 75 * mirror );

setAlphaKey( spep_0 + 714 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 762 + OFFSET_X, 1, 255 );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--瞬間移動
SE003 = playSeVer2( spep_0 + 69, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 69, SE003, 75 );
SE004 = playSeVer2( spep_0 + 78, 1109, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 102; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE00X, 0);
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
--環境音
SE006 = playSeVer2( spep_0 + 202, 1269, "",spep_0 + 569, 0, 41, -1);
setSeVolumeByWorkId( spep_0 + 202, SE006, 25 );
SE007 = playSeVer2( spep_0 + 202, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE007, 25 );

--瞬間移動
SE008 = playSeVer2( spep_0 + 281, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 281, SE008, 65 );
SE009 = playSeVer2( spep_0 + 290, 1109, "", 0, 0, 0, -1);

--体勢変える
SE010 = playSeVer2( spep_0 + 446, 1415, "", 0, 5, 0, -1);
setSeVolumeByWorkId( spep_0 + 446, SE010, 69 );
setStartTimeMs( SE010,  300 );
SE011 = playSeVer2( spep_0 + 447, 1112, "",spep_0 + 490, 0, 11, -1);

--降りてくる
SE012 = playSeVer2( spep_0 + 490, 1304, "", 0, 0, 0, -1);
setTimeStretch( SE012, 1.67, 30, 4 );
SE013 = playSeVer2( spep_0 + 490, 1314, "",spep_0 + 795, 0, 43, -1);
SE014 = playSeVer2( spep_0 + 490, 9, "", 0, 0, 0, -1);
setTimeStretch( SE014, 2, 30, 4 );
SE015 = playSeVer2( spep_0 + 490, 1183, "", 0, 0, 0, -1);
setTimeStretch( SE015, 2, 30, 4 );
SE016 = playSeVer2( spep_0 + 575, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 575, SE016, 47 );
setTimeStretch( SE016, 2, 30, 4 );
SE017 = playSeVer2( spep_0 + 680, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 680, SE017, 195 );

--敵ヒット
SE018 = playSeVer2( spep_0 + 713, 1153, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 713, 1120, "", 0, 0, 0, -1);

--地面激突
SE020 = playSeVer2( spep_0 + 768, 1159, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 780, 1188, "", 0, 0, 0, -1);


-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 788); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 938f