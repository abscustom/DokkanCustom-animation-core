--1034300:UR_超サイヤ人3孫悟空(ミニ)(DAIMA)_EX必殺技：超かめはめ波
--sp_effect_a1_00540
--sp3056

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164516; --PANアップ～フィニッシュ ef_001

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



ENABLE_AUTO_TIME_STRETCH(0.9);

DISABLE_VOICE_IF_DOUBLE_SPEED();

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 614;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --かめはめ波溜め
        SE023 = playSeVer2( spep_0 + 614 + 3, 1210, "",spep_0 + 672, 26, 58, -1);
        setSeVolumeByWorkId( spep_0 + 614 + 3, SE023, 58 );
        setStartTimeMs( SE023,  1000 );

        --かめはめ波発射
        SE036 = playSeVer2( spep_0 + 614 + 3, 1133, "", 0, 0, 0, -1);
        SE037 = playSeVer2( spep_0 + 614 + 3, 1146, "", 0, 0, 0, -1);
        SE038 = playSeVer2( spep_0 + 614 + 3, 1213, "",spep_0 + 838, 0, 23, -1);

    else
        setupMovie(0, SP_01, 0, 1);
    end

else

    setupMovie(0, SP_01, 0, 1);

    HIDE_EFFECT_PHRASE_TEXTURES();

    mirror = -1;

end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 最初〜最後まで
-------------------------------------------------
MAX_FRAME_0 = 960;
CARD_FRAME = 224;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- PANアップ～フィニッシュ(ef_001)
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

