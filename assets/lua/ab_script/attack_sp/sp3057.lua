--1034430:UR_ドクター・アリンス_必殺技：あなたが行きなさい！(魔人クウ)
--sp_effect_a9_00174
--sp3057

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164542; --セリフカットイン〜フィニッシュまで ef_001

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

--HIDE_EFFECT_PHRASE_TEXTURES();

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 640;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --

    else
        setupMovie(0, SP_01, 0, 1);
    end

else
    HIDE_EFFECT_PHRASE_TEXTURES();
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
MAX_FRAME_0 = 880;
CARD_FRAME = 132;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- セリフカットイン〜フィニッシュまで(ef_001)
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
spep_x = spep_0 + 48; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   --speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   --setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

ctgogo_x = 0; -- 演出によって白目にかからないように調整

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, ctgogo_x * mirror, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7 * mirror, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7 * mirror, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0 * mirror, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09 * mirror, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39 * mirror, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69 * mirror, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
--敵の動き1
setDisp( spep_0 + 722 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 802 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 722 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 722 + OFFSET_X, 1, -38.1 * mirror, -10.4 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, -38.1 * mirror, -10.4 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, -28.2 * mirror, -30.2 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, -28.2 * mirror, -30.2 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, -50.7 * mirror, -39.8 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, -50.7 * mirror, -39.8 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, -33.2 * mirror, -19.5 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, -33.2 * mirror, -19.5 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, -48.1 * mirror, -39.2 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, -48.1 * mirror, -39.2 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, -60.6 * mirror, -11.5 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, -60.6 * mirror, -11.5 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, -4.3 * mirror, -57.8 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, -4.3 * mirror, -57.8 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, -8 * mirror, -88.7 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, -8 * mirror, -88.7 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 22.9 * mirror, -83.8 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 22.9 * mirror, -83.8 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 3.7 * mirror, -96.5 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 3.7 * mirror, -96.5 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 15.6 * mirror, -96.3 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 15.6 * mirror, -96.3 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 26.9 * mirror, -102 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 26.9 * mirror, -102 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 20.8 * mirror, -126.1 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 20.8 * mirror, -126.1 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 26.6 * mirror, -92.7 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 26.6 * mirror, -92.7 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 28.6 * mirror, -122.9 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 28.6 * mirror, -122.9 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 4.8 * mirror, -89.4 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 4.8 * mirror, -89.4 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 48.7 * mirror, -108.8 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 48.7 * mirror, -108.8 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 16.2 * mirror, -119.9 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 16.2 * mirror, -119.9 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 43.8 * mirror, -106.7 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 43.8 * mirror, -106.7 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 19.6 * mirror, -122.6 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 19.6 * mirror, -122.6 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 15.8 * mirror, -92.3 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 15.8 * mirror, -92.3 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 43.2 * mirror, -118 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, 43.2 * mirror, -118 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, 27.5 * mirror, -126.3 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, 27.5 * mirror, -126.3 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, 38.8 * mirror, -105.5 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, 38.8 * mirror, -105.5 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, 30.6 * mirror, -129 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, 30.6 * mirror, -129 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, 16.3 * mirror, -97.6 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, 16.3 * mirror, -97.6 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, 51.2 * mirror, -119.2 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, 51.2 * mirror, -119.2 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, 26.1 * mirror, -127 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, 26.1 * mirror, -127 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, 46.4 * mirror, -111.8 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, 46.4 * mirror, -111.8 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, 31.9 * mirror, -128.8 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, 31.9 * mirror, -128.8 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, 21.6 * mirror, -103.8 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, 21.6 * mirror, -103.8 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, 52.3 * mirror, -122.3 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, 52.3 * mirror, -122.3 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, 32.6 * mirror, -133.9 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, 32.6 * mirror, -133.9 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, 50.2 * mirror, -112.5 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, 50.2 * mirror, -112.5 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, 35.9 * mirror, -134.6 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, 35.9 * mirror, -134.6 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, 23.8 * mirror, -106.6 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, 23.8 * mirror, -106.6 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, 57.8 * mirror, -126.4 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, 57.8 * mirror, -126.4 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, 34.8 * mirror, -137.5 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, 34.8 * mirror, -137.5 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, 54.4 * mirror, -117.4 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, 54.4 * mirror, -117.4 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, 39.2 * mirror, -137.2 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 39.2 * mirror, -137.2 , 0 );

