--1034150:LR_魔人ブウ(純粋)_EX必殺技：かめはめ波
--sp_effect_b1_00380
--sp3049

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164568; --最初〜最後まで ef_001

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

        timing_skip = 854;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --

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
MAX_FRAME_0 = 1184;
CARD_FRAME = 90;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初〜最後まで(ef_001)
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
-- spep_x = spep_0 + 0; --spep名とフレーム数を置き換える

-- if (_IS_PLAYER_SIDE_ == 1) then

--    -- ** 顔カットイン ** --
--    speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--    setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--    speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--    setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--    --顔カットイン
--    SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- end

-- ctgogo_x = 0; -- 演出によって白目にかからないように調整

-- -- ** 書き文字エントリー ** --
-- ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, ctgogo_x * mirror, 515.5, 3000 ); --ゴゴゴ
-- setEffShake( spep_x + 16, ctgogo, 68, 10 );
-- setEffMoveKey( spep_x + 16, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
-- setEffMoveKey( spep_x + 84, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
-- setEffScaleKey( spep_x + 16, ctgogo, 0.7 * mirror, 0.7 );
-- setEffScaleKey( spep_x + 76, ctgogo, 0.7 * mirror, 0.7 );
-- setEffScaleKey( spep_x + 78, ctgogo, 1.0 * mirror, 1.0 );
-- setEffScaleKey( spep_x + 80, ctgogo, 1.09 * mirror, 1.09 );
-- setEffScaleKey( spep_x + 82, ctgogo, 1.39 * mirror, 1.39 );
-- setEffScaleKey( spep_x + 84, ctgogo, 1.69 * mirror, 1.69 );
-- setEffRotateKey( spep_x + 16, ctgogo, 0 );
-- setEffRotateKey( spep_x + 84, ctgogo, 0 );
-- setEffAlphaKey( spep_x + 16, ctgogo, 255 );
-- setEffAlphaKey( spep_x + 84, ctgogo, 255 );


--------------------------------------
-- カードカットイン(EX 94F)
--------------------------------------

showCardCutinEx(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き1
setDisp( spep_0 + 270 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 286 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 270 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 270 + OFFSET_X, 1, 249.4 * mirror, -127.4 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 249.4 * mirror, -127.4 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 236.7 * mirror, -127.2 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 236.7 * mirror, -127.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 183.3 * mirror, -127.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 183.3 * mirror, -127.3 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 127.2 * mirror, -217.4 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 127.2 * mirror, -217.4 , 0 );

setScaleKey( spep_0 + 270 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 8, 8 );

setRotateKey( spep_0 + 270 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 0 * mirror );

-- 敵の動き2
setDisp( spep_0 + 290 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 302 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 290 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 290 + OFFSET_X, 1, -74.2 * mirror, -581.5 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -74.2 * mirror, -581.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -99.1 * mirror, -585.6 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -99.1 * mirror, -585.6 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -82.5 * mirror, -606.4 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -82.5 * mirror, -606.4 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -82.5 * mirror, -585.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -82.5 * mirror, -585.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 201.2 * mirror, -894.2 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 201.2 * mirror, -894.2 , 0 );

setScaleKey( spep_0 + 290 + OFFSET_X, 1, 10.99, 10.99 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 10.99, 10.99 );

setRotateKey( spep_0 + 290 + OFFSET_X, 1, -25.5 * mirror );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -25.5 * mirror );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -9.1 * mirror );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -9.1 * mirror );

-- 敵の動き3
setDisp( spep_0 + 736 + OFFSET_X, 1, 1);
setDisp( spep_0 + 820 + OFFSET_X, 1, 0);

