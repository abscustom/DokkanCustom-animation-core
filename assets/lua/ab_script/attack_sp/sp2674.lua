-- 4028380: LR_ガンマ1号&ガンマ2号/ガンマ1号_必殺技：ヒロイックアサルト
-- sp_effect_a9_00123
-- sp2674

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 敵味方共通
SP_001 = 162689;  -- 1号セリフ ef_001
SP_002 = 162690;  -- パンチ～フィニッシュ ef_002
SP_003 = 162691;  -- パンチ～フィニッシュ ef_002b

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

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 92;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;

        timing_skip = 112;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --飛び上がる
        SE012 = playSeVer2( spep_2 + 112 + 3, 1004, "", 0, 0, 0, -1);

    else end
------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 1号セリフ ef_001
------------------------------------------------------
MAX_FRAME_0 = 92;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );-- 1号セリフ ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 8;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 92

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- パンチ～フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 528;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );-- パンチ～フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_03 = entryEffect( spep_2 + 0, SP_003, 0x80, -1, 0, 0, 0 );-- パンチ～フィニッシュ 奥側 ef_002b
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
OFFSET_Y = -30;--敵位置調整用

setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 396 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2 + 74 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 166 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 204 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 328 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 364 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 372 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 376 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 0, 1, 111.3, 138.7 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 111.3, 138.7 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 111.2, 138.6 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 111.2, 138.6 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 111.1, 138.6 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 111.1, 138.6 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 111, 138.6 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 111, 138.6 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 110.9, 138.6 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 110.9, 138.6 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 110.8, 138.6 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 110.8, 138.6 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 110.8, 138.7 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 110.8, 138.7 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 110.3, 139.2 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 110.3, 139.2 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 110, 139.2 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 110, 139.2 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 109.7, 139.3 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 109.7, 139.3 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 109.5, 139.3 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 109.5, 139.3 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 109.2, 139.2 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 109.2, 139.2 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 108.9, 139.2 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 108.9, 139.2 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 108.7, 139.1 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 108.7, 139.1 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 108.4, 139 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 108.4, 139 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 108.1, 138.9 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 108.1, 138.9 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 107.9, 138.8 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 107.9, 138.8 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 107.6, 138.7 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 107.6, 138.7 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 107.2, 138.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 107.2, 138.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 106.8, 138.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 106.8, 138.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 106.2, 138 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 106.2, 138 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 104.8, 137.3 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 104.8, 137.3 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -79.1, -89.7 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -79.1, -89.7 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -78.4, -88.7 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -78.4, -88.7 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -76.4, -85.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -76.4, -85.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -72.9, -79.6 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -72.9, -79.6 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -67.5, -70.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -67.5, -70.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -59.8, -58.2 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -59.8, -58.2 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -47.9, -38.8 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -47.9, -38.8 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 1.7, -7.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 1.7, -7.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -6.7, 1.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -6.7, 1.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -30.9, 6.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -30.9, 6.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -6.7, 1.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -6.7, 1.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 12.8, 18.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 12.8, 18.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -6.7, 1.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -6.7, 1.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 1.7, -7.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 1.7, -7.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -6.7, 1.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -6.7, 1.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -30.9, 6.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -30.9, 6.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -6.7, 1.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -6.7, 1.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 57, 74.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 57, 74.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 81.5, 112.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 81.5, 112.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 122.9, 165 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 122.9, 165 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 160, 211.7 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 160, 211.7 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 191.9, 252.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 191.9, 252.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 218.8, 285.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 218.8, 285.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 240.8, 313.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 240.8, 313.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 258.5, 336 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 258.5, 336 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 272.6, 353.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 272.6, 353.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -135.7, -712.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -135.7, -712.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -21.4, -382.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -21.4, -382.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 4.3, -302.5 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 4.3, -302.5 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 17, -260.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 17, -260.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 25.2, -232.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 25.2, -232.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 32, -209.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 32, -209.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 38.5, -189.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 38.5, -189.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 45.1, -169 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 45.1, -169 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 51.9, -149.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 51.9, -149.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 58.6, -129.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 58.6, -129.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 65.1, -111.4 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 65.1, -111.4 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 71.1, -94.4 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 71.1, -94.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 76.5, -79.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 76.5, -79.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 81.2, -66.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 81.2, -66.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 85, -55.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 85, -55.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 87.9, -47.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 87.9, -47.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 90, -41.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 90, -41.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 91.2, -36.5 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 91.2, -36.5 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 91.7, -33.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 91.7, -33.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 91.8, -29.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 91.8, -29.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 91.9, -25.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 91.9, -25.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 92, -21 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 92, -21 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 92.1, -16.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 92.1, -16.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 92.1, -13.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 92.1, -13.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 92.2, -10.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 92.2, -10.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 92.2, -7.8 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 92.2, -7.8 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 92.3, -4.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 92.3, -4.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 126.4 + OFFSET_Y, -15.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 126.4 + OFFSET_Y, -15.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 93.8 + OFFSET_Y, -1.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 93.8 + OFFSET_Y, -1.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 137.5 + OFFSET_Y, 10.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 137.5 + OFFSET_Y, 10.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 126.4 + OFFSET_Y, -15.6 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 126.4 + OFFSET_Y, -15.6 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 255.9 + OFFSET_Y, -24.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 255.9 + OFFSET_Y, -24.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 393.7 + OFFSET_Y, -63.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 393.7 + OFFSET_Y, -63.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 473.2 + OFFSET_Y, -85.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 473.2 + OFFSET_Y, -85.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 522 + OFFSET_Y, -100.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 522 + OFFSET_Y, -100.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 550.2 + OFFSET_Y, -108.9 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 550.2 + OFFSET_Y, -108.9 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 566.2 + OFFSET_Y, -114.1 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 566.2 + OFFSET_Y, -114.1 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 575 + OFFSET_Y, -117.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 575 + OFFSET_Y, -117.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 579.7 + OFFSET_Y, -119.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 579.7 + OFFSET_Y, -119.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 582.1 + OFFSET_Y, -120.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 582.1 + OFFSET_Y, -120.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 583.1 + OFFSET_Y, -120.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 583.1 + OFFSET_Y, -120.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -357.5, 64.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -357.5, 64.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -188.4, 34.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -188.4, 34.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -66.1, 10 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -66.1, 10 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 7, -7.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 7, -7.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 30.6, -14.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 30.6, -14.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 57.3, -22.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 57.3, -22.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 64.4, -24.6 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 64.4, -24.6 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 68.5, -25.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 68.5, -25.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 70.8, -26.7 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 70.8, -26.7 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 72.1, -27.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 72.1, -27.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 72.7, -27.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 72.7, -27.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 72.8, -27.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 72.8, -27.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 72.4, -27.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 72.4, -27.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 71.8, -26.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 71.8, -26.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 70.9, -26.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 70.9, -26.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 69.9, -26.2 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 69.9, -26.2 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 68.6, -25.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 68.6, -25.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 68.3, -25.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 68.3, -25.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 68, -25.5 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 68, -25.5 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 67.7, -25.4 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 67.7, -25.4 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 67.4, -25.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 67.4, -25.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 67, -25.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 67, -25.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 66.6, -25 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 66.6, -25 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 66.2, -24.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 66.2, -24.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 65.8, -24.7 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 65.8, -24.7 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 65.3, -24.5 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 65.3, -24.5 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 64.7, -24.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 64.7, -24.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 64.1, -24.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 64.1, -24.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 63.5, -23.9 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 63.5, -23.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 62.7, -23.6 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 62.7, -23.6 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 61.9, -23.3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 61.9, -23.3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 61, -22.9 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 61, -22.9 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 60, -22.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 60, -22.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 58.9, -22.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 58.9, -22.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 57.7, -21.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 57.7, -21.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 56.3, -21.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 56.3, -21.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 54.4, -20.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 54.4, -20.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 51.4, -19.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 51.4, -19.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 46.2, -16.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 46.2, -16.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 37.3, -12.7 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 37.3, -12.7 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 22.9, -6.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 22.9, -6.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 1.7, 2.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 1.7, 2.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -5.8, 19.7 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -5.8, 19.7 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -25.7, 6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -25.7, 6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -41.5, -5 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -41.5, -5 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -53.4, -13.4 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -53.4, -13.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -61.2, -19.1 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -61.2, -19.1 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -65.1, -22 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -65.1, -22 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -77.4, -31.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -77.4, -31.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -89.6, -52.4 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -89.6, -52.4 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -104.8, -93.4 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -104.8, -93.4 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -111.4, -132.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -111.4, -132.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -156.2, -107.6 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -156.2, -107.6 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -173.9, -96.5 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -173.9, -96.5 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -211.4, -97.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -211.4, -97.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -243.5, -105.2 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -243.5, -105.2 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -218.6, -73.6 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -218.6, -73.6 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -303.5, -14 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -303.5, -14 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -44.3, -39 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -44.3, -39 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 134.2, -46.8 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 134.2, -46.8 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 240.6, -52.1 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 240.6, -52.1 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 275.1, -54.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 275.1, -54.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 510.7, 75.9 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 510.7, 75.9 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 742.7, 82.8 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 742.7, 82.8 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 898.9, 83.1 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 898.9, 83.1 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 897.3, 81.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 897.3, 81.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 893.8, 81.8 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 893.8, 81.8 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 892.3, 80.5 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 892.3, 80.5 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 885.3, 83 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 885.3, 83 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 883.8, 81.7 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 883.8, 81.7 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 873, 86.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 873, 86.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 871.5, 85.5 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 871.5, 85.5 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 857.1, 93.1 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 857.1, 93.1 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 847.3, 91.1 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 847.3, 91.1 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 820.5, 87.5 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 820.5, 87.5 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 776.9, 82.3 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 776.9, 82.3 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 716.4, 75.5 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 716.4, 75.5 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 639.1, 67.2 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 639.1, 67.2 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 544.8, 57.3 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 544.8, 57.3 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 433.7, 45.7 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 433.7, 45.7 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 83, -552.5 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 83, -552.5 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 47.7, -447.9 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 47.7, -447.9 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -73, -368.6 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -73, -368.6 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -58.7, -483.9 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -58.7, -483.9 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -192.8, -4.4 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -192.8, -4.4 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -195.4, -6.8 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -195.4, -6.8 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -129.8, 15.8 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -129.8, 15.8 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -130.9, 14.8 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -130.9, 14.8 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -46.9, 64.8 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -46.9, 64.8 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -48, 63.8 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -48, 63.8 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 7.8, 24.1 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 7.8, 24.1 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 6.7, 23.2 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 6.7, 23.2 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 36.6, -14.2 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 36.6, -14.2 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 35.5, -15.1 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 35.5, -15.1 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 49.2, -36.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 49.2, -36.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 48.2, -37.8 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 48.2, -37.8 , 0 );

