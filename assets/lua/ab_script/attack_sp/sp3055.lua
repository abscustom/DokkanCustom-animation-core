--1034300:UR_超サイヤ人3孫悟空(ミニ)(DAIMA)_必殺技：超龍撃拳
--sp_effect_b1_00371
--sp3055

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164520; --悟空PANアップ～敵スローで殴られるまで ef_001

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



ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

mirror = 1;
kick_mirror = 0; --キックモーションによるchangeAnimeAndStopがあるため敵側反転用

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 600;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --オーラ
        SE029 = playSeVer2( spep_0 + 600 + 3, 1036, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_0 + 600 + 3, SE029, 56 );
        SE030 = playSeVer2( spep_0 + 600 + 3, 1036, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_0 + 600 + 3, SE030, 56 );

    else
        setupMovie(0, SP_01, 0, 1);
    end

else

    setupMovie(0, SP_01, 0, 1);

    mirror = -1;
    kick_mirror = -100;

    --SP_01  = SP_01r; -- 敵側エフェクトがある場合のみ

end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 悟空PANアップ～敵スローで殴られるまで
-------------------------------------------------

MAX_FRAME_0 = 980;

CARD_FRAME = 224;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 悟空PANアップ～敵スローで殴られるまで(ef_001)
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
spep_x = spep_0 + 16; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
--   speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--   setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end
--[[
ctgogo_x = 0; -- 演出によって白目にかからないように調整

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
]]

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き

setDisp( spep_0 + 694 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 982 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 694 + OFFSET_X, 1, 108 );
changeAnimeAndStop( spep_0 + 722 + OFFSET_X, 1, 114 + kick_mirror ,1);
changeAnimeBySide( spep_0 + 836 + OFFSET_X, 1, 108 );

x = 200;
y = -350;