setScaleKey( spep_0 + 722 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 802 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_0 + 722 + OFFSET_X, 1, 53.7 * mirror );
setRotateKey( spep_0 + 731 + OFFSET_X, 1, 53.7 * mirror );
setRotateKey( spep_0 + 732 + OFFSET_X, 1, 34.9 * mirror );
setRotateKey( spep_0 + 733 + OFFSET_X, 1, 34.9 * mirror );
setRotateKey( spep_0 + 734 + OFFSET_X, 1, 36.9 * mirror );
setRotateKey( spep_0 + 735 + OFFSET_X, 1, 36.9 * mirror );
setRotateKey( spep_0 + 736 + OFFSET_X, 1, 38.4 * mirror );
setRotateKey( spep_0 + 737 + OFFSET_X, 1, 38.4 * mirror );
setRotateKey( spep_0 + 738 + OFFSET_X, 1, 39.5 * mirror );
setRotateKey( spep_0 + 739 + OFFSET_X, 1, 39.5 * mirror );
setRotateKey( spep_0 + 740 + OFFSET_X, 1, 40.2 * mirror );
setRotateKey( spep_0 + 741 + OFFSET_X, 1, 40.2 * mirror );
setRotateKey( spep_0 + 742 + OFFSET_X, 1, 40.4 * mirror );
setRotateKey( spep_0 + 802 + OFFSET_X, 1, 40.4 * mirror );