setScaleKey( spep_2 + 0, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 10.77, 10.77 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 10.77, 10.77 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 7.06, 7.06 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 7.06, 7.06 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 5.58, 5.58 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 5.58, 5.58 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 10.62, 10.62 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 10.62, 10.62 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 8.17, 8.17 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 8.17, 8.17 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.05, 0.05 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 26.8 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 26.8 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 27.7 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 27.7 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, 51.1 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, 51.1 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, 52.8 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, 52.8 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 54.2 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, 54.2 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, 55.4 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, 55.4 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, 58.2 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, 58.2 );

setBlendColor( spep_2 + 0, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_2 + 396 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--向かっていく
SE005 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 8, 1277, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 10, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE008, 49 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);

setBlendColor( SP_dodge + 8, 1, 3, 0, 0, 0, 0 );--setBlendColor解除

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
--パンチ
SE009 = playSeVer2( spep_2 + 54, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 +54, SE009, 164 );
SE010 = playSeVer2( spep_2 + 60, 1187, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 60, 1110, "", 0, 0, 0, -1);
--飛び上がる
SE012 = playSeVer2( spep_2 + 106, 1004, "", 0, 0, 0, -1);
--蹴り飛ばす
SE013 = playSeVer2( spep_2 + 140, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE013, 180 );
SE014 = playSeVer2( spep_2 + 148, 1187, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 148, 1120, "", 0, 0, 0, -1);
--敵飛んでいく
SE016 = playSeVer2( spep_2 + 184, 1027, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 190, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE017, 80 );
SE018 = playSeVer2( spep_2 + 190, 1121, "",spep_2 + 332, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 190, SE018, 58 );
--追いかける
SE019 = playSeVer2( spep_2 + 216, 1117, "", 0, 0, 0, -1);
--画面遷移
SE020 = playSeVer2( spep_2 + 238, 1072, "", 0, 0, 0, -1);
--腕で捕まえる
SE021 = playSeVer2( spep_2 + 292, 1012, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 300, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 300, SE022, 72 );
--振りかぶる
SE023 = playSeVer2( spep_2 + 310, 1116, "",spep_2 + 360, 0, 16, -1);
--吹き飛ばす
SE024 = playSeVer2( spep_2 + 354, 1048, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 354, 1008, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 356, 1027, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 364, 1277, "", 0, 0, 0, -1);
--岩激突
SE028 = playSeVer2( spep_2 + 384, 1159, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 400 );
endPhase( spep_2 +  MAX_FRAME_2 - 2 );  -- 528

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 1号セリフ ef_001
------------------------------------------------------
MAX_FRAME_0 = 92;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );-- 1号セリフ ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 8;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 92

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- パンチ～フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 528;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );-- パンチ～フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_03 = entryEffect( spep_2 + 0, SP_003, 0x80, -1, 0, 0, 0 );-- パンチ～フィニッシュ 奥側 ef_002b
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
OFFSET_Y = 30;--敵位置調整用

setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 396 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 0 );
changeAnime( spep_2 + 74 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 166 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 204 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 328 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 364 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 372 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 376 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 0, 1, -111.3, 138.7 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -111.3, 138.7 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -111.2, 138.6 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -111.2, 138.6 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -111.1, 138.6 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -111.1, 138.6 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -111, 138.6 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -111, 138.6 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -110.9, 138.6 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -110.9, 138.6 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -110.8, 138.6 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -110.8, 138.6 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -110.8, 138.7 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -110.8, 138.7 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -110.3, 139.2 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -110.3, 139.2 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -110, 139.2 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -110, 139.2 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -109.7, 139.3 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -109.7, 139.3 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -109.5, 139.3 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -109.5, 139.3 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -109.2, 139.2 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -109.2, 139.2 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -108.9, 139.2 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -108.9, 139.2 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -108.7, 139.1 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -108.7, 139.1 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -108.4, 139 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -108.4, 139 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -108.1, 138.9 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -108.1, 138.9 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -107.9, 138.8 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -107.9, 138.8 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -107.6, 138.7 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -107.6, 138.7 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -107.2, 138.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -107.2, 138.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -106.8, 138.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -106.8, 138.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -106.2, 138 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -106.2, 138 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -104.8, 137.3 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -104.8, 137.3 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 79.1, -89.7 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 79.1, -89.7 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 78.4, -88.7 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 78.4, -88.7 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 76.4, -85.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 76.4, -85.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 72.9, -79.6 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 72.9, -79.6 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 67.5, -70.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 67.5, -70.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 59.8, -58.2 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 59.8, -58.2 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 47.9, -38.8 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 47.9, -38.8 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -1.7, -7.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -1.7, -7.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 6.7, 1.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 6.7, 1.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 30.9, 6.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 30.9, 6.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 6.7, 1.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 6.7, 1.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -12.8, 18.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -12.8, 18.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 6.7, 1.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 6.7, 1.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -1.7, -7.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -1.7, -7.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 6.7, 1.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 6.7, 1.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 30.9, 6.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 30.9, 6.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 6.7, 1.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 6.7, 1.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -57, 74.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -57, 74.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -81.5, 112.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -81.5, 112.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -122.9, 165 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -122.9, 165 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -160, 211.7 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -160, 211.7 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -191.9, 252.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -191.9, 252.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -218.8, 285.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -218.8, 285.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -240.8, 313.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -240.8, 313.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -258.5, 336 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -258.5, 336 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -272.6, 353.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -272.6, 353.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 135.7, -712.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 135.7, -712.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 21.4, -382.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 21.4, -382.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -4.3, -302.5 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -4.3, -302.5 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -17, -260.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -17, -260.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -25.2, -232.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -25.2, -232.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -32, -209.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -32, -209.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -38.5, -189.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -38.5, -189.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -45.1, -169 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -45.1, -169 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -51.9, -149.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -51.9, -149.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -58.6, -129.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -58.6, -129.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -65.1, -111.4 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -65.1, -111.4 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -71.1, -94.4 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -71.1, -94.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -76.5, -79.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -76.5, -79.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -81.2, -66.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -81.2, -66.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -85, -55.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -85, -55.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -87.9, -47.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -87.9, -47.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -90, -41.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -90, -41.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -91.2, -36.5 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -91.2, -36.5 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -91.7, -33.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -91.7, -33.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -91.8, -29.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -91.8, -29.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -91.9, -25.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -91.9, -25.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -92, -21 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -92, -21 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -92.1, -16.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -92.1, -16.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -92.1, -13.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -92.1, -13.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -92.2, -10.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -92.2, -10.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -92.2, -7.8 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -92.2, -7.8 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -92.3, -4.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -92.3, -4.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -126.4 + OFFSET_Y, -15.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -126.4 + OFFSET_Y, -15.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -93.8 + OFFSET_Y, -1.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -93.8 + OFFSET_Y, -1.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -137.5 + OFFSET_Y, 10.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -137.5 + OFFSET_Y, 10.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -126.4 + OFFSET_Y, -15.6 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -126.4 + OFFSET_Y, -15.6 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -118 + OFFSET_Y, -6.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -255.9 + OFFSET_Y, -24.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -255.9 + OFFSET_Y, -24.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -393.7 + OFFSET_Y, -63.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -393.7 + OFFSET_Y, -63.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -473.2 + OFFSET_Y, -85.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -473.2 + OFFSET_Y, -85.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -522 + OFFSET_Y, -100.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -522 + OFFSET_Y, -100.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -550.2 + OFFSET_Y, -108.9 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -550.2 + OFFSET_Y, -108.9 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -566.2 + OFFSET_Y, -114.1 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -566.2 + OFFSET_Y, -114.1 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -575 + OFFSET_Y, -117.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -575 + OFFSET_Y, -117.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -579.7 + OFFSET_Y, -119.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -579.7 + OFFSET_Y, -119.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -582.1 + OFFSET_Y, -120.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -582.1 + OFFSET_Y, -120.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -583.1 + OFFSET_Y, -120.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -583.1 + OFFSET_Y, -120.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 357.5, 64.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 357.5, 64.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 188.4, 34.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 188.4, 34.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 66.1, 10 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 66.1, 10 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -7, -7.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -7, -7.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -30.6, -14.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -30.6, -14.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -57.3, -22.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -57.3, -22.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -64.4, -24.6 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -64.4, -24.6 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -68.5, -25.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -68.5, -25.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -70.8, -26.7 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -70.8, -26.7 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -72.1, -27.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -72.1, -27.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -72.7, -27.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -72.7, -27.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -72.8, -27.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -72.8, -27.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -72.4, -27.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -72.4, -27.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -71.8, -26.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -71.8, -26.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -70.9, -26.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -70.9, -26.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -69.9, -26.2 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -69.9, -26.2 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -68.6, -25.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -68.6, -25.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -68.3, -25.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -68.3, -25.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -68, -25.5 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -68, -25.5 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -67.7, -25.4 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -67.7, -25.4 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -67.4, -25.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -67.4, -25.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -67, -25.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -67, -25.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -66.6, -25 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -66.6, -25 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -66.2, -24.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -66.2, -24.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -65.8, -24.7 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -65.8, -24.7 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -65.3, -24.5 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -65.3, -24.5 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -64.7, -24.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -64.7, -24.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -64.1, -24.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -64.1, -24.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -63.5, -23.9 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -63.5, -23.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -62.7, -23.6 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -62.7, -23.6 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -61.9, -23.3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -61.9, -23.3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -61, -22.9 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -61, -22.9 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -60, -22.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -60, -22.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -58.9, -22.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -58.9, -22.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -57.7, -21.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -57.7, -21.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -56.3, -21.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -56.3, -21.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -54.4, -20.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -54.4, -20.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -51.4, -19.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -51.4, -19.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -46.2, -16.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -46.2, -16.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -37.3, -12.7 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -37.3, -12.7 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -22.9, -6.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -22.9, -6.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -1.7, 2.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -1.7, 2.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 5.8, 19.7 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 5.8, 19.7 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 25.7, 6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 25.7, 6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 41.5, -5 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 41.5, -5 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 53.4, -13.4 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 53.4, -13.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 61.2, -19.1 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 61.2, -19.1 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 65.1, -22 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 65.1, -22 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 77.4, -31.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 77.4, -31.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 89.6, -52.4 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 89.6, -52.4 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 104.8, -93.4 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 104.8, -93.4 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 111.4, -132.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 111.4, -132.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 156.2, -107.6 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 156.2, -107.6 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 173.9, -96.5 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 173.9, -96.5 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 211.4, -97.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 211.4, -97.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 243.5, -105.2 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 243.5, -105.2 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 218.6, -73.6 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 218.6, -73.6 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 303.5, -14 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 303.5, -14 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 44.3, -39 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 44.3, -39 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -134.2, -46.8 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -134.2, -46.8 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -240.6, -52.1 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -240.6, -52.1 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -275.1, -54.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -275.1, -54.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -510.7, 75.9 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -510.7, 75.9 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -742.7, 82.8 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -742.7, 82.8 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -898.9, 83.1 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -898.9, 83.1 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -897.3, 81.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -897.3, 81.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -893.8, 81.8 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -893.8, 81.8 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -892.3, 80.5 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -892.3, 80.5 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -885.3, 83 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -885.3, 83 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -883.8, 81.7 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -883.8, 81.7 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -873, 86.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -873, 86.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -871.5, 85.5 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -871.5, 85.5 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -857.1, 93.1 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -857.1, 93.1 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -847.3, 91.1 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -847.3, 91.1 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -820.5, 87.5 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -820.5, 87.5 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -776.9, 82.3 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -776.9, 82.3 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -716.4, 75.5 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -716.4, 75.5 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -639.1, 67.2 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -639.1, 67.2 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -544.8, 57.3 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -544.8, 57.3 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -433.7, 45.7 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -433.7, 45.7 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -83, -552.5 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -83, -552.5 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -47.7, -447.9 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -47.7, -447.9 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 73, -368.6 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 73, -368.6 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 58.7, -483.9 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 58.7, -483.9 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 192.8, -4.4 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 192.8, -4.4 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 195.4, -6.8 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 195.4, -6.8 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 129.8, 15.8 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 129.8, 15.8 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 130.9, 14.8 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 130.9, 14.8 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 46.9, 64.8 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 46.9, 64.8 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 48, 63.8 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 48, 63.8 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -7.8, 24.1 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -7.8, 24.1 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -6.7, 23.2 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -6.7, 23.2 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -36.6, -14.2 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -36.6, -14.2 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -35.5, -15.1 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -35.5, -15.1 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -49.2, -36.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -49.2, -36.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -48.2, -37.8 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -48.2, -37.8 , 0 );