setMoveKey( spep_0 + 694 + OFFSET_X, 1, 277.9 * mirror, -725.9 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, 277.9 * mirror, -725.9 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, 332.2 * mirror, -593.3 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, 332.2 * mirror, -593.3 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, 297 * mirror, -830.5 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, 297 * mirror, -830.5 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 317.1 * mirror, -813.3 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, 317.1 * mirror, -813.3 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, 466.6 * mirror, -637.2 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, 466.6 * mirror, -637.2 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, 489.1 * mirror, -618 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, 489.1 * mirror, -618 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, 272.5 * mirror, -638.7 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, 272.5 * mirror, -638.7 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 295.5 * mirror, -619 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, 295.5 * mirror, -619 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 508.7 * mirror, -513.9 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, 508.7 * mirror, -513.9 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 531.3 * mirror, -494.7 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 531.3 * mirror, -494.7 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 419.8 * mirror, -574.9 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 419.8 * mirror, -574.9 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 439.9 * mirror, -557.8 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, 439.9 * mirror, -557.8 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 560.8 * mirror, -510.5 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, 560.8 * mirror, -510.5 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 570.3 * mirror, -502.3 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 570.3 * mirror, -502.3 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, (582.4 + x) * mirror, 7.5 + y , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, (582.4 + x) * mirror, 7.5 + y , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, (613.4 + x) * mirror, 60.6 + y , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, (613.4 + x) * mirror, 60.6 + y , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, (612.8 + x) * mirror, 83.8 + y , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, (612.8 + x) * mirror, 83.8 + y , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, (633.8 + x) * mirror, 101.9 + y , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, (633.8 + x) * mirror, 101.9 + y , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, (676.3 + x) * mirror, 136.1 + y , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, (676.3 + x) * mirror, 136.1 + y , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, (651.3 + x) * mirror, 110.5 + y , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, (651.3 + x) * mirror, 110.5 + y , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, (690.5 + x) * mirror, 138.1 + y , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, (690.5 + x) * mirror, 138.1 + y , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, (687.9 + x) * mirror, 140.4 + y , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, (687.9 + x) * mirror, 140.4 + y , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, (683 + x) * mirror, 142.3 + y , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, (683 + x) * mirror, 142.3 + y , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, (693.9 + x) * mirror, 152.1 + y , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, (693.9 + x) * mirror, 152.1 + y , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, (699.5 + x) * mirror, 159.2 + y , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, (699.5 + x) * mirror, 159.2 + y , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, (702.7 + x) * mirror, 153.6 + y , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, (702.7 + x) * mirror, 153.6 + y , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, (708 + x) * mirror, 143.3 + y , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, (708 + x) * mirror, 143.3 + y , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, (712 + x) * mirror, 150.7 + y , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, (712 + x) * mirror, 150.7 + y , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, (717.8 + x) * mirror, 158.6 + y , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, (717.8 + x) * mirror, 158.6 + y , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, (714.4 + x) * mirror, 157.4 + y , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, (714.4 + x) * mirror, 157.4 + y , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, (711.3 + x) * mirror, 155.4 + y , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, (711.3 + x) * mirror, 155.4 + y , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, (715.3 + x) * mirror, 158.2 + y , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, (715.3 + x) * mirror, 158.2 + y , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, (719.1 + x) * mirror, 160.5 + y , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, (719.1 + x) * mirror, 160.5 + y , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, (719.2 + x) * mirror, 157.2 + y , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, (719.2 + x) * mirror, 157.2 + y , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, (722.4 + x) * mirror, 155.1 + y , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, (722.4 + x) * mirror, 155.1 + y , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, (723 + x) * mirror, 155.5 + y , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, (723 + x) * mirror, 155.5 + y , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, (726 + x) * mirror, 157.6 + y , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, (726 + x) * mirror, 157.6 + y , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, (726.4 + x) * mirror, 156.9 + y , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, (726.4 + x) * mirror, 156.9 + y , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, (729.6 + x) * mirror, 158.8 + y , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, (729.6 + x) * mirror, 158.8 + y , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, (732.7 + x) * mirror, 158.9 + y , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, (732.7 + x) * mirror, 158.9 + y , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, (734.4 + x) * mirror, 157.8 + y , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, (734.4 + x) * mirror, 157.8 + y , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, (735.1 + x) * mirror, 159.6 + y , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, (735.1 + x) * mirror, 159.6 + y , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, (738.2 + x) * mirror, 161.7 + y , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, (738.2 + x) * mirror, 161.7 + y , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, (739.5 + x) * mirror, 161.7 + y , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, (739.5 + x) * mirror, 161.7 + y , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, (742.5 + x) * mirror, 162.1 + y , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, (742.5 + x) * mirror, 162.1 + y , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, (745.4 + x) * mirror, 162.4 + y , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, (745.4 + x) * mirror, 162.4 + y , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, (746 + x) * mirror, 161 + y , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, (746 + x) * mirror, 161 + y , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, (747.5 + x) * mirror, 163 + y , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, (747.5 + x) * mirror, 163 + y , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, (750.7 + x) * mirror, 163.2 + y , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, (750.7 + x) * mirror, 163.2 + y , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, (753.4 + x) * mirror, 163.1 + y , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, (753.4 + x) * mirror, 163.1 + y , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, (753.5 + x) * mirror, 163.1 + y , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, (753.5 + x) * mirror, 163.1 + y , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, (757 + x) * mirror, 164.5 + y , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, (757 + x) * mirror, 164.5 + y , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, (758.4 + x) * mirror, 162.8 + y , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, (758.4 + x) * mirror, 162.8 + y , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, (759.2 + x) * mirror, 163.8 + y , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, (759.2 + x) * mirror, 163.8 + y , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, (762.1 + x) * mirror, 164.7 + y , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, (762.1 + x) * mirror, 164.7 + y , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, (764.6 + x) * mirror, 164.5 + y , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, (764.6 + x) * mirror, 164.5 + y , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, (767.6 + x) * mirror, 165.8 + y , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, (767.6 + x) * mirror, 165.8 + y , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, (770 + x) * mirror, 165.8 + y , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, (770 + x) * mirror, 165.8 + y , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, (770.3 + x) * mirror, 165.8 + y , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, (770.3 + x) * mirror, 165.8 + y , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, (772 + x) * mirror, 165.7 + y , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, (772 + x) * mirror, 165.7 + y , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, (773.7 + x) * mirror, 165.7 + y , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, (773.7 + x) * mirror, 165.7 + y , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, (777.5 + x) * mirror, 166.6 + y , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, (777.5 + x) * mirror, 166.6 + y , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, (777.8 + x) * mirror, 167.9 + y , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, (777.8 + x) * mirror, 167.9 + y , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, (780.2 + x) * mirror, 167.3 + y , 0 );
setMoveKey( spep_0 + 821 + OFFSET_X, 1, (780.2 + x) * mirror, 167.3 + y , 0 );
setMoveKey( spep_0 + 822 + OFFSET_X, 1, (782.4 + x) * mirror, 168.1 + y , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, (782.4 + x) * mirror, 168.1 + y , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, (784.8 + x) * mirror, 166.7 + y , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, (784.8 + x) * mirror, 166.7 + y , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, (786.1 + x) * mirror, 168 + y , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, (786.1 + x) * mirror, 168 + y , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, (789.1 + x) * mirror, 168.4 + y , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, (789.1 + x) * mirror, 168.4 + y , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, (791.3 + x) * mirror, 169 + y , 0 );
setMoveKey( spep_0 + 831 + OFFSET_X, 1, (791.3 + x) * mirror, 169 + y , 0 );
setMoveKey( spep_0 + 832 + OFFSET_X, 1, (792.5 + x) * mirror, 166.3 + y , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, (792.5 + x) * mirror, 166.3 + y , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, (793.7 + x) * mirror, 167.5 + y , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, (793.7 + x) * mirror, 167.5 + y , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, -53 * mirror, -351.6 , 0 );
setMoveKey( spep_0 + 837 + OFFSET_X, 1, -53 * mirror, -351.6 , 0 );
setMoveKey( spep_0 + 838 + OFFSET_X, 1, -52.4 * mirror, -351.8 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, -52.4 * mirror, -351.8 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, -52.9 * mirror, -352 , 0 );
setMoveKey( spep_0 + 841 + OFFSET_X, 1, -52.9 * mirror, -352 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, -49.8 * mirror, -343.7 , 0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, -49.8 * mirror, -343.7 , 0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, -49.9 * mirror, -343.7 , 0 );
setMoveKey( spep_0 + 845 + OFFSET_X, 1, -49.9 * mirror, -343.7 , 0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, -46.4 * mirror, -335.8 , 0 );
setMoveKey( spep_0 + 847 + OFFSET_X, 1, -46.4 * mirror, -335.8 , 0 );
setMoveKey( spep_0 + 848 + OFFSET_X, 1, -46.4 * mirror, -335.7 , 0 );
setMoveKey( spep_0 + 849 + OFFSET_X, 1, -46.4 * mirror, -335.7 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, -43 * mirror, -327.3 , 0 );
setMoveKey( spep_0 + 851 + OFFSET_X, 1, -43 * mirror, -327.3 , 0 );
setMoveKey( spep_0 + 852 + OFFSET_X, 1, -42.8 * mirror, -326.7 , 0 );
setMoveKey( spep_0 + 853 + OFFSET_X, 1, -42.8 * mirror, -326.7 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, -39.2 * mirror, -318.2 , 0 );
setMoveKey( spep_0 + 855 + OFFSET_X, 1, -39.2 * mirror, -318.2 , 0 );
setMoveKey( spep_0 + 856 + OFFSET_X, 1, -35.6 * mirror, -310.3 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, -35.6 * mirror, -310.3 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, -35.4 * mirror, -310.6 , 0 );
setMoveKey( spep_0 + 859 + OFFSET_X, 1, -35.4 * mirror, -310.6 , 0 );
setMoveKey( spep_0 + 860 + OFFSET_X, 1, -35.4 * mirror, -310.7 , 0 );
setMoveKey( spep_0 + 861 + OFFSET_X, 1, -35.4 * mirror, -310.7 , 0 );
setMoveKey( spep_0 + 862 + OFFSET_X, 1, -32.2 * mirror, -302.9 , 0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, -32.2 * mirror, -302.9 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, -32.4 * mirror, -303.1 , 0 );
setMoveKey( spep_0 + 865 + OFFSET_X, 1, -32.4 * mirror, -303.1 , 0 );
setMoveKey( spep_0 + 866 + OFFSET_X, 1, -29.2 * mirror, -294.8 , 0 );
setMoveKey( spep_0 + 867 + OFFSET_X, 1, -29.2 * mirror, -294.8 , 0 );
setMoveKey( spep_0 + 868 + OFFSET_X, 1, -29.1 * mirror, -294.5 , 0 );
setMoveKey( spep_0 + 869 + OFFSET_X, 1, -29.1 * mirror, -294.5 , 0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, -25.5 * mirror, -286.2 , 0 );
setMoveKey( spep_0 + 871 + OFFSET_X, 1, -25.5 * mirror, -286.2 , 0 );
setMoveKey( spep_0 + 872 + OFFSET_X, 1, -25.4 * mirror, -286.1 , 0 );
setMoveKey( spep_0 + 873 + OFFSET_X, 1, -25.4 * mirror, -286.1 , 0 );
setMoveKey( spep_0 + 874 + OFFSET_X, 1, -22.3 * mirror, -278 , 0 );
setMoveKey( spep_0 + 875 + OFFSET_X, 1, -22.3 * mirror, -278 , 0 );
setMoveKey( spep_0 + 876 + OFFSET_X, 1, -19.4 * mirror, -270 , 0 );
setMoveKey( spep_0 + 877 + OFFSET_X, 1, -19.4 * mirror, -270 , 0 );
setMoveKey( spep_0 + 878 + OFFSET_X, 1, -20 * mirror, -270.2 , 0 );
setMoveKey( spep_0 + 879 + OFFSET_X, 1, -20 * mirror, -270.2 , 0 );
setMoveKey( spep_0 + 880 + OFFSET_X, 1, -20.3 * mirror, -270.7 , 0 );
setMoveKey( spep_0 + 881 + OFFSET_X, 1, -20.3 * mirror, -270.7 , 0 );
setMoveKey( spep_0 + 882 + OFFSET_X, 1, -17 * mirror, -262.8 , 0 );
setMoveKey( spep_0 + 883 + OFFSET_X, 1, -17 * mirror, -262.8 , 0 );
setMoveKey( spep_0 + 884 + OFFSET_X, 1, -17 * mirror, -263 , 0 );
setMoveKey( spep_0 + 885 + OFFSET_X, 1, -17 * mirror, -263 , 0 );
setMoveKey( spep_0 + 886 + OFFSET_X, 1, -13.8 * mirror, -254.9 , 0 );
setMoveKey( spep_0 + 887 + OFFSET_X, 1, -13.8 * mirror, -254.9 , 0 );
setMoveKey( spep_0 + 888 + OFFSET_X, 1, -13.7 * mirror, -254.5 , 0 );
setMoveKey( spep_0 + 889 + OFFSET_X, 1, -13.7 * mirror, -254.5 , 0 );
setMoveKey( spep_0 + 890 + OFFSET_X, 1, -10 * mirror, -246 , 0 );
setMoveKey( spep_0 + 891 + OFFSET_X, 1, -10 * mirror, -246 , 0 );
setMoveKey( spep_0 + 892 + OFFSET_X, 1, -9.7 * mirror, -245.5 , 0 );
setMoveKey( spep_0 + 893 + OFFSET_X, 1, -9.7 * mirror, -245.5 , 0 );
setMoveKey( spep_0 + 894 + OFFSET_X, 1, -6.2 * mirror, -237.3 , 0 );
setMoveKey( spep_0 + 895 + OFFSET_X, 1, -6.2 * mirror, -237.3 , 0 );
setMoveKey( spep_0 + 896 + OFFSET_X, 1, -3.3 * mirror, -229.6 , 0 );
setMoveKey( spep_0 + 897 + OFFSET_X, 1, -3.3 * mirror, -229.6 , 0 );
setMoveKey( spep_0 + 898 + OFFSET_X, 1, -3.7 * mirror, -230.7 , 0 );
setMoveKey( spep_0 + 899 + OFFSET_X, 1, -3.7 * mirror, -230.7 , 0 );
setMoveKey( spep_0 + 900 + OFFSET_X, 1, -3.7 * mirror, -232 , 0 );
setMoveKey( spep_0 + 901 + OFFSET_X, 1, -3.7 * mirror, -232 , 0 );
setMoveKey( spep_0 + 902 + OFFSET_X, 1, -0.1 * mirror, -224.5 , 0 );
setMoveKey( spep_0 + 903 + OFFSET_X, 1, -0.1 * mirror, -224.5 , 0 );
setMoveKey( spep_0 + 904 + OFFSET_X, 1, 0.3 * mirror, -224.2 , 0 );
setMoveKey( spep_0 + 905 + OFFSET_X, 1, 0.3 * mirror, -224.2 , 0 );
setMoveKey( spep_0 + 906 + OFFSET_X, 1, 3.8 * mirror, -215 , 0 );
setMoveKey( spep_0 + 907 + OFFSET_X, 1, 3.8 * mirror, -215 , 0 );
setMoveKey( spep_0 + 908 + OFFSET_X, 1, 4.2 * mirror, -214 , 0 );
setMoveKey( spep_0 + 909 + OFFSET_X, 1, 4.2 * mirror, -214 , 0 );
setMoveKey( spep_0 + 910 + OFFSET_X, 1, 8.2 * mirror, -205.6 , 0 );
setMoveKey( spep_0 + 911 + OFFSET_X, 1, 8.2 * mirror, -205.6 , 0 );
setMoveKey( spep_0 + 912 + OFFSET_X, 1, 8.6 * mirror, -205.8 , 0 );
setMoveKey( spep_0 + 913 + OFFSET_X, 1, 8.6 * mirror, -205.8 , 0 );
setMoveKey( spep_0 + 914 + OFFSET_X, 1, 11.7 * mirror, -197.6 , 0 );
setMoveKey( spep_0 + 915 + OFFSET_X, 1, 11.7 * mirror, -197.6 , 0 );
setMoveKey( spep_0 + 916 + OFFSET_X, 1, 14.2 * mirror, -189.6 , 0 );
setMoveKey( spep_0 + 917 + OFFSET_X, 1, 14.2 * mirror, -189.6 , 0 );
setMoveKey( spep_0 + 918 + OFFSET_X, 1, 13.7 * mirror, -189.7 , 0 );
setMoveKey( spep_0 + 919 + OFFSET_X, 1, 13.7 * mirror, -189.7 , 0 );
setMoveKey( spep_0 + 920 + OFFSET_X, 1, 14.5 * mirror, -189.9 , 0 );
setMoveKey( spep_0 + 921 + OFFSET_X, 1, 14.5 * mirror, -189.9 , 0 );
setMoveKey( spep_0 + 922 + OFFSET_X, 1, 19.1 * mirror, -181.9 , 0 );
setMoveKey( spep_0 + 923 + OFFSET_X, 1, 19.1 * mirror, -181.9 , 0 );
setMoveKey( spep_0 + 924 + OFFSET_X, 1, 19.9 * mirror, -181.9 , 0 );
setMoveKey( spep_0 + 925 + OFFSET_X, 1, 19.9 * mirror, -181.9 , 0 );
setMoveKey( spep_0 + 926 + OFFSET_X, 1, 23.3 * mirror, -173.6 , 0 );
setMoveKey( spep_0 + 927 + OFFSET_X, 1, 23.3 * mirror, -173.6 , 0 );
setMoveKey( spep_0 + 928 + OFFSET_X, 1, 22.7 * mirror, -173.2 , 0 );
setMoveKey( spep_0 + 929 + OFFSET_X, 1, 22.7 * mirror, -173.2 , 0 );
setMoveKey( spep_0 + 930 + OFFSET_X, 1, 25.9 * mirror, -165 , 0 );
setMoveKey( spep_0 + 931 + OFFSET_X, 1, 25.9 * mirror, -165 , 0 );
setMoveKey( spep_0 + 932 + OFFSET_X, 1, 26.2 * mirror, -165.3 , 0 );
setMoveKey( spep_0 + 933 + OFFSET_X, 1, 26.2 * mirror, -165.3 , 0 );
setMoveKey( spep_0 + 934 + OFFSET_X, 1, 29.9 * mirror, -157.5 , 0 );
setMoveKey( spep_0 + 935 + OFFSET_X, 1, 29.9 * mirror, -157.5 , 0 );
setMoveKey( spep_0 + 936 + OFFSET_X, 1, 33.3 * mirror, -149.6 , 0 );
setMoveKey( spep_0 + 937 + OFFSET_X, 1, 33.3 * mirror, -149.6 , 0 );
setMoveKey( spep_0 + 938 + OFFSET_X, 1, 32.5 * mirror, -149.6 , 0 );
setMoveKey( spep_0 + 939 + OFFSET_X, 1, 32.5 * mirror, -149.6 , 0 );
setMoveKey( spep_0 + 940 + OFFSET_X, 1, 31.5 * mirror, -149.5 , 0 );
setMoveKey( spep_0 + 941 + OFFSET_X, 1, 31.5 * mirror, -149.5 , 0 );
setMoveKey( spep_0 + 942 + OFFSET_X, 1, 34.3 * mirror, -141.5 , 0 );
setMoveKey( spep_0 + 943 + OFFSET_X, 1, 34.3 * mirror, -141.5 , 0 );
setMoveKey( spep_0 + 944 + OFFSET_X, 1, 34.2 * mirror, -141.6 , 0 );
setMoveKey( spep_0 + 945 + OFFSET_X, 1, 34.2 * mirror, -141.6 , 0 );
setMoveKey( spep_0 + 946 + OFFSET_X, 1, 38.1 * mirror, -133.7 , 0 );
setMoveKey( spep_0 + 947 + OFFSET_X, 1, 38.1 * mirror, -133.7 , 0 );
setMoveKey( spep_0 + 948 + OFFSET_X, 1, 39 * mirror, -133.7 , 0 );
setMoveKey( spep_0 + 949 + OFFSET_X, 1, 39 * mirror, -133.7 , 0 );
setMoveKey( spep_0 + 950 + OFFSET_X, 1, 42.7 * mirror, -125.4 , 0 );
setMoveKey( spep_0 + 951 + OFFSET_X, 1, 42.7 * mirror, -125.4 , 0 );
setMoveKey( spep_0 + 952 + OFFSET_X, 1, 42.6 * mirror, -124.9 , 0 );
setMoveKey( spep_0 + 953 + OFFSET_X, 1, 42.6 * mirror, -124.9 , 0 );
setMoveKey( spep_0 + 954 + OFFSET_X, 1, 45.9 * mirror, -116.2 , 0 );
setMoveKey( spep_0 + 955 + OFFSET_X, 1, 45.9 * mirror, -116.2 , 0 );
setMoveKey( spep_0 + 956 + OFFSET_X, 1, 49.3 * mirror, -107.5 , 0 );
setMoveKey( spep_0 + 957 + OFFSET_X, 1, 49.3 * mirror, -107.5 , 0 );
setMoveKey( spep_0 + 958 + OFFSET_X, 1, 49.6 * mirror, -107.4 , 0 );
setMoveKey( spep_0 + 959 + OFFSET_X, 1, 49.6 * mirror, -107.4 , 0 );
setMoveKey( spep_0 + 960 + OFFSET_X, 1, 49.7 * mirror, -107.9 , 0 );
setMoveKey( spep_0 + 961 + OFFSET_X, 1, 49.7 * mirror, -107.9 , 0 );
setMoveKey( spep_0 + 962 + OFFSET_X, 1, 52.5 * mirror, -100.4 , 0 );
setMoveKey( spep_0 + 963 + OFFSET_X, 1, 52.5 * mirror, -100.4 , 0 );
setMoveKey( spep_0 + 964 + OFFSET_X, 1, 51.6 * mirror, -101.1 , 0 );
setMoveKey( spep_0 + 965 + OFFSET_X, 1, 51.6 * mirror, -101.1 , 0 );
setMoveKey( spep_0 + 966 + OFFSET_X, 1, 54.5 * mirror, -93.4 , 0 );
setMoveKey( spep_0 + 967 + OFFSET_X, 1, 54.5 * mirror, -93.4 , 0 );
setMoveKey( spep_0 + 968 + OFFSET_X, 1, 54.9 * mirror, -93.8 , 0 );
setMoveKey( spep_0 + 969 + OFFSET_X, 1, 54.9 * mirror, -93.8 , 0 );
setMoveKey( spep_0 + 970 + OFFSET_X, 1, 59 * mirror, -86 , 0 );
setMoveKey( spep_0 + 971 + OFFSET_X, 1, 59 * mirror, -86 , 0 );
setMoveKey( spep_0 + 972 + OFFSET_X, 1, 59.2 * mirror, -85.8 , 0 );
setMoveKey( spep_0 + 973 + OFFSET_X, 1, 59.2 * mirror, -85.8 , 0 );
setMoveKey( spep_0 + 974 + OFFSET_X, 1, 62.5 * mirror, -76.8 , 0 );
setMoveKey( spep_0 + 975 + OFFSET_X, 1, 62.5 * mirror, -76.8 , 0 );
setMoveKey( spep_0 + 976 + OFFSET_X, 1, 65.1 * mirror, -67.6 , 0 );
setMoveKey( spep_0 + 977 + OFFSET_X, 1, 65.1 * mirror, -67.6 , 0 );
setMoveKey( spep_0 + 978 + OFFSET_X, 1, 64.8 * mirror, -66.9 , 0 );
setMoveKey( spep_0 + 979 + OFFSET_X, 1, 64.8 * mirror, -66.9 , 0 );
setMoveKey( spep_0 + 980 + OFFSET_X, 1, 65.3 * mirror, -67 , 0 );
setMoveKey( spep_0 + 982 + OFFSET_X, 1, 65.3 * mirror, -67 , 0 );