setBlendColor( spep_0 + 734 + OFFSET_X, 1, 3, 0.15, 0.2, 0.2, 0.01);
setBlendColor( spep_0 + 736 + OFFSET_X, 1, 3, 0.31, 0.4, 0.4, 0.05);
setBlendColor( spep_0 + 738 + OFFSET_X, 1, 3, 0.45, 0.6, 0.6, 0.09);
setBlendColor( spep_0 + 740 + OFFSET_X, 1, 3, 0.61, 0.8, 0.8, 0.13);
setBlendColor( spep_0 + 742 + OFFSET_X, 1, 3, 0.76, 1, 1, 0.17);
setBlendColor( spep_0 + 744 + OFFSET_X, 1, 3, 0.71, 1, 0.97, 0.22);
setBlendColor( spep_0 + 746 + OFFSET_X, 1, 3, 0.66, 1, 0.95, 0.27);
setBlendColor( spep_0 + 748 + OFFSET_X, 1, 3, 0.61, 1, 0.92, 0.334);
setBlendColor( spep_0 + 750 + OFFSET_X, 1, 3, 0.56, 1, 0.89, 0.38);
setBlendColor( spep_0 + 752 + OFFSET_X, 1, 3, 0.51, 1, 0.87, 0.44);
setBlendColor( spep_0 + 754 + OFFSET_X, 1, 3, 0.45, 1, 0.84, 0.498);
setBlendColor( spep_0 + 756 + OFFSET_X, 1, 3, 0.4, 1, 0.81, 0.55);
setBlendColor( spep_0 + 758 + OFFSET_X, 1, 3, 0.36, 1, 0.79, 0.61);
setBlendColor( spep_0 + 760 + OFFSET_X, 1, 3, 0.31, 1, 0.76, 0.66);
setBlendColor( spep_0 + 762 + OFFSET_X, 1, 3, 0.25, 1, 0.73, 0.716);
setBlendColor( spep_0 + 764 + OFFSET_X, 1, 3, 0.2, 1, 0.71, 0.77);
setBlendColor( spep_0 + 766 + OFFSET_X, 1, 3, 0.15, 1, 0.68, 0.826);
setBlendColor( spep_0 + 768 + OFFSET_X, 1, 3, 0.1, 1, 0.65, 0.88);
setBlendColor( spep_0 + 770 + OFFSET_X, 1, 3, 0.05, 1, 0.63, 0.93);
setBlendColor( spep_0 + 772 + OFFSET_X, 1, 3, 0, 1, 0.6, 0.99);
setBlendColor( spep_0 + 802 + OFFSET_X, 1, 3, 0, 0, 0, 0);

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 215, 0, 31, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--ズーム
SE002 = playSeVer2( spep_0 + 18, 1072, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 18, SE002, 100 );
--セリフカットイン
--SE003 = playSeVer2( spep_0 + 58, 1018, "", 0, 0, 0, -1);
--カードカットイン
--SE004 = playSeVer2( spep_0 + 244, 1035, "", 0, 0, 0, -1);
--環境音
SE005 = playSeVer2( spep_0 + 223, 1269, "",spep_0 + 534, 0, 68, -1);
setSeVolumeByWorkId( spep_0 + 223, SE005, 25 );
--腕上げる
SE006 = playSeVer2( spep_0 + 228, 1003, "", 0, 0, 0, -1);
--ポーズとる
SE007 = playSeVer2( spep_0 + 265, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 273, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 273, SE008, 73 );
--構える
SE009 = playSeVer2( spep_0 + 321, 1293, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 321, SE009, 122 );
SE010 = playSeVer2( spep_0 + 321, 1294, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 321, SE010, 197 );
--走り出す
SE011 = playSeVer2( spep_0 + 381, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 381, SE011, 100 );
setPitch( spep_0 + 381, SE011, 300 );
setTimeStretch( SE011, 1.2, 30, 4 );
SE012 = playSeVer2( spep_0 + 382, 1000, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 412, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 412, SE013, 100 );
SE014 = playSeVer2( spep_0 + 413, 1000, "", 0, 0, 0, -1);
--飛び上がる
SE015 = playSeVer2( spep_0 + 457, 1117, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 457, 1207, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 470, 1360, "", 0, 0, 0, -1);
--気弾溜め
SE018 = playSeVer2( spep_0 + 582, 1336, "",spep_0 + 668, 11, 19, -1);
setSeVolumeByWorkId( spep_0 + 582, SE018, 100 );
setStartTimeMs( SE018,  1683 );
setPitch( spep_0 + 582, SE018, -1000 );
setTimeStretch( SE018, 0.33, 30, 4 );
SE019 = playSeVer2( spep_0 + 512, 1442, "",spep_0 + 666, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 512, SE019, 257 );
setTimeStretch( SE019, 1.25, 30, 4 );
--回転する
SE020 = playSeVer2( spep_0 + 527, 1388, "",spep_0 + 602, 0, 17, -1);
SE021 = playSeVer2( spep_0 + 527, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 536, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 547, 1004, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 556, 1004, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 566, 1004, "", 0, 0, 0, -1);
--気弾溜め
SE026 = playSeVer2( spep_0 + 583, 1254, "",spep_0 + 650, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 583, SE026, 120 );
SE027 = playSeVer2( spep_0 + 583, 1203, "",spep_0 + 666, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 583, SE027, 124 );
--気弾発射
SE028 = playSeVer2( spep_0 + 646, 1022, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 646, SE028, 120 );
SE029 = playSeVer2( spep_0 + 646, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 646, SE029, 120 );
SE030 = playSeVer2( spep_0 + 646, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 646, SE030, 120 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 700; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
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
--敵のみこまれる
SE031 = playSeVer2( spep_0 + 712, 1258, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 718, 1423, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 718, 1161, "", 0, 0, 0, -1);


-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 760); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 - 2); -- 880