setScaleKey( spep_2 + 0, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 10.77, 10.77 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 10.77, 10.77 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 7.06, 7.06 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 7.06, 7.06 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 5.58, 5.58 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 5.58, 5.58 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 10.62, 10.62 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 10.62, 10.62 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 8.17, 8.17 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 8.17, 8.17 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.05, 0.05 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 47.5 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 47.5 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -26.8 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -26.8 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -38.3 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, -38.3 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, -54.2 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, -54.2 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -55.4 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, -55.4 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, -58.1 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, -58.1 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, -58.2 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, -58.2 );

setBlendColor( spep_2 + 0, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_2 + 396 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--向かっていく
SE005 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 8, 1277, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 10, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE008, 49 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);

setBlendColor( SP_dodge + 8, 1, 3, 0, 0, 0, 0 );--setBlendColor解除

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
--パンチ
SE009 = playSeVer2( spep_2 + 54, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 +54, SE009, 164 );
SE010 = playSeVer2( spep_2 + 60, 1187, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 60, 1110, "", 0, 0, 0, -1);
--飛び上がる
SE012 = playSeVer2( spep_2 + 106, 1004, "", 0, 0, 0, -1);
--蹴り飛ばす
SE013 = playSeVer2( spep_2 + 140, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE013, 180 );
SE014 = playSeVer2( spep_2 + 148, 1187, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 148, 1120, "", 0, 0, 0, -1);
--敵飛んでいく
SE016 = playSeVer2( spep_2 + 184, 1027, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 190, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE017, 80 );
SE018 = playSeVer2( spep_2 + 190, 1121, "",spep_2 + 332, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 190, SE018, 58 );
--追いかける
SE019 = playSeVer2( spep_2 + 216, 1117, "", 0, 0, 0, -1);
--画面遷移
SE020 = playSeVer2( spep_2 + 238, 1072, "", 0, 0, 0, -1);
--腕で捕まえる
SE021 = playSeVer2( spep_2 + 292, 1012, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 300, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 300, SE022, 72 );
--振りかぶる
SE023 = playSeVer2( spep_2 + 310, 1116, "",spep_2 + 360, 0, 16, -1);
--吹き飛ばす
SE024 = playSeVer2( spep_2 + 354, 1048, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 354, 1008, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 356, 1027, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 364, 1277, "", 0, 0, 0, -1);
--岩激突
SE028 = playSeVer2( spep_2 + 384, 1159, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 400 );
endPhase( spep_2 +  MAX_FRAME_2 - 2 );  -- 528


end