--[[
-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 000; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

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
-- カードカットイン(EX 94F)
--------------------------------------

showCardCutinEx(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き1
setDisp( spep_0 + 742 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 808 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 742 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 748 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 750 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 754 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 756 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 760 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 762 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 766 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 770 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 774 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 778 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 782 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 786 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 792 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 796 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 800 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 804 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 742 + OFFSET_X, 1, 0.2 * mirror, 344.1 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 0.2 * mirror, 344.1 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 0.1 * mirror, 333.3 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 0.1 * mirror, 333.3 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 0.1 * mirror, 322.5 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 0.1 * mirror, 322.5 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 0.1 * mirror, 311.7 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 0.1 * mirror, 311.7 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 0.1 * mirror, 300.8 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 0.1 * mirror, 300.8 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 0.1 * mirror, 300.3 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 0.1 * mirror, 300.3 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 0.1 * mirror, 299.8 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 0.1 * mirror, 299.8 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 0.1 * mirror, 299.2 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 0.1 * mirror, 299.2 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 0.1 * mirror, 284 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 0.1 * mirror, 284 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 0.1 * mirror, 268.7 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 0.1 * mirror, 268.7 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 0.1 * mirror, 253.4 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 0.1 * mirror, 253.4 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 0.1 * mirror, 238.1 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, 0.1 * mirror, 238.1 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, 0.1 * mirror, 222.8 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, 0.1 * mirror, 222.8 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, 0.2 * mirror, 207.5 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, 0.2 * mirror, 207.5 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, 0.2 * mirror, 192.2 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, 0.2 * mirror, 192.2 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, 0.2 * mirror, 179.5 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, 0.2 * mirror, 179.5 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, 0.2 * mirror, 166.8 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, 0.2 * mirror, 166.8 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, 0.2 * mirror, 154.1 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, 0.2 * mirror, 154.1 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, 0.2 * mirror, 141.4 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, 0.2 * mirror, 141.4 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, 0.1 * mirror, 128.6 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, 0.1 * mirror, 128.6 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, 0.1 * mirror, 115.9 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, 0.1 * mirror, 115.9 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, 0.1 * mirror, 103.1 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, 0.1 * mirror, 103.1 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, 0.1 * mirror, 90.3 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, 0.1 * mirror, 90.3 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, 0.1 * mirror, 77.6 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, 0.1 * mirror, 77.6 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, 0.1 * mirror, 69 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, 0.1 * mirror, 69 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, 0.1 * mirror, 60.4 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, 0.1 * mirror, 60.4 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, 0.1 * mirror, 51.8 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, 0.1 * mirror, 51.8 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, 0.1 * mirror, 43.2 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, 0.1 * mirror, 43.2 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, 0.1 * mirror, 34.6 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, 0.1 * mirror, 34.6 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, 0.1 * mirror, 26 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, 0.1 * mirror, 26 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 0.1 * mirror, 17.4 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 0.1 * mirror, 17.4 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 0.1 * mirror, 8.7 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, 0.1 * mirror, 8.7 , 0 );

setScaleKey( spep_0 + 742 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 808 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_0 + 742 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 747 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 748 + OFFSET_X, 1, 36.7 * mirror );
setRotateKey( spep_0 + 749 + OFFSET_X, 1, 36.7 * mirror );
setRotateKey( spep_0 + 750 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 753 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 754 + OFFSET_X, 1, 36.7 * mirror );
setRotateKey( spep_0 + 755 + OFFSET_X, 1, 36.7 * mirror );
setRotateKey( spep_0 + 756 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 759 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 760 + OFFSET_X, 1, 36.7 * mirror );
setRotateKey( spep_0 + 761 + OFFSET_X, 1, 36.7 * mirror );
setRotateKey( spep_0 + 762 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 765 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 766 + OFFSET_X, 1, 36.7 * mirror );
setRotateKey( spep_0 + 769 + OFFSET_X, 1, 36.7 * mirror );
setRotateKey( spep_0 + 770 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 773 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 774 + OFFSET_X, 1, 36.7 * mirror );
setRotateKey( spep_0 + 777 + OFFSET_X, 1, 36.7 * mirror );
setRotateKey( spep_0 + 778 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 781 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 782 + OFFSET_X, 1, 36.7 * mirror );
setRotateKey( spep_0 + 785 + OFFSET_X, 1, 36.7 * mirror );
setRotateKey( spep_0 + 786 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 791 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 792 + OFFSET_X, 1, 36.7 * mirror );
setRotateKey( spep_0 + 795 + OFFSET_X, 1, 36.7 * mirror );
setRotateKey( spep_0 + 796 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 799 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 800 + OFFSET_X, 1, 36.7 * mirror );
setRotateKey( spep_0 + 803 + OFFSET_X, 1, 36.7 * mirror );
setRotateKey( spep_0 + 804 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 808 + OFFSET_X, 1, -45 * mirror );


-- 敵の動き2
setDisp( spep_0 + 826 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 956 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 826 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 830 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 834 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 838 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 842 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 846 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 850 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 854 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 858 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 862 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 866 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 870 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 874 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 878 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 882 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 886 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 890 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 894 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 898 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 902 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 906 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 910 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 914 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 918 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 922 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 926 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 930 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 934 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 938 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 942 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 946 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 950 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 954 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 826 + OFFSET_X, 1, -18.3 * mirror, 7.2 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, -18.3 * mirror, 7.2 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, -2.3 * mirror, 25.2 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, -2.3 * mirror, 25.2 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, -18.3 * mirror, 7.2 , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, -18.3 * mirror, 7.2 , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, -4.3 * mirror, 25.2 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, -4.3 * mirror, 25.2 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, 13.7 * mirror, 4.2 , 0 );
setMoveKey( spep_0 + 837 + OFFSET_X, 1, 13.7 * mirror, 4.2 , 0 );
setMoveKey( spep_0 + 838 + OFFSET_X, 1, -5.3 * mirror, 8.2 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, -5.3 * mirror, 8.2 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, 6.4 * mirror, 16 , 0 );
setMoveKey( spep_0 + 841 + OFFSET_X, 1, 6.4 * mirror, 16 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, 5.1 * mirror, 15 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, 5.1 * mirror, 15 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, -38.6 * mirror, 27.5 , 0 );
setMoveKey( spep_0 + 859 + OFFSET_X, 1, -38.6 * mirror, 27.5 , 0 );
setMoveKey( spep_0 + 860 + OFFSET_X, 1, -12.4 * mirror, -5 , 0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, -12.4 * mirror, -5 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, -12.4 * mirror, 56.2 , 0 );
setMoveKey( spep_0 + 865 + OFFSET_X, 1, -12.4 * mirror, 56.2 , 0 );
setMoveKey( spep_0 + 866 + OFFSET_X, 1, -36.1 * mirror, 17.5 , 0 );
setMoveKey( spep_0 + 867 + OFFSET_X, 1, -36.1 * mirror, 17.5 , 0 );
setMoveKey( spep_0 + 868 + OFFSET_X, 1, -36.1 * mirror, 37.5 , 0 );
setMoveKey( spep_0 + 869 + OFFSET_X, 1, -36.1 * mirror, 37.5 , 0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, 3.9 * mirror, -3.8 , 0 );
setMoveKey( spep_0 + 871 + OFFSET_X, 1, 3.9 * mirror, -3.8 , 0 );
setMoveKey( spep_0 + 872 + OFFSET_X, 1, 3.9 * mirror, 17.5 , 0 );
setMoveKey( spep_0 + 875 + OFFSET_X, 1, 3.9 * mirror, 17.5 , 0 );
setMoveKey( spep_0 + 876 + OFFSET_X, 1, -8.6 * mirror, 8.7 , 0 );
setMoveKey( spep_0 + 877 + OFFSET_X, 1, -8.6 * mirror, 8.7 , 0 );
setMoveKey( spep_0 + 878 + OFFSET_X, 1, 1.4 * mirror, 27.5 , 0 );
setMoveKey( spep_0 + 879 + OFFSET_X, 1, 1.4 * mirror, 27.5 , 0 );
setMoveKey( spep_0 + 880 + OFFSET_X, 1, -24.9 * mirror, -12.5 , 0 );
setMoveKey( spep_0 + 881 + OFFSET_X, 1, -24.9 * mirror, -12.5 , 0 );
setMoveKey( spep_0 + 882 + OFFSET_X, 1, -4.9 * mirror, 11.2 , 0 );
setMoveKey( spep_0 + 885 + OFFSET_X, 1, -4.9 * mirror, 11.2 , 0 );
setMoveKey( spep_0 + 886 + OFFSET_X, 1, -16.1 * mirror, -12.5 , 0 );
setMoveKey( spep_0 + 887 + OFFSET_X, 1, -16.1 * mirror, -12.5 , 0 );
setMoveKey( spep_0 + 888 + OFFSET_X, 1, 13.9 * mirror, 41.2 , 0 );
setMoveKey( spep_0 + 889 + OFFSET_X, 1, 13.9 * mirror, 41.2 , 0 );
setMoveKey( spep_0 + 890 + OFFSET_X, 1, 13.9 * mirror, 11.2 , 0 );
setMoveKey( spep_0 + 891 + OFFSET_X, 1, 13.9 * mirror, 11.2 , 0 );
setMoveKey( spep_0 + 892 + OFFSET_X, 1, -19.9 * mirror, 7.5 , 0 );
setMoveKey( spep_0 + 895 + OFFSET_X, 1, -19.9 * mirror, 7.5 , 0 );
setMoveKey( spep_0 + 896 + OFFSET_X, 1, 13.9 * mirror, 42.5 , 0 );
setMoveKey( spep_0 + 897 + OFFSET_X, 1, 13.9 * mirror, 42.5 , 0 );
setMoveKey( spep_0 + 898 + OFFSET_X, 1, -9.9 * mirror, 7.5 , 0 );
setMoveKey( spep_0 + 899 + OFFSET_X, 1, -9.9 * mirror, 7.5 , 0 );
setMoveKey( spep_0 + 900 + OFFSET_X, 1, 36.4 * mirror, -8.8 , 0 );
setMoveKey( spep_0 + 901 + OFFSET_X, 1, 36.4 * mirror, -8.8 , 0 );
setMoveKey( spep_0 + 902 + OFFSET_X, 1, -26.1 * mirror, 41.2 , 0 );
setMoveKey( spep_0 + 905 + OFFSET_X, 1, -26.1 * mirror, 41.2 , 0 );
setMoveKey( spep_0 + 906 + OFFSET_X, 1, -14.9 * mirror, -7.5 , 0 );
setMoveKey( spep_0 + 907 + OFFSET_X, 1, -14.9 * mirror, -7.5 , 0 );
setMoveKey( spep_0 + 908 + OFFSET_X, 1, 11.4 * mirror, 3.7 , 0 );
setMoveKey( spep_0 + 909 + OFFSET_X, 1, 11.4 * mirror, 3.7 , 0 );
setMoveKey( spep_0 + 910 + OFFSET_X, 1, 7.6 * mirror, -5 , 0 );
setMoveKey( spep_0 + 911 + OFFSET_X, 1, 7.6 * mirror, -5 , 0 );
setMoveKey( spep_0 + 912 + OFFSET_X, 1, -12.4 * mirror, 7.5 , 0 );
setMoveKey( spep_0 + 915 + OFFSET_X, 1, -12.4 * mirror, 7.5 , 0 );
setMoveKey( spep_0 + 916 + OFFSET_X, 1, -14.9 * mirror, 1.2 , 0 );
setMoveKey( spep_0 + 917 + OFFSET_X, 1, -14.9 * mirror, 1.2 , 0 );
setMoveKey( spep_0 + 918 + OFFSET_X, 1, 7.6 * mirror, 21.2 , 0 );
setMoveKey( spep_0 + 919 + OFFSET_X, 1, 7.6 * mirror, 21.2 , 0 );
setMoveKey( spep_0 + 920 + OFFSET_X, 1, -2.4 * mirror, 8.7 , 0 );
setMoveKey( spep_0 + 921 + OFFSET_X, 1, -2.4 * mirror, 8.7 , 0 );
setMoveKey( spep_0 + 922 + OFFSET_X, 1, -4.9 * mirror, 3.7 , 0 );
setMoveKey( spep_0 + 925 + OFFSET_X, 1, -4.9 * mirror, 3.7 , 0 );
setMoveKey( spep_0 + 926 + OFFSET_X, 1, -14.9 * mirror, 11.2 , 0 );
setMoveKey( spep_0 + 927 + OFFSET_X, 1, -14.9 * mirror, 11.2 , 0 );
setMoveKey( spep_0 + 928 + OFFSET_X, 1, 30.1 * mirror, 7.5 , 0 );
setMoveKey( spep_0 + 929 + OFFSET_X, 1, 30.1 * mirror, 7.5 , 0 );
setMoveKey( spep_0 + 930 + OFFSET_X, 1, -9.9 * mirror, 7.5 , 0 );
setMoveKey( spep_0 + 931 + OFFSET_X, 1, -9.9 * mirror, 7.5 , 0 );
setMoveKey( spep_0 + 932 + OFFSET_X, 1, 6.4 * mirror, 18.7 , 0 );
setMoveKey( spep_0 + 933 + OFFSET_X, 1, 6.4 * mirror, 18.7 , 0 );
setMoveKey( spep_0 + 934 + OFFSET_X, 1, 5.1 * mirror, 18.7 , 0 );
setMoveKey( spep_0 + 935 + OFFSET_X, 1, 5.1 * mirror, 18.7 , 0 );
setMoveKey( spep_0 + 936 + OFFSET_X, 1, 1.4 * mirror, 7.5 , 0 );
setMoveKey( spep_0 + 937 + OFFSET_X, 1, 1.4 * mirror, 7.5 , 0 );
setMoveKey( spep_0 + 938 + OFFSET_X, 1, 2.4 * mirror, 20 , 0 );
setMoveKey( spep_0 + 939 + OFFSET_X, 1, 2.4 * mirror, 20 , 0 );
setMoveKey( spep_0 + 940 + OFFSET_X, 1, -14.6 * mirror, 12.2 , 0 );
setMoveKey( spep_0 + 941 + OFFSET_X, 1, -14.6 * mirror, 12.2 , 0 );
setMoveKey( spep_0 + 942 + OFFSET_X, 1, 5.4 * mirror, 12.2 , 0 );
setMoveKey( spep_0 + 945 + OFFSET_X, 1, 5.4 * mirror, 12.2 , 0 );
setMoveKey( spep_0 + 946 + OFFSET_X, 1, 16.4 * mirror, 5.2 , 0 );
setMoveKey( spep_0 + 947 + OFFSET_X, 1, 16.4 * mirror, 5.2 , 0 );
setMoveKey( spep_0 + 948 + OFFSET_X, 1, 3.4 * mirror, 29.2 , 0 );
setMoveKey( spep_0 + 949 + OFFSET_X, 1, 3.4 * mirror, 29.2 , 0 );
setMoveKey( spep_0 + 950 + OFFSET_X, 1, 6.4 * mirror, 25.2 , 0 );
setMoveKey( spep_0 + 951 + OFFSET_X, 1, 6.4 * mirror, 25.2 , 0 );
setMoveKey( spep_0 + 952 + OFFSET_X, 1, 17.4 * mirror, 21.2 , 0 );
setMoveKey( spep_0 + 956 + OFFSET_X, 1, 17.4 * mirror, 21.2 , 0 );

setScaleKey( spep_0 + 826 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 956 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_0 + 826 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 829 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 830 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 833 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 834 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 837 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 838 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 841 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 842 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 845 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 846 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 849 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 850 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 853 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 854 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 857 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 858 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 861 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 862 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 865 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 866 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 869 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 870 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 873 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 874 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 877 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 878 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 881 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 882 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 885 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 886 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 889 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 890 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 893 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 894 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 897 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 898 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 901 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 902 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 905 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 906 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 909 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 910 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 913 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 914 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 917 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 918 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 921 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 922 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 925 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 926 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 929 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 930 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 933 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 934 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 937 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 938 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 941 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 942 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 945 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 946 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 949 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 950 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 953 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 954 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 956 + OFFSET_X, 1, 0 * mirror );


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
SE004 = playSeVer2( spep_0 + 26, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 63 );
SE005 = playSeVer2( spep_0 + 50, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE005, 63 );
SE006 = playSeVer2( spep_0 + 74, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE006, 63 );
SE007 = playSeVer2( spep_0 + 98, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE007, 63 );
SE009 = playSeVer2( spep_0 + 122, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE009, 63 );
SE011 = playSeVer2( spep_0 + 146, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 146, SE011, 63 );
SE012 = playSeVer2( spep_0 + 170, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE012, 63 );

--髪なびく
SE008 = playSeVer2( spep_0 + 124, 1258, "",spep_0 + 236, 22, 11, -1);
setSeVolumeByWorkId( spep_0 + 124, SE008, 50 );
setStartTimeMs( SE008,  267 );
SE010 = playSeVer2( spep_0 + 130, 1190, "", 0, 14, 0, -1);
setStartTimeMs( SE010,  100 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 194; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE008, 0);
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
--オーラ
SE013 = playSeVer2( spep_0 + 194, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 194, SE013, 63 );
SE014 = playSeVer2( spep_0 + 218, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE014, 63 );

--構える
SE016 = playSeVer2( spep_0 + 311, 1116, "",spep_0 + 355, 0, 21, -1);
setSeVolumeByWorkId( spep_0 + 311, SE016, 59 );

--オーラ
SE017 = playSeVer2( spep_0 + 317, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 317, SE017, 63 );
SE018 = playSeVer2( spep_0 + 341, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 341, SE018, 63 );
SE019 = playSeVer2( spep_0 + 365, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 365, SE019, 63 );
SE021 = playSeVer2( spep_0 + 389, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 389, SE021, 63 );
SE024 = playSeVer2( spep_0 + 413, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 413, SE024, 63 );
SE025 = playSeVer2( spep_0 + 437, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 437, SE025, 63 );
SE029 = playSeVer2( spep_0 + 461, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 461, SE029, 63 );
SE030 = playSeVer2( spep_0 + 485, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 485, SE030, 63 );
SE031 = playSeVer2( spep_0 + 509, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 509, SE031, 63 );
SE033 = playSeVer2( spep_0 + 533, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 533, SE033, 63 );
SE034 = playSeVer2( spep_0 + 557, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 557, SE034, 63 );
SE035 = playSeVer2( spep_0 + 581, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 581, SE035, 63 );

--構える
SE020 = playSeVer2( spep_0 + 383, 1233, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 393, 1006, "", 0, 0, 0, -1);

--セリフカットイン
SE026 = playSeVer2( spep_0 + 440, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 440, SE026, 63 );

--かめはめ波溜め
SE027 = playSeVer2( spep_0 + 448, 1489, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE027, 70 );
SE028 = playSeVer2( spep_0 + 453, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 453, SE028, 71 );
SE023 = playSeVer2( spep_0 + 463, 1210, "",spep_0 + 672, 26, 58, -1);
setSeVolumeByWorkId( spep_0 + 463, SE023, 58 );
setStartTimeMs( SE023,  1000 );

--電気走る
SE032 = playSeVer2( spep_0 + 508, 1491, "", 0, 0, 0, -1);

--かめはめ波発射
SE036 = playSeVer2( spep_0 + 610, 1133, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 610, 1146, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 610, 1213, "",spep_0 + 838, 0, 23, -1);
SE039 = playSeVer2( spep_0 + 666, 1284, "",spep_0 + 760, 0, 22, -1);
SE040 = playSeVer2( spep_0 + 668, 1161, "",spep_0 + 833, 0, 16, -1);
SE041 = playSeVer2( spep_0 + 724, 1258, "", 0, 0, 0, -1);

--爆発
SE042 = playSeVer2( spep_0 + 800, 1069, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 823, 1067, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 823, 1427, "", 0, 0, 0, -1);


if (_IS_PLAYER_SIDE_ == 1) then

-- ** ボイス ** --
--「こいつで決めるぞ！！！」
playVoice( spep_0 + 443, 1225 );
setVoiceVolume( spep_0 + 443, 1225, 108 );

end


-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 830); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 - 4); -- 960f - 4f