changeAnimeBySide( spep_0 + 736 + OFFSET_X, 1, 5 );
changeAnimeBySide( spep_0 + 776 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 736 + OFFSET_X, 1, 175.9 * mirror, -263.5 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 175.9 * mirror, -263.5 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 148 * mirror, -185.3 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 148 * mirror, -185.3 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 120.2 * mirror, -107.2 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 120.2 * mirror, -107.2 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 92.4 * mirror, -29 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 92.4 * mirror, -29 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 64.6 * mirror, 49.1 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 64.6 * mirror, 49.1 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 36.8 * mirror, 127.3 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 36.8 * mirror, 127.3 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 35.4 * mirror, 136.3 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 35.4 * mirror, 136.3 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 34 * mirror, 145.2 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 34 * mirror, 145.2 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 32.6 * mirror, 154.2 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 32.6 * mirror, 154.2 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 31.1 * mirror, 163.1 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 31.1 * mirror, 163.1 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 29.7 * mirror, 172.1 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 29.7 * mirror, 172.1 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 28.3 * mirror, 181 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 28.3 * mirror, 181 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 26.9 * mirror, 190 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 26.9 * mirror, 190 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 25.5 * mirror, 199 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 25.5 * mirror, 199 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 24.1 * mirror, 207.9 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, 24.1 * mirror, 207.9 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, 22.7 * mirror, 216.9 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, 22.7 * mirror, 216.9 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, 21.2 * mirror, 225.8 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, 21.2 * mirror, 225.8 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, 19.8 * mirror, 234.8 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, 19.8 * mirror, 234.8 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, 18.4 * mirror, 243.7 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, 18.4 * mirror, 243.7 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, 17 * mirror, 252.7 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, 17 * mirror, 252.7 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, -352.8 * mirror, -305.8 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, -352.8 * mirror, -305.8 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, -291.7 * mirror, -265.8 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, -291.7 * mirror, -265.8 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, -251.7 * mirror, -239.9 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, -251.7 * mirror, -239.9 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, -202.3 * mirror, -192.9 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, -202.3 * mirror, -192.9 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, -188.2 * mirror, -183.4 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, -188.2 * mirror, -183.4 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, -160 * mirror, -162.2 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, -160 * mirror, -162.2 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, -124.7 * mirror, -126.9 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, -124.7 * mirror, -126.9 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, -84.7 * mirror, -91.6 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, -84.7 * mirror, -91.6 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, -65.9 * mirror, -65.8 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, -65.9 * mirror, -65.8 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, -63.5 * mirror, -61.1 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, -63.5 * mirror, -61.1 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, -49.4 * mirror, -49.3 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, -49.4 * mirror, -49.3 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, -30.5 * mirror, -37.6 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, -30.5 * mirror, -37.6 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, -11.7 * mirror, -21.1 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, -11.7 * mirror, -21.1 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 2.4 * mirror, -9.3 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 2.4 * mirror, -9.3 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 4.7 * mirror, -4.6 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, 4.7 * mirror, -4.6 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, 11.8 * mirror, 0.1 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, 11.8 * mirror, 0.1 , 0 );

setScaleKey( spep_0 + 736 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_0 + 737 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_0 + 738 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_0 + 739 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_0 + 740 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 741 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 742 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 743 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 744 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 745 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 746 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 747 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 748 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 749 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 750 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 751 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 752 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 753 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 754 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 755 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 756 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 757 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 758 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 759 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 760 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 761 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 762 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 763 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 764 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 765 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 766 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 767 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 768 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 769 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 770 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 771 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 772 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 773 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 774 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 775 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 776 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 820 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_0 + 736 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 775 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 776 + OFFSET_X, 1, 28.2 * mirror );
setRotateKey( spep_0 + 820 + OFFSET_X, 1, 28.2 * mirror );

setBlendColor( spep_0 + 810 + OFFSET_X, 1, 3, 1, 1, 1, 0.5 );
setBlendColor( spep_0 + 816 + OFFSET_X, 1, 3, 1, 1, 1, 0.7 );
setBlendColor( spep_0 + 820 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--降りてくる
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1508, "",spep_0 + 75, 0, 23, -1);