setScaleKey( spep_0 + 694 + OFFSET_X, 1, 17.78, 17.79 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 17.78, 17.79 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 17.05, 17.05 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 17.05, 17.05 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 16.28, 16.28 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 16.28, 16.28 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 15.5, 15.51 );
setScaleKey( spep_0 + 835 + OFFSET_X, 1, 15.5, 15.51 );
setScaleKey( spep_0 + 836 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 841 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 842 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 845 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 846 + OFFSET_X, 1, 3.69, 3.7 );
setScaleKey( spep_0 + 849 + OFFSET_X, 1, 3.69, 3.7 );
setScaleKey( spep_0 + 850 + OFFSET_X, 1, 3.66, 3.67 );
setScaleKey( spep_0 + 853 + OFFSET_X, 1, 3.66, 3.67 );
setScaleKey( spep_0 + 854 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 855 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 856 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 861 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 862 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 865 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 866 + OFFSET_X, 1, 3.55, 3.56 );
setScaleKey( spep_0 + 869 + OFFSET_X, 1, 3.55, 3.56 );
setScaleKey( spep_0 + 870 + OFFSET_X, 1, 3.52, 3.53 );
setScaleKey( spep_0 + 873 + OFFSET_X, 1, 3.52, 3.53 );
setScaleKey( spep_0 + 874 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 875 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 876 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 881 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 882 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 885 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 886 + OFFSET_X, 1, 3.41, 3.42 );
setScaleKey( spep_0 + 889 + OFFSET_X, 1, 3.41, 3.42 );
setScaleKey( spep_0 + 890 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 893 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 894 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 895 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 896 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 901 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 902 + OFFSET_X, 1, 3.3, 3.31 );
setScaleKey( spep_0 + 905 + OFFSET_X, 1, 3.3, 3.31 );
setScaleKey( spep_0 + 906 + OFFSET_X, 1, 3.27, 3.28 );
setScaleKey( spep_0 + 909 + OFFSET_X, 1, 3.27, 3.28 );
setScaleKey( spep_0 + 910 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 913 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 914 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 915 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 916 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 921 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 922 + OFFSET_X, 1, 3.16, 3.17 );
setScaleKey( spep_0 + 925 + OFFSET_X, 1, 3.16, 3.17 );
setScaleKey( spep_0 + 926 + OFFSET_X, 1, 3.13, 3.14 );
setScaleKey( spep_0 + 929 + OFFSET_X, 1, 3.13, 3.14 );
setScaleKey( spep_0 + 930 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 933 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 934 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 935 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 936 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 941 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 942 + OFFSET_X, 1, 3.02, 3.03 );
setScaleKey( spep_0 + 945 + OFFSET_X, 1, 3.02, 3.03 );
setScaleKey( spep_0 + 946 + OFFSET_X, 1, 2.99, 3 );
setScaleKey( spep_0 + 949 + OFFSET_X, 1, 2.99, 3 );
setScaleKey( spep_0 + 950 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 953 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 954 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 955 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 956 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 961 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 962 + OFFSET_X, 1, 2.88, 2.89 );
setScaleKey( spep_0 + 965 + OFFSET_X, 1, 2.88, 2.89 );
setScaleKey( spep_0 + 966 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 969 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 970 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 973 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 974 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 975 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 976 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 982 + OFFSET_X, 1, 2.77, 2.77 );

