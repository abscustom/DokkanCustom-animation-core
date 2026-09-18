--1033620:UR_トランクス(ゼノ)_必殺技：バーニングスラッシュ
--sp_effect_b2_00071
--sp3015

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_02  = 164478; --カットイン〜フィニッシュまで ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 154;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;

        timing_skip = 88;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_2 + timing_skip , SP_02, spep_2 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --斬りつける２
        SE013 = playSeVer2( spep_2 + 88 + 3, 1032, "", 0, 0, 0, -1);
        SE014 = playSeVer2( spep_2 + 88 + 3, 1143, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 88 + 3, SE014, 68 );
        SE015 = playSeVer2( spep_2 + 88 + 3, 1110, "", 0, 0, 0, -1);

    else
        setupMovie(0, SP_02, 0, 1);
    end

else

    setupMovie(0, SP_02, 0, 1);

    mirror = -1;

end

------------------------------------------------------------------------------------------------------------
-- 共通演出
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭　〜　カードカットイン前まで
-------------------------------------------------
MAX_FRAME_0 = 154;

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 22; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

ctgogo_x = -49; -- 演出によって白目にかからないように調整

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


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 172, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--剣構える
SE002 = playSeVer2( spep_0 + 6, 1317, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 6, 1189, "", 0, 0, 0, -1);

--カメラズーム
SE005 = playSeVer2( spep_0 + 48, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 56 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 154f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カットイン〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 338;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カットイン〜フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 50 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 88 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 50 + OFFSET_X, 1, 2 );
changeAnimeBySide( spep_2 + 56 + OFFSET_X, 1, 8 );
changeAnimeBySide( spep_2 + 58 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 50 + OFFSET_X, 1, -1029.1 * mirror, -3009.9 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -1029.1 * mirror, -3009.9 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -702.4 * mirror, -1969.1 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -702.4 * mirror, -1969.1 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -390.7 * mirror, -857.7 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -390.7 * mirror, -857.7 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -262.1 * mirror, -98.8 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -262.1 * mirror, -98.8 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -171.1 * mirror, -88.4 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -171.1 * mirror, -88.4 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -190.2 * mirror, 41.9 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -190.2 * mirror, 41.9 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -242.9 * mirror, 65.3 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -242.9 * mirror, 65.3 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -197.3 * mirror, 129.3 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -197.3 * mirror, 129.3 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -239.9 * mirror, 141.4 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -239.9 * mirror, 141.4 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -217.8 * mirror, 162.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -217.8 * mirror, 162.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -234.8 * mirror, 159.5 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -234.8 * mirror, 159.5 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -224 * mirror, 171.5 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -224 * mirror, 171.5 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -231.7 * mirror, 165.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -231.7 * mirror, 165.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -227.3 * mirror, 167.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -227.3 * mirror, 167.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -227.3 * mirror, 167.7 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -227.3 * mirror, 167.7 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -221.8 * mirror, 159.3 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -221.8 * mirror, 159.3 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -183 * mirror, 100.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -183 * mirror, 100.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -77.9 * mirror, -59.5 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -77.9 * mirror, -59.5 , 0 );

setScaleKey( spep_2 + 50 + OFFSET_X, 1, 24.63, 24.63 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 24.63, 24.63 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 18.19, 18.19 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 18.19, 18.19 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 11.76, 11.76 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 11.76, 11.76 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 4.29, 4.29 );

setRotateKey( spep_2 + 50 + OFFSET_X, 1, -14.5 * mirror );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, -14.5 * mirror );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -4.8 * mirror );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -4.8 * mirror );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, 40.1 * mirror );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 40.1 * mirror );

--敵の動き2
setDisp( spep_2 + 96 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 102 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 96 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 96 + OFFSET_X, 1, -649.1 * mirror, -202.3 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -649.1 * mirror, -202.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -1100.8 * mirror, -121.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -1100.8 * mirror, -121.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -4169.1 * mirror, 271.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -4169.1 * mirror, 271.1 , 0 );

setScaleKey( spep_2 + 96 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 7.19, 7.19 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 7.19, 7.19 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 24.65, 24.65 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 24.65, 24.65 );

setRotateKey( spep_2 + 96 + OFFSET_X, 1, 4.5 * mirror );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 4.5 * mirror );


--敵の動き3
setDisp( spep_2 + 108 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 142 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 108 + OFFSET_X, 1, 6 );
changeAnimeBySide( spep_2 + 130 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 108 + OFFSET_X, 1, -169.5 * mirror, -140.7 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -169.5 * mirror, -140.7 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -165.5 * mirror, -164.3 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -165.5 * mirror, -164.3 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -162.1 * mirror, -183.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -162.1 * mirror, -183.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -159.5 * mirror, -198.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -159.5 * mirror, -198.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -157.7 * mirror, -209.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -157.7 * mirror, -209.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -156.6 * mirror, -215.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -156.6 * mirror, -215.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -156.2 * mirror, -218 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -156.2 * mirror, -218 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -191.3 * mirror, -70.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -191.3 * mirror, -70.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -207.5 * mirror, -29.6 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -207.5 * mirror, -29.6 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -209.8 * mirror, -19.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -209.8 * mirror, -19.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -212.1 * mirror, -9.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -212.1 * mirror, -9.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -214.3 * mirror, 0.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -214.3 * mirror, 0.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -216.6 * mirror, 10.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -216.6 * mirror, 10.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -218.8 * mirror, 20.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -218.8 * mirror, 20.3 , 0 );

setScaleKey( spep_2 + 108 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.35, 0.35 );

setRotateKey( spep_2 + 108 + OFFSET_X, 1, 51.2 * mirror );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 51.2 * mirror );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -49.4 * mirror );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -49.4 * mirror );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -50.2 * mirror );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -50.2 * mirror );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -50.9 * mirror );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -50.9 * mirror );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -51.6 * mirror );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -51.6 * mirror );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -52.4 * mirror );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -52.4 * mirror );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -53.1 * mirror );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -53.1 * mirror );


-- ** 音 ** --
--振りかぶる
SE007 = playSeVer2( spep_2 + 4, 1004, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 6, 1116, "",spep_2 + 60, 0, 26, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 32; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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
--斬りつける１
SE009 = playSeVer2( spep_2 + 40, 1142, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 48, 1032, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 52, 1141, "",spep_2 + 108, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 52, SE011, 66 );
SE012 = playSeVer2( spep_2 + 52, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE012, 60 );

--斬りつける２
SE013 = playSeVer2( spep_2 + 84, 1032, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 86, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE014, 68 );
SE015 = playSeVer2( spep_2 + 86, 1110, "", 0, 0, 0, -1);

--斬りつける３
SE016 = playSeVer2( spep_2 + 122, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 122, SE016, 79 );
SE017 = playSeVer2( spep_2 + 122, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 122, SE017, 79 );

--爆発
SE018 = playSeVer2( spep_2 + 140, 1159, "",spep_2 + 334, 0, 138, -1);

--剣納める
SE019 = playSeVer2( spep_2 + 230, 1317, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 236, 1389, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_2 + 218); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 - 0); -- 338f -0f