--着地
SE003 = playSeVer2( spep_0 + 25, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 25, SE003, 150 );
SE004 = playSeVer2( spep_0 + 46, 1192, "",spep_0 + 72, 0, 10, -1);
SE005 = playSeVer2( spep_0 + 50, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE005, 151 );

--向かってくる
SE007 = playSeVer2( spep_0 + 185, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 185, 1117, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 190, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 190, SE009, 47 );
setTimeStretch( SE009, 1.25, 30, 4 );

--パンチ
SE010 = playSeVer2( spep_0 + 262, 1003, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 276; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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
--パンチ
SE011 = playSeVer2( spep_0 + 276, 1187, "", 0, 0, 0, -1);

--連続バク転
SE012 = playSeVer2( spep_0 + 321, 1000, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 321, 1192, "",spep_0 + 347, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 321, SE013, 143 );
SE014 = playSeVer2( spep_0 + 329, 44, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 367, 1192, "",spep_0 + 386, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 367, SE015, 172 );
SE016 = playSeVer2( spep_0 + 367, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 367, SE016, 79 );
SE017 = playSeVer2( spep_0 + 374, 44, "",spep_0 + 414, 0, 20, -1);
setPitch( spep_0 + 374, SE017, -200 );
setTimeStretch( SE017, 0.87, 30, 4 );
SE018 = playSeVer2( spep_0 + 400, 1192, "",spep_0 + 419, 0, 10, -1);
SE019 = playSeVer2( spep_0 + 400, 1000, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 404, 44, "",spep_0 + 449, 0, 23, -1);
setPitch( spep_0 + 404, SE020, 200 );
setTimeStretch( SE020, 1.13, 30, 4 );
SE022 = playSeVer2( spep_0 + 428, 1000, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 428, 1192, "",spep_0 + 447, 0, 10, -1);
SE024 = playSeVer2( spep_0 + 433, 44, "",spep_0 + 484, 0, 30, -1);
SE025 = playSeVer2( spep_0 + 464, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 464, SE025, 157 );
SE026 = playSeVer2( spep_0 + 464, 1192, "",spep_0 + 490, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 464, SE026, 148 );

--かめはめ波溜め
SE028 = playSeVer2( spep_0 + 488, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 488, SE028, 71 );
setPitch( spep_0 + 488, SE028, -300 );
setTimeStretch( SE028, 0.8, 30, 4 );
SE021 = playSeVer2( spep_0 + 490, 1210, "",spep_0 + 703, 33, 26, -1);
setStartTimeMs( SE021,  1100 );

--かめはめ波発射
SE029 = playSeVer2( spep_0 + 665, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 665, SE029, 75 );
SE030 = playSeVer2( spep_0 + 678, 1213, "",spep_0 + 919, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 678, SE030, 80 );
SE031 = playSeVer2( spep_0 + 678, 1446, "",spep_0 + 917, 0, 46, -1);

--かめはめ波飛んでいく
SE032 = playSeVer2( spep_0 + 809, 1068, "", 0, 0, 0, -1);

--爆発
SE033 = playSeVer2( spep_0 + 860, 1067, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 860, 1159, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 886, 1128, "", 0, 0, 0, -1);
setPitch( spep_0 + 886, SE035, -1200 );
setTimeStretch( SE035, 0.2, 30, 4 );
SE036 = playSeVer2( spep_0 + 895, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 895, SE036, 65 );
SE037 = playSeVer2( spep_0 + 897, 1168, "", 0, 0, 0, -1);

--ラスト爆発
SE038 = playSeVer2( spep_0 + 1010, 1226, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 1010, 1188, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 1019, 1427, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 1035, 1258, "", 0, 0, 0, -1);


if (_IS_PLAYER_SIDE_ == 1) then

--セリフカットイン
SE027 = playSeVer2( spep_0 + 483, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 483, SE027, 63 );

-- ** ボイス ** --
--「ハアーーーー！！！」
playVoice( spep_0 + 483, 1251 );
setVoiceVolume( spep_0 + 483, 1251, 128 );

end

-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 860 ); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 ); -- 1184F