setRotateKey( spep_0 + 694 + OFFSET_X, 1, -10 * mirror );
setRotateKey( spep_0 + 721 + OFFSET_X, 1, -10 * mirror );
setRotateKey( spep_0 + 722 + OFFSET_X, 1, -55.9 * mirror );
setRotateKey( spep_0 + 835 + OFFSET_X, 1, -55.9 * mirror );
setRotateKey( spep_0 + 836 + OFFSET_X, 1, -23.3 * mirror );
setRotateKey( spep_0 + 845 + OFFSET_X, 1, -23.3 * mirror );
setRotateKey( spep_0 + 846 + OFFSET_X, 1, -23.1 * mirror );
setRotateKey( spep_0 + 849 + OFFSET_X, 1, -23.1 * mirror );
setRotateKey( spep_0 + 850 + OFFSET_X, 1, -23 * mirror );
setRotateKey( spep_0 + 853 + OFFSET_X, 1, -23 * mirror );
setRotateKey( spep_0 + 854 + OFFSET_X, 1, -22.8 * mirror );
setRotateKey( spep_0 + 861 + OFFSET_X, 1, -22.8 * mirror );
setRotateKey( spep_0 + 862 + OFFSET_X, 1, -22.6 * mirror );
setRotateKey( spep_0 + 865 + OFFSET_X, 1, -22.6 * mirror );
setRotateKey( spep_0 + 866 + OFFSET_X, 1, -22.5 * mirror );
setRotateKey( spep_0 + 869 + OFFSET_X, 1, -22.5 * mirror );
setRotateKey( spep_0 + 870 + OFFSET_X, 1, -22.3 * mirror );
setRotateKey( spep_0 + 875 + OFFSET_X, 1, -22.3 * mirror );
setRotateKey( spep_0 + 876 + OFFSET_X, 1, -22.1 * mirror );
setRotateKey( spep_0 + 885 + OFFSET_X, 1, -22.1 * mirror );
setRotateKey( spep_0 + 886 + OFFSET_X, 1, -21.8 * mirror );
setRotateKey( spep_0 + 893 + OFFSET_X, 1, -21.8 * mirror );
setRotateKey( spep_0 + 894 + OFFSET_X, 1, -21.6 * mirror );
setRotateKey( spep_0 + 901 + OFFSET_X, 1, -21.6 * mirror );
setRotateKey( spep_0 + 902 + OFFSET_X, 1, -21.3 * mirror );
setRotateKey( spep_0 + 913 + OFFSET_X, 1, -21.3 * mirror );
setRotateKey( spep_0 + 914 + OFFSET_X, 1, -21.1 * mirror );
setRotateKey( spep_0 + 915 + OFFSET_X, 1, -21.1 * mirror );
setRotateKey( spep_0 + 916 + OFFSET_X, 1, -21 * mirror );
setRotateKey( spep_0 + 921 + OFFSET_X, 1, -21 * mirror );
setRotateKey( spep_0 + 922 + OFFSET_X, 1, -20.8 * mirror );
setRotateKey( spep_0 + 929 + OFFSET_X, 1, -20.8 * mirror );
setRotateKey( spep_0 + 930 + OFFSET_X, 1, -20.6 * mirror );
setRotateKey( spep_0 + 933 + OFFSET_X, 1, -20.6 * mirror );
setRotateKey( spep_0 + 934 + OFFSET_X, 1, -20.5 * mirror );
setRotateKey( spep_0 + 935 + OFFSET_X, 1, -20.5 * mirror );
setRotateKey( spep_0 + 936 + OFFSET_X, 1, -20.3 * mirror );
setRotateKey( spep_0 + 945 + OFFSET_X, 1, -20.3 * mirror );
setRotateKey( spep_0 + 946 + OFFSET_X, 1, -20.1 * mirror );
setRotateKey( spep_0 + 949 + OFFSET_X, 1, -20.1 * mirror );
setRotateKey( spep_0 + 950 + OFFSET_X, 1, -20 * mirror );
setRotateKey( spep_0 + 953 + OFFSET_X, 1, -20 * mirror );
setRotateKey( spep_0 + 954 + OFFSET_X, 1, -19.8 * mirror );
setRotateKey( spep_0 + 961 + OFFSET_X, 1, -19.8 * mirror );
setRotateKey( spep_0 + 962 + OFFSET_X, 1, -19.6 * mirror );
setRotateKey( spep_0 + 965 + OFFSET_X, 1, -19.6 * mirror );
setRotateKey( spep_0 + 966 + OFFSET_X, 1, -19.5 * mirror );
setRotateKey( spep_0 + 969 + OFFSET_X, 1, -19.5 * mirror );
setRotateKey( spep_0 + 970 + OFFSET_X, 1, -19.3 * mirror );
setRotateKey( spep_0 + 975 + OFFSET_X, 1, -19.3 * mirror );
setRotateKey( spep_0 + 976 + OFFSET_X, 1, -19.1 * mirror );
setRotateKey( spep_0 + 982 + OFFSET_X, 1, -19.1 * mirror );

setGaussBlurKey( spep_0 + 694 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_0 + 925 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_0 + 926 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_0 + 929 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_0 + 930 + OFFSET_X, 1, 0.001 );
setGaussBlurKey( spep_0 + 933 + OFFSET_X, 1, 0.001 );
setGaussBlurKey( spep_0 + 934 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_0 + 982 + OFFSET_X, 1, 0 );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--オーラ
SE002 = playSeVer2( spep_0 + 0, 1513, "",spep_0 + 240, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 60 );
SE003 = playSeVer2( spep_0 + 2, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 63 );
--セリフカットイン
--SE004 = playSeVer2( spep_0 + 26, 1018, "", 0, 0, 0, -1);
--オーラ
SE005 = playSeVer2( spep_0 + 26, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE005, 63 );
SE006 = playSeVer2( spep_0 + 50, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE006, 63 );
SE007 = playSeVer2( spep_0 + 74, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE007, 63 );
SE008 = playSeVer2( spep_0 + 98, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE008, 63 );
--髪なびく
SE009 = playSeVer2( spep_0 + 125, 1258, "",spep_0 + 248, 22, 15, -1);
setSeVolumeByWorkId( spep_0 + 125, SE009, 50 );
setStartTimeMs( SE009,  267 );
--オーラ
SE010 = playSeVer2( spep_0 + 122, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE010, 63 );
--髪なびく
SE011 = playSeVer2( spep_0 + 131, 1190, "", 0, 14, 0, -1);
setStartTimeMs( SE011,  100 );
--オーラ
SE012 = playSeVer2( spep_0 + 146, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 146, SE012, 63 );
SE013 = playSeVer2( spep_0 + 170, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE013, 63 );
SE014 = playSeVer2( spep_0 + 194, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 194, SE014, 63 );
SE015 = playSeVer2( spep_0 + 218, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE015, 63 );
--カードカットイン
--SE016 = playSeVer2( spep_0 + 230, 1035, "", 0, 0, 0, -1);
--オーラ
SE017 = playSeVer2( spep_0 + 321, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 321, SE017, 56 );
SE018 = playSeVer2( spep_0 + 322, 1513, "",spep_0 + 638, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 322, SE018, 60 );
SE019 = playSeVer2( spep_0 + 345, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 345, SE019, 56 );
SE020 = playSeVer2( spep_0 + 369, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 369, SE020, 56 );
SE021 = playSeVer2( spep_0 + 393, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 393, SE021, 56 );
SE022 = playSeVer2( spep_0 + 417, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 417, SE022, 56 );
--環境音
SE023 = playSeVer2( spep_0 + 433, 1175, "",spep_0 + 640, 0, 15, -1);
setSeVolumeByWorkId( spep_0 + 433, SE023, 40 );
setPitch( spep_0 + 433, SE023, 400 );
setTimeStretch( SE023, 1.27, 30, 4 );
--オーラ
SE024 = playSeVer2( spep_0 + 441, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 441, SE024, 56 );
SE025 = playSeVer2( spep_0 + 465, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 465, SE025, 56 );
SE026 = playSeVer2( spep_0 + 489, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 489, SE026, 56 );
SE027 = playSeVer2( spep_0 + 513, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 513, SE027, 56 );
SE028 = playSeVer2( spep_0 + 537, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 537, SE028, 56 );
SE029 = playSeVer2( spep_0 + 561, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 561, SE029, 56 );
SE030 = playSeVer2( spep_0 + 585, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 585, SE030, 56 );
SE031 = playSeVer2( spep_0 + 609, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 609, SE031, 56 );
--瞬間移動
SE032 = playSeVer2( spep_0 + 623, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 623, SE032, 120 );
SE033 = playSeVer2( spep_0 + 623, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 623, SE033, 59 );
--オーラ
SE034 = playSeVer2( spep_0 + 633, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 633, SE034, 56 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 650; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
stopSe( SP_dodge - 12, SE034, 0);
--stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--瞬間移動
SE035 = playSeVer2( spep_0 + 647, 1500, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 647, SE035, 54 );
SE036 = playSeVer2( spep_0 + 653, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 653, SE036, 120 );
--パンチヒット
SE037 = playSeVer2( spep_0 + 690, 1004, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 695, 1049, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 699, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 699, SE039, 75 );
SE040 = playSeVer2( spep_0 + 701, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 701, SE040, 79 );
SE041 = playSeVer2( spep_0 + 701, 1156, "", 0, 0, 0, -1);
--環境音
SE042 = playSeVer2( spep_0 + 756, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 756, SE042, 48 );
--電気走る
SE043 = playSeVer2( spep_0 + 790, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 790, SE043, 74 );
SE044 = playSeVer2( spep_0 + 919, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 919, SE044, 75 );


-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 866); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 980F